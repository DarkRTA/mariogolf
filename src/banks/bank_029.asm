; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    daa                                           ; $4000: $27
    ld a, c                                       ; $4001: $79

Call_029_4002:
    adc $79                                       ; $4002: $ce $79
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40
    add sp, $45                                   ; $4008: $e8 $45
    and h                                         ; $400a: $a4
    ld c, d                                       ; $400b: $4a
    ld de, $704e                                  ; $400c: $11 $4e $70
    ld c, [hl]                                    ; $400f: $4e
    call nz, $c54e                                ; $4010: $c4 $4e $c5
    ld c, [hl]                                    ; $4013: $4e
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40
    ld c, e                                       ; $4016: $4b
    ld c, a                                       ; $4017: $4f
    ld d, e                                       ; $4018: $53
    ld c, a                                       ; $4019: $4f
    ld b, d                                       ; $401a: $42
    ld d, [hl]                                    ; $401b: $56
    ldh a, [$5b]                                  ; $401c: $f0 $5b
    ld a, $60                                     ; $401e: $3e $60
    and c                                         ; $4020: $a1
    ld h, b                                       ; $4021: $60
    di                                            ; $4022: $f3
    ld h, b                                       ; $4023: $60
    db $f4                                        ; $4024: $f4
    ld h, b                                       ; $4025: $60
    sub e                                         ; $4026: $93
    ld c, a                                       ; $4027: $4f
    ld a, d                                       ; $4028: $7a
    ld h, c                                       ; $4029: $61
    add d                                         ; $402a: $82
    ld h, c                                       ; $402b: $61
    dec [hl]                                      ; $402c: $35
    ld l, h                                       ; $402d: $6c
    ld a, [hl-]                                   ; $402e: $3a
    ld [hl], c                                    ; $402f: $71
    rra                                           ; $4030: $1f
    ld [hl], l                                    ; $4031: $75
    sub e                                         ; $4032: $93
    ld [hl], l                                    ; $4033: $75
    db $eb                                        ; $4034: $eb
    ld [hl], l                                    ; $4035: $75
    inc a                                         ; $4036: $3c
    halt                                          ; $4037: $76
    jp nz, $c461                                  ; $4038: $c2 $61 $c4

    ld c, [hl]                                    ; $403b: $4e
    di                                            ; $403c: $f3
    ld h, b                                       ; $403d: $60
    db $eb                                        ; $403e: $eb
    ld [hl], l                                    ; $403f: $75
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    ccf                                           ; $4044: $3f
    ccf                                           ; $4045: $3f
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    ld hl, sp+$46                                 ; $4048: $f8 $46
    ld hl, sp+$46                                 ; $404a: $f8 $46
    rst $08                                       ; $404c: $cf
    add hl, hl                                    ; $404d: $29
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ld [$0825], sp                                ; $4054: $08 $25 $08
    dec h                                         ; $4057: $25
    db $ec                                        ; $4058: $ec
    inc bc                                        ; $4059: $03
    nop                                           ; $405a: $00
    inc bc                                        ; $405b: $03
    nop                                           ; $405c: $00
    ld [bc], a                                    ; $405d: $02
    nop                                           ; $405e: $00
    ld bc, $03ec                                  ; $405f: $01 $ec $03
    di                                            ; $4062: $f3
    inc bc                                        ; $4063: $03
    nop                                           ; $4064: $00
    inc bc                                        ; $4065: $03
    nop                                           ; $4066: $00
    ld [bc], a                                    ; $4067: $02
    ld c, b                                       ; $4068: $48
    ld a, a                                       ; $4069: $7f
    ld c, b                                       ; $406a: $48
    ld a, a                                       ; $406b: $7f
    ld c, b                                       ; $406c: $48
    ld a, a                                       ; $406d: $7f
    ld c, b                                       ; $406e: $48
    ld a, a                                       ; $406f: $7f
    rst $38                                       ; $4070: $ff
    ld a, a                                       ; $4071: $7f
    ldh a, [$03]                                  ; $4072: $f0 $03
    ret nz                                        ; $4074: $c0

    ld [bc], a                                    ; $4075: $02
    ld b, b                                       ; $4076: $40
    dec l                                         ; $4077: $2d
    ld a, [$ff01]                                 ; $4078: $fa $01 $ff
    ld b, e                                       ; $407b: $43
    ld b, b                                       ; $407c: $40
    ld b, e                                       ; $407d: $43
    ld b, b                                       ; $407e: $40
    dec l                                         ; $407f: $2d
    ld [$0825], sp                                ; $4080: $08 $25 $08
    dec h                                         ; $4083: $25
    ld [$0825], sp                                ; $4084: $08 $25 $08
    dec h                                         ; $4087: $25
    ei                                            ; $4088: $fb
    rst $38                                       ; $4089: $ff
    nop                                           ; $408a: $00
    cp $eb                                        ; $408b: $fe $eb
    ld [hl+], a                                   ; $408d: $22
    rst $18                                       ; $408e: $df
    nop                                           ; $408f: $00
    xor a                                         ; $4090: $af
    ld d, b                                       ; $4091: $50
    rst $38                                       ; $4092: $ff
    jp c, $fd25                                   ; $4093: $da $25 $fd

    ld b, d                                       ; $4096: $42
    cp a                                          ; $4097: $bf
    ld [hl+], a                                   ; $4098: $22
    db $fd                                        ; $4099: $fd
    adc b                                         ; $409a: $88
    rst $38                                       ; $409b: $ff
    db $eb                                        ; $409c: $eb
    dec d                                         ; $409d: $15
    rst $30                                       ; $409e: $f7
    push af                                       ; $409f: $f5
    inc bc                                        ; $40a0: $03
    and $0e                                       ; $40a1: $e6 $0e
    ret c                                         ; $40a3: $d8

    rst $38                                       ; $40a4: $ff
    add hl, de                                    ; $40a5: $19
    pop hl                                        ; $40a6: $e1
    daa                                           ; $40a7: $27
    and [hl]                                      ; $40a8: $a6
    ld l, a                                       ; $40a9: $6f
    ret z                                         ; $40aa: $c8

    ld e, l                                       ; $40ab: $5d
    ld c, h                                       ; $40ac: $4c
    rst $38                                       ; $40ad: $ff
    db $db                                        ; $40ae: $db
    sub b                                         ; $40af: $90
    cp a                                          ; $40b0: $bf

jr_029_40b1:
    db $fd                                        ; $40b1: $fd
    inc bc                                        ; $40b2: $03
    ld a, [$fa02]                                 ; $40b3: $fa $02 $fa
    rst $38                                       ; $40b6: $ff
    ld b, $f4                                     ; $40b7: $06 $f4
    dec b                                         ; $40b9: $05
    db $e4                                        ; $40ba: $e4
    dec c                                         ; $40bb: $0d
    reti                                          ; $40bc: $d9


    dec sp                                        ; $40bd: $3b
    ld h, d                                       ; $40be: $62
    rst $28                                       ; $40bf: $ef

Call_029_40c0:
    rst $20                                       ; $40c0: $e7
    add h                                         ; $40c1: $84
    sbc a                                         ; $40c2: $9f
    jr z, @-$2e                                   ; $40c3: $28 $d0

    ldh [rP1], a                                  ; $40c5: $e0 $00
    jp c, $ff00                                   ; $40c7: $da $00 $ff

jr_029_40ca:
    db $fd                                        ; $40ca: $fd
    inc b                                         ; $40cb: $04
    ei                                            ; $40cc: $fb
    ld hl, $46ff                                  ; $40cd: $21 $ff $46
    and a                                         ; $40d0: $a7
    jr c, jr_029_40ca                             ; $40d1: $38 $f7

    cp $4f                                        ; $40d3: $fe $4f
    add sp, -$02                                  ; $40d5: $e8 $fe
    pop hl                                        ; $40d7: $e1
    sub a                                         ; $40d8: $97
    ret c                                         ; $40d9: $d8

    sub a                                         ; $40da: $97
    ret nc                                        ; $40db: $d0

    cp a                                          ; $40dc: $bf
    cpl                                           ; $40dd: $2f
    or b                                          ; $40de: $b0
    ld e, a                                       ; $40df: $5f

Jump_029_40e0:
    ld h, b                                       ; $40e0: $60
    sbc a                                         ; $40e1: $9f
    ret nz                                        ; $40e2: $c0

    and b                                         ; $40e3: $a0
    push hl                                       ; $40e4: $e5
    cp $ff                                        ; $40e5: $fe $ff
    ld bc, $03f1                                  ; $40e7: $01 $f1 $03
    and $0f                                       ; $40ea: $e6 $0f
    cp b                                          ; $40ec: $b8
    ld a, [hl]                                    ; $40ed: $7e
    ret z                                         ; $40ee: $c8

    rst $38                                       ; $40ef: $ff
    ld l, a                                       ; $40f0: $6f
    jp z, Jump_029_486d                           ; $40f1: $ca $6d $48

    ld [$dd90], a                                 ; $40f4: $ea $90 $dd
    sub b                                         ; $40f7: $90
    rst $38                                       ; $40f8: $ff
    rst $18                                       ; $40f9: $df
    jr z, jr_029_40b1                             ; $40fa: $28 $b5

    ld b, b                                       ; $40fc: $40
    ld l, e                                       ; $40fd: $6b
    add b                                         ; $40fe: $80
    rst $30                                       ; $40ff: $f7
    rst $38                                       ; $4100: $ff
    push af                                       ; $4101: $f5
    nop                                           ; $4102: $00
    xor [hl]                                      ; $4103: $ae
    ldh [$03], a                                  ; $4104: $e0 $03
    xor [hl]                                      ; $4106: $ae
    ldh [$0d], a                                  ; $4107: $e0 $0d
    ret                                           ; $4109: $c9


    dec de                                        ; $410a: $1b
    or d                                          ; $410b: $b2
    rst $38                                       ; $410c: $ff
    ld [hl], a                                    ; $410d: $77
    call nz, $c96f                                ; $410e: $c4 $6f $c9
    dec c                                         ; $4111: $0d
    jp nc, $d21b                                  ; $4112: $d2 $1b $d2

    rst $38                                       ; $4115: $ff
    dec sp                                        ; $4116: $3b
    db $e4                                        ; $4117: $e4
    scf                                           ; $4118: $37
    db $e4                                        ; $4119: $e4
    scf                                           ; $411a: $37
    and [hl]                                      ; $411b: $a6
    ld [hl], l                                    ; $411c: $75
    ret z                                         ; $411d: $c8

    rst $28                                       ; $411e: $ef
    ld l, a                                       ; $411f: $6f
    ret z                                         ; $4120: $c8

    ld l, a                                       ; $4121: $6f
    ld sp, hl                                     ; $4122: $f9
    add b                                         ; $4123: $80
    pop hl                                        ; $4124: $e1
    add hl, sp                                    ; $4125: $39
    pop hl                                        ; $4126: $e1
    rst $20                                       ; $4127: $e7
    rst $38                                       ; $4128: $ff
    ld b, $1f                                     ; $4129: $06 $1f
    add hl, de                                    ; $412b: $19
    rst $38                                       ; $412c: $ff
    ld [c], a                                     ; $412d: $e2
    db $fd                                        ; $412e: $fd
    db $10                                        ; $412f: $10
    ld a, [$fbff]                                 ; $4130: $fa $ff $fb
    nop                                           ; $4133: $00
    rst $30                                       ; $4134: $f7
    rlca                                          ; $4135: $07
    ret c                                         ; $4136: $d8

    rra                                           ; $4137: $1f

jr_029_4138:
    ldh [$78], a                                  ; $4138: $e0 $78
    rst $38                                       ; $413a: $ff
    add a                                         ; $413b: $87
    rst $20                                       ; $413c: $e7
    ld a, [de]                                    ; $413d: $1a
    sbc l                                         ; $413e: $9d
    ld h, b                                       ; $413f: $60
    ld a, d                                       ; $4140: $7a
    add b                                         ; $4141: $80
    db $fd                                        ; $4142: $fd
    db $fc                                        ; $4143: $fc
    jp nc, $d0e0                                  ; $4144: $d2 $e0 $d0

    pop hl                                        ; $4147: $e1
    rst $30                                       ; $4148: $f7
    inc b                                         ; $4149: $04
    rst $28                                       ; $414a: $ef
    jr jr_029_416a                                ; $414b: $18 $1d

    ldh [$f7], a                                  ; $414d: $e0 $f7
    rst $28                                       ; $414f: $ef
    nop                                           ; $4150: $00
    rst $10                                       ; $4151: $d7
    ldh [$e0], a                                  ; $4152: $e0 $e0
    rrca                                          ; $4154: $0f
    ret c                                         ; $4155: $d8

    jr c, jr_029_4138                             ; $4156: $38 $e0

    rst $38                                       ; $4158: $ff
    scf                                           ; $4159: $37
    and a                                         ; $415a: $a7
    ld l, a                                       ; $415b: $6f
    ret z                                         ; $415c: $c8

    ld e, a                                       ; $415d: $5f
    ret z                                         ; $415e: $c8

    ld e, d                                       ; $415f: $5a
    ret z                                         ; $4160: $c8

    rst $38                                       ; $4161: $ff
    ld e, l                                       ; $4162: $5d
    nop                                           ; $4163: $00
    rst $38                                       ; $4164: $ff
    db $10                                        ; $4165: $10
    ld a, [$ad00]                                 ; $4166: $fa $00 $ad
    nop                                           ; $4169: $00

jr_029_416a:
    rst $38                                       ; $416a: $ff
    rst $18                                       ; $416b: $df
    db $e4                                        ; $416c: $e4

jr_029_416d:
    rst $38                                       ; $416d: $ff
    jr jr_029_416d                                ; $416e: $18 $fd

    inc b                                         ; $4170: $04

jr_029_4171:
    rra                                           ; $4171: $1f
    ld [c], a                                     ; $4172: $e2
    db $fd                                        ; $4173: $fd
    rst $20                                       ; $4174: $e7
    db $10                                        ; $4175: $10
    push hl                                       ; $4176: $e5
    rst $28                                       ; $4177: $ef
    ldh a, [rNR31]                                ; $4178: $f0 $1b
    db $fc                                        ; $417a: $fc
    dec b                                         ; $417b: $05
    ld e, $ff                                     ; $417c: $1e $ff
    db $e3                                        ; $417e: $e3

jr_029_417f:
    and $4f                                       ; $417f: $e6 $4f
    add sp, -$71                                  ; $4181: $e8 $8f
    ret z                                         ; $4183: $c8

    cpl                                           ; $4184: $2f
    sbc b                                         ; $4185: $98
    rst $28                                       ; $4186: $ef
    rla                                           ; $4187: $17
    jr c, jr_029_4171                             ; $4188: $38 $e7

    ldh a, [$f6]                                  ; $418a: $f0 $f6
    jp Jump_029_6fc8                              ; $418c: $c3 $c8 $6f


jr_029_418f:
    ld [$cdff], a                                 ; $418f: $ea $ff $cd
    ld c, b                                       ; $4192: $48
    sbc d                                         ; $4193: $9a
    db $10                                        ; $4194: $10
    dec a                                         ; $4195: $3d
    ldh [rIE], a                                  ; $4196: $e0 $ff
    jr nz, @+$01                                  ; $4198: $20 $ff

    db $fd                                        ; $419a: $fd
    ld [de], a                                    ; $419b: $12
    db $eb                                        ; $419c: $eb
    nop                                           ; $419d: $00
    rst $30                                       ; $419e: $f7
    sub e                                         ; $419f: $93
    cp b                                          ; $41a0: $b8
    cpl                                           ; $41a1: $2f
    rst $30                                       ; $41a2: $f7
    ld h, b                                       ; $41a3: $60
    ld e, a                                       ; $41a4: $5f
    ret nz                                        ; $41a5: $c0

    jr c, jr_029_418f                             ; $41a6: $38 $e7

    ld [$309f], sp                                ; $41a8: $08 $9f $30
    ld a, a                                       ; $41ab: $7f
    rst $38                                       ; $41ac: $ff
    ld d, b                                       ; $41ad: $50
    ld l, d                                       ; $41ae: $6a
    ld b, h                                       ; $41af: $44
    db $fd                                        ; $41b0: $fd
    add b                                         ; $41b1: $80
    rst $38                                       ; $41b2: $ff
    jr z, @-$09                                   ; $41b3: $28 $f5

    ld sp, hl                                     ; $41b5: $f9

Jump_029_41b6:
    nop                                           ; $41b6: $00
    ldh [$e0], a                                  ; $41b7: $e0 $e0
    ret nz                                        ; $41b9: $c0

    jp Jump_000_01fc                              ; $41ba: $c3 $fc $01


    db $e3                                        ; $41bd: $e3
    rlca                                          ; $41be: $07
    sbc h                                         ; $41bf: $9c
    ld e, a                                       ; $41c0: $5f
    inc a                                         ; $41c1: $3c
    ld h, b                                       ; $41c2: $60
    db $e3                                        ; $41c3: $e3
    add e                                         ; $41c4: $83
    sbc a                                         ; $41c5: $9f
    ld d, b                                       ; $41c6: $50

jr_029_41c7:
    pop hl                                        ; $41c7: $e1
    sbc b                                         ; $41c8: $98

jr_029_41c9:
    ld d, b                                       ; $41c9: $50
    ld [c], a                                     ; $41ca: $e2
    rst $38                                       ; $41cb: $ff
    jr jr_029_41c9                                ; $41cc: $18 $fb

    ld [c], a                                     ; $41ce: $e2
    push af                                       ; $41cf: $f5
    nop                                           ; $41d0: $00
    rst $38                                       ; $41d1: $ff
    cp $01                                        ; $41d2: $fe $01
    rst $38                                       ; $41d4: $ff
    rst $20                                       ; $41d5: $e7
    rrca                                          ; $41d6: $0f
    ret c                                         ; $41d7: $d8

    ccf                                           ; $41d8: $3f
    ld h, b                                       ; $41d9: $60
    ld hl, sp-$79                                 ; $41da: $f8 $87
    rst $20                                       ; $41dc: $e7
    ei                                            ; $41dd: $fb
    jr jr_029_417f                                ; $41de: $18 $9f

    ld d, b                                       ; $41e0: $50
    pop hl                                        ; $41e1: $e1
    pop bc                                        ; $41e2: $c1
    ld sp, hl                                     ; $41e3: $f9
    ld b, $c7                                     ; $41e4: $06 $c7
    jr c, jr_029_4267                             ; $41e6: $38 $7f

    ld a, [hl-]                                   ; $41e8: $3a
    ret nz                                        ; $41e9: $c0

    db $dd                                        ; $41ea: $dd
    inc b                                         ; $41eb: $04

jr_029_41ec:
    ei                                            ; $41ec: $fb
    jr nz, jr_029_41ec                            ; $41ed: $20 $fd

    ret nz                                        ; $41ef: $c0

    push hl                                       ; $41f0: $e5
    rst $18                                       ; $41f1: $df
    cp $01                                        ; $41f2: $fe $01
    rst $38                                       ; $41f4: $ff
    ld bc, $faf9                                  ; $41f5: $01 $f9 $fa

jr_029_41f8:
    pop bc                                        ; $41f8: $c1
    rlca                                          ; $41f9: $07
    db $f4                                        ; $41fa: $f4
    rst $38                                       ; $41fb: $ff
    ld b, $48                                     ; $41fc: $06 $48
    rst $28                                       ; $41fe: $ef
    sub b                                         ; $41ff: $90
    jp c, $dd90                                   ; $4200: $da $90 $dd

    inc h                                         ; $4203: $24
    sbc a                                         ; $4204: $9f
    xor e                                         ; $4205: $ab
    jr nz, jr_029_41c7                            ; $4206: $20 $bf

    ld d, b                                       ; $4208: $50
    ld a, l                                       ; $4209: $7d
    ldh [$c3], a                                  ; $420a: $e0 $c3
    ld e, [hl]                                    ; $420c: $5e
    jp $ffe7                                      ; $420d: $c3 $e7 $ff


    rrca                                          ; $4210: $0f
    sbc b                                         ; $4211: $98
    jr c, jr_029_4274                             ; $4212: $38 $60

    rst $20                                       ; $4214: $e7
    add a                                         ; $4215: $87
    sbc a                                         ; $4216: $9f
    ld [$ffff], sp                                ; $4217: $08 $ff $ff
    nop                                           ; $421a: $00
    xor a                                         ; $421b: $af
    jr nz, jr_029_41f8                            ; $421c: $20 $da

    ld b, b                                       ; $421e: $40
    db $ed                                        ; $421f: $ed
    rlca                                          ; $4220: $07
    rst $30                                       ; $4221: $f7
    rst $38                                       ; $4222: $ff
    jr @-$06                                      ; $4223: $18 $f8

    ldh a, [$e1]                                  ; $4225: $f0 $e1
    dec bc                                        ; $4227: $0b
    sbc h                                         ; $4228: $9c
    inc sp                                        ; $4229: $33
    ld a, b                                       ; $422a: $78
    cp l                                          ; $422b: $bd
    ld b, a                                       ; $422c: $47
    ld e, [hl]                                    ; $422d: $5e
    ldh [$bf], a                                  ; $422e: $e0 $bf
    ret nz                                        ; $4230: $c0

    ld a, a                                       ; $4231: $7f
    add b                                         ; $4232: $80
    inc [hl]                                      ; $4233: $34
    pop bc                                        ; $4234: $c1
    sub b                                         ; $4235: $90
    rst $38                                       ; $4236: $ff
    or a                                          ; $4237: $b7
    inc h                                         ; $4238: $24
    ld l, a                                       ; $4239: $6f
    ld b, h                                       ; $423a: $44
    ei                                            ; $423b: $fb
    add b                                         ; $423c: $80
    rst $38                                       ; $423d: $ff
    ld b, b                                       ; $423e: $40
    rst $28                                       ; $423f: $ef
    cp a                                          ; $4240: $bf
    ld [bc], a                                    ; $4241: $02
    ld e, e                                       ; $4242: $5b
    ld [hl+], a                                   ; $4243: $22
    add b                                         ; $4244: $80
    ldh [rOBP0], a                                ; $4245: $e0 $48
    rst $08                                       ; $4247: $cf
    ld c, b                                       ; $4248: $48
    rst $38                                       ; $4249: $ff
    rst $18                                       ; $424a: $df
    sub h                                         ; $424b: $94
    cp c                                          ; $424c: $b9
    sub b                                         ; $424d: $90
    cp e                                          ; $424e: $bb
    sub b                                         ; $424f: $90
    cp a                                          ; $4250: $bf
    ld d, b                                       ; $4251: $50
    rst $38                                       ; $4252: $ff
    db $fd                                        ; $4253: $fd
    ld c, b                                       ; $4254: $48
    rst $18                                       ; $4255: $df
    ld c, d                                       ; $4256: $4a
    rst $08                                       ; $4257: $cf
    sub b                                         ; $4258: $90
    sbc a                                         ; $4259: $9f
    sub b                                         ; $425a: $90
    rst $38                                       ; $425b: $ff
    rst $18                                       ; $425c: $df
    ld c, b                                       ; $425d: $48
    ld [$6d4a], a                                 ; $425e: $ea $4a $6d
    ld c, b                                       ; $4261: $48
    ld l, a                                       ; $4262: $6f
    ld d, b                                       ; $4263: $50
    rst $38                                       ; $4264: $ff
    push af                                       ; $4265: $f5
    sub b                                         ; $4266: $90

jr_029_4267:
    rst $10                                       ; $4267: $d7
    sub d                                         ; $4268: $92
    sub a                                         ; $4269: $97
    ld c, e                                       ; $426a: $4b
    ret z                                         ; $426b: $c8

    ld c, e                                       ; $426c: $4b
    rst $38                                       ; $426d: $ff
    ret c                                         ; $426e: $d8

    sub a                                         ; $426f: $97
    cp b                                          ; $4270: $b8
    sub a                                         ; $4271: $97
    or b                                          ; $4272: $b0
    sub a                                         ; $4273: $97

jr_029_4274:
    or b                                          ; $4274: $b0
    ld d, a                                       ; $4275: $57
    rst $38                                       ; $4276: $ff
    ret c                                         ; $4277: $d8

    ld c, e                                       ; $4278: $4b
    ret c                                         ; $4279: $d8

    ld c, e                                       ; $427a: $4b
    ret z                                         ; $427b: $c8

    sub a                                         ; $427c: $97
    sub b                                         ; $427d: $90
    sub a                                         ; $427e: $97
    db $fd                                        ; $427f: $fd
    ret c                                         ; $4280: $d8

    inc a                                         ; $4281: $3c
    ret nz                                        ; $4282: $c0

    ld l, b                                       ; $4283: $68
    ld c, a                                       ; $4284: $4f
    ld l, b                                       ; $4285: $68
    ld d, a                                       ; $4286: $57
    ld hl, sp-$61                                 ; $4287: $f8 $9f
    rst $30                                       ; $4289: $f7
    ret nc                                        ; $428a: $d0

    sbc a                                         ; $428b: $9f
    sub b                                         ; $428c: $90
    ldh [$a3], a                                  ; $428d: $e0 $a3
    cp l                                          ; $428f: $bd
    ld a, [hl]                                    ; $4290: $7e
    jp $9fff                                      ; $4291: $c3 $ff $9f


    nop                                           ; $4294: $00
    jp Jump_000_3c3c                              ; $4295: $c3 $3c $3c


    jp $e0f9                                      ; $4298: $c3 $f9 $e0


    ld [hl], d                                    ; $429b: $72
    ld [c], a                                     ; $429c: $e2
    halt                                          ; $429d: $76
    ld a, a                                       ; $429e: $7f
    sbc c                                         ; $429f: $99
    rst $38                                       ; $42a0: $ff
    nop                                           ; $42a1: $00
    sbc c                                         ; $42a2: $99
    ld h, [hl]                                    ; $42a3: $66
    ld h, [hl]                                    ; $42a4: $66
    sbc c                                         ; $42a5: $99
    ld [hl], b                                    ; $42a6: $70
    ldh [$bf], a                                  ; $42a7: $e0 $bf
    ld [bc], a                                    ; $42a9: $02
    xor l                                         ; $42aa: $ad
    ld [bc], a                                    ; $42ab: $02
    jp c, $fd3c                                   ; $42ac: $da $3c $fd

    ldh [$e4], a                                  ; $42af: $e0 $e4
    ei                                            ; $42b1: $fb
    cp [hl]                                       ; $42b2: $be
    ldh a, [$e0]                                  ; $42b3: $f0 $e0
    xor a                                         ; $42b5: $af
    nop                                           ; $42b6: $00
    reti                                          ; $42b7: $d9


    halt                                          ; $42b8: $76
    rst $28                                       ; $42b9: $ef
    ldh [$e4], a                                  ; $42ba: $e0 $e4
    rst $18                                       ; $42bc: $df
    rst $18                                       ; $42bd: $df
    ld bc, $0603                                  ; $42be: $01 $03 $06

Jump_029_42c1:
    ld c, $18                                     ; $42c1: $0e $18
    ldh a, [$c8]                                  ; $42c3: $f0 $c8
    dec de                                        ; $42c5: $1b
    ld a, b                                       ; $42c6: $78
    rst $20                                       ; $42c7: $e7
    ld h, a                                       ; $42c8: $67
    ldh [$df], a                                  ; $42c9: $e0 $df
    ld d, [hl]                                    ; $42cb: $56
    ld [c], a                                     ; $42cc: $e2
    add [hl]                                      ; $42cd: $86
    and e                                         ; $42ce: $a3
    ld d, b                                       ; $42cf: $50
    xor a                                         ; $42d0: $af
    dec h                                         ; $42d1: $25
    rst $38                                       ; $42d2: $ff
    jp c, $b807                                   ; $42d3: $da $07 $b8

    rlca                                          ; $42d6: $07
    db $fd                                        ; $42d7: $fd
    and d                                         ; $42d8: $a2
    ld e, a                                       ; $42d9: $5f
    ldh [rIE], a                                  ; $42da: $e0 $ff
    rla                                           ; $42dc: $17
    push hl                                       ; $42dd: $e5
    cp d                                          ; $42de: $ba
    ld b, d                                       ; $42df: $42
    db $fd                                        ; $42e0: $fd
    db $fd                                        ; $42e1: $fd
    db $fd                                        ; $42e2: $fd
    rst $18                                       ; $42e3: $df
    rst $38                                       ; $42e4: $ff
    rst $38                                       ; $42e5: $ff
    ei                                            ; $42e6: $fb
    rst $38                                       ; $42e7: $ff
    rst $38                                       ; $42e8: $ff
    rst $38                                       ; $42e9: $ff
    ld a, l                                       ; $42ea: $7d
    rst $38                                       ; $42eb: $ff
    rst $28                                       ; $42ec: $ef
    ei                                            ; $42ed: $fb
    rst $28                                       ; $42ee: $ef
    rst $38                                       ; $42ef: $ff
    or $e0                                        ; $42f0: $f6 $e0
    xor l                                         ; $42f2: $ad
    rst $28                                       ; $42f3: $ef
    halt                                          ; $42f4: $76
    rst $38                                       ; $42f5: $ff
    and $fe                                       ; $42f6: $e6 $fe
    xor $e0                                       ; $42f8: $ee $e0
    db $e4                                        ; $42fa: $e4
    db $eb                                        ; $42fb: $eb
    ld [hl], h                                    ; $42fc: $74
    rst $30                                       ; $42fd: $f7
    ld c, b                                       ; $42fe: $48
    rst $38                                       ; $42ff: $ff
    add b                                         ; $4300: $80
    rst $38                                       ; $4301: $ff
    cp e                                          ; $4302: $bb
    db $eb                                        ; $4303: $eb
    rst $38                                       ; $4304: $ff
    ld a, h                                       ; $4305: $7c
    rst $38                                       ; $4306: $ff
    ld d, b                                       ; $4307: $50
    rst $10                                       ; $4308: $d7
    xor h                                         ; $4309: $ac
    db $fd                                        ; $430a: $fd
    db $eb                                        ; $430b: $eb
    ld h, a                                       ; $430c: $67
    pop hl                                        ; $430d: $e1
    ld b, b                                       ; $430e: $40
    or l                                          ; $430f: $b5
    nop                                           ; $4310: $00
    ei                                            ; $4311: $fb
    ld bc, $ffff                                  ; $4312: $01 $ff $ff
    ld [bc], a                                    ; $4315: $02
    rst $10                                       ; $4316: $d7
    db $10                                        ; $4317: $10
    db $ed                                        ; $4318: $ed
    dec b                                         ; $4319: $05
    rst $38                                       ; $431a: $ff
    inc bc                                        ; $431b: $03
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    ld a, [hl+]                                   ; $431e: $2a
    jp c, $bd08                                   ; $431f: $da $08 $bd

    dec d                                         ; $4322: $15
    rst $38                                       ; $4323: $ff
    ld c, $ff                                     ; $4324: $0e $ff
    rst $38                                       ; $4326: $ff
    ld b, l                                       ; $4327: $45
    rst $30                                       ; $4328: $f7
    ld a, [bc]                                    ; $4329: $0a
    cp $25                                        ; $432a: $fe $25
    rst $28                                       ; $432c: $ef
    sbc e                                         ; $432d: $9b
    rst $30                                       ; $432e: $f7
    rst $38                                       ; $432f: $ff
    ld e, $ff                                     ; $4330: $1e $ff
    halt                                          ; $4332: $76
    cp [hl]                                       ; $4333: $be
    db $db                                        ; $4334: $db
    rst $38                                       ; $4335: $ff
    cp $ff                                        ; $4336: $fe $ff
    rst $38                                       ; $4338: $ff
    push af                                       ; $4339: $f5
    push af                                       ; $433a: $f5
    ld l, b                                       ; $433b: $68
    rst $28                                       ; $433c: $ef
    call nc, $b8ff                                ; $433d: $d4 $ff $b8
    xor a                                         ; $4340: $af
    rst $38                                       ; $4341: $ff
    ret nc                                        ; $4342: $d0

    jp c, $fda5                                   ; $4343: $da $a5 $fd

    ld d, d                                       ; $4346: $52
    rst $38                                       ; $4347: $ff
    ld [bc], a                                    ; $4348: $02
    ei                                            ; $4349: $fb
    rst $38                                       ; $434a: $ff
    ld b, l                                       ; $434b: $45
    xor a                                         ; $434c: $af
    ld d, [hl]                                    ; $434d: $56
    jp c, $fe22                                   ; $434e: $da $22 $fe

    dec b                                         ; $4351: $05
    rst $38                                       ; $4352: $ff
    rst $38                                       ; $4353: $ff
    ld h, $fd                                     ; $4354: $26 $fd

jr_029_4356:
    inc bc                                        ; $4356: $03
    cp e                                          ; $4357: $bb
    ld bc, $b9fd                                  ; $4358: $01 $fd $b9
    ei                                            ; $435b: $fb
    rst $38                                       ; $435c: $ff
    ld [hl], h                                    ; $435d: $74
    rst $10                                       ; $435e: $d7
    ld a, [hl+]                                   ; $435f: $2a
    db $ed                                        ; $4360: $ed
    ld [bc], a                                    ; $4361: $02
    rst $38                                       ; $4362: $ff
    jr nz, @-$24                                  ; $4363: $20 $da

    cp $da                                        ; $4365: $fe $da
    and c                                         ; $4367: $a1

jr_029_4368:
    nop                                           ; $4368: $00
    ei                                            ; $4369: $fb
    call c, $faff                                 ; $436a: $dc $ff $fa
    ei                                            ; $436d: $fb
    db $f4                                        ; $436e: $f4
    rst $38                                       ; $436f: $ff
    rst $38                                       ; $4370: $ff
    and $eb                                       ; $4371: $e6 $eb
    db $f4                                        ; $4373: $f4
    rst $30                                       ; $4374: $f7
    ld l, b                                       ; $4375: $68
    rst $38                                       ; $4376: $ff
    jp nc, $fffb                                  ; $4377: $d2 $fb $ff

    add sp, $76                                   ; $437a: $e8 $76
    ldh [$fa], a                                  ; $437c: $e0 $fa
    cp $ad                                        ; $437e: $fe $ad
    db $fd                                        ; $4380: $fd
    ld e, e                                       ; $4381: $5b
    rst $08                                       ; $4382: $cf
    rst $18                                       ; $4383: $df

jr_029_4384:
    adc b                                         ; $4384: $88
    push af                                       ; $4385: $f5
    db $10                                        ; $4386: $10
    push de                                       ; $4387: $d5
    add d                                         ; $4388: $82
    halt                                          ; $4389: $76
    ret nz                                        ; $438a: $c0

    jr jr_029_4368                                ; $438b: $18 $db

    rst $38                                       ; $438d: $ff
    inc a                                         ; $438e: $3c
    and l                                         ; $438f: $a5
    ld a, [hl]                                    ; $4390: $7e
    jp $c366                                      ; $4391: $c3 $66 $c3


    ld h, [hl]                                    ; $4394: $66
    sbc c                                         ; $4395: $99

jr_029_4396:
    db $fd                                        ; $4396: $fd
    ld b, d                                       ; $4397: $42
    jp nz, $b781                                  ; $4398: $c2 $81 $b7

    ld a, b                                       ; $439b: $78
    adc e                                         ; $439c: $8b
    inc a                                         ; $439d: $3c
    push bc                                       ; $439e: $c5
    ld c, $bf                                     ; $439f: $0e $bf
    push bc                                       ; $43a1: $c5
    ld c, $8b                                     ; $43a2: $0e $8b
    inc a                                         ; $43a4: $3c
    or a                                          ; $43a5: $b7
    ld a, b                                       ; $43a6: $78
    or d                                          ; $43a7: $b2
    add c                                         ; $43a8: $81
    rst $18                                       ; $43a9: $df
    rst $38                                       ; $43aa: $ff
    ld a, $e7                                     ; $43ab: $3e $e7
    ld a, [hl]                                    ; $43ad: $7e
    inc bc                                        ; $43ae: $03
    adc $33                                       ; $43af: $ce $33
    add [hl]                                      ; $43b1: $86
    push af                                       ; $43b2: $f5
    rst $18                                       ; $43b3: $df
    ld b, $e7                                     ; $43b4: $06 $e7
    inc c                                         ; $43b6: $0c
    rst $20                                       ; $43b7: $e7
    jr @-$68                                      ; $43b8: $18 $96

    and b                                         ; $43ba: $a0
    db $10                                        ; $43bb: $10
    rst $10                                       ; $43bc: $d7
    ld a, a                                       ; $43bd: $7f
    jr c, @-$53                                   ; $43be: $38 $ab

    ld a, h                                       ; $43c0: $7c
    rst $00                                       ; $43c1: $c7
    ld l, h                                       ; $43c2: $6c
    sub e                                         ; $43c3: $93
    ld b, h                                       ; $43c4: $44
    sub h                                         ; $43c5: $94
    add l                                         ; $43c6: $85
    rst $38                                       ; $43c7: $ff
    rst $10                                       ; $43c8: $d7
    jr c, jr_029_4396                             ; $43c9: $38 $cb

    inc e                                         ; $43cb: $1c
    push hl                                       ; $43cc: $e5
    ld c, $cb                                     ; $43cd: $0e $cb
    inc e                                         ; $43cf: $1c
    ei                                            ; $43d0: $fb
    rst $10                                       ; $43d1: $d7
    jr c, jr_029_4356                             ; $43d2: $38 $82

    add h                                         ; $43d4: $84
    inc a                                         ; $43d5: $3c
    add a                                         ; $43d6: $87
    ld a, h                                       ; $43d7: $7c
    rst $30                                       ; $43d8: $f7

jr_029_43d9:
    inc c                                         ; $43d9: $0c
    ld hl, sp-$02                                 ; $43da: $f8 $fe

jr_029_43dc:
    ldh [rNR44], a                                ; $43dc: $e0 $23
    ret nz                                        ; $43de: $c0

    ld h, h                                       ; $43df: $64
    and d                                         ; $43e0: $a2
    db $10                                        ; $43e1: $10
    rst $28                                       ; $43e2: $ef
    jr jr_029_43dc                                ; $43e3: $18 $f7

    inc c                                         ; $43e5: $0c
    rst $20                                       ; $43e6: $e7
    rst $28                                       ; $43e7: $ef
    jr jr_029_43d9                                ; $43e8: $18 $ef

    adc l                                         ; $43ea: $8d
    db $e3                                        ; $43eb: $e3
    dec a                                         ; $43ec: $3d
    and b                                         ; $43ed: $a0
    rst $28                                       ; $43ee: $ef
    jr c, jr_029_4384                             ; $43ef: $38 $93

    ld a, l                                       ; $43f1: $7d
    ld l, h                                       ; $43f2: $6c
    ld d, [hl]                                    ; $43f3: $56
    add a                                         ; $43f4: $87
    rst $08                                       ; $43f5: $cf
    inc a                                         ; $43f6: $3c
    rst $38                                       ; $43f7: $ff
    inc b                                         ; $43f8: $04
    ei                                            ; $43f9: $fb
    cp $e0                                        ; $43fa: $fe $e0
    db $fc                                        ; $43fc: $fc
    ld b, h                                       ; $43fd: $44
    add c                                         ; $43fe: $81
    ld b, c                                       ; $43ff: $41

Call_029_4400:
    adc h                                         ; $4400: $8c
    rst $38                                       ; $4401: $ff
    add b                                         ; $4402: $80
    cp a                                          ; $4403: $bf
    ld b, b                                       ; $4404: $40
    rst $38                                       ; $4405: $ff
    ld h, b                                       ; $4406: $60
    rst $38                                       ; $4407: $ff
    rst $18                                       ; $4408: $df
    jr nz, @+$01                                  ; $4409: $20 $ff

    and b                                         ; $440b: $a0
    cp a                                          ; $440c: $bf
    jr nz, @+$71                                  ; $440d: $20 $6f

    db $10                                        ; $440f: $10
    rst $30                                       ; $4410: $f7
    rst $30                                       ; $4411: $f7
    ld d, b                                       ; $4412: $50
    rst $30                                       ; $4413: $f7
    ldh a, [$e3]                                  ; $4414: $f0 $e3
    and b                                         ; $4416: $a0
    ld a, a                                       ; $4417: $7f
    and b                                         ; $4418: $a0
    ld l, a                                       ; $4419: $6f
    ei                                            ; $441a: $fb
    ret nc                                        ; $441b: $d0

    scf                                           ; $441c: $37
    cp $e1                                        ; $441d: $fe $e1
    db $10                                        ; $441f: $10
    rst $30                                       ; $4420: $f7
    ld [$08db], sp                                ; $4421: $08 $db $08
    rst $38                                       ; $4424: $ff
    ei                                            ; $4425: $fb
    ld b, h                                       ; $4426: $44
    rst $38                                       ; $4427: $ff
    and h                                         ; $4428: $a4
    cp l                                          ; $4429: $bd
    ld c, $5b                                     ; $442a: $0e $5b
    ld [bc], a                                    ; $442c: $02
    rst $38                                       ; $442d: $ff
    or $41                                        ; $442e: $f6 $41
    rst $38                                       ; $4430: $ff
    cp a                                          ; $4431: $bf
    ret nz                                        ; $4432: $c0

    ld e, a                                       ; $4433: $5f
    ld h, b                                       ; $4434: $60
    ld e, a                                       ; $4435: $5f
    ld a, a                                       ; $4436: $7f
    ld h, b                                       ; $4437: $60
    cpl                                           ; $4438: $2f
    or b                                          ; $4439: $b0
    cpl                                           ; $443a: $2f
    or b                                          ; $443b: $b0
    rla                                           ; $443c: $17
    ret c                                         ; $443d: $d8

    cp $e1                                        ; $443e: $fe $e1
    cp $c0                                        ; $4440: $fe $c0
    ldh [$df], a                                  ; $4442: $e0 $df
    or b                                          ; $4444: $b0
    ld l, a                                       ; $4445: $6f
    ldh [$2f], a                                  ; $4446: $e0 $2f
    call nc, $ff33                                ; $4448: $d4 $33 $ff
    db $ec                                        ; $444b: $ec
    dec e                                         ; $444c: $1d
    ld a, [c]                                     ; $444d: $f2
    ld c, $fd                                     ; $444e: $0e $fd
    inc bc                                        ; $4450: $03
    add b                                         ; $4451: $80
    cp a                                          ; $4452: $bf
    cp $b2                                        ; $4453: $fe $b2
    pop hl                                        ; $4455: $e1
    jr nz, @-$0f                                  ; $4456: $20 $ef

    db $10                                        ; $4458: $10
    or e                                          ; $4459: $b3
    inc c                                         ; $445a: $0c
    db $ed                                        ; $445b: $ed
    ld [hl+], a                                   ; $445c: $22
    ld a, h                                       ; $445d: $7c
    ld d, a                                       ; $445e: $57
    and b                                         ; $445f: $a0
    inc sp                                        ; $4460: $33
    add l                                         ; $4461: $85
    ld c, $ce                                     ; $4462: $0e $ce
    ld [hl-], a                                   ; $4464: $32
    cp a                                          ; $4465: $bf
    ld d, b                                       ; $4466: $50
    ld b, b                                       ; $4467: $40
    add b                                         ; $4468: $80
    ld a, l                                       ; $4469: $7d
    ld bc, $a030                                  ; $446a: $01 $30 $a0
    inc a                                         ; $446d: $3c
    ld a, [hl-]                                   ; $446e: $3a
    push hl                                       ; $446f: $e5
    db $dd                                        ; $4470: $dd
    ld [bc], a                                    ; $4471: $02
    ld l, b                                       ; $4472: $68
    and b                                         ; $4473: $a0
    ld sp, hl                                     ; $4474: $f9
    ld d, b                                       ; $4475: $50
    adc b                                         ; $4476: $88
    ldh [rNR13], a                                ; $4477: $e0 $13
    add h                                         ; $4479: $84
    ld sp, hl                                     ; $447a: $f9
    ld c, $ef                                     ; $447b: $0e $ef
    ld sp, $ffbe                                  ; $447d: $31 $be $ff
    ld c, a                                       ; $4480: $4f
    ld [hl], b                                    ; $4481: $70
    cp a                                          ; $4482: $bf
    ret nz                                        ; $4483: $c0

Call_029_4484:
    ld bc, $06fd                                  ; $4484: $01 $fd $06
    rst $20                                       ; $4487: $e7
    sbc a                                         ; $4488: $9f
    add hl, sp                                    ; $4489: $39
    ld a, $c7                                     ; $448a: $3e $c7
    ld hl, sp+$3f                                 ; $448c: $f8 $3f
    or $64                                        ; $448e: $f6 $64
    sub c                                         ; $4490: $91
    ld h, b                                       ; $4491: $60
    rst $00                                       ; $4492: $c7
    rst $00                                       ; $4493: $c7
    jr c, jr_029_44ce                             ; $4494: $38 $38

    rst $00                                       ; $4496: $c7
    or d                                          ; $4497: $b2
    and b                                         ; $4498: $a0
    add [hl]                                      ; $4499: $86
    ld h, e                                       ; $449a: $63
    ld l, d                                       ; $449b: $6a
    pop hl                                        ; $449c: $e1
    add sp, $1b                                   ; $449d: $e8 $1b
    ld a, [c]                                     ; $449f: $f2
    cp $e2                                        ; $44a0: $fe $e2
    rra                                           ; $44a2: $1f
    ld e, [hl]                                    ; $44a3: $5e
    pop hl                                        ; $44a4: $e1
    ld [hl], c                                    ; $44a5: $71
    ld h, a                                       ; $44a6: $67
    jr nz, @-$3b                                  ; $44a7: $20 $c3

    inc e                                         ; $44a9: $1c
    inc e                                         ; $44aa: $1c
    rst $28                                       ; $44ab: $ef
    db $e3                                        ; $44ac: $e3
    db $e3                                        ; $44ad: $e3
    add b                                         ; $44ae: $80
    cp a                                          ; $44af: $bf
    dec h                                         ; $44b0: $25
    and b                                         ; $44b1: $a0
    rst $38                                       ; $44b2: $ff
    ld b, b                                       ; $44b3: $40
    ld e, a                                       ; $44b4: $5f
    rst $28                                       ; $44b5: $ef
    ld b, b                                       ; $44b6: $40
    ld e, a                                       ; $44b7: $5f
    add b                                         ; $44b8: $80
    cp a                                          ; $44b9: $bf
    cp $e1                                        ; $44ba: $fe $e1
    db $e3                                        ; $44bc: $e3
    jp $f33e                                      ; $44bd: $c3 $3e $f3


    cp a                                          ; $44c0: $bf
    ld [hl], b                                    ; $44c1: $70
    ld h, b                                       ; $44c2: $60
    ld h, b                                       ; $44c3: $60
    sub b                                         ; $44c4: $90
    ldh [rIE], a                                  ; $44c5: $e0 $ff
    ld [$14eb], sp                                ; $44c7: $08 $eb $14
    rst $38                                       ; $44ca: $ff
    rst $30                                       ; $44cb: $f7
    add b                                         ; $44cc: $80
    rst $38                                       ; $44cd: $ff

jr_029_44ce:
    sub b                                         ; $44ce: $90
    xor a                                         ; $44cf: $af
    ld d, b                                       ; $44d0: $50
    ld e, d                                       ; $44d1: $5a
    ld h, l                                       ; $44d2: $65
    rst $38                                       ; $44d3: $ff
    db $fd                                        ; $44d4: $fd
    ld b, d                                       ; $44d5: $42
    rst $38                                       ; $44d6: $ff
    ld b, b                                       ; $44d7: $40
    rst $38                                       ; $44d8: $ff
    ret z                                         ; $44d9: $c8

    xor e                                         ; $44da: $ab
    sub h                                         ; $44db: $94
    rst $38                                       ; $44dc: $ff
    rst $30                                       ; $44dd: $f7
    inc bc                                        ; $44de: $03
    rst $38                                       ; $44df: $ff
    dec b                                         ; $44e0: $05
    cp $2b                                        ; $44e1: $fe $2b
    db $fc                                        ; $44e3: $fc
    dec c                                         ; $44e4: $0d
    rst $38                                       ; $44e5: $ff
    ld a, [$fd32]                                 ; $44e6: $fa $32 $fd
    ld d, l                                       ; $44e9: $55
    ld [$d7a8], a                                 ; $44ea: $ea $a8 $d7
    db $f4                                        ; $44ed: $f4
    rst $38                                       ; $44ee: $ff
    adc e                                         ; $44ef: $8b
    rst $20                                       ; $44f0: $e7
    rst $38                                       ; $44f1: $ff
    jp c, $f53d                                   ; $44f2: $da $3d $f5

    ld a, [bc]                                    ; $44f5: $0a
    xor d                                         ; $44f6: $aa
    rst $38                                       ; $44f7: $ff
    ld d, l                                       ; $44f8: $55
    ld b, c                                       ; $44f9: $41
    cp [hl]                                       ; $44fa: $be
    inc d                                         ; $44fb: $14
    rst $38                                       ; $44fc: $ff
    xor b                                         ; $44fd: $a8
    rst $38                                       ; $44fe: $ff
    ld [hl], l                                    ; $44ff: $75
    rst $38                                       ; $4500: $ff
    rst $38                                       ; $4501: $ff
    sub l                                         ; $4502: $95
    db $eb                                        ; $4503: $eb
    dec bc                                        ; $4504: $0b
    push af                                       ; $4505: $f5
    and l                                         ; $4506: $a5
    ei                                            ; $4507: $fb
    ld c, d                                       ; $4508: $4a
    rst $38                                       ; $4509: $ff
    rst $30                                       ; $450a: $f7
    and [hl]                                      ; $450b: $a6
    ei                                            ; $450c: $fb
    call $97f3                                    ; $450d: $cd $f3 $97
    jp hl                                         ; $4510: $e9


    ld c, a                                       ; $4511: $4f
    ei                                            ; $4512: $fb
    pop af                                        ; $4513: $f1
    push af                                       ; $4514: $f5
    inc e                                         ; $4515: $1c
    ret nz                                        ; $4516: $c0

    ld a, [c]                                     ; $4517: $f2
    db $fd                                        ; $4518: $fd
    xor c                                         ; $4519: $a9
    cp $52                                        ; $451a: $fe $52
    ld a, a                                       ; $451c: $7f
    db $fd                                        ; $451d: $fd
    add c                                         ; $451e: $81
    cp $2a                                        ; $451f: $fe $2a
    push de                                       ; $4521: $d5
    sub l                                         ; $4522: $95
    db $eb                                        ; $4523: $eb
    add l                                         ; $4524: $85
    and b                                         ; $4525: $a0
    cp $fd                                        ; $4526: $fe $fd
    ld [$99df], a                                 ; $4528: $ea $df $99
    sbc a                                         ; $452b: $9f
    ld c, l                                       ; $452c: $4d
    daa                                           ; $452d: $27
    rla                                           ; $452e: $17
    and e                                         ; $452f: $a3
    rst $38                                       ; $4530: $ff
    di                                            ; $4531: $f3
    db $db                                        ; $4532: $db
    pop hl                                        ; $4533: $e1
    xor $f1                                       ; $4534: $ee $f1
    or h                                          ; $4536: $b4
    ei                                            ; $4537: $fb
    ld b, c                                       ; $4538: $41
    rst $38                                       ; $4539: $ff
    rst $38                                       ; $453a: $ff
    rst $18                                       ; $453b: $df
    sbc a                                         ; $453c: $9f
    sbc h                                         ; $453d: $9c
    ld c, a                                       ; $453e: $4f
    ld h, $17                                     ; $453f: $26 $17
    and d                                         ; $4541: $a2
    rst $38                                       ; $4542: $ff
    di                                            ; $4543: $f3
    jp c, $eee1                                   ; $4544: $da $e1 $ee

    ld [hl], c                                    ; $4547: $71
    db $f4                                        ; $4548: $f4
    dec sp                                        ; $4549: $3b
    ld sp, hl                                     ; $454a: $f9
    rst $38                                       ; $454b: $ff
    rst $38                                       ; $454c: $ff
    rst $28                                       ; $454d: $ef
    ldh a, [$b8]                                  ; $454e: $f0 $b8
    rst $00                                       ; $4550: $c7
    ld d, $f9                                     ; $4551: $16 $f9
    db $fc                                        ; $4553: $fc
    rst $38                                       ; $4554: $ff
    db $e3                                        ; $4555: $e3
    db $db                                        ; $4556: $db
    rst $20                                       ; $4557: $e7
    di                                            ; $4558: $f3
    adc $e6                                       ; $4559: $ce $e6
    sbc $8f                                       ; $455b: $de $8f
    rst $38                                       ; $455d: $ff
    rst $38                                       ; $455e: $ff
    ld a, a                                       ; $455f: $7f
    rst $38                                       ; $4560: $ff
    ld d, e                                       ; $4561: $53
    rst $28                                       ; $4562: $ef
    sbc c                                         ; $4563: $99
    rst $20                                       ; $4564: $e7
    ld sp, hl                                     ; $4565: $f9
    rst $38                                       ; $4566: $ff
    rst $38                                       ; $4567: $ff
    xor [hl]                                      ; $4568: $ae
    rst $18                                       ; $4569: $df
    ld e, a                                       ; $456a: $5f
    ld h, a                                       ; $456b: $67
    ld c, e                                       ; $456c: $4b
    ld [hl], a                                    ; $456d: $77
    rst $20                                       ; $456e: $e7
    rst $38                                       ; $456f: $ff
    ei                                            ; $4570: $fb
    sbc a                                         ; $4571: $9f
    ld sp, hl                                     ; $4572: $f9
    cp l                                          ; $4573: $bd
    ld sp, hl                                     ; $4574: $f9
    rst $38                                       ; $4575: $ff
    rst $38                                       ; $4576: $ff
    cp $fe                                        ; $4577: $fe $fe
    rst $38                                       ; $4579: $ff
    ldh [rIE], a                                  ; $457a: $e0 $ff
    cp $fd                                        ; $457c: $fe $fd
    db $fd                                        ; $457e: $fd
    rst $38                                       ; $457f: $ff
    cp $f1                                        ; $4580: $fe $f1
    rst $38                                       ; $4582: $ff
    rst $38                                       ; $4583: $ff
    sbc c                                         ; $4584: $99
    sbc a                                         ; $4585: $9f
    cp l                                          ; $4586: $bd
    cp a                                          ; $4587: $bf
    rst $38                                       ; $4588: $ff
    rst $38                                       ; $4589: $ff
    ld a, a                                       ; $458a: $7f
    ldh a, [rIE]                                  ; $458b: $f0 $ff
    ldh [$fa], a                                  ; $458d: $e0 $fa
    pop hl                                        ; $458f: $e1
    ld [$e4e3], a                                 ; $4590: $ea $e3 $e4
    db $e3                                        ; $4593: $e3
    ld hl, sp-$08                                 ; $4594: $f8 $f8
    cp $fe                                        ; $4596: $fe $fe
    db $fc                                        ; $4598: $fc
    ld [$e4e3], a                                 ; $4599: $ea $e3 $e4
    db $e3                                        ; $459c: $e3
    rra                                           ; $459d: $1f
    rra                                           ; $459e: $1f
    ld a, a                                       ; $459f: $7f
    ld a, a                                       ; $45a0: $7f
    db $ec                                        ; $45a1: $ec
    di                                            ; $45a2: $f3
    rst $38                                       ; $45a3: $ff
    adc a                                         ; $45a4: $8f
    rst $38                                       ; $45a5: $ff
    ld a, c                                       ; $45a6: $79
    rst $38                                       ; $45a7: $ff
    add sp, -$09                                  ; $45a8: $e8 $f7
    di                                            ; $45aa: $f3
    rst $28                                       ; $45ab: $ef
    rst $28                                       ; $45ac: $ef
    add $fe                                       ; $45ad: $c6 $fe
    sbc $fe                                       ; $45af: $de $fe
    rst $00                                       ; $45b1: $c7
    ldh [rIE], a                                  ; $45b2: $e0 $ff
    ld h, a                                       ; $45b4: $67
    rst $38                                       ; $45b5: $ff
    rst $38                                       ; $45b6: $ff
    db $d3                                        ; $45b7: $d3
    rst $28                                       ; $45b8: $ef
    db $fd                                        ; $45b9: $fd
    rst $38                                       ; $45ba: $ff
    rst $08                                       ; $45bb: $cf
    rst $38                                       ; $45bc: $ff
    ld h, a                                       ; $45bd: $67
    ld a, a                                       ; $45be: $7f
    dec e                                         ; $45bf: $1d
    rst $30                                       ; $45c0: $f7
    sub $80                                       ; $45c1: $d6 $80
    db $fd                                        ; $45c3: $fd
    ld sp, hl                                     ; $45c4: $f9
    ei                                            ; $45c5: $fb
    pop de                                        ; $45c6: $d1
    add c                                         ; $45c7: $81
    adc $80                                       ; $45c8: $ce $80
    sbc [hl]                                      ; $45ca: $9e
    ldh [$0e], a                                  ; $45cb: $e0 $0e
    sbc b                                         ; $45cd: $98
    ldh [$fb], a                                  ; $45ce: $e0 $fb
    rst $38                                       ; $45d0: $ff
    cp a                                          ; $45d1: $bf
    db $db                                        ; $45d2: $db
    pop hl                                        ; $45d3: $e1
    add hl, sp                                    ; $45d4: $39
    and $ea                                       ; $45d5: $e6 $ea
    db $e3                                        ; $45d7: $e3
    db $e4                                        ; $45d8: $e4
    db $e4                                        ; $45d9: $e4
    add hl, bc                                    ; $45da: $09
    ei                                            ; $45db: $fb
    call c, Call_000_24e1                         ; $45dc: $dc $e1 $24
    add sp, -$21                                  ; $45df: $e8 $df
    ld sp, $ffa0                                  ; $45e1: $31 $a0 $ff

Jump_029_45e4:
    db $ec                                        ; $45e4: $ec
    nop                                           ; $45e5: $00
    nop                                           ; $45e6: $00
    nop                                           ; $45e7: $00
    pop bc                                        ; $45e8: $c1
    ld d, c                                       ; $45e9: $51
    rst $38                                       ; $45ea: $ff
    rst $38                                       ; $45eb: $ff
    rst $38                                       ; $45ec: $ff
    rst $38                                       ; $45ed: $ff
    rst $38                                       ; $45ee: $ff
    rst $38                                       ; $45ef: $ff
    rst $38                                       ; $45f0: $ff
    rst $38                                       ; $45f1: $ff
    db $eb                                        ; $45f2: $eb
    ld [$5b5a], a                                 ; $45f3: $ea $5a $5b
    cp b                                          ; $45f6: $b8
    db $fc                                        ; $45f7: $fc
    rst $28                                       ; $45f8: $ef
    rst $38                                       ; $45f9: $ff
    rst $38                                       ; $45fa: $ff
    jp Jump_029_5ce7                              ; $45fb: $c3 $e7 $5c


    ld e, l                                       ; $45fe: $5d
    ld d, c                                       ; $45ff: $51
    db $fc                                        ; $4600: $fc
    ldh [$5a], a                                  ; $4601: $e0 $5a
    pop hl                                        ; $4603: $e1
    ld e, e                                       ; $4604: $5b
    ld hl, sp-$1d                                 ; $4605: $f8 $e3
    db $fc                                        ; $4607: $fc
    db $e3                                        ; $4608: $e3
    rst $38                                       ; $4609: $ff
    rst $38                                       ; $460a: $ff
    jp $5ee7                                      ; $460b: $c3 $e7 $5e


    ld e, a                                       ; $460e: $5f
    ld e, d                                       ; $460f: $5a
    rra                                           ; $4610: $1f
    ld e, e                                       ; $4611: $5b
    ld e, [hl]                                    ; $4612: $5e
    ld e, a                                       ; $4613: $5f
    ld e, h                                       ; $4614: $5c
    ld e, l                                       ; $4615: $5d
    ld hl, sp-$1d                                 ; $4616: $f8 $e3
    db $fc                                        ; $4618: $fc
    db $e3                                        ; $4619: $e3
    call nz, Call_000_18ff                        ; $461a: $c4 $ff $18
    ld [c], a                                     ; $461d: $e2
    pop hl                                        ; $461e: $e1
    jp Jump_029_7ee4                              ; $461f: $c3 $e4 $7e


    ld [c], a                                     ; $4622: $e2
    ld e, [hl]                                    ; $4623: $5e
    ld e, a                                       ; $4624: $5f
    add d                                         ; $4625: $82
    rst $20                                       ; $4626: $e7
    ld a, [hl]                                    ; $4627: $7e
    rst $38                                       ; $4628: $ff
    ld [$0ce3], sp                                ; $4629: $08 $e3 $0c
    jp $c4e5                                      ; $462c: $c3 $e5 $c4


    pop hl                                        ; $462f: $e1
    ld d, h                                       ; $4630: $54
    ld d, l                                       ; $4631: $55
    cp h                                          ; $4632: $bc
    pop hl                                        ; $4633: $e1
    ld a, [hl]                                    ; $4634: $7e
    jp hl                                         ; $4635: $e9


    ld a, d                                       ; $4636: $7a
    db $fd                                        ; $4637: $fd
    sub d                                         ; $4638: $92
    db $e4                                        ; $4639: $e4
    inc c                                         ; $463a: $0c
    ld b, c                                       ; $463b: $41
    pop hl                                        ; $463c: $e1
    jp $56e0                                      ; $463d: $c3 $e0 $56


    ld d, a                                       ; $4640: $57
    cp l                                          ; $4641: $bd
    pop hl                                        ; $4642: $e1
    ld a, [hl]                                    ; $4643: $7e
    jp hl                                         ; $4644: $e9


    ld a, d                                       ; $4645: $7a
    db $fd                                        ; $4646: $fd
    inc d                                         ; $4647: $14
    and $5b                                       ; $4648: $e6 $5b
    ld e, h                                       ; $464a: $5c
    ld e, l                                       ; $464b: $5d
    jp $58e0                                      ; $464c: $c3 $e0 $58


    ld e, c                                       ; $464f: $59
    cp l                                          ; $4650: $bd
    pop hl                                        ; $4651: $e1
    ld d, c                                       ; $4652: $51
    ld a, [hl-]                                   ; $4653: $3a
    ldh [rNR23], a                                ; $4654: $e0 $18
    ld hl, sp-$39                                 ; $4656: $f8 $c7
    jp $8adf                                      ; $4658: $c3 $df $8a


    jp nz, Jump_029_5f5e                          ; $465b: $c2 $5e $5f

    jp Jump_029_40e0                              ; $465e: $c3 $e0 $40


    ldh [$bd], a                                  ; $4661: $e0 $bd
    ldh [$c0], a                                  ; $4663: $e0 $c0
    add hl, sp                                    ; $4665: $39
    pop hl                                        ; $4666: $e1
    halt                                          ; $4667: $76
    add $3b                                       ; $4668: $c6 $3b
    ld hl, sp-$7a                                 ; $466a: $f8 $86
    push bc                                       ; $466c: $c5
    adc d                                         ; $466d: $8a
    pop bc                                        ; $466e: $c1
    ld b, $e1                                     ; $466f: $06 $e1
    ld d, h                                       ; $4671: $54
    ld d, l                                       ; $4672: $55
    nop                                           ; $4673: $00
    add e                                         ; $4674: $83
    pop hl                                        ; $4675: $e1
    add hl, sp                                    ; $4676: $39
    db $e3                                        ; $4677: $e3
    db $ec                                        ; $4678: $ec
    db $e3                                        ; $4679: $e3
    or b                                          ; $467a: $b0
    ret nz                                        ; $467b: $c0

    cp c                                          ; $467c: $b9
    add sp, -$7a                                  ; $467d: $e8 $86
    push de                                       ; $467f: $d5
    adc d                                         ; $4680: $8a
    pop bc                                        ; $4681: $c1
    ld c, c                                       ; $4682: $49
    pop hl                                        ; $4683: $e1
    rrca                                          ; $4684: $0f
    ld d, [hl]                                    ; $4685: $56
    ld d, a                                       ; $4686: $57
    ld e, b                                       ; $4687: $58
    ld e, c                                       ; $4688: $59
    cp h                                          ; $4689: $bc
    ld [c], a                                     ; $468a: $e2
    add hl, sp                                    ; $468b: $39
    ldh [$ec], a                                  ; $468c: $e0 $ec
    db $e4                                        ; $468e: $e4
    cp l                                          ; $468f: $bd
    pop hl                                        ; $4690: $e1
    ld h, b                                       ; $4691: $60
    dec sp                                        ; $4692: $3b
    ld [c], a                                     ; $4693: $e2
    ld [hl], d                                    ; $4694: $72
    res 2, d                                      ; $4695: $cb $92
    and e                                         ; $4697: $a3
    ld c, c                                       ; $4698: $49
    add $49                                       ; $4699: $c6 $49
    ld [c], a                                     ; $469b: $e2
    ld d, h                                       ; $469c: $54

jr_029_469d:
    ld d, l                                       ; $469d: $55
    ld b, l                                       ; $469e: $45
    pop hl                                        ; $469f: $e1
    nop                                           ; $46a0: $00
    cp h                                          ; $46a1: $bc
    pop hl                                        ; $46a2: $e1
    ld a, b                                       ; $46a3: $78
    jp nz, $e335                                  ; $46a4: $c2 $35 $e3

    ld a, [c]                                     ; $46a7: $f2
    pop bc                                        ; $46a8: $c1
    dec sp                                        ; $46a9: $3b
    ld [c], a                                     ; $46aa: $e2
    ld hl, sp-$35                                 ; $46ab: $f8 $cb
    and d                                         ; $46ad: $a2
    ret z                                         ; $46ae: $c8

    add e                                         ; $46af: $83
    db $e3                                        ; $46b0: $e3
    nop                                           ; $46b1: $00
    add h                                         ; $46b2: $84
    jp $c011                                      ; $46b3: $c3 $11 $c0


    ld bc, $78e3                                  ; $46b6: $01 $e3 $78
    ret nz                                        ; $46b9: $c0

    dec [hl]                                      ; $46ba: $35
    db $e3                                        ; $46bb: $e3
    ld l, a                                       ; $46bc: $6f
    pop hl                                        ; $46bd: $e1
    add d                                         ; $46be: $82
    xor $a2                                       ; $46bf: $ee $a2
    sra h                                         ; $46c1: $cb $2c
    call z, $84c2                                 ; $46c3: $cc $c2 $84
    jp $4e50                                      ; $46c6: $c3 $50 $4e


    rst $38                                       ; $46c9: $ff

Jump_029_46ca:
    ldh [$50], a                                  ; $46ca: $e0 $50
    ld a, h                                       ; $46cc: $7c
    db $e3                                        ; $46cd: $e3
    ld [hl], e                                    ; $46ce: $73
    db $e3                                        ; $46cf: $e3
    ret nz                                        ; $46d0: $c0

    daa                                           ; $46d1: $27
    ld [c], a                                     ; $46d2: $e2
    ld a, d                                       ; $46d3: $7a
    jp $ab70                                      ; $46d4: $c3 $70 $ab


    jr nz, jr_029_469d                            ; $46d7: $20 $c4

    inc c                                         ; $46d9: $0c
    jp nz, $c48a                                  ; $46da: $c2 $8a $c4

    ld d, c                                       ; $46dd: $51
    ld d, b                                       ; $46de: $50
    ld a, a                                       ; $46df: $7f
    ld c, l                                       ; $46e0: $4d
    add hl, hl                                    ; $46e1: $29
    jr z, jr_029_470d                             ; $46e2: $28 $29

    jr z, jr_029_4733                             ; $46e4: $28 $4d

    ld d, b                                       ; $46e6: $50
    di                                            ; $46e7: $f3
    ld [c], a                                     ; $46e8: $e2
    add b                                         ; $46e9: $80
    dec hl                                        ; $46ea: $2b
    add sp, -$1c                                  ; $46eb: $e8 $e4
    add c                                         ; $46ed: $81
    and $83                                       ; $46ee: $e6 $83
    adc d                                         ; $46f0: $8a
    xor e                                         ; $46f1: $ab
    ld d, d                                       ; $46f2: $52
    and b                                         ; $46f3: $a0
    inc c                                         ; $46f4: $0c
    jp nz, $a0ca                                  ; $46f5: $c2 $ca $a0

    ld d, b                                       ; $46f8: $50
    ld hl, $8553                                  ; $46f9: $21 $53 $85
    ldh [$c1], a                                  ; $46fc: $e0 $c1
    ld [c], a                                     ; $46fe: $e2
    cp a                                          ; $46ff: $bf
    ldh [$7a], a                                  ; $4700: $e0 $7a
    ldh [rHDMA2], a                               ; $4702: $e0 $52
    ld a, d                                       ; $4704: $7a
    pop hl                                        ; $4705: $e1
    ld b, d                                       ; $4706: $42
    and b                                         ; $4707: $a0
    nop                                           ; $4708: $00
    dec hl                                        ; $4709: $2b
    ld [c], a                                     ; $470a: $e2
    ld h, d                                       ; $470b: $62
    pop bc                                        ; $470c: $c1

jr_029_470d:
    and $81                                       ; $470d: $e6 $81
    nop                                           ; $470f: $00
    rst $28                                       ; $4710: $ef
    ret                                           ; $4711: $c9


    jp nz, $a0ca                                  ; $4712: $c2 $ca $a0

    add [hl]                                      ; $4715: $86
    db $e3                                        ; $4716: $e3
    db $fc                                        ; $4717: $fc
    jp hl                                         ; $4718: $e9


    inc c                                         ; $4719: $0c
    ld a, d                                       ; $471a: $7a
    db $e4                                        ; $471b: $e4
    ld a, [c]                                     ; $471c: $f2
    and h                                         ; $471d: $a4
    ld d, [hl]                                    ; $471e: $56
    ld d, a                                       ; $471f: $57
    ld a, $eb                                     ; $4720: $3e $eb
    sbc d                                         ; $4722: $9a
    add l                                         ; $4723: $85
    ret                                           ; $4724: $c9


    call nz, $efc1                                ; $4725: $c4 $c1 $ef
    nop                                           ; $4728: $00
    ld a, d                                       ; $4729: $7a
    db $e3                                        ; $472a: $e3
    db $f4                                        ; $472b: $f4
    ret nz                                        ; $472c: $c0

    db $eb                                        ; $472d: $eb
    and e                                         ; $472e: $a3
    ld l, $e3                                     ; $472f: $2e $e3
    xor [hl]                                      ; $4731: $ae
    adc c                                         ; $4732: $89

jr_029_4733:
    db $10                                        ; $4733: $10

jr_029_4734:
    add e                                         ; $4734: $83
    ret                                           ; $4735: $c9


    call nz, $f0c1                                ; $4736: $c4 $c1 $f0
    dec bc                                        ; $4739: $0b
    add hl, hl                                    ; $473a: $29
    jr z, jr_029_4771                             ; $473b: $28 $34

    pop hl                                        ; $473d: $e1
    ld c, l                                       ; $473e: $4d
    or e                                          ; $473f: $b3
    jp $c331                                      ; $4740: $c3 $31 $c3


    ld h, d                                       ; $4743: $62
    add d                                         ; $4744: $82
    sub l                                         ; $4745: $95
    ld h, e                                       ; $4746: $63
    nop                                           ; $4747: $00
    inc e                                         ; $4748: $1c
    add l                                         ; $4749: $85
    ld b, c                                       ; $474a: $41
    ld [c], a                                     ; $474b: $e2
    pop bc                                        ; $474c: $c1
    ld a, [c]                                     ; $474d: $f2
    jr nc, jr_029_4734                            ; $474e: $30 $e4

    or e                                          ; $4750: $b3
    jp $c231                                      ; $4751: $c3 $31 $c2


    ldh a, [$66]                                  ; $4754: $f0 $66
    sub l                                         ; $4756: $95
    ld h, b                                       ; $4757: $60
    db $f4                                        ; $4758: $f4
    and [hl]                                      ; $4759: $a6
    add a                                         ; $475a: $87
    adc [hl]                                      ; $475b: $8e
    add b                                         ; $475c: $80
    ld c, a                                       ; $475d: $4f
    ret                                           ; $475e: $c9


    jp Jump_000_2b2a                              ; $475f: $c3 $2a $2b


    jr nc, @+$32                                  ; $4762: $30 $30

    inc bc                                        ; $4764: $03
    dec hl                                        ; $4765: $2b
    ld a, [hl+]                                   ; $4766: $2a
    ld hl, sp-$1d                                 ; $4767: $f8 $e3
    rst $30                                       ; $4769: $f7
    ld [c], a                                     ; $476a: $e2
    cp a                                          ; $476b: $bf
    db $e4                                        ; $476c: $e4
    ld a, [$a6a2]                                 ; $476d: $fa $a2 $a6
    add b                                         ; $4770: $80

jr_029_4771:
    ldh a, [$66]                                  ; $4771: $f0 $66
    ret nc                                        ; $4773: $d0

    db $db                                        ; $4774: $db
    ld h, b                                       ; $4775: $60
    sub d                                         ; $4776: $92
    ld h, e                                       ; $4777: $63
    ld [de], a                                    ; $4778: $12
    add c                                         ; $4779: $81
    adc [hl]                                      ; $477a: $8e
    add b                                         ; $477b: $80
    ld c, a                                       ; $477c: $4f
    adc d                                         ; $477d: $8a
    jp nz, $012e                                  ; $477e: $c2 $2e $01

    halt                                          ; $4781: $76
    rst $38                                       ; $4782: $ff
    ld [c], a                                     ; $4783: $e2
    jr nc, jr_029_47b6                            ; $4784: $30 $30

    ld hl, sp-$1d                                 ; $4786: $f8 $e3
    ld bc, $2a2b                                  ; $4788: $01 $2b $2a
    ld a, [hl]                                    ; $478b: $7e
    push hl                                       ; $478c: $e5
    ret nz                                        ; $478d: $c0

    dec hl                                        ; $478e: $2b
    add e                                         ; $478f: $83
    ld b, d                                       ; $4790: $42
    push hl                                       ; $4791: $e5
    call nc, $1044                                ; $4792: $d4 $44 $10
    ld h, c                                       ; $4795: $61
    adc c                                         ; $4796: $89
    and d                                         ; $4797: $a2
    ld a, [bc]                                    ; $4798: $0a
    call nz, $0131                                ; $4799: $c4 $31 $01
    cp a                                          ; $479c: $bf
    ld bc, $1617                                  ; $479d: $01 $17 $16
    ld [hl+], a                                   ; $47a0: $22
    ld d, $17                                     ; $47a1: $16 $17
    ld sp, hl                                     ; $47a3: $f9
    pop hl                                        ; $47a4: $e1
    inc hl                                        ; $47a5: $23
    dec l                                         ; $47a6: $2d
    inc hl                                        ; $47a7: $23
    ld hl, sp-$1f                                 ; $47a8: $f8 $e1
    ld bc, $6d2e                                  ; $47aa: $01 $2e $6d
    jp $2b52                                      ; $47ad: $c3 $52 $2b


    add h                                         ; $47b0: $84
    call z, $f86b                                 ; $47b1: $cc $6b $f8
    ld d, [hl]                                    ; $47b4: $56
    ld h, c                                       ; $47b5: $61

jr_029_47b6:
    ld b, $c3                                     ; $47b6: $06 $c3
    ld a, [bc]                                    ; $47b8: $0a
    jp $012c                                      ; $47b9: $c3 $2c $01


    inc c                                         ; $47bc: $0c
    ld b, $37                                     ; $47bd: $06 $37
    ld a, a                                       ; $47bf: $7f
    scf                                           ; $47c0: $37
    scf                                           ; $47c1: $37
    ld b, $22                                     ; $47c2: $06 $22
    inc hl                                        ; $47c4: $23
    ld b, $3a                                     ; $47c5: $06 $3a
    rst $38                                       ; $47c7: $ff
    ldh [$0b], a                                  ; $47c8: $e0 $0b
    ld b, c                                       ; $47ca: $41
    ld b, d                                       ; $47cb: $42
    cp a                                          ; $47cc: $bf
    and $4f                                       ; $47cd: $e6 $4f
    ld a, [hl+]                                   ; $47cf: $2a
    and h                                         ; $47d0: $a4
    ld b, d                                       ; $47d1: $42
    res 3, a                                      ; $47d2: $cb $9f
    and l                                         ; $47d4: $a5
    ld b, $c4                                     ; $47d5: $06 $c4
    rst $28                                       ; $47d7: $ef
    ld sp, $1901                                  ; $47d8: $31 $01 $19
    jr @-$3d                                      ; $47db: $18 $c1

    ldh [$37], a                                  ; $47dd: $e0 $37
    nop                                           ; $47df: $00
    scf                                           ; $47e0: $37
    db $fd                                        ; $47e1: $fd
    inc [hl]                                      ; $47e2: $34
    pop bc                                        ; $47e3: $c1
    pop hl                                        ; $47e4: $e1
    ld a, [hl-]                                   ; $47e5: $3a
    ld a, [hl-]                                   ; $47e6: $3a
    ld a, $43                                     ; $47e7: $3e $43
    ld b, h                                       ; $47e9: $44
    ld bc, $0103                                  ; $47ea: $01 $03 $01
    ld sp, $c6fe                                  ; $47ed: $31 $fe $c6
    ld h, $60                                     ; $47f0: $26 $60
    ld b, d                                       ; $47f2: $42
    call z, $8313                                 ; $47f3: $cc $13 $83
    rst $00                                       ; $47f6: $c7
    and h                                         ; $47f7: $a4
    add c                                         ; $47f8: $81
    ldh [$fb], a                                  ; $47f9: $e0 $fb
    add hl, bc                                    ; $47fb: $09
    nop                                           ; $47fc: $00
    ret nz                                        ; $47fd: $c0

    ld [$3c48], a                                 ; $47fe: $ea $48 $3c
    inc a                                         ; $4801: $3c
    ccf                                           ; $4802: $3f
    ld bc, $2c81                                  ; $4803: $01 $81 $2c
    cp $c7                                        ; $4806: $fe $c7
    cp [hl]                                       ; $4808: $be
    and c                                         ; $4809: $a1
    ret nz                                        ; $480a: $c0

    xor c                                         ; $480b: $a9
    ld d, a                                       ; $480c: $57
    add e                                         ; $480d: $83
    pop bc                                        ; $480e: $c1
    push hl                                       ; $480f: $e5
    add c                                         ; $4810: $81
    pop hl                                        ; $4811: $e1
    nop                                           ; $4812: $00
    db $fc                                        ; $4813: $fc
    cp a                                          ; $4814: $bf
    pop hl                                        ; $4815: $e1
    add b                                         ; $4816: $80
    db $e4                                        ; $4817: $e4
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    ld b, b                                       ; $481a: $40
    inc a                                         ; $481b: $3c
    inc a                                         ; $481c: $3c
    dec a                                         ; $481d: $3d
    dec bc                                        ; $481e: $0b
    ld bc, $6b2f                                  ; $481f: $01 $2f $6b
    and e                                         ; $4822: $a3
    ld c, a                                       ; $4823: $4f
    or c                                          ; $4824: $b1
    add h                                         ; $4825: $84
    ld l, [hl]                                    ; $4826: $6e
    ld b, h                                       ; $4827: $44
    nop                                           ; $4828: $00
    jp nz, $83ce                                  ; $4829: $c2 $ce $83

    pop bc                                        ; $482c: $c1
    ld d, e                                       ; $482d: $53
    inc d                                         ; $482e: $14
    call nz, $e181                                ; $482f: $c4 $81 $e1
    rst $38                                       ; $4832: $ff
    ldh [rLCDC], a                                ; $4833: $e0 $40
    db $e4                                        ; $4835: $e4
    push af                                       ; $4836: $f5
    ldh [$38], a                                  ; $4837: $e0 $38
    dec sp                                        ; $4839: $3b
    ld e, a                                       ; $483a: $5f
    ld a, $3c                                     ; $483b: $3e $3c
    ld c, d                                       ; $483d: $4a
    ld bc, $ef2f                                  ; $483e: $01 $2f $ef
    add e                                         ; $4841: $83
    ld c, a                                       ; $4842: $4f
    ld l, b                                       ; $4843: $68
    ld b, d                                       ; $4844: $42
    ldh [$f4], a                                  ; $4845: $e0 $f4
    ld b, [hl]                                    ; $4847: $46
    nop                                           ; $4848: $00
    jp nz, $6350                                  ; $4849: $c2 $50 $63

    ld b, l                                       ; $484c: $45
    ret nz                                        ; $484d: $c0

    call z, Call_000_2f82                         ; $484e: $cc $82 $2f
    ld bc, $f620                                  ; $4851: $01 $20 $f6
    ret nz                                        ; $4854: $c0

    db $e4                                        ; $4855: $e4
    jr c, jr_029_488d                             ; $4856: $38 $35

    or a                                          ; $4858: $b7
    pop hl                                        ; $4859: $e1
    inc [hl]                                      ; $485a: $34
    dec sp                                        ; $485b: $3b
    dec sp                                        ; $485c: $3b
    ld b, b                                       ; $485d: $40
    ld h, b                                       ; $485e: $60
    ret nz                                        ; $485f: $c0

    pop hl                                        ; $4860: $e1
    push af                                       ; $4861: $f5
    add h                                         ; $4862: $84
    cp c                                          ; $4863: $b9
    ld h, l                                       ; $4864: $65
    nop                                           ; $4865: $00
    ret z                                         ; $4866: $c8

    call Call_029_5661                            ; $4867: $cd $61 $56
    ld d, a                                       ; $486a: $57
    ret z                                         ; $486b: $c8

    add l                                         ; $486c: $85

Jump_029_486d:
    scf                                           ; $486d: $37
    cpl                                           ; $486e: $2f
    ld bc, $8021                                  ; $486f: $01 $21 $80
    pop hl                                        ; $4872: $e1
    nop                                           ; $4873: $00
    scf                                           ; $4874: $37
    add [hl]                                      ; $4875: $86
    ldh [$bf], a                                  ; $4876: $e0 $bf
    ldh [$0d], a                                  ; $4878: $e0 $0d
    dec sp                                        ; $487a: $3b
    ret nz                                        ; $487b: $c0

    ldh [$3b], a                                  ; $487c: $e0 $3b
    ld c, d                                       ; $487e: $4a
    ld b, b                                       ; $487f: $40
    ldh [$c1], a                                  ; $4880: $e0 $c1
    db $e4                                        ; $4882: $e4
    ld l, b                                       ; $4883: $68
    ld b, b                                       ; $4884: $40
    ld l, [hl]                                    ; $4885: $6e
    ld a, [hl+]                                   ; $4886: $2a
    ret c                                         ; $4887: $d8

    call Call_000_0564                            ; $4888: $cd $64 $05
    and a                                         ; $488b: $a7
    add b                                         ; $488c: $80

jr_029_488d:
    db $e4                                        ; $488d: $e4
    dec sp                                        ; $488e: $3b
    jr c, @+$47                                   ; $488f: $38 $45

    pop hl                                        ; $4891: $e1
    dec [hl]                                      ; $4892: $35
    dec sp                                        ; $4893: $3b
    ld d, $c0                                     ; $4894: $16 $c0
    ld [c], a                                     ; $4896: $e2
    ld a, $3f                                     ; $4897: $3e $3f
    nop                                           ; $4899: $00
    db $e3                                        ; $489a: $e3
    ld c, a                                       ; $489b: $4f
    xor e                                         ; $489c: $ab
    ld hl, $2bf4                                  ; $489d: $21 $f4 $2b
    ld d, l                                       ; $48a0: $55
    ld h, d                                       ; $48a1: $62
    jr nz, @+$53                                  ; $48a2: $20 $51

    ld b, e                                       ; $48a4: $43
    add e                                         ; $48a5: $83
    and e                                         ; $48a6: $a3
    ld b, b                                       ; $48a7: $40
    ld [c], a                                     ; $48a8: $e2
    adc h                                         ; $48a9: $8c
    ldh [$bf], a                                  ; $48aa: $e0 $bf
    pop hl                                        ; $48ac: $e1
    scf                                           ; $48ad: $37
    ld b, e                                       ; $48ae: $43
    ldh [$80], a                                  ; $48af: $e0 $80
    pop hl                                        ; $48b1: $e1
    dec bc                                        ; $48b2: $0b
    jr nz, jr_029_48b6                            ; $48b3: $20 $01

    add b                                         ; $48b5: $80

jr_029_48b6:
    jp $b94f                                      ; $48b6: $c3 $4f $b9


    ld c, c                                       ; $48b9: $49
    cpl                                           ; $48ba: $2f
    inc hl                                        ; $48bb: $23
    ld d, $43                                     ; $48bc: $16 $43
    ld d, c                                       ; $48be: $51
    ld b, d                                       ; $48bf: $42
    ld c, $03                                     ; $48c0: $0e $03

Call_029_48c2:
    and e                                         ; $48c2: $a3
    cpl                                           ; $48c3: $2f
    ld bc, $c209                                  ; $48c4: $01 $09 $c2
    pop hl                                        ; $48c7: $e1
    cp a                                          ; $48c8: $bf
    ld [c], a                                     ; $48c9: $e2
    ret nz                                        ; $48ca: $c0

    add sp, $00                                   ; $48cb: $e8 $00
    jp nz, $8240                                  ; $48cd: $c2 $40 $82

    pop bc                                        ; $48d0: $c1
    nop                                           ; $48d1: $00
    ld [$02a7], a                                 ; $48d2: $ea $a7 $02
    sbc $42                                       ; $48d5: $de $42
    rst $00                                       ; $48d7: $c7
    ld h, c                                       ; $48d8: $61
    adc l                                         ; $48d9: $8d
    ld h, d                                       ; $48da: $62
    inc l                                         ; $48db: $2c
    pop bc                                        ; $48dc: $c1
    and b                                         ; $48dd: $a0
    ld hl, sp-$41                                 ; $48de: $f8 $bf
    db $e3                                        ; $48e0: $e3
    cp [hl]                                       ; $48e1: $be
    and c                                         ; $48e2: $a1
    ld a, b                                       ; $48e3: $78
    pop hl                                        ; $48e4: $e1
    dec sp                                        ; $48e5: $3b
    dec sp                                        ; $48e6: $3b
    add hl, bc                                    ; $48e7: $09
    ld bc, $022c                                  ; $48e8: $01 $2c $02
    ld [hl], c                                    ; $48eb: $71
    ld h, d                                       ; $48ec: $62
    ld d, d                                       ; $48ed: $52
    cp a                                          ; $48ee: $bf
    add e                                         ; $48ef: $83
    adc d                                         ; $48f0: $8a
    and l                                         ; $48f1: $a5
    add hl, bc                                    ; $48f2: $09
    ld h, h                                       ; $48f3: $64
    sbc $43                                       ; $48f4: $de $43
    pop bc                                        ; $48f6: $c1
    db $e4                                        ; $48f7: $e4
    add c                                         ; $48f8: $81
    and b                                         ; $48f9: $a0
    ld a, b                                       ; $48fa: $78
    ld a, a                                       ; $48fb: $7f
    push hl                                       ; $48fc: $e5
    ret nz                                        ; $48fd: $c0

    ld [c], a                                     ; $48fe: $e2
    ccf                                           ; $48ff: $3f
    pop bc                                        ; $4900: $c1
    jr jr_029_491c                                ; $4901: $18 $19

    ld bc, $8231                                  ; $4903: $01 $31 $82
    rst $00                                       ; $4906: $c7
    ldh a, [$fc]                                  ; $4907: $f0 $fc
    add $c3                                       ; $4909: $c6 $c3
    and l                                         ; $490b: $a5
    ld c, $64                                     ; $490c: $0e $64
    ld c, d                                       ; $490e: $4a
    ld h, l                                       ; $490f: $65
    inc l                                         ; $4910: $2c
    ld bc, $021d                                  ; $4911: $01 $1d $02
    nop                                           ; $4914: $00
    add b                                         ; $4915: $80
    and $75                                       ; $4916: $e6 $75
    jp nz, $e081                                  ; $4918: $c2 $81 $e0

    add d                                         ; $491b: $82

jr_029_491c:
    rst $00                                       ; $491c: $c7
    ld a, d                                       ; $491d: $7a
    ld b, a                                       ; $491e: $47
    rst $38                                       ; $491f: $ff
    push bc                                       ; $4920: $c5
    add [hl]                                      ; $4921: $86
    push hl                                       ; $4922: $e5
    add hl, bc                                    ; $4923: $09
    ld h, h                                       ; $4924: $64
    sbc h                                         ; $4925: $9c
    add c                                         ; $4926: $81
    add b                                         ; $4927: $80
    cp a                                          ; $4928: $bf
    ld [c], a                                     ; $4929: $e2
    ld b, $22                                     ; $492a: $06 $22
    ld [hl+], a                                   ; $492c: $22
    cp [hl]                                       ; $492d: $be
    add b                                         ; $492e: $80
    or h                                          ; $492f: $b4
    and b                                         ; $4930: $a0
    ld b, $01                                     ; $4931: $06 $01
    rlca                                          ; $4933: $07
    ld [bc], a                                    ; $4934: $02
    db $e4                                        ; $4935: $e4
    add l                                         ; $4936: $85
    db $e3                                        ; $4937: $e3
    ld a, d                                       ; $4938: $7a
    ld b, h                                       ; $4939: $44
    ld [hl], h                                    ; $493a: $74
    ld [bc], a                                    ; $493b: $02
    ld a, [de]                                    ; $493c: $1a
    ld b, d                                       ; $493d: $42
    pop bc                                        ; $493e: $c1
    db $eb                                        ; $493f: $eb
    ld bc, $ef82                                  ; $4940: $01 $82 $ef
    dec e                                         ; $4943: $1d
    dec d                                         ; $4944: $15
    inc hl                                        ; $4945: $23
    dec d                                         ; $4946: $15
    ld c, b                                       ; $4947: $48
    add c                                         ; $4948: $81
    ld bc, $1517                                  ; $4949: $01 $17 $15
    ld bc, $f722                                  ; $494c: $01 $22 $f7
    ldh [$82], a                                  ; $494f: $e0 $82
    add l                                         ; $4951: $85
    inc l                                         ; $4952: $2c
    inc bc                                        ; $4953: $03
    nop                                           ; $4954: $00
    rst $00                                       ; $4955: $c7
    push bc                                       ; $4956: $c5
    xor $81                                       ; $4957: $ee $81
    ld h, l                                       ; $4959: $65
    ret                                           ; $495a: $c9


    ld h, h                                       ; $495b: $64
    add h                                         ; $495c: $84
    rst $30                                       ; $495d: $f7
    db $e4                                        ; $495e: $e4
    ld [bc], a                                    ; $495f: $02
    add h                                         ; $4960: $84
    ld c, a                                       ; $4961: $4f
    inc l                                         ; $4962: $2c
    inc b                                         ; $4963: $04
    ld c, [hl]                                    ; $4964: $4e
    ld h, a                                       ; $4965: $67
    call nc, Call_000_0751                        ; $4966: $d4 $51 $07
    ld b, d                                       ; $4969: $42
    ld l, $00                                     ; $496a: $2e $00
    ld c, c                                       ; $496c: $49
    ld h, l                                       ; $496d: $65
    ld [hl], $61                                  ; $496e: $36 $61
    jp Jump_000_0264                              ; $4970: $c3 $64 $02


    add d                                         ; $4973: $82
    or b                                          ; $4974: $b0
    inc bc                                        ; $4975: $03
    db $fc                                        ; $4976: $fc
    dec b                                         ; $4977: $05
    ld e, [hl]                                    ; $4978: $5e
    ld c, c                                       ; $4979: $49
    add a                                         ; $497a: $87
    ld d, d                                       ; $497b: $52
    ldh [$f9], a                                  ; $497c: $e0 $f9
    dec hl                                        ; $497e: $2b
    ld d, d                                       ; $497f: $52
    and d                                         ; $4980: $a2
    inc c                                         ; $4981: $0c
    pop bc                                        ; $4982: $c1
    nop                                           ; $4983: $00
    push hl                                       ; $4984: $e5
    sub a                                         ; $4985: $97
    dec h                                         ; $4986: $25
    ld c, l                                       ; $4987: $4d
    ld d, b                                       ; $4988: $50
    ld d, h                                       ; $4989: $54
    ld bc, $4655                                  ; $498a: $01 $55 $46
    ld d, e                                       ; $498d: $53
    pop bc                                        ; $498e: $c1
    db $eb                                        ; $498f: $eb
    ld a, h                                       ; $4990: $7c
    dec b                                         ; $4991: $05
    nop                                           ; $4992: $00
    adc b                                         ; $4993: $88
    ret c                                         ; $4994: $d8

    ld b, $ce                                     ; $4995: $06 $ce
    nop                                           ; $4997: $00
    ld b, a                                       ; $4998: $47
    ld hl, $7806                                  ; $4999: $21 $06 $78
    pop af                                        ; $499c: $f1
    ld c, l                                       ; $499d: $4d
    ld d, d                                       ; $499e: $52
    ret nz                                        ; $499f: $c0

    dec h                                         ; $49a0: $25
    jp Jump_029_7e86                              ; $49a1: $c3 $86 $7e


    push bc                                       ; $49a4: $c5
    ld b, h                                       ; $49a5: $44
    add e                                         ; $49a6: $83
    ld h, e                                       ; $49a7: $63
    ld h, $00                                     ; $49a8: $26 $00
    add $06                                       ; $49aa: $c6 $06
    ld b, b                                       ; $49ac: $40
    dec hl                                        ; $49ad: $2b
    jp c, Jump_029_45e4                           ; $49ae: $da $e4 $45

    add l                                         ; $49b1: $85
    ld a, [hl]                                    ; $49b2: $7e
    ld [c], a                                     ; $49b3: $e2
    pop bc                                        ; $49b4: $c1
    add a                                         ; $49b5: $87
    add h                                         ; $49b6: $84
    ld b, e                                       ; $49b7: $43
    rst $18                                       ; $49b8: $df
    inc b                                         ; $49b9: $04
    add h                                         ; $49ba: $84
    scf                                           ; $49bb: $37
    ldh [rDMA], a                                 ; $49bc: $e0 $46
    nop                                           ; $49be: $00
    ld d, e                                       ; $49bf: $53
    ret nz                                        ; $49c0: $c0

    ld [$023a], sp                                ; $49c1: $08 $3a $02
    ld b, l                                       ; $49c4: $45
    ld h, $c3                                     ; $49c5: $26 $c3
    adc d                                         ; $49c7: $8a
    ld e, d                                       ; $49c8: $5a
    ld bc, $695b                                  ; $49c9: $01 $5b $69
    inc bc                                        ; $49cc: $03
    db $ec                                        ; $49cd: $ec
    ld h, c                                       ; $49ce: $61
    ld h, c                                       ; $49cf: $61
    ld bc, $03fc                                  ; $49d0: $01 $fc $03
    ld [hl], $47                                  ; $49d3: $36 $47
    add [hl]                                      ; $49d5: $86
    push hl                                       ; $49d6: $e5
    ld e, $83                                     ; $49d7: $1e $83
    nop                                           ; $49d9: $00
    jp Jump_000_02c7                              ; $49da: $c3 $c7 $02


    push hl                                       ; $49dd: $e5
    ld b, $43                                     ; $49de: $06 $43
    add l                                         ; $49e0: $85
    inc bc                                        ; $49e1: $03
    halt                                          ; $49e2: $76
    db $e3                                        ; $49e3: $e3
    ld e, a                                       ; $49e4: $5f
    and e                                         ; $49e5: $a3
    ld [hl], $21                                  ; $49e6: $36 $21
    add sp, -$3a                                  ; $49e8: $e8 $c6
    nop                                           ; $49ea: $00
    sbc $e4                                       ; $49eb: $de $e4
    jp $80c8                                      ; $49ed: $c3 $c8 $80


    and [hl]                                      ; $49f0: $a6
    ld b, $43                                     ; $49f1: $06 $43
    dec h                                         ; $49f3: $25
    db $e3                                        ; $49f4: $e3
    halt                                          ; $49f5: $76
    db $e3                                        ; $49f6: $e3
    sub d                                         ; $49f7: $92
    push hl                                       ; $49f8: $e5
    rst $20                                       ; $49f9: $e7
    push bc                                       ; $49fa: $c5
    nop                                           ; $49fb: $00
    ld [$c3e5], a                                 ; $49fc: $ea $e5 $c3
    jp z, $2880                                   ; $49ff: $ca $80 $28

    cp h                                          ; $4a02: $bc
    ld h, l                                       ; $4a03: $65
    and b                                         ; $4a04: $a0
    push hl                                       ; $4a05: $e5
    sub d                                         ; $4a06: $92
    and $87                                       ; $4a07: $e6 $87
    push hl                                       ; $4a09: $e5
    ld [$00c5], a                                 ; $4a0a: $ea $c5 $00
    jp $c2c8                                      ; $4a0d: $c3 $c8 $c2


    daa                                           ; $4a10: $27
    ld a, l                                       ; $4a11: $7d
    inc b                                         ; $4a12: $04
    add b                                         ; $4a13: $80
    ld b, d                                       ; $4a14: $42
    add d                                         ; $4a15: $82
    rst $20                                       ; $4a16: $e7
    ld l, a                                       ; $4a17: $6f
    call nz, $e4f5                                ; $4a18: $c4 $f5 $e4
    ld [$06c5], a                                 ; $4a1b: $ea $c5 $06
    ld [$5e65], sp                                ; $4a1e: $08 $65 $5e
    ld e, a                                       ; $4a21: $5f
    jp nz, $b428                                  ; $4a22: $c2 $28 $b4

    and l                                         ; $4a25: $a5
    cp b                                          ; $4a26: $b8
    ld h, b                                       ; $4a27: $60
    add d                                         ; $4a28: $82
    rst $20                                       ; $4a29: $e7
    push af                                       ; $4a2a: $f5
    db $ed                                        ; $4a2b: $ed
    nop                                           ; $4a2c: $00
    jp Jump_029_56e4                              ; $4a2d: $c3 $e4 $56


    ld b, $42                                     ; $4a30: $06 $42
    add sp, -$4c                                  ; $4a32: $e8 $b4
    and l                                         ; $4a34: $a5
    ld a, [hl+]                                   ; $4a35: $2a
    ret nz                                        ; $4a36: $c0

    jr z, @+$25                                   ; $4a37: $28 $23

    rst $10                                       ; $4a39: $d7
    ld [c], a                                     ; $4a3a: $e2
    inc l                                         ; $4a3b: $2c
    ld h, e                                       ; $4a3c: $63
    nop                                           ; $4a3d: $00
    add d                                         ; $4a3e: $82
    db $e4                                        ; $4a3f: $e4

Jump_029_4a40:
    db $ec                                        ; $4a40: $ec

Jump_029_4a41:
    db $e4                                        ; $4a41: $e4
    adc d                                         ; $4a42: $8a
    and h                                         ; $4a43: $a4
    add [hl]                                      ; $4a44: $86
    add hl, hl                                    ; $4a45: $29
    ld bc, $f125                                  ; $4a46: $01 $25 $f1
    and h                                         ; $4a49: $a4
    sbc [hl]                                      ; $4a4a: $9e
    add sp, -$0c                                  ; $4a4b: $e8 $f4
    ret                                           ; $4a4d: $c9


    nop                                           ; $4a4e: $00
    rst $08                                       ; $4a4f: $cf
    and [hl]                                      ; $4a50: $a6
    ldh [$ea], a                                  ; $4a51: $e0 $ea
    ld a, [hl]                                    ; $4a53: $7e
    db $eb                                        ; $4a54: $eb
    db $eb                                        ; $4a55: $eb
    add l                                         ; $4a56: $85
    halt                                          ; $4a57: $76
    ld bc, $a1df                                  ; $4a58: $01 $df $a1
    add sp, -$5f                                  ; $4a5b: $e8 $a1
    ld [hl], d                                    ; $4a5d: $72
    push hl                                       ; $4a5e: $e5
    nop                                           ; $4a5f: $00
    adc d                                         ; $4a60: $8a
    and $e0                                       ; $4a61: $e6 $e0
    and $84                                       ; $4a63: $e6 $84
    jp z, Jump_000_2777                           ; $4a65: $ca $77 $27

    ld l, l                                       ; $4a68: $6d
    inc hl                                        ; $4a69: $23
    and d                                         ; $4a6a: $a2
    add d                                         ; $4a6b: $82
    and b                                         ; $4a6c: $a0
    ld h, e                                       ; $4a6d: $63
    jr jr_029_4ab5                                ; $4a6e: $18 $45

    nop                                           ; $4a70: $00
    ld c, l                                       ; $4a71: $4d
    xor h                                         ; $4a72: $ac
    ld a, [$30f2]                                 ; $4a73: $fa $f2 $30
    ld h, [hl]                                    ; $4a76: $66
    and d                                         ; $4a77: $a2
    add d                                         ; $4a78: $82
    ld sp, $10e3                                  ; $4a79: $31 $e3 $10
    push hl                                       ; $4a7c: $e5
    ld c, l                                       ; $4a7d: $4d
    xor d                                         ; $4a7e: $aa
    cp $fd                                        ; $4a7f: $fe $fd
    nop                                           ; $4a81: $00
    ld a, d                                       ; $4a82: $7a
    add sp, $7e                                   ; $4a83: $e8 $7e
    db $eb                                        ; $4a85: $eb
    rst $38                                       ; $4a86: $ff
    rst $38                                       ; $4a87: $ff
    ld [$fccf], a                                 ; $4a88: $ea $cf $fc
    jp hl                                         ; $4a8b: $e9


    rst $38                                       ; $4a8c: $ff
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    nop                                           ; $4a92: $00
    rst $38                                       ; $4a93: $ff
    rst $38                                       ; $4a94: $ff
    rst $38                                       ; $4a95: $ff
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    rst $38                                       ; $4a98: $ff
    rst $38                                       ; $4a99: $ff
    rst $38                                       ; $4a9a: $ff
    rst $38                                       ; $4a9b: $ff
    rst $38                                       ; $4a9c: $ff
    rst $38                                       ; $4a9d: $ff
    rst $38                                       ; $4a9e: $ff
    rst $38                                       ; $4a9f: $ff
    rst $38                                       ; $4aa0: $ff
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    pop bc                                        ; $4aa4: $c1
    dec c                                         ; $4aa5: $0d
    rst $38                                       ; $4aa6: $ff
    rst $38                                       ; $4aa7: $ff
    rst $38                                       ; $4aa8: $ff
    rst $38                                       ; $4aa9: $ff
    rst $38                                       ; $4aaa: $ff
    rst $38                                       ; $4aab: $ff
    rst $38                                       ; $4aac: $ff
    rst $38                                       ; $4aad: $ff
    db $eb                                        ; $4aae: $eb
    ld [$0e0e], a                                 ; $4aaf: $ea $0e $0e
    nop                                           ; $4ab2: $00
    db $fc                                        ; $4ab3: $fc
    rst $28                                       ; $4ab4: $ef

jr_029_4ab5:
    rst $38                                       ; $4ab5: $ff
    rst $38                                       ; $4ab6: $ff
    jp $c0e7                                      ; $4ab7: $c3 $e7 $c0


    db $e3                                        ; $4aba: $e3
    cp $e1                                        ; $4abb: $fe $e1
    ret nz                                        ; $4abd: $c0

    rst $38                                       ; $4abe: $ff
    jp $c4f1                                      ; $4abf: $c3 $f1 $c4


    db $e3                                        ; $4ac2: $e3
    nop                                           ; $4ac3: $00
    ld a, [$c4eb]                                 ; $4ac4: $fa $eb $c4
    rst $38                                       ; $4ac7: $ff
    add e                                         ; $4ac8: $83
    and $7e                                       ; $4ac9: $e6 $7e
    and $3e                                       ; $4acb: $e6 $3e
    rst $38                                       ; $4acd: $ff
    ld [$c3ed], sp                                ; $4ace: $08 $ed $c3
    push hl                                       ; $4ad1: $e5
    ret nz                                        ; $4ad2: $c0

    rst $20                                       ; $4ad3: $e7
    nop                                           ; $4ad4: $00
    ld a, [hl]                                    ; $4ad5: $7e
    jp hl                                         ; $4ad6: $e9


    cp d                                          ; $4ad7: $ba
    db $fd                                        ; $4ad8: $fd
    adc d                                         ; $4ad9: $8a
    db $e4                                        ; $4ada: $e4
    cp c                                          ; $4adb: $b9
    ld [$ff7a], a                                 ; $4adc: $ea $7a $ff
    add b                                         ; $4adf: $80
    db $ed                                        ; $4ae0: $ed
    inc a                                         ; $4ae1: $3c
    add sp, $39                                   ; $4ae2: $e8 $39
    ld [c], a                                     ; $4ae4: $e2
    nop                                           ; $4ae5: $00
    ld a, d                                       ; $4ae6: $7a
    jp hl                                         ; $4ae7: $e9


    inc bc                                        ; $4ae8: $03
    rst $38                                       ; $4ae9: $ff
    ret nz                                        ; $4aea: $c0

    rst $28                                       ; $4aeb: $ef
    db $ed                                        ; $4aec: $ed
    call nz, $e929                                ; $4aed: $c4 $29 $e9
    add [hl]                                      ; $4af0: $86
    sbc $40                                       ; $4af1: $de $40
    jp $eeea                                      ; $4af3: $c3 $ea $ee


    nop                                           ; $4af6: $00
    cp c                                          ; $4af7: $b9
    add sp, -$7a                                  ; $4af8: $e8 $86
    rst $18                                       ; $4afa: $df
    or d                                          ; $4afb: $b2
    adc $b9                                       ; $4afc: $ce $b9
    ld [$ad92], a                                 ; $4afe: $ea $92 $ad
    and b                                         ; $4b01: $a0
    db $eb                                        ; $4b02: $eb
    ld a, h                                       ; $4b03: $7c
    pop af                                        ; $4b04: $f1
    ld [hl-], a                                   ; $4b05: $32
    db $eb                                        ; $4b06: $eb
    add b                                         ; $4b07: $80
    ld d, d                                       ; $4b08: $52
    or d                                          ; $4b09: $b2
    ld b, a                                       ; $4b0a: $47
    and $10                                       ; $4b0b: $e6 $10
    jp $eaf1                                      ; $4b0d: $c3 $f1 $ea


    add d                                         ; $4b10: $82
    db $f4                                        ; $4b11: $f4
    and d                                         ; $4b12: $a2
    set 0, b                                      ; $4b13: $cb $c0
    xor c                                         ; $4b15: $a9
    ld c, l                                       ; $4b16: $4d
    add [hl]                                      ; $4b17: $86
    rst $38                                       ; $4b18: $ff
    ldh [$2d], a                                  ; $4b19: $e0 $2d
    ld c, l                                       ; $4b1b: $4d
    or c                                          ; $4b1c: $b1
    xor l                                         ; $4b1d: $ad
    or $b1                                        ; $4b1e: $f6 $b1
    sub $cb                                       ; $4b20: $d6 $cb
    sub e                                         ; $4b22: $93
    and h                                         ; $4b23: $a4
    ld l, l                                       ; $4b24: $6d
    ccf                                           ; $4b25: $3f
    dec hl                                        ; $4b26: $2b
    ld a, [bc]                                    ; $4b27: $0a
    dec hl                                        ; $4b28: $2b
    ld a, [bc]                                    ; $4b29: $0a
    ld c, l                                       ; $4b2a: $4d
    dec l                                         ; $4b2b: $2d
    halt                                          ; $4b2c: $76
    and $bd                                       ; $4b2d: $e6 $bd
    jp z, Jump_029_7080                           ; $4b2f: $ca $80 $70

    xor c                                         ; $4b32: $a9
    sub $cb                                       ; $4b33: $d6 $cb
    ld d, [hl]                                    ; $4b35: $56
    and d                                         ; $4b36: $a2
    add l                                         ; $4b37: $85
    ldh [$c1], a                                  ; $4b38: $e0 $c1
    ld [c], a                                     ; $4b3a: $e2
    cp a                                          ; $4b3b: $bf
    ldh [$7b], a                                  ; $4b3c: $e0 $7b
    pop hl                                        ; $4b3e: $e1
    dec l                                         ; $4b3f: $2d
    nop                                           ; $4b40: $00
    ld b, b                                       ; $4b41: $40
    and e                                         ; $4b42: $a3
    ei                                            ; $4b43: $fb
    db $e4                                        ; $4b44: $e4
    or $ad                                        ; $4b45: $f6 $ad
    and [hl]                                      ; $4b47: $a6
    and [hl]                                      ; $4b48: $a6
    ld b, $a5                                     ; $4b49: $06 $a5
    push bc                                       ; $4b4b: $c5
    db $e4                                        ; $4b4c: $e4
    ld a, [$7ae7]                                 ; $4b4d: $fa $e7 $7a
    db $e4                                        ; $4b50: $e4
    ld h, b                                       ; $4b51: $60
    ld a, $f4                                     ; $4b52: $3e $f4
    and d                                         ; $4b54: $a2
    xor b                                         ; $4b55: $a8
    reti                                          ; $4b56: $d9


    add d                                         ; $4b57: $82
    pop bc                                        ; $4b58: $c1
    xor $7a                                       ; $4b59: $ee $7a
    db $e3                                        ; $4b5b: $e3
    ld c, l                                       ; $4b5c: $4d
    dec l                                         ; $4b5d: $2d
    and h                                         ; $4b5e: $a4

jr_029_4b5f:
    adc $18                                       ; $4b5f: $ce $18
    ld a, $cd                                     ; $4b61: $3e $cd
    adc c                                         ; $4b63: $89
    add d                                         ; $4b64: $82
    pop bc                                        ; $4b65: $c1
    ldh a, [$2b]                                  ; $4b66: $f0 $2b
    ld a, [bc]                                    ; $4b68: $0a
    inc [hl]                                      ; $4b69: $34
    pop hl                                        ; $4b6a: $e1
    cp a                                          ; $4b6b: $bf
    ldh [$b9], a                                  ; $4b6c: $e0 $b9
    xor e                                         ; $4b6e: $ab
    ld [$aa4c], sp                                ; $4b6f: $08 $4c $aa
    ret nc                                        ; $4b72: $d0

    ld h, l                                       ; $4b73: $65
    ld b, e                                       ; $4b74: $43
    and $0b                                       ; $4b75: $e6 $0b
    dec sp                                        ; $4b77: $3b
    rst $20                                       ; $4b78: $e7
    jr nc, jr_029_4b5f                            ; $4b79: $30 $e4

    or e                                          ; $4b7b: $b3
    jp $abfe                                      ; $4b7c: $c3 $fe $ab


    db $10                                        ; $4b7f: $10
    dec hl                                        ; $4b80: $2b

Call_029_4b81:
    xor d                                         ; $4b81: $aa
    ld a, [bc]                                    ; $4b82: $0a
    add c                                         ; $4b83: $81
    jp $ffe4                                      ; $4b84: $c3 $e4 $ff


    ldh [$2b], a                                  ; $4b87: $e0 $2b
    ret z                                         ; $4b89: $c8

    ldh [$f8], a                                  ; $4b8a: $e0 $f8
    pop hl                                        ; $4b8c: $e1
    rst $30                                       ; $4b8d: $f7
    ld [c], a                                     ; $4b8e: $e2
    add b                                         ; $4b8f: $80
    cp a                                          ; $4b90: $bf
    db $e4                                        ; $4b91: $e4
    ld [c], a                                     ; $4b92: $e2
    ld h, l                                       ; $4b93: $65
    ret nz                                        ; $4b94: $c0

    db $eb                                        ; $4b95: $eb
    ld d, h                                       ; $4b96: $54
    ld l, c                                       ; $4b97: $69
    pop bc                                        ; $4b98: $c1
    and $fc                                       ; $4b99: $e6 $fc
    jp hl                                         ; $4b9b: $e9


    ld a, [hl]                                    ; $4b9c: $7e
    db $e4                                        ; $4b9d: $e4
    dec bc                                        ; $4b9e: $0b
    ldh [$31], a                                  ; $4b9f: $e0 $31
    jp nz, $cdc2                                  ; $4ba1: $c2 $c2 $cd

    sbc b                                         ; $4ba4: $98
    xor b                                         ; $4ba5: $a8
    ld a, [bc]                                    ; $4ba6: $0a
    call nz, $e084                                ; $4ba7: $c4 $84 $e0
    ld l, e                                       ; $4baa: $6b
    ld l, e                                       ; $4bab: $6b
    ld c, e                                       ; $4bac: $4b
    rla                                           ; $4bad: $17
    ld c, e                                       ; $4bae: $4b
    ld c, e                                       ; $4baf: $4b
    dec hl                                        ; $4bb0: $2b
    ld sp, hl                                     ; $4bb1: $f9
    db $e3                                        ; $4bb2: $e3
    ld c, e                                       ; $4bb3: $4b
    ld [hl], e                                    ; $4bb4: $73
    pop hl                                        ; $4bb5: $e1
    ld l, l                                       ; $4bb6: $6d
    jp $e5c0                                      ; $4bb7: $c3 $c0 $e5


    inc a                                         ; $4bba: $3c
    sub h                                         ; $4bbb: $94
    ld d, c                                       ; $4bbc: $51
    jp Jump_029_6bc7                              ; $4bbd: $c3 $c7 $6b


    dec bc                                        ; $4bc0: $0b
    ld l, e                                       ; $4bc1: $6b
    ld l, e                                       ; $4bc2: $6b
    ld b, d                                       ; $4bc3: $42
    ldh [$be], a                                  ; $4bc4: $e0 $be
    ldh [rSB], a                                  ; $4bc6: $e0 $01
    ld l, e                                       ; $4bc8: $6b
    ccf                                           ; $4bc9: $3f
    ld [c], a                                     ; $4bca: $e2
    ld a, [$f1e1]                                 ; $4bcb: $fa $e1 $f1
    and e                                         ; $4bce: $a3
    ld a, h                                       ; $4bcf: $7c
    ret nz                                        ; $4bd0: $c0

    add b                                         ; $4bd1: $80
    xor $e4                                       ; $4bd2: $ee $e4
    and l                                         ; $4bd4: $a5
    ld b, $c6                                     ; $4bd5: $06 $c6
    inc c                                         ; $4bd7: $0c
    rst $08                                       ; $4bd8: $cf
    ldh [$c1], a                                  ; $4bd9: $e0 $c1
    pop hl                                        ; $4bdb: $e1
    dec hl                                        ; $4bdc: $2b
    ld l, e                                       ; $4bdd: $6b
    add a                                         ; $4bde: $87
    pop hl                                        ; $4bdf: $e1
    cp $c2                                        ; $4be0: $fe $c2
    ld a, l                                       ; $4be2: $7d
    pop hl                                        ; $4be3: $e1
    xor [hl]                                      ; $4be4: $ae
    jp nz, Jump_029_7cc0                          ; $4be5: $c2 $c0 $7c

    jp nz, $ae80                                  ; $4be8: $c2 $80 $ae

    ld b, e                                       ; $4beb: $43
    ld [$e04b], a                                 ; $4bec: $ea $4b $e0
    ret nz                                        ; $4bef: $c0

    db $e4                                        ; $4bf0: $e4
    nop                                           ; $4bf1: $00
    jp hl                                         ; $4bf2: $e9


    ld l, e                                       ; $4bf3: $6b
    dec bc                                        ; $4bf4: $0b
    ld bc, $6f4b                                  ; $4bf5: $01 $4b $6f
    jp nz, $c4fe                                  ; $4bf8: $c2 $fe $c4

    ld l, [hl]                                    ; $4bfb: $6e
    ld c, c                                       ; $4bfc: $49
    sbc a                                         ; $4bfd: $9f
    ld h, [hl]                                    ; $4bfe: $66
    pop bc                                        ; $4bff: $c1
    db $e4                                        ; $4c00: $e4
    add c                                         ; $4c01: $81
    ld [c], a                                     ; $4c02: $e2
    add d                                         ; $4c03: $82
    pop bc                                        ; $4c04: $c1
    ld b, [hl]                                    ; $4c05: $46
    cp d                                          ; $4c06: $ba
    call nz, Call_000_2b6b                        ; $4c07: $c4 $6b $2b
    inc sp                                        ; $4c0a: $33
    ldh [$c0], a                                  ; $4c0b: $e0 $c0
    ldh [rOCPD], a                                ; $4c0d: $e0 $6b
    and e                                         ; $4c0f: $a3
    ld l, l                                       ; $4c10: $6d
    nop                                           ; $4c11: $00
    ret nc                                        ; $4c12: $d0

    ret nz                                        ; $4c13: $c0

    ld h, c                                       ; $4c14: $61
    ld b, h                                       ; $4c15: $44
    inc d                                         ; $4c16: $14
    call nz, $e002                                ; $4c17: $c4 $02 $e0
    cp $c0                                        ; $4c1a: $fe $c0
    ld a, a                                       ; $4c1c: $7f
    push hl                                       ; $4c1d: $e5
    cp h                                          ; $4c1e: $bc
    ret nz                                        ; $4c1f: $c0

    dec hl                                        ; $4c20: $2b
    ld c, e                                       ; $4c21: $4b
    ld d, $34                                     ; $4c22: $16 $34
    ret nz                                        ; $4c24: $c0

    dec bc                                        ; $4c25: $0b
    ld c, e                                       ; $4c26: $4b
    rst $28                                       ; $4c27: $ef
    add e                                         ; $4c28: $83

Jump_029_4c29:
    ld l, l                                       ; $4c29: $6d
    cp [hl]                                       ; $4c2a: $be
    adc e                                         ; $4c2b: $8b
    ld [hl+], a                                   ; $4c2c: $22
    ld l, c                                       ; $4c2d: $69
    rst $10                                       ; $4c2e: $d7
    and h                                         ; $4c2f: $a4
    add b                                         ; $4c30: $80
    nop                                           ; $4c31: $00
    ldh [rLY], a                                  ; $4c32: $e0 $44
    ldh [$3f], a                                  ; $4c34: $e0 $3f
    db $e4                                        ; $4c36: $e4
    ld a, h                                       ; $4c37: $7c
    ret nz                                        ; $4c38: $c0

    cp b                                          ; $4c39: $b8
    ret nz                                        ; $4c3a: $c0

    or d                                          ; $4c3b: $b2
    ret nz                                        ; $4c3c: $c0

    add b                                         ; $4c3d: $80
    db $e4                                        ; $4c3e: $e4
    dec c                                         ; $4c3f: $0d
    inc c                                         ; $4c40: $0c
    ret nz                                        ; $4c41: $c0

    push hl                                       ; $4c42: $e5
    nop                                           ; $4c43: $00
    rst $08                                       ; $4c44: $cf
    ld c, l                                       ; $4c45: $4d
    dec l                                         ; $4c46: $2d
    adc l                                         ; $4c47: $8d
    add e                                         ; $4c48: $83
    adc h                                         ; $4c49: $8c
    ret nz                                        ; $4c4a: $c0

    add c                                         ; $4c4b: $81

Jump_029_4c4c:
    db $e3                                        ; $4c4c: $e3
    adc b                                         ; $4c4d: $88
    ldh [rSB], a                                  ; $4c4e: $e0 $01
    dec bc                                        ; $4c50: $0b
    push bc                                       ; $4c51: $c5
    pop hl                                        ; $4c52: $e1
    ld a, $c1                                     ; $4c53: $3e $c1
    add b                                         ; $4c55: $80
    db $e4                                        ; $4c56: $e4
    pop bc                                        ; $4c57: $c1
    ldh [$7e], a                                  ; $4c58: $e0 $7e
    adc l                                         ; $4c5a: $8d
    rrca                                          ; $4c5b: $0f
    ld b, a                                       ; $4c5c: $47
    cp a                                          ; $4c5d: $bf
    db $e4                                        ; $4c5e: $e4
    ld [bc], a                                    ; $4c5f: $02
    ld c, h                                       ; $4c60: $4c
    ret nz                                        ; $4c61: $c0

    dec hl                                        ; $4c62: $2b
    ccf                                           ; $4c63: $3f
    ret nz                                        ; $4c64: $c0

    dec a                                         ; $4c65: $3d
    ret nz                                        ; $4c66: $c0

    rlca                                          ; $4c67: $07
    jp nz, $e6c0                                  ; $4c68: $c2 $c0 $e6

    nop                                           ; $4c6b: $00
    push bc                                       ; $4c6c: $c5
    db $f4                                        ; $4c6d: $f4
    inc l                                         ; $4c6e: $2c
    nop                                           ; $4c6f: $00
    ld b, c                                       ; $4c70: $41
    ret z                                         ; $4c71: $c8

    add e                                         ; $4c72: $83
    and e                                         ; $4c73: $a3
    add b                                         ; $4c74: $80
    ld [c], a                                     ; $4c75: $e2
    ret nz                                        ; $4c76: $c0

    pop hl                                        ; $4c77: $e1
    cp l                                          ; $4c78: $bd
    and b                                         ; $4c79: $a0
    ret nz                                        ; $4c7a: $c0

    push hl                                       ; $4c7b: $e5
    ld [hl], h                                    ; $4c7c: $74
    pop bc                                        ; $4c7d: $c1
    nop                                           ; $4c7e: $00
    jp nz, Jump_029_5c80                          ; $4c7f: $c2 $80 $5c

    ld c, d                                       ; $4c82: $4a
    call Call_000_030c                            ; $4c83: $cd $0c $03
    and h                                         ; $4c86: $a4
    call nz, $c2c0                                ; $4c87: $c4 $c0 $c2
    ld [c], a                                     ; $4c8a: $e2
    cp a                                          ; $4c8b: $bf
    pop hl                                        ; $4c8c: $e1
    ret nz                                        ; $4c8d: $c0

    add sp, $6b                                   ; $4c8e: $e8 $6b
    nop                                           ; $4c90: $00
    add b                                         ; $4c91: $80
    xor c                                         ; $4c92: $a9
    add d                                         ; $4c93: $82
    ldh a, [$c7]                                  ; $4c94: $f0 $c7
    ld h, c                                       ; $4c96: $61
    ret z                                         ; $4c97: $c8

    ld h, e                                       ; $4c98: $63
    ld de, $80c1                                  ; $4c99: $11 $c1 $80
    ld [c], a                                     ; $4c9c: $e2

jr_029_4c9d:
    rst $38                                       ; $4c9d: $ff
    pop bc                                        ; $4c9e: $c1
    cp b                                          ; $4c9f: $b8
    and d                                         ; $4ca0: $a2
    nop                                           ; $4ca1: $00
    ld a, $a1                                     ; $4ca2: $3e $a1
    add b                                         ; $4ca4: $80
    and h                                         ; $4ca5: $a4
    ld [c], a                                     ; $4ca6: $e2
    add hl, hl                                    ; $4ca7: $29
    adc a                                         ; $4ca8: $8f
    inc c                                         ; $4ca9: $0c

jr_029_4caa:
    pop bc                                        ; $4caa: $c1
    db $e3                                        ; $4cab: $e3
    adc e                                         ; $4cac: $8b
    ld [c], a                                     ; $4cad: $e2
    ret nz                                        ; $4cae: $c0

    db $e4                                        ; $4caf: $e4
    ld [hl], l                                    ; $4cb0: $75
    pop bc                                        ; $4cb1: $c1
    jr nz, jr_029_4caa                            ; $4cb2: $20 $f6

    pop bc                                        ; $4cb4: $c1
    ld a, [$82a2]                                 ; $4cb5: $fa $a2 $82
    add $33                                       ; $4cb8: $c6 $33
    ld h, a                                       ; $4cba: $67
    or d                                          ; $4cbb: $b2
    daa                                           ; $4cbc: $27
    ld l, l                                       ; $4cbd: $6d
    rst $38                                       ; $4cbe: $ff
    ldh [rIF], a                                  ; $4cbf: $e0 $0f
    ld h, d                                       ; $4cc1: $62
    jr nz, jr_029_4c9d                            ; $4cc2: $20 $d9

    and b                                         ; $4cc4: $a0
    ld a, a                                       ; $4cc5: $7f
    and $7d                                       ; $4cc6: $e6 $7d
    and d                                         ; $4cc8: $a2
    halt                                          ; $4cc9: $76
    and h                                         ; $4cca: $a4
    ld b, e                                       ; $4ccb: $43
    jp Jump_000_114d                              ; $4ccc: $c3 $4d $11


    ld [$6600], a                                 ; $4ccf: $ea $00 $66
    add b                                         ; $4cd2: $80
    ld b, a                                       ; $4cd3: $47
    db $e4                                        ; $4cd4: $e4
    ret z                                         ; $4cd5: $c8

    ld h, h                                       ; $4cd6: $64
    jp z, $8ac2                                   ; $4cd7: $ca $c2 $8a

    db $e3                                        ; $4cda: $e3
    pop bc                                        ; $4cdb: $c1
    and $02                                       ; $4cdc: $e6 $02
    db $e3                                        ; $4cde: $e3
    ld [hl-], a                                   ; $4cdf: $32
    ld b, b                                       ; $4ce0: $40
    dec c                                         ; $4ce1: $0d
    inc [hl]                                      ; $4ce2: $34
    cp l                                          ; $4ce3: $bd
    push hl                                       ; $4ce4: $e5
    dec [hl]                                      ; $4ce5: $35
    ld [bc], a                                    ; $4ce6: $02
    dec l                                         ; $4ce7: $2d
    add a                                         ; $4ce8: $87
    ld [c], a                                     ; $4ce9: $e2
    ld l, l                                       ; $4cea: $6d
    ld a, [bc]                                    ; $4ceb: $0a
    db $e3                                        ; $4cec: $e3
    jp nz, Jump_029_46ca                          ; $4ced: $c2 $ca $46

    nop                                           ; $4cf0: $00
    adc c                                         ; $4cf1: $89
    jp $8505                                      ; $4cf2: $c3 $05 $85


    ld a, [hl]                                    ; $4cf5: $7e
    add d                                         ; $4cf6: $82
    ld [bc], a                                    ; $4cf7: $02
    and $60                                       ; $4cf8: $e6 $60
    add hl, hl                                    ; $4cfa: $29
    call c, $8620                                 ; $4cfb: $dc $20 $86
    jp hl                                         ; $4cfe: $e9


    cp a                                          ; $4cff: $bf
    add sp, $48                                   ; $4d00: $e8 $48
    add [hl]                                      ; $4d02: $86
    add e                                         ; $4d03: $83
    ld a, $c3                                     ; $4d04: $3e $c3
    pop bc                                        ; $4d06: $c1
    and $2b                                       ; $4d07: $e6 $2b
    ret nz                                        ; $4d09: $c0

    rst $20                                       ; $4d0a: $e7
    ld a, c                                       ; $4d0b: $79
    dec b                                         ; $4d0c: $05
    dec bc                                        ; $4d0d: $0b
    add hl, de                                    ; $4d0e: $19
    ld l, c                                       ; $4d0f: $69
    nop                                           ; $4d10: $00
    ld c, d                                       ; $4d11: $4a
    ld c, b                                       ; $4d12: $48
    jp nz, $bd61                                  ; $4d13: $c2 $61 $bd

    and b                                         ; $4d16: $a0
    ld l, b                                       ; $4d17: $68
    ldh [$c0], a                                  ; $4d18: $e0 $c0
    ld h, c                                       ; $4d1a: $61
    ld hl, sp-$1f                                 ; $4d1b: $f8 $e1
    ld [bc], a                                    ; $4d1d: $02
    add l                                         ; $4d1e: $85
    add b                                         ; $4d1f: $80
    db $eb                                        ; $4d20: $eb
    inc a                                         ; $4d21: $3c
    jp c, $d840                                   ; $4d22: $da $40 $d8

    ld b, e                                       ; $4d25: $43
    dec c                                         ; $4d26: $0d
    dec l                                         ; $4d27: $2d
    dec l                                         ; $4d28: $2d
    dec l                                         ; $4d29: $2d
    dec sp                                        ; $4d2a: $3b
    jp hl                                         ; $4d2b: $e9


    push bc                                       ; $4d2c: $c5
    pop hl                                        ; $4d2d: $e1
    add d                                         ; $4d2e: $82
    ld c, $c1                                     ; $4d2f: $0e $c1
    dec bc                                        ; $4d31: $0b
    or $e6                                        ; $4d32: $f6 $e6
    ld b, e                                       ; $4d34: $43
    and l                                         ; $4d35: $a5
    ld a, $0a                                     ; $4d36: $3e $0a
    jp z, Jump_000_0ae0                           ; $4d38: $ca $e0 $0a

    and b                                         ; $4d3b: $a0
    dec bc                                        ; $4d3c: $0b
    add b                                         ; $4d3d: $80
    jp hl                                         ; $4d3e: $e9


    add b                                         ; $4d3f: $80
    nop                                           ; $4d40: $00
    and a                                         ; $4d41: $a7
    ld bc, $9d4f                                  ; $4d42: $01 $4f $9d
    db $e4                                        ; $4d45: $e4
    inc b                                         ; $4d46: $04
    and b                                         ; $4d47: $a0
    ld a, h                                       ; $4d48: $7c
    db $10                                        ; $4d49: $10
    ld h, c                                       ; $4d4a: $61
    jr nz, jr_029_4d7a                            ; $4d4b: $20 $2d

    ld bc, $6a2d                                  ; $4d4d: $01 $2d $6a
    add d                                         ; $4d50: $82
    sbc $20                                       ; $4d51: $de $20
    or b                                          ; $4d53: $b0
    pop hl                                        ; $4d54: $e1
    cp c                                          ; $4d55: $b9
    ldh a, [$98]                                  ; $4d56: $f0 $98
    ld [c], a                                     ; $4d58: $e2
    push bc                                       ; $4d59: $c5
    adc b                                         ; $4d5a: $88
    ld a, [$0048]                                 ; $4d5b: $fa $48 $00
    ld b, d                                       ; $4d5e: $42
    ld [$c4ec], sp                                ; $4d5f: $08 $ec $c4
    ld a, b                                       ; $4d62: $78
    rst $28                                       ; $4d63: $ef
    ld h, d                                       ; $4d64: $62
    pop hl                                        ; $4d65: $e1
    dec d                                         ; $4d66: $15
    ld c, d                                       ; $4d67: $4a
    ret nz                                        ; $4d68: $c0

    xor $6c                                       ; $4d69: $ee $6c
    jr z, jr_029_4da4                             ; $4d6b: $28 $37

    add c                                         ; $4d6d: $81
    nop                                           ; $4d6e: $00
    adc $00                                       ; $4d6f: $ce $00
    inc sp                                        ; $4d71: $33
    add d                                         ; $4d72: $82
    daa                                           ; $4d73: $27
    ldh [$62], a                                  ; $4d74: $e0 $62
    push hl                                       ; $4d76: $e5
    add e                                         ; $4d77: $83
    ld a, [bc]                                    ; $4d78: $0a
    pop bc                                        ; $4d79: $c1

jr_029_4d7a:
    jr z, jr_029_4d7e                             ; $4d7a: $28 $02

    ld c, c                                       ; $4d7c: $49
    ld a, d                                       ; $4d7d: $7a

jr_029_4d7e:
    rlca                                          ; $4d7e: $07
    add b                                         ; $4d7f: $80
    ld a, d                                       ; $4d80: $7a
    db $e3                                        ; $4d81: $e3
    add sp, -$3d                                  ; $4d82: $e8 $c3
    jp c, $82ed                                   ; $4d84: $da $ed $82

    rst $28                                       ; $4d87: $ef
    xor e                                         ; $4d88: $ab
    rst $20                                       ; $4d89: $e7
    ld a, [hl-]                                   ; $4d8a: $3a
    ld [HeaderRAMSize], sp                        ; $4d8b: $08 $49 $01
    dec c                                         ; $4d8e: $0d
    ld bc, $4d6d                                  ; $4d8f: $01 $6d $4d
    dec h                                         ; $4d92: $25
    ld b, l                                       ; $4d93: $45
    db $ec                                        ; $4d94: $ec
    ld [bc], a                                    ; $4d95: $02
    db $ec                                        ; $4d96: $ec
    ld a, d                                       ; $4d97: $7a
    inc l                                         ; $4d98: $2c
    db $db                                        ; $4d99: $db
    ld [$0046], sp                                ; $4d9a: $08 $46 $00
    ld [hl+], a                                   ; $4d9d: $22
    rst $20                                       ; $4d9e: $e7
    nop                                           ; $4d9f: $00
    ld d, [hl]                                    ; $4da0: $56
    dec hl                                        ; $4da1: $2b
    cp e                                          ; $4da2: $bb
    dec hl                                        ; $4da3: $2b

jr_029_4da4:
    ld a, [$c00b]                                 ; $4da4: $fa $0b $c0
    rst $20                                       ; $4da7: $e7
    sbc a                                         ; $4da8: $9f
    ld l, e                                       ; $4da9: $6b
    call nz, $bd4a                                ; $4daa: $c4 $4a $bd
    dec bc                                        ; $4dad: $0b
    ld h, $89                                     ; $4dae: $26 $89
    nop                                           ; $4db0: $00
    pop af                                        ; $4db1: $f1
    jp z, $c7ea                                   ; $4db2: $ca $ea $c7

    ld e, b                                       ; $4db5: $58
    add hl, bc                                    ; $4db6: $09
    jp Jump_029_7cee                              ; $4db7: $c3 $ee $7c


    ld [$edf5], sp                                ; $4dba: $08 $f5 $ed
    db $db                                        ; $4dbd: $db
    ld l, c                                       ; $4dbe: $69
    ld b, d                                       ; $4dbf: $42
    db $ec                                        ; $4dc0: $ec
    nop                                           ; $4dc1: $00
    ret nz                                        ; $4dc2: $c0

    ld l, b                                       ; $4dc3: $68
    ld a, h                                       ; $4dc4: $7c
    adc $8c                                       ; $4dc5: $ce $8c
    ld [$0b56], a                                 ; $4dc7: $ea $56 $0b
    ld b, e                                       ; $4dca: $43
    jr z, jr_029_4d7a                             ; $4dcb: $28 $ad

    adc d                                         ; $4dcd: $8a
    ld a, [$8acb]                                 ; $4dce: $fa $cb $8a
    call z, Call_029_4400                         ; $4dd1: $cc $00 $44
    ld c, $c4                                     ; $4dd4: $0e $c4
    call z, $aadf                                 ; $4dd6: $cc $df $aa
    ld [$99cb], sp                                ; $4dd9: $08 $cb $99
    db $ec                                        ; $4ddc: $ec
    ccf                                           ; $4ddd: $3f
    dec c                                         ; $4dde: $0d
    rst $38                                       ; $4ddf: $ff
    call z, $a970                                 ; $4de0: $cc $70 $a9
    nop                                           ; $4de3: $00
    ld c, l                                       ; $4de4: $4d
    or b                                          ; $4de5: $b0
    ld a, [$b0f2]                                 ; $4de6: $fa $f2 $b0
    dec l                                         ; $4de9: $2d
    add d                                         ; $4dea: $82
    db $ed                                        ; $4deb: $ed
    jp Jump_029_70fa                              ; $4dec: $c3 $fa $70


    rst $28                                       ; $4def: $ef
    sub d                                         ; $4df0: $92
    call z, $ffc2                                 ; $4df1: $cc $c2 $ff
    nop                                           ; $4df4: $00
    ld [hl], c                                    ; $4df5: $71
    rst $28                                       ; $4df6: $ef
    ret nz                                        ; $4df7: $c0

    rst $38                                       ; $4df8: $ff
    rst $38                                       ; $4df9: $ff
    rst $38                                       ; $4dfa: $ff
    rst $38                                       ; $4dfb: $ff
    rst $38                                       ; $4dfc: $ff
    rst $38                                       ; $4dfd: $ff
    rst $38                                       ; $4dfe: $ff
    rst $38                                       ; $4dff: $ff
    rst $38                                       ; $4e00: $ff
    rst $38                                       ; $4e01: $ff
    rst $38                                       ; $4e02: $ff
    rst $38                                       ; $4e03: $ff
    rst $38                                       ; $4e04: $ff
    nop                                           ; $4e05: $00
    rst $38                                       ; $4e06: $ff
    rst $38                                       ; $4e07: $ff
    rst $38                                       ; $4e08: $ff
    rst $38                                       ; $4e09: $ff
    rst $38                                       ; $4e0a: $ff
    rst $38                                       ; $4e0b: $ff
    rlca                                          ; $4e0c: $07
    call $0000                                    ; $4e0d: $cd $00 $00
    nop                                           ; $4e10: $00
    ld b, c                                       ; $4e11: $41
    nop                                           ; $4e12: $00
    rst $38                                       ; $4e13: $ff
    rst $38                                       ; $4e14: $ff
    rst $38                                       ; $4e15: $ff
    rst $38                                       ; $4e16: $ff
    rst $38                                       ; $4e17: $ff
    rst $38                                       ; $4e18: $ff
    rst $38                                       ; $4e19: $ff
    rst $38                                       ; $4e1a: $ff
    or $f5                                        ; $4e1b: $f6 $f5
    rrca                                          ; $4e1d: $0f
    rst $38                                       ; $4e1e: $ff
    or $00                                        ; $4e1f: $f6 $00
    ldh [rIE], a                                  ; $4e21: $e0 $ff
    ldh [$ed], a                                  ; $4e23: $e0 $ed
    ret nc                                        ; $4e25: $d0

    db $eb                                        ; $4e26: $eb
    ret nz                                        ; $4e27: $c0

    db $ed                                        ; $4e28: $ed
    adc [hl]                                      ; $4e29: $8e
    db $ed                                        ; $4e2a: $ed
    and b                                         ; $4e2b: $a0
    db $ec                                        ; $4e2c: $ec
    ld l, e                                       ; $4e2d: $6b
    xor $d2                                       ; $4e2e: $ee $d2
    pop af                                        ; $4e30: $f1
    nop                                           ; $4e31: $00
    ld c, d                                       ; $4e32: $4a
    jp hl                                         ; $4e33: $e9


    ld h, b                                       ; $4e34: $60
    ld [$f029], a                                 ; $4e35: $ea $29 $f0
    ld b, b                                       ; $4e38: $40
    jp hl                                         ; $4e39: $e9


    add hl, bc                                    ; $4e3a: $09
    pop af                                        ; $4e3b: $f1
    sub l                                         ; $4e3c: $95
    xor $e8                                       ; $4e3d: $ee $e8
    call z, $ffe0                                 ; $4e3f: $cc $e0 $ff
    nop                                           ; $4e42: $00
    ldh [$f8], a                                  ; $4e43: $e0 $f8
    add b                                         ; $4e45: $80
    rst $38                                       ; $4e46: $ff
    ret nz                                        ; $4e47: $c0

    rst $38                                       ; $4e48: $ff
    sbc b                                         ; $4e49: $98
    ld [$f500], a                                 ; $4e4a: $ea $00 $f5
    ld a, [hl+]                                   ; $4e4d: $2a
    rst $10                                       ; $4e4e: $d7
    ldh [rIE], a                                  ; $4e4f: $e0 $ff
    ld d, h                                       ; $4e51: $54
    db $ed                                        ; $4e52: $ed
    nop                                           ; $4e53: $00
    add b                                         ; $4e54: $80
    reti                                          ; $4e55: $d9


    pop de                                        ; $4e56: $d1
    ld [$b5e0], a                                 ; $4e57: $ea $e0 $b5
    pop de                                        ; $4e5a: $d1
    xor d                                         ; $4e5b: $aa
    ret nz                                        ; $4e5c: $c0

    cp a                                          ; $4e5d: $bf
    ldh [rIE], a                                  ; $4e5e: $e0 $ff
    ldh [rIE], a                                  ; $4e60: $e0 $ff
    rst $38                                       ; $4e62: $ff
    rst $38                                       ; $4e63: $ff
    nop                                           ; $4e64: $00
    rst $38                                       ; $4e65: $ff
    rst $38                                       ; $4e66: $ff
    rst $38                                       ; $4e67: $ff
    rst $38                                       ; $4e68: $ff
    rst $38                                       ; $4e69: $ff
    rst $38                                       ; $4e6a: $ff
    rst $38                                       ; $4e6b: $ff
    db $f4                                        ; $4e6c: $f4
    nop                                           ; $4e6d: $00
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    ld bc, $ff00                                  ; $4e70: $01 $00 $ff
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff

Call_029_4e75:
    rst $38                                       ; $4e75: $ff
    rst $38                                       ; $4e76: $ff
    rst $38                                       ; $4e77: $ff
    rst $38                                       ; $4e78: $ff
    rst $38                                       ; $4e79: $ff
    rst $38                                       ; $4e7a: $ff
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    rst $38                                       ; $4e7d: $ff
    rst $38                                       ; $4e7e: $ff
    rst $38                                       ; $4e7f: $ff
    jr nz, @+$01                                  ; $4e80: $20 $ff

    rst $38                                       ; $4e82: $ff
    rst $38                                       ; $4e83: $ff
    rst $38                                       ; $4e84: $ff
    rst $38                                       ; $4e85: $ff
    rst $38                                       ; $4e86: $ff
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    di                                            ; $4e89: $f3
    ld a, [c]                                     ; $4e8a: $f2
    pop af                                        ; $4e8b: $f1
    rst $38                                       ; $4e8c: $ff
    db $e3                                        ; $4e8d: $e3
    pop hl                                        ; $4e8e: $e1
    db $fc                                        ; $4e8f: $fc
    ld [bc], a                                    ; $4e90: $02
    ldh [$e4], a                                  ; $4e91: $e0 $e4
    ld hl, sp-$20                                 ; $4e93: $f8 $e0
    or $bf                                        ; $4e95: $f6 $bf
    db $e3                                        ; $4e97: $e3
    ldh [$fd], a                                  ; $4e98: $e0 $fd
    and b                                         ; $4e9a: $a0
    rst $30                                       ; $4e9b: $f7
    ldh [rIE], a                                  ; $4e9c: $e0 $ff
    dec [hl]                                      ; $4e9e: $35
    db $ec                                        ; $4e9f: $ec
    ld bc, $5f13                                  ; $4ea0: $01 $13 $5f
    ld a, [c]                                     ; $4ea3: $f2
    ldh [$ef], a                                  ; $4ea4: $e0 $ef
    cp $d5                                        ; $4ea6: $fe $d5
    ldh [rIE], a                                  ; $4ea8: $e0 $ff
    rst $38                                       ; $4eaa: $ff
    rst $38                                       ; $4eab: $ff
    rst $38                                       ; $4eac: $ff
    rst $38                                       ; $4ead: $ff
    rst $38                                       ; $4eae: $ff
    rst $38                                       ; $4eaf: $ff
    nop                                           ; $4eb0: $00
    rst $38                                       ; $4eb1: $ff
    rst $38                                       ; $4eb2: $ff
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    rst $38                                       ; $4eb5: $ff
    rst $38                                       ; $4eb6: $ff
    rst $38                                       ; $4eb7: $ff
    rst $38                                       ; $4eb8: $ff
    rst $38                                       ; $4eb9: $ff
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    db $e3                                        ; $4ec0: $e3
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    cp $01                                        ; $4ec4: $fe $01
    nop                                           ; $4ec6: $00
    rst $38                                       ; $4ec7: $ff
    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    rst $38                                       ; $4eca: $ff
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    rst $38                                       ; $4ecd: $ff
    rst $38                                       ; $4ece: $ff
    rst $38                                       ; $4ecf: $ff
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    rst $38                                       ; $4ed3: $ff
    rst $38                                       ; $4ed4: $ff
    nop                                           ; $4ed5: $00
    rst $38                                       ; $4ed6: $ff
    rst $38                                       ; $4ed7: $ff
    rst $38                                       ; $4ed8: $ff
    rst $38                                       ; $4ed9: $ff
    rst $38                                       ; $4eda: $ff
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    rst $38                                       ; $4edd: $ff
    rst $38                                       ; $4ede: $ff
    rst $38                                       ; $4edf: $ff
    rst $38                                       ; $4ee0: $ff
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    rst $38                                       ; $4ee3: $ff
    rst $38                                       ; $4ee4: $ff
    rst $38                                       ; $4ee5: $ff
    nop                                           ; $4ee6: $00
    rst $38                                       ; $4ee7: $ff
    rst $38                                       ; $4ee8: $ff
    rst $38                                       ; $4ee9: $ff
    rst $38                                       ; $4eea: $ff
    rst $38                                       ; $4eeb: $ff
    rst $38                                       ; $4eec: $ff
    rst $38                                       ; $4eed: $ff
    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    rst $38                                       ; $4ef0: $ff
    rst $38                                       ; $4ef1: $ff
    rst $38                                       ; $4ef2: $ff
    rst $38                                       ; $4ef3: $ff
    rst $38                                       ; $4ef4: $ff
    rst $38                                       ; $4ef5: $ff
    rst $38                                       ; $4ef6: $ff
    nop                                           ; $4ef7: $00
    rst $38                                       ; $4ef8: $ff
    rst $38                                       ; $4ef9: $ff
    rst $38                                       ; $4efa: $ff
    rst $38                                       ; $4efb: $ff
    rst $38                                       ; $4efc: $ff
    rst $38                                       ; $4efd: $ff
    rst $38                                       ; $4efe: $ff
    rst $38                                       ; $4eff: $ff
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    rst $38                                       ; $4f04: $ff
    rst $38                                       ; $4f05: $ff
    rst $38                                       ; $4f06: $ff
    rst $38                                       ; $4f07: $ff
    nop                                           ; $4f08: $00
    rst $38                                       ; $4f09: $ff
    rst $38                                       ; $4f0a: $ff
    rst $38                                       ; $4f0b: $ff
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    rst $38                                       ; $4f0e: $ff
    rst $38                                       ; $4f0f: $ff
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    rst $38                                       ; $4f13: $ff
    rst $38                                       ; $4f14: $ff
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    rst $38                                       ; $4f17: $ff
    rst $38                                       ; $4f18: $ff
    nop                                           ; $4f19: $00
    rst $38                                       ; $4f1a: $ff
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    rst $38                                       ; $4f1e: $ff
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    rst $38                                       ; $4f26: $ff
    rst $38                                       ; $4f27: $ff
    rst $38                                       ; $4f28: $ff
    rst $38                                       ; $4f29: $ff
    nop                                           ; $4f2a: $00
    rst $38                                       ; $4f2b: $ff
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    rst $38                                       ; $4f2f: $ff
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    rst $38                                       ; $4f33: $ff
    rst $38                                       ; $4f34: $ff
    rst $38                                       ; $4f35: $ff
    rst $38                                       ; $4f36: $ff
    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    rst $38                                       ; $4f3a: $ff
    nop                                           ; $4f3b: $00
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    rst $38                                       ; $4f3f: $ff
    rst $38                                       ; $4f40: $ff
    rst $38                                       ; $4f41: $ff
    rst $38                                       ; $4f42: $ff
    rst $38                                       ; $4f43: $ff
    rst $38                                       ; $4f44: $ff
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    db $e4                                        ; $4f47: $e4
    nop                                           ; $4f48: $00
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    nop                                           ; $4f4e: $00
    ccf                                           ; $4f4f: $3f
    ccf                                           ; $4f50: $3f
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    ld hl, sp+$46                                 ; $4f53: $f8 $46
    ld hl, sp+$46                                 ; $4f55: $f8 $46
    rst $08                                       ; $4f57: $cf
    add hl, hl                                    ; $4f58: $29
    nop                                           ; $4f59: $00
    nop                                           ; $4f5a: $00
    ld [$0825], sp                                ; $4f5b: $08 $25 $08
    dec h                                         ; $4f5e: $25
    ld [$0825], sp                                ; $4f5f: $08 $25 $08
    dec h                                         ; $4f62: $25
    or b                                          ; $4f63: $b0
    inc bc                                        ; $4f64: $03
    adc [hl]                                      ; $4f65: $8e
    ld [bc], a                                    ; $4f66: $02
    inc d                                         ; $4f67: $14
    ld bc, $04aa                                  ; $4f68: $01 $aa $04
    ld c, l                                       ; $4f6b: $4d
    inc bc                                        ; $4f6c: $03
    or b                                          ; $4f6d: $b0
    inc bc                                        ; $4f6e: $03
    adc [hl]                                      ; $4f6f: $8e
    ld [bc], a                                    ; $4f70: $02
    inc d                                         ; $4f71: $14
    ld bc, $7f48                                  ; $4f72: $01 $48 $7f
    ld c, b                                       ; $4f75: $48
    ld a, a                                       ; $4f76: $7f
    ld c, b                                       ; $4f77: $48
    ld a, a                                       ; $4f78: $7f
    ld c, b                                       ; $4f79: $48
    ld a, a                                       ; $4f7a: $7f
    rst $38                                       ; $4f7b: $ff
    ld a, a                                       ; $4f7c: $7f
    ld d, b                                       ; $4f7d: $50
    inc bc                                        ; $4f7e: $03
    call nc, $ce01                                ; $4f7f: $d4 $01 $ce
    db $10                                        ; $4f82: $10
    push af                                       ; $4f83: $f5
    ld [$117f], sp                                ; $4f84: $08 $7f $11
    rst $38                                       ; $4f87: $ff
    ld a, [de]                                    ; $4f88: $1a
    adc $10                                       ; $4f89: $ce $10
    ld [$0825], sp                                ; $4f8b: $08 $25 $08
    dec h                                         ; $4f8e: $25
    ld [$0825], sp                                ; $4f8f: $08 $25 $08
    dec h                                         ; $4f92: $25
    ei                                            ; $4f93: $fb
    rst $38                                       ; $4f94: $ff
    nop                                           ; $4f95: $00
    cp $eb                                        ; $4f96: $fe $eb
    ld [hl+], a                                   ; $4f98: $22
    rst $18                                       ; $4f99: $df
    nop                                           ; $4f9a: $00
    xor a                                         ; $4f9b: $af
    ld d, b                                       ; $4f9c: $50
    rst $38                                       ; $4f9d: $ff
    jp c, $fd25                                   ; $4f9e: $da $25 $fd

    ld b, d                                       ; $4fa1: $42
    cp a                                          ; $4fa2: $bf
    ld [hl+], a                                   ; $4fa3: $22
    db $fd                                        ; $4fa4: $fd
    adc b                                         ; $4fa5: $88
    rst $38                                       ; $4fa6: $ff
    db $eb                                        ; $4fa7: $eb
    dec d                                         ; $4fa8: $15
    rst $30                                       ; $4fa9: $f7
    push af                                       ; $4faa: $f5
    inc bc                                        ; $4fab: $03
    and $0e                                       ; $4fac: $e6 $0e
    ret c                                         ; $4fae: $d8

    rst $38                                       ; $4faf: $ff
    add hl, de                                    ; $4fb0: $19
    pop hl                                        ; $4fb1: $e1
    daa                                           ; $4fb2: $27
    and [hl]                                      ; $4fb3: $a6
    ld l, a                                       ; $4fb4: $6f
    ret z                                         ; $4fb5: $c8

    ld e, l                                       ; $4fb6: $5d
    ld c, h                                       ; $4fb7: $4c
    rst $38                                       ; $4fb8: $ff
    db $db                                        ; $4fb9: $db
    sub b                                         ; $4fba: $90
    cp a                                          ; $4fbb: $bf

jr_029_4fbc:
    db $fd                                        ; $4fbc: $fd
    inc bc                                        ; $4fbd: $03
    ld a, [$fa02]                                 ; $4fbe: $fa $02 $fa
    rst $38                                       ; $4fc1: $ff
    ld b, $f4                                     ; $4fc2: $06 $f4
    dec b                                         ; $4fc4: $05
    db $e4                                        ; $4fc5: $e4
    dec c                                         ; $4fc6: $0d
    reti                                          ; $4fc7: $d9


    dec sp                                        ; $4fc8: $3b
    ld h, d                                       ; $4fc9: $62
    rst $28                                       ; $4fca: $ef
    rst $20                                       ; $4fcb: $e7
    add h                                         ; $4fcc: $84
    sbc a                                         ; $4fcd: $9f
    jr z, @-$2e                                   ; $4fce: $28 $d0

    ldh [rP1], a                                  ; $4fd0: $e0 $00
    jp c, $ff00                                   ; $4fd2: $da $00 $ff

jr_029_4fd5:
    db $fd                                        ; $4fd5: $fd
    inc b                                         ; $4fd6: $04
    ei                                            ; $4fd7: $fb
    ld hl, $46ff                                  ; $4fd8: $21 $ff $46
    and a                                         ; $4fdb: $a7
    jr c, jr_029_4fd5                             ; $4fdc: $38 $f7

    cp $4f                                        ; $4fde: $fe $4f
    add sp, -$02                                  ; $4fe0: $e8 $fe
    pop hl                                        ; $4fe2: $e1
    sub a                                         ; $4fe3: $97
    ret c                                         ; $4fe4: $d8

    sub a                                         ; $4fe5: $97
    ret nc                                        ; $4fe6: $d0

    cp a                                          ; $4fe7: $bf
    cpl                                           ; $4fe8: $2f
    or b                                          ; $4fe9: $b0
    ld e, a                                       ; $4fea: $5f
    ld h, b                                       ; $4feb: $60
    sbc a                                         ; $4fec: $9f
    ret nz                                        ; $4fed: $c0

    and b                                         ; $4fee: $a0
    push hl                                       ; $4fef: $e5
    cp $ff                                        ; $4ff0: $fe $ff
    ld bc, $03f1                                  ; $4ff2: $01 $f1 $03
    and $0f                                       ; $4ff5: $e6 $0f
    cp b                                          ; $4ff7: $b8
    ld a, [hl]                                    ; $4ff8: $7e
    ret z                                         ; $4ff9: $c8

    rst $38                                       ; $4ffa: $ff
    ld l, a                                       ; $4ffb: $6f
    jp z, Jump_029_486d                           ; $4ffc: $ca $6d $48

    ld [$dd90], a                                 ; $4fff: $ea $90 $dd
    sub b                                         ; $5002: $90
    rst $38                                       ; $5003: $ff
    rst $18                                       ; $5004: $df
    jr z, jr_029_4fbc                             ; $5005: $28 $b5

    ld b, b                                       ; $5007: $40
    ld l, e                                       ; $5008: $6b
    add b                                         ; $5009: $80
    rst $30                                       ; $500a: $f7
    rst $38                                       ; $500b: $ff
    push af                                       ; $500c: $f5
    nop                                           ; $500d: $00
    xor [hl]                                      ; $500e: $ae
    ldh [$03], a                                  ; $500f: $e0 $03
    xor [hl]                                      ; $5011: $ae
    ldh [$0d], a                                  ; $5012: $e0 $0d
    ret                                           ; $5014: $c9


    dec de                                        ; $5015: $1b
    or d                                          ; $5016: $b2
    rst $38                                       ; $5017: $ff
    ld [hl], a                                    ; $5018: $77
    call nz, $c96f                                ; $5019: $c4 $6f $c9
    dec c                                         ; $501c: $0d
    jp nc, $d21b                                  ; $501d: $d2 $1b $d2

    rst $38                                       ; $5020: $ff
    dec sp                                        ; $5021: $3b
    db $e4                                        ; $5022: $e4
    scf                                           ; $5023: $37
    db $e4                                        ; $5024: $e4
    scf                                           ; $5025: $37
    and [hl]                                      ; $5026: $a6
    ld [hl], l                                    ; $5027: $75
    ret z                                         ; $5028: $c8

    rst $28                                       ; $5029: $ef
    ld l, a                                       ; $502a: $6f
    ret z                                         ; $502b: $c8

    ld l, a                                       ; $502c: $6f
    ld sp, hl                                     ; $502d: $f9
    add b                                         ; $502e: $80
    pop hl                                        ; $502f: $e1
    add hl, sp                                    ; $5030: $39
    pop hl                                        ; $5031: $e1
    rst $20                                       ; $5032: $e7
    rst $38                                       ; $5033: $ff
    ld b, $1f                                     ; $5034: $06 $1f
    add hl, de                                    ; $5036: $19
    rst $38                                       ; $5037: $ff
    ld [c], a                                     ; $5038: $e2
    db $fd                                        ; $5039: $fd
    db $10                                        ; $503a: $10
    ld a, [$fbff]                                 ; $503b: $fa $ff $fb
    nop                                           ; $503e: $00
    rst $30                                       ; $503f: $f7
    rlca                                          ; $5040: $07
    ret c                                         ; $5041: $d8

    rra                                           ; $5042: $1f

jr_029_5043:
    ldh [$78], a                                  ; $5043: $e0 $78
    rst $38                                       ; $5045: $ff
    add a                                         ; $5046: $87
    rst $20                                       ; $5047: $e7
    ld a, [de]                                    ; $5048: $1a
    sbc l                                         ; $5049: $9d
    ld h, b                                       ; $504a: $60
    ld a, d                                       ; $504b: $7a
    add b                                         ; $504c: $80
    db $fd                                        ; $504d: $fd
    db $fc                                        ; $504e: $fc
    jp nc, $d0e0                                  ; $504f: $d2 $e0 $d0

    pop hl                                        ; $5052: $e1
    rst $30                                       ; $5053: $f7
    inc b                                         ; $5054: $04
    rst $28                                       ; $5055: $ef
    jr jr_029_5075                                ; $5056: $18 $1d

    ldh [$f7], a                                  ; $5058: $e0 $f7
    rst $28                                       ; $505a: $ef
    nop                                           ; $505b: $00
    rst $10                                       ; $505c: $d7
    ldh [$e0], a                                  ; $505d: $e0 $e0
    rrca                                          ; $505f: $0f
    ret c                                         ; $5060: $d8

    jr c, jr_029_5043                             ; $5061: $38 $e0

    rst $38                                       ; $5063: $ff
    scf                                           ; $5064: $37
    and a                                         ; $5065: $a7
    ld l, a                                       ; $5066: $6f
    ret z                                         ; $5067: $c8

    ld e, a                                       ; $5068: $5f
    ret z                                         ; $5069: $c8

    ld e, d                                       ; $506a: $5a
    ret z                                         ; $506b: $c8

    rst $38                                       ; $506c: $ff
    ld e, l                                       ; $506d: $5d
    nop                                           ; $506e: $00
    rst $38                                       ; $506f: $ff
    db $10                                        ; $5070: $10
    ld a, [$ad00]                                 ; $5071: $fa $00 $ad
    nop                                           ; $5074: $00

jr_029_5075:
    rst $38                                       ; $5075: $ff
    rst $18                                       ; $5076: $df
    db $e4                                        ; $5077: $e4

jr_029_5078:
    rst $38                                       ; $5078: $ff
    jr jr_029_5078                                ; $5079: $18 $fd

    inc b                                         ; $507b: $04

jr_029_507c:
    rra                                           ; $507c: $1f
    ld [c], a                                     ; $507d: $e2
    db $fd                                        ; $507e: $fd
    rst $20                                       ; $507f: $e7
    db $10                                        ; $5080: $10
    push hl                                       ; $5081: $e5
    rst $28                                       ; $5082: $ef
    ldh a, [rNR31]                                ; $5083: $f0 $1b
    db $fc                                        ; $5085: $fc
    dec b                                         ; $5086: $05
    ld e, $ff                                     ; $5087: $1e $ff
    db $e3                                        ; $5089: $e3

jr_029_508a:
    and $4f                                       ; $508a: $e6 $4f
    add sp, -$71                                  ; $508c: $e8 $8f
    ret z                                         ; $508e: $c8

    cpl                                           ; $508f: $2f
    sbc b                                         ; $5090: $98
    rst $28                                       ; $5091: $ef
    rla                                           ; $5092: $17
    jr c, jr_029_507c                             ; $5093: $38 $e7

    ldh a, [$f6]                                  ; $5095: $f0 $f6
    jp Jump_029_6fc8                              ; $5097: $c3 $c8 $6f


jr_029_509a:
    ld [$cdff], a                                 ; $509a: $ea $ff $cd
    ld c, b                                       ; $509d: $48
    sbc d                                         ; $509e: $9a
    db $10                                        ; $509f: $10
    dec a                                         ; $50a0: $3d
    ldh [rIE], a                                  ; $50a1: $e0 $ff
    jr nz, @+$01                                  ; $50a3: $20 $ff

    db $fd                                        ; $50a5: $fd
    ld [de], a                                    ; $50a6: $12
    db $eb                                        ; $50a7: $eb
    nop                                           ; $50a8: $00
    rst $30                                       ; $50a9: $f7
    sub e                                         ; $50aa: $93
    cp b                                          ; $50ab: $b8
    cpl                                           ; $50ac: $2f
    rst $30                                       ; $50ad: $f7
    ld h, b                                       ; $50ae: $60
    ld e, a                                       ; $50af: $5f
    ret nz                                        ; $50b0: $c0

    jr c, jr_029_509a                             ; $50b1: $38 $e7

    ld [$309f], sp                                ; $50b3: $08 $9f $30
    ld a, a                                       ; $50b6: $7f
    rst $38                                       ; $50b7: $ff
    ld d, b                                       ; $50b8: $50
    ld l, d                                       ; $50b9: $6a
    ld b, h                                       ; $50ba: $44
    db $fd                                        ; $50bb: $fd
    add b                                         ; $50bc: $80
    rst $38                                       ; $50bd: $ff
    jr z, @-$09                                   ; $50be: $28 $f5

    ld sp, hl                                     ; $50c0: $f9
    nop                                           ; $50c1: $00
    ldh [$e0], a                                  ; $50c2: $e0 $e0
    ret nz                                        ; $50c4: $c0

    jp Jump_000_01fc                              ; $50c5: $c3 $fc $01


    db $e3                                        ; $50c8: $e3
    rlca                                          ; $50c9: $07
    sbc h                                         ; $50ca: $9c
    ld e, a                                       ; $50cb: $5f
    inc a                                         ; $50cc: $3c
    ld h, b                                       ; $50cd: $60
    db $e3                                        ; $50ce: $e3
    add e                                         ; $50cf: $83
    sbc a                                         ; $50d0: $9f
    ld d, b                                       ; $50d1: $50

jr_029_50d2:
    pop hl                                        ; $50d2: $e1
    sbc b                                         ; $50d3: $98

jr_029_50d4:
    ld d, b                                       ; $50d4: $50
    ld [c], a                                     ; $50d5: $e2
    rst $38                                       ; $50d6: $ff
    jr jr_029_50d4                                ; $50d7: $18 $fb

    ld [c], a                                     ; $50d9: $e2
    push af                                       ; $50da: $f5
    nop                                           ; $50db: $00
    rst $38                                       ; $50dc: $ff
    cp $01                                        ; $50dd: $fe $01
    rst $38                                       ; $50df: $ff
    rst $20                                       ; $50e0: $e7
    rrca                                          ; $50e1: $0f
    ret c                                         ; $50e2: $d8

    ccf                                           ; $50e3: $3f
    ld h, b                                       ; $50e4: $60
    ld hl, sp-$79                                 ; $50e5: $f8 $87
    rst $20                                       ; $50e7: $e7
    ei                                            ; $50e8: $fb
    jr jr_029_508a                                ; $50e9: $18 $9f

    ld d, b                                       ; $50eb: $50
    pop hl                                        ; $50ec: $e1
    pop bc                                        ; $50ed: $c1
    ld sp, hl                                     ; $50ee: $f9
    ld b, $c7                                     ; $50ef: $06 $c7
    jr c, jr_029_5172                             ; $50f1: $38 $7f

    ld a, [hl-]                                   ; $50f3: $3a
    ret nz                                        ; $50f4: $c0

    db $dd                                        ; $50f5: $dd
    inc b                                         ; $50f6: $04

jr_029_50f7:
    ei                                            ; $50f7: $fb
    jr nz, jr_029_50f7                            ; $50f8: $20 $fd

    ret nz                                        ; $50fa: $c0

    push hl                                       ; $50fb: $e5
    rst $18                                       ; $50fc: $df
    cp $01                                        ; $50fd: $fe $01
    rst $38                                       ; $50ff: $ff
    ld bc, $faf9                                  ; $5100: $01 $f9 $fa

jr_029_5103:
    pop bc                                        ; $5103: $c1
    rlca                                          ; $5104: $07
    db $f4                                        ; $5105: $f4
    rst $38                                       ; $5106: $ff
    ld b, $48                                     ; $5107: $06 $48
    rst $28                                       ; $5109: $ef
    sub b                                         ; $510a: $90
    jp c, $dd90                                   ; $510b: $da $90 $dd

    inc h                                         ; $510e: $24
    sbc a                                         ; $510f: $9f
    xor e                                         ; $5110: $ab
    jr nz, jr_029_50d2                            ; $5111: $20 $bf

    ld d, b                                       ; $5113: $50
    ld a, l                                       ; $5114: $7d
    ldh [$c3], a                                  ; $5115: $e0 $c3
    ld e, [hl]                                    ; $5117: $5e
    jp $ffe7                                      ; $5118: $c3 $e7 $ff


    rrca                                          ; $511b: $0f
    sbc b                                         ; $511c: $98
    jr c, jr_029_517f                             ; $511d: $38 $60

    rst $20                                       ; $511f: $e7
    add a                                         ; $5120: $87
    sbc a                                         ; $5121: $9f
    ld [$ffff], sp                                ; $5122: $08 $ff $ff
    nop                                           ; $5125: $00
    xor a                                         ; $5126: $af
    jr nz, jr_029_5103                            ; $5127: $20 $da

    ld b, b                                       ; $5129: $40
    db $ed                                        ; $512a: $ed
    rlca                                          ; $512b: $07
    rst $30                                       ; $512c: $f7
    rst $38                                       ; $512d: $ff
    jr @-$06                                      ; $512e: $18 $f8

    ldh a, [$e1]                                  ; $5130: $f0 $e1
    dec bc                                        ; $5132: $0b
    sbc h                                         ; $5133: $9c
    inc sp                                        ; $5134: $33
    ld a, b                                       ; $5135: $78
    cp l                                          ; $5136: $bd
    ld b, a                                       ; $5137: $47
    ld e, [hl]                                    ; $5138: $5e
    ldh [$bf], a                                  ; $5139: $e0 $bf
    ret nz                                        ; $513b: $c0

    ld a, a                                       ; $513c: $7f
    add b                                         ; $513d: $80
    inc [hl]                                      ; $513e: $34
    pop bc                                        ; $513f: $c1
    sub b                                         ; $5140: $90
    rst $38                                       ; $5141: $ff
    or a                                          ; $5142: $b7
    inc h                                         ; $5143: $24
    ld l, a                                       ; $5144: $6f
    ld b, h                                       ; $5145: $44
    ei                                            ; $5146: $fb
    add b                                         ; $5147: $80
    rst $38                                       ; $5148: $ff
    ld b, b                                       ; $5149: $40
    rst $28                                       ; $514a: $ef
    cp a                                          ; $514b: $bf
    ld [bc], a                                    ; $514c: $02
    ld e, e                                       ; $514d: $5b
    ld [hl+], a                                   ; $514e: $22
    add b                                         ; $514f: $80
    ldh [rOBP0], a                                ; $5150: $e0 $48
    rst $08                                       ; $5152: $cf
    ld c, b                                       ; $5153: $48
    rst $38                                       ; $5154: $ff
    rst $18                                       ; $5155: $df
    sub h                                         ; $5156: $94
    cp c                                          ; $5157: $b9
    sub b                                         ; $5158: $90
    cp e                                          ; $5159: $bb
    sub b                                         ; $515a: $90
    cp a                                          ; $515b: $bf
    ld d, b                                       ; $515c: $50
    rst $38                                       ; $515d: $ff
    db $fd                                        ; $515e: $fd
    ld c, b                                       ; $515f: $48
    rst $18                                       ; $5160: $df
    ld c, d                                       ; $5161: $4a
    rst $08                                       ; $5162: $cf
    sub b                                         ; $5163: $90
    sbc a                                         ; $5164: $9f
    sub b                                         ; $5165: $90
    rst $38                                       ; $5166: $ff
    rst $18                                       ; $5167: $df
    ld c, b                                       ; $5168: $48
    ld [$6d4a], a                                 ; $5169: $ea $4a $6d
    ld c, b                                       ; $516c: $48
    ld l, a                                       ; $516d: $6f
    ld d, b                                       ; $516e: $50
    rst $38                                       ; $516f: $ff
    push af                                       ; $5170: $f5
    sub b                                         ; $5171: $90

jr_029_5172:
    rst $10                                       ; $5172: $d7
    sub d                                         ; $5173: $92
    sub a                                         ; $5174: $97
    ld c, e                                       ; $5175: $4b
    ret z                                         ; $5176: $c8

    ld c, e                                       ; $5177: $4b
    rst $38                                       ; $5178: $ff
    ret c                                         ; $5179: $d8

    sub a                                         ; $517a: $97
    cp b                                          ; $517b: $b8
    sub a                                         ; $517c: $97
    or b                                          ; $517d: $b0
    sub a                                         ; $517e: $97

jr_029_517f:
    or b                                          ; $517f: $b0
    ld d, a                                       ; $5180: $57
    rst $38                                       ; $5181: $ff
    ret c                                         ; $5182: $d8

    ld c, e                                       ; $5183: $4b
    ret c                                         ; $5184: $d8

    ld c, e                                       ; $5185: $4b
    ret z                                         ; $5186: $c8

    sub a                                         ; $5187: $97
    sub b                                         ; $5188: $90
    sub a                                         ; $5189: $97
    db $fd                                        ; $518a: $fd
    ret c                                         ; $518b: $d8

    inc a                                         ; $518c: $3c
    ret nz                                        ; $518d: $c0

    ld l, b                                       ; $518e: $68
    ld c, a                                       ; $518f: $4f
    ld l, b                                       ; $5190: $68
    ld d, a                                       ; $5191: $57
    ld hl, sp-$61                                 ; $5192: $f8 $9f
    rst $30                                       ; $5194: $f7
    ret nc                                        ; $5195: $d0

    sbc a                                         ; $5196: $9f
    sub b                                         ; $5197: $90
    ldh [$a3], a                                  ; $5198: $e0 $a3
    cp l                                          ; $519a: $bd
    ld a, [hl]                                    ; $519b: $7e
    jp $9fff                                      ; $519c: $c3 $ff $9f


    nop                                           ; $519f: $00
    jp Jump_000_3c3c                              ; $51a0: $c3 $3c $3c


    jp $e0f9                                      ; $51a3: $c3 $f9 $e0


    ld [hl], d                                    ; $51a6: $72
    ld [c], a                                     ; $51a7: $e2
    halt                                          ; $51a8: $76
    ld a, a                                       ; $51a9: $7f
    sbc c                                         ; $51aa: $99
    rst $38                                       ; $51ab: $ff
    nop                                           ; $51ac: $00
    sbc c                                         ; $51ad: $99
    ld h, [hl]                                    ; $51ae: $66
    ld h, [hl]                                    ; $51af: $66
    sbc c                                         ; $51b0: $99
    ld [hl], b                                    ; $51b1: $70
    ldh [$bf], a                                  ; $51b2: $e0 $bf
    ld [bc], a                                    ; $51b4: $02
    xor l                                         ; $51b5: $ad
    ld [bc], a                                    ; $51b6: $02
    jp c, $fd3c                                   ; $51b7: $da $3c $fd

    ldh [$e4], a                                  ; $51ba: $e0 $e4
    ei                                            ; $51bc: $fb
    cp [hl]                                       ; $51bd: $be
    ldh a, [$e0]                                  ; $51be: $f0 $e0
    xor a                                         ; $51c0: $af
    nop                                           ; $51c1: $00
    reti                                          ; $51c2: $d9


    halt                                          ; $51c3: $76
    rst $28                                       ; $51c4: $ef
    ldh [$e4], a                                  ; $51c5: $e0 $e4
    rst $18                                       ; $51c7: $df
    rst $18                                       ; $51c8: $df
    ld bc, $0603                                  ; $51c9: $01 $03 $06
    ld c, $18                                     ; $51cc: $0e $18
    ldh a, [$c8]                                  ; $51ce: $f0 $c8
    dec de                                        ; $51d0: $1b
    ld a, b                                       ; $51d1: $78
    rst $20                                       ; $51d2: $e7
    ld h, a                                       ; $51d3: $67
    ldh [$df], a                                  ; $51d4: $e0 $df
    ld d, [hl]                                    ; $51d6: $56
    ld [c], a                                     ; $51d7: $e2
    add [hl]                                      ; $51d8: $86
    and e                                         ; $51d9: $a3
    ld d, b                                       ; $51da: $50
    xor a                                         ; $51db: $af
    dec h                                         ; $51dc: $25
    rst $38                                       ; $51dd: $ff
    jp c, $b807                                   ; $51de: $da $07 $b8

    rlca                                          ; $51e1: $07
    db $fd                                        ; $51e2: $fd
    and d                                         ; $51e3: $a2
    ld e, a                                       ; $51e4: $5f
    ldh [rIE], a                                  ; $51e5: $e0 $ff
    rla                                           ; $51e7: $17
    push hl                                       ; $51e8: $e5
    cp d                                          ; $51e9: $ba
    ld b, d                                       ; $51ea: $42
    db $fd                                        ; $51eb: $fd
    db $fd                                        ; $51ec: $fd
    db $fd                                        ; $51ed: $fd
    rst $18                                       ; $51ee: $df
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    ei                                            ; $51f1: $fb
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    rst $38                                       ; $51f4: $ff
    ld a, l                                       ; $51f5: $7d
    rst $38                                       ; $51f6: $ff
    rst $28                                       ; $51f7: $ef
    ei                                            ; $51f8: $fb
    rst $28                                       ; $51f9: $ef
    rst $38                                       ; $51fa: $ff
    or $e0                                        ; $51fb: $f6 $e0
    xor l                                         ; $51fd: $ad
    rst $28                                       ; $51fe: $ef
    halt                                          ; $51ff: $76
    rst $38                                       ; $5200: $ff
    and $fe                                       ; $5201: $e6 $fe
    xor $e0                                       ; $5203: $ee $e0
    db $e4                                        ; $5205: $e4
    db $eb                                        ; $5206: $eb
    ld [hl], h                                    ; $5207: $74
    rst $30                                       ; $5208: $f7
    ld c, b                                       ; $5209: $48
    rst $38                                       ; $520a: $ff
    add b                                         ; $520b: $80
    rst $38                                       ; $520c: $ff
    cp e                                          ; $520d: $bb
    db $eb                                        ; $520e: $eb
    rst $38                                       ; $520f: $ff
    ld a, h                                       ; $5210: $7c
    rst $38                                       ; $5211: $ff
    ld d, b                                       ; $5212: $50
    rst $10                                       ; $5213: $d7
    xor h                                         ; $5214: $ac
    db $fd                                        ; $5215: $fd
    db $eb                                        ; $5216: $eb
    ld h, a                                       ; $5217: $67
    pop hl                                        ; $5218: $e1
    ld b, b                                       ; $5219: $40
    or l                                          ; $521a: $b5
    nop                                           ; $521b: $00
    ei                                            ; $521c: $fb
    ld bc, $ffff                                  ; $521d: $01 $ff $ff
    ld [bc], a                                    ; $5220: $02
    rst $10                                       ; $5221: $d7
    db $10                                        ; $5222: $10
    db $ed                                        ; $5223: $ed
    dec b                                         ; $5224: $05
    rst $38                                       ; $5225: $ff
    inc bc                                        ; $5226: $03
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    ld a, [hl+]                                   ; $5229: $2a
    jp c, $bd08                                   ; $522a: $da $08 $bd

    dec d                                         ; $522d: $15
    rst $38                                       ; $522e: $ff
    ld c, $ff                                     ; $522f: $0e $ff
    rst $38                                       ; $5231: $ff
    ld b, l                                       ; $5232: $45
    rst $30                                       ; $5233: $f7
    ld a, [bc]                                    ; $5234: $0a
    cp $25                                        ; $5235: $fe $25
    rst $28                                       ; $5237: $ef
    sbc e                                         ; $5238: $9b
    rst $30                                       ; $5239: $f7
    rst $38                                       ; $523a: $ff
    ld e, $ff                                     ; $523b: $1e $ff
    halt                                          ; $523d: $76
    cp [hl]                                       ; $523e: $be
    db $db                                        ; $523f: $db
    rst $38                                       ; $5240: $ff
    cp $ff                                        ; $5241: $fe $ff
    rst $38                                       ; $5243: $ff
    push af                                       ; $5244: $f5
    push af                                       ; $5245: $f5
    ld l, b                                       ; $5246: $68
    rst $28                                       ; $5247: $ef
    call nc, $b8ff                                ; $5248: $d4 $ff $b8
    xor a                                         ; $524b: $af
    rst $38                                       ; $524c: $ff
    ret nc                                        ; $524d: $d0

    jp c, $fda5                                   ; $524e: $da $a5 $fd

    ld d, d                                       ; $5251: $52
    rst $38                                       ; $5252: $ff
    ld [bc], a                                    ; $5253: $02
    ei                                            ; $5254: $fb
    rst $38                                       ; $5255: $ff
    ld b, l                                       ; $5256: $45
    xor a                                         ; $5257: $af
    ld d, [hl]                                    ; $5258: $56
    jp c, $fe22                                   ; $5259: $da $22 $fe

    dec b                                         ; $525c: $05
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    ld h, $fd                                     ; $525f: $26 $fd

jr_029_5261:
    inc bc                                        ; $5261: $03
    cp e                                          ; $5262: $bb
    ld bc, $b9fd                                  ; $5263: $01 $fd $b9
    ei                                            ; $5266: $fb
    rst $38                                       ; $5267: $ff
    ld [hl], h                                    ; $5268: $74
    rst $10                                       ; $5269: $d7
    ld a, [hl+]                                   ; $526a: $2a
    db $ed                                        ; $526b: $ed
    ld [bc], a                                    ; $526c: $02
    rst $38                                       ; $526d: $ff
    jr nz, @-$24                                  ; $526e: $20 $da

    cp $da                                        ; $5270: $fe $da
    and c                                         ; $5272: $a1

jr_029_5273:
    nop                                           ; $5273: $00
    ei                                            ; $5274: $fb
    call c, $faff                                 ; $5275: $dc $ff $fa
    ei                                            ; $5278: $fb
    db $f4                                        ; $5279: $f4
    rst $38                                       ; $527a: $ff
    rst $38                                       ; $527b: $ff
    and $eb                                       ; $527c: $e6 $eb
    db $f4                                        ; $527e: $f4
    rst $30                                       ; $527f: $f7
    ld l, b                                       ; $5280: $68
    rst $38                                       ; $5281: $ff
    jp nc, $fffb                                  ; $5282: $d2 $fb $ff

    add sp, $76                                   ; $5285: $e8 $76
    ldh [$fa], a                                  ; $5287: $e0 $fa
    cp $ad                                        ; $5289: $fe $ad
    db $fd                                        ; $528b: $fd
    ld e, e                                       ; $528c: $5b
    rst $08                                       ; $528d: $cf
    rst $18                                       ; $528e: $df

jr_029_528f:
    adc b                                         ; $528f: $88
    push af                                       ; $5290: $f5
    db $10                                        ; $5291: $10
    push de                                       ; $5292: $d5
    add d                                         ; $5293: $82
    halt                                          ; $5294: $76
    ret nz                                        ; $5295: $c0

    jr jr_029_5273                                ; $5296: $18 $db

    rst $38                                       ; $5298: $ff
    inc a                                         ; $5299: $3c
    and l                                         ; $529a: $a5
    ld a, [hl]                                    ; $529b: $7e
    jp $c366                                      ; $529c: $c3 $66 $c3


    ld h, [hl]                                    ; $529f: $66
    sbc c                                         ; $52a0: $99

jr_029_52a1:
    db $fd                                        ; $52a1: $fd
    ld b, d                                       ; $52a2: $42
    jp nz, $b781                                  ; $52a3: $c2 $81 $b7

    ld a, b                                       ; $52a6: $78
    adc e                                         ; $52a7: $8b
    inc a                                         ; $52a8: $3c
    push bc                                       ; $52a9: $c5
    ld c, $bf                                     ; $52aa: $0e $bf
    push bc                                       ; $52ac: $c5
    ld c, $8b                                     ; $52ad: $0e $8b
    inc a                                         ; $52af: $3c
    or a                                          ; $52b0: $b7
    ld a, b                                       ; $52b1: $78
    or d                                          ; $52b2: $b2
    add c                                         ; $52b3: $81
    rst $18                                       ; $52b4: $df
    rst $38                                       ; $52b5: $ff
    ld a, $e7                                     ; $52b6: $3e $e7
    ld a, [hl]                                    ; $52b8: $7e
    inc bc                                        ; $52b9: $03
    adc $33                                       ; $52ba: $ce $33
    add [hl]                                      ; $52bc: $86
    push af                                       ; $52bd: $f5
    rst $18                                       ; $52be: $df
    ld b, $e7                                     ; $52bf: $06 $e7
    inc c                                         ; $52c1: $0c
    rst $20                                       ; $52c2: $e7
    jr @-$68                                      ; $52c3: $18 $96

    and b                                         ; $52c5: $a0
    db $10                                        ; $52c6: $10
    rst $10                                       ; $52c7: $d7
    ld a, a                                       ; $52c8: $7f
    jr c, @-$53                                   ; $52c9: $38 $ab

    ld a, h                                       ; $52cb: $7c
    rst $00                                       ; $52cc: $c7
    ld l, h                                       ; $52cd: $6c
    sub e                                         ; $52ce: $93
    ld b, h                                       ; $52cf: $44
    sub h                                         ; $52d0: $94
    add l                                         ; $52d1: $85
    rst $38                                       ; $52d2: $ff
    rst $10                                       ; $52d3: $d7
    jr c, jr_029_52a1                             ; $52d4: $38 $cb

    inc e                                         ; $52d6: $1c
    push hl                                       ; $52d7: $e5
    ld c, $cb                                     ; $52d8: $0e $cb
    inc e                                         ; $52da: $1c
    ei                                            ; $52db: $fb
    rst $10                                       ; $52dc: $d7
    jr c, jr_029_5261                             ; $52dd: $38 $82

    add h                                         ; $52df: $84
    inc a                                         ; $52e0: $3c
    add a                                         ; $52e1: $87
    ld a, h                                       ; $52e2: $7c
    rst $30                                       ; $52e3: $f7

jr_029_52e4:
    inc c                                         ; $52e4: $0c
    ld hl, sp-$02                                 ; $52e5: $f8 $fe

jr_029_52e7:
    ldh [rNR44], a                                ; $52e7: $e0 $23
    ret nz                                        ; $52e9: $c0

    ld h, h                                       ; $52ea: $64
    and d                                         ; $52eb: $a2
    db $10                                        ; $52ec: $10
    rst $28                                       ; $52ed: $ef
    jr jr_029_52e7                                ; $52ee: $18 $f7

    inc c                                         ; $52f0: $0c
    rst $20                                       ; $52f1: $e7
    rst $28                                       ; $52f2: $ef
    jr jr_029_52e4                                ; $52f3: $18 $ef

    adc l                                         ; $52f5: $8d
    db $e3                                        ; $52f6: $e3
    dec a                                         ; $52f7: $3d
    and b                                         ; $52f8: $a0
    rst $28                                       ; $52f9: $ef
    jr c, jr_029_528f                             ; $52fa: $38 $93

    ld a, l                                       ; $52fc: $7d
    ld l, h                                       ; $52fd: $6c
    ld d, [hl]                                    ; $52fe: $56
    add a                                         ; $52ff: $87
    rst $08                                       ; $5300: $cf
    inc a                                         ; $5301: $3c
    rst $38                                       ; $5302: $ff
    inc b                                         ; $5303: $04
    ei                                            ; $5304: $fb
    cp $e0                                        ; $5305: $fe $e0
    db $fc                                        ; $5307: $fc
    ld b, h                                       ; $5308: $44
    add c                                         ; $5309: $81
    ld b, c                                       ; $530a: $41
    adc h                                         ; $530b: $8c
    rst $38                                       ; $530c: $ff
    add b                                         ; $530d: $80
    cp a                                          ; $530e: $bf
    ld b, b                                       ; $530f: $40
    rst $38                                       ; $5310: $ff
    ld h, b                                       ; $5311: $60
    rst $38                                       ; $5312: $ff
    rst $18                                       ; $5313: $df
    jr nz, @+$01                                  ; $5314: $20 $ff

    and b                                         ; $5316: $a0
    cp a                                          ; $5317: $bf
    jr nz, @+$71                                  ; $5318: $20 $6f

    db $10                                        ; $531a: $10
    rst $30                                       ; $531b: $f7
    rst $30                                       ; $531c: $f7
    ld d, b                                       ; $531d: $50
    rst $30                                       ; $531e: $f7
    ldh a, [$e3]                                  ; $531f: $f0 $e3
    and b                                         ; $5321: $a0
    ld a, a                                       ; $5322: $7f
    and b                                         ; $5323: $a0
    ld l, a                                       ; $5324: $6f
    ei                                            ; $5325: $fb
    ret nc                                        ; $5326: $d0

    scf                                           ; $5327: $37
    cp $e1                                        ; $5328: $fe $e1
    db $10                                        ; $532a: $10
    rst $30                                       ; $532b: $f7
    ld [$08db], sp                                ; $532c: $08 $db $08
    rst $38                                       ; $532f: $ff
    ei                                            ; $5330: $fb
    ld b, h                                       ; $5331: $44
    rst $38                                       ; $5332: $ff
    and h                                         ; $5333: $a4
    cp l                                          ; $5334: $bd
    ld c, $5b                                     ; $5335: $0e $5b
    ld [bc], a                                    ; $5337: $02
    rst $38                                       ; $5338: $ff
    or $41                                        ; $5339: $f6 $41
    rst $38                                       ; $533b: $ff
    cp a                                          ; $533c: $bf
    ret nz                                        ; $533d: $c0

    ld e, a                                       ; $533e: $5f
    ld h, b                                       ; $533f: $60
    ld e, a                                       ; $5340: $5f
    ld a, a                                       ; $5341: $7f
    ld h, b                                       ; $5342: $60
    cpl                                           ; $5343: $2f
    or b                                          ; $5344: $b0
    cpl                                           ; $5345: $2f
    or b                                          ; $5346: $b0
    rla                                           ; $5347: $17
    ret c                                         ; $5348: $d8

    cp $e1                                        ; $5349: $fe $e1
    cp $c0                                        ; $534b: $fe $c0
    ldh [$df], a                                  ; $534d: $e0 $df
    or b                                          ; $534f: $b0
    ld l, a                                       ; $5350: $6f
    ldh [$2f], a                                  ; $5351: $e0 $2f
    call nc, $ff33                                ; $5353: $d4 $33 $ff
    db $ec                                        ; $5356: $ec
    dec e                                         ; $5357: $1d
    ld a, [c]                                     ; $5358: $f2
    ld c, $fd                                     ; $5359: $0e $fd
    inc bc                                        ; $535b: $03
    add b                                         ; $535c: $80
    cp a                                          ; $535d: $bf
    cp $b2                                        ; $535e: $fe $b2
    pop hl                                        ; $5360: $e1
    jr nz, @-$0f                                  ; $5361: $20 $ef

    db $10                                        ; $5363: $10
    or e                                          ; $5364: $b3
    inc c                                         ; $5365: $0c
    db $ed                                        ; $5366: $ed
    ld [hl+], a                                   ; $5367: $22
    ld a, h                                       ; $5368: $7c
    ld d, a                                       ; $5369: $57
    and b                                         ; $536a: $a0
    inc sp                                        ; $536b: $33
    add l                                         ; $536c: $85
    ld c, $ce                                     ; $536d: $0e $ce
    ld [hl-], a                                   ; $536f: $32
    cp a                                          ; $5370: $bf
    ld d, b                                       ; $5371: $50
    ld b, b                                       ; $5372: $40
    add b                                         ; $5373: $80
    ld a, l                                       ; $5374: $7d
    ld bc, $a030                                  ; $5375: $01 $30 $a0
    inc a                                         ; $5378: $3c
    ld a, [hl-]                                   ; $5379: $3a
    push hl                                       ; $537a: $e5
    db $dd                                        ; $537b: $dd
    ld [bc], a                                    ; $537c: $02
    ld l, b                                       ; $537d: $68
    and b                                         ; $537e: $a0

Jump_029_537f:
    ld sp, hl                                     ; $537f: $f9
    ld d, b                                       ; $5380: $50
    adc b                                         ; $5381: $88
    ldh [rNR13], a                                ; $5382: $e0 $13
    add h                                         ; $5384: $84
    ld sp, hl                                     ; $5385: $f9
    ld c, $ef                                     ; $5386: $0e $ef
    ld sp, $ffbe                                  ; $5388: $31 $be $ff
    ld c, a                                       ; $538b: $4f
    ld [hl], b                                    ; $538c: $70
    cp a                                          ; $538d: $bf
    ret nz                                        ; $538e: $c0

    ld bc, $06fd                                  ; $538f: $01 $fd $06
    rst $20                                       ; $5392: $e7
    sbc a                                         ; $5393: $9f
    add hl, sp                                    ; $5394: $39
    ld a, $c7                                     ; $5395: $3e $c7
    ld hl, sp+$3f                                 ; $5397: $f8 $3f
    or $64                                        ; $5399: $f6 $64
    sub c                                         ; $539b: $91
    ld h, b                                       ; $539c: $60
    rst $00                                       ; $539d: $c7
    rst $00                                       ; $539e: $c7
    jr c, jr_029_53d9                             ; $539f: $38 $38

    rst $00                                       ; $53a1: $c7
    or d                                          ; $53a2: $b2
    and b                                         ; $53a3: $a0
    add [hl]                                      ; $53a4: $86
    ld h, e                                       ; $53a5: $63
    ld l, d                                       ; $53a6: $6a
    pop hl                                        ; $53a7: $e1
    add sp, $1b                                   ; $53a8: $e8 $1b
    ld a, [c]                                     ; $53aa: $f2
    cp $e2                                        ; $53ab: $fe $e2
    rra                                           ; $53ad: $1f
    ld e, [hl]                                    ; $53ae: $5e
    pop hl                                        ; $53af: $e1
    ld [hl], c                                    ; $53b0: $71
    ld h, a                                       ; $53b1: $67
    jr nz, @-$3b                                  ; $53b2: $20 $c3

    inc e                                         ; $53b4: $1c
    inc e                                         ; $53b5: $1c
    rst $28                                       ; $53b6: $ef
    db $e3                                        ; $53b7: $e3
    db $e3                                        ; $53b8: $e3
    add b                                         ; $53b9: $80
    cp a                                          ; $53ba: $bf
    dec h                                         ; $53bb: $25
    and b                                         ; $53bc: $a0
    rst $38                                       ; $53bd: $ff
    ld b, b                                       ; $53be: $40
    ld e, a                                       ; $53bf: $5f
    rst $28                                       ; $53c0: $ef
    ld b, b                                       ; $53c1: $40
    ld e, a                                       ; $53c2: $5f
    add b                                         ; $53c3: $80
    cp a                                          ; $53c4: $bf
    cp $e1                                        ; $53c5: $fe $e1
    db $e3                                        ; $53c7: $e3
    jp $f33e                                      ; $53c8: $c3 $3e $f3


    cp a                                          ; $53cb: $bf
    ld [hl], b                                    ; $53cc: $70
    ld h, b                                       ; $53cd: $60
    ld h, b                                       ; $53ce: $60
    sub b                                         ; $53cf: $90
    ldh [rIE], a                                  ; $53d0: $e0 $ff
    ld [$14eb], sp                                ; $53d2: $08 $eb $14
    rst $38                                       ; $53d5: $ff
    rst $30                                       ; $53d6: $f7
    add b                                         ; $53d7: $80
    rst $38                                       ; $53d8: $ff

jr_029_53d9:
    sub b                                         ; $53d9: $90
    xor a                                         ; $53da: $af
    ld d, b                                       ; $53db: $50
    ld e, d                                       ; $53dc: $5a
    ld h, l                                       ; $53dd: $65
    rst $38                                       ; $53de: $ff
    db $fd                                        ; $53df: $fd
    ld b, d                                       ; $53e0: $42
    rst $38                                       ; $53e1: $ff
    ld b, b                                       ; $53e2: $40
    rst $38                                       ; $53e3: $ff
    ret z                                         ; $53e4: $c8

    xor e                                         ; $53e5: $ab
    sub h                                         ; $53e6: $94
    rst $38                                       ; $53e7: $ff
    rst $30                                       ; $53e8: $f7
    inc bc                                        ; $53e9: $03
    rst $38                                       ; $53ea: $ff
    dec b                                         ; $53eb: $05
    cp $2b                                        ; $53ec: $fe $2b
    db $fc                                        ; $53ee: $fc
    dec c                                         ; $53ef: $0d
    rst $38                                       ; $53f0: $ff
    ld a, [$fd32]                                 ; $53f1: $fa $32 $fd
    ld d, l                                       ; $53f4: $55
    ld [$d7a8], a                                 ; $53f5: $ea $a8 $d7
    db $f4                                        ; $53f8: $f4
    rst $38                                       ; $53f9: $ff
    adc e                                         ; $53fa: $8b
    rst $20                                       ; $53fb: $e7
    rst $38                                       ; $53fc: $ff
    jp c, $f53d                                   ; $53fd: $da $3d $f5

    ld a, [bc]                                    ; $5400: $0a
    xor d                                         ; $5401: $aa
    rst $38                                       ; $5402: $ff
    ld d, l                                       ; $5403: $55
    ld b, c                                       ; $5404: $41
    cp [hl]                                       ; $5405: $be
    inc d                                         ; $5406: $14
    rst $38                                       ; $5407: $ff
    xor b                                         ; $5408: $a8
    rst $38                                       ; $5409: $ff
    ld [hl], l                                    ; $540a: $75
    rst $38                                       ; $540b: $ff
    rst $38                                       ; $540c: $ff
    sub l                                         ; $540d: $95
    db $eb                                        ; $540e: $eb
    dec bc                                        ; $540f: $0b
    push af                                       ; $5410: $f5
    and l                                         ; $5411: $a5
    ei                                            ; $5412: $fb
    ld c, d                                       ; $5413: $4a
    rst $38                                       ; $5414: $ff
    rst $30                                       ; $5415: $f7
    and [hl]                                      ; $5416: $a6
    ei                                            ; $5417: $fb
    call $97f3                                    ; $5418: $cd $f3 $97
    jp hl                                         ; $541b: $e9


    ld c, a                                       ; $541c: $4f
    ei                                            ; $541d: $fb
    pop af                                        ; $541e: $f1
    push af                                       ; $541f: $f5
    inc e                                         ; $5420: $1c
    ret nz                                        ; $5421: $c0

    ld a, [c]                                     ; $5422: $f2
    db $fd                                        ; $5423: $fd
    xor c                                         ; $5424: $a9
    cp $52                                        ; $5425: $fe $52
    ld a, a                                       ; $5427: $7f
    db $fd                                        ; $5428: $fd
    add c                                         ; $5429: $81
    cp $2a                                        ; $542a: $fe $2a
    push de                                       ; $542c: $d5
    sub l                                         ; $542d: $95
    db $eb                                        ; $542e: $eb
    add l                                         ; $542f: $85
    and b                                         ; $5430: $a0
    cp $fd                                        ; $5431: $fe $fd
    ld [$99df], a                                 ; $5433: $ea $df $99
    sbc a                                         ; $5436: $9f
    ld c, l                                       ; $5437: $4d
    daa                                           ; $5438: $27
    rla                                           ; $5439: $17
    and e                                         ; $543a: $a3
    rst $38                                       ; $543b: $ff
    di                                            ; $543c: $f3
    db $db                                        ; $543d: $db
    pop hl                                        ; $543e: $e1
    xor $f1                                       ; $543f: $ee $f1
    or h                                          ; $5441: $b4
    ei                                            ; $5442: $fb
    ld b, c                                       ; $5443: $41
    rst $38                                       ; $5444: $ff
    rst $38                                       ; $5445: $ff
    rst $18                                       ; $5446: $df
    sbc a                                         ; $5447: $9f
    sbc h                                         ; $5448: $9c
    ld c, a                                       ; $5449: $4f

jr_029_544a:
    ld h, $17                                     ; $544a: $26 $17
    and d                                         ; $544c: $a2
    rst $38                                       ; $544d: $ff
    di                                            ; $544e: $f3
    jp c, $eee1                                   ; $544f: $da $e1 $ee

    ld [hl], c                                    ; $5452: $71
    db $f4                                        ; $5453: $f4
    dec sp                                        ; $5454: $3b
    ld sp, hl                                     ; $5455: $f9
    cp [hl]                                       ; $5456: $be
    ldh a, [$a0]                                  ; $5457: $f0 $a0
    rst $18                                       ; $5459: $df
    nop                                           ; $545a: $00
    cp $00                                        ; $545b: $fe $00
    ei                                            ; $545d: $fb
    push bc                                       ; $545e: $c5
    and b                                         ; $545f: $a0
    ld a, a                                       ; $5460: $7f
    cp $fa                                        ; $5461: $fe $fa
    ldh [rIE], a                                  ; $5463: $e0 $ff
    nop                                           ; $5465: $00
    xor [hl]                                      ; $5466: $ae
    nop                                           ; $5467: $00
    rst $30                                       ; $5468: $f7
    nop                                           ; $5469: $00
    db $dd                                        ; $546a: $dd
    rst $38                                       ; $546b: $ff
    nop                                           ; $546c: $00
    ld l, e                                       ; $546d: $6b
    nop                                           ; $546e: $00
    sub $00                                       ; $546f: $d6 $00
    cp e                                          ; $5471: $bb
    nop                                           ; $5472: $00
    rst $28                                       ; $5473: $ef
    ei                                            ; $5474: $fb
    nop                                           ; $5475: $00
    ld [hl], l                                    ; $5476: $75
    and d                                         ; $5477: $a2
    ld b, d                                       ; $5478: $42
    db $db                                        ; $5479: $db
    inc h                                         ; $547a: $24
    cp $01                                        ; $547b: $fe $01
    push af                                       ; $547d: $f5
    rst $38                                       ; $547e: $ff
    ld a, [bc]                                    ; $547f: $0a
    jp c, $f425                                   ; $5480: $da $25 $f4

    dec bc                                        ; $5483: $0b
    add sp, $17                                   ; $5484: $e8 $17
    add sp, -$01                                  ; $5486: $e8 $ff
    rla                                           ; $5488: $17
    or c                                          ; $5489: $b1
    ld c, [hl]                                    ; $548a: $4e
    jp hl                                         ; $548b: $e9


    ld d, $d2                                     ; $548c: $16 $d2
    inc l                                         ; $548e: $2c

jr_029_548f:
    ld h, e                                       ; $548f: $63
    rst $38                                       ; $5490: $ff
    sbc h                                         ; $5491: $9c
    ret nc                                        ; $5492: $d0

    ld l, $e9                                     ; $5493: $2e $e9
    ld d, $b4                                     ; $5495: $16 $b4
    ld c, e                                       ; $5497: $4b
    rst $28                                       ; $5498: $ef
    rst $38                                       ; $5499: $ff
    db $10                                        ; $549a: $10
    ld a, l                                       ; $549b: $7d
    add d                                         ; $549c: $82
    rst $10                                       ; $549d: $d7
    jr z, jr_029_544a                             ; $549e: $28 $aa

    ld d, l                                       ; $54a0: $55
    ld b, l                                       ; $54a1: $45
    rst $38                                       ; $54a2: $ff
    cp d                                          ; $54a3: $ba
    add b                                         ; $54a4: $80
    ld a, a                                       ; $54a5: $7f
    jr jr_029_548f                                ; $54a6: $18 $e7

    ld l, [hl]                                    ; $54a8: $6e
    add c                                         ; $54a9: $81
    ld a, [hl]                                    ; $54aa: $7e
    rst $38                                       ; $54ab: $ff
    cp l                                          ; $54ac: $bd
    jr @-$17                                      ; $54ad: $18 $e7

    add b                                         ; $54af: $80
    ld a, a                                       ; $54b0: $7f
    ld b, l                                       ; $54b1: $45
    cp d                                          ; $54b2: $ba
    xor d                                         ; $54b3: $aa
    rst $38                                       ; $54b4: $ff
    ld d, l                                       ; $54b5: $55
    rst $10                                       ; $54b6: $d7
    jr z, jr_029_5536                             ; $54b7: $28 $7d

    add d                                         ; $54b9: $82
    rst $28                                       ; $54ba: $ef
    db $10                                        ; $54bb: $10
    ld e, a                                       ; $54bc: $5f
    rst $38                                       ; $54bd: $ff

jr_029_54be:
    add b                                         ; $54be: $80
    rla                                           ; $54bf: $17
    ldh [$83], a                                  ; $54c0: $e0 $83
    ld a, b                                       ; $54c2: $78
    ld d, c                                       ; $54c3: $51
    xor h                                         ; $54c4: $ac
    xor e                                         ; $54c5: $ab
    rst $38                                       ; $54c6: $ff
    ld d, h                                       ; $54c7: $54
    ldh a, [$0e]                                  ; $54c8: $f0 $0e
    xor c                                         ; $54ca: $a9
    ld d, [hl]                                    ; $54cb: $56
    db $f4                                        ; $54cc: $f4
    dec bc                                        ; $54cd: $0b
    db $f4                                        ; $54ce: $f4
    rst $38                                       ; $54cf: $ff
    dec bc                                        ; $54d0: $0b
    xor c                                         ; $54d1: $a9
    ld d, [hl]                                    ; $54d2: $56
    pop af                                        ; $54d3: $f1
    ld c, $aa                                     ; $54d4: $0e $aa
    ld d, h                                       ; $54d6: $54
    ld d, d                                       ; $54d7: $52
    rst $38                                       ; $54d8: $ff
    xor h                                         ; $54d9: $ac
    add h                                         ; $54da: $84
    ld a, b                                       ; $54db: $78
    jr jr_029_54be                                ; $54dc: $18 $e0

    ld l, b                                       ; $54de: $68
    add b                                         ; $54df: $80
    ld a, a                                       ; $54e0: $7f
    rst $38                                       ; $54e1: $ff
    cp a                                          ; $54e2: $bf
    rra                                           ; $54e3: $1f
    rst $28                                       ; $54e4: $ef
    add a                                         ; $54e5: $87
    ld a, a                                       ; $54e6: $7f
    ld d, e                                       ; $54e7: $53
    xor a                                         ; $54e8: $af
    xor e                                         ; $54e9: $ab
    rst $30                                       ; $54ea: $f7
    ld d, l                                       ; $54eb: $55
    pop af                                        ; $54ec: $f1
    rrca                                          ; $54ed: $0f
    ldh [$e1], a                                  ; $54ee: $e0 $e1
    ld d, a                                       ; $54f0: $57
    nop                                           ; $54f1: $00
    adc [hl]                                      ; $54f2: $8e
    nop                                           ; $54f3: $00
    rst $38                                       ; $54f4: $ff
    rla                                           ; $54f5: $17
    nop                                           ; $54f6: $00
    adc d                                         ; $54f7: $8a
    nop                                           ; $54f8: $00
    rlca                                          ; $54f9: $07
    nop                                           ; $54fa: $00
    ld c, d                                       ; $54fb: $4a
    ld b, b                                       ; $54fc: $40
    rst $38                                       ; $54fd: $ff
    dec b                                         ; $54fe: $05
    nop                                           ; $54ff: $00
    ld [bc], a                                    ; $5500: $02
    nop                                           ; $5501: $00
    sub b                                         ; $5502: $90
    nop                                           ; $5503: $00
    adc b                                         ; $5504: $88
    nop                                           ; $5505: $00
    rst $30                                       ; $5506: $f7
    ld de, $8001                                  ; $5507: $11 $01 $80
    db $fc                                        ; $550a: $fc
    ldh [$c0], a                                  ; $550b: $e0 $c0
    ld b, b                                       ; $550d: $40
    ld de, $ff01                                  ; $550e: $11 $01 $ff
    ld [bc], a                                    ; $5511: $02
    ld [bc], a                                    ; $5512: $02
    ld b, l                                       ; $5513: $45
    ld b, b                                       ; $5514: $40
    ld [bc], a                                    ; $5515: $02
    nop                                           ; $5516: $00
    ld b, b                                       ; $5517: $40
    ld b, b                                       ; $5518: $40
    rst $38                                       ; $5519: $ff
    and d                                         ; $551a: $a2
    and b                                         ; $551b: $a0
    ld b, b                                       ; $551c: $40
    ld b, b                                       ; $551d: $40
    and b                                         ; $551e: $a0
    and b                                         ; $551f: $a0
    ld d, l                                       ; $5520: $55
    ld d, l                                       ; $5521: $55
    rst $28                                       ; $5522: $ef
    ld [$41ea], a                                 ; $5523: $ea $ea $41
    ld b, c                                       ; $5526: $41
    db $ec                                        ; $5527: $ec
    ldh [rLYC], a                                 ; $5528: $e0 $45
    inc hl                                        ; $552a: $23
    inc hl                                        ; $552b: $23
    rst $38                                       ; $552c: $ff
    ld b, l                                       ; $552d: $45
    ld b, l                                       ; $552e: $45
    xor e                                         ; $552f: $ab
    xor e                                         ; $5530: $ab
    ld d, a                                       ; $5531: $57
    ld d, a                                       ; $5532: $57
    rst $38                                       ; $5533: $ff
    rst $38                                       ; $5534: $ff
    rst $38                                       ; $5535: $ff

jr_029_5536:
    sub b                                         ; $5536: $90
    nop                                           ; $5537: $00
    adc c                                         ; $5538: $89
    nop                                           ; $5539: $00
    ld de, $8300                                  ; $553a: $11 $00 $83
    nop                                           ; $553d: $00
    rst $38                                       ; $553e: $ff
    ld [de], a                                    ; $553f: $12
    nop                                           ; $5540: $00
    rst $00                                       ; $5541: $c7
    ld b, b                                       ; $5542: $40
    dec e                                         ; $5543: $1d
    nop                                           ; $5544: $00
    ld [hl], a                                    ; $5545: $77
    nop                                           ; $5546: $00
    rst $38                                       ; $5547: $ff
    cp $ff                                        ; $5548: $fe $ff
    cp $fe                                        ; $554a: $fe $fe
    db $f4                                        ; $554c: $f4
    ld a, [$f2f6]                                 ; $554d: $fa $f6 $f2
    rst $30                                       ; $5550: $f7
    pop af                                        ; $5551: $f1
    or $fe                                        ; $5552: $f6 $fe
    db $fc                                        ; $5554: $fc
    ldh [$f4], a                                  ; $5555: $e0 $f4
    ld a, [$7fff]                                 ; $5557: $fa $ff $7f
    ei                                            ; $555a: $fb
    ccf                                           ; $555b: $3f
    ld a, a                                       ; $555c: $7f
    db $fc                                        ; $555d: $fc
    ldh [rIE], a                                  ; $555e: $e0 $ff
    rst $38                                       ; $5560: $ff
    ld a, a                                       ; $5561: $7f
    cpl                                           ; $5562: $2f
    rst $30                                       ; $5563: $f7
    rst $38                                       ; $5564: $ff
    db $eb                                        ; $5565: $eb
    ld h, a                                       ; $5566: $67
    inc hl                                        ; $5567: $23
    rst $28                                       ; $5568: $ef
    ld sp, hl                                     ; $5569: $f9
    cp $fe                                        ; $556a: $fe $fe
    cp $7f                                        ; $556c: $fe $7f
    db $eb                                        ; $556e: $eb
    or $ee                                        ; $556f: $f6 $ee
    and $e3                                       ; $5571: $e6 $e3
    xor $fe                                       ; $5573: $ee $fe
    db $fc                                        ; $5575: $fc
    ldh [$e7], a                                  ; $5576: $e0 $e7
    add sp, -$0a                                  ; $5578: $e8 $f6
    rst $38                                       ; $557a: $ff
    db $ec                                        ; $557b: $ec
    ldh [$fc], a                                  ; $557c: $e0 $fc
    ld [c], a                                     ; $557e: $e2
    ld b, a                                       ; $557f: $47
    inc de                                        ; $5580: $13
    rst $28                                       ; $5581: $ef
    db $dd                                        ; $5582: $dd
    rst $00                                       ; $5583: $c7
    ret c                                         ; $5584: $d8

    ldh [$f5], a                                  ; $5585: $e0 $f5
    ld a, [$bdfc]                                 ; $5587: $fa $fc $bd
    pop hl                                        ; $558a: $e1
    cp $dd                                        ; $558b: $fe $dd
    ld a, a                                       ; $558d: $7f
    cp $f3                                        ; $558e: $fe $f3
    db $fc                                        ; $5590: $fc
    ld d, l                                       ; $5591: $55
    ld [$fdf2], a                                 ; $5592: $ea $f2 $fd
    call nz, $ffe3                                ; $5595: $c4 $e3 $ff
    ccf                                           ; $5598: $3f
    rst $38                                       ; $5599: $ff
    rst $30                                       ; $559a: $f7
    ld a, a                                       ; $559b: $7f
    ld a, $ff                                     ; $559c: $3e $ff
    ld d, a                                       ; $559e: $57
    rst $38                                       ; $559f: $ff
    cp $b8                                        ; $55a0: $fe $b8
    ldh [rIE], a                                  ; $55a2: $e0 $ff
    ld a, [$fdfa]                                 ; $55a4: $fa $fa $fd
    db $fd                                        ; $55a7: $fd
    cp $fc                                        ; $55a8: $fe $fc
    rst $10                                       ; $55aa: $d7
    db $fd                                        ; $55ab: $fd
    ld a, [$0afc]                                 ; $55ac: $fa $fc $0a
    add b                                         ; $55af: $80
    db $fd                                        ; $55b0: $fd
    adc a                                         ; $55b1: $8f
    ret nz                                        ; $55b2: $c0

    cp a                                          ; $55b3: $bf
    ld a, a                                       ; $55b4: $7f
    rst $18                                       ; $55b5: $df
    ld c, a                                       ; $55b6: $4f

jr_029_55b7:
    ccf                                           ; $55b7: $3f
    rst $18                                       ; $55b8: $df
    ccf                                           ; $55b9: $3f
    sbc a                                         ; $55ba: $9f
    db $e4                                        ; $55bb: $e4
    ldh [$ef], a                                  ; $55bc: $e0 $ef
    rst $38                                       ; $55be: $ff
    or a                                          ; $55bf: $b7
    ld e, a                                       ; $55c0: $5f
    ccf                                           ; $55c1: $3f
    cp $7f                                        ; $55c2: $fe $7f
    pop hl                                        ; $55c4: $e1
    db $fd                                        ; $55c5: $fd
    cp $ee                                        ; $55c6: $fe $ee
    ld h, b                                       ; $55c8: $60
    cp $fe                                        ; $55c9: $fe $fe
    ret c                                         ; $55cb: $d8

    ldh [rIE], a                                  ; $55cc: $e0 $ff
    db $fc                                        ; $55ce: $fc
    xor a                                         ; $55cf: $af
    sbc a                                         ; $55d0: $9f
    ld l, a                                       ; $55d1: $6f
    rra                                           ; $55d2: $1f
    rst $00                                       ; $55d3: $c7
    cp e                                          ; $55d4: $bb
    ld a, a                                       ; $55d5: $7f
    rra                                           ; $55d6: $1f
    sbc $60                                       ; $55d7: $de $60
    cp a                                          ; $55d9: $bf
    ld a, a                                       ; $55da: $7f
    rst $08                                       ; $55db: $cf
    ret c                                         ; $55dc: $d8

    ldh [$f9], a                                  ; $55dd: $e0 $f9
    db $fd                                        ; $55df: $fd
    cp $c8                                        ; $55e0: $fe $c8
    db $e3                                        ; $55e2: $e3
    cp $fe                                        ; $55e3: $fe $fe
    rst $28                                       ; $55e5: $ef
    cp $7e                                        ; $55e6: $fe $7e
    db $fd                                        ; $55e8: $fd
    rst $18                                       ; $55e9: $df
    or $ff                                        ; $55ea: $f6 $ff
    sbc a                                         ; $55ec: $9f
    rst $38                                       ; $55ed: $ff
    cpl                                           ; $55ee: $2f
    ld c, d                                       ; $55ef: $4a
    pop bc                                        ; $55f0: $c1
    ccf                                           ; $55f1: $3f
    rst $20                                       ; $55f2: $e7
    rst $28                                       ; $55f3: $ef
    sbc a                                         ; $55f4: $9f
    rst $28                                       ; $55f5: $ef
    rra                                           ; $55f6: $1f
    call $e2d8                                    ; $55f7: $cd $d8 $e2
    rst $08                                       ; $55fa: $cf
    rst $10                                       ; $55fb: $d7
    db $e3                                        ; $55fc: $e3
    rst $38                                       ; $55fd: $ff
    db $db                                        ; $55fe: $db
    add e                                         ; $55ff: $83
    cp e                                          ; $5600: $bb
    ret                                           ; $5601: $c9


    or c                                          ; $5602: $b1
    pop hl                                        ; $5603: $e1
    sub l                                         ; $5604: $95
    ld [hl], $f7                                  ; $5605: $36 $f7
    nop                                           ; $5607: $00
    and c                                         ; $5608: $a1
    add c                                         ; $5609: $81
    jr nz, @-$3d                                  ; $560a: $20 $c1

    rst $28                                       ; $560c: $ef
    rst $08                                       ; $560d: $cf
    rst $08                                       ; $560e: $cf
    rst $38                                       ; $560f: $ff
    rst $38                                       ; $5610: $ff
    sub a                                         ; $5611: $97
    and a                                         ; $5612: $a7
    db $db                                        ; $5613: $db
    and e                                         ; $5614: $a3
    sbc a                                         ; $5615: $9f
    db $e3                                        ; $5616: $e3
    ccf                                           ; $5617: $3f
    ld b, e                                       ; $5618: $43
    rst $38                                       ; $5619: $ff
    ei                                            ; $561a: $fb
    ei                                            ; $561b: $fb
    cp $fe                                        ; $561c: $fe $fe
    ld a, a                                       ; $561e: $7f
    ld a, [hl]                                    ; $561f: $7e
    ld hl, sp-$10                                 ; $5620: $f8 $f0
    rst $38                                       ; $5622: $ff
    and [hl]                                      ; $5623: $a6
    sbc d                                         ; $5624: $9a
    pop hl                                        ; $5625: $e1
    add c                                         ; $5626: $81
    daa                                           ; $5627: $27
    daa                                           ; $5628: $27
    rst $38                                       ; $5629: $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    sub c                                         ; $562c: $91
    ld b, c                                       ; $562d: $41
    ld b, d                                       ; $562e: $42
    add b                                         ; $562f: $80
    db $e3                                        ; $5630: $e3
    jr nz, jr_029_55b7                            ; $5631: $20 $84

    nop                                           ; $5633: $00
    ld a, e                                       ; $5634: $7b
    or e                                          ; $5635: $b3
    or e                                          ; $5636: $b3
    adc [hl]                                      ; $5637: $8e
    ldh [$fe], a                                  ; $5638: $e0 $fe
    cp a                                          ; $563a: $bf
    cp a                                          ; $563b: $bf
    nop                                           ; $563c: $00
    rst $38                                       ; $563d: $ff
    db $ec                                        ; $563e: $ec
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    pop af                                        ; $5642: $f1
    ld d, c                                       ; $5643: $51
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    rst $38                                       ; $5647: $ff
    db $f4                                        ; $5648: $f4
    di                                            ; $5649: $f3
    ld e, h                                       ; $564a: $5c
    ld e, c                                       ; $564b: $59
    ld e, c                                       ; $564c: $59
    ld e, h                                       ; $564d: $5c
    ldh a, [$da]                                  ; $564e: $f0 $da
    rst $38                                       ; $5650: $ff
    ret nc                                        ; $5651: $d0

    jp hl                                         ; $5652: $e9


    pop de                                        ; $5653: $d1
    add sp, -$3d                                  ; $5654: $e8 $c3
    ldh [$5a], a                                  ; $5656: $e0 $5a
    ld e, b                                       ; $5658: $58
    ld e, d                                       ; $5659: $5a
    ld d, [hl]                                    ; $565a: $56
    cp b                                          ; $565b: $b8
    cp [hl]                                       ; $565c: $be
    pop hl                                        ; $565d: $e1
    add sp, -$16                                  ; $565e: $e8 $ea
    ld sp, hl                                     ; $5660: $f9

Call_029_5661:
    ld hl, sp+$57                                 ; $5661: $f8 $57
    ld d, h                                       ; $5663: $54
    ld d, a                                       ; $5664: $57
    di                                            ; $5665: $f3
    add sp, $5a                                   ; $5666: $e8 $5a
    sbc a                                         ; $5668: $9f
    ld e, b                                       ; $5669: $58
    ld d, [hl]                                    ; $566a: $56
    ld d, h                                       ; $566b: $54
    ld d, [hl]                                    ; $566c: $56
    ld e, d                                       ; $566d: $5a
    db $ed                                        ; $566e: $ed
    pop hl                                        ; $566f: $e1
    add sp, -$1f                                  ; $5670: $e8 $e1
    ld l, b                                       ; $5672: $68
    db $fd                                        ; $5673: $fd
    ld l, c                                       ; $5674: $69
    ld e, c                                       ; $5675: $59
    rst $38                                       ; $5676: $ff
    ld e, e                                       ; $5677: $5b
    ld e, b                                       ; $5678: $58
    ld e, e                                       ; $5679: $5b
    ld d, c                                       ; $567a: $51
    ld d, c                                       ; $567b: $51
    ld l, a                                       ; $567c: $6f
    ld a, [hl]                                    ; $567d: $7e
    sbc b                                         ; $567e: $98
    ldh [$62], a                                  ; $567f: $e0 $62
    ld h, e                                       ; $5681: $63
    ld d, c                                       ; $5682: $51
    ld e, h                                       ; $5683: $5c
    ld d, [hl]                                    ; $5684: $56
    ld e, e                                       ; $5685: $5b
    pop bc                                        ; $5686: $c1
    ldh [$b3], a                                  ; $5687: $e0 $b3
    ld e, b                                       ; $5689: $58
    ld e, e                                       ; $568a: $5b
    xor l                                         ; $568b: $ad
    pop hl                                        ; $568c: $e1
    add sp, -$1f                                  ; $568d: $e8 $e1
    ld l, d                                       ; $568f: $6a
    ld l, e                                       ; $5690: $6b
    ld d, d                                       ; $5691: $52
    db $f4                                        ; $5692: $f4
    ld e, h                                       ; $5693: $5c
    di                                            ; $5694: $f3
    ld e, c                                       ; $5695: $59
    ld d, [hl]                                    ; $5696: $56
    ld e, b                                       ; $5697: $58
    ldh [rNR21], a                                ; $5698: $e0 $16
    ld [c], a                                     ; $569a: $e2
    ld e, [hl]                                    ; $569b: $5e
    ld e, l                                       ; $569c: $5d
    ld e, [hl]                                    ; $569d: $5e
    ld d, c                                       ; $569e: $51
    ld e, e                                       ; $569f: $5b
    ld [hl], b                                    ; $56a0: $70
    ld [hl], c                                    ; $56a1: $71
    ld e, b                                       ; $56a2: $58
    ldh [$64], a                                  ; $56a3: $e0 $64
    ld h, l                                       ; $56a5: $65
    ld [hl], h                                    ; $56a6: $74
    ldh [$61], a                                  ; $56a7: $e0 $61
    or c                                          ; $56a9: $b1
    ldh [$67], a                                  ; $56aa: $e0 $67
    ld e, l                                       ; $56ac: $5d
    ld h, c                                       ; $56ad: $61
    ld d, [hl]                                    ; $56ae: $56
    xor l                                         ; $56af: $ad
    ldh [$e8], a                                  ; $56b0: $e0 $e8
    pop hl                                        ; $56b2: $e1
    ld l, h                                       ; $56b3: $6c
    ld l, l                                       ; $56b4: $6d
    ld b, b                                       ; $56b5: $40
    pop hl                                        ; $56b6: $e1
    ld e, h                                       ; $56b7: $5c
    and a                                         ; $56b8: $a7
    ldh [rHDMA2], a                               ; $56b9: $e0 $52
    db $ed                                        ; $56bb: $ed
    ld d, a                                       ; $56bc: $57
    ld d, h                                       ; $56bd: $54
    ld e, d                                       ; $56be: $5a
    sub a                                         ; $56bf: $97
    pop hl                                        ; $56c0: $e1
    ld e, d                                       ; $56c1: $5a
    ld b, l                                       ; $56c2: $45
    ldh [$b7], a                                  ; $56c3: $e0 $b7
    ld h, b                                       ; $56c5: $60
    ld e, a                                       ; $56c6: $5f
    ld h, b                                       ; $56c7: $60
    ei                                            ; $56c8: $fb
    jp Jump_029_6766                              ; $56c9: $c3 $66 $67


    inc [hl]                                      ; $56cc: $34
    ldh [rHDMA5], a                               ; $56cd: $e0 $55
    ld a, a                                       ; $56cf: $7f
    ld h, c                                       ; $56d0: $61
    ld e, l                                       ; $56d1: $5d
    ld h, c                                       ; $56d2: $61
    ld d, h                                       ; $56d3: $54
    ld d, h                                       ; $56d4: $54
    ld d, a                                       ; $56d5: $57
    ld e, [hl]                                    ; $56d6: $5e
    add sp, -$1c                                  ; $56d7: $e8 $e4
    and b                                         ; $56d9: $a0
    ld bc, $a7e2                                  ; $56da: $01 $e2 $a7
    ldh [$f9], a                                  ; $56dd: $e0 $f9
    add $52                                       ; $56df: $c6 $52
    ld [c], a                                     ; $56e1: $e2
    dec bc                                        ; $56e2: $0b
    pop hl                                        ; $56e3: $e1

Jump_029_56e4:
    ld e, e                                       ; $56e4: $5b
    rla                                           ; $56e5: $17
    pop hl                                        ; $56e6: $e1
    ld e, e                                       ; $56e7: $5b
    push bc                                       ; $56e8: $c5
    ld d, [hl]                                    ; $56e9: $56
    ld [hl], d                                    ; $56ea: $72
    push hl                                       ; $56eb: $e5
    ld d, h                                       ; $56ec: $54
    or $e2                                        ; $56ed: $f6 $e2
    db $eb                                        ; $56ef: $eb
    pop hl                                        ; $56f0: $e1
    ld b, b                                       ; $56f1: $40
    ldh [$58], a                                  ; $56f2: $e0 $58
    ld e, e                                       ; $56f4: $5b
    ret nz                                        ; $56f5: $c0

    push bc                                       ; $56f6: $c5
    db $e4                                        ; $56f7: $e4
    and h                                         ; $56f8: $a4
    jp $e0a7                                      ; $56f9: $c3 $a7 $e0


    ld l, d                                       ; $56fc: $6a
    add $52                                       ; $56fd: $c6 $52
    pop hl                                        ; $56ff: $e1
    dec bc                                        ; $5700: $0b
    pop hl                                        ; $5701: $e1
    ld d, [hl]                                    ; $5702: $56
    ld h, c                                       ; $5703: $61
    push af                                       ; $5704: $f5
    ld e, l                                       ; $5705: $5d
    rlca                                          ; $5706: $07
    ldh [$61], a                                  ; $5707: $e0 $61
    call nz, Call_029_5cc2                        ; $5709: $c4 $c2 $5c
    ld d, [hl]                                    ; $570c: $56
    ld d, h                                       ; $570d: $54
    ld d, l                                       ; $570e: $55
    inc d                                         ; $570f: $14
    or h                                          ; $5710: $b4
    ldh [$e2], a                                  ; $5711: $e0 $e2
    ld [c], a                                     ; $5713: $e2
    ld e, e                                       ; $5714: $5b
    jp Jump_029_5de0                              ; $5715: $c3 $e0 $5d


    call c, $e7e3                                 ; $5718: $dc $e3 $e7
    ld [c], a                                     ; $571b: $e2
    ld [hl], l                                    ; $571c: $75
    jp nz, $11bc                                  ; $571d: $c2 $bc $11

    add sp, $6a                                   ; $5720: $e8 $6a
    db $e4                                        ; $5722: $e4
    ld e, [hl]                                    ; $5723: $5e
    ld d, a                                       ; $5724: $57
    ld d, h                                       ; $5725: $54
    ld d, h                                       ; $5726: $54
    ld d, [hl]                                    ; $5727: $56
    ldh [rHDMA5], a                               ; $5728: $e0 $55
    ld [c], a                                     ; $572a: $e2
    add h                                         ; $572b: $84
    ret nz                                        ; $572c: $c0

    ld l, [hl]                                    ; $572d: $6e
    or e                                          ; $572e: $b3
    ldh [$cc], a                                  ; $572f: $e0 $cc
    pop bc                                        ; $5731: $c1
    xor b                                         ; $5732: $a8
    pop hl                                        ; $5733: $e1
    ld h, b                                       ; $5734: $60
    ld e, a                                       ; $5735: $5f
    ld e, [hl]                                    ; $5736: $5e
    ld a, [bc]                                    ; $5737: $0a
    jp Jump_029_5fe0                              ; $5738: $c3 $e0 $5f


    ld b, [hl]                                    ; $573b: $46
    ld [c], a                                     ; $573c: $e2
    ld l, [hl]                                    ; $573d: $6e
    sbc d                                         ; $573e: $9a
    pop hl                                        ; $573f: $e1
    and a                                         ; $5740: $a7
    pop hl                                        ; $5741: $e1
    add hl, sp                                    ; $5742: $39
    ret nz                                        ; $5743: $c0

    ld de, $42e8                                  ; $5744: $11 $e8 $42
    cpl                                           ; $5747: $2f
    jp $9860                                      ; $5748: $c3 $60 $98


    ldh [rHDMA5], a                               ; $574b: $e0 $55
    ld [c], a                                     ; $574d: $e2
    adc d                                         ; $574e: $8a
    ld [c], a                                     ; $574f: $e2
    call z, Call_029_5ec1                         ; $5750: $cc $c1 $5e
    ld [de], a                                    ; $5753: $12
    db $e3                                        ; $5754: $e3
    ld bc, $c360                                  ; $5755: $01 $60 $c3
    db $e3                                        ; $5758: $e3
    add hl, bc                                    ; $5759: $09
    jp $e0e7                                      ; $575a: $c3 $e7 $e0


    dec de                                        ; $575d: $1b
    pop hl                                        ; $575e: $e1
    ld de, $38ed                                  ; $575f: $11 $ed $38
    db $e3                                        ; $5762: $e3
    ld d, l                                       ; $5763: $55
    db $e3                                        ; $5764: $e3
    nop                                           ; $5765: $00
    adc d                                         ; $5766: $8a
    ld [c], a                                     ; $5767: $e2
    ld a, l                                       ; $5768: $7d
    ret nz                                        ; $5769: $c0

    cp e                                          ; $576a: $bb
    ret nz                                        ; $576b: $c0

    or a                                          ; $576c: $b7
    and a                                         ; $576d: $a7
    add hl, bc                                    ; $576e: $09
    push bc                                       ; $576f: $c5

jr_029_5770:
    rst $20                                       ; $5770: $e7
    ldh [rNR43], a                                ; $5771: $e0 $22
    ret nz                                        ; $5773: $c0

    or h                                          ; $5774: $b4
    ret nz                                        ; $5775: $c0

    nop                                           ; $5776: $00
    ld de, $ede8                                  ; $5777: $11 $e8 $ed
    and h                                         ; $577a: $a4
    sbc b                                         ; $577b: $98
    ldh [rHDMA5], a                               ; $577c: $e0 $55
    ld [c], a                                     ; $577e: $e2
    sbc h                                         ; $577f: $9c
    jp nz, $c395                                  ; $5780: $c2 $95 $c3

    or a                                          ; $5783: $b7
    and d                                         ; $5784: $a2
    ld d, h                                       ; $5785: $54
    jp nz, Jump_000_0900                          ; $5786: $c2 $00 $09

    pop bc                                        ; $5789: $c1
    xor $a1                                       ; $578a: $ee $a1
    jr nc, jr_029_5770                            ; $578c: $30 $e2

    ld h, a                                       ; $578e: $67
    pop hl                                        ; $578f: $e1
    ld de, $ede8                                  ; $5790: $11 $e8 $ed
    and a                                         ; $5793: $a7
    ld d, l                                       ; $5794: $55
    db $e4                                        ; $5795: $e4
    sbc h                                         ; $5796: $9c
    and [hl]                                      ; $5797: $a6
    ld b, $b7                                     ; $5798: $06 $b7
    and d                                         ; $579a: $a2
    ld h, h                                       ; $579b: $64
    ld h, l                                       ; $579c: $65
    ld [$09e0], sp                                ; $579d: $08 $e0 $09
    ret nz                                        ; $57a0: $c0

jr_029_57a1:
    xor $a0                                       ; $57a1: $ee $a0
    add hl, bc                                    ; $57a3: $09
    jp nz, $c33a                                  ; $57a4: $c2 $3a $c3

    ld [$e811], sp                                ; $57a7: $08 $11 $e8
    db $ed                                        ; $57aa: $ed
    and e                                         ; $57ab: $a3
    add hl, hl                                    ; $57ac: $29
    and [hl]                                      ; $57ad: $a6
    ld l, a                                       ; $57ae: $6f
    sbc h                                         ; $57af: $9c
    and a                                         ; $57b0: $a7
    ld h, l                                       ; $57b1: $65
    jp nz, $c154                                  ; $57b2: $c2 $54 $c1

    add hl, bc                                    ; $57b5: $09
    ret nc                                        ; $57b6: $d0

    ret nz                                        ; $57b7: $c0

    ld de, $ede9                                  ; $57b8: $11 $e9 $ed
    add l                                         ; $57bb: $85
    xor c                                         ; $57bc: $a9
    and c                                         ; $57bd: $a1
    add a                                         ; $57be: $87
    and b                                         ; $57bf: $a0
    sbc h                                         ; $57c0: $9c
    and c                                         ; $57c1: $a1
    sub h                                         ; $57c2: $94
    ret nz                                        ; $57c3: $c0

    ld h, d                                       ; $57c4: $62
    ld h, e                                       ; $57c5: $63
    ld d, $cf                                     ; $57c6: $16 $cf
    and h                                         ; $57c8: $a4
    ld d, b                                       ; $57c9: $50
    ld c, [hl]                                    ; $57ca: $4e
    rst $38                                       ; $57cb: $ff
    ld [c], a                                     ; $57cc: $e2
    ld d, b                                       ; $57cd: $50
    or l                                          ; $57ce: $b5
    db $e4                                        ; $57cf: $e4
    db $fd                                        ; $57d0: $fd
    add e                                         ; $57d1: $83
    ld de, $f0e9                                  ; $57d2: $11 $e9 $f0
    adc a                                         ; $57d5: $8f
    add l                                         ; $57d6: $85
    xor c                                         ; $57d7: $a9
    xor c                                         ; $57d8: $a9
    sbc e                                         ; $57d9: $9b
    and h                                         ; $57da: $a4
    ld sp, hl                                     ; $57db: $f9
    add b                                         ; $57dc: $80
    ld d, b                                       ; $57dd: $50
    ld c, l                                       ; $57de: $4d
    add hl, hl                                    ; $57df: $29
    jr z, jr_029_57a1                             ; $57e0: $28 $bf

    add hl, hl                                    ; $57e2: $29
    jr z, jr_029_580d                             ; $57e3: $28 $28

    jr z, jr_029_5834                             ; $57e5: $28 $4d

    ld d, b                                       ; $57e7: $50
    add l                                         ; $57e8: $85
    add d                                         ; $57e9: $82
    ld l, [hl]                                    ; $57ea: $6e
    ld c, b                                       ; $57eb: $48
    db $fd                                        ; $57ec: $fd
    add [hl]                                      ; $57ed: $86
    ld h, [hl]                                    ; $57ee: $66
    call nz, $a594                                ; $57ef: $c4 $94 $a5
    ld l, [hl]                                    ; $57f2: $6e
    ld d, b                                       ; $57f3: $50
    and c                                         ; $57f4: $a1
    sub h                                         ; $57f5: $94
    ld [c], a                                     ; $57f6: $e2
    ld d, e                                       ; $57f7: $53
    sub d                                         ; $57f8: $92
    and $00                                       ; $57f9: $e6 $00
    ld sp, hl                                     ; $57fb: $f9
    add b                                         ; $57fc: $80
    pop bc                                        ; $57fd: $c1
    db $e3                                        ; $57fe: $e3
    cp a                                          ; $57ff: $bf
    ld [c], a                                     ; $5800: $e2
    add sp, -$1d                                  ; $5801: $e8 $e3
    db $fd                                        ; $5803: $fd
    add b                                         ; $5804: $80
    or l                                          ; $5805: $b5
    jp nz, Jump_029_65e2                          ; $5806: $c2 $e2 $65

    sub h                                         ; $5809: $94
    and [hl]                                      ; $580a: $a6
    ld b, h                                       ; $580b: $44
    ld d, l                                       ; $580c: $55

jr_029_580d:
    pop hl                                        ; $580d: $e1
    db $d3                                        ; $580e: $d3
    db $e4                                        ; $580f: $e4
    add hl, hl                                    ; $5810: $29
    sub d                                         ; $5811: $92
    push hl                                       ; $5812: $e5
    xor $e8                                       ; $5813: $ee $e8
    ld a, d                                       ; $5815: $7a
    ldh [$29], a                                  ; $5816: $e0 $29
    add sp, -$1d                                  ; $5818: $e8 $e3
    sub b                                         ; $581a: $90
    or l                                          ; $581b: $b5
    jp $64d9                                      ; $581c: $c3 $d9 $64


    sub h                                         ; $581f: $94
    and l                                         ; $5820: $a5
    ld a, [de]                                    ; $5821: $1a
    ld [c], a                                     ; $5822: $e2
    ld c, l                                       ; $5823: $4d
    db $dd                                        ; $5824: $dd
    ldh [$fd], a                                  ; $5825: $e0 $fd
    db $e3                                        ; $5827: $e3
    jr z, jr_029_582f                             ; $5828: $28 $05

    ld c, l                                       ; $582a: $4d
    ld a, [bc]                                    ; $582b: $0a
    ld [c], a                                     ; $582c: $e2
    ld d, e                                       ; $582d: $53
    pop bc                                        ; $582e: $c1

jr_029_582f:
    jp hl                                         ; $582f: $e9


    dec sp                                        ; $5830: $3b
    ldh [$e8], a                                  ; $5831: $e0 $e8
    ld [c], a                                     ; $5833: $e2

jr_029_5834:
    scf                                           ; $5834: $37
    ldh [$65], a                                  ; $5835: $e0 $65
    add d                                         ; $5837: $82
    nop                                           ; $5838: $00
    reti                                          ; $5839: $d9


    ld h, d                                       ; $583a: $62
    sub h                                         ; $583b: $94
    and h                                         ; $583c: $a4
    push bc                                       ; $583d: $c5
    add sp, -$41                                  ; $583e: $e8 $bf
    db $e4                                        ; $5840: $e4
    cp $f3                                        ; $5841: $fe $f3
    inc [hl]                                      ; $5843: $34
    pop hl                                        ; $5844: $e1
    or $c0                                        ; $5845: $f6 $c0
    ld h, l                                       ; $5847: $65
    add b                                         ; $5848: $80
    nop                                           ; $5849: $00
    reti                                          ; $584a: $d9


    ld h, h                                       ; $584b: $64
    sub h                                         ; $584c: $94
    and h                                         ; $584d: $a4
    push bc                                       ; $584e: $c5
    db $ed                                        ; $584f: $ed
    cp a                                          ; $5850: $bf
    push af                                       ; $5851: $f5
    di                                            ; $5852: $f3
    jp nz, $c2b5                                  ; $5853: $c2 $b5 $c2

    reti                                          ; $5856: $d9


    ld h, l                                       ; $5857: $65
    add hl, hl                                    ; $5858: $29
    add e                                         ; $5859: $83
    or h                                          ; $585a: $b4
    ld b, a                                       ; $585b: $47
    and $48                                       ; $585c: $e6 $48
    ld [c], a                                     ; $585e: $e2
    ld c, l                                       ; $585f: $4d
    add d                                         ; $5860: $82
    db $eb                                        ; $5861: $eb
    ld l, $30                                     ; $5862: $2e $30
    rst $38                                       ; $5864: $ff
    ldh [$2b], a                                  ; $5865: $e0 $2b
    dec e                                         ; $5867: $1d
    ld a, [hl+]                                   ; $5868: $2a
    pop bc                                        ; $5869: $c1
    push hl                                       ; $586a: $e5
    jr z, jr_029_5896                             ; $586b: $28 $29

    ld d, d                                       ; $586d: $52
    ld e, h                                       ; $586e: $5c
    and [hl]                                      ; $586f: $a6
    pop af                                        ; $5870: $f1
    ld b, l                                       ; $5871: $45
    inc bc                                        ; $5872: $03
    push hl                                       ; $5873: $e5
    ld a, [$c35a]                                 ; $5874: $fa $5a $c3
    ld d, b                                       ; $5877: $50
    cp a                                          ; $5878: $bf
    ld [$012e], a                                 ; $5879: $ea $2e $01
    ld bc, $4b4b                                  ; $587c: $01 $4b $4b
    cpl                                           ; $587f: $2f
    ld bc, $0101                                  ; $5880: $01 $01 $01
    ld l, $b6                                     ; $5883: $2e $b6
    add $4f                                       ; $5885: $c6 $4f
    cp d                                          ; $5887: $ba
    ld d, c                                       ; $5888: $51
    ret c                                         ; $5889: $d8

    and d                                         ; $588a: $a2
    push af                                       ; $588b: $f5
    ld d, b                                       ; $588c: $50
    sbc $41                                       ; $588d: $de $41
    ld l, a                                       ; $588f: $6f
    cp a                                          ; $5890: $bf
    rst $20                                       ; $5891: $e7
    ld a, [hl+]                                   ; $5892: $2a
    dec hl                                        ; $5893: $2b
    jr nc, jr_029_58c6                            ; $5894: $30 $30

jr_029_5896:
    ld a, a                                       ; $5896: $7f
    ld bc, $4201                                  ; $5897: $01 $01 $42
    inc a                                         ; $589a: $3c
    inc a                                         ; $589b: $3c
    ld b, e                                       ; $589c: $43
    ld b, h                                       ; $589d: $44
    cp a                                          ; $589e: $bf
    ldh [rP1], a                                  ; $589f: $e0 $00
    ld hl, sp-$5f                                 ; $58a1: $f8 $a1
    ld [hl-], a                                   ; $58a3: $32
    pop bc                                        ; $58a4: $c1
    ret nz                                        ; $58a5: $c0

    ldh [$b6], a                                  ; $58a6: $e0 $b6
    ld b, e                                       ; $58a8: $43
    inc h                                         ; $58a9: $24
    ld c, a                                       ; $58aa: $4f
    sbc $40                                       ; $58ab: $de $40
    inc bc                                        ; $58ad: $03
    ld h, c                                       ; $58ae: $61
    ld a, [hl]                                    ; $58af: $7e
    db $e4                                        ; $58b0: $e4
    ld [hl], b                                    ; $58b1: $70
    add l                                         ; $58b2: $85
    ldh [$83], a                                  ; $58b3: $e0 $83
    ldh [$c1], a                                  ; $58b5: $e0 $c1
    ldh [$fe], a                                  ; $58b7: $e0 $fe
    ldh [rSCY], a                                 ; $58b9: $e0 $42
    ld bc, $3c01                                  ; $58bb: $01 $01 $3c
    ld [c], a                                     ; $58be: $e2
    ld d, b                                       ; $58bf: $50
    add b                                         ; $58c0: $80
    ld [c], a                                     ; $58c1: $e2
    cp c                                          ; $58c2: $b9
    and d                                         ; $58c3: $a2
    bit 1, b                                      ; $58c4: $cb $48

jr_029_58c6:
    ld [$6e44], sp                                ; $58c6: $08 $44 $6e
    pop af                                        ; $58c9: $f1
    add [hl]                                      ; $58ca: $86
    ld c, a                                       ; $58cb: $4f
    pop bc                                        ; $58cc: $c1
    db $e4                                        ; $58cd: $e4
    cp a                                          ; $58ce: $bf
    ld b, h                                       ; $58cf: $44
    ld b, e                                       ; $58d0: $43
    ld c, c                                       ; $58d1: $49
    ld b, l                                       ; $58d2: $45
    ld b, a                                       ; $58d3: $47
    ld b, l                                       ; $58d4: $45
    db $fc                                        ; $58d5: $fc
    ldh [rBGP], a                                 ; $58d6: $e0 $47
    ld bc, $bf45                                  ; $58d8: $01 $45 $bf
    ldh [$7d], a                                  ; $58db: $e0 $7d
    pop hl                                        ; $58dd: $e1
    ld a, [hl]                                    ; $58de: $7e
    jp Jump_029_41b6                              ; $58df: $c3 $b6 $41


    cp d                                          ; $58e2: $ba
    ld l, e                                       ; $58e3: $6b
    ld [$4648], sp                                ; $58e4: $08 $48 $46
    ld b, b                                       ; $58e7: $40
    push af                                       ; $58e8: $f5
    ld c, a                                       ; $58e9: $4f
    pop de                                        ; $58ea: $d1
    and b                                         ; $58eb: $a0
    dec l                                         ; $58ec: $2d
    ld b, [hl]                                    ; $58ed: $46
    ld [c], a                                     ; $58ee: $e2
    ld b, c                                       ; $58ef: $41
    dec sp                                        ; $58f0: $3b
    dec sp                                        ; $58f1: $3b
    dec sp                                        ; $58f2: $3b
    rst $38                                       ; $58f3: $ff
    scf                                           ; $58f4: $37
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    scf                                           ; $58f7: $37
    dec sp                                        ; $58f8: $3b
    ld b, [hl]                                    ; $58f9: $46
    ld d, $17                                     ; $58fa: $16 $17
    rlca                                          ; $58fc: $07
    ld bc, $2d01                                  ; $58fd: $01 $01 $2d
    dec a                                         ; $5900: $3d
    push bc                                       ; $5901: $c5
    dec e                                         ; $5902: $1d
    ld b, b                                       ; $5903: $40
    bit 1, e                                      ; $5904: $cb $4b
    or [hl]                                       ; $5906: $b6
    ld b, h                                       ; $5907: $44
    sbc a                                         ; $5908: $9f
    ld b, h                                       ; $5909: $44
    sbc l                                         ; $590a: $9d
    ld c, a                                       ; $590b: $4f
    sub e                                         ; $590c: $93
    and b                                         ; $590d: $a0
    inc l                                         ; $590e: $2c
    ld bc, $c13f                                  ; $590f: $01 $3f $c1
    db $e3                                        ; $5912: $e3
    ret nz                                        ; $5913: $c0

    db $e3                                        ; $5914: $e3
    dec sp                                        ; $5915: $3b
    ld e, a                                       ; $5916: $5f
    dec sp                                        ; $5917: $3b
    inc e                                         ; $5918: $1c
    add hl, de                                    ; $5919: $19
    ld bc, $fc2c                                  ; $591a: $01 $2c $fc
    and e                                         ; $591d: $a3
    ld c, a                                       ; $591e: $4f
    dec e                                         ; $591f: $1d
    ld b, c                                       ; $5920: $41
    ret nc                                        ; $5921: $d0

    bit 1, d                                      ; $5922: $cb $4a

jr_029_5924:
    or [hl]                                       ; $5924: $b6
    ld b, l                                       ; $5925: $45
    ld e, a                                       ; $5926: $5f
    ld hl, $4046                                  ; $5927: $21 $46 $40
    ld d, d                                       ; $592a: $52
    jp z, Jump_000_2f80                           ; $592b: $ca $80 $2f

    ld bc, $3d6f                                  ; $592e: $01 $6f $3d
    inc a                                         ; $5931: $3c
    ld a, $38                                     ; $5932: $3e $38
    ret nz                                        ; $5934: $c0

    add sp, $3b                                   ; $5935: $e8 $3b
    add hl, bc                                    ; $5937: $09
    ld a, a                                       ; $5938: $7f
    pop hl                                        ; $5939: $e1
    ldh [$7e], a                                  ; $593a: $e0 $7e
    add $cb                                       ; $593c: $c6 $cb
    ld c, b                                       ; $593e: $48
    cpl                                           ; $593f: $2f
    jp z, $40d6                                   ; $5940: $ca $d6 $40

    ld a, $c2                                     ; $5943: $3e $c2
    cpl                                           ; $5945: $2f
    ld bc, $274a                                  ; $5946: $01 $4a $27
    inc a                                         ; $5949: $3c
    ld b, b                                       ; $594a: $40
    nop                                           ; $594b: $00
    cp a                                          ; $594c: $bf
    pop hl                                        ; $594d: $e1
    ret nz                                        ; $594e: $c0

    push hl                                       ; $594f: $e5
    jr jr_029_59d1                                ; $5950: $18 $7f

    ld [c], a                                     ; $5952: $e2
    ld a, [hl]                                    ; $5953: $7e
    jp nz, Jump_029_62e0                          ; $5954: $c2 $e0 $62

    jr nz, jr_029_5924                            ; $5957: $20 $cb

    ld c, c                                       ; $5959: $49
    xor h                                         ; $595a: $ac
    inc hl                                        ; $595b: $23
    call nz, $ff05                                ; $595c: $c4 $05 $ff
    and e                                         ; $595f: $a3

jr_029_5960:
    cpl                                           ; $5960: $2f
    ld bc, $8742                                  ; $5961: $01 $42 $87
    ld a, $00                                     ; $5964: $3e $00
    nop                                           ; $5966: $00
    cp a                                          ; $5967: $bf
    pop hl                                        ; $5968: $e1
    nop                                           ; $5969: $00
    ldh [$78], a                                  ; $596a: $e0 $78
    ld [c], a                                     ; $596c: $e2

jr_029_596d:
    ld a, a                                       ; $596d: $7f
    ldh [$2f], a                                  ; $596e: $e0 $2f
    add b                                         ; $5970: $80
    cp $a4                                        ; $5971: $fe $a4
    cp e                                          ; $5973: $bb
    ld hl, $48cb                                  ; $5974: $21 $cb $48
    xor h                                         ; $5977: $ac
    ld hl, $26c9                                  ; $5978: $21 $c9 $26
    jp nz, Jump_029_42c1                          ; $597b: $c2 $c1 $42

    jp $f409                                      ; $597e: $c3 $09 $f4


    ret nz                                        ; $5981: $c0

    ldh [$7e], a                                  ; $5982: $e0 $7e
    ldh [$38], a                                  ; $5984: $e0 $38
    cp c                                          ; $5986: $b9
    db $e3                                        ; $5987: $e3
    dec sp                                        ; $5988: $3b
    nop                                           ; $5989: $00
    jr nz, @+$03                                  ; $598a: $20 $01

    ld bc, $802f                                  ; $598c: $01 $2f $80
    db $e4                                        ; $598f: $e4
    cp e                                          ; $5990: $bb
    ld hl, $48cb                                  ; $5991: $21 $cb $48
    ld d, e                                       ; $5994: $53
    jr nz, jr_029_5960                            ; $5995: $20 $c9

    dec h                                         ; $5997: $25
    sbc e                                         ; $5998: $9b
    nop                                           ; $5999: $00
    ld b, d                                       ; $599a: $42
    jp nz, $bf32                                  ; $599b: $c2 $32 $bf

    jp nz, Jump_029_7f40                          ; $599e: $c2 $40 $7f

    db $e3                                        ; $59a1: $e3
    cp a                                          ; $59a2: $bf
    db $e3                                        ; $59a3: $e3
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    add b                                         ; $59a6: $80
    push hl                                       ; $59a7: $e5
    ld a, $a1                                     ; $59a8: $3e $a1
    jr nz, jr_029_59cc                            ; $59aa: $20 $20

    ld c, l                                       ; $59ac: $4d
    ret                                           ; $59ad: $c9


    dec h                                         ; $59ae: $25
    sbc e                                         ; $59af: $9b
    nop                                           ; $59b0: $00
    add b                                         ; $59b1: $80
    db $e3                                        ; $59b2: $e3
    ccf                                           ; $59b3: $3f
    pop bc                                        ; $59b4: $c1
    jr nz, @-$78                                  ; $59b5: $20 $86

    db $e4                                        ; $59b7: $e4
    ld a, [hl]                                    ; $59b8: $7e
    pop hl                                        ; $59b9: $e1
    inc bc                                        ; $59ba: $03
    scf                                           ; $59bb: $37
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    push hl                                       ; $59be: $e5
    pop hl                                        ; $59bf: $e1
    ld h, l                                       ; $59c0: $65
    jr c, jr_029_596d                             ; $59c1: $38 $aa

    ret                                           ; $59c3: $c9


    dec h                                         ; $59c4: $25
    sbc e                                         ; $59c5: $9b
    nop                                           ; $59c6: $00
    add b                                         ; $59c7: $80
    db $e4                                        ; $59c8: $e4
    nop                                           ; $59c9: $00
    ld a, [hl]                                    ; $59ca: $7e
    ret nz                                        ; $59cb: $c0

jr_029_59cc:
    ret nz                                        ; $59cc: $c0

    push hl                                       ; $59cd: $e5
    db $fd                                        ; $59ce: $fd
    and d                                         ; $59cf: $a2
    add c                                         ; $59d0: $81

jr_029_59d1:
    ldh [$80], a                                  ; $59d1: $e0 $80
    jp nz, Jump_029_6334                          ; $59d3: $c2 $34 $63

    db $d3                                        ; $59d6: $d3
    jp Jump_029_6773                              ; $59d7: $c3 $73 $67


    inc a                                         ; $59da: $3c
    ret                                           ; $59db: $c9


    inc h                                         ; $59dc: $24
    ld [hl], a                                    ; $59dd: $77
    ld l, c                                       ; $59de: $69
    cpl                                           ; $59df: $2f
    ld bc, $3809                                  ; $59e0: $01 $09 $38
    rst $38                                       ; $59e3: $ff
    ldh [$fd], a                                  ; $59e4: $e0 $fd
    and l                                         ; $59e6: $a5
    rrca                                          ; $59e7: $0f
    rrca                                          ; $59e8: $0f
    rlca                                          ; $59e9: $07
    ld bc, $f32c                                  ; $59ea: $01 $2c $f3
    ld b, c                                       ; $59ed: $41
    ld b, b                                       ; $59ee: $40
    and b                                         ; $59ef: $a0
    sbc h                                         ; $59f0: $9c
    dec b                                         ; $59f1: $05
    inc de                                        ; $59f2: $13
    and c                                         ; $59f3: $a1
    db $f4                                        ; $59f4: $f4
    ld b, a                                       ; $59f5: $47
    ld b, h                                       ; $59f6: $44
    ld e, [hl]                                    ; $59f7: $5e
    ld [$096f], sp                                ; $59f8: $08 $6f $09
    ld h, h                                       ; $59fb: $64
    inc l                                         ; $59fc: $2c
    ld bc, $1819                                  ; $59fd: $01 $19 $18
    cp $88                                        ; $5a00: $fe $88
    jp nz, Jump_000_063b                          ; $5a02: $c2 $3b $06

    ld [hl+], a                                   ; $5a05: $22
    ld [hl+], a                                   ; $5a06: $22
    ld b, $06                                     ; $5a07: $06 $06
    rlca                                          ; $5a09: $07
    nop                                           ; $5a0a: $00
    add b                                         ; $5a0b: $80
    and b                                         ; $5a0c: $a0
    add b                                         ; $5a0d: $80
    add h                                         ; $5a0e: $84
    ld [$716a], sp                                ; $5a0f: $08 $6a $71
    add b                                         ; $5a12: $80
    cp b                                          ; $5a13: $b8
    and $f3                                       ; $5a14: $e6 $f3
    db $e4                                        ; $5a16: $e4
    adc c                                         ; $5a17: $89
    ld b, e                                       ; $5a18: $43
    ld a, $a0                                     ; $5a19: $3e $a0
    dec hl                                        ; $5a1b: $2b
    inc c                                         ; $5a1c: $0c
    ld b, $c2                                     ; $5a1d: $06 $c2
    pop hl                                        ; $5a1f: $e1
    dec d                                         ; $5a20: $15
    ld b, l                                       ; $5a21: $45
    and b                                         ; $5a22: $a0
    rla                                           ; $5a23: $17
    ld b, c                                       ; $5a24: $41
    and b                                         ; $5a25: $a0
    nop                                           ; $5a26: $00
    and d                                         ; $5a27: $a2
    or b                                          ; $5a28: $b0
    ld [hl], l                                    ; $5a29: $75
    ld b, c                                       ; $5a2a: $41
    sbc h                                         ; $5a2b: $9c
    ld b, $1a                                     ; $5a2c: $06 $1a
    daa                                           ; $5a2e: $27
    ld [hl], b                                    ; $5a2f: $70
    adc c                                         ; $5a30: $89
    ld h, d                                       ; $5a31: $62
    ld h, e                                       ; $5a32: $63
    ld c, b                                       ; $5a33: $48
    ld b, c                                       ; $5a34: $41
    jr z, jr_029_5a85                             ; $5a35: $28 $4e

    ld a, a                                       ; $5a37: $7f
    add c                                         ; $5a38: $81
    rla                                           ; $5a39: $17
    dec d                                         ; $5a3a: $15
    inc hl                                        ; $5a3b: $23
    jp nz, $fee1                                  ; $5a3c: $c2 $e1 $fe

    ld [c], a                                     ; $5a3f: $e2
    ld l, $fd                                     ; $5a40: $2e $fd
    ld b, d                                       ; $5a42: $42
    ld b, c                                       ; $5a43: $41
    ld d, b                                       ; $5a44: $50
    sub $20                                       ; $5a45: $d6 $20
    sbc h                                         ; $5a47: $9c
    ld b, $c9                                     ; $5a48: $06 $c9
    add a                                         ; $5a4a: $87
    inc sp                                        ; $5a4b: $33
    add b                                         ; $5a4c: $80
    ld [hl], c                                    ; $5a4d: $71
    add b                                         ; $5a4e: $80
    ld d, [hl]                                    ; $5a4f: $56
    cp l                                          ; $5a50: $bd
    and d                                         ; $5a51: $a2
    ld a, b                                       ; $5a52: $78
    cp $81                                        ; $5a53: $fe $81
    ld a, $87                                     ; $5a55: $3e $87
    jp $2b60                                      ; $5a57: $c3 $60 $2b


    ld a, [hl+]                                   ; $5a5a: $2a
    ld a, [hl+]                                   ; $5a5b: $2a
    dec hl                                        ; $5a5c: $2b
    ld b, c                                       ; $5a5d: $41
    add h                                         ; $5a5e: $84
    ld e, b                                       ; $5a5f: $58
    call nz, $d3a2                                ; $5a60: $c4 $a2 $d3
    add $c9                                       ; $5a63: $c6 $c9
    add a                                         ; $5a65: $87
    ld d, a                                       ; $5a66: $57
    ld e, d                                       ; $5a67: $5a
    or d                                          ; $5a68: $b2
    add c                                         ; $5a69: $81
    ld e, d                                       ; $5a6a: $5a
    ld [hl-], a                                   ; $5a6b: $32
    and d                                         ; $5a6c: $a2
    inc c                                         ; $5a6d: $0c
    cp $84                                        ; $5a6e: $fe $84
    cp [hl]                                       ; $5a70: $be
    ld h, h                                       ; $5a71: $64
    jr nc, @+$32                                  ; $5a72: $30 $30

    add h                                         ; $5a74: $84
    ld h, a                                       ; $5a75: $67
    add d                                         ; $5a76: $82
    ld h, c                                       ; $5a77: $61
    call nz, $d3a3                                ; $5a78: $c4 $a3 $d3
    nop                                           ; $5a7b: $00
    inc b                                         ; $5a7c: $04
    push de                                       ; $5a7d: $d5
    and b                                         ; $5a7e: $a0
    ret                                           ; $5a7f: $c9


    add [hl]                                      ; $5a80: $86
    ld e, h                                       ; $5a81: $5c
    ld [hl], a                                    ; $5a82: $77
    add b                                         ; $5a83: $80
    rst $38                                       ; $5a84: $ff

jr_029_5a85:
    and c                                         ; $5a85: $a1
    add hl, sp                                    ; $5a86: $39
    add l                                         ; $5a87: $85
    dec b                                         ; $5a88: $05
    ld c, d                                       ; $5a89: $4a
    ld [hl], c                                    ; $5a8a: $71
    ld c, c                                       ; $5a8b: $49
    ld [hl], b                                    ; $5a8c: $70
    ld b, d                                       ; $5a8d: $42
    ld h, c                                       ; $5a8e: $61
    cp l                                          ; $5a8f: $bd
    inc hl                                        ; $5a90: $23
    ld [hl], e                                    ; $5a91: $73
    ld hl, $46f8                                  ; $5a92: $21 $f8 $46
    ld d, a                                       ; $5a95: $57
    ld d, h                                       ; $5a96: $54
    ld h, c                                       ; $5a97: $61
    rst $38                                       ; $5a98: $ff
    and c                                         ; $5a99: $a1
    add c                                         ; $5a9a: $81
    ld h, c                                       ; $5a9b: $61
    xor e                                         ; $5a9c: $ab
    pop bc                                        ; $5a9d: $c1
    ld hl, sp-$7e                                 ; $5a9e: $f8 $82
    cp a                                          ; $5aa0: $bf
    push af                                       ; $5aa1: $f5
    jp nz, Jump_029_4a40                          ; $5aa2: $c2 $40 $4a

    push bc                                       ; $5aa5: $c5
    add e                                         ; $5aa6: $83
    add hl, bc                                    ; $5aa7: $09
    ld d, a                                       ; $5aa8: $57
    dec sp                                        ; $5aa9: $3b
    ld d, h                                       ; $5aaa: $54
    ld d, l                                       ; $5aab: $55
    dec l                                         ; $5aac: $2d
    nop                                           ; $5aad: $00
    ld d, h                                       ; $5aae: $54
    ld d, h                                       ; $5aaf: $54
    ld d, a                                       ; $5ab0: $57
    ld [hl], b                                    ; $5ab1: $70
    ldh [$e3], a                                  ; $5ab2: $e0 $e3
    ld hl, $6ec1                                  ; $5ab4: $21 $c1 $6e
    ld a, [hl]                                    ; $5ab7: $7e
    db $f4                                        ; $5ab8: $f4
    add h                                         ; $5ab9: $84
    and [hl]                                      ; $5aba: $a6
    inc bc                                        ; $5abb: $03
    ld l, h                                       ; $5abc: $6c
    or h                                          ; $5abd: $b4
    ld h, c                                       ; $5abe: $61
    ccf                                           ; $5abf: $3f
    and b                                         ; $5ac0: $a0
    ld e, b                                       ; $5ac1: $58
    ld e, e                                       ; $5ac2: $5b
    inc l                                         ; $5ac3: $2c
    xor h                                         ; $5ac4: $ac
    nop                                           ; $5ac5: $00
    db $eb                                        ; $5ac6: $eb
    jp nz, Jump_029_6968                          ; $5ac7: $c2 $68 $69

    dec a                                         ; $5aca: $3d
    pop af                                        ; $5acb: $f1
    ld c, l                                       ; $5acc: $4d
    sbc l                                         ; $5acd: $9d
    ld b, d                                       ; $5ace: $42
    sub e                                         ; $5acf: $93
    jp z, Jump_000_2d00                           ; $5ad0: $ca $00 $2d

    dec b                                         ; $5ad3: $05
    ld l, $02                                     ; $5ad4: $2e $02
    cp d                                          ; $5ad6: $ba
    ld h, d                                       ; $5ad7: $62
    db $eb                                        ; $5ad8: $eb
    jp nz, $80f8                                  ; $5ad9: $c2 $f8 $80

    ld a, [hl+]                                   ; $5adc: $2a
    inc h                                         ; $5add: $24
    add h                                         ; $5ade: $84
    rst $20                                       ; $5adf: $e7
    jr c, jr_029_5ae3                             ; $5ae0: $38 $01

    nop                                           ; $5ae2: $00

jr_029_5ae3:
    ld a, [hl]                                    ; $5ae3: $7e
    ld [bc], a                                    ; $5ae4: $02
    sub e                                         ; $5ae5: $93
    ret                                           ; $5ae6: $c9


    ld [hl], b                                    ; $5ae7: $70
    dec b                                         ; $5ae8: $05
    ld l, $02                                     ; $5ae9: $2e $02
    dec l                                         ; $5aeb: $2d
    nop                                           ; $5aec: $00
    ld l, d                                       ; $5aed: $6a
    jr nz, jr_029_5b17                            ; $5aee: $20 $27

    ld bc, $0596                                  ; $5af0: $01 $96 $05
    nop                                           ; $5af3: $00
    xor d                                         ; $5af4: $aa
    dec c                                         ; $5af5: $0d
    sbc l                                         ; $5af6: $9d
    ld b, c                                       ; $5af7: $41
    sub e                                         ; $5af8: $93
    call Call_000_092e                            ; $5af9: $cd $2e $09
    ld [hl], l                                    ; $5afc: $75
    and a                                         ; $5afd: $a7
    ld [hl], $41                                  ; $5afe: $36 $41
    and a                                         ; $5b00: $a7
    ld h, b                                       ; $5b01: $60
    and h                                         ; $5b02: $a4
    ld [bc], a                                    ; $5b03: $02
    add b                                         ; $5b04: $80
    ld [c], a                                     ; $5b05: $e2
    ld [hl+], a                                   ; $5b06: $22
    sbc d                                         ; $5b07: $9a
    ld h, b                                       ; $5b08: $60
    ld h, e                                       ; $5b09: $63
    ld h, b                                       ; $5b0a: $60
    sub e                                         ; $5b0b: $93
    call z, $2ab3                                 ; $5b0c: $cc $b3 $2a
    ld a, b                                       ; $5b0f: $78
    ld h, d                                       ; $5b10: $62
    jp hl                                         ; $5b11: $e9


    add hl, hl                                    ; $5b12: $29
    ld h, h                                       ; $5b13: $64
    ld bc, $ce65                                  ; $5b14: $01 $65 $ce

jr_029_5b17:
    db $e3                                        ; $5b17: $e3
    and a                                         ; $5b18: $a7
    ld b, l                                       ; $5b19: $45
    ld e, h                                       ; $5b1a: $5c
    ld h, e                                       ; $5b1b: $63
    sub e                                         ; $5b1c: $93
    ret                                           ; $5b1d: $c9


    ld [hl], e                                    ; $5b1e: $73
    ld a, [hl+]                                   ; $5b1f: $2a
    ld h, [hl]                                    ; $5b20: $66
    nop                                           ; $5b21: $00
    jp hl                                         ; $5b22: $e9


    dec hl                                        ; $5b23: $2b
    add h                                         ; $5b24: $84
    call nc, $92a1                                ; $5b25: $d4 $a1 $92
    inc h                                         ; $5b28: $24
    ld l, a                                       ; $5b29: $6f
    rst $00                                       ; $5b2a: $c7
    and d                                         ; $5b2b: $a2
    ld b, a                                       ; $5b2c: $47
    ld [bc], a                                    ; $5b2d: $02
    sub e                                         ; $5b2e: $93
    ret                                           ; $5b2f: $c9


    ld bc, $5ca9                                  ; $5b30: $01 $a9 $5c
    nop                                           ; $5b33: $00
    add l                                         ; $5b34: $85
    ld b, b                                       ; $5b35: $40
    jp hl                                         ; $5b36: $e9


    dec hl                                        ; $5b37: $2b
    ld l, d                                       ; $5b38: $6a
    dec h                                         ; $5b39: $25
    sbc l                                         ; $5b3a: $9d
    add [hl]                                      ; $5b3b: $86
    ld c, a                                       ; $5b3c: $4f
    and d                                         ; $5b3d: $a2
    sub e                                         ; $5b3e: $93
    ret                                           ; $5b3f: $c9


    db $fd                                        ; $5b40: $fd
    xor c                                         ; $5b41: $a9
    halt                                          ; $5b42: $76
    ld b, c                                       ; $5b43: $41
    nop                                           ; $5b44: $00
    jp hl                                         ; $5b45: $e9


    jr z, jr_029_5b61                             ; $5b46: $28 $19

    add c                                         ; $5b48: $81
    xor [hl]                                      ; $5b49: $ae
    ld b, c                                       ; $5b4a: $41
    ret c                                         ; $5b4b: $d8

    xor c                                         ; $5b4c: $a9
    ld c, a                                       ; $5b4d: $4f
    and d                                         ; $5b4e: $a2
    sub e                                         ; $5b4f: $93
    rst $00                                       ; $5b50: $c7
    or l                                          ; $5b51: $b5
    add hl, bc                                    ; $5b52: $09
    db $f4                                        ; $5b53: $f4
    add e                                         ; $5b54: $83
    nop                                           ; $5b55: $00
    jp hl                                         ; $5b56: $e9


jr_029_5b57:
    add hl, hl                                    ; $5b57: $29
    db $ec                                        ; $5b58: $ec
    ld b, b                                       ; $5b59: $40
    inc e                                         ; $5b5a: $1c
    add $d3                                       ; $5b5b: $c6 $d3
    inc b                                         ; $5b5d: $04
    ld b, a                                       ; $5b5e: $47
    ld [bc], a                                    ; $5b5f: $02
    ld e, l                                       ; $5b60: $5d

jr_029_5b61:
    pop bc                                        ; $5b61: $c1
    jp $bdec                                      ; $5b62: $c3 $ec $bd


    ld h, $00                                     ; $5b65: $26 $00
    jp hl                                         ; $5b67: $e9


    add hl, hl                                    ; $5b68: $29
    ld e, d                                       ; $5b69: $5a
    ret nz                                        ; $5b6a: $c0

    reti                                          ; $5b6b: $d9


    ld h, b                                       ; $5b6c: $60
    dec hl                                        ; $5b6d: $2b
    ld b, c                                       ; $5b6e: $41
    db $d3                                        ; $5b6f: $d3
    ld a, [bc]                                    ; $5b70: $0a
    jp nc, Jump_000_3f6a                          ; $5b71: $d2 $6a $3f

    ret                                           ; $5b74: $c9


    ld l, [hl]                                    ; $5b75: $6e
    add c                                         ; $5b76: $81
    nop                                           ; $5b77: $00
    jp hl                                         ; $5b78: $e9


    add hl, hl                                    ; $5b79: $29
    db $ec                                        ; $5b7a: $ec
    ld b, b                                       ; $5b7b: $40
    ld e, $21                                     ; $5b7c: $1e $21
    pop hl                                        ; $5b7e: $e1
    ld [bc], a                                    ; $5b7f: $02
    db $d3                                        ; $5b80: $d3
    dec b                                         ; $5b81: $05
    ld a, $c2                                     ; $5b82: $3e $c2
    ret                                           ; $5b84: $c9


    ld l, d                                       ; $5b85: $6a
    ld a, c                                       ; $5b86: $79
    xor $08                                       ; $5b87: $ee $08
    jp hl                                         ; $5b89: $e9


    ld h, $19                                     ; $5b8a: $26 $19
    add b                                         ; $5b8c: $80
    rra                                           ; $5b8d: $1f
    add b                                         ; $5b8e: $80
    ld e, [hl]                                    ; $5b8f: $5e
    ld l, l                                       ; $5b90: $6d
    jr nz, @-$2b                                  ; $5b91: $20 $d3

    ld a, [bc]                                    ; $5b93: $0a
    sub $27                                       ; $5b94: $d6 $27
    ld a, b                                       ; $5b96: $78

jr_029_5b97:
    ld c, h                                       ; $5b97: $4c
    nop                                           ; $5b98: $00
    ld a, a                                       ; $5b99: $7f
    ld [hl+], a                                   ; $5b9a: $22
    jp hl                                         ; $5b9b: $e9


    jr z, jr_029_5c08                             ; $5b9c: $28 $6a

    and d                                         ; $5b9e: $a2
    sbc c                                         ; $5b9f: $99
    ld h, c                                       ; $5ba0: $61
    ld [$03cd], a                                 ; $5ba1: $ea $cd $03
    ld l, d                                       ; $5ba4: $6a
    ld b, b                                       ; $5ba5: $40
    ld h, a                                       ; $5ba6: $67
    pop de                                        ; $5ba7: $d1
    push bc                                       ; $5ba8: $c5
    nop                                           ; $5ba9: $00
    jp hl                                         ; $5baa: $e9


    jr z, jr_029_5b57                             ; $5bab: $28 $aa

    ld b, c                                       ; $5bad: $41
    ld c, a                                       ; $5bae: $4f
    ld h, c                                       ; $5baf: $61
    ld [$03cb], a                                 ; $5bb0: $ea $cb $03
    ld h, e                                       ; $5bb3: $63
    ld a, [$d12d]                                 ; $5bb4: $fa $2d $d1
    rst $00                                       ; $5bb7: $c7
    res 4, e                                      ; $5bb8: $cb $a3
    nop                                           ; $5bba: $00
    ldh a, [rTIMA]                                ; $5bbb: $f0 $05
    ld c, a                                       ; $5bbd: $4f
    ld h, c                                       ; $5bbe: $61
    ld [$03cb], a                                 ; $5bbf: $ea $cb $03
    ld h, e                                       ; $5bc2: $63
    cp l                                          ; $5bc3: $bd
    jr nc, jr_029_5b97                            ; $5bc4: $30 $d1

    call nz, $a3cb                                ; $5bc6: $c4 $cb $a3
    db $e3                                        ; $5bc9: $e3
    ld b, l                                       ; $5bca: $45
    nop                                           ; $5bcb: $00
    ld c, a                                       ; $5bcc: $4f
    ld h, c                                       ; $5bcd: $61
    ld [$d6cb], a                                 ; $5bce: $ea $cb $d6
    dec h                                         ; $5bd1: $25
    ld a, a                                       ; $5bd2: $7f
    call z, $c4d1                                 ; $5bd3: $cc $d1 $c4
    and e                                         ; $5bd6: $a3
    ld h, l                                       ; $5bd7: $65
    db $e3                                        ; $5bd8: $e3
    ld b, a                                       ; $5bd9: $47
    ld [$00cd], a                                 ; $5bda: $ea $cd $00
    jp nz, $d1f1                                  ; $5bdd: $c2 $f1 $d1

    ret                                           ; $5be0: $c9


    rst $28                                       ; $5be1: $ef
    xor c                                         ; $5be2: $a9
    ld e, a                                       ; $5be3: $5f
    adc l                                         ; $5be4: $8d
    db $fd                                        ; $5be5: $fd
    ld a, [$eaa5]                                 ; $5be6: $fa $a5 $ea
    sbc b                                         ; $5be9: $98
    or $c1                                        ; $5bea: $f6 $c1
    dec c                                         ; $5bec: $0d
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    dec e                                         ; $5bf0: $1d
    dec c                                         ; $5bf1: $0d
    rst $38                                       ; $5bf2: $ff
    di                                            ; $5bf3: $f3
    dec l                                         ; $5bf4: $2d
    dec l                                         ; $5bf5: $2d
    dec l                                         ; $5bf6: $2d
    ld hl, sp-$1c                                 ; $5bf7: $f8 $e4
    rst $18                                       ; $5bf9: $df
    db $f4                                        ; $5bfa: $f4
    db $fd                                        ; $5bfb: $fd
    db $fc                                        ; $5bfc: $fc
    ld a, $c0                                     ; $5bfd: $3e $c0
    ldh [$2d], a                                  ; $5bff: $e0 $2d
    ld l, $2e                                     ; $5c01: $2e $2e
    ld l, $0e                                     ; $5c03: $2e $0e
    ret nz                                        ; $5c05: $c0

    rst $38                                       ; $5c06: $ff
    ld a, a                                       ; $5c07: $7f

jr_029_5c08:
    rst $20                                       ; $5c08: $e7
    rst $20                                       ; $5c09: $e7
    ld l, $0e                                     ; $5c0a: $2e $0e
    ld c, $80                                     ; $5c0c: $0e $80
    rst $20                                       ; $5c0e: $e7
    jp Jump_000_2ee0                              ; $5c0f: $c3 $e0 $2e


    ld l, [hl]                                    ; $5c12: $6e
    ld c, $c3                                     ; $5c13: $0e $c3
    ld c, [hl]                                    ; $5c15: $4e
    ld l, $ed                                     ; $5c16: $2e $ed
    ldh [$e8], a                                  ; $5c18: $e0 $e8
    jp hl                                         ; $5c1a: $e9


    ret nz                                        ; $5c1b: $c0

    rst $38                                       ; $5c1c: $ff
    ret nz                                        ; $5c1d: $c0

    and $6e                                       ; $5c1e: $e6 $6e
    ld l, [hl]                                    ; $5c20: $6e
    rlca                                          ; $5c21: $07
    ld l, $4e                                     ; $5c22: $2e $4e
    ld c, $c0                                     ; $5c24: $0e $c0
    rst $38                                       ; $5c26: $ff
    adc c                                         ; $5c27: $89
    pop hl                                        ; $5c28: $e1
    adc b                                         ; $5c29: $88
    db $e3                                        ; $5c2a: $e3
    add b                                         ; $5c2b: $80
    ld [c], a                                     ; $5c2c: $e2
    ld a, l                                       ; $5c2d: $7d
    db $e4                                        ; $5c2e: $e4
    jp Jump_029_6e2e                              ; $5c2f: $c3 $2e $6e


    ld b, d                                       ; $5c32: $42
    pop hl                                        ; $5c33: $e1
    cp $e1                                        ; $5c34: $fe $e1
    add b                                         ; $5c36: $80
    push af                                       ; $5c37: $f5
    ld d, d                                       ; $5c38: $52
    db $e4                                        ; $5c39: $e4
    ld l, $0e                                     ; $5c3a: $2e $0e
    nop                                           ; $5c3c: $00
    sbc c                                         ; $5c3d: $99
    pop hl                                        ; $5c3e: $e1
    cp l                                          ; $5c3f: $bd
    ld [c], a                                     ; $5c40: $e2
    ld b, b                                       ; $5c41: $40
    pop hl                                        ; $5c42: $e1
    dec a                                         ; $5c43: $3d
    push hl                                       ; $5c44: $e5
    ld b, c                                       ; $5c45: $41
    pop hl                                        ; $5c46: $e1
    ret nz                                        ; $5c47: $c0

    pop hl                                        ; $5c48: $e1
    add sp, -$1b                                  ; $5c49: $e8 $e5
    ret nz                                        ; $5c4b: $c0

    ld hl, sp+$00                                 ; $5c4c: $f8 $00
    add hl, de                                    ; $5c4e: $19
    pop hl                                        ; $5c4f: $e1
    cp [hl]                                       ; $5c50: $be
    ldh [rP1], a                                  ; $5c51: $e0 $00
    db $e4                                        ; $5c53: $e4
    xor c                                         ; $5c54: $a9
    push hl                                       ; $5c55: $e5
    ret nz                                        ; $5c56: $c0

    db $e3                                        ; $5c57: $e3
    db $ed                                        ; $5c58: $ed
    jp hl                                         ; $5c59: $e9


    ret nz                                        ; $5c5a: $c0

    or $99                                        ; $5c5b: $f6 $99
    ld [c], a                                     ; $5c5d: $e2
    ld bc, $724e                                  ; $5c5e: $01 $4e $72
    push hl                                       ; $5c61: $e5
    or $e3                                        ; $5c62: $f6 $e3
    ret nz                                        ; $5c64: $c0

    jp hl                                         ; $5c65: $e9


    or c                                          ; $5c66: $b1
    jp $c075                                      ; $5c67: $c3 $75 $c0


    dec l                                         ; $5c6a: $2d
    jp nz, $e511                                  ; $5c6b: $c2 $11 $e5

    nop                                           ; $5c6e: $00
    sub a                                         ; $5c6f: $97
    rst $20                                       ; $5c70: $e7
    ld e, c                                       ; $5c71: $59
    ld [c], a                                     ; $5c72: $e2
    add h                                         ; $5c73: $84
    jp nz, $c08e                                  ; $5c74: $c2 $8e $c0

    or $e5                                        ; $5c77: $f6 $e5
    add b                                         ; $5c79: $80
    push hl                                       ; $5c7a: $e5
    ld sp, hl                                     ; $5c7b: $f9
    and e                                         ; $5c7c: $a3
    pop af                                        ; $5c7d: $f1
    ret nz                                        ; $5c7e: $c0

    db $10                                        ; $5c7f: $10

Jump_029_5c80:
    ld [hl], l                                    ; $5c80: $75
    ret nz                                        ; $5c81: $c0

    db $ed                                        ; $5c82: $ed
    and b                                         ; $5c83: $a0
    ld de, $57e7                                  ; $5c84: $11 $e7 $57
    and $0e                                       ; $5c87: $e6 $0e
    ret nz                                        ; $5c89: $c0

    push hl                                       ; $5c8a: $e5
    db $ec                                        ; $5c8b: $ec
    ldh [$b6], a                                  ; $5c8c: $e0 $b6
    rst $20                                       ; $5c8e: $e7
    nop                                           ; $5c8f: $00
    ret nz                                        ; $5c90: $c0

    add sp, $7d                                   ; $5c91: $e8 $7d
    pop bc                                        ; $5c93: $c1
    ld sp, $5dc1                                  ; $5c94: $31 $c1 $5d
    pop hl                                        ; $5c97: $e1
    ld de, $d7e8                                  ; $5c98: $11 $e8 $d7
    push bc                                       ; $5c9b: $c5
    ret nz                                        ; $5c9c: $c0

    and $b3                                       ; $5c9d: $e6 $b3
    db $e3                                        ; $5c9f: $e3
    nop                                           ; $5ca0: $00
    ld [hl], d                                    ; $5ca1: $72
    jp $a5c2                                      ; $5ca2: $c3 $c2 $a5


    ld a, c                                       ; $5ca5: $79
    and h                                         ; $5ca6: $a4
    or c                                          ; $5ca7: $b1
    jp $e3c0                                      ; $5ca8: $c3 $c0 $e3


    ld de, $cae8                                  ; $5cab: $11 $e8 $ca
    and h                                         ; $5cae: $a4
    ret nz                                        ; $5caf: $c0

    db $ec                                        ; $5cb0: $ec
    nop                                           ; $5cb1: $00
    rst $08                                       ; $5cb2: $cf
    or b                                          ; $5cb3: $b0
    ret nz                                        ; $5cb4: $c0

    rst $20                                       ; $5cb5: $e7
    ld de, $c0e9                                  ; $5cb6: $11 $e9 $c0
    xor $7d                                       ; $5cb9: $ee $7d
    and h                                         ; $5cbb: $a4
    adc a                                         ; $5cbc: $8f
    xor e                                         ; $5cbd: $ab
    ld [hl], c                                    ; $5cbe: $71
    ld [c], a                                     ; $5cbf: $e2
    ret nz                                        ; $5cc0: $c0

    rst $20                                       ; $5cc1: $e7

Call_029_5cc2:
    nop                                           ; $5cc2: $00
    pop de                                        ; $5cc3: $d1
    jp hl                                         ; $5cc4: $e9


    cp [hl]                                       ; $5cc5: $be
    xor l                                         ; $5cc6: $ad
    scf                                           ; $5cc7: $37
    xor e                                         ; $5cc8: $ab
    ld [hl-], a                                   ; $5cc9: $32
    and e                                         ; $5cca: $a3
    ld sp, $7ee4                                  ; $5ccb: $31 $e4 $7e
    jp nz, $f4c0                                  ; $5cce: $c2 $c0 $f4

    sbc c                                         ; $5cd1: $99
    and $c0                                       ; $5cd2: $e6 $c0
    rst $30                                       ; $5cd4: $f7
    sub b                                         ; $5cd5: $90
    ld [hl], c                                    ; $5cd6: $71
    adc c                                         ; $5cd7: $89
    ld l, l                                       ; $5cd8: $6d
    add c                                         ; $5cd9: $81
    ret nz                                        ; $5cda: $c0

    push af                                       ; $5cdb: $f5
    call nz, $2584                                ; $5cdc: $c4 $84 $25
    ret                                           ; $5cdf: $c9


    dec c                                         ; $5ce0: $0d
    ld c, l                                       ; $5ce1: $4d
    add [hl]                                      ; $5ce2: $86
    rst $38                                       ; $5ce3: $ff
    ld [c], a                                     ; $5ce4: $e2
    dec l                                         ; $5ce5: $2d
    ld c, l                                       ; $5ce6: $4d

Jump_029_5ce7:
    sbc e                                         ; $5ce7: $9b
    adc h                                         ; $5ce8: $8c
    ld de, $a7c7                                  ; $5ce9: $11 $c7 $a7
    sub a                                         ; $5cec: $97
    halt                                          ; $5ced: $76
    add c                                         ; $5cee: $81
    ld l, l                                       ; $5cef: $6d
    ld a, a                                       ; $5cf0: $7f
    dec hl                                        ; $5cf1: $2b
    ld a, [bc]                                    ; $5cf2: $0a
    dec hl                                        ; $5cf3: $2b
    ld a, [bc]                                    ; $5cf4: $0a
    ld a, [bc]                                    ; $5cf5: $0a
    ld a, [bc]                                    ; $5cf6: $0a
    ld c, l                                       ; $5cf7: $4d
    or $63                                        ; $5cf8: $f6 $63
    nop                                           ; $5cfa: $00
    ld h, h                                       ; $5cfb: $64
    add a                                         ; $5cfc: $87
    rst $08                                       ; $5cfd: $cf
    add h                                         ; $5cfe: $84
    sub h                                         ; $5cff: $94
    and l                                         ; $5d00: $a5
    sub h                                         ; $5d01: $94
    rst $20                                       ; $5d02: $e7
    adc a                                         ; $5d03: $8f
    pop hl                                        ; $5d04: $e1
    sub d                                         ; $5d05: $92
    db $e3                                        ; $5d06: $e3
    ld [hl], $81                                  ; $5d07: $36 $81
    pop bc                                        ; $5d09: $c1
    ld [c], a                                     ; $5d0a: $e2
    ld c, $bf                                     ; $5d0b: $0e $bf
    db $e3                                        ; $5d0d: $e3
    ld l, l                                       ; $5d0e: $6d
    ld l, l                                       ; $5d0f: $6d
    ld l, l                                       ; $5d10: $6d
    or c                                          ; $5d11: $b1
    ld h, d                                       ; $5d12: $62
    set 1, d                                      ; $5d13: $cb $ca
    sub h                                         ; $5d15: $94
    and [hl]                                      ; $5d16: $a6
    ld a, l                                       ; $5d17: $7d
    ld h, c                                       ; $5d18: $61
    ld [hl+], a                                   ; $5d19: $22
    db $d3                                        ; $5d1a: $d3
    db $e4                                        ; $5d1b: $e4
    dec hl                                        ; $5d1c: $2b
    sub d                                         ; $5d1d: $92
    push hl                                       ; $5d1e: $e5
    xor $e8                                       ; $5d1f: $ee $e8
    ld a, d                                       ; $5d21: $7a
    ldh [$2b], a                                  ; $5d22: $e0 $2b
    add sp, -$1d                                  ; $5d24: $e8 $e3
    ld b, a                                       ; $5d26: $47
    xor h                                         ; $5d27: $ac
    inc h                                         ; $5d28: $24
    ld c, d                                       ; $5d29: $4a
    and h                                         ; $5d2a: $a4
    ld a, [de]                                    ; $5d2b: $1a
    pop hl                                        ; $5d2c: $e1
    ld l, l                                       ; $5d2d: $6d
    db $dd                                        ; $5d2e: $dd
    ldh [$fd], a                                  ; $5d2f: $e0 $fd
    db $e3                                        ; $5d31: $e3
    ld a, [bc]                                    ; $5d32: $0a
    dec bc                                        ; $5d33: $0b
    db $e3                                        ; $5d34: $e3
    pop bc                                        ; $5d35: $c1
    ld [$3b00], a                                 ; $5d36: $ea $00 $3b
    ldh [$e8], a                                  ; $5d39: $e0 $e8
    ld [c], a                                     ; $5d3b: $e2
    inc [hl]                                      ; $5d3c: $34
    and h                                         ; $5d3d: $a4
    ret nz                                        ; $5d3e: $c0

    ld [$e8c5], a                                 ; $5d3f: $ea $c5 $e8
    cp a                                          ; $5d42: $bf
    db $e4                                        ; $5d43: $e4
    cp $f3                                        ; $5d44: $fe $f3
    inc [hl]                                      ; $5d46: $34
    pop hl                                        ; $5d47: $e1
    nop                                           ; $5d48: $00
    or $c3                                        ; $5d49: $f6 $c3
    reti                                          ; $5d4b: $d9


    ld h, h                                       ; $5d4c: $64
    sub h                                         ; $5d4d: $94
    and h                                         ; $5d4e: $a4
    push bc                                       ; $5d4f: $c5
    db $ed                                        ; $5d50: $ed
    cp a                                          ; $5d51: $bf
    push af                                       ; $5d52: $f5
    di                                            ; $5d53: $f3
    jp nz, $c2b5                                  ; $5d54: $c2 $b5 $c2

    reti                                          ; $5d57: $d9


    ld h, l                                       ; $5d58: $65
    db $e4                                        ; $5d59: $e4
    ld de, $4763                                  ; $5d5a: $11 $63 $47
    push hl                                       ; $5d5d: $e5
    ld c, e                                       ; $5d5e: $4b
    adc c                                         ; $5d5f: $89
    ld b, e                                       ; $5d60: $43
    add d                                         ; $5d61: $82
    db $eb                                        ; $5d62: $eb
    dec bc                                        ; $5d63: $0b
    dec hl                                        ; $5d64: $2b
    dec bc                                        ; $5d65: $0b
    add e                                         ; $5d66: $83
    dec bc                                        ; $5d67: $0b

jr_029_5d68:
    dec bc                                        ; $5d68: $0b
    ld l, h                                       ; $5d69: $6c
    ld [c], a                                     ; $5d6a: $e2
    pop hl                                        ; $5d6b: $e1
    call nz, $e5c0                                ; $5d6c: $c4 $c0 $e5
    ld d, h                                       ; $5d6f: $54
    ld c, e                                       ; $5d70: $4b
    inc bc                                        ; $5d71: $03
    pop hl                                        ; $5d72: $e1
    dec c                                         ; $5d73: $0d
    ld a, c                                       ; $5d74: $79
    ld l, l                                       ; $5d75: $6d
    inc de                                        ; $5d76: $13
    jp $eac1                                      ; $5d77: $c3 $c1 $ea


    dec bc                                        ; $5d7a: $0b
    dec bc                                        ; $5d7b: $0b
    ld c, e                                       ; $5d7c: $4b
    ld c, e                                       ; $5d7d: $4b
    cp [hl]                                       ; $5d7e: $be
    pop hl                                        ; $5d7f: $e1
    ld [c], a                                     ; $5d80: $e2
    or [hl]                                       ; $5d81: $b6
    add $6d                                       ; $5d82: $c6 $6d
    ld de, $e051                                  ; $5d84: $11 $51 $e0
    and d                                         ; $5d87: $a2
    and $e0                                       ; $5d88: $e6 $e0
    ld c, l                                       ; $5d8a: $4d
    dec c                                         ; $5d8b: $0d
    ld c, $01                                     ; $5d8c: $0e $01
    ld l, l                                       ; $5d8e: $6d
    cp a                                          ; $5d8f: $bf
    and $87                                       ; $5d90: $e6 $87
    ldh [$c1], a                                  ; $5d92: $e0 $c1
    pop hl                                        ; $5d94: $e1
    ld h, a                                       ; $5d95: $67
    ldh [$be], a                                  ; $5d96: $e0 $be
    ldh [$80], a                                  ; $5d98: $e0 $80
    ret nz                                        ; $5d9a: $c0

    cp h                                          ; $5d9b: $bc
    jp nz, Jump_000_2b11                          ; $5d9c: $c2 $11 $2b

    ret nz                                        ; $5d9f: $c0

    and $0d                                       ; $5da0: $e6 $0d
    xor l                                         ; $5da2: $ad
    dec d                                         ; $5da3: $15
    and h                                         ; $5da4: $a4
    ld c, l                                       ; $5da5: $4d
    cp a                                          ; $5da6: $bf
    push hl                                       ; $5da7: $e5
    jp nz, $c1e3                                  ; $5da8: $c2 $e3 $c1

    ldh [$82], a                                  ; $5dab: $e0 $82
    ld b, h                                       ; $5dad: $44
    ret nz                                        ; $5dae: $c0

    ld l, e                                       ; $5daf: $6b
    inc a                                         ; $5db0: $3c
    db $e4                                        ; $5db1: $e4
    add b                                         ; $5db2: $80
    ld [c], a                                     ; $5db3: $e2
    bit 1, l                                      ; $5db4: $cb $4d
    rst $28                                       ; $5db6: $ef
    push bc                                       ; $5db7: $c5
    ld d, b                                       ; $5db8: $50
    and l                                         ; $5db9: $a5
    ld l, l                                       ; $5dba: $6d
    dec de                                        ; $5dbb: $1b
    ld c, l                                       ; $5dbc: $4d
    ld c, e                                       ; $5dbd: $4b
    add d                                         ; $5dbe: $82
    db $e3                                        ; $5dbf: $e3
    ld l, e                                       ; $5dc0: $6b
    ld l, e                                       ; $5dc1: $6b
    add a                                         ; $5dc2: $87
    pop hl                                        ; $5dc3: $e1
    ld a, c                                       ; $5dc4: $79
    pop hl                                        ; $5dc5: $e1
    cp a                                          ; $5dc6: $bf
    pop hl                                        ; $5dc7: $e1
    ld b, b                                       ; $5dc8: $40
    ld a, l                                       ; $5dc9: $7d
    pop hl                                        ; $5dca: $e1
    ld l, e                                       ; $5dcb: $6b
    ldh [$3d], a                                  ; $5dcc: $e0 $3d
    add $ba                                       ; $5dce: $c6 $ba
    ld l, c                                       ; $5dd0: $69
    ld de, $3ba7                                  ; $5dd1: $11 $a7 $3b
    pop hl                                        ; $5dd4: $e1
    ld c, l                                       ; $5dd5: $4d
    pop de                                        ; $5dd6: $d1
    and b                                         ; $5dd7: $a0
    jr nz, jr_029_5d68                            ; $5dd8: $20 $8e

    ldh [$85], a                                  ; $5dda: $e0 $85
    db $e3                                        ; $5ddc: $e3
    cp [hl]                                       ; $5ddd: $be
    ret nz                                        ; $5dde: $c0

    add d                                         ; $5ddf: $82

Jump_029_5de0:
    pop hl                                        ; $5de0: $e1
    ld a, [$4bc1]                                 ; $5de1: $fa $c1 $4b
    ei                                            ; $5de4: $fb
    and c                                         ; $5de5: $a1
    cp a                                          ; $5de6: $bf
    ld [c], a                                     ; $5de7: $e2
    db $e4                                        ; $5de8: $e4
    ld b, h                                       ; $5de9: $44
    ld h, c                                       ; $5dea: $61
    bit 0, a                                      ; $5deb: $cb $47
    dec l                                         ; $5ded: $2d
    pop de                                        ; $5dee: $d1
    adc c                                         ; $5def: $89
    call z, Call_029_4b81                         ; $5df0: $cc $81 $4b
    dec hl                                        ; $5df3: $2b
    ld a, [bc]                                    ; $5df4: $0a
    add c                                         ; $5df5: $81
    ld l, e                                       ; $5df6: $6b
    pop bc                                        ; $5df7: $c1
    push hl                                       ; $5df8: $e5
    ld a, [hl]                                    ; $5df9: $7e
    ret nz                                        ; $5dfa: $c0

    cp a                                          ; $5dfb: $bf
    pop bc                                        ; $5dfc: $c1
    cp [hl]                                       ; $5dfd: $be
    ldh [$fe], a                                  ; $5dfe: $e0 $fe
    ldh [$fc], a                                  ; $5e00: $e0 $fc
    and d                                         ; $5e02: $a2
    dec l                                         ; $5e03: $2d
    ld [$411d], sp                                ; $5e04: $08 $1d $41
    bit 1, c                                      ; $5e07: $cb $49
    ret nz                                        ; $5e09: $c0

    db $ed                                        ; $5e0a: $ed
    dec c                                         ; $5e0b: $0d
    ld b, b                                       ; $5e0c: $40
    ldh [$c0], a                                  ; $5e0d: $e0 $c0
    ld [c], a                                     ; $5e0f: $e2
    inc bc                                        ; $5e10: $03
    ld [c], a                                     ; $5e11: $e2
    ret nz                                        ; $5e12: $c0

    db $e4                                        ; $5e13: $e4
    pop bc                                        ; $5e14: $c1
    dec bc                                        ; $5e15: $0b
    ld a, a                                       ; $5e16: $7f
    ld [c], a                                     ; $5e17: $e2
    or b                                          ; $5e18: $b0
    add c                                         ; $5e19: $81
    ld a, h                                       ; $5e1a: $7c
    ld b, e                                       ; $5e1b: $43
    dec bc                                        ; $5e1c: $0b
    ld l, b                                       ; $5e1d: $68
    add b                                         ; $5e1e: $80
    rst $20                                       ; $5e1f: $e7
    dec c                                         ; $5e20: $0d
    ld c, l                                       ; $5e21: $4d
    dec b                                         ; $5e22: $05
    ld c, $74                                     ; $5e23: $0e $74
    ret nz                                        ; $5e25: $c0

    ld l, l                                       ; $5e26: $6d
    adc e                                         ; $5e27: $8b
    add b                                         ; $5e28: $80
    ld c, h                                       ; $5e29: $4c
    ld [c], a                                     ; $5e2a: $e2
    cp a                                          ; $5e2b: $bf
    ld [c], a                                     ; $5e2c: $e2
    ld [bc], a                                    ; $5e2d: $02
    ret nz                                        ; $5e2e: $c0

    or l                                          ; $5e2f: $b5
    call nz, Call_029_7460                        ; $5e30: $c4 $60 $74
    ret nz                                        ; $5e33: $c0

    cp $a5                                        ; $5e34: $fe $a5
    ld a, d                                       ; $5e36: $7a
    ld [hl], b                                    ; $5e37: $70
    call nz, Call_029_4002                        ; $5e38: $c4 $02 $40
    pop hl                                        ; $5e3b: $e1
    ld l, l                                       ; $5e3c: $6d
    ld a, [bc]                                    ; $5e3d: $0a
    add b                                         ; $5e3e: $80
    ld [c], a                                     ; $5e3f: $e2
    nop                                           ; $5e40: $00
    jp z, Jump_029_7ea1                           ; $5e41: $ca $a1 $7e

    pop hl                                        ; $5e44: $e1
    add b                                         ; $5e45: $80
    push hl                                       ; $5e46: $e5
    ld a, a                                       ; $5e47: $7f
    ldh [$80], a                                  ; $5e48: $e0 $80
    add sp, -$46                                  ; $5e4a: $e8 $ba
    ld l, l                                       ; $5e4c: $6d
    ret                                           ; $5e4d: $c9


    inc h                                         ; $5e4e: $24
    ld a, $81                                     ; $5e4f: $3e $81
    ld [de], a                                    ; $5e51: $12
    pop bc                                        ; $5e52: $c1
    pop hl                                        ; $5e53: $e1
    ld a, [bc]                                    ; $5e54: $0a
    dec c                                         ; $5e55: $0d
    jp nz, $c042                                  ; $5e56: $c2 $42 $c0

    ld c, e                                       ; $5e59: $4b
    add b                                         ; $5e5a: $80
    and b                                         ; $5e5b: $a0
    cp [hl]                                       ; $5e5c: $be
    and d                                         ; $5e5d: $a2
    ld a, c                                       ; $5e5e: $79
    pop hl                                        ; $5e5f: $e1
    jr @-$7e                                      ; $5e60: $18 $80

    add sp, $7a                                   ; $5e62: $e8 $7a
    ld l, h                                       ; $5e64: $6c
    ret                                           ; $5e65: $c9


    daa                                           ; $5e66: $27
    ld c, l                                       ; $5e67: $4d
    dec c                                         ; $5e68: $0d
    add l                                         ; $5e69: $85
    and a                                         ; $5e6a: $a7
    call Call_000_3fe2                            ; $5e6b: $cd $e2 $3f
    and b                                         ; $5e6e: $a0
    nop                                           ; $5e6f: $00
    db $fc                                        ; $5e70: $fc
    ld [c], a                                     ; $5e71: $e2
    nop                                           ; $5e72: $00
    db $eb                                        ; $5e73: $eb
    bit 1, h                                      ; $5e74: $cb $4c
    ret                                           ; $5e76: $c9


    daa                                           ; $5e77: $27
    ld b, d                                       ; $5e78: $42
    pop bc                                        ; $5e79: $c1
    rrca                                          ; $5e7a: $0f
    add d                                         ; $5e7b: $82
    adc h                                         ; $5e7c: $8c
    jp nz, $a2c0                                  ; $5e7d: $c2 $c0 $a2

    nop                                           ; $5e80: $00
    jp $f8e2                                      ; $5e81: $c3 $e2 $f8


    and e                                         ; $5e84: $a3
    ld [hl], c                                    ; $5e85: $71
    ld h, b                                       ; $5e86: $60
    ld e, b                                       ; $5e87: $58
    and c                                         ; $5e88: $a1
    ld a, $0f                                     ; $5e89: $3e $0f
    ret nz                                        ; $5e8b: $c0

    add sp, -$48                                  ; $5e8c: $e8 $b8
    ld h, h                                       ; $5e8e: $64
    cp $a2                                        ; $5e8f: $fe $a2
    nop                                           ; $5e91: $00
    add b                                         ; $5e92: $80
    and e                                         ; $5e93: $a3
    cp d                                          ; $5e94: $ba
    and c                                         ; $5e95: $a1
    cp b                                          ; $5e96: $b8
    and d                                         ; $5e97: $a2
    pop bc                                        ; $5e98: $c1

jr_029_5e99:
    ld [c], a                                     ; $5e99: $e2
    di                                            ; $5e9a: $f3
    ld b, c                                       ; $5e9b: $41
    jr nz, jr_029_5ee1                            ; $5e9c: $20 $43

    cpl                                           ; $5e9e: $2f
    ld l, b                                       ; $5e9f: $68
    ret                                           ; $5ea0: $c9


    inc hl                                        ; $5ea1: $23
    inc de                                        ; $5ea2: $13
    dec c                                         ; $5ea3: $0d
    dec l                                         ; $5ea4: $2d
    jp nc, Jump_029_4a41                          ; $5ea5: $d2 $41 $4a

    ld h, e                                       ; $5ea8: $63
    ld l, e                                       ; $5ea9: $6b
    add c                                         ; $5eaa: $81
    ld [c], a                                     ; $5eab: $e2
    ret nz                                        ; $5eac: $c0

    ld [$41f3], a                                 ; $5ead: $ea $f3 $41
    jr nz, jr_029_5eb4                            ; $5eb0: $20 $02

    ret nz                                        ; $5eb2: $c0

    sbc h                                         ; $5eb3: $9c

jr_029_5eb4:
    dec b                                         ; $5eb4: $05
    cp $26                                        ; $5eb5: $fe $26
    ld e, [hl]                                    ; $5eb7: $5e
    rlca                                          ; $5eb8: $07
    sub [hl]                                      ; $5eb9: $96
    ld b, b                                       ; $5eba: $40
    ld c, $bf                                     ; $5ebb: $0e $bf
    db $e4                                        ; $5ebd: $e4
    ld b, a                                       ; $5ebe: $47
    pop bc                                        ; $5ebf: $c1
    add b                                         ; $5ec0: $80

Call_029_5ec1:
    ld a, [hl]                                    ; $5ec1: $7e
    and h                                         ; $5ec2: $a4
    ld a, [hl-]                                   ; $5ec3: $3a
    and h                                         ; $5ec4: $a4
    ld a, d                                       ; $5ec5: $7a
    add d                                         ; $5ec6: $82
    cp [hl]                                       ; $5ec7: $be
    ld bc, $6a08                                  ; $5ec8: $01 $08 $6a
    ld b, a                                       ; $5ecb: $47
    ld b, [hl]                                    ; $5ecc: $46
    dec d                                         ; $5ecd: $15
    ld hl, $412d                                  ; $5ece: $21 $2d $41
    dec l                                         ; $5ed1: $2d
    xor c                                         ; $5ed2: $a9
    jr nz, jr_029_5f53                            ; $5ed3: $20 $7e

    db $e4                                        ; $5ed5: $e4
    ld a, $c3                                     ; $5ed6: $3e $c3
    add $e4                                       ; $5ed8: $c6 $e4
    pop bc                                        ; $5eda: $c1
    and b                                         ; $5edb: $a0
    ld l, e                                       ; $5edc: $6b
    ld [bc], a                                    ; $5edd: $02
    push hl                                       ; $5ede: $e5
    ld b, b                                       ; $5edf: $40
    sbc h                                         ; $5ee0: $9c

jr_029_5ee1:
    ld b, $5a                                     ; $5ee1: $06 $5a
    ld h, $da                                     ; $5ee3: $26 $da
    ld bc, $04d2                                  ; $5ee5: $01 $d2 $04
    ld a, [bc]                                    ; $5ee8: $0a
    ld b, d                                       ; $5ee9: $42
    dec a                                         ; $5eea: $3d
    ldh [$0a], a                                  ; $5eeb: $e0 $0a
    dec a                                         ; $5eed: $3d
    jp $c404                                      ; $5eee: $c3 $04 $c4


    and e                                         ; $5ef1: $a3
    ld a, [$6b61]                                 ; $5ef2: $fa $61 $6b
    db $fd                                        ; $5ef5: $fd
    ld b, c                                       ; $5ef6: $41
    jp $c0c2                                      ; $5ef7: $c3 $c2 $c0


    ldh a, [$63]                                  ; $5efa: $f0 $63
    ld bc, $a0ff                                  ; $5efc: $01 $ff $a0
    ld h, b                                       ; $5eff: $60
    ld e, a                                       ; $5f00: $5f
    ld [hl+], a                                   ; $5f01: $22
    ret                                           ; $5f02: $c9


    ld hl, $4248                                  ; $5f03: $21 $48 $42
    ret z                                         ; $5f06: $c8

    and h                                         ; $5f07: $a4
    ld a, b                                       ; $5f08: $78
    add c                                         ; $5f09: $81
    ld c, e                                       ; $5f0a: $4b
    ld l, e                                       ; $5f0b: $6b
    add d                                         ; $5f0c: $82
    ld [c], a                                     ; $5f0d: $e2
    ld [$a784], sp                                ; $5f0e: $08 $84 $a7
    jp c, Jump_000_250b                           ; $5f11: $da $0b $25

    jr nz, jr_029_5f84                            ; $5f14: $20 $6e

    jr nc, jr_029_5e99                            ; $5f16: $30 $81

    ret nz                                        ; $5f18: $c0

    push hl                                       ; $5f19: $e5
    db $fc                                        ; $5f1a: $fc
    and h                                         ; $5f1b: $a4
    ret nz                                        ; $5f1c: $c0

    pop bc                                        ; $5f1d: $c1
    jr nc, @-$77                                  ; $5f1e: $30 $87

    pop hl                                        ; $5f20: $e1
    jr c, @+$49                                   ; $5f21: $38 $47

    add b                                         ; $5f23: $80
    ld c, d                                       ; $5f24: $4a
    sbc d                                         ; $5f25: $9a
    rlca                                          ; $5f26: $07
    ld l, $6e                                     ; $5f27: $2e $6e
    or b                                          ; $5f29: $b0
    add e                                         ; $5f2a: $83
    add b                                         ; $5f2b: $80
    and $00                                       ; $5f2c: $e6 $00
    ld a, h                                       ; $5f2e: $7c
    call nz, Call_029_4e75                        ; $5f2f: $c4 $75 $4e
    ld [hl], a                                    ; $5f32: $77
    ld hl, $2719                                  ; $5f33: $21 $19 $27
    ret nz                                        ; $5f36: $c0

    rst $20                                       ; $5f37: $e7
    inc hl                                        ; $5f38: $23
    ld [bc], a                                    ; $5f39: $02
    or b                                          ; $5f3a: $b0
    and c                                         ; $5f3b: $a1
    inc [hl]                                      ; $5f3c: $34
    add e                                         ; $5f3d: $83
    nop                                           ; $5f3e: $00
    dec sp                                        ; $5f3f: $3b
    add $be                                       ; $5f40: $c6 $be
    daa                                           ; $5f42: $27
    inc b                                         ; $5f43: $04
    pop bc                                        ; $5f44: $c1
    add h                                         ; $5f45: $84
    add d                                         ; $5f46: $82
    ld c, $31                                     ; $5f47: $0e $31
    ret nz                                        ; $5f49: $c0

    db $e4                                        ; $5f4a: $e4
    xor b                                         ; $5f4b: $a8
    ld b, b                                       ; $5f4c: $40
    db $f4                                        ; $5f4d: $f4
    ld h, e                                       ; $5f4e: $63
    dec b                                         ; $5f4f: $05

jr_029_5f50:
    ld c, $bf                                     ; $5f50: $0e $bf
    ld a, [c]                                     ; $5f52: $f2

jr_029_5f53:
    dec bc                                        ; $5f53: $0b
    add h                                         ; $5f54: $84
    and e                                         ; $5f55: $a3
    sub e                                         ; $5f56: $93
    rst $00                                       ; $5f57: $c7
    ret nz                                        ; $5f58: $c0

    ldh a, [$63]                                  ; $5f59: $f0 $63
    ld b, [hl]                                    ; $5f5b: $46
    dec a                                         ; $5f5c: $3d
    db $ed                                        ; $5f5d: $ed

Jump_029_5f5e:
    nop                                           ; $5f5e: $00
    pop bc                                        ; $5f5f: $c1
    and $93                                       ; $5f60: $e6 $93
    ret z                                         ; $5f62: $c8

    add b                                         ; $5f63: $80
    rst $28                                       ; $5f64: $ef
    ld [c], a                                     ; $5f65: $e2
    and c                                         ; $5f66: $a1
    inc [hl]                                      ; $5f67: $34
    ld h, l                                       ; $5f68: $65
    ldh a, [$a2]                                  ; $5f69: $f0 $a2
    adc b                                         ; $5f6b: $88
    db $e3                                        ; $5f6c: $e3
    add h                                         ; $5f6d: $84
    ld [c], a                                     ; $5f6e: $e2
    inc bc                                        ; $5f6f: $03
    dec l                                         ; $5f70: $2d
    dec l                                         ; $5f71: $2d
    ld b, h                                       ; $5f72: $44
    ld b, e                                       ; $5f73: $43
    sub e                                         ; $5f74: $93
    rst $00                                       ; $5f75: $c7
    ld b, b                                       ; $5f76: $40
    rst $28                                       ; $5f77: $ef
    ld h, $62                                     ; $5f78: $26 $62
    rst $18                                       ; $5f7a: $df
    add $33                                       ; $5f7b: $c6 $33
    and c                                         ; $5f7d: $a1
    nop                                           ; $5f7e: $00
    pop bc                                        ; $5f7f: $c1
    and $47                                       ; $5f80: $e6 $47
    ld b, a                                       ; $5f82: $47
    sub e                                         ; $5f83: $93

jr_029_5f84:
    add $c0                                       ; $5f84: $c6 $c0
    daa                                           ; $5f86: $27
    jp nz, $a7a5                                  ; $5f87: $c2 $a5 $a7

    daa                                           ; $5f8a: $27
    ld a, [hl-]                                   ; $5f8b: $3a
    db $e4                                        ; $5f8c: $e4
    inc [hl]                                      ; $5f8d: $34
    ld [bc], a                                    ; $5f8e: $02
    nop                                           ; $5f8f: $00
    ld [c], a                                     ; $5f90: $e2
    inc h                                         ; $5f91: $24
    ld b, e                                       ; $5f92: $43
    inc b                                         ; $5f93: $04
    sub e                                         ; $5f94: $93
    rst $00                                       ; $5f95: $c7
    or l                                          ; $5f96: $b5
    ld sp, $2be9                                  ; $5f97: $31 $e9 $2b
    ld e, b                                       ; $5f9a: $58
    inc l                                         ; $5f9b: $2c
    rst $18                                       ; $5f9c: $df
    jp $c8d3                                      ; $5f9d: $c3 $d3 $c8


    nop                                           ; $5fa0: $00
    jp nz, $e9ef                                  ; $5fa1: $c2 $ef $e9

    add hl, hl                                    ; $5fa4: $29
    and a                                         ; $5fa5: $a7
    add hl, hl                                    ; $5fa6: $29
    ret nz                                        ; $5fa7: $c0

    db $fd                                        ; $5fa8: $fd
    db $ec                                        ; $5fa9: $ec
    inc bc                                        ; $5faa: $03
    jp hl                                         ; $5fab: $e9


    jr z, jr_029_6024                             ; $5fac: $28 $76

    and c                                         ; $5fae: $a1
    ldh a, [$84]                                  ; $5faf: $f0 $84
    jr nz, jr_029_5f50                            ; $5fb1: $20 $9d

    add [hl]                                      ; $5fb3: $86
    add b                                         ; $5fb4: $80
    db $eb                                        ; $5fb5: $eb
    ld b, b                                       ; $5fb6: $40
    rst $00                                       ; $5fb7: $c7
    ret nz                                        ; $5fb8: $c0

    jp hl                                         ; $5fb9: $e9


    jp hl                                         ; $5fba: $e9


    dec h                                         ; $5fbb: $25
    ld c, $ae                                     ; $5fbc: $0e $ae
    add b                                         ; $5fbe: $80
    xor a                                         ; $5fbf: $af
    add l                                         ; $5fc0: $85
    nop                                           ; $5fc1: $00
    ld b, b                                       ; $5fc2: $40
    di                                            ; $5fc3: $f3
    ret nz                                        ; $5fc4: $c0

    pop af                                        ; $5fc5: $f1
    jp hl                                         ; $5fc6: $e9


    jr z, jr_029_5ff4                             ; $5fc7: $28 $2b

    and b                                         ; $5fc9: $a0
    xor a                                         ; $5fca: $af
    add [hl]                                      ; $5fcb: $86
    dec d                                         ; $5fcc: $15
    ld h, h                                       ; $5fcd: $64
    ld b, a                                       ; $5fce: $47
    ld [bc], a                                    ; $5fcf: $02
    and a                                         ; $5fd0: $a7
    pop hl                                        ; $5fd1: $e1
    nop                                           ; $5fd2: $00
    ld d, l                                       ; $5fd3: $55
    add d                                         ; $5fd4: $82
    ret nz                                        ; $5fd5: $c0

    ld a, [c]                                     ; $5fd6: $f2
    jp hl                                         ; $5fd7: $e9


    daa                                           ; $5fd8: $27
    dec hl                                        ; $5fd9: $2b
    and d                                         ; $5fda: $a2
    ld h, b                                       ; $5fdb: $60
    ld hl, $0bd3                                  ; $5fdc: $21 $d3 $0b
    inc e                                         ; $5fdf: $1c

Jump_029_5fe0:
    and c                                         ; $5fe0: $a1
    dec c                                         ; $5fe1: $0d
    add h                                         ; $5fe2: $84
    nop                                           ; $5fe3: $00
    ret nz                                        ; $5fe4: $c0

    rst $38                                       ; $5fe5: $ff
    ld [$84cd], a                                 ; $5fe6: $ea $cd $84
    inc b                                         ; $5fe9: $04
    ld b, [hl]                                    ; $5fea: $46
    jp nc, Jump_029_4c29                          ; $5feb: $d2 $29 $4c

    db $ec                                        ; $5fee: $ec
    ld h, d                                       ; $5fef: $62
    ld h, a                                       ; $5ff0: $67
    inc bc                                        ; $5ff1: $03
    db $d3                                        ; $5ff2: $d3
    add hl, bc                                    ; $5ff3: $09

jr_029_5ff4:
    nop                                           ; $5ff4: $00
    sub $25                                       ; $5ff5: $d6 $25
    inc b                                         ; $5ff7: $04
    call Call_029_617f                            ; $5ff8: $cd $7f $61
    add b                                         ; $5ffb: $80
    ld h, b                                       ; $5ffc: $60
    ret nz                                        ; $5ffd: $c0

    add sp, -$55                                  ; $5ffe: $e8 $ab
    ld h, d                                       ; $6000: $62
    ld [$03d0], a                                 ; $6001: $ea $d0 $03
    ld l, e                                       ; $6004: $6b
    nop                                           ; $6005: $00
    dec a                                         ; $6006: $3d
    ld b, a                                       ; $6007: $47
    pop de                                        ; $6008: $d1
    push bc                                       ; $6009: $c5
    jp hl                                         ; $600a: $e9


    dec h                                         ; $600b: $25
    inc l                                         ; $600c: $2c
    ld h, d                                       ; $600d: $62
    rst $28                                       ; $600e: $ef
    ld h, d                                       ; $600f: $62
    ld [$c0cb], a                                 ; $6010: $ea $cb $c0
    push af                                       ; $6013: $f5
    pop de                                        ; $6014: $d1
    add $00                                       ; $6015: $c6 $00
    rst $28                                       ; $6017: $ef
    xor c                                         ; $6018: $a9
    ld [c], a                                     ; $6019: $e2
    ld h, $c0                                     ; $601a: $26 $c0
    rst $38                                       ; $601c: $ff
    pop de                                        ; $601d: $d1
    add $c0                                       ; $601e: $c6 $c0
    xor $13                                       ; $6020: $ee $13
    add hl, hl                                    ; $6022: $29
    inc bc                                        ; $6023: $03

jr_029_6024:
    ld h, [hl]                                    ; $6024: $66
    ret nz                                        ; $6025: $c0

    rst $38                                       ; $6026: $ff
    nop                                           ; $6027: $00
    ret nz                                        ; $6028: $c0

    ld a, [c]                                     ; $6029: $f2
    add d                                         ; $602a: $82
    push de                                       ; $602b: $d5
    pop de                                        ; $602c: $d1
    ret z                                         ; $602d: $c8

    add b                                         ; $602e: $80
    rst $28                                       ; $602f: $ef
    xor b                                         ; $6030: $a8
    adc [hl]                                      ; $6031: $8e
    ret nz                                        ; $6032: $c0

    pop af                                        ; $6033: $f1
    pop de                                        ; $6034: $d1
    add $c0                                       ; $6035: $c6 $c0
    ld a, [c]                                     ; $6037: $f2
    nop                                           ; $6038: $00
    db $fd                                        ; $6039: $fd
    rst $30                                       ; $603a: $f7
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    add c                                         ; $603e: $81
    nop                                           ; $603f: $00
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
    rrca                                          ; $604c: $0f
    nop                                           ; $604d: $00
    rst $38                                       ; $604e: $ff
    pop hl                                        ; $604f: $e1
    ld [$e9f3], a                                 ; $6050: $ea $f3 $e9
    pop hl                                        ; $6053: $e1
    rst $30                                       ; $6054: $f7
    db $e3                                        ; $6055: $e3
    db $dd                                        ; $6056: $dd
    db $ed                                        ; $6057: $ed
    ld [$c5e6], a                                 ; $6058: $ea $e6 $c5
    db $e4                                        ; $605b: $e4
    cp e                                          ; $605c: $bb
    db $ed                                        ; $605d: $ed
    nop                                           ; $605e: $00
    xor a                                         ; $605f: $af
    db $e4                                        ; $6060: $e4
    and [hl]                                      ; $6061: $a6
    jp hl                                         ; $6062: $e9


    sbc d                                         ; $6063: $9a
    pop af                                        ; $6064: $f1
    halt                                          ; $6065: $76
    db $ed                                        ; $6066: $ed
    ld l, c                                       ; $6067: $69
    db $eb                                        ; $6068: $eb
    ldh [$f8], a                                  ; $6069: $e0 $f8
    ld l, l                                       ; $606b: $6d
    ldh a, [$e0]                                  ; $606c: $f0 $e0
    ldh a, [rP1]                                  ; $606e: $f0 $00
    rst $18                                       ; $6070: $df
    ld hl, sp+$08                                 ; $6071: $f8 $08
    db $e3                                        ; $6073: $e3
    ld a, a                                       ; $6074: $7f
    ld sp, hl                                     ; $6075: $f9
    ld a, [c]                                     ; $6076: $f2
    db $ec                                        ; $6077: $ec
    ldh [rIE], a                                  ; $6078: $e0 $ff
    ldh [rIE], a                                  ; $607a: $e0 $ff
    ldh [$fc], a                                  ; $607c: $e0 $fc
    ld a, c                                       ; $607e: $79
    call $f000                                    ; $607f: $cd $00 $f0

Jump_029_6082:
    db $fd                                        ; $6082: $fd
    sub b                                         ; $6083: $90
    rst $38                                       ; $6084: $ff
    ldh [$fc], a                                  ; $6085: $e0 $fc
    adc [hl]                                      ; $6087: $8e
    call $b3e3                                    ; $6088: $cd $e3 $b3
    ld b, c                                       ; $608b: $41
    jp c, $adf7                                   ; $608c: $da $f7 $ad

    db $dd                                        ; $608f: $dd
    or $00                                        ; $6090: $f6 $00
    ld [hl], a                                    ; $6092: $77
    cp a                                          ; $6093: $bf
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
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    ld bc, $ff00                                  ; $60a1: $01 $00 $ff
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
    adc b                                         ; $60b1: $88
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    db $ed                                        ; $60b6: $ed
    db $ec                                        ; $60b7: $ec
    inc de                                        ; $60b8: $13
    ldh [rIE], a                                  ; $60b9: $e0 $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    ld sp, hl                                     ; $60bd: $f9
    ld hl, sp+$10                                 ; $60be: $f8 $10
    ld [bc], a                                    ; $60c0: $02
    db $dd                                        ; $60c1: $dd
    add sp, -$0f                                  ; $60c2: $e8 $f1
    rst $38                                       ; $60c4: $ff
    ldh [$e0], a                                  ; $60c5: $e0 $e0
    ld hl, sp-$1f                                 ; $60c7: $f8 $e1
    pop hl                                        ; $60c9: $e1
    sbc $f0                                       ; $60ca: $de $f0
    pop hl                                        ; $60cc: $e1
    db $ec                                        ; $60cd: $ec
    ldh [rIE], a                                  ; $60ce: $e0 $ff
    nop                                           ; $60d0: $00
    rst $18                                       ; $60d1: $df
    db $fc                                        ; $60d2: $fc
    ldh [$fc], a                                  ; $60d3: $e0 $fc
    dec l                                         ; $60d5: $2d
    rst $30                                       ; $60d6: $f7
    db $e3                                        ; $60d7: $e3
    ld a, [$ffff]                                 ; $60d8: $fa $ff $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    nop                                           ; $60e1: $00
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
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    cp $01                                        ; $60f3: $fe $01
    nop                                           ; $60f5: $00
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
    nop                                           ; $6104: $00
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
    nop                                           ; $6115: $00
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
    nop                                           ; $6126: $00
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
    nop                                           ; $6137: $00
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
    nop                                           ; $6148: $00
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
    nop                                           ; $6159: $00
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
    nop                                           ; $616a: $00
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
    db $e4                                        ; $6176: $e4
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    nop                                           ; $617d: $00
    ccf                                           ; $617e: $3f

Call_029_617f:
    ccf                                           ; $617f: $3f
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    jr nz, jr_029_61a5                            ; $6183: $20 $20

    ld d, l                                       ; $6185: $55
    and b                                         ; $6186: $a0
    ld a, [hl]                                    ; $6187: $7e
    rst $38                                       ; $6188: $ff
    ld a, a                                       ; $6189: $7f
    ld [$0825], sp                                ; $618a: $08 $25 $08
    dec h                                         ; $618d: $25
    ld [$0825], sp                                ; $618e: $08 $25 $08
    dec h                                         ; $6191: $25
    or h                                          ; $6192: $b4
    ld d, l                                       ; $6193: $55
    ccf                                           ; $6194: $3f
    ld a, a                                       ; $6195: $7f
    push hl                                       ; $6196: $e5
    cpl                                           ; $6197: $2f
    add c                                         ; $6198: $81
    ld h, $ff                                     ; $6199: $26 $ff
    ld a, a                                       ; $619b: $7f
    db $ec                                        ; $619c: $ec
    dec hl                                        ; $619d: $2b
    rst $20                                       ; $619e: $e7
    dec hl                                        ; $619f: $2b
    add c                                         ; $61a0: $81
    ld h, $5a                                     ; $61a1: $26 $5a
    ld a, l                                       ; $61a3: $7d
    cp a                                          ; $61a4: $bf

jr_029_61a5:
    ld a, [hl]                                    ; $61a5: $7e
    ld [hl], h                                    ; $61a6: $74
    db $10                                        ; $61a7: $10
    add c                                         ; $61a8: $81
    ld h, $ff                                     ; $61a9: $26 $ff
    ld a, a                                       ; $61ab: $7f
    push hl                                       ; $61ac: $e5
    cpl                                           ; $61ad: $2f
    add c                                         ; $61ae: $81
    ld h, $ca                                     ; $61af: $26 $ca
    nop                                           ; $61b1: $00
    rst $38                                       ; $61b2: $ff
    ld a, a                                       ; $61b3: $7f
    ccf                                           ; $61b4: $3f
    ld a, [hl]                                    ; $61b5: $7e
    scf                                           ; $61b6: $37
    ld [hl], c                                    ; $61b7: $71
    jp z, Jump_000_0800                           ; $61b8: $ca $00 $08

    dec h                                         ; $61bb: $25
    ld [$0825], sp                                ; $61bc: $08 $25 $08
    dec h                                         ; $61bf: $25
    ld [$d525], sp                                ; $61c0: $08 $25 $d5

jr_029_61c3:
    nop                                           ; $61c3: $00
    rst $38                                       ; $61c4: $ff
    ldh [rTIMA], a                                ; $61c5: $e0 $05
    ei                                            ; $61c7: $fb
    ldh [$0b], a                                  ; $61c8: $e0 $0b
    rst $30                                       ; $61ca: $f7
    pop hl                                        ; $61cb: $e1
    nop                                           ; $61cc: $00
    ld [bc], a                                    ; $61cd: $02
    db $eb                                        ; $61ce: $eb
    nop                                           ; $61cf: $00
    jr z, @-$0f                                   ; $61d0: $28 $ef

    ldh [$90], a                                  ; $61d2: $e0 $90
    db $eb                                        ; $61d4: $eb
    ldh [$f5], a                                  ; $61d5: $e0 $f5
    nop                                           ; $61d7: $00

Jump_029_61d8:
    ret z                                         ; $61d8: $c8

    cp $e5                                        ; $61d9: $fe $e5
    ldh [$80], a                                  ; $61db: $e0 $80
    nop                                           ; $61dd: $00
    db $ec                                        ; $61de: $ec
    rst $38                                       ; $61df: $ff
    ld hl, sp-$01                                 ; $61e0: $f8 $ff
    ldh [rIE], a                                  ; $61e2: $e0 $ff
    cp $42                                        ; $61e4: $fe $42
    ld hl, sp-$38                                 ; $61e6: $f8 $c8
    ldh a, [$80]                                  ; $61e8: $f0 $80
    ldh [rNR10], a                                ; $61ea: $e0 $10
    rst $28                                       ; $61ec: $ef
    ldh [rP1], a                                  ; $61ed: $e0 $00
    ret nz                                        ; $61ef: $c0

    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    ld [c], a                                     ; $61f2: $e2
    rst $30                                       ; $61f3: $f7
    rst $38                                       ; $61f4: $ff
    cp h                                          ; $61f5: $bc
    ld a, a                                       ; $61f6: $7f
    rst $38                                       ; $61f7: $ff
    add sp, -$01                                  ; $61f8: $e8 $ff
    add c                                         ; $61fa: $81
    cp $08                                        ; $61fb: $fe $08
    ldh a, [$f8]                                  ; $61fd: $f0 $f8
    push hl                                       ; $61ff: $e5
    ei                                            ; $6200: $fb
    jr nz, jr_029_61c3                            ; $6201: $20 $c0

    cp a                                          ; $6203: $bf
    ld [c], a                                     ; $6204: $e2
    nop                                           ; $6205: $00
    ld a, a                                       ; $6206: $7f
    rst $38                                       ; $6207: $ff
    cpl                                           ; $6208: $2f
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    ccf                                           ; $620b: $3f
    rst $38                                       ; $620c: $ff
    rra                                           ; $620d: $1f
    rst $38                                       ; $620e: $ff
    or a                                          ; $620f: $b7
    ld a, a                                       ; $6210: $7f
    rra                                           ; $6211: $1f
    ld a, a                                       ; $6212: $7f
    rst $38                                       ; $6213: $ff
    rrca                                          ; $6214: $0f
    ld a, a                                       ; $6215: $7f
    ld c, a                                       ; $6216: $4f
    ccf                                           ; $6217: $3f
    rlca                                          ; $6218: $07
    rra                                           ; $6219: $1f
    ld [bc], a                                    ; $621a: $02
    rra                                           ; $621b: $1f
    rst $38                                       ; $621c: $ff
    inc de                                        ; $621d: $13
    rrca                                          ; $621e: $0f
    ld bc, $0b0f                                  ; $621f: $01 $0f $0b
    rlca                                          ; $6222: $07
    ld bc, $ff07                                  ; $6223: $01 $07 $ff
    nop                                           ; $6226: $00
    rlca                                          ; $6227: $07
    inc b                                         ; $6228: $04
    inc bc                                        ; $6229: $03
    ld e, h                                       ; $622a: $5c
    rst $38                                       ; $622b: $ff
    nop                                           ; $622c: $00
    rst $38                                       ; $622d: $ff
    rst $20                                       ; $622e: $e7
    add c                                         ; $622f: $81
    inc a                                         ; $6230: $3c
    db $10                                        ; $6231: $10
    db $d3                                        ; $6232: $d3
    db $e3                                        ; $6233: $e3
    add e                                         ; $6234: $83
    ldh [rNR41], a                                ; $6235: $e0 $20
    ret nz                                        ; $6237: $c0

    add b                                         ; $6238: $80
    cp a                                          ; $6239: $bf
    ret nz                                        ; $623a: $c0

    nop                                           ; $623b: $00
    ldh [$90], a                                  ; $623c: $e0 $90
    ldh [$80], a                                  ; $623e: $e0 $80
    cp $e0                                        ; $6240: $fe $e0
    nop                                           ; $6242: $00
    ei                                            ; $6243: $fb
    ret nz                                        ; $6244: $c0

    jr nz, @-$5e                                  ; $6245: $20 $a0

    ldh [$7d], a                                  ; $6247: $e0 $7d
    rst $38                                       ; $6249: $ff
    rst $28                                       ; $624a: $ef
    rst $38                                       ; $624b: $ff
    ld a, [hl-]                                   ; $624c: $3a
    ld a, [$e2da]                                 ; $624d: $fa $da $e2
    ld [$e063], sp                                ; $6250: $08 $63 $e0
    and h                                         ; $6253: $a4
    ld hl, sp-$20                                 ; $6254: $f8 $e0
    ld hl, sp-$10                                 ; $6256: $f8 $f0
    rst $38                                       ; $6258: $ff
    db $fc                                        ; $6259: $fc
    ret nc                                        ; $625a: $d0

    db $fc                                        ; $625b: $fc
    ld a, [c]                                     ; $625c: $f2
    db $fc                                        ; $625d: $fc
    ldh [$fc], a                                  ; $625e: $e0 $fc
    or b                                          ; $6260: $b0
    rst $30                                       ; $6261: $f7
    ld hl, sp-$1c                                 ; $6262: $f8 $e4
    ld hl, sp-$80                                 ; $6264: $f8 $80
    push hl                                       ; $6266: $e5
    cp [hl]                                       ; $6267: $be
    rst $38                                       ; $6268: $ff
    db $e3                                        ; $6269: $e3
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    ld b, b                                       ; $626c: $40
    rst $38                                       ; $626d: $ff
    nop                                           ; $626e: $00
    rst $20                                       ; $626f: $e7
    db $fc                                        ; $6270: $fc
    rst $38                                       ; $6271: $ff
    or $ff                                        ; $6272: $f6 $ff
    ld a, a                                       ; $6274: $7f
    db $fc                                        ; $6275: $fc
    rst $38                                       ; $6276: $ff
    ld hl, sp-$02                                 ; $6277: $f8 $fe
    add sp, -$02                                  ; $6279: $e8 $fe
    ld hl, sp-$08                                 ; $627b: $f8 $f8
    ldh [$0b], a                                  ; $627d: $e0 $0b
    db $f4                                        ; $627f: $f4
    rst $38                                       ; $6280: $ff
    ld a, b                                       ; $6281: $78
    ldh [$80], a                                  ; $6282: $e0 $80
    and e                                         ; $6284: $a3
    and $23                                       ; $6285: $e6 $23
    pop hl                                        ; $6287: $e1
    ldh a, [$e0]                                  ; $6288: $f0 $e0
    rst $28                                       ; $628a: $ef
    ld [$c0e3], a                                 ; $628b: $ea $e3 $c0
    ld b, b                                       ; $628e: $40
    ldh [$ea], a                                  ; $628f: $e0 $ea
    ret nc                                        ; $6291: $d0

    pop hl                                        ; $6292: $e1
    rst $08                                       ; $6293: $cf
    jp hl                                         ; $6294: $e9


    ld [bc], a                                    ; $6295: $02
    add c                                         ; $6296: $81
    and b                                         ; $6297: $a0
    rst $38                                       ; $6298: $ff
    pop bc                                        ; $6299: $c1
    add b                                         ; $629a: $80
    pop bc                                        ; $629b: $c1
    add l                                         ; $629c: $85
    jp $c3a1                                      ; $629d: $c3 $a1 $c3


    nop                                           ; $62a0: $00
    ld a, a                                       ; $62a1: $7f
    add e                                         ; $62a2: $83
    dec b                                         ; $62a3: $05
    add e                                         ; $62a4: $83
    ld b, b                                       ; $62a5: $40
    add c                                         ; $62a6: $81
    ld b, c                                       ; $62a7: $41
    add b                                         ; $62a8: $80
    ret nz                                        ; $62a9: $c0

    ldh [rIE], a                                  ; $62aa: $e0 $ff
    ret nz                                        ; $62ac: $c0

    and b                                         ; $62ad: $a0
    ret nz                                        ; $62ae: $c0

    ret nz                                        ; $62af: $c0

    ldh [rBCPS], a                                ; $62b0: $e0 $68
    ldh a, [$f1]                                  ; $62b2: $f0 $f1
    rst $38                                       ; $62b4: $ff
    db $fc                                        ; $62b5: $fc
    call c, Call_000_1eff                         ; $62b6: $dc $ff $1e
    rst $38                                       ; $62b9: $ff
    add b                                         ; $62ba: $80
    ld e, $12                                     ; $62bb: $1e $12
    ld a, [hl]                                    ; $62bd: $7e
    call nc, Call_029_48c2                        ; $62be: $d4 $c2 $48
    nop                                           ; $62c1: $00
    ld bc, $5878                                  ; $62c2: $01 $78 $58
    rst $38                                       ; $62c5: $ff
    or b                                          ; $62c6: $b0
    jp hl                                         ; $62c7: $e9


    rst $38                                       ; $62c8: $ff
    ld [bc], a                                    ; $62c9: $02
    ld bc, $0300                                  ; $62ca: $01 $00 $03
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    ld b, b                                       ; $62cf: $40
    ld b, b                                       ; $62d0: $40
    ld a, a                                       ; $62d1: $7f
    nop                                           ; $62d2: $00
    jr nz, jr_029_62d5                            ; $62d3: $20 $00

jr_029_62d5:
    db $10                                        ; $62d5: $10
    ld [$0400], sp                                ; $62d6: $08 $00 $04
    or d                                          ; $62d9: $b2
    ret nz                                        ; $62da: $c0

    ret nz                                        ; $62db: $c0

    and d                                         ; $62dc: $a2
    pop bc                                        ; $62dd: $c1
    ldh a, [rIE]                                  ; $62de: $f0 $ff

Jump_029_62e0:
    ldh a, [rIE]                                  ; $62e0: $f0 $ff
    ldh a, [rIE]                                  ; $62e2: $f0 $ff
    ldh a, [rIE]                                  ; $62e4: $f0 $ff
    ldh a, [$f3]                                  ; $62e6: $f0 $f3
    jp $e33c                                      ; $62e8: $c3 $3c $e3


    jp $fd3c                                      ; $62eb: $c3 $3c $fd


    ldh [$fe], a                                  ; $62ee: $e0 $fe
    ld [c], a                                     ; $62f0: $e2
    db $f4                                        ; $62f1: $f4
    pop hl                                        ; $62f2: $e1
    dec de                                        ; $62f3: $1b
    rst $20                                       ; $62f4: $e7
    cpl                                           ; $62f5: $2f
    rst $38                                       ; $62f6: $ff
    call c, $f11e                                 ; $62f7: $dc $1e $f1
    inc a                                         ; $62fa: $3c
    db $e3                                        ; $62fb: $e3
    ld a, h                                       ; $62fc: $7c
    jp Jump_029_7f7c                              ; $62fd: $c3 $7c $7f


    jp $9ce3                                      ; $6300: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $6303: $c3 $bc $18


    rst $20                                       ; $6306: $e7
    ld [c], a                                     ; $6307: $e2
    pop hl                                        ; $6308: $e1
    rst $38                                       ; $6309: $ff
    ld a, [de]                                    ; $630a: $1a
    push hl                                       ; $630b: $e5
    ld [de], a                                    ; $630c: $12
    rst $28                                       ; $630d: $ef
    ld e, a                                       ; $630e: $5f
    cp b                                          ; $630f: $b8
    ld a, a                                       ; $6310: $7f
    ldh [rIE], a                                  ; $6311: $e0 $ff
    di                                            ; $6313: $f3
    adc h                                         ; $6314: $8c
    inc de                                        ; $6315: $13
    rst $28                                       ; $6316: $ef
    rra                                           ; $6317: $1f
    ld hl, sp-$04                                 ; $6318: $f8 $fc
    ld h, e                                       ; $631a: $63
    cp a                                          ; $631b: $bf
    db $fc                                        ; $631c: $fc
    add e                                         ; $631d: $83
    db $fc                                        ; $631e: $fc
    inc bc                                        ; $631f: $03
    cp h                                          ; $6320: $bc
    ld b, e                                       ; $6321: $43
    call nz, $98e1                                ; $6322: $c4 $e1 $98
    rst $38                                       ; $6325: $ff
    rst $20                                       ; $6326: $e7
    db $fc                                        ; $6327: $fc
    ld b, e                                       ; $6328: $43
    call c, $f863                                 ; $6329: $dc $63 $f8
    daa                                           ; $632c: $27
    ld l, b                                       ; $632d: $68
    rst $38                                       ; $632e: $ff
    or a                                          ; $632f: $b7
    ld l, h                                       ; $6330: $6c
    sub e                                         ; $6331: $93
    db $fc                                        ; $6332: $fc
    inc de                                        ; $6333: $13

Jump_029_6334:
    add sp, $17                                   ; $6334: $e8 $17
    ld hl, sp-$01                                 ; $6336: $f8 $ff
    rrca                                          ; $6338: $0f
    sbc $25                                       ; $6339: $de $25
    inc a                                         ; $633b: $3c
    rst $00                                       ; $633c: $c7
    ld a, $c3                                     ; $633d: $3e $c3
    ccf                                           ; $633f: $3f
    rst $38                                       ; $6340: $ff
    jp nz, $c13e                                  ; $6341: $c2 $3e $c1

    jp $c33d                                      ; $6344: $c3 $3d $c3


    dec a                                         ; $6347: $3d
    cp e                                          ; $6348: $bb
    rst $30                                       ; $6349: $f7
    rst $10                                       ; $634a: $d7
    rst $38                                       ; $634b: $ff
    nop                                           ; $634c: $00
    and b                                         ; $634d: $a0
    jp hl                                         ; $634e: $e9


    jp $c3bc                                      ; $634f: $c3 $bc $c3


    cp h                                          ; $6352: $bc
    ret                                           ; $6353: $c9


    ld a, h                                       ; $6354: $7c
    jp nz, $bee0                                  ; $6355: $c2 $e0 $be

    pop hl                                        ; $6358: $e1
    ld b, e                                       ; $6359: $43
    db $f4                                        ; $635a: $f4
    ldh [$a0], a                                  ; $635b: $e0 $a0
    pop hl                                        ; $635d: $e1
    nop                                           ; $635e: $00
    rst $38                                       ; $635f: $ff
    cp a                                          ; $6360: $bf
    db $dd                                        ; $6361: $dd
    db $eb                                        ; $6362: $eb
    rst $38                                       ; $6363: $ff
    nop                                           ; $6364: $00
    ld a, [hl]                                    ; $6365: $7e
    add c                                         ; $6366: $81
    add b                                         ; $6367: $80
    ld [c], a                                     ; $6368: $e2
    db $f4                                        ; $6369: $f4
    rst $38                                       ; $636a: $ff
    rrca                                          ; $636b: $0f
    ldh a, [rNR32]                                ; $636c: $f0 $1c
    db $e3                                        ; $636e: $e3
    inc e                                         ; $636f: $1c
    di                                            ; $6370: $f3
    inc e                                         ; $6371: $1c
    db $e3                                        ; $6372: $e3
    rst $38                                       ; $6373: $ff
    inc c                                         ; $6374: $0c
    di                                            ; $6375: $f3
    ccf                                           ; $6376: $3f
    ret nc                                        ; $6377: $d0

    dec de                                        ; $6378: $1b
    db $f4                                        ; $6379: $f4
    ld d, a                                       ; $637a: $57
    rst $38                                       ; $637b: $ff
    ld e, a                                       ; $637c: $5f
    xor a                                         ; $637d: $af
    db $fc                                        ; $637e: $fc
    ld a, [hl]                                    ; $637f: $7e
    pop af                                        ; $6380: $f1
    cp h                                          ; $6381: $bc
    ld [hl], b                                    ; $6382: $70
    ldh [$fc], a                                  ; $6383: $e0 $fc
    ld [hl], b                                    ; $6385: $70
    ld [c], a                                     ; $6386: $e2
    rst $38                                       ; $6387: $ff
    ei                                            ; $6388: $fb
    rst $38                                       ; $6389: $ff
    sbc $ff                                       ; $638a: $de $ff
    push af                                       ; $638c: $f5
    rst $38                                       ; $638d: $ff
    xor d                                         ; $638e: $aa
    rst $38                                       ; $638f: $ff
    or a                                          ; $6390: $b7
    ld d, a                                       ; $6391: $57
    rst $38                                       ; $6392: $ff
    cp a                                          ; $6393: $bf
    ld h, a                                       ; $6394: $67
    and b                                         ; $6395: $a0
    di                                            ; $6396: $f3
    adc h                                         ; $6397: $8c
    ld hl, sp-$1f                                 ; $6398: $f8 $e1
    ld a, h                                       ; $639a: $7c
    db $fd                                        ; $639b: $fd
    db $e3                                        ; $639c: $e3
    ld [hl], b                                    ; $639d: $70
    rst $20                                       ; $639e: $e7
    rst $28                                       ; $639f: $ef
    rst $38                                       ; $63a0: $ff
    rst $10                                       ; $63a1: $d7
    ld a, a                                       ; $63a2: $7f
    db $ed                                        ; $63a3: $ed
    ld a, a                                       ; $63a4: $7f
    rst $38                                       ; $63a5: $ff
    rst $30                                       ; $63a6: $f7
    ccf                                           ; $63a7: $3f
    ld l, e                                       ; $63a8: $6b
    cp a                                          ; $63a9: $bf
    halt                                          ; $63aa: $76
    sbc a                                         ; $63ab: $9f
    ei                                            ; $63ac: $fb
    rra                                           ; $63ad: $1f
    rst $38                                       ; $63ae: $ff
    push af                                       ; $63af: $f5
    rra                                           ; $63b0: $1f
    ld a, [$dd0f]                                 ; $63b1: $fa $0f $dd
    daa                                           ; $63b4: $27
    ld a, $c7                                     ; $63b5: $3e $c7
    di                                            ; $63b7: $f3
    ccf                                           ; $63b8: $3f
    jp $e06e                                      ; $63b9: $c3 $6e $e0


    ld [hl], b                                    ; $63bc: $70
    ld [c], a                                     ; $63bd: $e2
    db $ed                                        ; $63be: $ed
    rst $38                                       ; $63bf: $ff
    db $d3                                        ; $63c0: $d3
    inc a                                         ; $63c1: $3c
    dec sp                                        ; $63c2: $3b
    ld a, [hl]                                    ; $63c3: $7e
    add c                                         ; $63c4: $81
    ld [hl], b                                    ; $63c5: $70
    jp hl                                         ; $63c6: $e9


    db $e3                                        ; $63c7: $e3
    sbc h                                         ; $63c8: $9c
    cp h                                          ; $63c9: $bc
    inc d                                         ; $63ca: $14
    ldh [rBCPD], a                                ; $63cb: $e0 $69
    ldh [$eb], a                                  ; $63cd: $e0 $eb
    jp $1063                                      ; $63cf: $c3 $63 $10


    ldh [$57], a                                  ; $63d2: $e0 $57
    and h                                         ; $63d4: $a4
    ldh [$7d], a                                  ; $63d5: $e0 $7d
    rst $38                                       ; $63d7: $ff
    db $d3                                        ; $63d8: $d3
    ld sp, hl                                     ; $63d9: $f9
    rst $28                                       ; $63da: $ef
    ld c, d                                       ; $63db: $4a
    pop hl                                        ; $63dc: $e1
    db $e4                                        ; $63dd: $e4
    pop bc                                        ; $63de: $c1
    cp e                                          ; $63df: $bb
    db $f4                                        ; $63e0: $f4
    ld e, e                                       ; $63e1: $5b
    db $f4                                        ; $63e2: $f4
    xor h                                         ; $63e3: $ac
    rst $38                                       ; $63e4: $ff
    di                                            ; $63e5: $f3
    ld l, h                                       ; $63e6: $6c
    di                                            ; $63e7: $f3
    cp h                                          ; $63e8: $bc
    db $e3                                        ; $63e9: $e3
    ld l, h                                       ; $63ea: $6c
    di                                            ; $63eb: $f3
    cp e                                          ; $63ec: $bb
    rst $38                                       ; $63ed: $ff
    db $f4                                        ; $63ee: $f4
    db $db                                        ; $63ef: $db
    db $f4                                        ; $63f0: $f4
    cp l                                          ; $63f1: $bd
    jp $ffe7                                      ; $63f2: $c3 $e7 $ff


    cp d                                          ; $63f5: $ba
    cp a                                          ; $63f6: $bf
    rst $38                                       ; $63f7: $ff
    ld d, l                                       ; $63f8: $55
    rst $38                                       ; $63f9: $ff
    xor e                                         ; $63fa: $ab
    rst $38                                       ; $63fb: $ff
    cp $58                                        ; $63fc: $fe $58
    and b                                         ; $63fe: $a0
    rst $38                                       ; $63ff: $ff
    rst $28                                       ; $6400: $ef
    rst $38                                       ; $6401: $ff
    db $db                                        ; $6402: $db
    rst $38                                       ; $6403: $ff
    ld l, a                                       ; $6404: $6f
    adc [hl]                                      ; $6405: $8e
    ldh [$af], a                                  ; $6406: $e0 $af
    ld a, a                                       ; $6408: $7f
    or l                                          ; $6409: $b5
    rst $08                                       ; $640a: $cf
    ld a, a                                       ; $640b: $7f
    rst $28                                       ; $640c: $ef
    ld a, a                                       ; $640d: $7f
    ld d, a                                       ; $640e: $57
    ld b, [hl]                                    ; $640f: $46
    and b                                         ; $6410: $a0
    ret nc                                        ; $6411: $d0

    jp $e718                                      ; $6412: $c3 $18 $e7


    cp $f8                                        ; $6415: $fe $f8
    push hl                                       ; $6417: $e5
    ld d, a                                       ; $6418: $57
    rst $38                                       ; $6419: $ff
    xor h                                         ; $641a: $ac
    rst $38                                       ; $641b: $ff
    ld [hl], h                                    ; $641c: $74
    ei                                            ; $641d: $fb
    cp b                                          ; $641e: $b8
    ld l, a                                       ; $641f: $6f
    rst $20                                       ; $6420: $e7
    ld e, b                                       ; $6421: $58
    rst $20                                       ; $6422: $e7
    db $fc                                        ; $6423: $fc
    dec b                                         ; $6424: $05
    ldh [$98], a                                  ; $6425: $e0 $98
    rst $20                                       ; $6427: $e7
    ld b, b                                       ; $6428: $40
    rst $20                                       ; $6429: $e7
    rst $18                                       ; $642a: $df
    cp d                                          ; $642b: $ba
    rst $38                                       ; $642c: $ff
    db $ec                                        ; $642d: $ec
    di                                            ; $642e: $f3
    sbc b                                         ; $642f: $98
    ldh [$e0], a                                  ; $6430: $e0 $e0
    cp d                                          ; $6432: $ba
    rst $38                                       ; $6433: $ff
    jp hl                                         ; $6434: $e9


    ld l, h                                       ; $6435: $6c
    ld hl, sp-$20                                 ; $6436: $f8 $e0
    ret z                                         ; $6438: $c8

    push hl                                       ; $6439: $e5
    rst $28                                       ; $643a: $ef
    ld h, $e0                                     ; $643b: $26 $e0
    ld l, l                                       ; $643d: $6d
    rst $38                                       ; $643e: $ff
    scf                                           ; $643f: $37
    rst $38                                       ; $6440: $ff
    rst $38                                       ; $6441: $ff
    dec hl                                        ; $6442: $2b
    rst $38                                       ; $6443: $ff
    ld d, $ff                                     ; $6444: $16 $ff
    dec sp                                        ; $6446: $3b
    rst $38                                       ; $6447: $ff
    dec d                                         ; $6448: $15
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    ld a, [de]                                    ; $644b: $1a
    rst $28                                       ; $644c: $ef
    dec [hl]                                      ; $644d: $35
    rst $08                                       ; $644e: $cf
    ld a, $c7                                     ; $644f: $3e $c7
    dec de                                        ; $6451: $1b
    rst $38                                       ; $6452: $ff
    rst $20                                       ; $6453: $e7
    ld a, [de]                                    ; $6454: $1a
    rst $20                                       ; $6455: $e7
    dec a                                         ; $6456: $3d
    jp $c33f                                      ; $6457: $c3 $3f $c3


    add hl, de                                    ; $645a: $19
    db $db                                        ; $645b: $db
    rst $20                                       ; $645c: $e7
    rst $10                                       ; $645d: $d7
    db $e4                                        ; $645e: $e4
    add b                                         ; $645f: $80
    inc l                                         ; $6460: $2c
    db $d3                                        ; $6461: $d3
    and b                                         ; $6462: $a0
    rst $20                                       ; $6463: $e7
    sbc b                                         ; $6464: $98
    rst $20                                       ; $6465: $e7
    adc d                                         ; $6466: $8a
    ld b, d                                       ; $6467: $42
    pop hl                                        ; $6468: $e1
    ret c                                         ; $6469: $d8

    and b                                         ; $646a: $a0
    ldh [$bc], a                                  ; $646b: $e0 $bc
    sbc $c0                                       ; $646d: $de $c0
    or b                                          ; $646f: $b0
    pop hl                                        ; $6470: $e1
    ld b, b                                       ; $6471: $40
    pop hl                                        ; $6472: $e1
    set 7, [hl]                                   ; $6473: $cb $fe
    ld a, b                                       ; $6475: $78
    and $b0                                       ; $6476: $e6 $b0
    rst $38                                       ; $6478: $ff
    ld d, h                                       ; $6479: $54
    ei                                            ; $647a: $fb
    and h                                         ; $647b: $a4
    ei                                            ; $647c: $fb
    ld a, b                                       ; $647d: $78
    rst $38                                       ; $647e: $ff
    rst $30                                       ; $647f: $f7
    xor b                                         ; $6480: $a8
    rst $30                                       ; $6481: $f7
    ld h, h                                       ; $6482: $64
    ei                                            ; $6483: $fb
    or h                                          ; $6484: $b4
    ei                                            ; $6485: $fb
    ret nc                                        ; $6486: $d0

    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    pop bc                                        ; $6489: $c1
    rst $38                                       ; $648a: $ff
    or a                                          ; $648b: $b7
    rst $38                                       ; $648c: $ff
    ld e, l                                       ; $648d: $5d
    rst $38                                       ; $648e: $ff
    ld [$3e54], a                                 ; $648f: $ea $54 $3e
    ldh [$3a], a                                  ; $6492: $e0 $3a
    add c                                         ; $6494: $81
    rst $38                                       ; $6495: $ff
    sub h                                         ; $6496: $94
    add b                                         ; $6497: $80
    ld d, a                                       ; $6498: $57
    ld a, $e0                                     ; $6499: $3e $e0
    dec [hl]                                      ; $649b: $35
    ld a, [hl-]                                   ; $649c: $3a
    ldh [$f6], a                                  ; $649d: $e0 $f6
    xor [hl]                                      ; $649f: $ae
    ret nz                                        ; $64a0: $c0

    rst $38                                       ; $64a1: $ff
    rst $10                                       ; $64a2: $d7
    ld hl, $ff83                                  ; $64a3: $21 $83 $ff
    db $dd                                        ; $64a6: $dd
    rst $38                                       ; $64a7: $ff
    ld [hl], a                                    ; $64a8: $77
    ld e, h                                       ; $64a9: $5c
    sbc h                                         ; $64aa: $9c
    ret nz                                        ; $64ab: $c0

    call c, $afe1                                 ; $64ac: $dc $e1 $af
    rst $38                                       ; $64af: $ff
    rst $18                                       ; $64b0: $df
    adc $e0                                       ; $64b1: $ce $e0
    rst $18                                       ; $64b3: $df
    ld hl, sp-$1a                                 ; $64b4: $f8 $e6
    inc d                                         ; $64b6: $14
    rst $38                                       ; $64b7: $ff
    push hl                                       ; $64b8: $e5
    sbc $e5                                       ; $64b9: $de $e5
    ld e, a                                       ; $64bb: $5f
    jp z, Jump_029_6fe0                           ; $64bc: $ca $e0 $6f

    add $e0                                       ; $64bf: $c6 $e0
    ld hl, sp-$1b                                 ; $64c1: $f8 $e5
    ldh [$63], a                                  ; $64c3: $e0 $63
    jp z, $e1f8                                   ; $64c5: $ca $f8 $e1

    ld e, a                                       ; $64c8: $5f
    sub [hl]                                      ; $64c9: $96
    ldh [$5f], a                                  ; $64ca: $e0 $5f
    ret nc                                        ; $64cc: $d0

    and $c7                                       ; $64cd: $e6 $c7
    push hl                                       ; $64cf: $e5
    ld l, c                                       ; $64d0: $69
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    call nc, $81fc                                ; $64d3: $d4 $fc $81
    ldh a, [rDMA]                                 ; $64d6: $f0 $46
    ldh [$8b], a                                  ; $64d8: $e0 $8b
    ret nz                                        ; $64da: $c0

    ld a, a                                       ; $64db: $7f
    ld d, a                                       ; $64dc: $57
    ret nz                                        ; $64dd: $c0

    dec e                                         ; $64de: $1d
    add b                                         ; $64df: $80
    xor a                                         ; $64e0: $af

Jump_029_64e1:
    add b                                         ; $64e1: $80
    db $fd                                        ; $64e2: $fd
    xor a                                         ; $64e3: $af
    ld h, b                                       ; $64e4: $60
    db $fd                                        ; $64e5: $fd
    jp c, $8048                                   ; $64e6: $da $48 $80

    and b                                         ; $64e9: $a0
    db $fc                                        ; $64ea: $fc
    ld b, c                                       ; $64eb: $41
    ldh a, [$0b]                                  ; $64ec: $f0 $0b
    ret nz                                        ; $64ee: $c0

    ei                                            ; $64ef: $fb
    ld d, $00                                     ; $64f0: $16 $00
    ld hl, sp-$1f                                 ; $64f2: $f8 $e1
    ld a, [bc]                                    ; $64f4: $0a
    ret nz                                        ; $64f5: $c0

    rla                                           ; $64f6: $17
    nop                                           ; $64f7: $00
    cp l                                          ; $64f8: $bd
    rst $30                                       ; $64f9: $f7
    nop                                           ; $64fa: $00
    ld l, a                                       ; $64fb: $6f
    nop                                           ; $64fc: $00
    push de                                       ; $64fd: $d5
    ld h, b                                       ; $64fe: $60
    nop                                           ; $64ff: $00
    ld hl, sp-$02                                 ; $6500: $f8 $fe
    db $f4                                        ; $6502: $f4
    rst $38                                       ; $6503: $ff
    cp $d8                                        ; $6504: $fe $d8
    db $fc                                        ; $6506: $fc
    pop af                                        ; $6507: $f1
    db $fc                                        ; $6508: $fc
    ld [c], a                                     ; $6509: $e2
    ld hl, sp-$2f                                 ; $650a: $f8 $d1
    rst $38                                       ; $650c: $ff
    ld hl, sp+$63                                 ; $650d: $f8 $63
    ldh a, [$c6]                                  ; $650f: $f0 $c6
    ldh a, [$8b]                                  ; $6511: $f0 $8b
    ldh [rBGP], a                                 ; $6513: $e0 $47
    rst $38                                       ; $6515: $ff
    ldh [$8f], a                                  ; $6516: $e0 $8f
    ret nz                                        ; $6518: $c0

    dec de                                        ; $6519: $1b
    ret nz                                        ; $651a: $c0

    cpl                                           ; $651b: $2f
    add b                                         ; $651c: $80
    rra                                           ; $651d: $1f
    rst $38                                       ; $651e: $ff
    add b                                         ; $651f: $80
    scf                                           ; $6520: $37
    nop                                           ; $6521: $00
    ld e, a                                       ; $6522: $5f
    nop                                           ; $6523: $00
    inc h                                         ; $6524: $24
    inc a                                         ; $6525: $3c
    ld b, d                                       ; $6526: $42
    cp a                                          ; $6527: $bf
    nop                                           ; $6528: $00
    xor l                                         ; $6529: $ad
    nop                                           ; $652a: $00
    rst $30                                       ; $652b: $f7
    nop                                           ; $652c: $00
    ld a, l                                       ; $652d: $7d
    jp nc, $ffe2                                  ; $652e: $d2 $e2 $ff

    push af                                       ; $6531: $f5
    nop                                           ; $6532: $00
    db $ec                                        ; $6533: $ec
    pop hl                                        ; $6534: $e1
    cp a                                          ; $6535: $bf
    db $e4                                        ; $6536: $e4
    ldh [$2f], a                                  ; $6537: $e0 $2f
    add b                                         ; $6539: $80
    cp a                                          ; $653a: $bf
    add b                                         ; $653b: $80
    rst $18                                       ; $653c: $df
    ld d, a                                       ; $653d: $57
    nop                                           ; $653e: $00
    ccf                                           ; $653f: $3f
    nop                                           ; $6540: $00
    push af                                       ; $6541: $f5
    ld a, $e0                                     ; $6542: $3e $e0
    ld b, l                                       ; $6544: $45
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    nop                                           ; $6547: $00
    rst $00                                       ; $6548: $c7
    stop                                          ; $6549: $10 $00
    ld l, l                                       ; $654b: $6d
    nop                                           ; $654c: $00
    cp e                                          ; $654d: $bb
    nop                                           ; $654e: $00
    rst $38                                       ; $654f: $ff
    rst $28                                       ; $6550: $ef
    nop                                           ; $6551: $00
    rst $20                                       ; $6552: $e7
    ldh a, [rSCX]                                 ; $6553: $f0 $43
    ldh a, [$e5]                                  ; $6555: $f0 $e5
    ldh a, [rIE]                                  ; $6557: $f0 $ff
    ld b, a                                       ; $6559: $47
    ldh [$8a], a                                  ; $655a: $e0 $8a
    ldh [$c7], a                                  ; $655c: $e0 $c7
    ldh [$a5], a                                  ; $655e: $e0 $a5
    ldh a, [$eb]                                  ; $6560: $f0 $eb
    jp $30f0                                      ; $6562: $c3 $f0 $30


    ld h, e                                       ; $6565: $63
    rst $18                                       ; $6566: $df
    ld l, $60                                     ; $6567: $2e $60
    xor l                                         ; $6569: $ad
    rst $38                                       ; $656a: $ff
    ld b, d                                       ; $656b: $42
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    nop                                           ; $656e: $00
    jp $fffc                                      ; $656f: $c3 $fc $ff


    ld a, [$fcff]                                 ; $6572: $fa $ff $fc
    sbc $8c                                       ; $6575: $de $8c
    ldh [$f8], a                                  ; $6577: $e0 $f8
    cp $ec                                        ; $6579: $fe $ec
    cp $f6                                        ; $657b: $fe $f6
    ldh [rIE], a                                  ; $657d: $e0 $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    add b                                         ; $6581: $80
    ccf                                           ; $6582: $3f
    add b                                         ; $6583: $80
    ld a, a                                       ; $6584: $7f
    ret nz                                        ; $6585: $c0

    sbc a                                         ; $6586: $9f
    ret nz                                        ; $6587: $c0

    ld c, a                                       ; $6588: $4f
    rst $38                                       ; $6589: $ff
    ldh [$87], a                                  ; $658a: $e0 $87
    ldh a, [$d5]                                  ; $658c: $f0 $d5
    db $fc                                        ; $658e: $fc
    ld l, c                                       ; $658f: $69
    rst $38                                       ; $6590: $ff
    ccf                                           ; $6591: $3f
    rst $38                                       ; $6592: $ff
    nop                                           ; $6593: $00
    rrca                                          ; $6594: $0f
    ret nz                                        ; $6595: $c0

    ld b, e                                       ; $6596: $43
    ldh a, [$a0]                                  ; $6597: $f0 $a0
    db $fc                                        ; $6599: $fc
    db $f4                                        ; $659a: $f4
    add $4a                                       ; $659b: $c6 $4a
    ldh [rIE], a                                  ; $659d: $e0 $ff
    rst $38                                       ; $659f: $ff
    ld b, d                                       ; $65a0: $42
    ldh [$88], a                                  ; $65a1: $e0 $88
    db $e4                                        ; $65a3: $e4
    add sp, -$1b                                  ; $65a4: $e8 $e5
    db $e3                                        ; $65a6: $e3
    rrca                                          ; $65a7: $0f
    rst $38                                       ; $65a8: $ff
    and $0f                                       ; $65a9: $e6 $0f
    rr a                                          ; $65ab: $cb $1f
    rst $00                                       ; $65ad: $c7
    rra                                           ; $65ae: $1f
    adc a                                         ; $65af: $8f
    ccf                                           ; $65b0: $3f
    rst $30                                       ; $65b1: $f7
    sbc e                                         ; $65b2: $9b
    ccf                                           ; $65b3: $3f
    cpl                                           ; $65b4: $2f
    db $fc                                        ; $65b5: $fc
    ld b, b                                       ; $65b6: $40
    cp $00                                        ; $65b7: $fe $00
    cp $00                                        ; $65b9: $fe $00
    rst $38                                       ; $65bb: $ff
    db $fc                                        ; $65bc: $fc
    ld bc, $01fc                                  ; $65bd: $01 $fc $01
    ld hl, sp+$03                                 ; $65c0: $f8 $03

jr_029_65c2:
    ld sp, hl                                     ; $65c2: $f9
    inc bc                                        ; $65c3: $03
    rst $08                                       ; $65c4: $cf
    ld a, [c]                                     ; $65c5: $f2
    rlca                                          ; $65c6: $07
    pop af                                        ; $65c7: $f1
    rlca                                          ; $65c8: $07
    ret nc                                        ; $65c9: $d0

    push hl                                       ; $65ca: $e5
    inc h                                         ; $65cb: $24
    pop hl                                        ; $65cc: $e1
    db $d3                                        ; $65cd: $d3
    nop                                           ; $65ce: $00
    ld e, a                                       ; $65cf: $5f
    ld b, d                                       ; $65d0: $42
    ld a, [hl]                                    ; $65d1: $7e
    cp $00                                        ; $65d2: $fe $00
    rst $38                                       ; $65d4: $ff
    ld [c], a                                     ; $65d5: $e2
    ldh [$fe], a                                  ; $65d6: $e0 $fe
    sbc $e0                                       ; $65d8: $de $e0
    rst $08                                       ; $65da: $cf
    db $fc                                        ; $65db: $fc
    ld bc, $01ff                                  ; $65dc: $01 $ff $01
    ld a, [c]                                     ; $65df: $f2
    ldh [$0a], a                                  ; $65e0: $e0 $0a

Jump_029_65e2:
    ld [c], a                                     ; $65e2: $e2
    inc a                                         ; $65e3: $3c
    nop                                           ; $65e4: $00
    rst $30                                       ; $65e5: $f7
    nop                                           ; $65e6: $00
    rst $00                                       ; $65e7: $c7
    ld b, l                                       ; $65e8: $45
    add h                                         ; $65e9: $84
    ret nz                                        ; $65ea: $c0

    push af                                       ; $65eb: $f5
    rst $38                                       ; $65ec: $ff
    rst $20                                       ; $65ed: $e7
    rrca                                          ; $65ee: $0f
    rst $28                                       ; $65ef: $ef
    ld [c], a                                     ; $65f0: $e2
    rrca                                          ; $65f1: $0f
    rst $30                                       ; $65f2: $f7
    rrca                                          ; $65f3: $0f
    add $e1                                       ; $65f4: $c6 $e1
    di                                            ; $65f6: $f3
    rlca                                          ; $65f7: $07
    push hl                                       ; $65f8: $e5
    cp a                                          ; $65f9: $bf
    rrca                                          ; $65fa: $0f
    db $e3                                        ; $65fb: $e3
    rrca                                          ; $65fc: $0f
    jr jr_029_65c2                                ; $65fd: $18 $c3

    ld b, d                                       ; $65ff: $42
    ld d, [hl]                                    ; $6600: $56
    ldh [$f7], a                                  ; $6601: $e0 $f7
    ld [$c676], a                                 ; $6603: $ea $76 $c6
    ccf                                           ; $6606: $3f
    ld a, [hl]                                    ; $6607: $7e
    ret nz                                        ; $6608: $c0

    ccf                                           ; $6609: $3f
    add b                                         ; $660a: $80
    and b                                         ; $660b: $a0
    sbc a                                         ; $660c: $9f
    ld a, a                                       ; $660d: $7f
    scf                                           ; $660e: $37
    db $fd                                        ; $660f: $fd
    ld a, a                                       ; $6610: $7f
    or $e0                                        ; $6611: $f6 $e0
    rst $38                                       ; $6613: $ff
    ld [$5500], sp                                ; $6614: $08 $00 $55
    nop                                           ; $6617: $00
    cp [hl]                                       ; $6618: $be
    ld [hl], h                                    ; $6619: $74
    ldh a, [$c0]                                  ; $661a: $f0 $c0
    ld l, b                                       ; $661c: $68
    push hl                                       ; $661d: $e5
    ld e, a                                       ; $661e: $5f
    db $fc                                        ; $661f: $fc
    ret nz                                        ; $6620: $c0

    ld a, a                                       ; $6621: $7f
    nop                                           ; $6622: $00
    xor a                                         ; $6623: $af
    db $fc                                        ; $6624: $fc
    ldh [$9d], a                                  ; $6625: $e0 $9d
    ccf                                           ; $6627: $3f
    db $f4                                        ; $6628: $f4
    ld [c], a                                     ; $6629: $e2
    ld de, $2a80                                  ; $662a: $11 $80 $2a
    call nc, $f0c0                                ; $662d: $d4 $c0 $f0
    push hl                                       ; $6630: $e5
    cp a                                          ; $6631: $bf
    ldh a, [$fa]                                  ; $6632: $f0 $fa
    db $e4                                        ; $6634: $e4
    ld l, d                                       ; $6635: $6a
    jp hl                                         ; $6636: $e9


    db $f4                                        ; $6637: $f4
    db $eb                                        ; $6638: $eb
    nop                                           ; $6639: $00
    add e                                         ; $663a: $83
    dec de                                        ; $663b: $1b
    db $e4                                        ; $663c: $e4
    dec d                                         ; $663d: $15
    xor $ff                                       ; $663e: $ee $ff
    dec l                                         ; $6640: $2d
    ret nc                                        ; $6641: $d0

    dec b                                         ; $6642: $05
    ld a, [$c034]                                 ; $6643: $fa $34 $c0
    ld d, a                                       ; $6646: $57
    xor d                                         ; $6647: $aa
    rst $18                                       ; $6648: $df
    and h                                         ; $6649: $a4
    ld a, [bc]                                    ; $664a: $0a
    ld c, e                                       ; $664b: $4b
    add b                                         ; $664c: $80
    ld b, d                                       ; $664d: $42
    ldh [rNR41], a                                ; $664e: $e0 $20
    dec e                                         ; $6650: $1d
    ld [bc], a                                    ; $6651: $02
    rst $38                                       ; $6652: $ff
    cp h                                          ; $6653: $bc
    inc bc                                        ; $6654: $03
    sbc b                                         ; $6655: $98
    ld h, a                                       ; $6656: $67
    rla                                           ; $6657: $17
    xor d                                         ; $6658: $aa
    db $e4                                        ; $6659: $e4
    ld a, [bc]                                    ; $665a: $0a
    rst $38                                       ; $665b: $ff
    adc e                                         ; $665c: $8b
    jr nz, @+$24                                  ; $665d: $20 $22

    nop                                           ; $665f: $00
    db $dd                                        ; $6660: $dd
    nop                                           ; $6661: $00
    cp l                                          ; $6662: $bd
    ld b, d                                       ; $6663: $42
    cp $08                                        ; $6664: $fe $08
    and c                                         ; $6666: $a1
    ld d, $a9                                     ; $6667: $16 $a9
    add sp, $03                                   ; $6669: $e8 $03
    add l                                         ; $666b: $85
    ld [hl+], a                                   ; $666c: $22
    ld a, [hl+]                                   ; $666d: $2a
    rst $38                                       ; $666e: $ff
    rlca                                          ; $666f: $07
    db $db                                        ; $6670: $db
    nop                                           ; $6671: $00
    cp h                                          ; $6672: $bc
    ld b, e                                       ; $6673: $43
    ccf                                           ; $6674: $3f
    ret nz                                        ; $6675: $c0

    add hl, de                                    ; $6676: $19
    ei                                            ; $6677: $fb

jr_029_6678:
    and $18                                       ; $6678: $e6 $18
    ld h, b                                       ; $667a: $60
    and b                                         ; $667b: $a0
    inc a                                         ; $667c: $3c
    jp $e7b8                                      ; $667d: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $6680: $08 $ff $f7
    call z, $90fb                                 ; $6683: $cc $fb $90
    ld l, a                                       ; $6686: $6f
    ld a, [hl+]                                   ; $6687: $2a
    rst $38                                       ; $6688: $ff
    rra                                           ; $6689: $1f
    rst $38                                       ; $668a: $ff
    ldh [$d0], a                                  ; $668b: $e0 $d0
    ld bc, $a15a                                  ; $668d: $01 $5a $a1
    ld c, b                                       ; $6690: $48
    rlca                                          ; $6691: $07
    ld hl, sp-$09                                 ; $6692: $f8 $f7
    rlca                                          ; $6694: $07
    inc e                                         ; $6695: $1c
    inc bc                                        ; $6696: $03
    ret nz                                        ; $6697: $c0

    pop hl                                        ; $6698: $e1
    or b                                          ; $6699: $b0
    rrca                                          ; $669a: $0f
    call z, $ff3f                                 ; $669b: $cc $3f $ff
    ld a, c                                       ; $669e: $79
    add [hl]                                      ; $669f: $86
    ld [de], a                                    ; $66a0: $12
    rst $28                                       ; $66a1: $ef
    dec de                                        ; $66a2: $1b
    ldh [$3c], a                                  ; $66a3: $e0 $3c
    jp $d0fe                                      ; $66a5: $c3 $fe $d0


    pop hl                                        ; $66a8: $e1
    dec a                                         ; $66a9: $3d
    ret nz                                        ; $66aa: $c0

    ld c, a                                       ; $66ab: $4f
    and b                                         ; $66ac: $a0
    jr nc, jr_029_6678                            ; $66ad: $30 $c9

    ld d, d                                       ; $66af: $52
    rst $38                                       ; $66b0: $ff
    and c                                         ; $66b1: $a1
    ld l, l                                       ; $66b2: $6d
    jp nz, $c934                                  ; $66b3: $c2 $34 $c9

    ld c, b                                       ; $66b6: $48
    or e                                          ; $66b7: $b3
    ld a, [de]                                    ; $66b8: $1a
    rst $38                                       ; $66b9: $ff
    push hl                                       ; $66ba: $e5
    dec d                                         ; $66bb: $15
    cp a                                          ; $66bc: $bf
    adc $3f                                       ; $66bd: $ce $3f
    ld d, [hl]                                    ; $66bf: $56
    cp a                                          ; $66c0: $bf
    ld l, l                                       ; $66c1: $6d
    rst $38                                       ; $66c2: $ff
    cp a                                          ; $66c3: $bf
    sbc [hl]                                      ; $66c4: $9e
    ld a, a                                       ; $66c5: $7f
    ld l, d                                       ; $66c6: $6a
    cp a                                          ; $66c7: $bf
    dec e                                         ; $66c8: $1d
    rst $38                                       ; $66c9: $ff
    ld c, [hl]                                    ; $66ca: $4e
    rst $38                                       ; $66cb: $ff
    cp a                                          ; $66cc: $bf
    dec [hl]                                      ; $66cd: $35
    ret nz                                        ; $66ce: $c0

    ld c, [hl]                                    ; $66cf: $4e
    and c                                         ; $66d0: $a1
    ld [hl-], a                                   ; $66d1: $32
    ret                                           ; $66d2: $c9


    ld d, a                                       ; $66d3: $57
    rst $38                                       ; $66d4: $ff
    and d                                         ; $66d5: $a2
    ld a, a                                       ; $66d6: $7f
    push bc                                       ; $66d7: $c5
    ld [hl-], a                                   ; $66d8: $32
    rst $08                                       ; $66d9: $cf
    ld d, l                                       ; $66da: $55
    cp a                                          ; $66db: $bf
    dec hl                                        ; $66dc: $2b
    sbc $90                                       ; $66dd: $de $90
    add d                                         ; $66df: $82
    cp h                                          ; $66e0: $bc
    ld b, e                                       ; $66e1: $43
    ld e, b                                       ; $66e2: $58
    and a                                         ; $66e3: $a7
    nop                                           ; $66e4: $00
    and b                                         ; $66e5: $a0
    db $e3                                        ; $66e6: $e3
    call nz, $f3ff                                ; $66e7: $c4 $ff $f3
    or h                                          ; $66ea: $b4
    db $eb                                        ; $66eb: $eb
    sbc d                                         ; $66ec: $9a
    ld a, a                                       ; $66ed: $7f
    rst $28                                       ; $66ee: $ef
    ccf                                           ; $66ef: $3f
    ld a, [hl-]                                   ; $66f0: $3a
    rst $38                                       ; $66f1: $ff
    rst $18                                       ; $66f2: $df
    ld c, l                                       ; $66f3: $4d
    rst $38                                       ; $66f4: $ff
    or h                                          ; $66f5: $b4
    rst $38                                       ; $66f6: $ff
    ld a, d                                       ; $66f7: $7a
    rst $38                                       ; $66f8: $ff
    xor b                                         ; $66f9: $a8
    ei                                            ; $66fa: $fb
    rst $38                                       ; $66fb: $ff
    ld [hl], h                                    ; $66fc: $74
    cp [hl]                                       ; $66fd: $be
    add b                                         ; $66fe: $80
    inc hl                                        ; $66ff: $23
    rst $18                                       ; $6700: $df
    dec b                                         ; $6701: $05
    rst $38                                       ; $6702: $ff
    ld a, [de]                                    ; $6703: $1a
    cp $70                                        ; $6704: $fe $70
    add [hl]                                      ; $6706: $86
    call nc, $bbff                                ; $6707: $d4 $ff $bb
    cp $74                                        ; $670a: $fe $74
    rst $38                                       ; $670c: $ff
    xor [hl]                                      ; $670d: $ae
    ld a, [$209a]                                 ; $670e: $fa $9a $20
    xor [hl]                                      ; $6711: $ae
    ld a, [hl-]                                   ; $6712: $3a
    add b                                         ; $6713: $80
    inc bc                                        ; $6714: $03
    rst $38                                       ; $6715: $ff
    ld d, d                                       ; $6716: $52
    db $fc                                        ; $6717: $fc
    xor d                                         ; $6718: $aa
    xor a                                         ; $6719: $af
    db $fd                                        ; $671a: $fd
    ld [hl], a                                    ; $671b: $77
    ei                                            ; $671c: $fb
    and d                                         ; $671d: $a2
    or b                                          ; $671e: $b0
    ld h, b                                       ; $671f: $60
    dec c                                         ; $6720: $0d
    xor h                                         ; $6721: $ac
    ld h, b                                       ; $6722: $60
    ld a, [bc]                                    ; $6723: $0a
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    ld h, a                                       ; $6726: $67
    adc b                                         ; $6727: $88
    call Call_000_32bb                            ; $6728: $cd $bb $32
    rst $28                                       ; $672b: $ef
    db $eb                                        ; $672c: $eb
    ld a, [$e0de]                                 ; $672d: $fa $de $e0
    cp $1c                                        ; $6730: $fe $1c
    add b                                         ; $6732: $80
    cp d                                          ; $6733: $ba
    rst $38                                       ; $6734: $ff
    daa                                           ; $6735: $27
    ret z                                         ; $6736: $c8

    ld l, l                                       ; $6737: $6d
    rst $38                                       ; $6738: $ff
    sbc e                                         ; $6739: $9b
    ld [hl+], a                                   ; $673a: $22
    rst $38                                       ; $673b: $ff

jr_029_673c:
    ld a, e                                       ; $673c: $7b
    rst $38                                       ; $673d: $ff
    or [hl]                                       ; $673e: $b6
    rst $38                                       ; $673f: $ff
    ld e, [hl]                                    ; $6740: $5e
    ei                                            ; $6741: $fb
    rst $38                                       ; $6742: $ff
    cp e                                          ; $6743: $bb
    add h                                         ; $6744: $84
    ld h, b                                       ; $6745: $60
    ld c, $bf                                     ; $6746: $0e $bf
    db $dd                                        ; $6748: $dd
    ccf                                           ; $6749: $3f
    ld l, [hl]                                    ; $674a: $6e
    cp e                                          ; $674b: $bb
    cp a                                          ; $674c: $bf
    ld d, a                                       ; $674d: $57
    ld [hl], b                                    ; $674e: $70

jr_029_674f:
    ldh [$6d], a                                  ; $674f: $e0 $6d
    cp a                                          ; $6751: $bf
    ld e, $70                                     ; $6752: $1e $70
    ldh [rHDMA2], a                               ; $6754: $e0 $52
    rst $38                                       ; $6756: $ff
    db $fd                                        ; $6757: $fd
    xor $f9                                       ; $6758: $ee $f9
    ld c, c                                       ; $675a: $49
    or $a7                                        ; $675b: $f6 $a7
    ld hl, sp+$47                                 ; $675d: $f8 $47
    rst $38                                       ; $675f: $ff
    ldh a, [$b4]                                  ; $6760: $f0 $b4
    ret                                           ; $6762: $c9


    ld c, d                                       ; $6763: $4a
    or c                                          ; $6764: $b1
    dec de                                        ; $6765: $1b

Jump_029_6766:
    db $e4                                        ; $6766: $e4
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rra                                           ; $6769: $1f
    ld c, d                                       ; $676a: $4a
    cp a                                          ; $676b: $bf
    ld l, c                                       ; $676c: $69
    sub a                                         ; $676d: $97
    ld [de], a                                    ; $676e: $12
    rst $28                                       ; $676f: $ef
    add hl, de                                    ; $6770: $19
    rst $30                                       ; $6771: $f7
    ld [c], a                                     ; $6772: $e2

Jump_029_6773:
    jr c, jr_029_673c                             ; $6773: $38 $c7

    nop                                           ; $6775: $00
    pop hl                                        ; $6776: $e1
    dec hl                                        ; $6777: $2b
    ret nc                                        ; $6778: $d0

    xor d                                         ; $6779: $aa
    ld b, c                                       ; $677a: $41
    cp a                                          ; $677b: $bf
    cp $01                                        ; $677c: $fe $01
    xor b                                         ; $677e: $a8
    rlca                                          ; $677f: $07
    ld a, b                                       ; $6780: $78
    add a                                         ; $6781: $87
    db $10                                        ; $6782: $10
    db $e3                                        ; $6783: $e3

jr_029_6784:
    and c                                         ; $6784: $a1
    rst $38                                       ; $6785: $ff
    ld e, $8c                                     ; $6786: $1e $8c
    ld a, d                                       ; $6788: $7a
    ld d, a                                       ; $6789: $57
    xor b                                         ; $678a: $a8
    jr c, jr_029_674f                             ; $678b: $38 $c2

    dec c                                         ; $678d: $0d
    rst $30                                       ; $678e: $f7
    ldh a, [$3d]                                  ; $678f: $f0 $3d
    jp nz, Jump_029_61d8                          ; $6791: $c2 $d8 $61

    cpl                                           ; $6794: $2f
    sub b                                         ; $6795: $90
    ld sp, hl                                     ; $6796: $f9
    nop                                           ; $6797: $00
    rst $38                                       ; $6798: $ff
    adc d                                         ; $6799: $8a
    ld hl, $0728                                  ; $679a: $21 $28 $07
    ret c                                         ; $679d: $d8

    rlca                                          ; $679e: $07
    cp h                                          ; $679f: $bc
    ld b, e                                       ; $67a0: $43
    db $fc                                        ; $67a1: $fc
    ret z                                         ; $67a2: $c8

    ld h, c                                       ; $67a3: $61
    add hl, sp                                    ; $67a4: $39
    and e                                         ; $67a5: $a3
    ld [bc], a                                    ; $67a6: $02
    db $fd                                        ; $67a7: $fd
    ld bc, $0dfe                                  ; $67a8: $01 $fe $0d
    ldh a, [rIE]                                  ; $67ab: $f0 $ff
    ld [bc], a                                    ; $67ad: $02
    db $fd                                        ; $67ae: $fd
    ld a, [hl+]                                   ; $67af: $2a
    ret nc                                        ; $67b0: $d0

    dec hl                                        ; $67b1: $2b
    sub $f5                                       ; $67b2: $d6 $f5
    ld a, [bc]                                    ; $67b4: $0a
    rst $38                                       ; $67b5: $ff
    ld e, a                                       ; $67b6: $5f
    add b                                         ; $67b7: $80
    xor c                                         ; $67b8: $a9
    ld [bc], a                                    ; $67b9: $02
    ld a, a                                       ; $67ba: $7f
    add b                                         ; $67bb: $80
    db $10                                        ; $67bc: $10
    rrca                                          ; $67bd: $0f
    rst $38                                       ; $67be: $ff
    ldh [$1f], a                                  ; $67bf: $e0 $1f
    add b                                         ; $67c1: $80
    ld a, a                                       ; $67c2: $7f
    ld d, a                                       ; $67c3: $57
    xor d                                         ; $67c4: $aa
    push af                                       ; $67c5: $f5
    ld a, [bc]                                    ; $67c6: $0a
    cp a                                          ; $67c7: $bf
    sbc a                                         ; $67c8: $9f
    jr nz, jr_029_6784                            ; $67c9: $20 $b9

    ld [bc], a                                    ; $67cb: $02
    ld h, a                                       ; $67cc: $67
    sbc b                                         ; $67cd: $98
    rrca                                          ; $67ce: $0f
    and e                                         ; $67cf: $a3
    ld c, d                                       ; $67d0: $4a
    rst $38                                       ; $67d1: $ff
    or l                                          ; $67d2: $b5
    db $f4                                        ; $67d3: $f4
    dec bc                                        ; $67d4: $0b
    sbc l                                         ; $67d5: $9d
    ld [hl+], a                                   ; $67d6: $22
    cp d                                          ; $67d7: $ba
    rlca                                          ; $67d8: $07
    ld a, e                                       ; $67d9: $7b
    ld e, a                                       ; $67da: $5f
    add b                                         ; $67db: $80
    inc c                                         ; $67dc: $0c
    di                                            ; $67dd: $f3
    rlca                                          ; $67de: $07
    ld hl, sp-$41                                 ; $67df: $f8 $bf
    and c                                         ; $67e1: $a1
    add b                                         ; $67e2: $80
    sbc [hl]                                      ; $67e3: $9e
    nop                                           ; $67e4: $00
    db $ed                                        ; $67e5: $ed
    and b                                         ; $67e6: $a0
    sbc d                                         ; $67e7: $9a
    nop                                           ; $67e8: $00
    ld l, b                                       ; $67e9: $68
    rst $38                                       ; $67ea: $ff
    sub b                                         ; $67eb: $90
    pop bc                                        ; $67ec: $c1
    rla                                           ; $67ed: $17
    add sp, -$2f                                  ; $67ee: $e8 $d1
    rst $20                                       ; $67f0: $e7
    nop                                           ; $67f1: $00
    ld l, $d1                                     ; $67f2: $2e $d1
    add b                                         ; $67f4: $80
    pop hl                                        ; $67f5: $e1
    ret nz                                        ; $67f6: $c0

    db $e3                                        ; $67f7: $e3
    or b                                          ; $67f8: $b0
    rrca                                          ; $67f9: $0f
    add $fc                                       ; $67fa: $c6 $fc

Call_029_67fc:
    sub b                                         ; $67fc: $90
    call nz, $e3d0                                ; $67fd: $c4 $d0 $e3
    dec a                                         ; $6800: $3d
    ret nz                                        ; $6801: $c0

    ld e, a                                       ; $6802: $5f
    and b                                         ; $6803: $a0
    inc [hl]                                      ; $6804: $34
    ret                                           ; $6805: $c9


    rst $10                                       ; $6806: $d7
    ld e, d                                       ; $6807: $5a
    and c                                         ; $6808: $a1
    ld a, l                                       ; $6809: $7d
    sub b                                         ; $680a: $90
    ret nz                                        ; $680b: $c0

    ld c, h                                       ; $680c: $4c
    sub b                                         ; $680d: $90
    ret nz                                        ; $680e: $c0

    ld d, l                                       ; $680f: $55
    cp a                                          ; $6810: $bf
    ei                                            ; $6811: $fb
    adc [hl]                                      ; $6812: $8e
    ld a, a                                       ; $6813: $7f
    sub b                                         ; $6814: $90
    jp z, $5ac8                                   ; $6815: $ca $c8 $5a

    and c                                         ; $6818: $a1
    inc a                                         ; $6819: $3c
    jp Jump_029_537f                              ; $681a: $c3 $7f $53


    xor [hl]                                      ; $681d: $ae
    ld [hl], a                                    ; $681e: $77
    call $bf42                                    ; $681f: $cd $42 $bf
    dec d                                         ; $6822: $15
    ld l, d                                       ; $6823: $6a
    ld h, b                                       ; $6824: $60
    cp $6b                                        ; $6825: $fe $6b
    add c                                         ; $6827: $81
    ret nz                                        ; $6828: $c0

    ccf                                           ; $6829: $3f
    ld b, b                                       ; $682a: $40
    cp a                                          ; $682b: $bf
    ld b, b                                       ; $682c: $40
    rst $38                                       ; $682d: $ff
    or b                                          ; $682e: $b0
    cp a                                          ; $682f: $bf
    rst $28                                       ; $6830: $ef
    call z, $a4f3                                 ; $6831: $cc $f3 $a4
    ei                                            ; $6834: $fb
    dec d                                         ; $6835: $15
    cp h                                          ; $6836: $bc
    ret nz                                        ; $6837: $c0

    dec b                                         ; $6838: $05
    xor e                                         ; $6839: $ab
    rst $38                                       ; $683a: $ff
    ld [bc], a                                    ; $683b: $02
    add hl, hl                                    ; $683c: $29
    and [hl]                                      ; $683d: $a6
    ld d, e                                       ; $683e: $53
    or b                                          ; $683f: $b0
    ret nz                                        ; $6840: $c0

    ld [hl], l                                    ; $6841: $75
    or b                                          ; $6842: $b0
    ret z                                         ; $6843: $c8

    ld [hl], a                                    ; $6844: $77
    xor e                                         ; $6845: $ab
    adc b                                         ; $6846: $88
    call z, $cab0                                 ; $6847: $cc $b0 $ca
    scf                                           ; $684a: $37
    or b                                          ; $684b: $b0
    call z, $b04e                                 ; $684c: $cc $4e $b0
    adc $ae                                       ; $684f: $ce $ae
    db $db                                        ; $6851: $db
    ld sp, hl                                     ; $6852: $f9
    ld a, c                                       ; $6853: $79
    or b                                          ; $6854: $b0
    ret z                                         ; $6855: $c8

    cp a                                          ; $6856: $bf
    ld e, a                                       ; $6857: $5f
    or b                                          ; $6858: $b0
    jp $e21d                                      ; $6859: $c3 $1d $e2


    ei                                            ; $685c: $fb
    ld [$20f7], sp                                ; $685d: $08 $f7 $20
    pop hl                                        ; $6860: $e1
    dec l                                         ; $6861: $2d
    ret nc                                        ; $6862: $d0

    sbc d                                         ; $6863: $9a
    ld h, c                                       ; $6864: $61
    ld a, [hl]                                    ; $6865: $7e
    cp e                                          ; $6866: $bb
    add c                                         ; $6867: $81
    add sp, $30                                   ; $6868: $e8 $30
    and $61                                       ; $686a: $e6 $61
    ld e, $95                                     ; $686c: $1e $95
    or b                                          ; $686e: $b0
    ret nz                                        ; $686f: $c0

    add hl, sp                                    ; $6870: $39
    rst $30                                       ; $6871: $f7
    jp nz, $f00f                                  ; $6872: $c2 $0f $f0

    rst $38                                       ; $6875: $ff
    ld h, e                                       ; $6876: $63
    ld d, a                                       ; $6877: $57
    xor b                                         ; $6878: $a8
    ei                                            ; $6879: $fb
    nop                                           ; $687a: $00
    cp a                                          ; $687b: $bf
    sbc [hl]                                      ; $687c: $9e
    ld hl, $07a8                                  ; $687d: $21 $a8 $07
    ld [hl], b                                    ; $6880: $70
    adc a                                         ; $6881: $8f
    rst $28                                       ; $6882: $ef
    ld h, e                                       ; $6883: $63
    inc c                                         ; $6884: $0c
    rst $38                                       ; $6885: $ff
    rst $30                                       ; $6886: $f7
    reti                                          ; $6887: $d9


    ld l, a                                       ; $6888: $6f
    ld [$63ff], sp                                ; $6889: $08 $ff $63
    cp l                                          ; $688c: $bd
    sub $ff                                       ; $688d: $d6 $ff
    ld l, e                                       ; $688f: $6b
    ld l, d                                       ; $6890: $6a
    rst $18                                       ; $6891: $df
    jr nc, @-$1f                                  ; $6892: $30 $df

    ld d, e                                       ; $6894: $53
    db $fd                                        ; $6895: $fd
    nop                                           ; $6896: $00
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    ld e, l                                       ; $6899: $5d
    rst $20                                       ; $689a: $e7
    ld [$40ff], sp                                ; $689b: $08 $ff $40
    cp a                                          ; $689e: $bf
    ld l, h                                       ; $689f: $6c
    sbc e                                         ; $68a0: $9b
    or a                                          ; $68a1: $b7
    ld c, b                                       ; $68a2: $48
    call c, Call_029_40c0                         ; $68a3: $dc $c0 $40
    rst $38                                       ; $68a6: $ff
    ld b, h                                       ; $68a7: $44
    dec b                                         ; $68a8: $05
    inc a                                         ; $68a9: $3c
    dec b                                         ; $68aa: $05
    ld d, l                                       ; $68ab: $55
    ei                                            ; $68ac: $fb
    nop                                           ; $68ad: $00
    cp d                                          ; $68ae: $ba
    cp [hl]                                       ; $68af: $be
    add b                                         ; $68b0: $80
    xor e                                         ; $68b1: $ab
    nop                                           ; $68b2: $00
    ld e, l                                       ; $68b3: $5d
    nop                                           ; $68b4: $00
    ld [$b6fa], a                                 ; $68b5: $ea $fa $b6
    add b                                         ; $68b8: $80
    xor [hl]                                      ; $68b9: $ae
    or d                                          ; $68ba: $b2
    add b                                         ; $68bb: $80
    adc d                                         ; $68bc: $8a
    nop                                           ; $68bd: $00
    ld d, h                                       ; $68be: $54
    nop                                           ; $68bf: $00
    xor d                                         ; $68c0: $aa
    cp $f0                                        ; $68c1: $fe $f0
    ldh [$aa], a                                  ; $68c3: $e0 $aa
    nop                                           ; $68c5: $00
    dec d                                         ; $68c6: $15
    nop                                           ; $68c7: $00
    xor b                                         ; $68c8: $a8
    nop                                           ; $68c9: $00
    ld d, c                                       ; $68ca: $51
    rst $38                                       ; $68cb: $ff
    nop                                           ; $68cc: $00
    ld [$2200], sp                                ; $68cd: $08 $00 $22
    nop                                           ; $68d0: $00
    sub h                                         ; $68d1: $94
    nop                                           ; $68d2: $00
    add hl, hl                                    ; $68d3: $29
    xor a                                         ; $68d4: $af
    nop                                           ; $68d5: $00
    ld b, h                                       ; $68d6: $44
    nop                                           ; $68d7: $00
    db $10                                        ; $68d8: $10
    db $e4                                        ; $68d9: $e4
    ldh [rP1], a                                  ; $68da: $e0 $00
    sub e                                         ; $68dc: $93
    nop                                           ; $68dd: $00
    ld bc, $b4ce                                  ; $68de: $01 $ce $b4
    nop                                           ; $68e1: $00
    jr nz, jr_029_68e4                            ; $68e2: $20 $00

jr_029_68e4:
    add b                                         ; $68e4: $80
    xor [hl]                                      ; $68e5: $ae
    nop                                           ; $68e6: $00
    cp l                                          ; $68e7: $bd
    ldh [rNR23], a                                ; $68e8: $e0 $18
    inc a                                         ; $68ea: $3c
    rst $38                                       ; $68eb: $ff
    ld a, [hl]                                    ; $68ec: $7e
    ld a, [hl]                                    ; $68ed: $7e
    rst $38                                       ; $68ee: $ff
    ld [hl], b                                    ; $68ef: $70
    rst $38                                       ; $68f0: $ff
    ld a, b                                       ; $68f1: $78
    db $fc                                        ; $68f2: $fc
    inc a                                         ; $68f3: $3c
    rst $38                                       ; $68f4: $ff
    cp $80                                        ; $68f5: $fe $80
    ld a, h                                       ; $68f7: $7c
    ld h, h                                       ; $68f8: $64
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    ld [$ff1c], sp                                ; $68fb: $08 $1c $ff
    ld a, $36                                     ; $68fe: $3e $36
    ld a, a                                       ; $6900: $7f
    and [hl]                                      ; $6901: $a6
    ld a, a                                       ; $6902: $7f
    add h                                         ; $6903: $84
    ld l, a                                       ; $6904: $6f
    ld b, b                                       ; $6905: $40
    db $eb                                        ; $6906: $eb
    ld c, $08                                     ; $6907: $0e $08
    sbc [hl]                                      ; $6909: $9e
    ldh [$03], a                                  ; $690a: $e0 $03
    sbc h                                         ; $690c: $9c
    and b                                         ; $690d: $a0
    ld b, $ff                                     ; $690e: $06 $ff
    ld e, h                                       ; $6910: $5c
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    ld de, $74fe                                  ; $6913: $11 $fe $74
    ei                                            ; $6916: $fb
    ret nz                                        ; $6917: $c0

    rst $38                                       ; $6918: $ff
    sub c                                         ; $6919: $91
    rst $28                                       ; $691a: $ef
    rst $28                                       ; $691b: $ef
    ld c, [hl]                                    ; $691c: $4e
    rst $38                                       ; $691d: $ff
    ei                                            ; $691e: $fb
    ld d, d                                       ; $691f: $52
    ret nz                                        ; $6920: $c0

    inc b                                         ; $6921: $04
    ei                                            ; $6922: $fb
    ld c, d                                       ; $6923: $4a
    rst $28                                       ; $6924: $ef
    or l                                          ; $6925: $b5
    and b                                         ; $6926: $a0
    ld e, a                                       ; $6927: $5f
    ld a, [bc]                                    ; $6928: $0a
    xor b                                         ; $6929: $a8
    jr nz, jr_029_6952                            ; $692a: $20 $26

    rst $18                                       ; $692c: $df
    sub e                                         ; $692d: $93
    rst $38                                       ; $692e: $ff
    rst $28                                       ; $692f: $ef
    ld h, $df                                     ; $6930: $26 $df
    add d                                         ; $6932: $82
    rst $38                                       ; $6933: $ff

jr_029_6934:
    ld d, e                                       ; $6934: $53
    rst $28                                       ; $6935: $ef

jr_029_6936:
    adc c                                         ; $6936: $89
    xor a                                         ; $6937: $af
    rst $30                                       ; $6938: $f7
    ld d, e                                       ; $6939: $53
    rst $28                                       ; $693a: $ef
    add d                                         ; $693b: $82
    sbc d                                         ; $693c: $9a
    jr nz, jr_029_6934                            ; $693d: $20 $f5

    ld d, d                                       ; $693f: $52
    ld b, b                                       ; $6940: $40
    ldh a, [rIE]                                  ; $6941: $f0 $ff
    rst $38                                       ; $6943: $ff
    xor d                                         ; $6944: $aa
    db $fd                                        ; $6945: $fd
    ld d, c                                       ; $6946: $51
    cp $80                                        ; $6947: $fe $80
    rst $38                                       ; $6949: $ff
    ld d, l                                       ; $694a: $55
    rst $38                                       ; $694b: $ff
    db $eb                                        ; $694c: $eb
    pop de                                        ; $694d: $d1
    sbc a                                         ; $694e: $9f
    sbc l                                         ; $694f: $9d
    ld c, a                                       ; $6950: $4f
    daa                                           ; $6951: $27

jr_029_6952:
    rla                                           ; $6952: $17
    and e                                         ; $6953: $a3
    rst $38                                       ; $6954: $ff
    di                                            ; $6955: $f3
    db $db                                        ; $6956: $db
    pop hl                                        ; $6957: $e1
    xor $f1                                       ; $6958: $ee $f1
    or h                                          ; $695a: $b4
    ei                                            ; $695b: $fb
    ret                                           ; $695c: $c9


    ei                                            ; $695d: $fb
    rst $38                                       ; $695e: $ff
    jp c, $e0f0                                   ; $695f: $da $f0 $e0

    ld h, $17                                     ; $6962: $26 $17
    and d                                         ; $6964: $a2
    di                                            ; $6965: $f3
    ld e, d                                       ; $6966: $5a
    rst $38                                       ; $6967: $ff

Jump_029_6968:
    pop hl                                        ; $6968: $e1
    ld l, [hl]                                    ; $6969: $6e
    pop af                                        ; $696a: $f1
    inc [hl]                                      ; $696b: $34
    ei                                            ; $696c: $fb
    ld sp, hl                                     ; $696d: $f9
    rst $38                                       ; $696e: $ff
    rst $20                                       ; $696f: $e7
    rst $38                                       ; $6970: $ff
    jr jr_029_6936                                ; $6971: $18 $c3

    inc h                                         ; $6973: $24
    rst $20                                       ; $6974: $e7
    inc h                                         ; $6975: $24
    rst $38                                       ; $6976: $ff
    inc a                                         ; $6977: $3c
    db $db                                        ; $6978: $db
    rst $30                                       ; $6979: $f7
    inc a                                         ; $697a: $3c
    rst $20                                       ; $697b: $e7
    jr @-$3e                                      ; $697c: $18 $c0

    ld b, c                                       ; $697e: $41
    ld h, a                                       ; $697f: $67
    sbc d                                         ; $6980: $9a
    call nz, $ff8a                                ; $6981: $c4 $8a $ff
    dec bc                                        ; $6984: $0b
    ret nz                                        ; $6985: $c0

    ld b, d                                       ; $6986: $42
    and b                                         ; $6987: $a0
    db $10                                        ; $6988: $10
    ret nz                                        ; $6989: $c0

    jp hl                                         ; $698a: $e9


    add b                                         ; $698b: $80
    rst $38                                       ; $698c: $ff
    ld h, b                                       ; $698d: $60
    sub c                                         ; $698e: $91
    adc e                                         ; $698f: $8b
    ld h, b                                       ; $6990: $60
    ld d, $a9                                     ; $6991: $16 $a9
    pop hl                                        ; $6993: $e1

jr_029_6994:
    dec bc                                        ; $6994: $0b
    rst $38                                       ; $6995: $ff
    adc d                                         ; $6996: $8a
    daa                                           ; $6997: $27
    daa                                           ; $6998: $27
    rrca                                          ; $6999: $0f
    xor l                                         ; $699a: $ad
    rra                                           ; $699b: $1f
    sub $3f                                       ; $699c: $d6 $3f
    ld sp, hl                                     ; $699e: $f9
    ld a, l                                       ; $699f: $7d
    and [hl]                                      ; $69a0: $a6
    add b                                         ; $69a1: $80
    ld d, b                                       ; $69a2: $50
    daa                                           ; $69a3: $27
    inc h                                         ; $69a4: $24
    db $db                                        ; $69a5: $db
    inc c                                         ; $69a6: $0c
    rst $30                                       ; $69a7: $f7
    ld [hl], $ff                                  ; $69a8: $36 $ff

jr_029_69aa:
    rst $08                                       ; $69aa: $cf
    jr jr_029_6994                                ; $69ab: $18 $e7

    sub $0f                                       ; $69ad: $d6 $0f
    ld e, c                                       ; $69af: $59
    and [hl]                                      ; $69b0: $a6
    ld b, d                                       ; $69b1: $42
    rst $38                                       ; $69b2: $ff
    rrca                                          ; $69b3: $0f
    ei                                            ; $69b4: $fb
    nop                                           ; $69b5: $00
    inc e                                         ; $69b6: $1c
    inc bc                                        ; $69b7: $03
    cp a                                          ; $69b8: $bf

jr_029_69b9:
    nop                                           ; $69b9: $00
    sbc c                                         ; $69ba: $99
    ld a, l                                       ; $69bb: $7d
    ld h, [hl]                                    ; $69bc: $66
    ld l, b                                       ; $69bd: $68
    ld hl, $c23d                                  ; $69be: $21 $3d $c2
    jr jr_029_69aa                                ; $69c1: $18 $e7

    add hl, de                                    ; $69c3: $19
    ld h, b                                       ; $69c4: $60
    inc h                                         ; $69c5: $24
    ld a, $40                                     ; $69c6: $3e $40
    add c                                         ; $69c8: $81
    ld d, [hl]                                    ; $69c9: $56
    xor c                                         ; $69ca: $a9
    ld [hl+], a                                   ; $69cb: $22
    rst $38                                       ; $69cc: $ff
    ld [hl], l                                    ; $69cd: $75
    ret nz                                        ; $69ce: $c0

    add h                                         ; $69cf: $84
    or b                                          ; $69d0: $b0
    and e                                         ; $69d1: $a3
    rst $38                                       ; $69d2: $ff
    ld de, $1fef                                  ; $69d3: $11 $ef $1f
    ldh [$3d], a                                  ; $69d6: $e0 $3d
    rst $00                                       ; $69d8: $c7
    inc sp                                        ; $69d9: $33
    rst $08                                       ; $69da: $cf
    ei                                            ; $69db: $fb
    dec l                                         ; $69dc: $2d
    rst $10                                       ; $69dd: $d7
    db $10                                        ; $69de: $10
    add l                                         ; $69df: $85
    jr z, jr_029_69b9                             ; $69e0: $28 $d7

    ld b, h                                       ; $69e2: $44
    ei                                            ; $69e3: $fb
    or h                                          ; $69e4: $b4
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    ret nc                                        ; $69e7: $d0

    rst $38                                       ; $69e8: $ff
    rst $28                                       ; $69e9: $ef
    jr @-$23                                      ; $69ea: $18 $db

    inc l                                         ; $69ec: $2c
    rst $10                                       ; $69ed: $d7
    rst $38                                       ; $69ee: $ff
    inc l                                         ; $69ef: $2c
    rst $28                                       ; $69f0: $ef
    inc a                                         ; $69f1: $3c
    sub l                                         ; $69f2: $95
    ld l, [hl]                                    ; $69f3: $6e
    sbc e                                         ; $69f4: $9b
    ld b, [hl]                                    ; $69f5: $46

jr_029_69f6:
    rst $18                                       ; $69f6: $df
    rst $38                                       ; $69f7: $ff
    ld l, [hl]                                    ; $69f8: $6e
    ld a, [bc]                                    ; $69f9: $0a
    rst $10                                       ; $69fa: $d7

jr_029_69fb:
    dec e                                         ; $69fb: $1d
    add e                                         ; $69fc: $83
    adc a                                         ; $69fd: $8f
    rst $10                                       ; $69fe: $d7
    cp l                                          ; $69ff: $bd
    ld a, a                                       ; $6a00: $7f
    ld a, [hl]                                    ; $6a01: $7e
    rst $28                                       ; $6a02: $ef
    jr c, @+$01                                   ; $6a03: $38 $ff

    jr z, jr_029_69f6                             ; $6a05: $28 $ef

    ld a, $51                                     ; $6a07: $3e $51
    ld h, b                                       ; $6a09: $60
    rst $38                                       ; $6a0a: $ff
    ld e, $18                                     ; $6a0b: $1e $18
    rst $38                                       ; $6a0d: $ff
    inc e                                         ; $6a0e: $1c
    rst $28                                       ; $6a0f: $ef
    inc d                                         ; $6a10: $14
    rst $28                                       ; $6a11: $ef
    inc l                                         ; $6a12: $2c
    rst $38                                       ; $6a13: $ff

jr_029_6a14:
    rst $38                                       ; $6a14: $ff
    ld d, $ef                                     ; $6a15: $16 $ef
    ld a, [de]                                    ; $6a17: $1a
    rst $00                                       ; $6a18: $c7
    ld e, [hl]                                    ; $6a19: $5e
    rst $28                                       ; $6a1a: $ef
    dec bc                                        ; $6a1b: $0b
    cp $e0                                        ; $6a1c: $fe $e0
    ld [c], a                                     ; $6a1e: $e2
    ld a, [hl]                                    ; $6a1f: $7e
    rst $38                                       ; $6a20: $ff
    jr z, @+$01                                   ; $6a21: $28 $ff

    jr c, jr_029_6a14                             ; $6a23: $38 $ef

    ld l, $fe                                     ; $6a25: $2e $fe
    pop hl                                        ; $6a27: $e1
    pop hl                                        ; $6a28: $e1
    rst $38                                       ; $6a29: $ff
    jr nz, jr_029_69fb                            ; $6a2a: $20 $cf

    or [hl]                                       ; $6a2c: $b6
    dec hl                                        ; $6a2d: $2b
    db $ed                                        ; $6a2e: $ed
    cp d                                          ; $6a2f: $ba
    ld e, a                                       ; $6a30: $5f
    dec sp                                        ; $6a31: $3b
    rst $18                                       ; $6a32: $df
    halt                                          ; $6a33: $76
    rst $18                                       ; $6a34: $df
    ld d, h                                       ; $6a35: $54
    ld c, b                                       ; $6a36: $48
    jr nz, jr_029_6a63                            ; $6a37: $20 $2a

    sub b                                         ; $6a39: $90
    ldh [$7f], a                                  ; $6a3a: $e0 $7f
    sbc $7f                                       ; $6a3c: $de $7f
    add hl, hl                                    ; $6a3e: $29
    cp $55                                        ; $6a3f: $fe $55
    rst $38                                       ; $6a41: $ff
    cp [hl]                                       ; $6a42: $be
    ld a, [hl]                                    ; $6a43: $7e
    ldh [$bf], a                                  ; $6a44: $e0 $bf
    xor d                                         ; $6a46: $aa
    rst $38                                       ; $6a47: $ff
    ret nz                                        ; $6a48: $c0

    rst $38                                       ; $6a49: $ff
    sbc b                                         ; $6a4a: $98
    ld h, a                                       ; $6a4b: $67
    and b                                         ; $6a4c: $a0
    ld h, c                                       ; $6a4d: $61
    ld e, b                                       ; $6a4e: $58
    db $f4                                        ; $6a4f: $f4
    sub b                                         ; $6a50: $90
    ld b, $50                                     ; $6a51: $06 $50
    ld l, e                                       ; $6a53: $6b
    dec hl                                        ; $6a54: $2b
    sub b                                         ; $6a55: $90
    ld l, b                                       ; $6a56: $68
    inc a                                         ; $6a57: $3c
    inc bc                                        ; $6a58: $03
    add h                                         ; $6a59: $84
    ld [hl], e                                    ; $6a5a: $73
    rst $28                                       ; $6a5b: $ef
    or h                                          ; $6a5c: $b4
    db $eb                                        ; $6a5d: $eb
    and e                                         ; $6a5e: $a3
    ld c, h                                       ; $6a5f: $4c
    or b                                          ; $6a60: $b0
    pop hl                                        ; $6a61: $e1
    ld a, [hl-]                                   ; $6a62: $3a

jr_029_6a63:
    rst $18                                       ; $6a63: $df
    rst $30                                       ; $6a64: $f7
    ld a, a                                       ; $6a65: $7f
    ld e, [hl]                                    ; $6a66: $5e
    push de                                       ; $6a67: $d5
    ld a, [hl]                                    ; $6a68: $7e
    db $dd                                        ; $6a69: $dd
    ld a, a                                       ; $6a6a: $7f
    ei                                            ; $6a6b: $fb
    ld l, $88                                     ; $6a6c: $2e $88
    inc bc                                        ; $6a6e: $03
    rst $38                                       ; $6a6f: $ff
    add hl, de                                    ; $6a70: $19
    rst $20                                       ; $6a71: $e7
    rla                                           ; $6a72: $17
    xor $3f                                       ; $6a73: $ee $3f
    ret z                                         ; $6a75: $c8

    cpl                                           ; $6a76: $2f
    ret c                                         ; $6a77: $d8

    rst $10                                       ; $6a78: $d7
    rra                                           ; $6a79: $1f
    ldh a, [$fd]                                  ; $6a7a: $f0 $fd
    ld [$da00], a                                 ; $6a7c: $ea $00 $da
    ld e, [hl]                                    ; $6a7f: $5e
    nop                                           ; $6a80: $00
    xor a                                         ; $6a81: $af
    cp $bf                                        ; $6a82: $fe $bf
    rst $18                                       ; $6a84: $df
    ld hl, sp+$6f                                 ; $6a85: $f8 $6f
    ld hl, sp-$21                                 ; $6a87: $f8 $df
    ldh a, [$03]                                  ; $6a89: $f0 $03
    ld h, b                                       ; $6a8b: $60
    inc a                                         ; $6a8c: $3c
    cp $66                                        ; $6a8d: $fe $66
    ld h, c                                       ; $6a8f: $61
    ccf                                           ; $6a90: $3f
    jp $c73e                                      ; $6a91: $c3 $3e $c7


    db $dd                                        ; $6a94: $dd
    cpl                                           ; $6a95: $2f
    jp c, Jump_000_2ffd                           ; $6a96: $da $fd $2f

jr_029_6a99:
    ldh a, [$e5]                                  ; $6a99: $f0 $e5
    dec a                                         ; $6a9b: $3d
    jp $c73c                                      ; $6a9c: $c3 $3c $c7


    ret nc                                        ; $6a9f: $d0

    cpl                                           ; $6aa0: $2f
    rst $38                                       ; $6aa1: $ff
    ret c                                         ; $6aa2: $d8

    cpl                                           ; $6aa3: $2f
    jr nc, jr_029_6a99                            ; $6aa4: $30 $f3

    ld d, h                                       ; $6aa6: $54
    pop bc                                        ; $6aa7: $c1
    xor d                                         ; $6aa8: $aa
    add b                                         ; $6aa9: $80
    ei                                            ; $6aaa: $fb
    sbc $80                                       ; $6aab: $de $80
    and d                                         ; $6aad: $a2
    ld b, c                                       ; $6aae: $41
    ld a, $81                                     ; $6aaf: $3e $81
    inc c                                         ; $6ab1: $0c
    jp $f2b5                                      ; $6ab2: $c3 $b5 $f2


    or h                                          ; $6ab5: $b4
    ld c, [hl]                                    ; $6ab6: $4e
    ld a, a                                       ; $6ab7: $7f
    db $fc                                        ; $6ab8: $fc
    db $e4                                        ; $6ab9: $e4
    or $e3                                        ; $6aba: $f6 $e3
    jr @-$17                                      ; $6abc: $18 $e7

    dec a                                         ; $6abe: $3d
    jp nz, Jump_000_39ff                          ; $6abf: $c2 $ff $39

    call nz, $e817                                ; $6ac2: $c4 $17 $e8
    daa                                           ; $6ac5: $27
    ret nc                                        ; $6ac6: $d0

    rrca                                          ; $6ac7: $0f
    ldh [$bf], a                                  ; $6ac8: $e0 $bf
    cp a                                          ; $6aca: $bf
    ld b, b                                       ; $6acb: $40
    ccf                                           ; $6acc: $3f
    add b                                         ; $6acd: $80
    cp $ff                                        ; $6ace: $fe $ff
    rst $20                                       ; $6ad0: $e7
    add b                                         ; $6ad1: $80
    cp $fe                                        ; $6ad2: $fe $fe

jr_029_6ad4:
    adc d                                         ; $6ad4: $8a
    jr nz, jr_029_6ad4                            ; $6ad5: $20 $fd

    ei                                            ; $6ad7: $fb
    ldh a, [$fd]                                  ; $6ad8: $f0 $fd
    cp $f9                                        ; $6ada: $fe $f9
    rst $38                                       ; $6adc: $ff
    db $ed                                        ; $6add: $ed
    ld a, a                                       ; $6ade: $7f
    cp $e0                                        ; $6adf: $fe $e0
    rst $38                                       ; $6ae1: $ff
    ld a, a                                       ; $6ae2: $7f
    or b                                          ; $6ae3: $b0
    ld bc, $ef1f                                  ; $6ae4: $01 $1f $ef
    ld a, a                                       ; $6ae7: $7f
    cp $90                                        ; $6ae8: $fe $90
    nop                                           ; $6aea: $00
    db $f4                                        ; $6aeb: $f4
    ei                                            ; $6aec: $fb
    jp hl                                         ; $6aed: $e9


    or $ef                                        ; $6aee: $f6 $ef
    ret nz                                        ; $6af0: $c0

    ld a, [c]                                     ; $6af1: $f2
    rst $38                                       ; $6af2: $ff
    ld sp, hl                                     ; $6af3: $f9
    db $e3                                        ; $6af4: $e3
    rst $38                                       ; $6af5: $ff
    ret nc                                        ; $6af6: $d0

    rst $28                                       ; $6af7: $ef
    add l                                         ; $6af8: $85
    jp c, $fbbb                                   ; $6af9: $da $bb $fb

    inc b                                         ; $6afc: $04
    xor a                                         ; $6afd: $af
    ld d, b                                       ; $6afe: $50
    nop                                           ; $6aff: $00
    add a                                         ; $6b00: $87
    ld a, e                                       ; $6b01: $7b
    rst $18                                       ; $6b02: $df
    cp a                                          ; $6b03: $bf
    rst $30                                       ; $6b04: $f7
    cp $c8                                        ; $6b05: $fe $c8
    and b                                         ; $6b07: $a0
    ld d, a                                       ; $6b08: $57
    db $fd                                        ; $6b09: $fd
    xor c                                         ; $6b0a: $a9
    ld a, [hl]                                    ; $6b0b: $7e
    call $f3e3                                    ; $6b0c: $cd $e3 $f3
    ei                                            ; $6b0f: $fb
    rst $30                                       ; $6b10: $f7
    or $a4                                        ; $6b11: $f6 $a4
    add b                                         ; $6b13: $80
    rst $38                                       ; $6b14: $ff
    cp $f5                                        ; $6b15: $fe $f5
    cp $bf                                        ; $6b17: $fe $bf
    rst $38                                       ; $6b19: $ff
    ld [$fff4], a                                 ; $6b1a: $ea $f4 $ff
    jp $efbf                                      ; $6b1d: $c3 $bf $ef


    rst $18                                       ; $6b20: $df
    rst $28                                       ; $6b21: $ef
    jp nz, $e2ba                                  ; $6b22: $c2 $ba $e2

    ld e, a                                       ; $6b25: $5f
    ld e, h                                       ; $6b26: $5c
    ret nz                                        ; $6b27: $c0

    ld [hl], b                                    ; $6b28: $70

jr_029_6b29:
    ld bc, $e0a1                                  ; $6b29: $01 $a1 $e0
    ld e, b                                       ; $6b2c: $58
    jr nz, jr_029_6b29                            ; $6b2d: $20 $fa

    db $fd                                        ; $6b2f: $fd
    sbc a                                         ; $6b30: $9f
    db $f4                                        ; $6b31: $f4
    ei                                            ; $6b32: $fb
    rst $38                                       ; $6b33: $ff
    cp $fb                                        ; $6b34: $fe $fb
    ld [hl], b                                    ; $6b36: $70
    ld [$0364], sp                                ; $6b37: $08 $64 $03
    di                                            ; $6b3a: $f3
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    ld [$d8f7], a                                 ; $6b3d: $ea $f7 $d8
    rst $20                                       ; $6b40: $e7
    db $fd                                        ; $6b41: $fd
    ei                                            ; $6b42: $fb
    rst $28                                       ; $6b43: $ef
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    set 7, a                                      ; $6b46: $cb $ff
    and d                                         ; $6b48: $a2
    rst $18                                       ; $6b49: $df
    ld l, b                                       ; $6b4a: $68
    sub a                                         ; $6b4b: $97
    rst $38                                       ; $6b4c: $ff
    db $e3                                        ; $6b4d: $e3
    rst $38                                       ; $6b4e: $ff
    rst $28                                       ; $6b4f: $ef
    ld h, $00                                     ; $6b50: $26 $00
    jr c, jr_029_6b55                             ; $6b52: $38 $01

    sbc [hl]                                      ; $6b54: $9e

jr_029_6b55:
    pop hl                                        ; $6b55: $e1
    ld l, c                                       ; $6b56: $69
    rst $38                                       ; $6b57: $ff
    db $d3                                        ; $6b58: $d3
    ld sp, hl                                     ; $6b59: $f9
    rst $28                                       ; $6b5a: $ef
    sub e                                         ; $6b5b: $93
    jr nz, @-$44                                  ; $6b5c: $20 $ba

    ld [c], a                                     ; $6b5e: $e2
    or $ff                                        ; $6b5f: $f6 $ff
    xor [hl]                                      ; $6b61: $ae
    ei                                            ; $6b62: $fb
    push af                                       ; $6b63: $f5
    inc h                                         ; $6b64: $24
    inc l                                         ; $6b65: $2c
    nop                                           ; $6b66: $00
    add [hl]                                      ; $6b67: $86
    dec h                                         ; $6b68: $25
    rst $18                                       ; $6b69: $df
    ld [bc], a                                    ; $6b6a: $02
    ld hl, $0a22                                  ; $6b6b: $21 $22 $0a
    ei                                            ; $6b6e: $fb
    inc sp                                        ; $6b6f: $33
    ldh [$ee], a                                  ; $6b70: $e0 $ee
    add sp, -$11                                  ; $6b72: $e8 $ef
    or a                                          ; $6b74: $b7
    ld [c], a                                     ; $6b75: $e2
    rra                                           ; $6b76: $1f
    add c                                         ; $6b77: $81
    inc sp                                        ; $6b78: $33
    ldh [$fe], a                                  ; $6b79: $e0 $fe
    rst $38                                       ; $6b7b: $ff
    rst $28                                       ; $6b7c: $ef
    sub e                                         ; $6b7d: $93
    ei                                            ; $6b7e: $fb
    ld d, b                                       ; $6b7f: $50
    ld [bc], a                                    ; $6b80: $02
    add b                                         ; $6b81: $80
    add h                                         ; $6b82: $84
    jp hl                                         ; $6b83: $e9


    ld d, a                                       ; $6b84: $57
    ld h, [hl]                                    ; $6b85: $66
    ld [c], a                                     ; $6b86: $e2
    db $fd                                        ; $6b87: $fd
    rst $28                                       ; $6b88: $ef
    db $eb                                        ; $6b89: $eb
    ld a, h                                       ; $6b8a: $7c
    adc a                                         ; $6b8b: $8f
    nop                                           ; $6b8c: $00
    or d                                          ; $6b8d: $b2
    and $f7                                       ; $6b8e: $e6 $f7
    cp l                                          ; $6b90: $bd
    ld h, d                                       ; $6b91: $62
    ld [$9e15], a                                 ; $6b92: $ea $15 $9e
    jp hl                                         ; $6b95: $e9


    sbc a                                         ; $6b96: $9f
    rst $18                                       ; $6b97: $df
    cp a                                          ; $6b98: $bf
    ld h, $dd                                     ; $6b99: $26 $dd
    rst $38                                       ; $6b9b: $ff
    ld h, b                                       ; $6b9c: $60
    nop                                           ; $6b9d: $00
    adc d                                         ; $6b9e: $8a
    jp hl                                         ; $6b9f: $e9


    ld a, a                                       ; $6ba0: $7f
    xor b                                         ; $6ba1: $a8
    xor d                                         ; $6ba2: $aa
    ld h, b                                       ; $6ba3: $60
    db $f4                                        ; $6ba4: $f4
    dec b                                         ; $6ba5: $05
    inc [hl]                                      ; $6ba6: $34
    ld bc, $6aea                                  ; $6ba7: $01 $ea $6a
    db $ec                                        ; $6baa: $ec
    adc d                                         ; $6bab: $8a
    xor h                                         ; $6bac: $ac
    add b                                         ; $6bad: $80
    xor a                                         ; $6bae: $af
    ld [c], a                                     ; $6baf: $e2
    ld e, c                                       ; $6bb0: $59
    add sp, -$51                                  ; $6bb1: $e8 $af
    and b                                         ; $6bb3: $a0
    pop bc                                        ; $6bb4: $c1
    ld c, b                                       ; $6bb5: $48
    db $ec                                        ; $6bb6: $ec
    call z, $fde9                                 ; $6bb7: $cc $e9 $fd
    cp $54                                        ; $6bba: $fe $54
    rst $08                                       ; $6bbc: $cf
    ei                                            ; $6bbd: $fb
    add c                                         ; $6bbe: $81
    rst $38                                       ; $6bbf: $ff
    ld d, h                                       ; $6bc0: $54
    adc h                                         ; $6bc1: $8c
    add b                                         ; $6bc2: $80
    adc h                                         ; $6bc3: $8c
    db $e3                                        ; $6bc4: $e3
    ld b, b                                       ; $6bc5: $40
    cp a                                          ; $6bc6: $bf

Jump_029_6bc7:
    push de                                       ; $6bc7: $d5
    ld [$6022], sp                                ; $6bc8: $08 $22 $60
    ld d, l                                       ; $6bcb: $55
    ld b, h                                       ; $6bcc: $44
    ld h, b                                       ; $6bcd: $60
    ld a, [hl]                                    ; $6bce: $7e
    ld a, e                                       ; $6bcf: $7b
    ld [c], a                                     ; $6bd0: $e2
    nop                                           ; $6bd1: $00
    rst $38                                       ; $6bd2: $ff
    dec e                                         ; $6bd3: $1d
    add h                                         ; $6bd4: $84
    ld a, d                                       ; $6bd5: $7a
    and b                                         ; $6bd6: $a0
    ld d, a                                       ; $6bd7: $57
    rst $38                                       ; $6bd8: $ff
    cp l                                          ; $6bd9: $bd
    ld a, [$7ec6]                                 ; $6bda: $fa $c6 $7e
    pop hl                                        ; $6bdd: $e1
    or h                                          ; $6bde: $b4
    jp Jump_000_2d4e                              ; $6bdf: $c3 $4e $2d


    db $ed                                        ; $6be2: $ed
    push af                                       ; $6be3: $f5
    rst $38                                       ; $6be4: $ff
    cp a                                          ; $6be5: $bf
    cp c                                          ; $6be6: $b9
    push hl                                       ; $6be7: $e5
    ccf                                           ; $6be8: $3f
    ldh [$aa], a                                  ; $6be9: $e0 $aa
    add hl, bc                                    ; $6beb: $09
    ldh [$7d], a                                  ; $6bec: $e0 $7d
    jp z, $ec09                                   ; $6bee: $ca $09 $ec

    xor a                                         ; $6bf1: $af
    rst $38                                       ; $6bf2: $ff
    ld d, d                                       ; $6bf3: $52
    db $fd                                        ; $6bf4: $fd
    xor d                                         ; $6bf5: $aa
    ret c                                         ; $6bf6: $d8

    ldh [$7c], a                                  ; $6bf7: $e0 $7c
    ei                                            ; $6bf9: $fb
    and c                                         ; $6bfa: $a1
    inc e                                         ; $6bfb: $1c
    db $e3                                        ; $6bfc: $e3
    dec hl                                        ; $6bfd: $2b
    push de                                       ; $6bfe: $d5
    dec b                                         ; $6bff: $05
    ld a, [$d454]                                 ; $6c00: $fa $54 $d4
    pop hl                                        ; $6c03: $e1
    ld e, h                                       ; $6c04: $5c
    ld [$5ae2], a                                 ; $6c05: $ea $e2 $5a
    pop bc                                        ; $6c08: $c1
    ld l, [hl]                                    ; $6c09: $6e
    cp e                                          ; $6c0a: $bb
    ld bc, $a016                                  ; $6c0b: $01 $16 $a0
    ld d, a                                       ; $6c0e: $57
    inc h                                         ; $6c0f: $24
    ld [c], a                                     ; $6c10: $e2
    ld b, d                                       ; $6c11: $42
    cp b                                          ; $6c12: $b8
    db $e3                                        ; $6c13: $e3
    dec d                                         ; $6c14: $15
    ld l, $e2                                     ; $6c15: $2e $e2
    ldh [$e3], a                                  ; $6c17: $e0 $e3
    ld d, [hl]                                    ; $6c19: $56
    and b                                         ; $6c1a: $a0
    ld l, $e2                                     ; $6c1b: $2e $e2
    rst $28                                       ; $6c1d: $ef
    adc d                                         ; $6c1e: $8a
    add sp, -$31                                  ; $6c1f: $e8 $cf
    xor c                                         ; $6c21: $a9
    cp $48                                        ; $6c22: $fe $48
    rst $30                                       ; $6c24: $f7
    xor d                                         ; $6c25: $aa
    db $e3                                        ; $6c26: $e3
    ld c, $e3                                     ; $6c27: $0e $e3
    ld d, l                                       ; $6c29: $55
    rst $38                                       ; $6c2a: $ff
    dec de                                        ; $6c2b: $1b
    ld [de], a                                    ; $6c2c: $12
    rst $28                                       ; $6c2d: $ef
    call z, $ffe3                                 ; $6c2e: $cc $e3 $ff
    rst $38                                       ; $6c31: $ff
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    rst $38                                       ; $6c35: $ff
    call nz, $46c5                                ; $6c36: $c4 $c5 $46
    add $c7                                       ; $6c39: $c6 $c7
    ret z                                         ; $6c3b: $c8

    ret                                           ; $6c3c: $c9


    jp z, $cbeb                                   ; $6c3d: $ca $eb $cb

    call z, $f6f6                                 ; $6c40: $cc $f6 $f6
    ld b, [hl]                                    ; $6c43: $46
    rst $38                                       ; $6c44: $ff
    ldh [$99], a                                  ; $6c45: $e0 $99
    ld [$ff94], sp                                ; $6c47: $08 $94 $ff
    sub e                                         ; $6c4a: $93
    sub d                                         ; $6c4b: $92
    sub c                                         ; $6c4c: $91
    sub c                                         ; $6c4d: $91
    sub d                                         ; $6c4e: $92
    sub d                                         ; $6c4f: $92
    sub e                                         ; $6c50: $93
    sub e                                         ; $6c51: $93
    rst $18                                       ; $6c52: $df
    sub h                                         ; $6c53: $94
    sub h                                         ; $6c54: $94
    sub e                                         ; $6c55: $93
    sub e                                         ; $6c56: $93
    sub d                                         ; $6c57: $92
    db $f4                                        ; $6c58: $f4
    and $cd                                       ; $6c59: $e6 $cd
    adc $ff                                       ; $6c5b: $ce $ff
    rst $08                                       ; $6c5d: $cf
    ld b, [hl]                                    ; $6c5e: $46
    ret nc                                        ; $6c5f: $d0

    pop de                                        ; $6c60: $d1
    jp nc, $d4d3                                  ; $6c61: $d2 $d3 $d4

    ld b, [hl]                                    ; $6c64: $46
    ld e, $f6                                     ; $6c65: $1e $f6
    push af                                       ; $6c67: $f5
    ld b, [hl]                                    ; $6c68: $46
    ld b, [hl]                                    ; $6c69: $46
    set 1, h                                      ; $6c6a: $cb $cc
    ret nz                                        ; $6c6c: $c0

    rst $30                                       ; $6c6d: $f7
    add l                                         ; $6c6e: $85
    ei                                            ; $6c6f: $fb
    ld h, a                                       ; $6c70: $67
    ld [c], a                                     ; $6c71: $e2
    cp b                                          ; $6c72: $b8
    add b                                         ; $6c73: $80
    ld a, [$fa85]                                 ; $6c74: $fa $85 $fa
    ld h, a                                       ; $6c77: $67
    db $e3                                        ; $6c78: $e3
    ld b, [hl]                                    ; $6c79: $46
    cp [hl]                                       ; $6c7a: $be
    cp a                                          ; $6c7b: $bf
    ld b, b                                       ; $6c7c: $40
    push af                                       ; $6c7d: $f5
    sub e                                         ; $6c7e: $93
    dec a                                         ; $6c7f: $3d
    sub h                                         ; $6c80: $94
    nop                                           ; $6c81: $00
    rst $38                                       ; $6c82: $ff
    rst $00                                       ; $6c83: $c7
    ld b, [hl]                                    ; $6c84: $46
    ret nz                                        ; $6c85: $c0

    pop bc                                        ; $6c86: $c1
    nop                                           ; $6c87: $00
    di                                            ; $6c88: $f3
    di                                            ; $6c89: $f3
    pop bc                                        ; $6c8a: $c1
    ld e, $00                                     ; $6c8b: $1e $00
    rst $38                                       ; $6c8d: $ff
    ld b, [hl]                                    ; $6c8e: $46
    ld b, [hl]                                    ; $6c8f: $46
    jp nz, $c0c3                                  ; $6c90: $c2 $c3 $c0

    pop de                                        ; $6c93: $d1
    ld a, a                                       ; $6c94: $7f
    db $e3                                        ; $6c95: $e3
    nop                                           ; $6c96: $00
    rst $38                                       ; $6c97: $ff
    ld b, $00                                     ; $6c98: $06 $00
    ldh [$dd], a                                  ; $6c9a: $e0 $dd
    sbc $80                                       ; $6c9c: $de $80
    adc $7f                                       ; $6c9e: $ce $7f
    push hl                                       ; $6ca0: $e5
    nop                                           ; $6ca1: $00
    rst $38                                       ; $6ca2: $ff
    add c                                         ; $6ca3: $81
    pop bc                                        ; $6ca4: $c1
    ld b, b                                       ; $6ca5: $40
    call Call_029_7f30                            ; $6ca6: $cd $30 $7f
    rst $20                                       ; $6ca9: $e7
    nop                                           ; $6caa: $00
    rst $38                                       ; $6cab: $ff
    nop                                           ; $6cac: $00
    rst $08                                       ; $6cad: $cf
    ld a, a                                       ; $6cae: $7f
    rst $20                                       ; $6caf: $e7
    sub e                                         ; $6cb0: $93
    sub e                                         ; $6cb1: $93
    nop                                           ; $6cb2: $00
    rst $38                                       ; $6cb3: $ff
    add b                                         ; $6cb4: $80
    call Call_029_7f08                            ; $6cb5: $cd $08 $7f
    rst $20                                       ; $6cb8: $e7
    or d                                          ; $6cb9: $b2
    and c                                         ; $6cba: $a1
    nop                                           ; $6cbb: $00
    rst $38                                       ; $6cbc: $ff
    call z, $ca80                                 ; $6cbd: $cc $80 $ca
    ld a, a                                       ; $6cc0: $7f
    rst $20                                       ; $6cc1: $e7
    ld [hl], d                                    ; $6cc2: $72
    and e                                         ; $6cc3: $a3
    nop                                           ; $6cc4: $00
    rst $38                                       ; $6cc5: $ff
    ldh a, [$80]                                  ; $6cc6: $f0 $80
    ret                                           ; $6cc8: $c9


    ld a, a                                       ; $6cc9: $7f
    rst $20                                       ; $6cca: $e7
    ld a, $a5                                     ; $6ccb: $3e $a5
    add l                                         ; $6ccd: $85
    cp [hl]                                       ; $6cce: $be
    add $c7                                       ; $6ccf: $c6 $c7
    db $dd                                        ; $6cd1: $dd
    sbc $07                                       ; $6cd2: $de $07
    ld b, [hl]                                    ; $6cd4: $46
    sbc d                                         ; $6cd5: $9a
    sub a                                         ; $6cd6: $97
    nop                                           ; $6cd7: $00
    and c                                         ; $6cd8: $a1
    ld a, a                                       ; $6cd9: $7f
    rst $20                                       ; $6cda: $e7
    cp $a7                                        ; $6cdb: $fe $a7
    nop                                           ; $6cdd: $00
    ld a, [$a087]                                 ; $6cde: $fa $87 $a0
    ld e, $ff                                     ; $6ce1: $1e $ff
    ld [c], a                                     ; $6ce3: $e2
    sbc d                                         ; $6ce4: $9a
    sub a                                         ; $6ce5: $97
    ld [bc], a                                    ; $6ce6: $02
    rrca                                          ; $6ce7: $0f
    jp z, $c081                                   ; $6ce8: $ca $81 $c0

    db $ec                                        ; $6ceb: $ec
    cp l                                          ; $6cec: $bd
    and c                                         ; $6ced: $a1
    db $fc                                        ; $6cee: $fc
    adc a                                         ; $6cef: $8f
    call nc, $e3c6                                ; $6cf0: $d4 $c6 $e3
    ret nz                                        ; $6cf3: $c0

    pop bc                                        ; $6cf4: $c1
    set 1, h                                      ; $6cf5: $cb $cc
    cp b                                          ; $6cf7: $b8
    cp c                                          ; $6cf8: $b9
    ld c, $82                                     ; $6cf9: $0e $82
    add b                                         ; $6cfb: $80
    ld [bc], a                                    ; $6cfc: $02
    rrca                                          ; $6cfd: $0f
    sub b                                         ; $6cfe: $90
    adc c                                         ; $6cff: $89
    add b                                         ; $6d00: $80
    cp a                                          ; $6d01: $bf
    ret                                           ; $6d02: $c9


    cp $a2                                        ; $6d03: $fe $a2
    ld [hl], b                                    ; $6d05: $70
    add b                                         ; $6d06: $80
    ld [hl], b                                    ; $6d07: $70
    adc a                                         ; $6d08: $8f
    sub h                                         ; $6d09: $94
    ld c, l                                       ; $6d0a: $4d
    and b                                         ; $6d0b: $a0
    ld c, c                                       ; $6d0c: $49
    ldh [$87], a                                  ; $6d0d: $e0 $87
    and b                                         ; $6d0f: $a0
    ld b, [hl]                                    ; $6d10: $46
    cp d                                          ; $6d11: $ba
    cp e                                          ; $6d12: $bb
    ld b, d                                       ; $6d13: $42
    add c                                         ; $6d14: $81
    rst $00                                       ; $6d15: $c7
    nop                                           ; $6d16: $00
    ld bc, $3f90                                  ; $6d17: $01 $90 $3f
    res 7, l                                      ; $6d1a: $cb $bd
    and l                                         ; $6d1c: $a5
    nop                                           ; $6d1d: $00
    rst $08                                       ; $6d1e: $cf
    ld b, [hl]                                    ; $6d1f: $46
    ld b, [hl]                                    ; $6d20: $46
    ld hl, sp-$73                                 ; $6d21: $f8 $8d
    ldh [$c6], a                                  ; $6d23: $e0 $c6
    pop hl                                        ; $6d25: $e1
    ld [$d581], sp                                ; $6d26: $08 $81 $d5
    sub $bc                                       ; $6d29: $d6 $bc
    cp l                                          ; $6d2b: $bd
    rst $10                                       ; $6d2c: $d7
    jp nz, $8002                                  ; $6d2d: $c2 $02 $80

    sub b                                         ; $6d30: $90
    add b                                         ; $6d31: $80
    db $eb                                        ; $6d32: $eb
    cp l                                          ; $6d33: $bd
    and a                                         ; $6d34: $a7
    nop                                           ; $6d35: $00
    pop de                                        ; $6d36: $d1
    adc l                                         ; $6d37: $8d
    pop hl                                        ; $6d38: $e1
    ld b, [hl]                                    ; $6d39: $46
    sbc d                                         ; $6d3a: $9a
    db $fd                                        ; $6d3b: $fd
    sbc b                                         ; $6d3c: $98
    rst $38                                       ; $6d3d: $ff
    ldh [$9a], a                                  ; $6d3e: $e0 $9a
    ret c                                         ; $6d40: $d8

    reti                                          ; $6d41: $d9


    jp c, $dcdb                                   ; $6d42: $da $db $dc

    ret nz                                        ; $6d45: $c0

    jp nz, $ca61                                  ; $6d46: $c2 $61 $ca

    ld h, d                                       ; $6d49: $62
    res 0, h                                      ; $6d4a: $cb $84
    cp l                                          ; $6d4c: $bd
    xor c                                         ; $6d4d: $a9
    inc d                                         ; $6d4e: $14
    adc a                                         ; $6d4f: $8f
    adc l                                         ; $6d50: $8d
    db $e3                                        ; $6d51: $e3
    sbc d                                         ; $6d52: $9a
    sub a                                         ; $6d53: $97
    ccf                                           ; $6d54: $3f
    xor b                                         ; $6d55: $a8
    xor b                                         ; $6d56: $a8
    ld b, [hl]                                    ; $6d57: $46
    ld b, [hl]                                    ; $6d58: $46
    sub a                                         ; $6d59: $97
    sbc d                                         ; $6d5a: $9a
    pop bc                                        ; $6d5b: $c1
    jp Jump_029_6082                              ; $6d5c: $c3 $82 $60


    call nz, $c7cd                                ; $6d5f: $c4 $cd $c7
    cp l                                          ; $6d62: $bd
    xor c                                         ; $6d63: $a9
    sub c                                         ; $6d64: $91
    adc a                                         ; $6d65: $8f
    rst $08                                       ; $6d66: $cf
    adc l                                         ; $6d67: $8d
    ld [c], a                                     ; $6d68: $e2
    pop bc                                        ; $6d69: $c1
    ldh [$a9], a                                  ; $6d6a: $e0 $a9
    xor c                                         ; $6d6c: $a9
    ld [bc], a                                    ; $6d6d: $02
    ld b, a                                       ; $6d6e: $47
    ld h, b                                       ; $6d6f: $60
    sub a                                         ; $6d70: $97
    ld a, d                                       ; $6d71: $7a
    pop hl                                        ; $6d72: $e1
    add d                                         ; $6d73: $82
    call nz, $818c                                ; $6d74: $c4 $8c $81
    cp l                                          ; $6d77: $bd
    xor e                                         ; $6d78: $ab
    ld l, $60                                     ; $6d79: $2e $60
    nop                                           ; $6d7b: $00
    xor d                                         ; $6d7c: $aa
    inc b                                         ; $6d7d: $04
    ld d, $81                                     ; $6d7e: $16 $81
    ld c, a                                       ; $6d80: $4f
    call nz, $c2a8                                ; $6d81: $c4 $a8 $c2
    pop hl                                        ; $6d84: $e1
    db $fd                                        ; $6d85: $fd
    db $e4                                        ; $6d86: $e4
    add d                                         ; $6d87: $82
    jp $818b                                      ; $6d88: $c3 $8b $81


    cp l                                          ; $6d8b: $bd
    xor d                                         ; $6d8c: $aa
    or b                                          ; $6d8d: $b0
    ld a, d                                       ; $6d8e: $7a
    add d                                         ; $6d8f: $82
    nop                                           ; $6d90: $00
    xor e                                         ; $6d91: $ab
    ld d, $80                                     ; $6d92: $16 $80
    ld [$97e2], sp                                ; $6d94: $08 $e2 $97
    ld b, [hl]                                    ; $6d97: $46
    pop bc                                        ; $6d98: $c1
    add sp, $46                                   ; $6d99: $e8 $46
    rlca                                          ; $6d9b: $07
    ld [$0001], sp                                ; $6d9c: $08 $01 $00
    cp a                                          ; $6d9f: $bf
    ld [c], a                                     ; $6da0: $e2
    ret z                                         ; $6da1: $c8

    ld l, c                                       ; $6da2: $69
    ld a, d                                       ; $6da3: $7a
    add l                                         ; $6da4: $85
    add l                                         ; $6da5: $85
    adc d                                         ; $6da6: $8a
    sub [hl]                                      ; $6da7: $96
    and d                                         ; $6da8: $a2
    jr jr_029_6db3                                ; $6da9: $18 $08

    pop hl                                        ; $6dab: $e1
    add h                                         ; $6dac: $84
    push hl                                       ; $6dad: $e5
    db $f4                                        ; $6dae: $f4
    db $e3                                        ; $6daf: $e3
    ld [$4190], sp                                ; $6db0: $08 $90 $41

jr_029_6db3:
    pop bc                                        ; $6db3: $c1
    cp l                                          ; $6db4: $bd
    push bc                                       ; $6db5: $c5
    ld a, h                                       ; $6db6: $7c
    ret z                                         ; $6db7: $c8

    ldh [$79], a                                  ; $6db8: $e0 $79
    ld b, b                                       ; $6dba: $40
    add l                                         ; $6dbb: $85
    ld c, h                                       ; $6dbc: $4c
    ld [$43e5], sp                                ; $6dbd: $08 $e5 $43
    db $e4                                        ; $6dc0: $e4
    db $f4                                        ; $6dc1: $f4
    db $e3                                        ; $6dc2: $e3
    ld [bc], a                                    ; $6dc3: $02
    rlca                                          ; $6dc4: $07
    rlca                                          ; $6dc5: $07
    add a                                         ; $6dc6: $87
    rlca                                          ; $6dc7: $07
    rrca                                          ; $6dc8: $0f
    sub h                                         ; $6dc9: $94
    dec a                                         ; $6dca: $3d
    jp $c87c                                      ; $6dcb: $c3 $7c $c8


    cp c                                          ; $6dce: $b9
    ld h, d                                       ; $6dcf: $62
    nop                                           ; $6dd0: $00
    adc h                                         ; $6dd1: $8c
    sbc c                                         ; $6dd2: $99
    add b                                         ; $6dd3: $80
    ld [$7ce3], sp                                ; $6dd4: $08 $e3 $7c
    jp hl                                         ; $6dd7: $e9


    db $fc                                        ; $6dd8: $fc
    push bc                                       ; $6dd9: $c5
    dec sp                                        ; $6dda: $3b
    pop hl                                        ; $6ddb: $e1
    ld a, h                                       ; $6ddc: $7c
    ret z                                         ; $6ddd: $c8

    cp c                                          ; $6dde: $b9
    ld h, h                                       ; $6ddf: $64
    inc d                                         ; $6de0: $14
    ld c, h                                       ; $6de1: $4c
    sbc c                                         ; $6de2: $99
    ld a, c                                       ; $6de3: $79
    xor c                                         ; $6de4: $a9
    ld b, d                                       ; $6de5: $42
    ld [c], a                                     ; $6de6: $e2
    add h                                         ; $6de7: $84
    pop bc                                        ; $6de8: $c1
    ld a, c                                       ; $6de9: $79
    ld a, d                                       ; $6dea: $7a
    ld a, h                                       ; $6deb: $7c
    ld a, l                                       ; $6dec: $7d
    ld [hl], $e8                                  ; $6ded: $36 $e8
    pop bc                                        ; $6def: $c1
    ld [bc], a                                    ; $6df0: $02
    ld a, l                                       ; $6df1: $7d
    ldh [$bc], a                                  ; $6df2: $e0 $bc
    add c                                         ; $6df4: $81
    ld b, $65                                     ; $6df5: $06 $65
    cp c                                          ; $6df7: $b9
    ld h, h                                       ; $6df8: $64
    add l                                         ; $6df9: $85
    xor h                                         ; $6dfa: $ac
    sbc d                                         ; $6dfb: $9a
    sub a                                         ; $6dfc: $97
    ld a, [hl]                                    ; $6dfd: $7e
    adc b                                         ; $6dfe: $88
    push bc                                       ; $6dff: $c5
    ld a, c                                       ; $6e00: $79
    ld a, [hl]                                    ; $6e01: $7e
    ld b, [hl]                                    ; $6e02: $46
    ld b, [hl]                                    ; $6e03: $46
    adc h                                         ; $6e04: $8c
    ld a, e                                       ; $6e05: $7b
    cp l                                          ; $6e06: $bd
    db $e3                                        ; $6e07: $e3
    ret nz                                        ; $6e08: $c0

    or $a0                                        ; $6e09: $f6 $a0
    xor b                                         ; $6e0b: $a8
    ldh [$bc], a                                  ; $6e0c: $e0 $bc
    add d                                         ; $6e0e: $82
    ld b, l                                       ; $6e0f: $45
    ld c, b                                       ; $6e10: $48
    ld a, b                                       ; $6e11: $78
    ld [hl+], a                                   ; $6e12: $22
    adc a                                         ; $6e13: $8f
    adc l                                         ; $6e14: $8d
    sbc d                                         ; $6e15: $9a
    sub a                                         ; $6e16: $97
    inc b                                         ; $6e17: $04
    pop bc                                        ; $6e18: $c1
    rst $20                                       ; $6e19: $e7
    ld b, a                                       ; $6e1a: $47
    ld hl, $7c7f                                  ; $6e1b: $21 $7f $7c
    ldh [$34], a                                  ; $6e1e: $e0 $34
    jp nz, $a0f2                                  ; $6e20: $c2 $f2 $a0

    ld a, d                                       ; $6e23: $7a
    xor e                                         ; $6e24: $ab
    jr c, jr_029_6e4a                             ; $6e25: $38 $23

    jr nz, jr_029_6e29                            ; $6e27: $20 $00

jr_029_6e29:
    adc $bf                                       ; $6e29: $ce $bf
    db $e3                                        ; $6e2b: $e3
    pop bc                                        ; $6e2c: $c1
    push hl                                       ; $6e2d: $e5

Jump_029_6e2e:
    cp a                                          ; $6e2e: $bf
    ld [c], a                                     ; $6e2f: $e2
    inc l                                         ; $6e30: $2c
    db $e3                                        ; $6e31: $e3
    xor b                                         ; $6e32: $a8
    ld a, b                                       ; $6e33: $78
    ret nz                                        ; $6e34: $c0

    ld a, d                                       ; $6e35: $7a
    add h                                         ; $6e36: $84
    ld hl, sp-$08                                 ; $6e37: $f8 $f8
    ld [$ce00], sp                                ; $6e39: $08 $00 $ce
    cp a                                          ; $6e3c: $bf
    db $e3                                        ; $6e3d: $e3
    add b                                         ; $6e3e: $80
    ld b, [hl]                                    ; $6e3f: $46
    ld b, [hl]                                    ; $6e40: $46
    add e                                         ; $6e41: $83
    add a                                         ; $6e42: $87
    ld c, a                                       ; $6e43: $4f
    add [hl]                                      ; $6e44: $86
    add [hl]                                      ; $6e45: $86
    add a                                         ; $6e46: $87
    add e                                         ; $6e47: $83
    cp a                                          ; $6e48: $bf
    db $e3                                        ; $6e49: $e3

jr_029_6e4a:
    ld [hl], h                                    ; $6e4a: $74
    jp nz, Jump_029_7a46                          ; $6e4b: $c2 $46 $7a

    add [hl]                                      ; $6e4e: $86
    add sp, -$48                                  ; $6e4f: $e8 $b8
    ld [$8c85], sp                                ; $6e51: $08 $85 $8c
    add h                                         ; $6e54: $84
    add c                                         ; $6e55: $81
    sbc c                                         ; $6e56: $99
    ret nz                                        ; $6e57: $c0

    db $e3                                        ; $6e58: $e3
    adc b                                         ; $6e59: $88
    add h                                         ; $6e5a: $84
    ld b, [hl]                                    ; $6e5b: $46
    ld a, a                                       ; $6e5c: $7f
    ld b, [hl]                                    ; $6e5d: $46
    add h                                         ; $6e5e: $84
    ld l, a                                       ; $6e5f: $6f
    add e                                         ; $6e60: $83
    ld b, [hl]                                    ; $6e61: $46
    add e                                         ; $6e62: $83
    ld l, l                                       ; $6e63: $6d
    db $f4                                        ; $6e64: $f4
    and h                                         ; $6e65: $a4
    ldh [$78], a                                  ; $6e66: $e0 $78
    and h                                         ; $6e68: $a4
    ld a, d                                       ; $6e69: $7a
    ld l, c                                       ; $6e6a: $69
    nop                                           ; $6e6b: $00
    ld l, [hl]                                    ; $6e6c: $6e
    ld de, $c081                                  ; $6e6d: $11 $81 $c0
    ldh [$79], a                                  ; $6e70: $e0 $79
    adc e                                         ; $6e72: $8b
    ld b, [hl]                                    ; $6e73: $46
    ld a, e                                       ; $6e74: $7b
    ld b, [hl]                                    ; $6e75: $46
    add c                                         ; $6e76: $81
    ld c, b                                       ; $6e77: $48
    ld bc, $8584                                  ; $6e78: $01 $84 $85
    add [hl]                                      ; $6e7b: $86
    add l                                         ; $6e7c: $85
    cp b                                          ; $6e7d: $b8
    ldh [$80], a                                  ; $6e7e: $e0 $80
    db $f4                                        ; $6e80: $f4
    and d                                         ; $6e81: $a2
    ccf                                           ; $6e82: $3f
    ldh [$7a], a                                  ; $6e83: $e0 $7a
    add [hl]                                      ; $6e85: $86
    ld a, c                                       ; $6e86: $79
    ld b, l                                       ; $6e87: $45
    nop                                           ; $6e88: $00
    ld c, e                                       ; $6e89: $4b
    ld de, $8083                                  ; $6e8a: $11 $83 $80
    ldh [$80], a                                  ; $6e8d: $e0 $80
    inc c                                         ; $6e8f: $0c
    add [hl]                                      ; $6e90: $86
    and b                                         ; $6e91: $a0
    ret nz                                        ; $6e92: $c0

    ld [c], a                                     ; $6e93: $e2
    ld b, [hl]                                    ; $6e94: $46
    ld b, l                                       ; $6e95: $45
    rst $38                                       ; $6e96: $ff
    ldh [$b3], a                                  ; $6e97: $e0 $b3
    and l                                         ; $6e99: $a5
    cp a                                          ; $6e9a: $bf
    ret nz                                        ; $6e9b: $c0

    ld b, l                                       ; $6e9c: $45
    add hl, bc                                    ; $6e9d: $09
    or b                                          ; $6e9e: $b0
    ld l, [hl]                                    ; $6e9f: $6e
    and d                                         ; $6ea0: $a2
    nop                                           ; $6ea1: $00
    ld c, e                                       ; $6ea2: $4b
    ld de, $c082                                  ; $6ea3: $11 $82 $c0
    ld [c], a                                     ; $6ea6: $e2
    xor c                                         ; $6ea7: $a9
    xor c                                         ; $6ea8: $a9
    add b                                         ; $6ea9: $80
    ldh [rLYC], a                                 ; $6eaa: $e0 $45
    ccf                                           ; $6eac: $3f
    dec hl                                        ; $6ead: $2b
    ld sp, $2a2c                                  ; $6eae: $31 $2c $2a
    ld c, d                                       ; $6eb1: $4a
    ld d, d                                       ; $6eb2: $52
    cp a                                          ; $6eb3: $bf
    push hl                                       ; $6eb4: $e5
    ei                                            ; $6eb5: $fb
    ld b, c                                       ; $6eb6: $41
    add b                                         ; $6eb7: $80
    nop                                           ; $6eb8: $00
    ret                                           ; $6eb9: $c9


    cp l                                          ; $6eba: $bd
    pop hl                                        ; $6ebb: $e1
    add l                                         ; $6ebc: $85
    ld l, e                                       ; $6ebd: $6b
    sub l                                         ; $6ebe: $95
    ld b, b                                       ; $6ebf: $40
    ld a, a                                       ; $6ec0: $7f
    jp nz, $c0c1                                  ; $6ec1: $c2 $c1 $c0

    ld b, b                                       ; $6ec4: $40
    pop hl                                        ; $6ec5: $e1
    ld b, l                                       ; $6ec6: $45
    ccf                                           ; $6ec7: $3f
    ld l, $20                                     ; $6ec8: $2e $20
    jr nz, jr_029_6ef3                            ; $6eca: $20 $27

    ld c, a                                       ; $6ecc: $4f
    ld d, [hl]                                    ; $6ecd: $56
    ld a, a                                       ; $6ece: $7f
    push hl                                       ; $6ecf: $e5
    ld b, c                                       ; $6ed0: $41
    pop hl                                        ; $6ed1: $e1
    call z, Call_029_67fc                         ; $6ed2: $cc $fc $67
    or b                                          ; $6ed5: $b0
    add c                                         ; $6ed6: $81
    sub h                                         ; $6ed7: $94
    sub h                                         ; $6ed8: $94
    nop                                           ; $6ed9: $00
    db $ed                                        ; $6eda: $ed
    rst $00                                       ; $6edb: $c7
    ld h, c                                       ; $6edc: $61
    ld b, [hl]                                    ; $6edd: $46
    ld b, [hl]                                    ; $6ede: $46
    push af                                       ; $6edf: $f5
    add d                                         ; $6ee0: $82
    adc b                                         ; $6ee1: $88
    ret nz                                        ; $6ee2: $c0

    adc d                                         ; $6ee3: $8a
    add d                                         ; $6ee4: $82
    and b                                         ; $6ee5: $a0
    or c                                          ; $6ee6: $b1
    inc hl                                        ; $6ee7: $23
    inc hl                                        ; $6ee8: $23
    dec hl                                        ; $6ee9: $2b
    pop bc                                        ; $6eea: $c1
    ld c, e                                       ; $6eeb: $4b
    ret nz                                        ; $6eec: $c0

    add sp, -$41                                  ; $6eed: $e8 $bf
    adc b                                         ; $6eef: $88
    cp a                                          ; $6ef0: $bf
    db $e4                                        ; $6ef1: $e4
    add l                                         ; $6ef2: $85

jr_029_6ef3:
    ld c, [hl]                                    ; $6ef3: $4e
    cp $82                                        ; $6ef4: $fe $82
    add h                                         ; $6ef6: $84
    adc c                                         ; $6ef7: $89
    ld a, $c5                                     ; $6ef8: $3e $c5
    and e                                         ; $6efa: $a3
    ld b, h                                       ; $6efb: $44
    inc a                                         ; $6efc: $3c
    dec [hl]                                      ; $6efd: $35
    ld [hl], $52                                  ; $6efe: $36 $52
    ret nz                                        ; $6f00: $c0

    db $eb                                        ; $6f01: $eb
    ld a, $83                                     ; $6f02: $3e $83
    jr @-$01                                      ; $6f04: $18 $fd

    db $e3                                        ; $6f06: $e3
    ld a, [hl]                                    ; $6f07: $7e
    ldh [rNR14], a                                ; $6f08: $e0 $14
    inc l                                         ; $6f0a: $2c
    cp [hl]                                       ; $6f0b: $be
    cp a                                          ; $6f0c: $bf
    cp $83                                        ; $6f0d: $fe $83
    ld a, a                                       ; $6f0f: $7f
    pop hl                                        ; $6f10: $e1
    ld a, [hl]                                    ; $6f11: $7e
    ret nz                                        ; $6f12: $c0

    ccf                                           ; $6f13: $3f
    ld b, l                                       ; $6f14: $45
    ld a, [hl-]                                   ; $6f15: $3a
    dec [hl]                                      ; $6f16: $35
    dec [hl]                                      ; $6f17: $35
    jr c, jr_029_6f5e                             ; $6f18: $38 $44

    ld hl, sp+$66                                 ; $6f1a: $f8 $66
    ei                                            ; $6f1c: $fb
    ld b, a                                       ; $6f1d: $47
    inc c                                         ; $6f1e: $0c
    cp a                                          ; $6f1f: $bf
    and $85                                       ; $6f20: $e6 $85
    inc c                                         ; $6f22: $0c
    ret nz                                        ; $6f23: $c0

    pop bc                                        ; $6f24: $c1
    cp $80                                        ; $6f25: $fe $80
    rlca                                          ; $6f27: $07
    ld h, b                                       ; $6f28: $60
    rlca                                          ; $6f29: $07
    pop bc                                        ; $6f2a: $c1
    ld a, $e1                                     ; $6f2b: $3e $e1
    rra                                           ; $6f2d: $1f
    add hl, sp                                    ; $6f2e: $39
    dec [hl]                                      ; $6f2f: $35
    dec [hl]                                      ; $6f30: $35
    dec [hl]                                      ; $6f31: $35
    ld [hl], $7f                                  ; $6f32: $36 $7f
    call nz, Call_000_26fb                        ; $6f34: $c4 $fb $26
    cp $e5                                        ; $6f37: $fe $e5
    and b                                         ; $6f39: $a0
    nop                                           ; $6f3a: $00
    jr nc, jr_029_6fbc                            ; $6f3b: $30 $7f

    ld h, c                                       ; $6f3d: $61
    cp a                                          ; $6f3e: $bf
    db $e3                                        ; $6f3f: $e3
    ld a, $e1                                     ; $6f40: $3e $e1
    ld a, a                                       ; $6f42: $7f
    ldh [$36], a                                  ; $6f43: $e0 $36
    cp a                                          ; $6f45: $bf
    ldh [rLCDC], a                                ; $6f46: $e0 $40
    inc b                                         ; $6f48: $04
    ld a, $8a                                     ; $6f49: $3e $8a
    ret nz                                        ; $6f4b: $c0

    jp hl                                         ; $6f4c: $e9


    sub d                                         ; $6f4d: $92
    nop                                           ; $6f4e: $00
    dec l                                         ; $6f4f: $2d
    ld d, d                                       ; $6f50: $52
    inc hl                                        ; $6f51: $23
    add $41                                       ; $6f52: $c6 $41
    cp l                                          ; $6f54: $bd
    ret nz                                        ; $6f55: $c0

    add [hl]                                      ; $6f56: $86
    and c                                         ; $6f57: $a1
    ld [bc], a                                    ; $6f58: $02
    ld a, $e1                                     ; $6f59: $3e $e1
    add hl, sp                                    ; $6f5b: $39
    ld a, a                                       ; $6f5c: $7f
    add c                                         ; $6f5d: $81

jr_029_6f5e:
    ld [bc], a                                    ; $6f5e: $02
    and c                                         ; $6f5f: $a1
    cp [hl]                                       ; $6f60: $be
    ld h, e                                       ; $6f61: $63
    ld bc, $40e4                                  ; $6f62: $01 $e4 $40
    inc hl                                        ; $6f65: $23
    add l                                         ; $6f66: $85
    dec l                                         ; $6f67: $2d
    jr nc, jr_029_6ef3                            ; $6f68: $30 $89

    ld hl, $827c                                  ; $6f6a: $21 $7c $82
    add [hl]                                      ; $6f6d: $86
    and l                                         ; $6f6e: $a5
    ld a, $e0                                     ; $6f6f: $3e $e0
    ld a, [hl-]                                   ; $6f71: $3a
    ld b, l                                       ; $6f72: $45
    ld [$bc61], a                                 ; $6f73: $ea $61 $bc
    inc hl                                        ; $6f76: $23
    sub b                                         ; $6f77: $90
    add [hl]                                      ; $6f78: $86
    add $f5                                       ; $6f79: $c6 $f5
    ld b, h                                       ; $6f7b: $44
    nop                                           ; $6f7c: $00
    ld c, a                                       ; $6f7d: $4f
    ld c, c                                       ; $6f7e: $49
    and b                                         ; $6f7f: $a0
    sbc c                                         ; $6f80: $99
    db $fd                                        ; $6f81: $fd
    ld c, b                                       ; $6f82: $48
    ld a, $e1                                     ; $6f83: $3e $e1
    ld b, d                                       ; $6f85: $42
    nop                                           ; $6f86: $00
    ld [hl], d                                    ; $6f87: $72
    ld b, c                                       ; $6f88: $41
    inc a                                         ; $6f89: $3c
    ld [hl+], a                                   ; $6f8a: $22
    rst $38                                       ; $6f8b: $ff
    and $f5                                       ; $6f8c: $e6 $f5
    ld b, e                                       ; $6f8e: $43
    nop                                           ; $6f8f: $00
    ld c, l                                       ; $6f90: $4d
    dec b                                         ; $6f91: $05
    ld hl, $e1c0                                  ; $6f92: $21 $c0 $e1
    ld a, d                                       ; $6f95: $7a
    ld h, e                                       ; $6f96: $63
    xor $bf                                       ; $6f97: $ee $bf
    db $e4                                        ; $6f99: $e4
    ld a, [hl-]                                   ; $6f9a: $3a
    dec [hl]                                      ; $6f9b: $35
    add hl, sp                                    ; $6f9c: $39
    push af                                       ; $6f9d: $f5
    ld hl, $9008                                  ; $6f9e: $21 $08 $90
    rrca                                          ; $6fa1: $0f
    add b                                         ; $6fa2: $80
    ld hl, sp+$40                                 ; $6fa3: $f8 $40
    push af                                       ; $6fa5: $f5
    ld c, b                                       ; $6fa6: $48
    pop af                                        ; $6fa7: $f1
    ld [hl+], a                                   ; $6fa8: $22
    nop                                           ; $6fa9: $00
    inc l                                         ; $6faa: $2c
    pop af                                        ; $6fab: $f1
    nop                                           ; $6fac: $00
    ld a, [hl]                                    ; $6fad: $7e
    add d                                         ; $6fae: $82
    ld b, c                                       ; $6faf: $41
    ld c, c                                       ; $6fb0: $49
    add hl, sp                                    ; $6fb1: $39
    inc c                                         ; $6fb2: $0c
    ccf                                           ; $6fb3: $3f
    ldh [$3a], a                                  ; $6fb4: $e0 $3a
    ld b, c                                       ; $6fb6: $41
    rrca                                          ; $6fb7: $0f
    ld [bc], a                                    ; $6fb8: $02
    or d                                          ; $6fb9: $b2
    dec h                                         ; $6fba: $25
    push af                                       ; $6fbb: $f5

jr_029_6fbc:
    ld b, h                                       ; $6fbc: $44
    rst $28                                       ; $6fbd: $ef
    ld hl, $0c85                                  ; $6fbe: $21 $85 $0c
    cp b                                          ; $6fc1: $b8
    pop af                                        ; $6fc2: $f1
    nop                                           ; $6fc3: $00
    ld a, [hl]                                    ; $6fc4: $7e
    add d                                         ; $6fc5: $82
    ret nz                                        ; $6fc6: $c0

    ld c, c                                       ; $6fc7: $49

Jump_029_6fc8:
    ld b, h                                       ; $6fc8: $44
    inc a                                         ; $6fc9: $3c
    inc a                                         ; $6fca: $3c
    db $fd                                        ; $6fcb: $fd
    and c                                         ; $6fcc: $a1
    ld [bc], a                                    ; $6fcd: $02

jr_029_6fce:
    dec e                                         ; $6fce: $1d
    ld [bc], a                                    ; $6fcf: $02
    ld [hl-], a                                   ; $6fd0: $32
    ld hl, $b9b8                                  ; $6fd1: $21 $b8 $b9
    sbc d                                         ; $6fd4: $9a
    ld [hl], c                                    ; $6fd5: $71
    jr nz, jr_029_6fce                            ; $6fd6: $20 $f6

    rst $00                                       ; $6fd8: $c7
    nop                                           ; $6fd9: $00
    dec l                                         ; $6fda: $2d
    jr z, @-$6f                                   ; $6fdb: $28 $8f

    ld [bc], a                                    ; $6fdd: $02
    db $fc                                        ; $6fde: $fc
    and e                                         ; $6fdf: $a3

Jump_029_6fe0:
    cp $24                                        ; $6fe0: $fe $24
    xor b                                         ; $6fe2: $a8
    inc a                                         ; $6fe3: $3c
    ret nz                                        ; $6fe4: $c0

    add hl, sp                                    ; $6fe5: $39
    jp hl                                         ; $6fe6: $e9


    jp $80e1                                      ; $6fe7: $c3 $e1 $80


    ret nz                                        ; $6fea: $c0

    ld sp, $bf00                                  ; $6feb: $31 $00 $bf
    pop hl                                        ; $6fee: $e1
    rst $30                                       ; $6fef: $f7
    add $00                                       ; $6ff0: $c6 $00
    adc l                                         ; $6ff2: $8d
    adc a                                         ; $6ff3: $8f
    inc bc                                        ; $6ff4: $03
    cp a                                          ; $6ff5: $bf
    rst $20                                       ; $6ff6: $e7
    xor c                                         ; $6ff7: $a9
    xor c                                         ; $6ff8: $a9
    ld bc, $bfa9                                  ; $6ff9: $01 $a9 $bf
    ldh [$c0], a                                  ; $6ffc: $e0 $c0
    db $e4                                        ; $6ffe: $e4
    and h                                         ; $6fff: $a4
    ld b, $ee                                     ; $7000: $06 $ee
    ld hl, $c3f3                                  ; $7002: $21 $f3 $c3
    nop                                           ; $7005: $00
    db $ec                                        ; $7006: $ec
    ld a, e                                       ; $7007: $7b
    ld b, d                                       ; $7008: $42
    ldh [$79], a                                  ; $7009: $e0 $79
    ld [hl+], a                                   ; $700b: $22
    nop                                           ; $700c: $00
    inc hl                                        ; $700d: $23
    ret nz                                        ; $700e: $c0

    nop                                           ; $700f: $00
    ld l, [hl]                                    ; $7010: $6e
    ld b, b                                       ; $7011: $40
    db $fd                                        ; $7012: $fd
    ld h, b                                       ; $7013: $60
    ld b, l                                       ; $7014: $45
    ld b, c                                       ; $7015: $41
    ld b, l                                       ; $7016: $45
    add b                                         ; $7017: $80
    ld [hl], d                                    ; $7018: $72
    nop                                           ; $7019: $00
    ld sp, $2403                                  ; $701a: $31 $03 $24
    inc bc                                        ; $701d: $03
    cp $e3                                        ; $701e: $fe $e3
    nop                                           ; $7020: $00
    dec hl                                        ; $7021: $2b
    ld a, e                                       ; $7022: $7b
    ld b, $b9                                     ; $7023: $06 $b9
    ld b, h                                       ; $7025: $44
    sub a                                         ; $7026: $97
    dec e                                         ; $7027: $1d
    sbc d                                         ; $7028: $9a
    ld l, [hl]                                    ; $7029: $6e
    ld b, h                                       ; $702a: $44
    ld b, l                                       ; $702b: $45
    ld [hl], $a0                                  ; $702c: $36 $a0
    add hl, sp                                    ; $702e: $39
    and b                                         ; $702f: $a0
    ld sp, $db03                                  ; $7030: $31 $03 $db
    add b                                         ; $7033: $80
    add b                                         ; $7034: $80
    and h                                         ; $7035: $a4
    rlca                                          ; $7036: $07
    nop                                           ; $7037: $00
    xor h                                         ; $7038: $ac
    ld a, e                                       ; $7039: $7b
    rlca                                          ; $703a: $07
    ld a, [$f541]                                 ; $703b: $fa $41 $f5
    ld b, b                                       ; $703e: $40
    ld l, [hl]                                    ; $703f: $6e
    nop                                           ; $7040: $00
    ldh a, [rLCDC]                                ; $7041: $f0 $40
    ld b, l                                       ; $7043: $45
    rrca                                          ; $7044: $0f
    ld [hl], $62                                  ; $7045: $36 $62
    and c                                         ; $7047: $a1
    ld h, [hl]                                    ; $7048: $66
    ld hl, sp-$80                                 ; $7049: $f8 $80
    db $eb                                        ; $704b: $eb
    ld [c], a                                     ; $704c: $e2
    ld e, d                                       ; $704d: $5a
    ld bc, $61d7                                  ; $704e: $01 $d7 $61
    ld b, b                                       ; $7051: $40
    call nc, Call_000_00a2                        ; $7052: $d4 $a2 $00
    xor h                                         ; $7055: $ac
    ld a, e                                       ; $7056: $7b
    inc bc                                        ; $7057: $03
    dec a                                         ; $7058: $3d
    ret nz                                        ; $7059: $c0

    ret nz                                        ; $705a: $c0

    push hl                                       ; $705b: $e5
    ld l, [hl]                                    ; $705c: $6e
    ld b, b                                       ; $705d: $40
    sbc c                                         ; $705e: $99
    pop bc                                        ; $705f: $c1
    pop hl                                        ; $7060: $e1
    rlca                                          ; $7061: $07
    ld h, a                                       ; $7062: $67
    sbc l                                         ; $7063: $9d
    ld l, b                                       ; $7064: $68
    cp a                                          ; $7065: $bf
    ldh [$a5], a                                  ; $7066: $e0 $a5
    ld b, b                                       ; $7068: $40
    rst $18                                       ; $7069: $df
    and b                                         ; $706a: $a0
    ld e, d                                       ; $706b: $5a
    ld b, c                                       ; $706c: $41
    ld [hl+], a                                   ; $706d: $22
    dec b                                         ; $706e: $05
    ldh [rP1], a                                  ; $706f: $e0 $00
    pop af                                        ; $7071: $f1
    cp e                                          ; $7072: $bb
    ld b, c                                       ; $7073: $41
    add b                                         ; $7074: $80
    db $e4                                        ; $7075: $e4
    ld l, [hl]                                    ; $7076: $6e
    ld [bc], a                                    ; $7077: $02
    pop bc                                        ; $7078: $c1
    pop hl                                        ; $7079: $e1
    dec [hl]                                      ; $707a: $35
    dec [hl]                                      ; $707b: $35
    ld l, h                                       ; $707c: $6c
    rlca                                          ; $707d: $07
    xor e                                         ; $707e: $ab
    xor h                                         ; $707f: $ac

Jump_029_7080:
    ld b, d                                       ; $7080: $42
    add b                                         ; $7081: $80
    db $e3                                        ; $7082: $e3
    ld c, a                                       ; $7083: $4f

jr_029_7084:
    adc c                                         ; $7084: $89
    nop                                           ; $7085: $00
    ldh a, [$9b]                                  ; $7086: $f0 $9b
    jp $e440                                      ; $7088: $c3 $40 $e4


    cp $2f                                        ; $708b: $fe $2f
    ld bc, $ad36                                  ; $708d: $01 $36 $ad
    xor [hl]                                      ; $7090: $ae
    sbc l                                         ; $7091: $9d
    dec [hl]                                      ; $7092: $35
    ld l, h                                       ; $7093: $6c
    ld l, a                                       ; $7094: $6f
    ld bc, $806e                                  ; $7095: $01 $6e $80
    ldh [rTIMA], a                                ; $7098: $e0 $05
    db $e4                                        ; $709a: $e4
    jp z, Jump_000_0027                           ; $709b: $ca $27 $00

    ldh a, [$9b]                                  ; $709e: $f0 $9b
    jp nz, Jump_000_2338                          ; $70a0: $c2 $38 $23

    push af                                       ; $70a3: $f5
    jr nz, jr_029_7084                            ; $70a4: $20 $de

    ld l, [hl]                                    ; $70a6: $6e
    nop                                           ; $70a7: $00
    ld [hl], $6e                                  ; $70a8: $36 $6e
    ld l, a                                       ; $70aa: $6f
    ld l, h                                       ; $70ab: $6c
    pop bc                                        ; $70ac: $c1
    ld [c], a                                     ; $70ad: $e2
    sub a                                         ; $70ae: $97
    sbc d                                         ; $70af: $9a
    add e                                         ; $70b0: $83
    ret nz                                        ; $70b1: $c0

    pop bc                                        ; $70b2: $c1
    ld c, a                                       ; $70b3: $4f
    xor h                                         ; $70b4: $ac
    nop                                           ; $70b5: $00
    ldh a, [$3c]                                  ; $70b6: $f0 $3c
    add e                                         ; $70b8: $83
    ld c, $c4                                     ; $70b9: $0e $c4
    ld l, [hl]                                    ; $70bb: $6e
    ld bc, $0045                                  ; $70bc: $01 $45 $00
    cp a                                          ; $70bf: $bf
    ldh [$c1], a                                  ; $70c0: $e0 $c1
    db $e3                                        ; $70c2: $e3
    ldh [$60], a                                  ; $70c3: $e0 $60
    ld c, a                                       ; $70c5: $4f
    call z, $cf00                                 ; $70c6: $cc $00 $cf
    cp [hl]                                       ; $70c9: $be
    add e                                         ; $70ca: $83
    ld [bc], a                                    ; $70cb: $02
    jp $c050                                      ; $70cc: $c3 $50 $c0


    nop                                           ; $70cf: $00
    ld l, [hl]                                    ; $70d0: $6e
    ld bc, $e0bf                                  ; $70d1: $01 $bf $e0
    pop bc                                        ; $70d4: $c1
    db $e3                                        ; $70d5: $e3
    ld h, b                                       ; $70d6: $60
    ld b, b                                       ; $70d7: $40
    ld c, a                                       ; $70d8: $4f
    ld l, h                                       ; $70d9: $6c
    nop                                           ; $70da: $00
    ret nc                                        ; $70db: $d0

    jr nz, @-$3d                                  ; $70dc: $20 $c1

    ld b, d                                       ; $70de: $42
    jp nz, Jump_000_110c                          ; $70df: $c2 $0c $11

    jp Jump_000_016e                              ; $70e2: $c3 $6e $01


    ld b, l                                       ; $70e5: $45
    ld [hl], $43                                  ; $70e6: $36 $43
    pop hl                                        ; $70e8: $e1
    rst $20                                       ; $70e9: $e7
    and d                                         ; $70ea: $a2
    ld c, a                                       ; $70eb: $4f
    ld l, h                                       ; $70ec: $6c
    nop                                           ; $70ed: $00
    rst $08                                       ; $70ee: $cf
    ld b, e                                       ; $70ef: $43
    add $c7                                       ; $70f0: $c6 $c7
    inc c                                         ; $70f2: $0c
    jp $a3fd                                      ; $70f3: $c3 $fd $a3


    ld [hl], d                                    ; $70f6: $72
    add b                                         ; $70f7: $80
    sub d                                         ; $70f8: $92
    and h                                         ; $70f9: $a4

Jump_029_70fa:
    sbc d                                         ; $70fa: $9a
    rst $20                                       ; $70fb: $e7
    and e                                         ; $70fc: $a3
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    rst $38                                       ; $70ff: $ff
    inc c                                         ; $7100: $0c
    jp $87d0                                      ; $7101: $c3 $d0 $87


    or $66                                        ; $7104: $f6 $66
    ld [$00c2], sp                                ; $7106: $08 $c2 $00
    cp $7b                                        ; $7109: $fe $7b
    ld [hl+], a                                   ; $710b: $22
    add d                                         ; $710c: $82
    and h                                         ; $710d: $a4
    ret nz                                        ; $710e: $c0

    ret nc                                        ; $710f: $d0

    add e                                         ; $7110: $83
    ld c, a                                       ; $7111: $4f
    and e                                         ; $7112: $a3
    ld e, c                                       ; $7113: $59
    xor $00                                       ; $7114: $ee $00
    or $42                                        ; $7116: $f6 $42
    and a                                         ; $7118: $a7
    ret nc                                        ; $7119: $d0

    add h                                         ; $711a: $84
    ret nz                                        ; $711b: $c0

    pop bc                                        ; $711c: $c1
    nop                                           ; $711d: $00
    ld l, c                                       ; $711e: $69
    ld h, d                                       ; $711f: $62
    call nc, Call_000_00d1                        ; $7120: $d4 $d1 $00
    pop af                                        ; $7123: $f1
    ld [bc], a                                    ; $7124: $02
    and a                                         ; $7125: $a7
    ld h, b                                       ; $7126: $60
    and d                                         ; $7127: $a2
    cpl                                           ; $7128: $2f
    pop hl                                        ; $7129: $e1
    ld e, c                                       ; $712a: $59
    pop de                                        ; $712b: $d1
    nop                                           ; $712c: $00
    reti                                          ; $712d: $d9


    nop                                           ; $712e: $00
    ret nz                                        ; $712f: $c0

    add $6a                                       ; $7130: $c6 $6a
    ld b, h                                       ; $7132: $44
    ld e, c                                       ; $7133: $59
    pop de                                        ; $7134: $d1
    nop                                           ; $7135: $00
    jp nz, $0000                                  ; $7136: $c2 $00 $00

    nop                                           ; $7139: $00
    ccf                                           ; $713a: $3f
    ld c, $0e                                     ; $713b: $0e $0e
    dec c                                         ; $713d: $0d
    dec c                                         ; $713e: $0d
    dec c                                         ; $713f: $0d
    ld c, $ff                                     ; $7140: $0e $ff
    db $e3                                        ; $7142: $e3
    or $f4                                        ; $7143: $f6 $f4
    ccf                                           ; $7145: $3f
    dec c                                         ; $7146: $0d
    ld c, l                                       ; $7147: $4d
    ld c, l                                       ; $7148: $4d
    ld c, l                                       ; $7149: $4d
    dec c                                         ; $714a: $0d
    inc c                                         ; $714b: $0c
    rst $38                                       ; $714c: $ff
    db $f4                                        ; $714d: $f4
    ret                                           ; $714e: $c9


    pop hl                                        ; $714f: $e1
    adc b                                         ; $7150: $88
    jp $f6e3                                      ; $7151: $c3 $e3 $f6


    push af                                       ; $7154: $f5
    and c                                         ; $7155: $a1
    pop hl                                        ; $7156: $e1
    dec c                                         ; $7157: $0d
    ret nz                                        ; $7158: $c0

    ld sp, hl                                     ; $7159: $f9
    add l                                         ; $715a: $85
    ld hl, sp+$67                                 ; $715b: $f8 $67
    ld [c], a                                     ; $715d: $e2
    ld c, l                                       ; $715e: $4d
    db $10                                        ; $715f: $10
    ld a, a                                       ; $7160: $7f
    ldh [$c0], a                                  ; $7161: $e0 $c0
    ld a, [$f685]                                 ; $7163: $fa $85 $f6
    ld a, [hl+]                                   ; $7166: $2a
    db $e3                                        ; $7167: $e3
    ld c, l                                       ; $7168: $4d
    cp l                                          ; $7169: $bd
    pop hl                                        ; $716a: $e1
    ld b, b                                       ; $716b: $40
    rst $30                                       ; $716c: $f7
    nop                                           ; $716d: $00
    cp $60                                        ; $716e: $fe $60
    ret nz                                        ; $7170: $c0

    ldh [rLCDC], a                                ; $7171: $e0 $40
    ld a, [$ff00]                                 ; $7173: $fa $00 $ff
    add b                                         ; $7176: $80
    ld a, [$fe00]                                 ; $7177: $fa $00 $fe
    dec c                                         ; $717a: $0d
    ld c, l                                       ; $717b: $4d

jr_029_717c:
    ld e, l                                       ; $717c: $5d
    ret nz                                        ; $717d: $c0

    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    rst $38                                       ; $7180: $ff
    ld a, e                                       ; $7181: $7b
    ret c                                         ; $7182: $d8

    cp a                                          ; $7183: $bf
    ldh [rP1], a                                  ; $7184: $e0 $00
    rst $38                                       ; $7186: $ff
    nop                                           ; $7187: $00
    ret c                                         ; $7188: $d8

    ld a, [hl]                                    ; $7189: $7e
    ldh [rP1], a                                  ; $718a: $e0 $00
    rst $38                                       ; $718c: $ff
    nop                                           ; $718d: $00
    rst $38                                       ; $718e: $ff
    add b                                         ; $718f: $80
    nop                                           ; $7190: $00
    rst $38                                       ; $7191: $ff
    nop                                           ; $7192: $00
    db $d3                                        ; $7193: $d3
    ret nz                                        ; $7194: $c0

    cp l                                          ; $7195: $bd
    nop                                           ; $7196: $00
    call c, $bc80                                 ; $7197: $dc $80 $bc
    add l                                         ; $719a: $85
    jp c, $e5ff                                   ; $719b: $da $ff $e5

    ld l, l                                       ; $719e: $6d
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    rst $38                                       ; $71a1: $ff
    or $d0                                        ; $71a2: $f6 $d0
    ld b, h                                       ; $71a4: $44
    and b                                         ; $71a5: $a0
    ld b, h                                       ; $71a6: $44
    ret nz                                        ; $71a7: $c0

    ld b, c                                       ; $71a8: $41
    ret nz                                        ; $71a9: $c0

    pop bc                                        ; $71aa: $c1
    or $00                                        ; $71ab: $f6 $00
    ld a, [c]                                     ; $71ad: $f2
    call $8084                                    ; $71ae: $cd $84 $80
    ld l, b                                       ; $71b1: $68
    push bc                                       ; $71b2: $c5
    ld [bc], a                                    ; $71b3: $02
    ret c                                         ; $71b4: $d8

    nop                                           ; $71b5: $00
    ld a, [c]                                     ; $71b6: $f2
    jr nc, jr_029_717c                            ; $71b7: $30 $c3

    cp d                                          ; $71b9: $ba
    push hl                                       ; $71ba: $e5
    ret nz                                        ; $71bb: $c0

    cp $00                                        ; $71bc: $fe $00
    call $084d                                    ; $71be: $cd $4d $08
    db $10                                        ; $71c1: $10
    and c                                         ; $71c2: $a1
    jp hl                                         ; $71c3: $e9


    and c                                         ; $71c4: $a1
    adc b                                         ; $71c5: $88
    add b                                         ; $71c6: $80
    dec l                                         ; $71c7: $2d
    ld b, e                                       ; $71c8: $43
    add d                                         ; $71c9: $82
    ld [bc], a                                    ; $71ca: $02
    rst $10                                       ; $71cb: $d7
    nop                                           ; $71cc: $00
    push de                                       ; $71cd: $d5
    call z, $80a2                                 ; $71ce: $cc $a2 $80
    ret                                           ; $71d1: $c9


    ld h, b                                       ; $71d2: $60
    ret nz                                        ; $71d3: $c0

    ldh [$c0], a                                  ; $71d4: $e0 $c0
    and d                                         ; $71d6: $a2
    ld b, b                                       ; $71d7: $40
    ei                                            ; $71d8: $fb
    inc d                                         ; $71d9: $14
    adc c                                         ; $71da: $89
    rst $08                                       ; $71db: $cf
    pop bc                                        ; $71dc: $c1
    ld l, h                                       ; $71dd: $6c
    and d                                         ; $71de: $a2
    ld l, l                                       ; $71df: $6d
    rrca                                          ; $71e0: $0f
    dec c                                         ; $71e1: $0d
    dec c                                         ; $71e2: $0d
    ld c, e                                       ; $71e3: $4b
    ld c, e                                       ; $71e4: $4b
    ld a, a                                       ; $71e5: $7f
    ldh [$83], a                                  ; $71e6: $e0 $83
    and c                                         ; $71e8: $a1
    pop bc                                        ; $71e9: $c1
    rst $10                                       ; $71ea: $d7
    nop                                           ; $71eb: $00
    call z, $8f08                                 ; $71ec: $cc $08 $8f
    jp $c24f                                      ; $71ef: $c3 $4f $c2


    add hl, hl                                    ; $71f2: $29
    and b                                         ; $71f3: $a0
    ld c, e                                       ; $71f4: $4b
    cp a                                          ; $71f5: $bf
    ldh [$7a], a                                  ; $71f6: $e0 $7a
    pop hl                                        ; $71f8: $e1
    pop bc                                        ; $71f9: $c1
    ld hl, sp+$00                                 ; $71fa: $f8 $00
    xor e                                         ; $71fc: $ab
    ld hl, sp-$2a                                 ; $71fd: $f8 $d6
    ld h, c                                       ; $71ff: $61
    inc de                                        ; $7200: $13
    ld h, c                                       ; $7201: $61
    adc [hl]                                      ; $7202: $8e
    ldh [$0d], a                                  ; $7203: $e0 $0d
    dec c                                         ; $7205: $0d
    dec bc                                        ; $7206: $0b
    dec bc                                        ; $7207: $0b
    dec bc                                        ; $7208: $0b
    ldh [$bf], a                                  ; $7209: $e0 $bf
    ldh [$fd], a                                  ; $720b: $e0 $fd
    pop hl                                        ; $720d: $e1
    pop bc                                        ; $720e: $c1
    ld hl, sp+$00                                 ; $720f: $f8 $00
    xor [hl]                                      ; $7211: $ae
    ld [$6de3], sp                                ; $7212: $08 $e3 $6d
    ld c, e                                       ; $7215: $4b
    dec c                                         ; $7216: $0d
    di                                            ; $7217: $f3
    ld c, e                                       ; $7218: $4b
    dec bc                                        ; $7219: $0b
    cp $e1                                        ; $721a: $fe $e1
    ei                                            ; $721c: $fb
    pop hl                                        ; $721d: $e1
    ld c, e                                       ; $721e: $4b
    inc c                                         ; $721f: $0c
    inc l                                         ; $7220: $2c
    inc l                                         ; $7221: $2c
    jr nz, jr_029_7224                            ; $7222: $20 $00

jr_029_7224:
    rst $38                                       ; $7224: $ff
    call nc, $8643                                ; $7225: $d4 $43 $86
    ld [c], a                                     ; $7228: $e2
    adc c                                         ; $7229: $89
    pop hl                                        ; $722a: $e1
    rst $00                                       ; $722b: $c7
    ld [c], a                                     ; $722c: $e2
    dec bc                                        ; $722d: $0b
    db $fc                                        ; $722e: $fc
    ret nz                                        ; $722f: $c0

    ret nz                                        ; $7230: $c0

    pop hl                                        ; $7231: $e1
    ld b, b                                       ; $7232: $40
    add b                                         ; $7233: $80
    ei                                            ; $7234: $fb
    inc d                                         ; $7235: $14
    xor d                                         ; $7236: $aa
    ld [$46e1], sp                                ; $7237: $08 $e1 $46
    ldh [$c3], a                                  ; $723a: $e0 $c3
    pop hl                                        ; $723c: $e1
    ret nz                                        ; $723d: $c0

    and $4c                                       ; $723e: $e6 $4c
    rst $38                                       ; $7240: $ff
    pop hl                                        ; $7241: $e1

jr_029_7242:
    ret nz                                        ; $7242: $c0

    nop                                           ; $7243: $00
    rst $38                                       ; $7244: $ff
    ld [de], a                                    ; $7245: $12
    and h                                         ; $7246: $a4
    jp nz, $02e1                                  ; $7247: $c2 $e1 $02

    ldh [$7c], a                                  ; $724a: $e0 $7c
    and $fb                                       ; $724c: $e6 $fb
    jp Jump_029_4c4c                              ; $724e: $c3 $4c $4c


    nop                                           ; $7251: $00
    dec sp                                        ; $7252: $3b
    di                                            ; $7253: $f3
    nop                                           ; $7254: $00
    adc e                                         ; $7255: $8b
    ld d, [hl]                                    ; $7256: $56
    ld h, c                                       ; $7257: $61
    ld b, h                                       ; $7258: $44
    pop hl                                        ; $7259: $e1
    ld c, b                                       ; $725a: $48
    pop hl                                        ; $725b: $e1
    or h                                          ; $725c: $b4

jr_029_725d:
    ld [c], a                                     ; $725d: $e2
    cp $c0                                        ; $725e: $fe $c0
    db $fc                                        ; $7260: $fc
    jp Jump_000_0d01                              ; $7261: $c3 $01 $0d


    ld a, l                                       ; $7264: $7d
    db $f4                                        ; $7265: $f4
    add l                                         ; $7266: $85
    xor h                                         ; $7267: $ac
    adc [hl]                                      ; $7268: $8e
    and b                                         ; $7269: $a0
    call $cfc2                                    ; $726a: $cd $c2 $cf
    ldh [$bd], a                                  ; $726d: $e0 $bd
    push hl                                       ; $726f: $e5
    ld [hl], c                                    ; $7270: $71
    pop hl                                        ; $7271: $e1
    jr c, @+$70                                   ; $7272: $38 $6e

    pop hl                                        ; $7274: $e1
    add hl, sp                                    ; $7275: $39
    ldh [rP1], a                                  ; $7276: $e0 $00
    rst $18                                       ; $7278: $df
    ld c, $4d                                     ; $7279: $0e $4d
    dec l                                         ; $727b: $2d
    rst $00                                       ; $727c: $c7
    jp nz, $e23e                                  ; $727d: $c2 $3e $e2

    nop                                           ; $7280: $00
    ld a, [hl]                                    ; $7281: $7e
    pop bc                                        ; $7282: $c1
    ld [hl], $e1                                  ; $7283: $36 $e1
    inc [hl]                                      ; $7285: $34
    pop bc                                        ; $7286: $c1
    ld l, a                                       ; $7287: $6f
    ret nz                                        ; $7288: $c0

    jr c, jr_029_725d                             ; $7289: $38 $d2

    nop                                           ; $728b: $00
    ld l, e                                       ; $728c: $6b
    jp nc, $bf21                                  ; $728d: $d2 $21 $bf

    pop hl                                        ; $7290: $e1
    nop                                           ; $7291: $00
    rst $38                                       ; $7292: $ff
    pop bc                                        ; $7293: $c1
    cp c                                          ; $7294: $b9
    ld [c], a                                     ; $7295: $e2
    ld a, l                                       ; $7296: $7d
    jp nz, $c4ec                                  ; $7297: $c2 $ec $c4

    ret nz                                        ; $729a: $c0

    db $f4                                        ; $729b: $f4
    nop                                           ; $729c: $00
    ld l, e                                       ; $729d: $6b
    jp nc, Jump_029_7e00                          ; $729e: $d2 $00 $7e

    pop hl                                        ; $72a1: $e1
    nop                                           ; $72a2: $00
    ld bc, $04c0                                  ; $72a3: $01 $c0 $04
    and c                                         ; $72a6: $a1
    ld [hl-], a                                   ; $72a7: $32
    ldh [$b4], a                                  ; $72a8: $e0 $b4
    pop bc                                        ; $72aa: $c1
    or h                                          ; $72ab: $b4
    and d                                         ; $72ac: $a2
    ret nz                                        ; $72ad: $c0

    or $00                                        ; $72ae: $f6 $00
    ld [$4170], a                                 ; $72b0: $ea $70 $41
    dec l                                         ; $72b3: $2d
    ld l, e                                       ; $72b4: $6b
    ret nz                                        ; $72b5: $c0

    ld [c], a                                     ; $72b6: $e2
    dec c                                         ; $72b7: $0d
    dec l                                         ; $72b8: $2d
    ei                                            ; $72b9: $fb
    pop bc                                        ; $72ba: $c1
    dec c                                         ; $72bb: $0d
    cp b                                          ; $72bc: $b8
    ldh [$30], a                                  ; $72bd: $e0 $30
    pop bc                                        ; $72bf: $c1
    jr z, jr_029_7242                             ; $72c0: $28 $80

    pop hl                                        ; $72c2: $e1
    dec sp                                        ; $72c3: $3b
    pop de                                        ; $72c4: $d1
    inc d                                         ; $72c5: $14
    ld [hl], c                                    ; $72c6: $71
    ld l, e                                       ; $72c7: $6b
    ret z                                         ; $72c8: $c8

    and c                                         ; $72c9: $a1
    ld c, e                                       ; $72ca: $4b
    dec a                                         ; $72cb: $3d
    pop bc                                        ; $72cc: $c1
    ld a, e                                       ; $72cd: $7b
    pop bc                                        ; $72ce: $c1
    inc bc                                        ; $72cf: $03
    dec l                                         ; $72d0: $2d
    dec l                                         ; $72d1: $2d
    ret nz                                        ; $72d2: $c0

    db $e4                                        ; $72d3: $e4
    ccf                                           ; $72d4: $3f
    ld a, [c]                                     ; $72d5: $f2
    nop                                           ; $72d6: $00
    xor e                                         ; $72d7: $ab
    ret nz                                        ; $72d8: $c0

    and $42                                       ; $72d9: $e6 $42
    pop bc                                        ; $72db: $c1
    ld a, d                                       ; $72dc: $7a
    and c                                         ; $72dd: $a1
    inc bc                                        ; $72de: $03
    dec bc                                        ; $72df: $0b
    dec hl                                        ; $72e0: $2b
    cp $e0                                        ; $72e1: $fe $e0
    add b                                         ; $72e3: $80
    ld [c], a                                     ; $72e4: $e2
    dec a                                         ; $72e5: $3d
    ret nz                                        ; $72e6: $c0

    ret nz                                        ; $72e7: $c0

    di                                            ; $72e8: $f3
    nop                                           ; $72e9: $00
    ld c, b                                       ; $72ea: $48
    add h                                         ; $72eb: $84
    add h                                         ; $72ec: $84
    jr c, jr_029_733e                             ; $72ed: $38 $4f

    pop bc                                        ; $72ef: $c1
    add c                                         ; $72f0: $81
    add c                                         ; $72f1: $81
    push bc                                       ; $72f2: $c5
    ld [c], a                                     ; $72f3: $e2
    dec hl                                        ; $72f4: $2b
    ld a, [bc]                                    ; $72f5: $0a
    ld l, d                                       ; $72f6: $6a
    cp a                                          ; $72f7: $bf
    push hl                                       ; $72f8: $e5
    nop                                           ; $72f9: $00
    cp a                                          ; $72fa: $bf
    ld a, [c]                                     ; $72fb: $f2
    sub e                                         ; $72fc: $93
    ld [hl+], a                                   ; $72fd: $22
    ld l, l                                       ; $72fe: $6d
    sub h                                         ; $72ff: $94
    pop bc                                        ; $7300: $c1
    inc b                                         ; $7301: $04
    and b                                         ; $7302: $a0
    ld c, e                                       ; $7303: $4b
    ld c, e                                       ; $7304: $4b
    ld l, e                                       ; $7305: $6b
    ld l, e                                       ; $7306: $6b
    ld [bc], a                                    ; $7307: $02
    ret nz                                        ; $7308: $c0

    pop hl                                        ; $7309: $e1
    ld a, [bc]                                    ; $730a: $0a
    cp e                                          ; $730b: $bb
    and d                                         ; $730c: $a2
    ret nz                                        ; $730d: $c0

    ld hl, sp+$0a                                 ; $730e: $f8 $0a
    ld c, b                                       ; $7310: $48
    sub h                                         ; $7311: $94
    ld b, c                                       ; $7312: $41
    ld c, $c4                                     ; $7313: $0e $c4
    cp b                                          ; $7315: $b8
    add e                                         ; $7316: $83
    rrca                                          ; $7317: $0f
    ld l, e                                       ; $7318: $6b
    ld l, e                                       ; $7319: $6b
    ld a, [bc]                                    ; $731a: $0a
    ld c, d                                       ; $731b: $4a
    add b                                         ; $731c: $80
    ei                                            ; $731d: $fb
    nop                                           ; $731e: $00
    ld a, [hl+]                                   ; $731f: $2a
    jp nz, $ca62                                  ; $7320: $c2 $62 $ca

    and e                                         ; $7323: $a3
    ld c, $c5                                     ; $7324: $0e $c5
    and c                                         ; $7326: $a1
    dec hl                                        ; $7327: $2b
    ld c, e                                       ; $7328: $4b
    ld c, e                                       ; $7329: $4b
    add b                                         ; $732a: $80
    db $e4                                        ; $732b: $e4
    ld hl, sp+$75                                 ; $732c: $f8 $75
    inc d                                         ; $732e: $14
    inc l                                         ; $732f: $2c
    or c                                          ; $7330: $b1
    ld [bc], a                                    ; $7331: $02
    inc c                                         ; $7332: $0c
    ld b, d                                       ; $7333: $42
    and e                                         ; $7334: $a3
    ld a, [hl]                                    ; $7335: $7e
    pop bc                                        ; $7336: $c1
    ld l, e                                       ; $7337: $6b
    ld l, e                                       ; $7338: $6b
    cp a                                          ; $7339: $bf
    ldh [$fc], a                                  ; $733a: $e0 $fc
    add e                                         ; $733c: $83
    ret nz                                        ; $733d: $c0

jr_029_733e:
    rst $30                                       ; $733e: $f7
    add l                                         ; $733f: $85
    dec bc                                        ; $7340: $0b
    db $10                                        ; $7341: $10
    adc h                                         ; $7342: $8c
    ld b, c                                       ; $7343: $41
    jp Jump_029_7f82                              ; $7344: $c3 $82 $7f


    ld [c], a                                     ; $7347: $e2
    ret nz                                        ; $7348: $c0

    ldh [rWX], a                                  ; $7349: $e0 $4b
    ld a, a                                       ; $734b: $7f
    ret nz                                        ; $734c: $c0

    ld a, d                                       ; $734d: $7a
    add d                                         ; $734e: $82
    nop                                           ; $734f: $00
    sbc a                                         ; $7350: $9f
    ld b, b                                       ; $7351: $40
    ld a, a                                       ; $7352: $7f
    and d                                         ; $7353: $a2
    ld c, e                                       ; $7354: $4b
    ld b, c                                       ; $7355: $41
    ld [$c8a3], sp                                ; $7356: $08 $a3 $c8
    add b                                         ; $7359: $80
    ret nz                                        ; $735a: $c0

    pop hl                                        ; $735b: $e1
    inc a                                         ; $735c: $3c
    add h                                         ; $735d: $84
    inc c                                         ; $735e: $0c
    ld a, c                                       ; $735f: $79
    ld [hl], d                                    ; $7360: $72
    ld [$2f85], sp                                ; $7361: $08 $85 $2f
    ld a, [bc]                                    ; $7364: $0a
    ld b, c                                       ; $7365: $41
    ld [bc], a                                    ; $7366: $02
    db $e3                                        ; $7367: $e3
    dec l                                         ; $7368: $2d
    ld a, l                                       ; $7369: $7d
    jp nz, $82b2                                  ; $736a: $c2 $b2 $82

    ld a, d                                       ; $736d: $7a
    halt                                          ; $736e: $76
    add l                                         ; $736f: $85
    dec l                                         ; $7370: $2d
    nop                                           ; $7371: $00
    add c                                         ; $7372: $81
    ld b, c                                       ; $7373: $41
    cp $83                                        ; $7374: $fe $83
    add [hl]                                      ; $7376: $86
    and c                                         ; $7377: $a1
    ld a, a                                       ; $7378: $7f
    pop bc                                        ; $7379: $c1
    ld [hl], d                                    ; $737a: $72
    add e                                         ; $737b: $83
    ret nz                                        ; $737c: $c0

    ld hl, sp-$71                                 ; $737d: $f8 $8f
    ld de, $4285                                  ; $737f: $11 $85 $42
    nop                                           ; $7382: $00
    ld a, a                                       ; $7383: $7f
    ld b, d                                       ; $7384: $42
    cp $c1                                        ; $7385: $fe $c1
    ret nz                                        ; $7387: $c0

    db $fc                                        ; $7388: $fc
    nop                                           ; $7389: $00
    xor e                                         ; $738a: $ab
    rst $38                                       ; $738b: $ff
    inc hl                                        ; $738c: $23
    ld b, e                                       ; $738d: $43
    add e                                         ; $738e: $83
    cp $a3                                        ; $738f: $fe $a3
    rst $30                                       ; $7391: $f7
    pop bc                                        ; $7392: $c1
    ld [bc], a                                    ; $7393: $02
    ld a, [hl-]                                   ; $7394: $3a
    ld b, c                                       ; $7395: $41
    ld l, h                                       ; $7396: $6c
    rst $30                                       ; $7397: $f7
    ld b, d                                       ; $7398: $42
    push af                                       ; $7399: $f5
    ld c, e                                       ; $739a: $4b
    nop                                           ; $739b: $00
    ld l, $be                                     ; $739c: $2e $be
    add e                                         ; $739e: $83
    ret nz                                        ; $739f: $c0

    add sp, $3e                                   ; $73a0: $e8 $3e
    ldh [rNR21], a                                ; $73a2: $e0 $16
    ld b, d                                       ; $73a4: $42
    and e                                         ; $73a5: $a3
    ld l, h                                       ; $73a6: $6c
    ld l, h                                       ; $73a7: $6c
    ld h, d                                       ; $73a8: $62
    ld [c], a                                     ; $73a9: $e2
    dec l                                         ; $73aa: $2d
    push af                                       ; $73ab: $f5
    ld c, d                                       ; $73ac: $4a
    nop                                           ; $73ad: $00
    adc $33                                       ; $73ae: $ce $33
    ld [bc], a                                    ; $73b0: $02
    ld [hl], b                                    ; $73b1: $70
    ret nz                                        ; $73b2: $c0

    add sp, -$43                                  ; $73b3: $e8 $bd
    add b                                         ; $73b5: $80
    cp [hl]                                       ; $73b6: $be
    pop hl                                        ; $73b7: $e1
    ld a, d                                       ; $73b8: $7a
    ld b, b                                       ; $73b9: $40
    ld l, h                                       ; $73ba: $6c
    dec c                                         ; $73bb: $0d
    ld l, l                                       ; $73bc: $6d
    and h                                         ; $73bd: $a4
    ld bc, $4d01                                  ; $73be: $01 $01 $4d
    cp a                                          ; $73c1: $bf
    ldh [rP1], a                                  ; $73c2: $e0 $00
    ld sp, hl                                     ; $73c4: $f9
    dec a                                         ; $73c5: $3d
    call nz, Call_029_4484                        ; $73c6: $c4 $84 $44
    ld h, d                                       ; $73c9: $62
    ret nz                                        ; $73ca: $c0

    ld a, [hl]                                    ; $73cb: $7e
    jp nz, $81f3                                  ; $73cc: $c2 $f3 $81

    nop                                           ; $73cf: $00
    or d                                          ; $73d0: $b2
    ld bc, $625e                                  ; $73d1: $01 $5e $62
    ld [hl-], a                                   ; $73d4: $32
    ld c, b                                       ; $73d5: $48
    nop                                           ; $73d6: $00
    ld c, l                                       ; $73d7: $4d
    ld a, $c3                                     ; $73d8: $3e $c3
    db $fc                                        ; $73da: $fc
    and d                                         ; $73db: $a2
    cp c                                          ; $73dc: $b9
    ld b, h                                       ; $73dd: $44
    cp a                                          ; $73de: $bf
    db $e4                                        ; $73df: $e4
    ld [bc], a                                    ; $73e0: $02
    ld [hl], h                                    ; $73e1: $74
    and b                                         ; $73e2: $a0
    dec l                                         ; $73e3: $2d
    ld sp, $bf03                                  ; $73e4: $31 $03 $bf
    ld [c], a                                     ; $73e7: $e2
    cp $e5                                        ; $73e8: $fe $e5
    nop                                           ; $73ea: $00
    xor $fa                                       ; $73eb: $ee $fa
    and e                                         ; $73ed: $a3
    db $fc                                        ; $73ee: $fc
    and e                                         ; $73ef: $a3
    inc a                                         ; $73f0: $3c
    ld a, a                                       ; $73f1: $7f
    ld h, d                                       ; $73f2: $62
    ld l, [hl]                                    ; $73f3: $6e
    ld b, b                                       ; $73f4: $40
    ld l, e                                       ; $73f5: $6b
    ld c, e                                       ; $73f6: $4b
    dec hl                                        ; $73f7: $2b
    dec hl                                        ; $73f8: $2b
    rst $30                                       ; $73f9: $f7
    ld h, b                                       ; $73fa: $60
    ld sp, $8004                                  ; $73fb: $31 $04 $80
    ld h, $00                                     ; $73fe: $26 $00
    ld e, c                                       ; $7400: $59
    push bc                                       ; $7401: $c5
    ld c, d                                       ; $7402: $4a
    inc hl                                        ; $7403: $23
    nop                                           ; $7404: $00
    ld l, c                                       ; $7405: $69
    or a                                          ; $7406: $b7
    ld h, h                                       ; $7407: $64
    ld a, [hl]                                    ; $7408: $7e
    ldh [$f8], a                                  ; $7409: $e0 $f8
    ld [hl+], a                                   ; $740b: $22
    ld l, l                                       ; $740c: $6d
    ld [$416e], sp                                ; $740d: $08 $6e $41
    ld a, [$b661]                                 ; $7410: $fa $61 $b6
    ld h, c                                       ; $7413: $61
    ld l, e                                       ; $7414: $6b
    cp a                                          ; $7415: $bf
    pop hl                                        ; $7416: $e1
    inc e                                         ; $7417: $1c
    ld h, d                                       ; $7418: $62
    jp c, $2601                                   ; $7419: $da $01 $26

    ld [bc], a                                    ; $741c: $02
    ld [hl], b                                    ; $741d: $70
    db $10                                        ; $741e: $10
    ld h, b                                       ; $741f: $60
    nop                                           ; $7420: $00
    xor h                                         ; $7421: $ac
    dec a                                         ; $7422: $3d
    add $04                                       ; $7423: $c6 $04
    add b                                         ; $7425: $80
    ld c, e                                       ; $7426: $4b
    dec l                                         ; $7427: $2d
    dec l                                         ; $7428: $2d
    ldh a, [rSCX]                                 ; $7429: $f0 $43
    nop                                           ; $742b: $00
    ld a, h                                       ; $742c: $7c
    ld h, d                                       ; $742d: $62
    ld [hl], l                                    ; $742e: $75
    ld h, b                                       ; $742f: $60
    ld a, $e0                                     ; $7430: $3e $e0
    ret nz                                        ; $7432: $c0

    db $e4                                        ; $7433: $e4
    ld a, d                                       ; $7434: $7a
    ld [c], a                                     ; $7435: $e2
    ld d, b                                       ; $7436: $50
    ld h, d                                       ; $7437: $62
    nop                                           ; $7438: $00
    xor h                                         ; $7439: $ac
    ld [hl], c                                    ; $743a: $71
    ld b, e                                       ; $743b: $43
    ld h, h                                       ; $743c: $64
    ret                                           ; $743d: $c9


    pop bc                                        ; $743e: $c1
    add h                                         ; $743f: $84
    add b                                         ; $7440: $80
    dec l                                         ; $7441: $2d
    or b                                          ; $7442: $b0
    ld b, d                                       ; $7443: $42
    ld b, h                                       ; $7444: $44
    ldh [$0b], a                                  ; $7445: $e0 $0b
    dec bc                                        ; $7447: $0b
    ld a, [$8740]                                 ; $7448: $fa $40 $87
    dec hl                                        ; $744b: $2b
    dec bc                                        ; $744c: $0b
    dec l                                         ; $744d: $2d
    rst $28                                       ; $744e: $ef
    pop hl                                        ; $744f: $e1
    ld a, h                                       ; $7450: $7c
    pop bc                                        ; $7451: $c1
    add c                                         ; $7452: $81
    pop hl                                        ; $7453: $e1
    call nc, $4d60                                ; $7454: $d4 $60 $4d
    ld [$834f], sp                                ; $7457: $08 $4f $83
    ld a, e                                       ; $745a: $7b
    ld l, l                                       ; $745b: $6d
    ret nz                                        ; $745c: $c0

    db $e4                                        ; $745d: $e4
    ld l, e                                       ; $745e: $6b
    ret nz                                        ; $745f: $c0

Call_029_7460:
    ldh [$af], a                                  ; $7460: $e0 $af
    ld h, c                                       ; $7462: $61
    add hl, sp                                    ; $7463: $39
    ld h, d                                       ; $7464: $62
    cp e                                          ; $7465: $bb
    db $e3                                        ; $7466: $e3
    ld bc, $052d                                  ; $7467: $01 $2d $05
    pop hl                                        ; $746a: $e1
    ld c, a                                       ; $746b: $4f
    adc e                                         ; $746c: $8b
    nop                                           ; $746d: $00
    xor $fa                                       ; $746e: $ee $fa
    ld h, l                                       ; $7470: $65
    add b                                         ; $7471: $80
    ld [c], a                                     ; $7472: $e2
    ld [hl], b                                    ; $7473: $70
    ld h, d                                       ; $7474: $62
    add d                                         ; $7475: $82
    ldh [$82], a                                  ; $7476: $e0 $82
    cp a                                          ; $7478: $bf
    ret nz                                        ; $7479: $c0

    dec hl                                        ; $747a: $2b
    or b                                          ; $747b: $b0
    ldh [$9b], a                                  ; $747c: $e0 $9b
    add h                                         ; $747e: $84
    jp z, $002a                                   ; $747f: $ca $2a $00

    db $ed                                        ; $7482: $ed
    db $fc                                        ; $7483: $fc
    add e                                         ; $7484: $83
    ld l, l                                       ; $7485: $6d
    ld [$e280], sp                                ; $7486: $08 $80 $e2
    xor [hl]                                      ; $7489: $ae
    inc bc                                        ; $748a: $03
    add b                                         ; $748b: $80
    db $e3                                        ; $748c: $e3
    ld l, e                                       ; $748d: $6b
    or c                                          ; $748e: $b1
    jp nz, $cf4f                                  ; $748f: $c2 $4f $cf

    nop                                           ; $7492: $00
    db $ed                                        ; $7493: $ed
    ld a, d                                       ; $7494: $7a
    ld [bc], a                                    ; $7495: $02
    ld bc, $866d                                  ; $7496: $01 $6d $86
    add d                                         ; $7499: $82
    ld c, $c1                                     ; $749a: $0e $c1
    cp a                                          ; $749c: $bf
    and c                                         ; $749d: $a1
    ld b, b                                       ; $749e: $40
    pop hl                                        ; $749f: $e1
    pop bc                                        ; $74a0: $c1
    pop hl                                        ; $74a1: $e1
    sub c                                         ; $74a2: $91
    jp $cb4f                                      ; $74a3: $c3 $4f $cb


    ld b, b                                       ; $74a6: $40
    or c                                          ; $74a7: $b1
    xor $be                                       ; $74a8: $ee $be
    ld [c], a                                     ; $74aa: $e2
    ld [bc], a                                    ; $74ab: $02
    pop hl                                        ; $74ac: $e1
    rst $08                                       ; $74ad: $cf
    pop hl                                        ; $74ae: $e1
    or c                                          ; $74af: $b1
    ld h, c                                       ; $74b0: $61
    ld b, a                                       ; $74b1: $47
    ldh [$0b], a                                  ; $74b2: $e0 $0b
    add d                                         ; $74b4: $82
    ld [c], a                                     ; $74b5: $e2
    add b                                         ; $74b6: $80
    pop af                                        ; $74b7: $f1
    ret nz                                        ; $74b8: $c0

    ld c, a                                       ; $74b9: $4f
    rst $08                                       ; $74ba: $cf
    nop                                           ; $74bb: $00
    rst $28                                       ; $74bc: $ef
    inc a                                         ; $74bd: $3c
    ld [hl+], a                                   ; $74be: $22
    pop bc                                        ; $74bf: $c1
    ret nz                                        ; $74c0: $c0

    db $10                                        ; $74c1: $10
    and b                                         ; $74c2: $a0
    ld c, a                                       ; $74c3: $4f
    pop bc                                        ; $74c4: $c1
    dec l                                         ; $74c5: $2d
    ld b, b                                       ; $74c6: $40
    or [hl]                                       ; $74c7: $b6
    pop bc                                        ; $74c8: $c1
    ld b, e                                       ; $74c9: $43
    db $e3                                        ; $74ca: $e3
    adc a                                         ; $74cb: $8f
    jp nz, $cd4f                                  ; $74cc: $c2 $4f $cd

    inc l                                         ; $74cf: $2c
    ldh a, [rSCY]                                 ; $74d0: $f0 $42
    call nz, $400d                                ; $74d2: $c4 $0d $40
    jp nz, $9202                                  ; $74d5: $c2 $02 $92

    and h                                         ; $74d8: $a4
    ld l, l                                       ; $74d9: $6d
    db $f4                                        ; $74da: $f4
    and b                                         ; $74db: $a0
    rst $08                                       ; $74dc: $cf
    and d                                         ; $74dd: $a2
    nop                                           ; $74de: $00
    cp $bc                                        ; $74df: $fe $bc
    ld [bc], a                                    ; $74e1: $02
    dec b                                         ; $74e2: $05
    add b                                         ; $74e3: $80
    ld b, d                                       ; $74e4: $42
    pop bc                                        ; $74e5: $c1
    nop                                           ; $74e6: $00
    xor l                                         ; $74e7: $ad
    ld h, a                                       ; $74e8: $67
    db $f4                                        ; $74e9: $f4
    and e                                         ; $74ea: $a3
    adc a                                         ; $74eb: $8f
    and c                                         ; $74ec: $a1
    nop                                           ; $74ed: $00
    ei                                            ; $74ee: $fb
    ld hl, $02a3                                  ; $74ef: $21 $a3 $02
    jp nz, $84d0                                  ; $74f2: $c2 $d0 $84

    db $db                                        ; $74f5: $db
    and a                                         ; $74f6: $a7
    nop                                           ; $74f7: $00
    call nc, Call_000_00cf                        ; $74f8: $d4 $cf $00
    pop de                                        ; $74fb: $d1
    ldh [$81], a                                  ; $74fc: $e0 $81
    add b                                         ; $74fe: $80
    ld [c], a                                     ; $74ff: $e2
    ret nc                                        ; $7500: $d0

    add h                                         ; $7501: $84
    rst $08                                       ; $7502: $cf
    xor b                                         ; $7503: $a8
    call nc, Call_000_00d0                        ; $7504: $d4 $d0 $00
    rst $08                                       ; $7507: $cf
    nop                                           ; $7508: $00
    add b                                         ; $7509: $80
    ld [c], a                                     ; $750a: $e2
    ret nz                                        ; $750b: $c0

    db $e3                                        ; $750c: $e3
    ld de, $85e7                                  ; $750d: $11 $e7 $85
    pop af                                        ; $7510: $f1
    nop                                           ; $7511: $00
    push de                                       ; $7512: $d5
    add b                                         ; $7513: $80
    rst $20                                       ; $7514: $e7
    ld de, $85e2                                  ; $7515: $11 $e2 $85
    rst $30                                       ; $7518: $f7
    inc bc                                        ; $7519: $03
    dec c                                         ; $751a: $0d
    ld c, $00                                     ; $751b: $0e $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    ld bc, $ff00                                  ; $751f: $01 $00 $ff
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
    cp $fd                                        ; $752d: $fe $fd
    rlca                                          ; $752f: $07
    rrca                                          ; $7530: $0f
    rrca                                          ; $7531: $0f
    rrca                                          ; $7532: $0f
    pop hl                                        ; $7533: $e1
    db $fc                                        ; $7534: $fc
    db $fd                                        ; $7535: $fd
    pop hl                                        ; $7536: $e1
    db $e3                                        ; $7537: $e3
    ld hl, sp-$06                                 ; $7538: $f8 $fa
    db $e4                                        ; $753a: $e4
    pop hl                                        ; $753b: $e1
    or $00                                        ; $753c: $f6 $00
    sbc e                                         ; $753e: $9b
    or $e3                                        ; $753f: $f6 $e3
    and $9a                                       ; $7541: $e6 $9a
    db $e3                                        ; $7543: $e3
    ld h, [hl]                                    ; $7544: $66
    ldh a, [$e4]                                  ; $7545: $f0 $e4
    ld [c], a                                     ; $7547: $e2
    di                                            ; $7548: $f3
    rst $20                                       ; $7549: $e7
    ldh [$f0], a                                  ; $754a: $e0 $f0
    dec sp                                        ; $754c: $3b
    push hl                                       ; $754d: $e5
    nop                                           ; $754e: $00
    add hl, sp                                    ; $754f: $39
    pop af                                        ; $7550: $f1
    ld h, $e8                                     ; $7551: $26 $e8
    sbc l                                         ; $7553: $9d
    ld [c], a                                     ; $7554: $e2
    cp a                                          ; $7555: $bf
    ld sp, hl                                     ; $7556: $f9
    sbc a                                         ; $7557: $9f
    or $7f                                        ; $7558: $f6 $7f
    add sp, -$61                                  ; $755a: $e8 $9f
    ldh a, [$f2]                                  ; $755c: $f0 $f2
    rst $30                                       ; $755e: $f7
    nop                                           ; $755f: $00
    ldh [rIE], a                                  ; $7560: $e0 $ff
    add l                                         ; $7562: $85
    call z, $d5fe                                 ; $7563: $cc $fe $d5
    rra                                           ; $7566: $1f
    rst $20                                       ; $7567: $e7
    ld b, h                                       ; $7568: $44
    reti                                          ; $7569: $d9


    ldh [$f3], a                                  ; $756a: $e0 $f3
    db $dd                                        ; $756c: $dd
    jp z, $d77d                                   ; $756d: $ca $7d $d7

    nop                                           ; $7570: $00
    cp $a3                                        ; $7571: $fe $a3
    cp a                                          ; $7573: $bf
    or $de                                        ; $7574: $f6 $de
    and h                                         ; $7576: $a4
    inc a                                         ; $7577: $3c
    call nc, $c838                                ; $7578: $d4 $38 $c8
    ldh [rIE], a                                  ; $757b: $e0 $ff
    add e                                         ; $757d: $83
    or d                                          ; $757e: $b2
    and b                                         ; $757f: $a0
    ld hl, sp+$00                                 ; $7580: $f8 $00
    add c                                         ; $7582: $81
    db $e4                                        ; $7583: $e4
    ld e, e                                       ; $7584: $5b
    db $e3                                        ; $7585: $e3
    and c                                         ; $7586: $a1
    or $5b                                        ; $7587: $f6 $5b
    and h                                         ; $7589: $a4
    ld b, c                                       ; $758a: $41
    or $5e                                        ; $758b: $f6 $5e
    cp c                                          ; $758d: $b9
    ld [$00f1], sp                                ; $758e: $08 $f1 $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    ld bc, $ff00                                  ; $7593: $01 $00 $ff
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
    inc c                                         ; $75a3: $0c
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff

jr_029_75a6:
    ld a, [$f1f9]                                 ; $75a6: $fa $f9 $f1
    pop af                                        ; $75a9: $f1
    pop hl                                        ; $75aa: $e1
    db $fc                                        ; $75ab: $fc
    cp $e1                                        ; $75ac: $fe $e1
    db $e3                                        ; $75ae: $e3
    ld a, [$f6e0]                                 ; $75af: $fa $e0 $f6
    nop                                           ; $75b2: $00
    pop hl                                        ; $75b3: $e1
    and $be                                       ; $75b4: $e6 $be
    push af                                       ; $75b6: $f5
    rst $18                                       ; $75b7: $df
    jp hl                                         ; $75b8: $e9


    ld a, c                                       ; $75b9: $79
    ld a, [c]                                     ; $75ba: $f2
    ldh [rIE], a                                  ; $75bb: $e0 $ff
    ldh [rIE], a                                  ; $75bd: $e0 $ff
    ldh [rIE], a                                  ; $75bf: $e0 $ff
    inc e                                         ; $75c1: $1c
    or $00                                        ; $75c2: $f6 $00
    ld h, b                                       ; $75c4: $60
    rst $38                                       ; $75c5: $ff
    rra                                           ; $75c6: $1f
    db $fc                                        ; $75c7: $fc
    db $fd                                        ; $75c8: $fd
    ret z                                         ; $75c9: $c8

    ldh [rIE], a                                  ; $75ca: $e0 $ff
    ldh [rIE], a                                  ; $75cc: $e0 $ff
    rst $18                                       ; $75ce: $df
    rst $38                                       ; $75cf: $ff
    jr nz, jr_029_75a6                            ; $75d0: $20 $d4

    ldh [rIE], a                                  ; $75d2: $e0 $ff
    add b                                         ; $75d4: $80
    ld a, [hl]                                    ; $75d5: $7e
    ld hl, sp-$20                                 ; $75d6: $f8 $e0
    rst $38                                       ; $75d8: $ff
    pop bc                                        ; $75d9: $c1
    db $fd                                        ; $75da: $fd
    cp d                                          ; $75db: $ba
    and c                                         ; $75dc: $a1
    add c                                         ; $75dd: $81
    cp a                                          ; $75de: $bf
    ldh [rIE], a                                  ; $75df: $e0 $ff
    ld [hl-], a                                   ; $75e1: $32
    or b                                          ; $75e2: $b0
    inc de                                        ; $75e3: $13
    ld bc, $1d13                                  ; $75e4: $01 $13 $1d
    xor a                                         ; $75e7: $af
    nop                                           ; $75e8: $00
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    nop                                           ; $75eb: $00
    ld [bc], a                                    ; $75ec: $02
    nop                                           ; $75ed: $00
    rrca                                          ; $75ee: $0f
    ld [bc], a                                    ; $75ef: $02
    ld [bc], a                                    ; $75f0: $02
    nop                                           ; $75f1: $00
    rrca                                          ; $75f2: $0f
    inc b                                         ; $75f3: $04
    ld [bc], a                                    ; $75f4: $02
    nop                                           ; $75f5: $00
    rrca                                          ; $75f6: $0f
    ld b, $02                                     ; $75f7: $06 $02
    nop                                           ; $75f9: $00
    rrca                                          ; $75fa: $0f
    ld [$0002], sp                                ; $75fb: $08 $02 $00
    rrca                                          ; $75fe: $0f
    ld b, $02                                     ; $75ff: $06 $02
    nop                                           ; $7601: $00
    rrca                                          ; $7602: $0f
    inc b                                         ; $7603: $04
    ld [bc], a                                    ; $7604: $02
    nop                                           ; $7605: $00
    rrca                                          ; $7606: $0f
    ld [bc], a                                    ; $7607: $02
    ld [bc], a                                    ; $7608: $02
    nop                                           ; $7609: $00
    rrca                                          ; $760a: $0f
    rst $38                                       ; $760b: $ff
    nop                                           ; $760c: $00
    ld a, [bc]                                    ; $760d: $0a
    rrca                                          ; $760e: $0f
    ld [bc], a                                    ; $760f: $02
    ld e, $19                                     ; $7610: $1e $19
    rrca                                          ; $7612: $0f
    ld [bc], a                                    ; $7613: $02
    ld e, $28                                     ; $7614: $1e $28
    rrca                                          ; $7616: $0f
    ld [bc], a                                    ; $7617: $02
    ld e, $19                                     ; $7618: $1e $19
    rrca                                          ; $761a: $0f
    ld [bc], a                                    ; $761b: $02
    ld e, $ff                                     ; $761c: $1e $ff
    ld bc, $0337                                  ; $761e: $01 $37 $03
    ld de, $3a1e                                  ; $7621: $11 $1e $3a
    inc bc                                        ; $7624: $03
    ld de, $ff1e                                  ; $7625: $11 $1e $ff
    ld [bc], a                                    ; $7628: $02
    dec a                                         ; $7629: $3d
    ld bc, $1e14                                  ; $762a: $01 $14 $1e
    ld a, $01                                     ; $762d: $3e $01
    inc d                                         ; $762f: $14
    ld e, $3f                                     ; $7630: $1e $3f
    ld bc, $1e14                                  ; $7632: $01 $14 $1e
    ld a, $01                                     ; $7635: $3e $01
    inc d                                         ; $7637: $14
    ld e, $ff                                     ; $7638: $1e $ff
    ld [bc], a                                    ; $763a: $02

jr_029_763b:
    cp $d5                                        ; $763b: $fe $d5
    nop                                           ; $763d: $00
    rst $38                                       ; $763e: $ff
    ldh [rTIMA], a                                ; $763f: $e0 $05
    ei                                            ; $7641: $fb
    ldh [$0b], a                                  ; $7642: $e0 $0b
    rst $30                                       ; $7644: $f7
    pop hl                                        ; $7645: $e1
    nop                                           ; $7646: $00
    ld [bc], a                                    ; $7647: $02
    db $eb                                        ; $7648: $eb
    nop                                           ; $7649: $00
    jr z, jr_029_763b                             ; $764a: $28 $ef

    ldh [$90], a                                  ; $764c: $e0 $90
    db $eb                                        ; $764e: $eb
    ldh [$f5], a                                  ; $764f: $e0 $f5
    nop                                           ; $7651: $00
    ret z                                         ; $7652: $c8

    ld a, [$e0e5]                                 ; $7653: $fa $e5 $e0
    add b                                         ; $7656: $80
    ld [$00e4], a                                 ; $7657: $ea $e4 $00
    nop                                           ; $765a: $00
    rla                                           ; $765b: $17
    nop                                           ; $765c: $00
    ld bc, $d612                                  ; $765d: $01 $12 $d6
    ld [c], a                                     ; $7660: $e2
    ld d, b                                       ; $7661: $50
    rst $08                                       ; $7662: $cf
    ldh [$e6], a                                  ; $7663: $e0 $e6
    pop hl                                        ; $7665: $e1
    ld [$e2da], a                                 ; $7666: $ea $da $e2
    db $fd                                        ; $7669: $fd
    db $e3                                        ; $766a: $e3
    and $e1                                       ; $766b: $e6 $e1
    ld d, a                                       ; $766d: $57
    cpl                                           ; $766e: $2f
    nop                                           ; $766f: $00
    inc bc                                        ; $7670: $03
    ret nz                                        ; $7671: $c0

    ld [c], a                                     ; $7672: $e2
    and b                                         ; $7673: $a0
    xor a                                         ; $7674: $af
    ldh [$64], a                                  ; $7675: $e0 $64
    xor e                                         ; $7677: $ab
    ldh [$c7], a                                  ; $7678: $e0 $c7
    call nc, Call_000_2000                        ; $767a: $d4 $00 $20
    ret nz                                        ; $767d: $c0

    ld [c], a                                     ; $767e: $e2
    jp z, $9ce1                                   ; $767f: $ca $e1 $9c

    pop hl                                        ; $7682: $e1
    ld e, a                                       ; $7683: $5f
    nop                                           ; $7684: $00
    ld d, l                                       ; $7685: $55
    ld b, $96                                     ; $7686: $06 $96
    ld [c], a                                     ; $7688: $e2
    ld b, b                                       ; $7689: $40
    adc a                                         ; $768a: $8f
    ldh [$b2], a                                  ; $768b: $e0 $b2
    adc e                                         ; $768d: $8b
    ldh [$a8], a                                  ; $768e: $e0 $a8
    or $e2                                        ; $7690: $f6 $e2
    sbc h                                         ; $7692: $9c
    and h                                         ; $7693: $a4
    db $e3                                        ; $7694: $e3
    ld a, h                                       ; $7695: $7c
    pop hl                                        ; $7696: $e1
    cp a                                          ; $7697: $bf
    nop                                           ; $7698: $00
    inc c                                         ; $7699: $0c
    add b                                         ; $769a: $80
    ld [c], a                                     ; $769b: $e2
    adc [hl]                                      ; $769c: $8e
    pop hl                                        ; $769d: $e1
    ld e, c                                       ; $769e: $59
    ld a, [$e06b]                                 ; $769f: $fa $6b $e0
    ld d, b                                       ; $76a2: $50
    add h                                         ; $76a3: $84
    ld [c], a                                     ; $76a4: $e2
    add b                                         ; $76a5: $80
    nop                                           ; $76a6: $00
    db $ec                                        ; $76a7: $ec
    rst $38                                       ; $76a8: $ff
    ld hl, sp-$01                                 ; $76a9: $f8 $ff
    rst $38                                       ; $76ab: $ff
    ldh [$fe], a                                  ; $76ac: $e0 $fe
    ld b, d                                       ; $76ae: $42
    ld hl, sp-$38                                 ; $76af: $f8 $c8
    ldh a, [$80]                                  ; $76b1: $f0 $80
    cp a                                          ; $76b3: $bf
    ldh [rNR10], a                                ; $76b4: $e0 $10
    ldh [rP1], a                                  ; $76b6: $e0 $00
    ret nz                                        ; $76b8: $c0

    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    ld [c], a                                     ; $76bb: $e2
    rst $30                                       ; $76bc: $f7
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    cp h                                          ; $76bf: $bc
    rst $38                                       ; $76c0: $ff
    add sp, -$01                                  ; $76c1: $e8 $ff
    add c                                         ; $76c3: $81
    cp $08                                        ; $76c4: $fe $08
    db $ed                                        ; $76c6: $ed
    ldh a, [$f8]                                  ; $76c7: $f0 $f8
    push hl                                       ; $76c9: $e5
    jr nz, @-$3e                                  ; $76ca: $20 $c0

    ld [hl], c                                    ; $76cc: $71
    db $e3                                        ; $76cd: $e3
    ld a, a                                       ; $76ce: $7f
    rst $38                                       ; $76cf: $ff
    cpl                                           ; $76d0: $2f
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    ccf                                           ; $76d3: $3f
    rst $38                                       ; $76d4: $ff
    rra                                           ; $76d5: $1f
    rst $38                                       ; $76d6: $ff
    or a                                          ; $76d7: $b7
    ld a, a                                       ; $76d8: $7f
    rra                                           ; $76d9: $1f
    rst $38                                       ; $76da: $ff
    ld a, a                                       ; $76db: $7f
    rrca                                          ; $76dc: $0f
    ld a, a                                       ; $76dd: $7f
    ld c, a                                       ; $76de: $4f
    ccf                                           ; $76df: $3f
    rlca                                          ; $76e0: $07
    rra                                           ; $76e1: $1f
    ld [bc], a                                    ; $76e2: $02
    rst $38                                       ; $76e3: $ff
    rra                                           ; $76e4: $1f
    inc de                                        ; $76e5: $13
    rrca                                          ; $76e6: $0f
    ld bc, $0b0f                                  ; $76e7: $01 $0f $0b
    rlca                                          ; $76ea: $07
    ld bc, $07ff                                  ; $76eb: $01 $ff $07
    nop                                           ; $76ee: $00
    rlca                                          ; $76ef: $07
    inc b                                         ; $76f0: $04
    inc bc                                        ; $76f1: $03
    ld e, h                                       ; $76f2: $5c
    rst $38                                       ; $76f3: $ff
    nop                                           ; $76f4: $00
    rst $28                                       ; $76f5: $ef
    rst $38                                       ; $76f6: $ff
    add c                                         ; $76f7: $81
    inc a                                         ; $76f8: $3c
    db $10                                        ; $76f9: $10
    ld b, h                                       ; $76fa: $44
    and $20                                       ; $76fb: $e6 $20
    ret nz                                        ; $76fd: $c0

    add b                                         ; $76fe: $80
    cp a                                          ; $76ff: $bf
    ret nz                                        ; $7700: $c0

    nop                                           ; $7701: $00
    ldh [$90], a                                  ; $7702: $e0 $90
    ldh [$80], a                                  ; $7704: $e0 $80
    cp $e0                                        ; $7706: $fe $e0
    nop                                           ; $7708: $00
    ei                                            ; $7709: $fb
    ret nz                                        ; $770a: $c0

    jr nz, @-$5e                                  ; $770b: $20 $a0

    ldh [$7d], a                                  ; $770d: $e0 $7d
    rst $38                                       ; $770f: $ff
    rst $28                                       ; $7710: $ef
    rst $38                                       ; $7711: $ff
    ld a, [hl-]                                   ; $7712: $3a
    ld a, [$e2da]                                 ; $7713: $fa $da $e2
    ld [$c0e3], sp                                ; $7716: $08 $e3 $c0
    and h                                         ; $7719: $a4
    ld hl, sp-$20                                 ; $771a: $f8 $e0
    ld hl, sp-$10                                 ; $771c: $f8 $f0
    rst $38                                       ; $771e: $ff
    db $fc                                        ; $771f: $fc
    ret nc                                        ; $7720: $d0

    db $fc                                        ; $7721: $fc
    ld a, [c]                                     ; $7722: $f2
    db $fc                                        ; $7723: $fc
    ldh [$fc], a                                  ; $7724: $e0 $fc
    or b                                          ; $7726: $b0
    rst $30                                       ; $7727: $f7
    ld hl, sp-$1c                                 ; $7728: $f8 $e4
    ld hl, sp-$80                                 ; $772a: $f8 $80
    push hl                                       ; $772c: $e5
    cp [hl]                                       ; $772d: $be
    rst $38                                       ; $772e: $ff
    db $e3                                        ; $772f: $e3
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    ld b, b                                       ; $7732: $40
    rst $38                                       ; $7733: $ff
    nop                                           ; $7734: $00
    rst $20                                       ; $7735: $e7
    db $fc                                        ; $7736: $fc
    rst $38                                       ; $7737: $ff
    or $ff                                        ; $7738: $f6 $ff
    ld a, a                                       ; $773a: $7f
    db $fc                                        ; $773b: $fc
    rst $38                                       ; $773c: $ff
    ld hl, sp-$02                                 ; $773d: $f8 $fe
    add sp, -$02                                  ; $773f: $e8 $fe
    ld hl, sp-$08                                 ; $7741: $f8 $f8
    ldh [$83], a                                  ; $7743: $e0 $83
    db $f4                                        ; $7745: $f4
    rst $38                                       ; $7746: $ff
    ld a, b                                       ; $7747: $78
    ldh [$cb], a                                  ; $7748: $e0 $cb
    jp $c5e2                                      ; $774a: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $774d: $f0 $e0
    rst $28                                       ; $774f: $ef
    ld [$f1c0], a                                 ; $7750: $ea $c0 $f1
    ld b, b                                       ; $7753: $40
    ldh [$ea], a                                  ; $7754: $e0 $ea
    ret nc                                        ; $7756: $d0

    pop hl                                        ; $7757: $e1
    rst $08                                       ; $7758: $cf
    jp hl                                         ; $7759: $e9


    db $ec                                        ; $775a: $ec
    rst $38                                       ; $775b: $ff
    ld sp, hl                                     ; $775c: $f9
    cp $7f                                        ; $775d: $fe $7f
    and $f8                                       ; $775f: $e6 $f8
    ld c, b                                       ; $7761: $48
    ldh a, [$d0]                                  ; $7762: $f0 $d0
    ldh [$a8], a                                  ; $7764: $e0 $a8
    ld [hl], d                                    ; $7766: $72
    ldh [$fb], a                                  ; $7767: $e0 $fb

jr_029_7769:
    ld b, b                                       ; $7769: $40
    add b                                         ; $776a: $80
    db $10                                        ; $776b: $10
    rst $20                                       ; $776c: $e7
    jp hl                                         ; $776d: $e9


    cp $8e                                        ; $776e: $fe $8e
    ldh a, [$30]                                  ; $7770: $f0 $30
    pop af                                        ; $7772: $f1
    ret nz                                        ; $7773: $c0

    ld hl, sp-$1b                                 ; $7774: $f8 $e5
    ld h, d                                       ; $7776: $62
    pop bc                                        ; $7777: $c1
    db $10                                        ; $7778: $10
    push hl                                       ; $7779: $e5
    cp a                                          ; $777a: $bf
    ld a, a                                       ; $777b: $7f
    sbc a                                         ; $777c: $9f
    ld a, a                                       ; $777d: $7f
    rst $38                                       ; $777e: $ff
    ld [hl], a                                    ; $777f: $77
    ccf                                           ; $7780: $3f
    ld e, a                                       ; $7781: $5f
    ccf                                           ; $7782: $3f
    ld c, a                                       ; $7783: $4f
    ccf                                           ; $7784: $3f
    cpl                                           ; $7785: $2f
    rra                                           ; $7786: $1f
    rst $30                                       ; $7787: $f7
    rla                                           ; $7788: $17
    rrca                                          ; $7789: $0f
    ld [de], a                                    ; $778a: $12
    inc d                                         ; $778b: $14
    ldh [$09], a                                  ; $778c: $e0 $09
    rlca                                          ; $778e: $07
    rla                                           ; $778f: $17
    inc bc                                        ; $7790: $03
    rst $38                                       ; $7791: $ff
    dec b                                         ; $7792: $05
    inc bc                                        ; $7793: $03
    inc b                                         ; $7794: $04
    inc bc                                        ; $7795: $03
    ld [bc], a                                    ; $7796: $02
    ld bc, $ff5c                                  ; $7797: $01 $5c $ff
    rst $30                                       ; $779a: $f7
    jp Jump_000_3c3c                              ; $779b: $c3 $3c $3c


    sbc d                                         ; $779e: $9a
    add $00                                       ; $779f: $c6 $00
    nop                                           ; $77a1: $00
    ld b, b                                       ; $77a2: $40
    add b                                         ; $77a3: $80
    rst $18                                       ; $77a4: $df
    ret nz                                        ; $77a5: $c0

    add b                                         ; $77a6: $80
    jr nz, jr_029_7769                            ; $77a7: $20 $c0

    and b                                         ; $77a9: $a0
    cp $e2                                        ; $77aa: $fe $e2
    ld d, b                                       ; $77ac: $50
    add b                                         ; $77ad: $80
    ldh a, [$a0]                                  ; $77ae: $f0 $a0
    pop hl                                        ; $77b0: $e1
    db $10                                        ; $77b1: $10
    db $e3                                        ; $77b2: $e3
    jp c, Jump_029_64e1                           ; $77b3: $da $e1 $64

    pop bc                                        ; $77b6: $c1
    xor b                                         ; $77b7: $a8
    ldh a, [$ea]                                  ; $77b8: $f0 $ea
    ldh a, [$df]                                  ; $77ba: $f0 $df
    db $f4                                        ; $77bc: $f4
    ld hl, sp-$2c                                 ; $77bd: $f8 $d4
    ld hl, sp-$0c                                 ; $77bf: $f8 $f4
    inc d                                         ; $77c1: $14
    ldh [$b8], a                                  ; $77c2: $e0 $b8
    ldh a, [$fb]                                  ; $77c4: $f0 $fb
    add sp, -$10                                  ; $77c6: $e8 $f0
    db $10                                        ; $77c8: $10
    jp hl                                         ; $77c9: $e9


    ld e, b                                       ; $77ca: $58
    rst $20                                       ; $77cb: $e7
    ld h, [hl]                                    ; $77cc: $66
    add c                                         ; $77cd: $81
    db $fc                                        ; $77ce: $fc
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $30                                       ; $77d1: $f7
    cp $fd                                        ; $77d2: $fe $fd
    cp $fa                                        ; $77d4: $fe $fa
    db $fc                                        ; $77d6: $fc
    ld [$fc3b], a                                 ; $77d7: $ea $3b $fc
    ld sp, hl                                     ; $77da: $f9
    ld hl, sp-$20                                 ; $77db: $f8 $e0
    db $f4                                        ; $77dd: $f4
    rst $38                                       ; $77de: $ff

jr_029_77df:
    ld c, b                                       ; $77df: $48
    ld [hl+], a                                   ; $77e0: $22
    db $eb                                        ; $77e1: $eb
    and b                                         ; $77e2: $a0
    ldh [$f0], a                                  ; $77e3: $e0 $f0
    call z, $fba3                                 ; $77e5: $cc $a3 $fb
    push bc                                       ; $77e8: $c5
    pop af                                        ; $77e9: $f1
    call $cbe3                                    ; $77ea: $cd $e3 $cb
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    db $ed                                        ; $77ef: $ed
    cp $ff                                        ; $77f0: $fe $ff
    cp $f8                                        ; $77f2: $fe $f8
    add sp, -$10                                  ; $77f4: $e8 $f0
    ld d, d                                       ; $77f6: $52
    ldh [$e8], a                                  ; $77f7: $e0 $e8
    ret nz                                        ; $77f9: $c0

    rst $20                                       ; $77fa: $e7
    ret nz                                        ; $77fb: $c0

    add b                                         ; $77fc: $80
    ld d, b                                       ; $77fd: $50
    sub $c0                                       ; $77fe: $d6 $c0
    jr nz, @-$39                                  ; $7800: $20 $c5

    cp l                                          ; $7802: $bd
    cp $ee                                        ; $7803: $fe $ee
    jp $b1f0                                      ; $7805: $c3 $f0 $b1


    ld a, [de]                                    ; $7808: $1a
    ldh [$f8], a                                  ; $7809: $e0 $f8
    push hl                                       ; $780b: $e5
    or d                                          ; $780c: $b2
    and c                                         ; $780d: $a1
    ld d, h                                       ; $780e: $54
    and c                                         ; $780f: $a1
    rst $38                                       ; $7810: $ff
    ld a, a                                       ; $7811: $7f
    rst $30                                       ; $7812: $f7
    xor a                                         ; $7813: $af
    ld a, a                                       ; $7814: $7f
    ld a, a                                       ; $7815: $7f
    inc d                                         ; $7816: $14
    ldh [$b7], a                                  ; $7817: $e0 $b7
    rra                                           ; $7819: $1f
    ccf                                           ; $781a: $3f
    rra                                           ; $781b: $1f
    ld a, a                                       ; $781c: $7f

jr_029_781d:
    cpl                                           ; $781d: $2f
    rra                                           ; $781e: $1f
    ld e, a                                       ; $781f: $5f
    rrca                                          ; $7820: $0f
    rrca                                          ; $7821: $0f
    rlca                                          ; $7822: $07
    ld a, [bc]                                    ; $7823: $0a
    inc d                                         ; $7824: $14
    ld [c], a                                     ; $7825: $e2
    rst $38                                       ; $7826: $ff
    dec bc                                        ; $7827: $0b
    ld bc, $0103                                  ; $7828: $01 $03 $01
    ld [bc], a                                    ; $782b: $02
    ld bc, $0005                                  ; $782c: $01 $05 $00
    sub l                                         ; $782f: $95
    rst $18                                       ; $7830: $df
    ld [de], a                                    ; $7831: $12
    ldh [rSCY], a                                 ; $7832: $e0 $42
    sub b                                         ; $7834: $90
    ld [$0ca0], a                                 ; $7835: $ea $a0 $0c
    ld [c], a                                     ; $7838: $e2
    cp $e1                                        ; $7839: $fe $e1
    and b                                         ; $783b: $a0
    ld [hl], h                                    ; $783c: $74
    jr nc, jr_029_77df                            ; $783d: $30 $a0

    jr nz, @-$3b                                  ; $783f: $20 $c3

    ei                                            ; $7841: $fb
    jp c, $b0e6                                   ; $7842: $da $e6 $b0

    ldh [$f4], a                                  ; $7845: $e0 $f4
    rra                                           ; $7847: $1f
    ret nz                                        ; $7848: $c0

    rst $30                                       ; $7849: $f7
    ret c                                         ; $784a: $d8

    ldh a, [$f8]                                  ; $784b: $f0 $f8
    inc d                                         ; $784d: $14
    ldh [$b4], a                                  ; $784e: $e0 $b4
    ldh [$f0], a                                  ; $7850: $e0 $f0
    ldh [$fa], a                                  ; $7852: $e0 $fa
    jr nz, jr_029_781d                            ; $7854: $20 $c7

    ei                                            ; $7856: $fb
    ld [de], a                                    ; $7857: $12
    ldh [$91], a                                  ; $7858: $e0 $91
    nop                                           ; $785a: $00
    db $fd                                        ; $785b: $fd
    cp $f6                                        ; $785c: $fe $f6
    rst $38                                       ; $785e: $ff
    db $fc                                        ; $785f: $fc
    cp $fc                                        ; $7860: $fe $fc
    db $fd                                        ; $7862: $fd
    ld hl, sp-$14                                 ; $7863: $f8 $ec
    ld hl, sp-$06                                 ; $7865: $f8 $fa
    ld b, $f8                                     ; $7867: $06 $f8
    ldh [$f5], a                                  ; $7869: $e0 $f5
    cp $78                                        ; $786b: $fe $78
    push hl                                       ; $786d: $e5
    inc l                                         ; $786e: $2c
    push af                                       ; $786f: $f5
    nop                                           ; $7870: $00
    and c                                         ; $7871: $a1
    xor $cc                                       ; $7872: $ee $cc
    pop af                                        ; $7874: $f1
    xor d                                         ; $7875: $aa
    rst $38                                       ; $7876: $ff
    ld [bc], a                                    ; $7877: $02
    add c                                         ; $7878: $81
    and b                                         ; $7879: $a0
    pop bc                                        ; $787a: $c1
    add b                                         ; $787b: $80
    pop bc                                        ; $787c: $c1
    add l                                         ; $787d: $85
    jp $a1ff                                      ; $787e: $c3 $ff $a1


    jp $8300                                      ; $7881: $c3 $00 $83


    dec b                                         ; $7884: $05
    add e                                         ; $7885: $83
    ld b, b                                       ; $7886: $40
    add c                                         ; $7887: $81
    di                                            ; $7888: $f3
    ld b, c                                       ; $7889: $41
    add b                                         ; $788a: $80
    ldh [$a0], a                                  ; $788b: $e0 $a0
    ld [hl], b                                    ; $788d: $70
    ret nz                                        ; $788e: $c0

    ret nz                                        ; $788f: $c0

    ldh [rBCPS], a                                ; $7890: $e0 $68
    ldh a, [rIE]                                  ; $7892: $f0 $ff
    pop af                                        ; $7894: $f1
    db $fc                                        ; $7895: $fc
    call c, Call_000_1eff                         ; $7896: $dc $ff $1e
    rst $38                                       ; $7899: $ff
    add b                                         ; $789a: $80
    ld e, $fd                                     ; $789b: $1e $fd
    ld [de], a                                    ; $789d: $12
    ld [hl], h                                    ; $789e: $74
    add d                                         ; $789f: $82
    ld c, b                                       ; $78a0: $48
    nop                                           ; $78a1: $00
    ld bc, $5878                                  ; $78a2: $01 $78 $58
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    ld b, b                                       ; $78a7: $40
    add c                                         ; $78a8: $81
    add d                                         ; $78a9: $82
    pop bc                                        ; $78aa: $c1
    and b                                         ; $78ab: $a0
    pop bc                                        ; $78ac: $c1
    and c                                         ; $78ad: $a1
    jp $85ff                                      ; $78ae: $c3 $ff $85


    jp $8304                                      ; $78b1: $c3 $04 $83


    ld b, c                                       ; $78b4: $41
    add e                                         ; $78b5: $83
    ld [bc], a                                    ; $78b6: $02
    add c                                         ; $78b7: $81
    or $6d                                        ; $78b8: $f6 $6d
    add b                                         ; $78ba: $80
    add b                                         ; $78bb: $80
    and b                                         ; $78bc: $a0
    ld c, h                                       ; $78bd: $4c
    and b                                         ; $78be: $a0
    ret nc                                        ; $78bf: $d0

    ldh [$64], a                                  ; $78c0: $e0 $64

jr_029_78c2:
    ldh a, [$ed]                                  ; $78c2: $f0 $ed
    ldh a, [$d0]                                  ; $78c4: $f0 $d0
    ld [c], a                                     ; $78c6: $e2
    ld b, c                                       ; $78c7: $41
    ld e, $c6                                     ; $78c8: $1e $c6
    add c                                         ; $78ca: $81
    nop                                           ; $78cb: $00
    nop                                           ; $78cc: $00
    jr nc, jr_029_78c2                            ; $78cd: $30 $f3

    nop                                           ; $78cf: $00
    add d                                         ; $78d0: $82
    ret nc                                        ; $78d1: $d0

    ldh [$a0], a                                  ; $78d2: $e0 $a0
    xor c                                         ; $78d4: $a9
    ld [bc], a                                    ; $78d5: $02
    ld bc, $0300                                  ; $78d6: $01 $00 $03
    nop                                           ; $78d9: $00
    ld [hl], c                                    ; $78da: $71
    xor c                                         ; $78db: $a9
    pop af                                        ; $78dc: $f1
    ldh [$60], a                                  ; $78dd: $e0 $60
    add sp, $30                                   ; $78df: $e8 $30
    add e                                         ; $78e1: $83
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    nop                                           ; $78ea: $00
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
    nop                                           ; $78fb: $00
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
    nop                                           ; $790c: $00
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
    nop                                           ; $791d: $00
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    ccf                                           ; $7922: $3f
    ld bc, $0000                                  ; $7923: $01 $00 $00
    nop                                           ; $7926: $00
    push af                                       ; $7927: $f5
    push bc                                       ; $7928: $c5
    push de                                       ; $7929: $d5
    push hl                                       ; $792a: $e5
    ld [$c32f], a                                 ; $792b: $ea $2f $c3
    ld c, a                                       ; $792e: $4f
    ld a, $ff                                     ; $792f: $3e $ff
    ld b, $01                                     ; $7931: $06 $01
    ld hl, $c330                                  ; $7933: $21 $30 $c3
    ld [hl+], a                                   ; $7936: $22
    ld [hl], b                                    ; $7937: $70
    inc hl                                        ; $7938: $23
    ld [hl+], a                                   ; $7939: $22
    ld [hl], b                                    ; $793a: $70
    inc hl                                        ; $793b: $23
    ld [hl+], a                                   ; $793c: $22
    ld [hl], b                                    ; $793d: $70
    inc hl                                        ; $793e: $23
    ld [hl+], a                                   ; $793f: $22
    ld [hl], b                                    ; $7940: $70
    inc hl                                        ; $7941: $23
    ld [hl+], a                                   ; $7942: $22
    ld [hl+], a                                   ; $7943: $22
    ld [hl+], a                                   ; $7944: $22
    ld [hl+], a                                   ; $7945: $22
    ld a, c                                       ; $7946: $79
    ld h, $00                                     ; $7947: $26 $00
    ld l, a                                       ; $7949: $6f
    add hl, hl                                    ; $794a: $29
    ld bc, $403a                                  ; $794b: $01 $3a $40
    add hl, bc                                    ; $794e: $09
    ld a, [hl+]                                   ; $794f: $2a
    ld h, [hl]                                    ; $7950: $66
    ld l, a                                       ; $7951: $6f
    ld a, [hl]                                    ; $7952: $7e
    cp $fe                                        ; $7953: $fe $fe
    jr nz, jr_029_7959                            ; $7955: $20 $02

    jr jr_029_79c9                                ; $7957: $18 $70

jr_029_7959:
    add sp, -$02                                  ; $7959: $e8 $fe
    ld de, $c332                                  ; $795b: $11 $32 $c3
    push hl                                       ; $795e: $e5
    ld hl, sp+$02                                 ; $795f: $f8 $02
    ld [hl], e                                    ; $7961: $73
    inc hl                                        ; $7962: $23
    ld [hl], d                                    ; $7963: $72
    pop hl                                        ; $7964: $e1
    ld d, h                                       ; $7965: $54
    ld e, l                                       ; $7966: $5d
    ld b, $ff                                     ; $7967: $06 $ff
    ld c, $03                                     ; $7969: $0e $03
    xor a                                         ; $796b: $af
    ld hl, $c330                                  ; $796c: $21 $30 $c3
    ld [hl], a                                    ; $796f: $77
    ld hl, $c338                                  ; $7970: $21 $38 $c3
    ld [hl], a                                    ; $7973: $77
    inc hl                                        ; $7974: $23

jr_029_7975:
    inc b                                         ; $7975: $04
    ld a, [de]                                    ; $7976: $1a
    inc de                                        ; $7977: $13
    cp $fe                                        ; $7978: $fe $fe
    jr z, jr_029_79b1                             ; $797a: $28 $35

    cp $ff                                        ; $797c: $fe $ff
    jr nz, jr_029_7975                            ; $797e: $20 $f5

    inc b                                         ; $7980: $04
    ld a, b                                       ; $7981: $78
    inc a                                         ; $7982: $3c
    ld [hl], a                                    ; $7983: $77
    push de                                       ; $7984: $d5
    push hl                                       ; $7985: $e5
    ld hl, sp+$04                                 ; $7986: $f8 $04
    ld e, [hl]                                    ; $7988: $5e
    inc hl                                        ; $7989: $23
    ld d, [hl]                                    ; $798a: $56
    pop hl                                        ; $798b: $e1
    ld [de], a                                    ; $798c: $12
    inc de                                        ; $798d: $13
    inc de                                        ; $798e: $13
    push hl                                       ; $798f: $e5
    ld hl, sp+$04                                 ; $7990: $f8 $04
    ld [hl], e                                    ; $7992: $73
    inc hl                                        ; $7993: $23
    ld [hl], d                                    ; $7994: $72
    pop hl                                        ; $7995: $e1
    pop de                                        ; $7996: $d1
    ld a, [de]                                    ; $7997: $1a
    inc a                                         ; $7998: $3c
    inc de                                        ; $7999: $13
    push hl                                       ; $799a: $e5
    push de                                       ; $799b: $d5
    ld d, a                                       ; $799c: $57
    ld a, $04                                     ; $799d: $3e $04
    sub c                                         ; $799f: $91
    ld hl, $c330                                  ; $79a0: $21 $30 $c3
    ld e, a                                       ; $79a3: $5f
    ld a, d                                       ; $79a4: $7a
    ld d, $00                                     ; $79a5: $16 $00
    add hl, de                                    ; $79a7: $19
    add hl, de                                    ; $79a8: $19
    inc hl                                        ; $79a9: $23
    ld [hl], a                                    ; $79aa: $77
    pop de                                        ; $79ab: $d1
    pop hl                                        ; $79ac: $e1
    inc hl                                        ; $79ad: $23
    dec c                                         ; $79ae: $0d
    jr nz, jr_029_7975                            ; $79af: $20 $c4

jr_029_79b1:
    ld a, $ff                                     ; $79b1: $3e $ff
    dec hl                                        ; $79b3: $2b
    ld [hl], a                                    ; $79b4: $77
    push hl                                       ; $79b5: $e5
    ld hl, sp+$02                                 ; $79b6: $f8 $02
    ld e, [hl]                                    ; $79b8: $5e
    inc hl                                        ; $79b9: $23
    ld d, [hl]                                    ; $79ba: $56
    pop hl                                        ; $79bb: $e1
    dec de                                        ; $79bc: $1b
    dec de                                        ; $79bd: $1b
    ld [de], a                                    ; $79be: $12
    ld a, $01                                     ; $79bf: $3e $01
    ld hl, $79dd                                  ; $79c1: $21 $dd $79
    call Call_000_23e8                            ; $79c4: $cd $e8 $23
    add sp, $02                                   ; $79c7: $e8 $02

jr_029_79c9:
    pop hl                                        ; $79c9: $e1
    pop de                                        ; $79ca: $d1
    pop bc                                        ; $79cb: $c1
    pop af                                        ; $79cc: $f1
    ret                                           ; $79cd: $c9


    push af                                       ; $79ce: $f5
    push bc                                       ; $79cf: $c5
    push de                                       ; $79d0: $d5
    push hl                                       ; $79d1: $e5
    ld hl, $79dd                                  ; $79d2: $21 $dd $79
    call Call_000_2449                            ; $79d5: $cd $49 $24
    pop hl                                        ; $79d8: $e1
    pop de                                        ; $79d9: $d1
    pop bc                                        ; $79da: $c1
    pop af                                        ; $79db: $f1
    ret                                           ; $79dc: $c9


    rst $30                                       ; $79dd: $f7
    add b                                         ; $79de: $80
    inc bc                                        ; $79df: $03
    jr nz, jr_029_79e6                            ; $79e0: $20 $04

    rst $30                                       ; $79e2: $f7
    nop                                           ; $79e3: $00
    inc bc                                        ; $79e4: $03
    ret nz                                        ; $79e5: $c0

jr_029_79e6:
    push af                                       ; $79e6: $f5
    push bc                                       ; $79e7: $c5
    push de                                       ; $79e8: $d5
    push hl                                       ; $79e9: $e5
    ldh a, [$96]                                  ; $79ea: $f0 $96
    push af                                       ; $79ec: $f5
    ld a, $06                                     ; $79ed: $3e $06
    ldh [$96], a                                  ; $79ef: $e0 $96
    ldh [rSVBK], a                                ; $79f1: $e0 $70
    ld c, $00                                     ; $79f3: $0e $00
    ld hl, $c338                                  ; $79f5: $21 $38 $c3

jr_029_79f8:
    ld a, [hl]                                    ; $79f8: $7e
    cp $ff                                        ; $79f9: $fe $ff
    jr z, jr_029_7a1a                             ; $79fb: $28 $1d

    push hl                                       ; $79fd: $e5
    ld l, c                                       ; $79fe: $69
    ld h, $00                                     ; $79ff: $26 $00
    add hl, hl                                    ; $7a01: $29
    ld de, $c330                                  ; $7a02: $11 $30 $c3
    add hl, de                                    ; $7a05: $19
    inc hl                                        ; $7a06: $23
    ld a, [hl]                                    ; $7a07: $7e
    dec a                                         ; $7a08: $3d
    ld [hl], a                                    ; $7a09: $77
    pop hl                                        ; $7a0a: $e1
    inc hl                                        ; $7a0b: $23
    ld b, c                                       ; $7a0c: $41
    inc c                                         ; $7a0d: $0c
    or a                                          ; $7a0e: $b7
    jr nz, jr_029_79f8                            ; $7a0f: $20 $e7

    ld a, b                                       ; $7a11: $78
    call Call_029_7a24                            ; $7a12: $cd $24 $7a
    ld a, c                                       ; $7a15: $79
    cp $04                                        ; $7a16: $fe $04
    jr nz, jr_029_79f8                            ; $7a18: $20 $de

jr_029_7a1a:
    pop af                                        ; $7a1a: $f1
    ldh [$96], a                                  ; $7a1b: $e0 $96
    ldh [rSVBK], a                                ; $7a1d: $e0 $70
    pop hl                                        ; $7a1f: $e1
    pop de                                        ; $7a20: $d1
    pop bc                                        ; $7a21: $c1
    pop af                                        ; $7a22: $f1
    ret                                           ; $7a23: $c9


Call_029_7a24:
    push af                                       ; $7a24: $f5
    push bc                                       ; $7a25: $c5
    push de                                       ; $7a26: $d5
    push hl                                       ; $7a27: $e5
    push af                                       ; $7a28: $f5
    add sp, -$01                                  ; $7a29: $e8 $ff
    ld hl, sp+$00                                 ; $7a2b: $f8 $00
    ld [hl], a                                    ; $7a2d: $77
    ld h, $00                                     ; $7a2e: $26 $00
    ld l, a                                       ; $7a30: $6f
    add hl, hl                                    ; $7a31: $29
    ld bc, $c330                                  ; $7a32: $01 $30 $c3
    add hl, bc                                    ; $7a35: $09
    ld a, [hl]                                    ; $7a36: $7e
    ld [$c33c], a                                 ; $7a37: $ea $3c $c3

jr_029_7a3a:
    ld a, [$c32f]                                 ; $7a3a: $fa $2f $c3
    ld l, a                                       ; $7a3d: $6f
    ld h, $00                                     ; $7a3e: $26 $00
    add hl, hl                                    ; $7a40: $29
    ld bc, $403a                                  ; $7a41: $01 $3a $40
    add hl, bc                                    ; $7a44: $09
    ld a, [hl+]                                   ; $7a45: $2a

Jump_029_7a46:
    ld h, [hl]                                    ; $7a46: $66
    ld l, a                                       ; $7a47: $6f
    ld a, [$c33c]                                 ; $7a48: $fa $3c $c3
    ld c, a                                       ; $7a4b: $4f
    ld b, $00                                     ; $7a4c: $06 $00
    add hl, bc                                    ; $7a4e: $09
    ld a, [hl]                                    ; $7a4f: $7e
    cp $ff                                        ; $7a50: $fe $ff
    jr nz, jr_029_7a63                            ; $7a52: $20 $0f

    ld hl, sp+$00                                 ; $7a54: $f8 $00
    ld c, [hl]                                    ; $7a56: $4e
    ld b, $00                                     ; $7a57: $06 $00
    ld hl, $c338                                  ; $7a59: $21 $38 $c3
    add hl, bc                                    ; $7a5c: $09
    ld a, [hl]                                    ; $7a5d: $7e
    ld [$c33c], a                                 ; $7a5e: $ea $3c $c3
    jr jr_029_7a3a                                ; $7a61: $18 $d7

jr_029_7a63:
    ld b, a                                       ; $7a63: $47
    inc hl                                        ; $7a64: $23
    ld c, [hl]                                    ; $7a65: $4e
    inc hl                                        ; $7a66: $23
    ld e, [hl]                                    ; $7a67: $5e
    inc hl                                        ; $7a68: $23
    ld a, [hl]                                    ; $7a69: $7e
    push af                                       ; $7a6a: $f5
    push bc                                       ; $7a6b: $c5
    ld l, e                                       ; $7a6c: $6b
    ld h, $00                                     ; $7a6d: $26 $00
    add hl, hl                                    ; $7a6f: $29
    add hl, hl                                    ; $7a70: $29
    add hl, hl                                    ; $7a71: $29
    add hl, hl                                    ; $7a72: $29
    ld de, $b000                                  ; $7a73: $11 $00 $b0
    add hl, de                                    ; $7a76: $19
    push hl                                       ; $7a77: $e5
    ld l, b                                       ; $7a78: $68
    ld h, $00                                     ; $7a79: $26 $00
    add hl, hl                                    ; $7a7b: $29
    add hl, hl                                    ; $7a7c: $29
    add hl, hl                                    ; $7a7d: $29
    add hl, hl                                    ; $7a7e: $29
    ld bc, $d800                                  ; $7a7f: $01 $00 $d8
    add hl, bc                                    ; $7a82: $09
    pop de                                        ; $7a83: $d1
    pop bc                                        ; $7a84: $c1
    call Call_000_0468                            ; $7a85: $cd $68 $04
    ld a, [$c33c]                                 ; $7a88: $fa $3c $c3
    add $04                                       ; $7a8b: $c6 $04
    ld [$c33c], a                                 ; $7a8d: $ea $3c $c3
    pop af                                        ; $7a90: $f1
    ld d, a                                       ; $7a91: $57
    add sp, $01                                   ; $7a92: $e8 $01
    pop af                                        ; $7a94: $f1
    ld h, $00                                     ; $7a95: $26 $00
    ld l, a                                       ; $7a97: $6f
    add hl, hl                                    ; $7a98: $29
    ld bc, $c330                                  ; $7a99: $01 $30 $c3
    add hl, bc                                    ; $7a9c: $09
    ld a, [$c33c]                                 ; $7a9d: $fa $3c $c3
    ld [hl+], a                                   ; $7aa0: $22
    ld [hl], d                                    ; $7aa1: $72
    pop hl                                        ; $7aa2: $e1
    pop de                                        ; $7aa3: $d1
    pop bc                                        ; $7aa4: $c1
    pop af                                        ; $7aa5: $f1
    ret                                           ; $7aa6: $c9


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

Jump_029_7cc0:
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

Jump_029_7cee:
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

Jump_029_7e00:
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

Jump_029_7e86:
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

Jump_029_7ea1:
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

Jump_029_7ee4:
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

Call_029_7f08:
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

Call_029_7f30:
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

Jump_029_7f40:
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

Jump_029_7f7c:
    rst $38                                       ; $7f7c: $ff
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    rst $38                                       ; $7f80: $ff
    rst $38                                       ; $7f81: $ff

Jump_029_7f82:
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
