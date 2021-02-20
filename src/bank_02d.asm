; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

Call_02d_4000:
    sbc l                                         ; $4000: $9d
    ld [hl], e                                    ; $4001: $73
    ld b, h                                       ; $4002: $44
    ld [hl], h                                    ; $4003: $74
    inc l                                         ; $4004: $2c
    ld b, b                                       ; $4005: $40
    inc [hl]                                      ; $4006: $34
    ld b, b                                       ; $4007: $40
    or [hl]                                       ; $4008: $b6
    ld c, e                                       ; $4009: $4b
    add [hl]                                      ; $400a: $86
    ld d, c                                       ; $400b: $51
    ld h, $56                                     ; $400c: $26 $56
    halt                                          ; $400e: $76
    ld d, [hl]                                    ; $400f: $56
    pop bc                                        ; $4010: $c1
    ld d, [hl]                                    ; $4011: $56
    ld [de], a                                    ; $4012: $12
    ld d, a                                       ; $4013: $57
    ld [hl], h                                    ; $4014: $74
    ld b, b                                       ; $4015: $40
    db $fd                                        ; $4016: $fd
    ld e, c                                       ; $4017: $59
    dec b                                         ; $4018: $05
    ld e, d                                       ; $4019: $5a
    db $eb                                        ; $401a: $eb
    ld h, h                                       ; $401b: $64
    ld e, h                                       ; $401c: $5c
    ld l, e                                       ; $401d: $6b
    or [hl]                                       ; $401e: $b6
    ld l, a                                       ; $401f: $6f
    ld b, $70                                     ; $4020: $06 $70
    ld d, l                                       ; $4022: $55
    ld [hl], b                                    ; $4023: $70
    and [hl]                                      ; $4024: $a6
    ld [hl], b                                    ; $4025: $70
    ld b, l                                       ; $4026: $45
    ld e, d                                       ; $4027: $5a
    pop bc                                        ; $4028: $c1
    ld d, [hl]                                    ; $4029: $56
    ld d, l                                       ; $402a: $55
    ld [hl], b                                    ; $402b: $70
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    ccf                                           ; $4030: $3f
    ccf                                           ; $4031: $3f
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    jr nz, jr_02d_4057                            ; $4035: $20 $20

    ld d, l                                       ; $4037: $55
    and b                                         ; $4038: $a0
    ld a, [hl]                                    ; $4039: $7e
    rst $38                                       ; $403a: $ff
    ld a, a                                       ; $403b: $7f
    ld [$0825], sp                                ; $403c: $08 $25 $08
    dec h                                         ; $403f: $25
    ld [$0825], sp                                ; $4040: $08 $25 $08
    dec h                                         ; $4043: $25
    inc sp                                        ; $4044: $33
    ld bc, $023f                                  ; $4045: $01 $3f $02
    ld [$4403], a                                 ; $4048: $ea $03 $44
    ld [bc], a                                    ; $404b: $02
    rst $38                                       ; $404c: $ff
    ld h, e                                       ; $404d: $63
    ldh a, [$03]                                  ; $404e: $f0 $03
    ld [$4403], a                                 ; $4050: $ea $03 $44
    ld [bc], a                                    ; $4053: $02
    ld b, b                                       ; $4054: $40
    ld [hl], c                                    ; $4055: $71
    ret nz                                        ; $4056: $c0

jr_02d_4057:
    ld a, [hl]                                    ; $4057: $7e
    call nc, Call_02d_4400                        ; $4058: $d4 $00 $44
    ld [bc], a                                    ; $405b: $02
    rst $38                                       ; $405c: $ff
    ld a, a                                       ; $405d: $7f
    ld [$4403], a                                 ; $405e: $ea $03 $44
    ld [bc], a                                    ; $4061: $02
    ld b, b                                       ; $4062: $40
    dec d                                         ; $4063: $15
    cp a                                          ; $4064: $bf
    nop                                           ; $4065: $00
    add [hl]                                      ; $4066: $86
    ccf                                           ; $4067: $3f
    inc h                                         ; $4068: $24
    ld l, $40                                     ; $4069: $2e $40
    dec d                                         ; $406b: $15
    ld [$0825], sp                                ; $406c: $08 $25 $08
    dec h                                         ; $406f: $25
    ld [$0825], sp                                ; $4070: $08 $25 $08

jr_02d_4073:
    dec h                                         ; $4073: $25
    push de                                       ; $4074: $d5

jr_02d_4075:
    nop                                           ; $4075: $00
    rst $38                                       ; $4076: $ff
    ldh [rTIMA], a                                ; $4077: $e0 $05
    ei                                            ; $4079: $fb
    ldh [$0b], a                                  ; $407a: $e0 $0b
    rst $30                                       ; $407c: $f7
    pop hl                                        ; $407d: $e1
    nop                                           ; $407e: $00
    ld [bc], a                                    ; $407f: $02
    db $eb                                        ; $4080: $eb
    nop                                           ; $4081: $00
    jr z, jr_02d_4073                             ; $4082: $28 $ef

    ldh [$90], a                                  ; $4084: $e0 $90
    db $eb                                        ; $4086: $eb
    ldh [$f5], a                                  ; $4087: $e0 $f5
    nop                                           ; $4089: $00
    ret z                                         ; $408a: $c8

    cp $e5                                        ; $408b: $fe $e5
    ldh [$80], a                                  ; $408d: $e0 $80
    nop                                           ; $408f: $00
    db $ec                                        ; $4090: $ec
    rst $38                                       ; $4091: $ff
    ld hl, sp-$01                                 ; $4092: $f8 $ff
    ldh [rIE], a                                  ; $4094: $e0 $ff
    cp $42                                        ; $4096: $fe $42
    ld hl, sp-$38                                 ; $4098: $f8 $c8
    ldh a, [$80]                                  ; $409a: $f0 $80
    ldh [rNR10], a                                ; $409c: $e0 $10
    rst $28                                       ; $409e: $ef
    ldh [rP1], a                                  ; $409f: $e0 $00
    ret nz                                        ; $40a1: $c0

    rst $38                                       ; $40a2: $ff
    rst $38                                       ; $40a3: $ff
    ld [c], a                                     ; $40a4: $e2
    rst $30                                       ; $40a5: $f7
    rst $38                                       ; $40a6: $ff
    cp h                                          ; $40a7: $bc
    ld a, a                                       ; $40a8: $7f
    rst $38                                       ; $40a9: $ff
    add sp, -$01                                  ; $40aa: $e8 $ff
    add c                                         ; $40ac: $81
    cp $08                                        ; $40ad: $fe $08
    ldh a, [$f8]                                  ; $40af: $f0 $f8
    push hl                                       ; $40b1: $e5
    ei                                            ; $40b2: $fb
    jr nz, jr_02d_4075                            ; $40b3: $20 $c0

    cp a                                          ; $40b5: $bf
    ld [c], a                                     ; $40b6: $e2
    nop                                           ; $40b7: $00
    ld a, a                                       ; $40b8: $7f
    rst $38                                       ; $40b9: $ff
    cpl                                           ; $40ba: $2f
    rst $38                                       ; $40bb: $ff
    rst $38                                       ; $40bc: $ff
    ccf                                           ; $40bd: $3f
    rst $38                                       ; $40be: $ff
    rra                                           ; $40bf: $1f

Call_02d_40c0:
    rst $38                                       ; $40c0: $ff
    or a                                          ; $40c1: $b7
    ld a, a                                       ; $40c2: $7f
    rra                                           ; $40c3: $1f

Jump_02d_40c4:
    ld a, a                                       ; $40c4: $7f
    rst $38                                       ; $40c5: $ff
    rrca                                          ; $40c6: $0f
    ld a, a                                       ; $40c7: $7f
    ld c, a                                       ; $40c8: $4f
    ccf                                           ; $40c9: $3f
    rlca                                          ; $40ca: $07
    rra                                           ; $40cb: $1f
    ld [bc], a                                    ; $40cc: $02
    rra                                           ; $40cd: $1f
    rst $38                                       ; $40ce: $ff
    inc de                                        ; $40cf: $13
    rrca                                          ; $40d0: $0f
    ld bc, $0b0f                                  ; $40d1: $01 $0f $0b
    rlca                                          ; $40d4: $07
    ld bc, $ff07                                  ; $40d5: $01 $07 $ff
    nop                                           ; $40d8: $00
    rlca                                          ; $40d9: $07
    inc b                                         ; $40da: $04
    inc bc                                        ; $40db: $03
    ld e, h                                       ; $40dc: $5c
    rst $38                                       ; $40dd: $ff
    nop                                           ; $40de: $00
    rst $38                                       ; $40df: $ff
    rst $20                                       ; $40e0: $e7
    add c                                         ; $40e1: $81
    inc a                                         ; $40e2: $3c
    db $10                                        ; $40e3: $10
    db $d3                                        ; $40e4: $d3
    db $e3                                        ; $40e5: $e3
    add e                                         ; $40e6: $83
    ldh [rNR41], a                                ; $40e7: $e0 $20
    ret nz                                        ; $40e9: $c0

    add b                                         ; $40ea: $80
    cp a                                          ; $40eb: $bf
    ret nz                                        ; $40ec: $c0

    nop                                           ; $40ed: $00
    ldh [$90], a                                  ; $40ee: $e0 $90
    ldh [$80], a                                  ; $40f0: $e0 $80
    cp $e0                                        ; $40f2: $fe $e0
    nop                                           ; $40f4: $00
    ei                                            ; $40f5: $fb
    ret nz                                        ; $40f6: $c0

    jr nz, @-$5e                                  ; $40f7: $20 $a0

    ldh [$7d], a                                  ; $40f9: $e0 $7d
    rst $38                                       ; $40fb: $ff
    rst $28                                       ; $40fc: $ef
    rst $38                                       ; $40fd: $ff
    ld a, [hl-]                                   ; $40fe: $3a
    ld a, [$e2da]                                 ; $40ff: $fa $da $e2
    ld [$e063], sp                                ; $4102: $08 $63 $e0
    and h                                         ; $4105: $a4
    ld hl, sp-$20                                 ; $4106: $f8 $e0
    ld hl, sp-$10                                 ; $4108: $f8 $f0
    rst $38                                       ; $410a: $ff
    db $fc                                        ; $410b: $fc
    ret nc                                        ; $410c: $d0

    db $fc                                        ; $410d: $fc
    ld a, [c]                                     ; $410e: $f2
    db $fc                                        ; $410f: $fc
    ldh [$fc], a                                  ; $4110: $e0 $fc
    or b                                          ; $4112: $b0
    rst $30                                       ; $4113: $f7
    ld hl, sp-$1c                                 ; $4114: $f8 $e4
    ld hl, sp-$80                                 ; $4116: $f8 $80
    push hl                                       ; $4118: $e5
    cp [hl]                                       ; $4119: $be
    rst $38                                       ; $411a: $ff
    db $e3                                        ; $411b: $e3
    rst $38                                       ; $411c: $ff
    rst $38                                       ; $411d: $ff
    ld b, b                                       ; $411e: $40
    rst $38                                       ; $411f: $ff
    nop                                           ; $4120: $00
    rst $20                                       ; $4121: $e7
    db $fc                                        ; $4122: $fc
    rst $38                                       ; $4123: $ff
    or $ff                                        ; $4124: $f6 $ff
    ld a, a                                       ; $4126: $7f
    db $fc                                        ; $4127: $fc
    rst $38                                       ; $4128: $ff
    ld hl, sp-$02                                 ; $4129: $f8 $fe
    add sp, -$02                                  ; $412b: $e8 $fe

Jump_02d_412d:
    ld hl, sp-$08                                 ; $412d: $f8 $f8
    ldh [$0b], a                                  ; $412f: $e0 $0b
    db $f4                                        ; $4131: $f4
    rst $38                                       ; $4132: $ff
    ld a, b                                       ; $4133: $78
    ldh [$80], a                                  ; $4134: $e0 $80
    and e                                         ; $4136: $a3
    and $23                                       ; $4137: $e6 $23
    pop hl                                        ; $4139: $e1
    ldh a, [$e0]                                  ; $413a: $f0 $e0
    rst $28                                       ; $413c: $ef
    ld [$c0e3], a                                 ; $413d: $ea $e3 $c0
    ld b, b                                       ; $4140: $40
    ldh [$ea], a                                  ; $4141: $e0 $ea
    ret nc                                        ; $4143: $d0

    pop hl                                        ; $4144: $e1
    rst $08                                       ; $4145: $cf
    jp hl                                         ; $4146: $e9


    ld [bc], a                                    ; $4147: $02
    add c                                         ; $4148: $81
    and b                                         ; $4149: $a0
    rst $38                                       ; $414a: $ff
    pop bc                                        ; $414b: $c1
    add b                                         ; $414c: $80
    pop bc                                        ; $414d: $c1
    add l                                         ; $414e: $85
    jp $c3a1                                      ; $414f: $c3 $a1 $c3


    nop                                           ; $4152: $00
    ld a, a                                       ; $4153: $7f
    add e                                         ; $4154: $83
    dec b                                         ; $4155: $05
    add e                                         ; $4156: $83
    ld b, b                                       ; $4157: $40
    add c                                         ; $4158: $81
    ld b, c                                       ; $4159: $41
    add b                                         ; $415a: $80
    ret nz                                        ; $415b: $c0

    ldh [rIE], a                                  ; $415c: $e0 $ff
    ret nz                                        ; $415e: $c0

    and b                                         ; $415f: $a0
    ret nz                                        ; $4160: $c0

    ret nz                                        ; $4161: $c0

    ldh [rBCPS], a                                ; $4162: $e0 $68
    ldh a, [$f1]                                  ; $4164: $f0 $f1
    rst $38                                       ; $4166: $ff
    db $fc                                        ; $4167: $fc
    call c, Call_000_1eff                         ; $4168: $dc $ff $1e
    rst $38                                       ; $416b: $ff
    add b                                         ; $416c: $80
    ld e, $12                                     ; $416d: $1e $12
    ld a, [hl]                                    ; $416f: $7e
    call nc, Call_02d_48c2                        ; $4170: $d4 $c2 $48
    nop                                           ; $4173: $00
    ld bc, $5878                                  ; $4174: $01 $78 $58
    rst $38                                       ; $4177: $ff
    or b                                          ; $4178: $b0
    jp hl                                         ; $4179: $e9


    rst $38                                       ; $417a: $ff
    ld [bc], a                                    ; $417b: $02
    ld bc, $0300                                  ; $417c: $01 $00 $03
    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    ld b, b                                       ; $4181: $40
    ld b, b                                       ; $4182: $40

Jump_02d_4183:
    ld a, a                                       ; $4183: $7f
    nop                                           ; $4184: $00
    jr nz, jr_02d_4187                            ; $4185: $20 $00

jr_02d_4187:
    db $10                                        ; $4187: $10
    ld [$0400], sp                                ; $4188: $08 $00 $04
    or d                                          ; $418b: $b2
    ret nz                                        ; $418c: $c0

    ret nz                                        ; $418d: $c0

    and d                                         ; $418e: $a2
    pop bc                                        ; $418f: $c1
    ldh a, [rIE]                                  ; $4190: $f0 $ff
    ldh a, [rIE]                                  ; $4192: $f0 $ff
    ldh a, [rIE]                                  ; $4194: $f0 $ff
    ldh a, [rIE]                                  ; $4196: $f0 $ff
    ldh a, [$f3]                                  ; $4198: $f0 $f3
    jp $e33c                                      ; $419a: $c3 $3c $e3


    jp $fd3c                                      ; $419d: $c3 $3c $fd


    ldh [$fe], a                                  ; $41a0: $e0 $fe
    ld [c], a                                     ; $41a2: $e2
    db $f4                                        ; $41a3: $f4
    pop hl                                        ; $41a4: $e1
    dec de                                        ; $41a5: $1b
    rst $20                                       ; $41a6: $e7
    cpl                                           ; $41a7: $2f
    rst $38                                       ; $41a8: $ff
    call c, $f11e                                 ; $41a9: $dc $1e $f1
    inc a                                         ; $41ac: $3c
    db $e3                                        ; $41ad: $e3
    ld a, h                                       ; $41ae: $7c
    jp Jump_02d_7f7c                              ; $41af: $c3 $7c $7f


    jp $9ce3                                      ; $41b2: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $41b5: $c3 $bc $18


    rst $20                                       ; $41b8: $e7
    ld [c], a                                     ; $41b9: $e2
    pop hl                                        ; $41ba: $e1
    rst $38                                       ; $41bb: $ff
    ld a, [de]                                    ; $41bc: $1a
    push hl                                       ; $41bd: $e5
    ld [de], a                                    ; $41be: $12
    rst $28                                       ; $41bf: $ef
    ld e, a                                       ; $41c0: $5f
    cp b                                          ; $41c1: $b8
    ld a, a                                       ; $41c2: $7f
    ldh [rIE], a                                  ; $41c3: $e0 $ff
    di                                            ; $41c5: $f3
    adc h                                         ; $41c6: $8c
    inc de                                        ; $41c7: $13
    rst $28                                       ; $41c8: $ef
    rra                                           ; $41c9: $1f
    ld hl, sp-$04                                 ; $41ca: $f8 $fc
    ld h, e                                       ; $41cc: $63
    cp a                                          ; $41cd: $bf
    db $fc                                        ; $41ce: $fc
    add e                                         ; $41cf: $83
    db $fc                                        ; $41d0: $fc
    inc bc                                        ; $41d1: $03
    cp h                                          ; $41d2: $bc
    ld b, e                                       ; $41d3: $43
    call nz, $98e1                                ; $41d4: $c4 $e1 $98
    rst $38                                       ; $41d7: $ff
    rst $20                                       ; $41d8: $e7
    db $fc                                        ; $41d9: $fc
    ld b, e                                       ; $41da: $43
    call c, $f863                                 ; $41db: $dc $63 $f8
    daa                                           ; $41de: $27
    ld l, b                                       ; $41df: $68
    rst $38                                       ; $41e0: $ff
    or a                                          ; $41e1: $b7
    ld l, h                                       ; $41e2: $6c
    sub e                                         ; $41e3: $93
    db $fc                                        ; $41e4: $fc
    inc de                                        ; $41e5: $13
    add sp, $17                                   ; $41e6: $e8 $17
    ld hl, sp-$01                                 ; $41e8: $f8 $ff
    rrca                                          ; $41ea: $0f
    sbc $25                                       ; $41eb: $de $25
    inc a                                         ; $41ed: $3c
    rst $00                                       ; $41ee: $c7
    ld a, $c3                                     ; $41ef: $3e $c3
    ccf                                           ; $41f1: $3f
    rst $38                                       ; $41f2: $ff
    jp nz, $c13e                                  ; $41f3: $c2 $3e $c1

    jp $c33d                                      ; $41f6: $c3 $3d $c3


    dec a                                         ; $41f9: $3d
    cp e                                          ; $41fa: $bb
    rst $30                                       ; $41fb: $f7
    rst $10                                       ; $41fc: $d7
    rst $38                                       ; $41fd: $ff
    nop                                           ; $41fe: $00
    and b                                         ; $41ff: $a0
    jp hl                                         ; $4200: $e9


    jp $c3bc                                      ; $4201: $c3 $bc $c3


    cp h                                          ; $4204: $bc
    ret                                           ; $4205: $c9


    ld a, h                                       ; $4206: $7c
    jp nz, $bee0                                  ; $4207: $c2 $e0 $be

    pop hl                                        ; $420a: $e1
    ld b, e                                       ; $420b: $43
    db $f4                                        ; $420c: $f4
    ldh [$a0], a                                  ; $420d: $e0 $a0
    pop hl                                        ; $420f: $e1
    nop                                           ; $4210: $00
    rst $38                                       ; $4211: $ff
    cp a                                          ; $4212: $bf
    db $dd                                        ; $4213: $dd
    db $eb                                        ; $4214: $eb
    rst $38                                       ; $4215: $ff
    nop                                           ; $4216: $00
    ld a, [hl]                                    ; $4217: $7e
    add c                                         ; $4218: $81
    add b                                         ; $4219: $80
    ld [c], a                                     ; $421a: $e2
    db $f4                                        ; $421b: $f4
    rst $38                                       ; $421c: $ff
    rrca                                          ; $421d: $0f
    ldh a, [rNR32]                                ; $421e: $f0 $1c
    db $e3                                        ; $4220: $e3
    inc e                                         ; $4221: $1c
    di                                            ; $4222: $f3
    inc e                                         ; $4223: $1c
    db $e3                                        ; $4224: $e3
    rst $38                                       ; $4225: $ff
    inc c                                         ; $4226: $0c
    di                                            ; $4227: $f3
    ccf                                           ; $4228: $3f
    ret nc                                        ; $4229: $d0

    dec de                                        ; $422a: $1b
    db $f4                                        ; $422b: $f4
    ld d, a                                       ; $422c: $57
    rst $38                                       ; $422d: $ff
    ld e, a                                       ; $422e: $5f
    xor a                                         ; $422f: $af
    db $fc                                        ; $4230: $fc
    ld a, [hl]                                    ; $4231: $7e
    pop af                                        ; $4232: $f1
    cp h                                          ; $4233: $bc
    ld [hl], b                                    ; $4234: $70
    ldh [$fc], a                                  ; $4235: $e0 $fc
    ld [hl], b                                    ; $4237: $70
    ld [c], a                                     ; $4238: $e2
    rst $38                                       ; $4239: $ff
    ei                                            ; $423a: $fb
    rst $38                                       ; $423b: $ff
    sbc $ff                                       ; $423c: $de $ff
    push af                                       ; $423e: $f5
    rst $38                                       ; $423f: $ff
    xor d                                         ; $4240: $aa
    rst $38                                       ; $4241: $ff
    or a                                          ; $4242: $b7
    ld d, a                                       ; $4243: $57
    rst $38                                       ; $4244: $ff
    cp a                                          ; $4245: $bf
    ld h, a                                       ; $4246: $67
    and b                                         ; $4247: $a0
    di                                            ; $4248: $f3
    adc h                                         ; $4249: $8c
    ld hl, sp-$1f                                 ; $424a: $f8 $e1
    ld a, h                                       ; $424c: $7c
    db $fd                                        ; $424d: $fd
    db $e3                                        ; $424e: $e3
    ld [hl], b                                    ; $424f: $70
    rst $20                                       ; $4250: $e7
    rst $28                                       ; $4251: $ef
    rst $38                                       ; $4252: $ff
    rst $10                                       ; $4253: $d7
    ld a, a                                       ; $4254: $7f
    db $ed                                        ; $4255: $ed
    ld a, a                                       ; $4256: $7f
    rst $38                                       ; $4257: $ff
    rst $30                                       ; $4258: $f7
    ccf                                           ; $4259: $3f
    ld l, e                                       ; $425a: $6b
    cp a                                          ; $425b: $bf
    halt                                          ; $425c: $76
    sbc a                                         ; $425d: $9f
    ei                                            ; $425e: $fb
    rra                                           ; $425f: $1f
    rst $38                                       ; $4260: $ff
    push af                                       ; $4261: $f5
    rra                                           ; $4262: $1f
    ld a, [$dd0f]                                 ; $4263: $fa $0f $dd
    daa                                           ; $4266: $27
    ld a, $c7                                     ; $4267: $3e $c7
    di                                            ; $4269: $f3
    ccf                                           ; $426a: $3f
    jp $e06e                                      ; $426b: $c3 $6e $e0


    ld [hl], b                                    ; $426e: $70
    ld [c], a                                     ; $426f: $e2
    db $ed                                        ; $4270: $ed
    rst $38                                       ; $4271: $ff
    db $d3                                        ; $4272: $d3
    inc a                                         ; $4273: $3c
    dec sp                                        ; $4274: $3b
    ld a, [hl]                                    ; $4275: $7e
    add c                                         ; $4276: $81
    ld [hl], b                                    ; $4277: $70
    jp hl                                         ; $4278: $e9


    db $e3                                        ; $4279: $e3
    sbc h                                         ; $427a: $9c
    cp h                                          ; $427b: $bc
    inc d                                         ; $427c: $14
    ldh [rBCPD], a                                ; $427d: $e0 $69
    ldh [$eb], a                                  ; $427f: $e0 $eb
    jp $1063                                      ; $4281: $c3 $63 $10


    ldh [$57], a                                  ; $4284: $e0 $57
    and h                                         ; $4286: $a4
    ldh [$7d], a                                  ; $4287: $e0 $7d
    rst $38                                       ; $4289: $ff
    db $d3                                        ; $428a: $d3
    ld sp, hl                                     ; $428b: $f9
    rst $28                                       ; $428c: $ef
    ld c, d                                       ; $428d: $4a
    pop hl                                        ; $428e: $e1
    db $e4                                        ; $428f: $e4
    pop bc                                        ; $4290: $c1
    cp e                                          ; $4291: $bb
    db $f4                                        ; $4292: $f4
    ld e, e                                       ; $4293: $5b
    db $f4                                        ; $4294: $f4
    xor h                                         ; $4295: $ac
    rst $38                                       ; $4296: $ff
    di                                            ; $4297: $f3
    ld l, h                                       ; $4298: $6c
    di                                            ; $4299: $f3
    cp h                                          ; $429a: $bc
    db $e3                                        ; $429b: $e3
    ld l, h                                       ; $429c: $6c
    di                                            ; $429d: $f3
    cp e                                          ; $429e: $bb
    rst $38                                       ; $429f: $ff
    db $f4                                        ; $42a0: $f4
    db $db                                        ; $42a1: $db
    db $f4                                        ; $42a2: $f4
    cp l                                          ; $42a3: $bd
    jp $ffe7                                      ; $42a4: $c3 $e7 $ff


    cp d                                          ; $42a7: $ba
    cp a                                          ; $42a8: $bf
    rst $38                                       ; $42a9: $ff
    ld d, l                                       ; $42aa: $55
    rst $38                                       ; $42ab: $ff
    xor e                                         ; $42ac: $ab
    rst $38                                       ; $42ad: $ff
    cp $58                                        ; $42ae: $fe $58
    and b                                         ; $42b0: $a0
    rst $38                                       ; $42b1: $ff
    rst $28                                       ; $42b2: $ef
    rst $38                                       ; $42b3: $ff
    db $db                                        ; $42b4: $db
    rst $38                                       ; $42b5: $ff
    ld l, a                                       ; $42b6: $6f
    adc [hl]                                      ; $42b7: $8e
    ldh [$af], a                                  ; $42b8: $e0 $af
    ld a, a                                       ; $42ba: $7f
    or l                                          ; $42bb: $b5
    rst $08                                       ; $42bc: $cf
    ld a, a                                       ; $42bd: $7f
    rst $28                                       ; $42be: $ef
    ld a, a                                       ; $42bf: $7f
    ld d, a                                       ; $42c0: $57
    ld b, [hl]                                    ; $42c1: $46
    and b                                         ; $42c2: $a0
    ret nc                                        ; $42c3: $d0

    jp $e718                                      ; $42c4: $c3 $18 $e7


    cp $f8                                        ; $42c7: $fe $f8
    push hl                                       ; $42c9: $e5
    ld d, a                                       ; $42ca: $57
    rst $38                                       ; $42cb: $ff
    xor h                                         ; $42cc: $ac
    rst $38                                       ; $42cd: $ff
    ld [hl], h                                    ; $42ce: $74
    ei                                            ; $42cf: $fb
    cp b                                          ; $42d0: $b8
    ld l, a                                       ; $42d1: $6f
    rst $20                                       ; $42d2: $e7
    ld e, b                                       ; $42d3: $58
    rst $20                                       ; $42d4: $e7
    db $fc                                        ; $42d5: $fc
    dec b                                         ; $42d6: $05
    ldh [$98], a                                  ; $42d7: $e0 $98
    rst $20                                       ; $42d9: $e7
    ld b, b                                       ; $42da: $40
    rst $20                                       ; $42db: $e7
    rst $18                                       ; $42dc: $df
    cp d                                          ; $42dd: $ba
    rst $38                                       ; $42de: $ff
    db $ec                                        ; $42df: $ec
    di                                            ; $42e0: $f3
    sbc b                                         ; $42e1: $98
    ldh [$e0], a                                  ; $42e2: $e0 $e0
    cp d                                          ; $42e4: $ba
    rst $38                                       ; $42e5: $ff
    jp hl                                         ; $42e6: $e9


    ld l, h                                       ; $42e7: $6c
    ld hl, sp-$20                                 ; $42e8: $f8 $e0
    ret z                                         ; $42ea: $c8

    push hl                                       ; $42eb: $e5
    rst $28                                       ; $42ec: $ef
    ld h, $e0                                     ; $42ed: $26 $e0
    ld l, l                                       ; $42ef: $6d
    rst $38                                       ; $42f0: $ff
    scf                                           ; $42f1: $37
    rst $38                                       ; $42f2: $ff
    rst $38                                       ; $42f3: $ff
    dec hl                                        ; $42f4: $2b
    rst $38                                       ; $42f5: $ff
    ld d, $ff                                     ; $42f6: $16 $ff
    dec sp                                        ; $42f8: $3b
    rst $38                                       ; $42f9: $ff
    dec d                                         ; $42fa: $15
    rst $38                                       ; $42fb: $ff
    rst $38                                       ; $42fc: $ff
    ld a, [de]                                    ; $42fd: $1a
    rst $28                                       ; $42fe: $ef
    dec [hl]                                      ; $42ff: $35
    rst $08                                       ; $4300: $cf
    ld a, $c7                                     ; $4301: $3e $c7
    dec de                                        ; $4303: $1b
    rst $38                                       ; $4304: $ff
    rst $20                                       ; $4305: $e7
    ld a, [de]                                    ; $4306: $1a
    rst $20                                       ; $4307: $e7
    dec a                                         ; $4308: $3d
    jp $c33f                                      ; $4309: $c3 $3f $c3


    add hl, de                                    ; $430c: $19
    db $db                                        ; $430d: $db
    rst $20                                       ; $430e: $e7
    rst $10                                       ; $430f: $d7
    db $e4                                        ; $4310: $e4
    add b                                         ; $4311: $80
    inc l                                         ; $4312: $2c
    db $d3                                        ; $4313: $d3
    and b                                         ; $4314: $a0
    rst $20                                       ; $4315: $e7
    sbc b                                         ; $4316: $98
    rst $20                                       ; $4317: $e7
    adc d                                         ; $4318: $8a
    ld b, d                                       ; $4319: $42
    pop hl                                        ; $431a: $e1
    ret c                                         ; $431b: $d8

    and b                                         ; $431c: $a0
    ldh [$bc], a                                  ; $431d: $e0 $bc
    sbc $c0                                       ; $431f: $de $c0
    or b                                          ; $4321: $b0
    pop hl                                        ; $4322: $e1
    ld b, b                                       ; $4323: $40
    pop hl                                        ; $4324: $e1
    set 7, [hl]                                   ; $4325: $cb $fe
    ld a, b                                       ; $4327: $78
    and $b0                                       ; $4328: $e6 $b0
    rst $38                                       ; $432a: $ff
    ld d, h                                       ; $432b: $54
    ei                                            ; $432c: $fb
    and h                                         ; $432d: $a4
    ei                                            ; $432e: $fb
    ld a, b                                       ; $432f: $78
    rst $38                                       ; $4330: $ff
    rst $30                                       ; $4331: $f7
    xor b                                         ; $4332: $a8
    rst $30                                       ; $4333: $f7
    ld h, h                                       ; $4334: $64
    ei                                            ; $4335: $fb
    or h                                          ; $4336: $b4
    ei                                            ; $4337: $fb
    ret nc                                        ; $4338: $d0

    rst $38                                       ; $4339: $ff
    rst $38                                       ; $433a: $ff
    pop bc                                        ; $433b: $c1
    rst $38                                       ; $433c: $ff
    or a                                          ; $433d: $b7
    rst $38                                       ; $433e: $ff
    ld e, l                                       ; $433f: $5d
    rst $38                                       ; $4340: $ff
    ld [$3e54], a                                 ; $4341: $ea $54 $3e
    ldh [$3a], a                                  ; $4344: $e0 $3a
    add c                                         ; $4346: $81
    rst $38                                       ; $4347: $ff
    sub h                                         ; $4348: $94
    add b                                         ; $4349: $80
    ld d, a                                       ; $434a: $57
    ld a, $e0                                     ; $434b: $3e $e0
    dec [hl]                                      ; $434d: $35
    ld a, [hl-]                                   ; $434e: $3a
    ldh [$f6], a                                  ; $434f: $e0 $f6
    xor [hl]                                      ; $4351: $ae
    ret nz                                        ; $4352: $c0

    rst $38                                       ; $4353: $ff
    rst $10                                       ; $4354: $d7
    ld hl, $ff83                                  ; $4355: $21 $83 $ff
    db $dd                                        ; $4358: $dd
    rst $38                                       ; $4359: $ff
    ld [hl], a                                    ; $435a: $77
    ld e, h                                       ; $435b: $5c
    sbc h                                         ; $435c: $9c
    ret nz                                        ; $435d: $c0

    call c, $afe1                                 ; $435e: $dc $e1 $af
    rst $38                                       ; $4361: $ff
    rst $18                                       ; $4362: $df
    adc $e0                                       ; $4363: $ce $e0
    rst $18                                       ; $4365: $df
    ld hl, sp-$1a                                 ; $4366: $f8 $e6
    inc d                                         ; $4368: $14
    rst $38                                       ; $4369: $ff
    push hl                                       ; $436a: $e5
    sbc $e5                                       ; $436b: $de $e5
    ld e, a                                       ; $436d: $5f
    jp z, Jump_02d_6fe0                           ; $436e: $ca $e0 $6f

    add $e0                                       ; $4371: $c6 $e0
    ld hl, sp-$1b                                 ; $4373: $f8 $e5
    ldh [$63], a                                  ; $4375: $e0 $63
    jp z, $e1f8                                   ; $4377: $ca $f8 $e1

    ld e, a                                       ; $437a: $5f
    sub [hl]                                      ; $437b: $96
    ldh [$5f], a                                  ; $437c: $e0 $5f
    ret nc                                        ; $437e: $d0

    and $c7                                       ; $437f: $e6 $c7
    push hl                                       ; $4381: $e5
    ld l, c                                       ; $4382: $69
    rst $38                                       ; $4383: $ff
    rst $38                                       ; $4384: $ff
    call nc, $81fc                                ; $4385: $d4 $fc $81
    ldh a, [rDMA]                                 ; $4388: $f0 $46
    ldh [$8b], a                                  ; $438a: $e0 $8b
    ret nz                                        ; $438c: $c0

    ld a, a                                       ; $438d: $7f
    ld d, a                                       ; $438e: $57
    ret nz                                        ; $438f: $c0

    dec e                                         ; $4390: $1d
    add b                                         ; $4391: $80
    xor a                                         ; $4392: $af
    add b                                         ; $4393: $80
    db $fd                                        ; $4394: $fd
    xor a                                         ; $4395: $af
    ld h, b                                       ; $4396: $60
    db $fd                                        ; $4397: $fd
    jp c, $8048                                   ; $4398: $da $48 $80

    and b                                         ; $439b: $a0
    db $fc                                        ; $439c: $fc
    ld b, c                                       ; $439d: $41
    ldh a, [$0b]                                  ; $439e: $f0 $0b
    ret nz                                        ; $43a0: $c0

    ei                                            ; $43a1: $fb
    ld d, $00                                     ; $43a2: $16 $00
    ld hl, sp-$1f                                 ; $43a4: $f8 $e1
    ld a, [bc]                                    ; $43a6: $0a
    ret nz                                        ; $43a7: $c0

    rla                                           ; $43a8: $17
    nop                                           ; $43a9: $00
    cp l                                          ; $43aa: $bd
    rst $30                                       ; $43ab: $f7
    nop                                           ; $43ac: $00
    ld l, a                                       ; $43ad: $6f
    nop                                           ; $43ae: $00
    push de                                       ; $43af: $d5
    ld h, b                                       ; $43b0: $60
    nop                                           ; $43b1: $00
    ld hl, sp-$02                                 ; $43b2: $f8 $fe
    db $f4                                        ; $43b4: $f4
    rst $38                                       ; $43b5: $ff
    cp $d8                                        ; $43b6: $fe $d8
    db $fc                                        ; $43b8: $fc
    pop af                                        ; $43b9: $f1
    db $fc                                        ; $43ba: $fc
    ld [c], a                                     ; $43bb: $e2
    ld hl, sp-$2f                                 ; $43bc: $f8 $d1
    rst $38                                       ; $43be: $ff
    ld hl, sp+$63                                 ; $43bf: $f8 $63
    ldh a, [$c6]                                  ; $43c1: $f0 $c6
    ldh a, [$8b]                                  ; $43c3: $f0 $8b
    ldh [rBGP], a                                 ; $43c5: $e0 $47
    rst $38                                       ; $43c7: $ff
    ldh [$8f], a                                  ; $43c8: $e0 $8f
    ret nz                                        ; $43ca: $c0

    dec de                                        ; $43cb: $1b
    ret nz                                        ; $43cc: $c0

    cpl                                           ; $43cd: $2f
    add b                                         ; $43ce: $80
    rra                                           ; $43cf: $1f
    rst $38                                       ; $43d0: $ff
    add b                                         ; $43d1: $80
    scf                                           ; $43d2: $37
    nop                                           ; $43d3: $00
    ld e, a                                       ; $43d4: $5f
    nop                                           ; $43d5: $00
    inc h                                         ; $43d6: $24
    inc a                                         ; $43d7: $3c
    ld b, d                                       ; $43d8: $42
    cp a                                          ; $43d9: $bf
    nop                                           ; $43da: $00
    xor l                                         ; $43db: $ad
    nop                                           ; $43dc: $00
    rst $30                                       ; $43dd: $f7
    nop                                           ; $43de: $00
    ld a, l                                       ; $43df: $7d
    jp nc, $ffe2                                  ; $43e0: $d2 $e2 $ff

    push af                                       ; $43e3: $f5
    nop                                           ; $43e4: $00
    db $ec                                        ; $43e5: $ec
    pop hl                                        ; $43e6: $e1
    cp a                                          ; $43e7: $bf
    db $e4                                        ; $43e8: $e4
    ldh [$2f], a                                  ; $43e9: $e0 $2f
    add b                                         ; $43eb: $80
    cp a                                          ; $43ec: $bf
    add b                                         ; $43ed: $80
    rst $18                                       ; $43ee: $df
    ld d, a                                       ; $43ef: $57
    nop                                           ; $43f0: $00
    ccf                                           ; $43f1: $3f
    nop                                           ; $43f2: $00
    push af                                       ; $43f3: $f5
    ld a, $e0                                     ; $43f4: $3e $e0
    ld b, l                                       ; $43f6: $45
    rst $38                                       ; $43f7: $ff
    rst $38                                       ; $43f8: $ff
    nop                                           ; $43f9: $00
    rst $00                                       ; $43fa: $c7
    stop                                          ; $43fb: $10 $00

Jump_02d_43fd:
    ld l, l                                       ; $43fd: $6d
    nop                                           ; $43fe: $00
    cp e                                          ; $43ff: $bb

Call_02d_4400:
    nop                                           ; $4400: $00

Call_02d_4401:
    rst $38                                       ; $4401: $ff
    rst $28                                       ; $4402: $ef
    nop                                           ; $4403: $00
    rst $20                                       ; $4404: $e7
    ldh a, [rSCX]                                 ; $4405: $f0 $43
    ldh a, [$e5]                                  ; $4407: $f0 $e5
    ldh a, [rIE]                                  ; $4409: $f0 $ff
    ld b, a                                       ; $440b: $47
    ldh [$8a], a                                  ; $440c: $e0 $8a
    ldh [$c7], a                                  ; $440e: $e0 $c7
    ldh [$a5], a                                  ; $4410: $e0 $a5
    ldh a, [$eb]                                  ; $4412: $f0 $eb
    jp $30f0                                      ; $4414: $c3 $f0 $30


    ld h, e                                       ; $4417: $63
    rst $18                                       ; $4418: $df
    ld l, $60                                     ; $4419: $2e $60
    xor l                                         ; $441b: $ad
    rst $38                                       ; $441c: $ff
    ld b, d                                       ; $441d: $42
    rst $38                                       ; $441e: $ff
    rst $38                                       ; $441f: $ff
    nop                                           ; $4420: $00
    jp $fffc                                      ; $4421: $c3 $fc $ff


    ld a, [$fcff]                                 ; $4424: $fa $ff $fc
    sbc $8c                                       ; $4427: $de $8c
    ldh [$f8], a                                  ; $4429: $e0 $f8
    cp $ec                                        ; $442b: $fe $ec
    cp $f6                                        ; $442d: $fe $f6
    ldh [rIE], a                                  ; $442f: $e0 $ff
    rst $38                                       ; $4431: $ff
    rst $38                                       ; $4432: $ff
    add b                                         ; $4433: $80
    ccf                                           ; $4434: $3f
    add b                                         ; $4435: $80
    ld a, a                                       ; $4436: $7f
    ret nz                                        ; $4437: $c0

    sbc a                                         ; $4438: $9f
    ret nz                                        ; $4439: $c0

    ld c, a                                       ; $443a: $4f
    rst $38                                       ; $443b: $ff
    ldh [$87], a                                  ; $443c: $e0 $87
    ldh a, [$d5]                                  ; $443e: $f0 $d5
    db $fc                                        ; $4440: $fc
    ld l, c                                       ; $4441: $69
    rst $38                                       ; $4442: $ff
    ccf                                           ; $4443: $3f
    rst $38                                       ; $4444: $ff
    nop                                           ; $4445: $00
    rrca                                          ; $4446: $0f
    ret nz                                        ; $4447: $c0

    ld b, e                                       ; $4448: $43
    ldh a, [$a0]                                  ; $4449: $f0 $a0
    db $fc                                        ; $444b: $fc
    db $f4                                        ; $444c: $f4
    add $4a                                       ; $444d: $c6 $4a
    ldh [rIE], a                                  ; $444f: $e0 $ff
    rst $38                                       ; $4451: $ff
    ld b, d                                       ; $4452: $42
    ldh [$88], a                                  ; $4453: $e0 $88
    db $e4                                        ; $4455: $e4
    add sp, -$1b                                  ; $4456: $e8 $e5
    db $e3                                        ; $4458: $e3
    rrca                                          ; $4459: $0f
    rst $38                                       ; $445a: $ff
    and $0f                                       ; $445b: $e6 $0f
    rr a                                          ; $445d: $cb $1f
    rst $00                                       ; $445f: $c7
    rra                                           ; $4460: $1f
    adc a                                         ; $4461: $8f
    ccf                                           ; $4462: $3f
    rst $30                                       ; $4463: $f7
    sbc e                                         ; $4464: $9b
    ccf                                           ; $4465: $3f
    cpl                                           ; $4466: $2f
    db $fc                                        ; $4467: $fc
    ld b, b                                       ; $4468: $40
    cp $00                                        ; $4469: $fe $00
    cp $00                                        ; $446b: $fe $00
    rst $38                                       ; $446d: $ff
    db $fc                                        ; $446e: $fc
    ld bc, $01fc                                  ; $446f: $01 $fc $01
    ld hl, sp+$03                                 ; $4472: $f8 $03

jr_02d_4474:
    ld sp, hl                                     ; $4474: $f9
    inc bc                                        ; $4475: $03
    rst $08                                       ; $4476: $cf
    ld a, [c]                                     ; $4477: $f2
    rlca                                          ; $4478: $07
    pop af                                        ; $4479: $f1
    rlca                                          ; $447a: $07
    ret nc                                        ; $447b: $d0

    push hl                                       ; $447c: $e5
    inc h                                         ; $447d: $24
    pop hl                                        ; $447e: $e1
    db $d3                                        ; $447f: $d3
    nop                                           ; $4480: $00
    ld e, a                                       ; $4481: $5f
    ld b, d                                       ; $4482: $42
    ld a, [hl]                                    ; $4483: $7e
    cp $00                                        ; $4484: $fe $00
    rst $38                                       ; $4486: $ff
    ld [c], a                                     ; $4487: $e2
    ldh [$fe], a                                  ; $4488: $e0 $fe
    sbc $e0                                       ; $448a: $de $e0
    rst $08                                       ; $448c: $cf
    db $fc                                        ; $448d: $fc
    ld bc, $01ff                                  ; $448e: $01 $ff $01
    ld a, [c]                                     ; $4491: $f2
    ldh [$0a], a                                  ; $4492: $e0 $0a
    ld [c], a                                     ; $4494: $e2
    inc a                                         ; $4495: $3c
    nop                                           ; $4496: $00
    rst $30                                       ; $4497: $f7
    nop                                           ; $4498: $00
    rst $00                                       ; $4499: $c7
    ld b, l                                       ; $449a: $45
    add h                                         ; $449b: $84
    ret nz                                        ; $449c: $c0

    push af                                       ; $449d: $f5
    rst $38                                       ; $449e: $ff
    rst $20                                       ; $449f: $e7
    rrca                                          ; $44a0: $0f
    rst $28                                       ; $44a1: $ef
    ld [c], a                                     ; $44a2: $e2
    rrca                                          ; $44a3: $0f
    rst $30                                       ; $44a4: $f7
    rrca                                          ; $44a5: $0f
    add $e1                                       ; $44a6: $c6 $e1
    di                                            ; $44a8: $f3
    rlca                                          ; $44a9: $07
    push hl                                       ; $44aa: $e5

Jump_02d_44ab:
    cp a                                          ; $44ab: $bf
    rrca                                          ; $44ac: $0f
    db $e3                                        ; $44ad: $e3
    rrca                                          ; $44ae: $0f
    jr jr_02d_4474                                ; $44af: $18 $c3

    ld b, d                                       ; $44b1: $42
    ld d, [hl]                                    ; $44b2: $56
    ldh [$f7], a                                  ; $44b3: $e0 $f7
    ld [$c676], a                                 ; $44b5: $ea $76 $c6
    ccf                                           ; $44b8: $3f
    ld a, [hl]                                    ; $44b9: $7e
    ret nz                                        ; $44ba: $c0

    ccf                                           ; $44bb: $3f
    add b                                         ; $44bc: $80
    and b                                         ; $44bd: $a0
    sbc a                                         ; $44be: $9f
    ld a, a                                       ; $44bf: $7f
    scf                                           ; $44c0: $37
    db $fd                                        ; $44c1: $fd
    ld a, a                                       ; $44c2: $7f
    or $e0                                        ; $44c3: $f6 $e0
    rst $38                                       ; $44c5: $ff
    ld [$5500], sp                                ; $44c6: $08 $00 $55
    nop                                           ; $44c9: $00
    cp [hl]                                       ; $44ca: $be
    ld [hl], h                                    ; $44cb: $74
    ldh a, [$c0]                                  ; $44cc: $f0 $c0
    ld l, b                                       ; $44ce: $68
    push hl                                       ; $44cf: $e5
    ld e, a                                       ; $44d0: $5f
    db $fc                                        ; $44d1: $fc
    ret nz                                        ; $44d2: $c0

    ld a, a                                       ; $44d3: $7f
    nop                                           ; $44d4: $00
    xor a                                         ; $44d5: $af
    db $fc                                        ; $44d6: $fc
    ldh [$9d], a                                  ; $44d7: $e0 $9d
    ccf                                           ; $44d9: $3f
    db $f4                                        ; $44da: $f4
    ld [c], a                                     ; $44db: $e2
    ld de, $2a80                                  ; $44dc: $11 $80 $2a
    call nc, $f0c0                                ; $44df: $d4 $c0 $f0
    push hl                                       ; $44e2: $e5
    cp a                                          ; $44e3: $bf
    ldh a, [$fa]                                  ; $44e4: $f0 $fa
    db $e4                                        ; $44e6: $e4
    ld l, d                                       ; $44e7: $6a
    jp hl                                         ; $44e8: $e9


    db $f4                                        ; $44e9: $f4
    db $eb                                        ; $44ea: $eb
    nop                                           ; $44eb: $00
    add e                                         ; $44ec: $83
    dec de                                        ; $44ed: $1b
    db $e4                                        ; $44ee: $e4
    dec d                                         ; $44ef: $15
    xor $ff                                       ; $44f0: $ee $ff
    dec l                                         ; $44f2: $2d
    ret nc                                        ; $44f3: $d0

    dec b                                         ; $44f4: $05
    ld a, [$c034]                                 ; $44f5: $fa $34 $c0
    ld d, a                                       ; $44f8: $57
    xor d                                         ; $44f9: $aa
    rst $18                                       ; $44fa: $df
    and h                                         ; $44fb: $a4
    ld a, [bc]                                    ; $44fc: $0a
    ld c, e                                       ; $44fd: $4b
    add b                                         ; $44fe: $80
    ld b, d                                       ; $44ff: $42
    ldh [rNR41], a                                ; $4500: $e0 $20
    dec e                                         ; $4502: $1d
    ld [bc], a                                    ; $4503: $02
    rst $38                                       ; $4504: $ff
    cp h                                          ; $4505: $bc
    inc bc                                        ; $4506: $03
    sbc b                                         ; $4507: $98
    ld h, a                                       ; $4508: $67
    rla                                           ; $4509: $17
    xor d                                         ; $450a: $aa
    db $e4                                        ; $450b: $e4
    ld a, [bc]                                    ; $450c: $0a
    rst $38                                       ; $450d: $ff
    adc e                                         ; $450e: $8b
    jr nz, @+$24                                  ; $450f: $20 $22

    nop                                           ; $4511: $00
    db $dd                                        ; $4512: $dd
    nop                                           ; $4513: $00
    cp l                                          ; $4514: $bd
    ld b, d                                       ; $4515: $42
    cp $08                                        ; $4516: $fe $08
    and c                                         ; $4518: $a1
    ld d, $a9                                     ; $4519: $16 $a9
    add sp, $03                                   ; $451b: $e8 $03
    add l                                         ; $451d: $85
    ld [hl+], a                                   ; $451e: $22
    ld a, [hl+]                                   ; $451f: $2a
    rst $38                                       ; $4520: $ff
    rlca                                          ; $4521: $07
    db $db                                        ; $4522: $db
    nop                                           ; $4523: $00
    cp h                                          ; $4524: $bc
    ld b, e                                       ; $4525: $43
    ccf                                           ; $4526: $3f
    ret nz                                        ; $4527: $c0

    add hl, de                                    ; $4528: $19
    ei                                            ; $4529: $fb

jr_02d_452a:
    and $18                                       ; $452a: $e6 $18
    ld h, b                                       ; $452c: $60
    and b                                         ; $452d: $a0
    inc a                                         ; $452e: $3c
    jp $e7b8                                      ; $452f: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $4532: $08 $ff $f7
    call z, $90fb                                 ; $4535: $cc $fb $90
    ld l, a                                       ; $4538: $6f
    ld a, [hl+]                                   ; $4539: $2a
    rst $38                                       ; $453a: $ff
    rra                                           ; $453b: $1f
    rst $38                                       ; $453c: $ff
    ldh [$d0], a                                  ; $453d: $e0 $d0
    ld bc, $a15a                                  ; $453f: $01 $5a $a1
    ld c, b                                       ; $4542: $48
    rlca                                          ; $4543: $07
    ld hl, sp-$09                                 ; $4544: $f8 $f7
    rlca                                          ; $4546: $07
    inc e                                         ; $4547: $1c
    inc bc                                        ; $4548: $03
    ret nz                                        ; $4549: $c0

    pop hl                                        ; $454a: $e1
    or b                                          ; $454b: $b0
    rrca                                          ; $454c: $0f
    call z, $ff3f                                 ; $454d: $cc $3f $ff
    ld a, c                                       ; $4550: $79
    add [hl]                                      ; $4551: $86
    ld [de], a                                    ; $4552: $12
    rst $28                                       ; $4553: $ef
    dec de                                        ; $4554: $1b
    ldh [$3c], a                                  ; $4555: $e0 $3c
    jp $d0fe                                      ; $4557: $c3 $fe $d0


    pop hl                                        ; $455a: $e1
    dec a                                         ; $455b: $3d
    ret nz                                        ; $455c: $c0

    ld c, a                                       ; $455d: $4f
    and b                                         ; $455e: $a0
    jr nc, jr_02d_452a                            ; $455f: $30 $c9

    ld d, d                                       ; $4561: $52
    rst $38                                       ; $4562: $ff
    and c                                         ; $4563: $a1
    ld l, l                                       ; $4564: $6d
    jp nz, $c934                                  ; $4565: $c2 $34 $c9

    ld c, b                                       ; $4568: $48
    or e                                          ; $4569: $b3
    ld a, [de]                                    ; $456a: $1a
    rst $38                                       ; $456b: $ff
    push hl                                       ; $456c: $e5
    dec d                                         ; $456d: $15
    cp a                                          ; $456e: $bf
    adc $3f                                       ; $456f: $ce $3f
    ld d, [hl]                                    ; $4571: $56
    cp a                                          ; $4572: $bf
    ld l, l                                       ; $4573: $6d
    rst $38                                       ; $4574: $ff
    cp a                                          ; $4575: $bf
    sbc [hl]                                      ; $4576: $9e
    ld a, a                                       ; $4577: $7f
    ld l, d                                       ; $4578: $6a
    cp a                                          ; $4579: $bf
    dec e                                         ; $457a: $1d
    rst $38                                       ; $457b: $ff
    ld c, [hl]                                    ; $457c: $4e
    rst $38                                       ; $457d: $ff
    cp a                                          ; $457e: $bf
    dec [hl]                                      ; $457f: $35
    ret nz                                        ; $4580: $c0

    ld c, [hl]                                    ; $4581: $4e
    and c                                         ; $4582: $a1
    ld [hl-], a                                   ; $4583: $32
    ret                                           ; $4584: $c9


    ld d, a                                       ; $4585: $57
    rst $38                                       ; $4586: $ff
    and d                                         ; $4587: $a2
    ld a, a                                       ; $4588: $7f
    push bc                                       ; $4589: $c5
    ld [hl-], a                                   ; $458a: $32
    rst $08                                       ; $458b: $cf
    ld d, l                                       ; $458c: $55
    cp a                                          ; $458d: $bf
    dec hl                                        ; $458e: $2b
    sbc $90                                       ; $458f: $de $90
    add d                                         ; $4591: $82
    cp h                                          ; $4592: $bc
    ld b, e                                       ; $4593: $43
    ld e, b                                       ; $4594: $58
    and a                                         ; $4595: $a7
    nop                                           ; $4596: $00
    and b                                         ; $4597: $a0
    db $e3                                        ; $4598: $e3
    call nz, $f3ff                                ; $4599: $c4 $ff $f3
    or h                                          ; $459c: $b4
    db $eb                                        ; $459d: $eb
    sbc d                                         ; $459e: $9a
    ld a, a                                       ; $459f: $7f
    rst $28                                       ; $45a0: $ef
    ccf                                           ; $45a1: $3f
    ld a, [hl-]                                   ; $45a2: $3a
    rst $38                                       ; $45a3: $ff
    rst $18                                       ; $45a4: $df
    ld c, l                                       ; $45a5: $4d
    rst $38                                       ; $45a6: $ff
    or h                                          ; $45a7: $b4
    rst $38                                       ; $45a8: $ff
    ld a, d                                       ; $45a9: $7a
    rst $38                                       ; $45aa: $ff
    xor b                                         ; $45ab: $a8
    ei                                            ; $45ac: $fb
    rst $38                                       ; $45ad: $ff
    ld [hl], h                                    ; $45ae: $74
    cp [hl]                                       ; $45af: $be
    add b                                         ; $45b0: $80
    inc hl                                        ; $45b1: $23
    rst $18                                       ; $45b2: $df
    dec b                                         ; $45b3: $05
    rst $38                                       ; $45b4: $ff
    ld a, [de]                                    ; $45b5: $1a
    cp $70                                        ; $45b6: $fe $70
    add [hl]                                      ; $45b8: $86
    call nc, $bbff                                ; $45b9: $d4 $ff $bb
    cp $74                                        ; $45bc: $fe $74
    rst $38                                       ; $45be: $ff
    xor [hl]                                      ; $45bf: $ae

Jump_02d_45c0:
    ld a, [$209a]                                 ; $45c0: $fa $9a $20
    xor [hl]                                      ; $45c3: $ae
    ld a, [hl-]                                   ; $45c4: $3a
    add b                                         ; $45c5: $80

Jump_02d_45c6:
    inc bc                                        ; $45c6: $03
    rst $38                                       ; $45c7: $ff
    ld d, d                                       ; $45c8: $52
    db $fc                                        ; $45c9: $fc
    xor d                                         ; $45ca: $aa
    xor a                                         ; $45cb: $af
    db $fd                                        ; $45cc: $fd
    ld [hl], a                                    ; $45cd: $77
    ei                                            ; $45ce: $fb
    and d                                         ; $45cf: $a2
    or b                                          ; $45d0: $b0
    ld h, b                                       ; $45d1: $60
    dec c                                         ; $45d2: $0d
    xor h                                         ; $45d3: $ac
    ld h, b                                       ; $45d4: $60
    ld a, [bc]                                    ; $45d5: $0a
    rst $38                                       ; $45d6: $ff
    rst $38                                       ; $45d7: $ff
    ld h, a                                       ; $45d8: $67
    adc b                                         ; $45d9: $88
    call Call_000_32bb                            ; $45da: $cd $bb $32
    rst $28                                       ; $45dd: $ef
    db $eb                                        ; $45de: $eb
    ld a, [$e0de]                                 ; $45df: $fa $de $e0
    cp $1c                                        ; $45e2: $fe $1c
    add b                                         ; $45e4: $80
    cp d                                          ; $45e5: $ba
    rst $38                                       ; $45e6: $ff
    daa                                           ; $45e7: $27
    ret z                                         ; $45e8: $c8

    ld l, l                                       ; $45e9: $6d
    rst $38                                       ; $45ea: $ff
    sbc e                                         ; $45eb: $9b
    ld [hl+], a                                   ; $45ec: $22
    rst $38                                       ; $45ed: $ff

jr_02d_45ee:
    ld a, e                                       ; $45ee: $7b
    rst $38                                       ; $45ef: $ff
    or [hl]                                       ; $45f0: $b6
    rst $38                                       ; $45f1: $ff
    ld e, [hl]                                    ; $45f2: $5e
    ei                                            ; $45f3: $fb
    rst $38                                       ; $45f4: $ff
    cp e                                          ; $45f5: $bb
    add h                                         ; $45f6: $84
    ld h, b                                       ; $45f7: $60
    ld c, $bf                                     ; $45f8: $0e $bf
    db $dd                                        ; $45fa: $dd
    ccf                                           ; $45fb: $3f
    ld l, [hl]                                    ; $45fc: $6e
    cp e                                          ; $45fd: $bb
    cp a                                          ; $45fe: $bf
    ld d, a                                       ; $45ff: $57
    ld [hl], b                                    ; $4600: $70

jr_02d_4601:
    ldh [$6d], a                                  ; $4601: $e0 $6d
    cp a                                          ; $4603: $bf
    ld e, $70                                     ; $4604: $1e $70
    ldh [rHDMA2], a                               ; $4606: $e0 $52
    rst $38                                       ; $4608: $ff
    db $fd                                        ; $4609: $fd
    xor $f9                                       ; $460a: $ee $f9
    ld c, c                                       ; $460c: $49
    or $a7                                        ; $460d: $f6 $a7
    ld hl, sp+$47                                 ; $460f: $f8 $47
    rst $38                                       ; $4611: $ff
    ldh a, [$b4]                                  ; $4612: $f0 $b4
    ret                                           ; $4614: $c9


    ld c, d                                       ; $4615: $4a
    or c                                          ; $4616: $b1
    dec de                                        ; $4617: $1b
    db $e4                                        ; $4618: $e4
    rst $38                                       ; $4619: $ff
    rst $38                                       ; $461a: $ff
    rra                                           ; $461b: $1f
    ld c, d                                       ; $461c: $4a
    cp a                                          ; $461d: $bf
    ld l, c                                       ; $461e: $69
    sub a                                         ; $461f: $97
    ld [de], a                                    ; $4620: $12
    rst $28                                       ; $4621: $ef
    add hl, de                                    ; $4622: $19
    rst $30                                       ; $4623: $f7
    ld [c], a                                     ; $4624: $e2
    jr c, jr_02d_45ee                             ; $4625: $38 $c7

    nop                                           ; $4627: $00
    pop hl                                        ; $4628: $e1
    dec hl                                        ; $4629: $2b
    ret nc                                        ; $462a: $d0

    xor d                                         ; $462b: $aa
    ld b, c                                       ; $462c: $41
    cp a                                          ; $462d: $bf
    cp $01                                        ; $462e: $fe $01
    xor b                                         ; $4630: $a8
    rlca                                          ; $4631: $07
    ld a, b                                       ; $4632: $78
    add a                                         ; $4633: $87
    db $10                                        ; $4634: $10
    db $e3                                        ; $4635: $e3

jr_02d_4636:
    and c                                         ; $4636: $a1
    rst $38                                       ; $4637: $ff
    ld e, $8c                                     ; $4638: $1e $8c
    ld a, d                                       ; $463a: $7a
    ld d, a                                       ; $463b: $57
    xor b                                         ; $463c: $a8
    jr c, jr_02d_4601                             ; $463d: $38 $c2

    dec c                                         ; $463f: $0d
    rst $30                                       ; $4640: $f7
    ldh a, [$3d]                                  ; $4641: $f0 $3d
    jp nz, $61d8                                  ; $4643: $c2 $d8 $61

    cpl                                           ; $4646: $2f
    sub b                                         ; $4647: $90
    ld sp, hl                                     ; $4648: $f9
    nop                                           ; $4649: $00
    rst $38                                       ; $464a: $ff
    adc d                                         ; $464b: $8a
    ld hl, $0728                                  ; $464c: $21 $28 $07
    ret c                                         ; $464f: $d8

    rlca                                          ; $4650: $07
    cp h                                          ; $4651: $bc
    ld b, e                                       ; $4652: $43
    db $fc                                        ; $4653: $fc
    ret z                                         ; $4654: $c8

    ld h, c                                       ; $4655: $61
    add hl, sp                                    ; $4656: $39
    and e                                         ; $4657: $a3
    ld [bc], a                                    ; $4658: $02
    db $fd                                        ; $4659: $fd
    ld bc, $0dfe                                  ; $465a: $01 $fe $0d
    ldh a, [rIE]                                  ; $465d: $f0 $ff
    ld [bc], a                                    ; $465f: $02
    db $fd                                        ; $4660: $fd
    ld a, [hl+]                                   ; $4661: $2a
    ret nc                                        ; $4662: $d0

    dec hl                                        ; $4663: $2b
    sub $f5                                       ; $4664: $d6 $f5
    ld a, [bc]                                    ; $4666: $0a
    rst $38                                       ; $4667: $ff
    ld e, a                                       ; $4668: $5f
    add b                                         ; $4669: $80
    xor c                                         ; $466a: $a9
    ld [bc], a                                    ; $466b: $02
    ld a, a                                       ; $466c: $7f
    add b                                         ; $466d: $80
    db $10                                        ; $466e: $10
    rrca                                          ; $466f: $0f
    rst $38                                       ; $4670: $ff
    ldh [$1f], a                                  ; $4671: $e0 $1f
    add b                                         ; $4673: $80
    ld a, a                                       ; $4674: $7f
    ld d, a                                       ; $4675: $57
    xor d                                         ; $4676: $aa
    push af                                       ; $4677: $f5
    ld a, [bc]                                    ; $4678: $0a
    cp a                                          ; $4679: $bf
    sbc a                                         ; $467a: $9f
    jr nz, jr_02d_4636                            ; $467b: $20 $b9

    ld [bc], a                                    ; $467d: $02
    ld h, a                                       ; $467e: $67
    sbc b                                         ; $467f: $98
    rrca                                          ; $4680: $0f
    and e                                         ; $4681: $a3
    ld c, d                                       ; $4682: $4a
    rst $38                                       ; $4683: $ff
    or l                                          ; $4684: $b5
    db $f4                                        ; $4685: $f4
    dec bc                                        ; $4686: $0b
    sbc l                                         ; $4687: $9d
    ld [hl+], a                                   ; $4688: $22
    cp d                                          ; $4689: $ba
    rlca                                          ; $468a: $07
    ld a, e                                       ; $468b: $7b
    ld e, a                                       ; $468c: $5f
    add b                                         ; $468d: $80
    inc c                                         ; $468e: $0c
    di                                            ; $468f: $f3
    rlca                                          ; $4690: $07
    ld hl, sp-$41                                 ; $4691: $f8 $bf
    and c                                         ; $4693: $a1
    add b                                         ; $4694: $80
    sbc [hl]                                      ; $4695: $9e
    nop                                           ; $4696: $00
    db $ed                                        ; $4697: $ed
    and b                                         ; $4698: $a0
    sbc d                                         ; $4699: $9a
    nop                                           ; $469a: $00
    ld l, b                                       ; $469b: $68

Jump_02d_469c:
    rst $38                                       ; $469c: $ff
    sub b                                         ; $469d: $90
    pop bc                                        ; $469e: $c1
    rla                                           ; $469f: $17
    add sp, -$2f                                  ; $46a0: $e8 $d1
    rst $20                                       ; $46a2: $e7
    nop                                           ; $46a3: $00
    ld l, $d1                                     ; $46a4: $2e $d1
    add b                                         ; $46a6: $80
    pop hl                                        ; $46a7: $e1
    ret nz                                        ; $46a8: $c0

    db $e3                                        ; $46a9: $e3
    or b                                          ; $46aa: $b0
    rrca                                          ; $46ab: $0f
    add $fc                                       ; $46ac: $c6 $fc
    sub b                                         ; $46ae: $90
    call nz, $e3d0                                ; $46af: $c4 $d0 $e3
    dec a                                         ; $46b2: $3d
    ret nz                                        ; $46b3: $c0

    ld e, a                                       ; $46b4: $5f
    and b                                         ; $46b5: $a0
    inc [hl]                                      ; $46b6: $34
    ret                                           ; $46b7: $c9


    rst $10                                       ; $46b8: $d7
    ld e, d                                       ; $46b9: $5a
    and c                                         ; $46ba: $a1
    ld a, l                                       ; $46bb: $7d
    sub b                                         ; $46bc: $90
    ret nz                                        ; $46bd: $c0

    ld c, h                                       ; $46be: $4c
    sub b                                         ; $46bf: $90
    ret nz                                        ; $46c0: $c0

    ld d, l                                       ; $46c1: $55
    cp a                                          ; $46c2: $bf

Jump_02d_46c3:
    ei                                            ; $46c3: $fb
    adc [hl]                                      ; $46c4: $8e

Call_02d_46c5:
    ld a, a                                       ; $46c5: $7f
    sub b                                         ; $46c6: $90
    jp z, Jump_02d_5ac8                           ; $46c7: $ca $c8 $5a

    and c                                         ; $46ca: $a1
    inc a                                         ; $46cb: $3c
    jp Jump_02d_537f                              ; $46cc: $c3 $7f $53


    xor [hl]                                      ; $46cf: $ae
    ld [hl], a                                    ; $46d0: $77
    call $bf42                                    ; $46d1: $cd $42 $bf
    dec d                                         ; $46d4: $15
    ld l, d                                       ; $46d5: $6a
    ld h, b                                       ; $46d6: $60
    cp $6b                                        ; $46d7: $fe $6b
    add c                                         ; $46d9: $81
    ret nz                                        ; $46da: $c0

    ccf                                           ; $46db: $3f
    ld b, b                                       ; $46dc: $40
    cp a                                          ; $46dd: $bf
    ld b, b                                       ; $46de: $40
    rst $38                                       ; $46df: $ff
    or b                                          ; $46e0: $b0
    cp a                                          ; $46e1: $bf
    rst $28                                       ; $46e2: $ef
    call z, $a4f3                                 ; $46e3: $cc $f3 $a4
    ei                                            ; $46e6: $fb
    dec d                                         ; $46e7: $15
    cp h                                          ; $46e8: $bc
    ret nz                                        ; $46e9: $c0

    dec b                                         ; $46ea: $05
    xor e                                         ; $46eb: $ab
    rst $38                                       ; $46ec: $ff
    ld [bc], a                                    ; $46ed: $02
    add hl, hl                                    ; $46ee: $29
    and [hl]                                      ; $46ef: $a6
    ld d, e                                       ; $46f0: $53
    or b                                          ; $46f1: $b0
    ret nz                                        ; $46f2: $c0

    ld [hl], l                                    ; $46f3: $75
    or b                                          ; $46f4: $b0
    ret z                                         ; $46f5: $c8

    ld [hl], a                                    ; $46f6: $77
    xor e                                         ; $46f7: $ab
    adc b                                         ; $46f8: $88
    call z, $cab0                                 ; $46f9: $cc $b0 $ca
    scf                                           ; $46fc: $37
    or b                                          ; $46fd: $b0
    call z, $b04e                                 ; $46fe: $cc $4e $b0
    adc $ae                                       ; $4701: $ce $ae
    db $db                                        ; $4703: $db
    ld sp, hl                                     ; $4704: $f9
    ld a, c                                       ; $4705: $79
    or b                                          ; $4706: $b0
    ret z                                         ; $4707: $c8

    cp a                                          ; $4708: $bf
    ld e, a                                       ; $4709: $5f
    or b                                          ; $470a: $b0
    jp $e21d                                      ; $470b: $c3 $1d $e2


    ei                                            ; $470e: $fb
    ld [$20f7], sp                                ; $470f: $08 $f7 $20
    pop hl                                        ; $4712: $e1
    dec l                                         ; $4713: $2d
    ret nc                                        ; $4714: $d0

    sbc d                                         ; $4715: $9a
    ld h, c                                       ; $4716: $61
    ld a, [hl]                                    ; $4717: $7e
    cp e                                          ; $4718: $bb
    add c                                         ; $4719: $81
    add sp, $30                                   ; $471a: $e8 $30
    and $61                                       ; $471c: $e6 $61
    ld e, $95                                     ; $471e: $1e $95
    or b                                          ; $4720: $b0
    ret nz                                        ; $4721: $c0

    add hl, sp                                    ; $4722: $39
    rst $30                                       ; $4723: $f7
    jp nz, $f00f                                  ; $4724: $c2 $0f $f0

    rst $38                                       ; $4727: $ff
    ld h, e                                       ; $4728: $63
    ld d, a                                       ; $4729: $57
    xor b                                         ; $472a: $a8
    ei                                            ; $472b: $fb
    nop                                           ; $472c: $00
    cp a                                          ; $472d: $bf
    sbc [hl]                                      ; $472e: $9e
    ld hl, $07a8                                  ; $472f: $21 $a8 $07
    ld [hl], b                                    ; $4732: $70
    adc a                                         ; $4733: $8f
    rst $28                                       ; $4734: $ef
    ld h, e                                       ; $4735: $63
    inc c                                         ; $4736: $0c
    rst $38                                       ; $4737: $ff
    rst $30                                       ; $4738: $f7
    reti                                          ; $4739: $d9


    ld l, a                                       ; $473a: $6f
    ld [$63ff], sp                                ; $473b: $08 $ff $63
    cp l                                          ; $473e: $bd
    sub $ff                                       ; $473f: $d6 $ff
    ld l, e                                       ; $4741: $6b
    ld l, d                                       ; $4742: $6a

Jump_02d_4743:
    rst $18                                       ; $4743: $df
    jr nc, @-$1f                                  ; $4744: $30 $df

    ld d, e                                       ; $4746: $53
    db $fd                                        ; $4747: $fd
    nop                                           ; $4748: $00
    rst $38                                       ; $4749: $ff
    rst $38                                       ; $474a: $ff
    ld e, l                                       ; $474b: $5d
    rst $20                                       ; $474c: $e7
    ld [$40ff], sp                                ; $474d: $08 $ff $40
    cp a                                          ; $4750: $bf
    ld l, h                                       ; $4751: $6c
    ei                                            ; $4752: $fb
    or a                                          ; $4753: $b7
    ld c, b                                       ; $4754: $48
    call c, Call_02d_40c0                         ; $4755: $dc $c0 $40
    rst $38                                       ; $4758: $ff
    inc b                                         ; $4759: $04
    ei                                            ; $475a: $fb
    ld e, d                                       ; $475b: $5a
    ld sp, hl                                     ; $475c: $f9
    and l                                         ; $475d: $a5
    dec sp                                        ; $475e: $3b
    add b                                         ; $475f: $80
    ld b, c                                       ; $4760: $41
    nop                                           ; $4761: $00
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    ld e, d                                       ; $4764: $5a
    and l                                         ; $4765: $a5
    jr nz, @+$01                                  ; $4766: $20 $ff

    rst $18                                       ; $4768: $df
    inc h                                         ; $4769: $24
    rst $20                                       ; $476a: $e7
    ld h, [hl]                                    ; $476b: $66
    and l                                         ; $476c: $a5
    dec h                                         ; $476d: $25
    and $66                                       ; $476e: $e6 $66
    rst $38                                       ; $4770: $ff
    and l                                         ; $4771: $a5
    ld h, [hl]                                    ; $4772: $66
    and l                                         ; $4773: $a5
    and h                                         ; $4774: $a4
    ld h, a                                       ; $4775: $67
    ld h, [hl]                                    ; $4776: $66
    and l                                         ; $4777: $a5
    inc h                                         ; $4778: $24
    cp $70                                        ; $4779: $fe $70
    ret nz                                        ; $477b: $c0

    ld bc, $05fe                                  ; $477c: $01 $fe $05
    ei                                            ; $477f: $fb
    ld e, $e6                                     ; $4780: $1e $e6
    jr @+$01                                      ; $4782: $18 $ff

    add sp, $30                                   ; $4784: $e8 $30
    ret nc                                        ; $4786: $d0

    ld de, $63f3                                  ; $4787: $11 $f3 $63
    and d                                         ; $478a: $a2
    ld d, l                                       ; $478b: $55
    ei                                            ; $478c: $fb
    nop                                           ; $478d: $00
    cp d                                          ; $478e: $ba
    sbc [hl]                                      ; $478f: $9e
    add b                                         ; $4790: $80
    xor e                                         ; $4791: $ab
    nop                                           ; $4792: $00
    ld e, l                                       ; $4793: $5d
    nop                                           ; $4794: $00
    ld [$96fa], a                                 ; $4795: $ea $fa $96
    add b                                         ; $4798: $80
    xor [hl]                                      ; $4799: $ae
    sub d                                         ; $479a: $92
    add b                                         ; $479b: $80
    adc d                                         ; $479c: $8a
    nop                                           ; $479d: $00
    ld d, h                                       ; $479e: $54
    nop                                           ; $479f: $00
    xor d                                         ; $47a0: $aa
    cp $f0                                        ; $47a1: $fe $f0
    ldh [$aa], a                                  ; $47a3: $e0 $aa
    nop                                           ; $47a5: $00
    dec d                                         ; $47a6: $15
    nop                                           ; $47a7: $00
    xor b                                         ; $47a8: $a8
    nop                                           ; $47a9: $00
    ld d, c                                       ; $47aa: $51
    rst $38                                       ; $47ab: $ff
    nop                                           ; $47ac: $00
    ld [$2200], sp                                ; $47ad: $08 $00 $22
    nop                                           ; $47b0: $00
    sub h                                         ; $47b1: $94
    nop                                           ; $47b2: $00
    add hl, hl                                    ; $47b3: $29
    xor a                                         ; $47b4: $af
    nop                                           ; $47b5: $00
    ld b, h                                       ; $47b6: $44
    nop                                           ; $47b7: $00
    db $10                                        ; $47b8: $10
    db $e4                                        ; $47b9: $e4
    ldh [rP1], a                                  ; $47ba: $e0 $00
    ld [hl], e                                    ; $47bc: $73
    nop                                           ; $47bd: $00
    ld bc, $94ce                                  ; $47be: $01 $ce $94
    nop                                           ; $47c1: $00
    jr nz, jr_02d_47c4                            ; $47c2: $20 $00

jr_02d_47c4:
    add b                                         ; $47c4: $80
    adc [hl]                                      ; $47c5: $8e
    nop                                           ; $47c6: $00
    rst $38                                       ; $47c7: $ff
    ldh a, [rNR23]                                ; $47c8: $f0 $18
    inc a                                         ; $47ca: $3c
    rst $38                                       ; $47cb: $ff
    ld a, [hl]                                    ; $47cc: $7e
    ld a, [hl]                                    ; $47cd: $7e
    rst $38                                       ; $47ce: $ff
    ld [hl], b                                    ; $47cf: $70
    rst $38                                       ; $47d0: $ff
    ld a, b                                       ; $47d1: $78
    db $fc                                        ; $47d2: $fc
    inc a                                         ; $47d3: $3c
    rst $38                                       ; $47d4: $ff
    cp $80                                        ; $47d5: $fe $80
    ld a, h                                       ; $47d7: $7c
    ld h, h                                       ; $47d8: $64
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    ld [$ff1c], sp                                ; $47db: $08 $1c $ff
    ld a, $36                                     ; $47de: $3e $36
    ld a, a                                       ; $47e0: $7f
    and [hl]                                      ; $47e1: $a6
    ld a, a                                       ; $47e2: $7f
    add h                                         ; $47e3: $84
    ld l, a                                       ; $47e4: $6f
    ld b, b                                       ; $47e5: $40
    ei                                            ; $47e6: $fb
    ld c, $08                                     ; $47e7: $0e $08
    ld l, c                                       ; $47e9: $69
    ld [c], a                                     ; $47ea: $e2
    inc bc                                        ; $47eb: $03
    rst $38                                       ; $47ec: $ff

jr_02d_47ed:
    rlca                                          ; $47ed: $07
    cp $1b                                        ; $47ee: $fe $1b
    rst $38                                       ; $47f0: $ff

jr_02d_47f1:
    db $fc                                        ; $47f1: $fc
    ld e, $f1                                     ; $47f2: $1e $f1
    jr z, jr_02d_47ed                             ; $47f4: $28 $f7

    ld a, d                                       ; $47f6: $7a
    push hl                                       ; $47f7: $e5
    ld [hl], b                                    ; $47f8: $70
    rst $38                                       ; $47f9: $ff
    rst $08                                       ; $47fa: $cf
    inc a                                         ; $47fb: $3c
    rst $38                                       ; $47fc: $ff
    ei                                            ; $47fd: $fb
    rst $20                                       ; $47fe: $e7
    db $fd                                        ; $47ff: $fd
    ld b, d                                       ; $4800: $42
    rst $20                                       ; $4801: $e7
    cp a                                          ; $4802: $bf
    jr jr_02d_484f                                ; $4803: $18 $4a

    or l                                          ; $4805: $b5
    nop                                           ; $4806: $00
    rst $38                                       ; $4807: $ff
    ld d, h                                       ; $4808: $54
    ld l, [hl]                                    ; $4809: $6e
    and b                                         ; $480a: $a0
    adc [hl]                                      ; $480b: $8e
    rst $38                                       ; $480c: $ff
    di                                            ; $480d: $f3
    sbc d                                         ; $480e: $9a
    rst $20                                       ; $480f: $e7
    ld c, l                                       ; $4810: $4d
    di                                            ; $4811: $f3
    sub a                                         ; $4812: $97
    jp hl                                         ; $4813: $e9


    rst $00                                       ; $4814: $c7
    rst $38                                       ; $4815: $ff
    ld sp, hl                                     ; $4816: $f9
    adc a                                         ; $4817: $8f

jr_02d_4818:
    di                                            ; $4818: $f3
    ld e, [hl]                                    ; $4819: $5e
    rst $20                                       ; $481a: $e7
    adc [hl]                                      ; $481b: $8e
    di                                            ; $481c: $f3
    push af                                       ; $481d: $f5
    cp $0a                                        ; $481e: $fe $0a
    and b                                         ; $4820: $a0
    ldh [rIE], a                                  ; $4821: $e0 $ff
    adc d                                         ; $4823: $8a
    push af                                       ; $4824: $f5
    ld d, a                                       ; $4825: $57
    add sp, -$73                                  ; $4826: $e8 $8d
    rst $38                                       ; $4828: $ff
    ld a, [c]                                     ; $4829: $f2
    add hl, de                                    ; $482a: $19
    rst $20                                       ; $482b: $e7
    adc a                                         ; $482c: $8f
    di                                            ; $482d: $f3
    rst $18                                       ; $482e: $df
    sbc c                                         ; $482f: $99
    sbc a                                         ; $4830: $9f
    rst $38                                       ; $4831: $ff
    ld c, l                                       ; $4832: $4d
    daa                                           ; $4833: $27
    rla                                           ; $4834: $17
    and e                                         ; $4835: $a3
    di                                            ; $4836: $f3
    db $db                                        ; $4837: $db
    pop hl                                        ; $4838: $e1
    xor $ff                                       ; $4839: $ee $ff
    pop af                                        ; $483b: $f1
    or h                                          ; $483c: $b4
    ei                                            ; $483d: $fb
    ld b, c                                       ; $483e: $41
    rst $38                                       ; $483f: $ff
    rst $18                                       ; $4840: $df
    sbc a                                         ; $4841: $9f
    sbc h                                         ; $4842: $9c
    rst $38                                       ; $4843: $ff
    ld c, a                                       ; $4844: $4f
    ld h, $17                                     ; $4845: $26 $17
    and d                                         ; $4847: $a2
    di                                            ; $4848: $f3
    jp c, $eee1                                   ; $4849: $da $e1 $ee

    rst $38                                       ; $484c: $ff
    ld [hl], c                                    ; $484d: $71
    db $f4                                        ; $484e: $f4

jr_02d_484f:
    dec sp                                        ; $484f: $3b
    ld sp, hl                                     ; $4850: $f9
    rst $38                                       ; $4851: $ff
    rst $20                                       ; $4852: $e7
    jr jr_02d_4818                                ; $4853: $18 $c3

    rst $38                                       ; $4855: $ff
    inc h                                         ; $4856: $24
    rst $20                                       ; $4857: $e7
    inc h                                         ; $4858: $24
    rst $38                                       ; $4859: $ff
    inc a                                         ; $485a: $3c
    db $db                                        ; $485b: $db
    inc a                                         ; $485c: $3c
    rst $20                                       ; $485d: $e7
    db $fd                                        ; $485e: $fd
    jr jr_02d_47f1                                ; $485f: $18 $90

    ld b, c                                       ; $4861: $41
    ld h, a                                       ; $4862: $67
    sbc d                                         ; $4863: $9a
    call nz, $0b8a                                ; $4864: $c4 $8a $0b
    ret nz                                        ; $4867: $c0

    rst $38                                       ; $4868: $ff
    ld b, d                                       ; $4869: $42
    and b                                         ; $486a: $a0
    db $10                                        ; $486b: $10
    ret nz                                        ; $486c: $c0

    jp hl                                         ; $486d: $e9


    add b                                         ; $486e: $80
    ld h, b                                       ; $486f: $60
    sub c                                         ; $4870: $91
    rst $38                                       ; $4871: $ff
    adc e                                         ; $4872: $8b
    ld h, b                                       ; $4873: $60
    ld d, $a9                                     ; $4874: $16 $a9
    pop hl                                        ; $4876: $e1
    dec bc                                        ; $4877: $0b
    adc d                                         ; $4878: $8a
    daa                                           ; $4879: $27
    ld a, a                                       ; $487a: $7f
    daa                                           ; $487b: $27
    rrca                                          ; $487c: $0f
    xor l                                         ; $487d: $ad
    rra                                           ; $487e: $1f
    sub $3f                                       ; $487f: $d6 $3f
    ld a, l                                       ; $4881: $7d
    halt                                          ; $4882: $76
    add b                                         ; $4883: $80
    cp $20                                        ; $4884: $fe $20
    daa                                           ; $4886: $27
    inc h                                         ; $4887: $24
    db $db                                        ; $4888: $db
    inc c                                         ; $4889: $0c
    rst $30                                       ; $488a: $f7
    ld [hl], $cf                                  ; $488b: $36 $cf
    jr @+$01                                      ; $488d: $18 $ff

    rst $20                                       ; $488f: $e7
    sub $0f                                       ; $4890: $d6 $0f
    ld e, c                                       ; $4892: $59
    and [hl]                                      ; $4893: $a6
    ld b, d                                       ; $4894: $42
    rrca                                          ; $4895: $0f
    ei                                            ; $4896: $fb
    ld a, a                                       ; $4897: $7f
    nop                                           ; $4898: $00
    inc e                                         ; $4899: $1c
    inc bc                                        ; $489a: $03
    cp a                                          ; $489b: $bf

jr_02d_489c:
    nop                                           ; $489c: $00
    sbc c                                         ; $489d: $99
    ld h, [hl]                                    ; $489e: $66
    jr c, jr_02d_48c2                             ; $489f: $38 $21

    sbc a                                         ; $48a1: $9f
    dec a                                         ; $48a2: $3d
    jp nz, $e718                                  ; $48a3: $c2 $18 $e7

    add hl, de                                    ; $48a6: $19
    jr nc, jr_02d_48cd                            ; $48a7: $30 $24

    db $10                                        ; $48a9: $10
    add c                                         ; $48aa: $81
    ld d, [hl]                                    ; $48ab: $56
    rst $08                                       ; $48ac: $cf
    xor c                                         ; $48ad: $a9
    ld [hl+], a                                   ; $48ae: $22
    rst $38                                       ; $48af: $ff
    ld [hl], l                                    ; $48b0: $75
    sub b                                         ; $48b1: $90
    add h                                         ; $48b2: $84
    add b                                         ; $48b3: $80
    and e                                         ; $48b4: $a3
    ld de, $ffef                                  ; $48b5: $11 $ef $ff
    rra                                           ; $48b8: $1f
    ldh [$3d], a                                  ; $48b9: $e0 $3d
    rst $00                                       ; $48bb: $c7
    inc sp                                        ; $48bc: $33
    rst $08                                       ; $48bd: $cf

jr_02d_48be:
    dec l                                         ; $48be: $2d
    rst $10                                       ; $48bf: $d7
    cp $e0                                        ; $48c0: $fe $e0

Call_02d_48c2:
jr_02d_48c2:
    ld h, l                                       ; $48c2: $65
    jr z, jr_02d_489c                             ; $48c3: $28 $d7

    ld b, h                                       ; $48c5: $44
    ei                                            ; $48c6: $fb
    or h                                          ; $48c7: $b4
    rst $38                                       ; $48c8: $ff
    ret nc                                        ; $48c9: $d0

    rst $38                                       ; $48ca: $ff
    rst $38                                       ; $48cb: $ff
    ei                                            ; $48cc: $fb

jr_02d_48cd:
    inc e                                         ; $48cd: $1c
    db $ed                                        ; $48ce: $ed
    ld h, $8b                                     ; $48cf: $26 $8b
    ld b, [hl]                                    ; $48d1: $46
    db $db                                        ; $48d2: $db
    rst $38                                       ; $48d3: $ff
    ld h, [hl]                                    ; $48d4: $66
    add $4f                                       ; $48d5: $c6 $4f
    dec bc                                        ; $48d7: $0b
    add a                                         ; $48d8: $87
    sbc e                                         ; $48d9: $9b
    add a                                         ; $48da: $87
    or e                                          ; $48db: $b3
    rst $38                                       ; $48dc: $ff
    rst $08                                       ; $48dd: $cf

jr_02d_48de:
    xor a                                         ; $48de: $af
    sbc a                                         ; $48df: $9f
    and $5f                                       ; $48e0: $e6 $5f

jr_02d_48e2:
    cp a                                          ; $48e2: $bf
    ld a, [hl]                                    ; $48e3: $7e
    db $eb                                        ; $48e4: $eb
    rst $18                                       ; $48e5: $df
    inc a                                         ; $48e6: $3c
    rst $38                                       ; $48e7: $ff
    ld l, $ef                                     ; $48e8: $2e $ef
    cpl                                           ; $48ea: $2f
    ld hl, $1e60                                  ; $48eb: $21 $60 $1e
    inc e                                         ; $48ee: $1c
    rst $38                                       ; $48ef: $ff
    rst $38                                       ; $48f0: $ff
    ld l, $e7                                     ; $48f1: $2e $e7
    ld c, d                                       ; $48f3: $4a
    rst $00                                       ; $48f4: $c7
    ld e, d                                       ; $48f5: $5a
    rst $20                                       ; $48f6: $e7
    ld b, a                                       ; $48f7: $47
    ei                                            ; $48f8: $fb
    rst $08                                       ; $48f9: $cf
    adc e                                         ; $48fa: $8b
    ldh [$e4], a                                  ; $48fb: $e0 $e4

jr_02d_48fd:
    ld h, [hl]                                    ; $48fd: $66
    rst $18                                       ; $48fe: $df
    ld a, [hl]                                    ; $48ff: $7e
    rst $38                                       ; $4900: $ff
    jr z, jr_02d_48e2                             ; $4901: $28 $df

    rst $38                                       ; $4903: $ff
    ld a, $ef                                     ; $4904: $3e $ef
    cpl                                           ; $4906: $2f
    rst $28                                       ; $4907: $ef
    pop hl                                        ; $4908: $e1
    ldh [rIE], a                                  ; $4909: $e0 $ff
    rst $18                                       ; $490b: $df
    rst $38                                       ; $490c: $ff
    jr c, jr_02d_48be                             ; $490d: $38 $af

    ld e, [hl]                                    ; $490f: $5e
    bit 4, [hl]                                   ; $4910: $cb $66
    ld e, a                                       ; $4912: $5f
    and a                                         ; $4913: $a7
    and c                                         ; $4914: $a1
    rst $38                                       ; $4915: $ff
    sbc a                                         ; $4916: $9f
    xor e                                         ; $4917: $ab
    rst $10                                       ; $4918: $d7
    rst $38                                       ; $4919: $ff
    ld a, [hl]                                    ; $491a: $7e
    ret c                                         ; $491b: $d8

    cpl                                           ; $491c: $2f
    jr c, jr_02d_48de                             ; $491d: $38 $bf

    rst $38                                       ; $491f: $ff
    ld l, [hl]                                    ; $4920: $6e
    rst $18                                       ; $4921: $df
    ld a, [bc]                                    ; $4922: $0a
    rst $20                                       ; $4923: $e7
    rst $18                                       ; $4924: $df
    ldh a, [$e2]                                  ; $4925: $f0 $e2
    ld a, [hl]                                    ; $4927: $7e
    rst $38                                       ; $4928: $ff
    rst $38                                       ; $4929: $ff
    ccf                                           ; $492a: $3f
    rst $28                                       ; $492b: $ef

jr_02d_492c:
    jr nz, jr_02d_48fd                            ; $492c: $20 $cf

    or [hl]                                       ; $492e: $b6

jr_02d_492f:
    dec hl                                        ; $492f: $2b
    db $ed                                        ; $4930: $ed

jr_02d_4931:
    cp a                                          ; $4931: $bf
    cp d                                          ; $4932: $ba
    dec sp                                        ; $4933: $3b
    rst $18                                       ; $4934: $df
    halt                                          ; $4935: $76
    rst $18                                       ; $4936: $df
    ld d, h                                       ; $4937: $54
    ld hl, sp+$00                                 ; $4938: $f8 $00
    ld a, [hl+]                                   ; $493a: $2a
    rst $38                                       ; $493b: $ff
    rst $38                                       ; $493c: $ff
    rst $30                                       ; $493d: $f7
    jr jr_02d_492f                                ; $493e: $18 $ef

    jr z, jr_02d_4931                             ; $4940: $28 $ef

    jr z, @-$01                                   ; $4942: $28 $fd

    rst $38                                       ; $4944: $ff
    ld l, $eb                                     ; $4945: $2e $eb
    ld a, [hl+]                                   ; $4947: $2a
    ei                                            ; $4948: $fb
    ld a, [hl+]                                   ; $4949: $2a
    rst $38                                       ; $494a: $ff
    ld l, d                                       ; $494b: $6a
    xor a                                         ; $494c: $af
    rst $38                                       ; $494d: $ff
    cp d                                          ; $494e: $ba
    cp a                                          ; $494f: $bf
    xor d                                         ; $4950: $aa
    db $eb                                        ; $4951: $eb
    or [hl]                                       ; $4952: $b6
    cp a                                          ; $4953: $bf
    xor h                                         ; $4954: $ac
    ld a, [$afff]                                 ; $4955: $fa $ff $af
    rst $28                                       ; $4958: $ef
    sbc l                                         ; $4959: $9d
    ld e, a                                       ; $495a: $5f
    db $ed                                        ; $495b: $ed
    db $ed                                        ; $495c: $ed
    ccf                                           ; $495d: $3f
    rst $38                                       ; $495e: $ff
    rst $38                                       ; $495f: $ff
    dec l                                         ; $4960: $2d
    push af                                       ; $4961: $f5
    dec hl                                        ; $4962: $2b
    rst $20                                       ; $4963: $e7
    ld a, $ff                                     ; $4964: $3e $ff
    jr z, @-$0f                                   ; $4966: $28 $ef

    rst $38                                       ; $4968: $ff
    jr c, @+$01                                   ; $4969: $38 $ff

    jr z, jr_02d_492c                             ; $496b: $28 $bf

    ld l, [hl]                                    ; $496d: $6e
    rst $30                                       ; $496e: $f7
    ld c, a                                       ; $496f: $4f
    adc $ff                                       ; $4970: $ce $ff
    ccf                                           ; $4972: $3f
    xor e                                         ; $4973: $ab
    rst $38                                       ; $4974: $ff
    dec b                                         ; $4975: $05
    cp $ab                                        ; $4976: $fe $ab
    db $fc                                        ; $4978: $fc
    dec c                                         ; $4979: $0d
    rst $38                                       ; $497a: $ff

jr_02d_497b:
    ld a, [$fdb2]                                 ; $497b: $fa $b2 $fd
    ld d, l                                       ; $497e: $55
    ld [$d7a8], a                                 ; $497f: $ea $a8 $d7
    db $f4                                        ; $4982: $f4
    rst $38                                       ; $4983: $ff
    adc e                                         ; $4984: $8b
    or b                                          ; $4985: $b0
    rrca                                          ; $4986: $0f
    sbc $7f                                       ; $4987: $de $7f
    add hl, hl                                    ; $4989: $29
    cp $55                                        ; $498a: $fe $55
    ei                                            ; $498c: $fb
    rst $38                                       ; $498d: $ff
    cp [hl]                                       ; $498e: $be
    ld e, $e0                                     ; $498f: $1e $e0
    xor d                                         ; $4991: $aa
    rst $38                                       ; $4992: $ff
    ret nz                                        ; $4993: $c0

    rst $38                                       ; $4994: $ff
    sbc b                                         ; $4995: $98
    and l                                         ; $4996: $a5
    ld h, a                                       ; $4997: $67
    jr nc, jr_02d_497b                            ; $4998: $30 $e1

    ld e, b                                       ; $499a: $58

Jump_02d_499b:
    jr nc, jr_02d_49a3                            ; $499b: $30 $06

    ret nz                                        ; $499d: $c0

    ld c, e                                       ; $499e: $4b
    dec hl                                        ; $499f: $2b
    nop                                           ; $49a0: $00
    ld l, b                                       ; $49a1: $68
    inc a                                         ; $49a2: $3c

jr_02d_49a3:
    ld a, a                                       ; $49a3: $7f
    inc bc                                        ; $49a4: $03
    add h                                         ; $49a5: $84
    ld [hl], e                                    ; $49a6: $73
    or h                                          ; $49a7: $b4
    db $eb                                        ; $49a8: $eb
    inc hl                                        ; $49a9: $23
    call z, $e170                                 ; $49aa: $cc $70 $e1
    rst $38                                       ; $49ad: $ff
    ld a, [hl-]                                   ; $49ae: $3a
    rst $18                                       ; $49af: $df
    rst $30                                       ; $49b0: $f7
    ld e, [hl]                                    ; $49b1: $5e
    push de                                       ; $49b2: $d5
    ld a, [hl]                                    ; $49b3: $7e
    db $dd                                        ; $49b4: $dd
    ld a, a                                       ; $49b5: $7f
    ei                                            ; $49b6: $fb
    ei                                            ; $49b7: $fb
    ld l, $58                                     ; $49b8: $2e $58
    ld h, e                                       ; $49ba: $63
    add hl, de                                    ; $49bb: $19
    rst $20                                       ; $49bc: $e7
    rla                                           ; $49bd: $17
    xor $3f                                       ; $49be: $ee $3f
    cp a                                          ; $49c0: $bf
    ret z                                         ; $49c1: $c8

    cpl                                           ; $49c2: $2f
    ret c                                         ; $49c3: $d8

    rra                                           ; $49c4: $1f
    ldh a, [$fd]                                  ; $49c5: $f0 $fd
    ld e, d                                       ; $49c7: $5a
    nop                                           ; $49c8: $00
    jp c, $f8fe                                   ; $49c9: $da $fe $f8

    jr nz, @-$4f                                  ; $49cc: $20 $af

    cp $df                                        ; $49ce: $fe $df
    ld hl, sp+$6f                                 ; $49d0: $f8 $6f
    ld hl, sp-$21                                 ; $49d2: $f8 $df
    push af                                       ; $49d4: $f5
    ldh a, [$73]                                  ; $49d5: $f0 $73
    ld b, b                                       ; $49d7: $40
    inc a                                         ; $49d8: $3c
    sub $41                                       ; $49d9: $d6 $41
    ccf                                           ; $49db: $3f
    jp $c73e                                      ; $49dc: $c3 $3e $c7


    rst $28                                       ; $49df: $ef
    db $dd                                        ; $49e0: $dd
    cpl                                           ; $49e1: $2f
    jp c, $f02f                                   ; $49e2: $da $2f $f0

    push hl                                       ; $49e5: $e5
    dec a                                         ; $49e6: $3d
    jp $bf3c                                      ; $49e7: $c3 $3c $bf


    rst $00                                       ; $49ea: $c7
    ret nc                                        ; $49eb: $d0

jr_02d_49ec:
    cpl                                           ; $49ec: $2f
    ret c                                         ; $49ed: $d8

    cpl                                           ; $49ee: $2f
    db $10                                        ; $49ef: $10
    ld d, e                                       ; $49f0: $53
    ldh [$28], a                                  ; $49f1: $e0 $28
    rst $38                                       ; $49f3: $ff
    rst $28                                       ; $49f4: $ef
    inc a                                         ; $49f5: $3c
    rst $28                                       ; $49f6: $ef
    ld a, [hl+]                                   ; $49f7: $2a
    db $eb                                        ; $49f8: $eb
    ld a, [hl-]                                   ; $49f9: $3a
    db $eb                                        ; $49fa: $eb
    ld a, [hl]                                    ; $49fb: $7e
    rst $38                                       ; $49fc: $ff
    db $eb                                        ; $49fd: $eb
    xor [hl]                                      ; $49fe: $ae
    cp e                                          ; $49ff: $bb
    cp [hl]                                       ; $4a00: $be
    xor e                                         ; $4a01: $ab
    ld [$bcb7], a                                 ; $4a02: $ea $b7 $bc
    db $fd                                        ; $4a05: $fd
    xor a                                         ; $4a06: $af
    jr nc, jr_02d_49ec                            ; $4a07: $30 $e3

    dec l                                         ; $4a09: $2d
    rst $38                                       ; $4a0a: $ff
    ccf                                           ; $4a0b: $3f
    db $ed                                        ; $4a0c: $ed
    dec [hl]                                      ; $4a0d: $35
    db $eb                                        ; $4a0e: $eb
    rst $18                                       ; $4a0f: $df
    ld h, $ff                                     ; $4a10: $26 $ff

jr_02d_4a12:
    jr c, @-$0f                                   ; $4a12: $38 $ef

    jr z, jr_02d_4a12                             ; $4a14: $28 $fc

    ldh [$3e], a                                  ; $4a16: $e0 $3e
    rst $28                                       ; $4a18: $ef
    ld a, a                                       ; $4a19: $7f
    ld [hl], a                                    ; $4a1a: $77
    rst $08                                       ; $4a1b: $cf
    ld l, $ff                                     ; $4a1c: $2e $ff
    sub b                                         ; $4a1e: $90
    rst $38                                       ; $4a1f: $ff
    ld a, [hl+]                                   ; $4a20: $2a
    jp nc, $ffe0                                  ; $4a21: $d2 $e0 $ff

    xor d                                         ; $4a24: $aa
    db $eb                                        ; $4a25: $eb
    ld a, a                                       ; $4a26: $7f
    db $eb                                        ; $4a27: $eb
    xor d                                         ; $4a28: $aa
    or a                                          ; $4a29: $b7
    cp $af                                        ; $4a2a: $fe $af
    rst $38                                       ; $4a2c: $ff
    cp a                                          ; $4a2d: $bf
    xor l                                         ; $4a2e: $ad
    db $ed                                        ; $4a2f: $ed
    sbc a                                         ; $4a30: $9f
    ld e, a                                       ; $4a31: $5f
    db $ed                                        ; $4a32: $ed
    and l                                         ; $4a33: $a5
    ei                                            ; $4a34: $fb
    rst $00                                       ; $4a35: $c7
    ld [hl], $ef                                  ; $4a36: $36 $ef
    xor c                                         ; $4a38: $a9
    xor [hl]                                      ; $4a39: $ae
    ret nz                                        ; $4a3a: $c0

    ldh [$e1], a                                  ; $4a3b: $e0 $e1
    di                                            ; $4a3d: $f3
    nop                                           ; $4a3e: $00
    ld sp, hl                                     ; $4a3f: $f9
    db $fc                                        ; $4a40: $fc
    ld a, a                                       ; $4a41: $7f
    ei                                            ; $4a42: $fb
    cp $e1                                        ; $4a43: $fe $e1
    db $f4                                        ; $4a45: $f4
    set 4, b                                      ; $4a46: $cb $e0
    rst $18                                       ; $4a48: $df
    cp $e1                                        ; $4a49: $fe $e1
    rst $38                                       ; $4a4b: $ff
    cp a                                          ; $4a4c: $bf
    ld a, a                                       ; $4a4d: $7f
    ld e, a                                       ; $4a4e: $5f
    cp a                                          ; $4a4f: $bf
    rra                                           ; $4a50: $1f
    rst $38                                       ; $4a51: $ff
    scf                                           ; $4a52: $37
    rst $08                                       ; $4a53: $cf
    rst $38                                       ; $4a54: $ff
    dec bc                                        ; $4a55: $0b
    rst $30                                       ; $4a56: $f7
    ld h, e                                       ; $4a57: $63
    rst $38                                       ; $4a58: $ff
    db $d3                                        ; $4a59: $d3
    sbc a                                         ; $4a5a: $9f
    sub e                                         ; $4a5b: $93
    sbc a                                         ; $4a5c: $9f
    rst $38                                       ; $4a5d: $ff
    ld hl, sp-$79                                 ; $4a5e: $f8 $87
    ret nc                                        ; $4a60: $d0

    cpl                                           ; $4a61: $2f
    add b                                         ; $4a62: $80
    ld a, a                                       ; $4a63: $7f
    adc h                                         ; $4a64: $8c
    ld a, a                                       ; $4a65: $7f
    rst $38                                       ; $4a66: $ff
    sbc d                                         ; $4a67: $9a
    ld [hl], e                                    ; $4a68: $73
    ld d, d                                       ; $4a69: $52
    or e                                          ; $4a6a: $b3
    adc h                                         ; $4a6b: $8c
    rst $38                                       ; $4a6c: $ff
    ldh a, [$ef]                                  ; $4a6d: $f0 $ef
    rst $18                                       ; $4a6f: $df
    ld l, l                                       ; $4a70: $6d
    di                                            ; $4a71: $f3
    ld [bc], a                                    ; $4a72: $02
    db $fd                                        ; $4a73: $fd
    ret nz                                        ; $4a74: $c0

    call Call_000_0200                            ; $4a75: $cd $00 $02
    rst $38                                       ; $4a78: $ff
    rst $38                                       ; $4a79: $ff
    ld d, $ff                                     ; $4a7a: $16 $ff
    ld bc, $17ff                                  ; $4a7c: $01 $ff $17
    rst $38                                       ; $4a7f: $ff
    add sp, -$09                                  ; $4a80: $e8 $f7
    rst $38                                       ; $4a82: $ff
    pop af                                        ; $4a83: $f1
    rst $38                                       ; $4a84: $ff
    cp $fe                                        ; $4a85: $fe $fe
    rst $38                                       ; $4a87: $ff
    cp $f7                                        ; $4a88: $fe $f7
    cp $ff                                        ; $4a8a: $fe $ff
    xor l                                         ; $4a8c: $ad
    db $fc                                        ; $4a8d: $fc
    ld b, [hl]                                    ; $4a8e: $46
    cp $eb                                        ; $4a8f: $fe $eb
    rst $38                                       ; $4a91: $ff
    scf                                           ; $4a92: $37
    rst $38                                       ; $4a93: $ff
    db $fd                                        ; $4a94: $fd
    adc a                                         ; $4a95: $8f
    adc l                                         ; $4a96: $8d
    nop                                           ; $4a97: $00
    ld a, a                                       ; $4a98: $7f
    ld a, a                                       ; $4a99: $7f
    ld l, a                                       ; $4a9a: $6f
    ld a, a                                       ; $4a9b: $7f
    ld a, $3f                                     ; $4a9c: $3e $3f
    ei                                            ; $4a9e: $fb
    ld a, e                                       ; $4a9f: $7b
    ld a, a                                       ; $4aa0: $7f
    and c                                         ; $4aa1: $a1
    ldh [rIE], a                                  ; $4aa2: $e0 $ff
    ld a, [$fcfd]                                 ; $4aa4: $fa $fd $fc
    ei                                            ; $4aa7: $fb
    rst $38                                       ; $4aa8: $ff
    pop hl                                        ; $4aa9: $e1
    rst $38                                       ; $4aaa: $ff
    ret nc                                        ; $4aab: $d0

    rst $28                                       ; $4aac: $ef
    push hl                                       ; $4aad: $e5
    rst $18                                       ; $4aae: $df
    jp z, Jump_02d_7fff                           ; $4aaf: $ca $ff $7f

    rst $20                                       ; $4ab2: $e7
    rst $18                                       ; $4ab3: $df
    ccf                                           ; $4ab4: $3f
    rst $38                                       ; $4ab5: $ff
    rra                                           ; $4ab6: $1f
    rst $38                                       ; $4ab7: $ff
    cp a                                          ; $4ab8: $bf
    jp nz, $df60                                  ; $4ab9: $c2 $60 $df

    db $eb                                        ; $4abc: $eb
    rst $38                                       ; $4abd: $ff
    ld a, a                                       ; $4abe: $7f
    rst $38                                       ; $4abf: $ff
    db $db                                        ; $4ac0: $db
    ld h, e                                       ; $4ac1: $63
    nop                                           ; $4ac2: $00
    adc e                                         ; $4ac3: $8b
    rst $38                                       ; $4ac4: $ff
    rst $38                                       ; $4ac5: $ff
    ld b, l                                       ; $4ac6: $45
    cp a                                          ; $4ac7: $bf
    sub a                                         ; $4ac8: $97
    ld a, a                                       ; $4ac9: $7f
    dec hl                                        ; $4aca: $2b
    rst $38                                       ; $4acb: $ff
    sbc a                                         ; $4acc: $9f
    ld a, a                                       ; $4acd: $7f
    rst $10                                       ; $4ace: $d7
    dec l                                         ; $4acf: $2d
    rst $38                                       ; $4ad0: $ff
    sbc a                                         ; $4ad1: $9f
    ld [$75e0], a                                 ; $4ad2: $ea $e0 $75
    ld h, b                                       ; $4ad5: $60
    nop                                           ; $4ad6: $00
    rst $38                                       ; $4ad7: $ff
    rst $38                                       ; $4ad8: $ff
    db $dd                                        ; $4ad9: $dd
    ld a, [hl]                                    ; $4ada: $7e
    ld c, c                                       ; $4adb: $49
    nop                                           ; $4adc: $00
    cp $ff                                        ; $4add: $fe $ff
    ld sp, hl                                     ; $4adf: $f9
    ld b, e                                       ; $4ae0: $43
    nop                                           ; $4ae1: $00
    push hl                                       ; $4ae2: $e5
    rst $38                                       ; $4ae3: $ff
    ld sp, hl                                     ; $4ae4: $f9
    di                                            ; $4ae5: $f3
    and b                                         ; $4ae6: $a0
    pop hl                                        ; $4ae7: $e1
    sbc h                                         ; $4ae8: $9c
    ldh [$ee], a                                  ; $4ae9: $e0 $ee
    cp $5e                                        ; $4aeb: $fe $5e
    cp $fb                                        ; $4aed: $fe $fb
    and d                                         ; $4aef: $a2
    and $00                                       ; $4af0: $e6 $00
    rst $08                                       ; $4af2: $cf
    and b                                         ; $4af3: $a0
    ld [c], a                                     ; $4af4: $e2
    db $fc                                        ; $4af5: $fc
    db $e3                                        ; $4af6: $e3

jr_02d_4af7:
    cp $e8                                        ; $4af7: $fe $e8
    cp $33                                        ; $4af9: $fe $33
    nop                                           ; $4afb: $00
    ld hl, sp-$01                                 ; $4afc: $f8 $ff
    rst $38                                       ; $4afe: $ff
    ldh a, [$fb]                                  ; $4aff: $f0 $fb
    rst $20                                       ; $4b01: $e7
    push af                                       ; $4b02: $f5
    set 6, d                                      ; $4b03: $cb $f2
    adc l                                         ; $4b05: $8d
    ld l, a                                       ; $4b06: $6f
    pop af                                        ; $4b07: $f1
    ld c, $f0                                     ; $4b08: $0e $f0
    rrca                                          ; $4b0a: $0f
    cp $e1                                        ; $4b0b: $fe $e1
    add sp, $17                                   ; $4b0d: $e8 $17
    cp d                                          ; $4b0f: $ba
    inc bc                                        ; $4b10: $03
    ld a, e                                       ; $4b11: $7b
    ld a, a                                       ; $4b12: $7f
    rst $38                                       ; $4b13: $ff
    jr z, jr_02d_4af7                             ; $4b14: $28 $e1

    cpl                                           ; $4b16: $2f
    rst $18                                       ; $4b17: $df
    rla                                           ; $4b18: $17
    rst $28                                       ; $4b19: $ef
    call z, $fcea                                 ; $4b1a: $cc $ea $fc
    sbc e                                         ; $4b1d: $9b
    pop hl                                        ; $4b1e: $e1
    sbc c                                         ; $4b1f: $99
    inc bc                                        ; $4b20: $03
    ldh [$fc], a                                  ; $4b21: $e0 $fc
    jp $83fc                                      ; $4b23: $c3 $fc $83


    db $fc                                        ; $4b26: $fc
    rst $38                                       ; $4b27: $ff
    inc bc                                        ; $4b28: $03
    db $fc                                        ; $4b29: $fc
    inc bc                                        ; $4b2a: $03
    rst $38                                       ; $4b2b: $ff
    ldh [$ef], a                                  ; $4b2c: $e0 $ef
    ret nc                                        ; $4b2e: $d0

    rst $18                                       ; $4b2f: $df
    rst $38                                       ; $4b30: $ff
    and b                                         ; $4b31: $a0
    ld l, $d1                                     ; $4b32: $2e $d1
    sub [hl]                                      ; $4b34: $96
    ld l, e                                       ; $4b35: $6b
    ld c, h                                       ; $4b36: $4c
    or a                                          ; $4b37: $b7
    jr z, @+$01                                   ; $4b38: $28 $ff

    rst $18                                       ; $4b3a: $df
    dec d                                         ; $4b3b: $15
    rst $28                                       ; $4b3c: $ef
    ret nz                                        ; $4b3d: $c0

    ccf                                           ; $4b3e: $3f
    add h                                         ; $4b3f: $84
    ld a, a                                       ; $4b40: $7f
    ld a, [bc]                                    ; $4b41: $0a
    db $eb                                        ; $4b42: $eb
    rst $38                                       ; $4b43: $ff
    inc d                                         ; $4b44: $14
    or [hl]                                       ; $4b45: $b6
    and b                                         ; $4b46: $a0
    ld d, l                                       ; $4b47: $55
    nop                                           ; $4b48: $00
    ret nz                                        ; $4b49: $c0

    ld d, l                                       ; $4b4a: $55

Call_02d_4b4b:
    rst $38                                       ; $4b4b: $ff
    dec bc                                        ; $4b4c: $0b
    cpl                                           ; $4b4d: $2f
    rst $30                                       ; $4b4e: $f7
    inc bc                                        ; $4b4f: $03
    rst $38                                       ; $4b50: $ff
    ei                                            ; $4b51: $fb
    cp $e0                                        ; $4b52: $fe $e0
    rst $38                                       ; $4b54: $ff
    db $fc                                        ; $4b55: $fc
    ld [c], a                                     ; $4b56: $e2
    rst $28                                       ; $4b57: $ef
    and b                                         ; $4b58: $a0
    cp $7b                                        ; $4b59: $fe $7b
    ld [$0ff7], a                                 ; $4b5b: $ea $f7 $0f
    cp $fd                                        ; $4b5e: $fe $fd
    db $fd                                        ; $4b60: $fd
    ld a, [$cffa]                                 ; $4b61: $fa $fa $cf
    push af                                       ; $4b64: $f5
    ldh a, [$ef]                                  ; $4b65: $f0 $ef
    ret nz                                        ; $4b67: $c0

    ld e, b                                       ; $4b68: $58
    ld b, b                                       ; $4b69: $40
    adc $e1                                       ; $4b6a: $ce $e1
    db $fc                                        ; $4b6c: $fc
    inc bc                                        ; $4b6d: $03
    rst $38                                       ; $4b6e: $ff
    ld d, h                                       ; $4b6f: $54
    xor e                                         ; $4b70: $ab
    xor h                                         ; $4b71: $ac
    ld d, a                                       ; $4b72: $57
    ld a, [de]                                    ; $4b73: $1a
    rst $28                                       ; $4b74: $ef
    dec [hl]                                      ; $4b75: $35
    rst $18                                       ; $4b76: $df
    db $fd                                        ; $4b77: $fd
    ld a, [hl+]                                   ; $4b78: $2a
    ld c, $e0                                     ; $4b79: $0e $e0
    rst $38                                       ; $4b7b: $ff
    rst $38                                       ; $4b7c: $ff
    ld a, [bc]                                    ; $4b7d: $0a
    rst $30                                       ; $4b7e: $f7
    dec b                                         ; $4b7f: $05
    ei                                            ; $4b80: $fb
    ld d, l                                       ; $4b81: $55
    ld [bc], a                                    ; $4b82: $02
    ld e, d                                       ; $4b83: $5a
    ld h, b                                       ; $4b84: $60
    ld a, [hl]                                    ; $4b85: $7e
    ret nc                                        ; $4b86: $d0

    ld b, b                                       ; $4b87: $40
    ld a, a                                       ; $4b88: $7f
    call z, $5742                                 ; $4b89: $cc $42 $57
    inc b                                         ; $4b8c: $04
    ret nz                                        ; $4b8d: $c0

    ei                                            ; $4b8e: $fb
    sbc $fd                                       ; $4b8f: $de $fd
    ld b, l                                       ; $4b91: $45
    ldh [rIE], a                                  ; $4b92: $e0 $ff
    ld [$d5ff], a                                 ; $4b94: $ea $ff $d5
    rst $38                                       ; $4b97: $ff
    rst $38                                       ; $4b98: $ff
    sbc $a1                                       ; $4b99: $de $a1
    xor d                                         ; $4b9b: $aa
    ld d, l                                       ; $4b9c: $55
    ld d, [hl]                                    ; $4b9d: $56
    xor e                                         ; $4b9e: $ab
    dec c                                         ; $4b9f: $0d
    rst $30                                       ; $4ba0: $f7
    sub a                                         ; $4ba1: $97
    ld a, [de]                                    ; $4ba2: $1a
    rst $28                                       ; $4ba3: $ef
    dec d                                         ; $4ba4: $15
    ret c                                         ; $4ba5: $d8

    ret nz                                        ; $4ba6: $c0

    ld a, a                                       ; $4ba7: $7f
    sub b                                         ; $4ba8: $90
    ldh [$d0], a                                  ; $4ba9: $e0 $d0
    db $e3                                        ; $4bab: $e3
    cp [hl]                                       ; $4bac: $be
    ld [bc], a                                    ; $4bad: $02
    db $ec                                        ; $4bae: $ec
    ret nz                                        ; $4baf: $c0

    cp a                                          ; $4bb0: $bf
    sbc h                                         ; $4bb1: $9c
    ld b, b                                       ; $4bb2: $40
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    ccf                                           ; $4bb6: $3f
    ld b, [hl]                                    ; $4bb7: $46
    ld b, [hl]                                    ; $4bb8: $46
    ld b, [hl]                                    ; $4bb9: $46
    adc $cf                                       ; $4bba: $ce $cf
    ret nc                                        ; $4bbc: $d0

    ld a, [$fdec]                                 ; $4bbd: $fa $ec $fd
    ld [c], a                                     ; $4bc0: $e2
    rst $18                                       ; $4bc1: $df
    call nz, Call_02d_46c5                        ; $4bc2: $c4 $c5 $46
    call z, $f3cd                                 ; $4bc5: $cc $cd $f3
    pop hl                                        ; $4bc8: $e1
    add $c7                                       ; $4bc9: $c6 $c7
    ccf                                           ; $4bcb: $3f
    ld b, [hl]                                    ; $4bcc: $46
    jp nz, Jump_02d_46c3                          ; $4bcd: $c2 $c3 $46

    ret z                                         ; $4bd0: $c8

    ret                                           ; $4bd1: $c9


    push de                                       ; $4bd2: $d5
    push hl                                       ; $4bd3: $e5
    ret nc                                        ; $4bd4: $d0

    ld [$d63f], a                                 ; $4bd5: $ea $3f $d6
    pop de                                        ; $4bd8: $d1
    jp nc, $d4d3                                  ; $4bd9: $d2 $d3 $d4

    push de                                       ; $4bdc: $d5
    ld a, [$d5ea]                                 ; $4bdd: $fa $ea $d5
    pop hl                                        ; $4be0: $e1
    ld [hl], b                                    ; $4be1: $70
    rst $08                                       ; $4be2: $cf
    ldh [$c9], a                                  ; $4be3: $e0 $c9
    ldh [rIE], a                                  ; $4be5: $e0 $ff
    and $b4                                       ; $4be7: $e6 $b4
    ldh [$ca], a                                  ; $4be9: $e0 $ca
    bit 0, [hl]                                   ; $4beb: $cb $46
    push de                                       ; $4bed: $d5
    ld [c], a                                     ; $4bee: $e2
    ld a, [hl]                                    ; $4bef: $7e
    ret nc                                        ; $4bf0: $d0

    db $ec                                        ; $4bf1: $ec
    call c, $d8d7                                 ; $4bf2: $dc $d7 $d8
    reti                                          ; $4bf5: $d9


    jp c, $fadb                                   ; $4bf6: $da $db $fa

    ld [$d5bc], a                                 ; $4bf9: $ea $bc $d5
    pop hl                                        ; $4bfc: $e1
    add e                                         ; $4bfd: $83
    ldh [rDMA], a                                 ; $4bfe: $e0 $46
    sbc l                                         ; $4c00: $9d
    sbc a                                         ; $4c01: $9f
    sbc e                                         ; $4c02: $9b
    rst $38                                       ; $4c03: $ff
    db $e3                                        ; $4c04: $e3
    sbc l                                         ; $4c05: $9d
    ld h, b                                       ; $4c06: $60
    ld a, l                                       ; $4c07: $7d
    pop hl                                        ; $4c08: $e1
    ld [hl], h                                    ; $4c09: $74
    ldh [$d5], a                                  ; $4c0a: $e0 $d5
    ld [c], a                                     ; $4c0c: $e2
    ret nc                                        ; $4c0d: $d0

    db $ec                                        ; $4c0e: $ec
    ld b, e                                       ; $4c0f: $43
    rst $28                                       ; $4c10: $ef
    ret z                                         ; $4c11: $c8

    ret                                           ; $4c12: $c9


    ld c, c                                       ; $4c13: $49
    ldh [$fe], a                                  ; $4c14: $e0 $fe
    ld c, h                                       ; $4c16: $4c
    ldh [$9d], a                                  ; $4c17: $e0 $9d
    sbc d                                         ; $4c19: $9a
    ld b, [hl]                                    ; $4c1a: $46
    ld b, [hl]                                    ; $4c1b: $46
    ld b, l                                       ; $4c1c: $45
    ld c, b                                       ; $4c1d: $48
    ld c, b                                       ; $4c1e: $48
    ccf                                           ; $4c1f: $3f
    ld b, l                                       ; $4c20: $45
    ld b, [hl]                                    ; $4c21: $46
    ld b, [hl]                                    ; $4c22: $46
    sbc d                                         ; $4c23: $9a
    sbc l                                         ; $4c24: $9d
    ld b, [hl]                                    ; $4c25: $46
    ld a, $e1                                     ; $4c26: $3e $e1
    dec a                                         ; $4c28: $3d
    ld [c], a                                     ; $4c29: $e2
    ldh a, [rNR13]                                ; $4c2a: $f0 $13
    db $ed                                        ; $4c2c: $ed
    ld b, e                                       ; $4c2d: $43
    xor $57                                       ; $4c2e: $ee $57
    pop hl                                        ; $4c30: $e1
    db $fd                                        ; $4c31: $fd
    pop bc                                        ; $4c32: $c1
    sbc l                                         ; $4c33: $9d
    sbc d                                         ; $4c34: $9a
    xor e                                         ; $4c35: $ab
    ld b, l                                       ; $4c36: $45
    ld a, a                                       ; $4c37: $7f
    ld b, l                                       ; $4c38: $45
    ld b, h                                       ; $4c39: $44
    ld e, c                                       ; $4c3a: $59
    ld d, e                                       ; $4c3b: $53
    inc sp                                        ; $4c3c: $33
    ld b, l                                       ; $4c3d: $45
    xor e                                         ; $4c3e: $ab
    cp a                                          ; $4c3f: $bf
    pop hl                                        ; $4c40: $e1
    ld b, $6f                                     ; $4c41: $06 $6f
    pop hl                                        ; $4c43: $e1
    jp z, Jump_000_13cb                           ; $4c44: $ca $cb $13

    rst $28                                       ; $4c47: $ef
    ld b, e                                       ; $4c48: $43
    xor $cb                                       ; $4c49: $ee $cb
    pop bc                                        ; $4c4b: $c1
    pop de                                        ; $4c4c: $d1
    ret nz                                        ; $4c4d: $c0

    add d                                         ; $4c4e: $82
    ldh [rIE], a                                  ; $4c4f: $e0 $ff
    xor h                                         ; $4c51: $ac
    ld c, d                                       ; $4c52: $4a
    ld b, a                                       ; $4c53: $47
    dec l                                         ; $4c54: $2d
    inc l                                         ; $4c55: $2c
    inc l                                         ; $4c56: $2c
    jr nz, @+$2f                                  ; $4c57: $20 $2d

    rst $28                                       ; $4c59: $ef
    xor h                                         ; $4c5a: $ac
    ld b, [hl]                                    ; $4c5b: $46
    ld b, [hl]                                    ; $4c5c: $46
    sbc [hl]                                      ; $4c5d: $9e
    cp e                                          ; $4c5e: $bb
    ret nz                                        ; $4c5f: $c0

    jp nz, $ccc3                                  ; $4c60: $c2 $c3 $cc

    pop de                                        ; $4c63: $d1
    call $f013                                    ; $4c64: $cd $13 $f0
    ld b, e                                       ; $4c67: $43
    db $ed                                        ; $4c68: $ed
    add l                                         ; $4c69: $85
    call nz, Call_02d_679c                        ; $4c6a: $c4 $9c $67
    ret nz                                        ; $4c6d: $c0

    ld c, d                                       ; $4c6e: $4a
    ld e, b                                       ; $4c6f: $58
    rra                                           ; $4c70: $1f
    ld [hl-], a                                   ; $4c71: $32
    jr nz, jr_02d_4c94                            ; $4c72: $20 $20

    jr nz, jr_02d_4ca8                            ; $4c74: $20 $32

    ld e, l                                       ; $4c76: $5d
    ret nz                                        ; $4c77: $c0

    ld a, [c]                                     ; $4c78: $f2
    pop hl                                        ; $4c79: $e1
    db $ed                                        ; $4c7a: $ed
    pop bc                                        ; $4c7b: $c1
    ldh a, [$7b]                                  ; $4c7c: $f0 $7b
    rst $00                                       ; $4c7e: $c7
    add b                                         ; $4c7f: $80
    jp nc, $e243                                  ; $4c80: $d2 $43 $e2

    add l                                         ; $4c83: $85
    jp Jump_02d_469c                              ; $4c84: $c3 $9c $46


    xor e                                         ; $4c87: $ab
    ld b, [hl]                                    ; $4c88: $46
    ld a, a                                       ; $4c89: $7f
    ld b, h                                       ; $4c8a: $44
    ld c, l                                       ; $4c8b: $4d
    ld c, c                                       ; $4c8c: $49
    inc sp                                        ; $4c8d: $33
    ld [hl+], a                                   ; $4c8e: $22
    inc hl                                        ; $4c8f: $23
    dec l                                         ; $4c90: $2d
    or $e0                                        ; $4c91: $f6 $e0
    add c                                         ; $4c93: $81

jr_02d_4c94:
    sbc d                                         ; $4c94: $9a
    cp h                                          ; $4c95: $bc
    jp $c67b                                      ; $4c96: $c3 $7b $c6


    add b                                         ; $4c99: $80
    call nc, $e243                                ; $4c9a: $d4 $43 $e2
    add l                                         ; $4c9d: $85
    pop bc                                        ; $4c9e: $c1
    adc [hl]                                      ; $4c9f: $8e
    ldh [$ab], a                                  ; $4ca0: $e0 $ab
    rst $38                                       ; $4ca2: $ff
    xor h                                         ; $4ca3: $ac
    ld b, [hl]                                    ; $4ca4: $46
    xor e                                         ; $4ca5: $ab
    ld d, e                                       ; $4ca6: $53
    ld d, e                                       ; $4ca7: $53

jr_02d_4ca8:
    ld b, h                                       ; $4ca8: $44
    inc a                                         ; $4ca9: $3c
    inc a                                         ; $4caa: $3c
    inc bc                                        ; $4cab: $03
    ld b, h                                       ; $4cac: $44
    ld b, [hl]                                    ; $4cad: $46
    ccf                                           ; $4cae: $3f
    ldh [$bc], a                                  ; $4caf: $e0 $bc
    call nz, $c57b                                ; $4cb1: $c4 $7b $c5
    add b                                         ; $4cb4: $80
    db $d3                                        ; $4cb5: $d3
    rlca                                          ; $4cb6: $07
    jp $c208                                      ; $4cb7: $c3 $08 $c2


    di                                            ; $4cba: $f3
    sbc l                                         ; $4cbb: $9d
    sbc d                                         ; $4cbc: $9a
    ld a, [bc]                                    ; $4cbd: $0a
    ldh [rTAC], a                                 ; $4cbe: $e0 $07
    ldh [$39], a                                  ; $4cc0: $e0 $39
    dec [hl]                                      ; $4cc2: $35

Jump_02d_4cc3:
    dec [hl]                                      ; $4cc3: $35
    xor e                                         ; $4cc4: $ab
    ld c, $79                                     ; $4cc5: $0e $79
    ret nz                                        ; $4cc7: $c0

    ld b, l                                       ; $4cc8: $45
    ld b, [hl]                                    ; $4cc9: $46
    xor e                                         ; $4cca: $ab
    cp h                                          ; $4ccb: $bc
    call nz, $a3a2                                ; $4ccc: $c4 $a2 $a3
    add b                                         ; $4ccf: $80
    pop de                                        ; $4cd0: $d1
    halt                                          ; $4cd1: $76
    and b                                         ; $4cd2: $a0
    cp $07                                        ; $4cd3: $fe $07
    push bc                                       ; $4cd5: $c5
    sbc e                                         ; $4cd6: $9b
    sbc a                                         ; $4cd7: $9f
    sbc d                                         ; $4cd8: $9a
    ld b, [hl]                                    ; $4cd9: $46
    inc bc                                        ; $4cda: $03
    inc b                                         ; $4cdb: $04
    inc b                                         ; $4cdc: $04
    rst $38                                       ; $4cdd: $ff
    inc bc                                        ; $4cde: $03
    ld b, [hl]                                    ; $4cdf: $46
    ld b, l                                       ; $4ce0: $45
    ld a, [hl-]                                   ; $4ce1: $3a
    dec [hl]                                      ; $4ce2: $35
    ld a, [hl-]                                   ; $4ce3: $3a
    xor h                                         ; $4ce4: $ac
    ld b, [hl]                                    ; $4ce5: $46
    rra                                           ; $4ce6: $1f
    cp d                                          ; $4ce7: $ba
    inc l                                         ; $4ce8: $2c
    inc l                                         ; $4ce9: $2c
    ld b, h                                       ; $4cea: $44
    xor h                                         ; $4ceb: $ac
    ld a, [hl-]                                   ; $4cec: $3a
    ret nz                                        ; $4ced: $c0

    ld [hl], a                                    ; $4cee: $77
    and b                                         ; $4cef: $a0
    ld a, d                                       ; $4cf0: $7a
    and d                                         ; $4cf1: $a2
    ld hl, sp-$80                                 ; $4cf2: $f8 $80
    db $d3                                        ; $4cf4: $d3
    ld [hl], $a0                                  ; $4cf5: $36 $a0
    rlca                                          ; $4cf7: $07
    rst $00                                       ; $4cf8: $c7
    ld b, [hl]                                    ; $4cf9: $46
    dec b                                         ; $4cfa: $05
    rrca                                          ; $4cfb: $0f
    ld bc, $f700                                  ; $4cfc: $01 $00 $f7
    dec c                                         ; $4cff: $0d
    rlca                                          ; $4d00: $07
    dec b                                         ; $4d01: $05
    ret nz                                        ; $4d02: $c0

    ldh [rLYC], a                                 ; $4d03: $e0 $45
    ld b, l                                       ; $4d05: $45
    ld l, $20                                     ; $4d06: $2e $20
    inc bc                                        ; $4d08: $03
    inc l                                         ; $4d09: $2c
    ld b, h                                       ; $4d0a: $44
    pop af                                        ; $4d0b: $f1
    ret nz                                        ; $4d0c: $c0

    xor l                                         ; $4d0d: $ad
    pop bc                                        ; $4d0e: $c1
    inc hl                                        ; $4d0f: $23
    jp nz, $d880                                  ; $4d10: $c2 $80 $d8

    rlca                                          ; $4d13: $07
    jp nz, $81fe                                  ; $4d14: $c2 $fe $81

    cp a                                          ; $4d17: $bf
    ld b, $96                                     ; $4d18: $06 $96
    sub [hl]                                      ; $4d1a: $96
    sub a                                         ; $4d1b: $97
    sub [hl]                                      ; $4d1c: $96
    ld c, $c0                                     ; $4d1d: $0e $c0
    ldh [$35], a                                  ; $4d1f: $e0 $35
    cp a                                          ; $4d21: $bf
    add hl, sp                                    ; $4d22: $39
    ld b, d                                       ; $4d23: $42
    dec h                                         ; $4d24: $25
    jr nc, jr_02d_4d76                            ; $4d25: $30 $4f

    ld d, l                                       ; $4d27: $55
    ei                                            ; $4d28: $fb
    ret nz                                        ; $4d29: $c0

    sbc h                                         ; $4d2a: $9c
    add sp, -$01                                  ; $4d2b: $e8 $ff
    jp $d980                                      ; $4d2d: $c3 $80 $d9


    rlca                                          ; $4d30: $07
    jp nz, Jump_02d_44ab                          ; $4d31: $c2 $ab $44

    ldh [rTAC], a                                 ; $4d34: $e0 $07
    rrca                                          ; $4d36: $0f
    sub [hl]                                      ; $4d37: $96
    rst $28                                       ; $4d38: $ef
    sub l                                         ; $4d39: $95
    sub [hl]                                      ; $4d3a: $96
    sub a                                         ; $4d3b: $97
    ld [$e001], sp                                ; $4d3c: $08 $01 $e0
    dec [hl]                                      ; $4d3f: $35
    ld a, $40                                     ; $4d40: $3e $40
    rrca                                          ; $4d42: $0f
    inc h                                         ; $4d43: $24
    ld hl, $554a                                  ; $4d44: $21 $4a $55
    ld a, d                                       ; $4d47: $7a
    and d                                         ; $4d48: $a2
    ld a, [hl+]                                   ; $4d49: $2a
    and c                                         ; $4d4a: $a1
    add b                                         ; $4d4b: $80
    jp c, $c207                                   ; $4d4c: $da $07 $c2

    rst $28                                       ; $4d4f: $ef
    xor h                                         ; $4d50: $ac
    dec b                                         ; $4d51: $05
    rrca                                          ; $4d52: $0f
    sub [hl]                                      ; $4d53: $96
    rst $38                                       ; $4d54: $ff
    pop hl                                        ; $4d55: $e1
    nop                                           ; $4d56: $00
    ld bc, $fe06                                  ; $4d57: $01 $06 $fe
    add c                                         ; $4d5a: $81
    ldh [$35], a                                  ; $4d5b: $e0 $35
    ld a, $39                                     ; $4d5d: $3e $39
    dec [hl]                                      ; $4d5f: $35
    inc a                                         ; $4d60: $3c
    ld b, h                                       ; $4d61: $44
    ld b, l                                       ; $4d62: $45
    ldh [$3b], a                                  ; $4d63: $e0 $3b
    and d                                         ; $4d65: $a2
    xor l                                         ; $4d66: $ad
    add c                                         ; $4d67: $81
    add b                                         ; $4d68: $80
    reti                                          ; $4d69: $d9


    rlca                                          ; $4d6a: $07
    jp $e044                                      ; $4d6b: $c3 $44 $e0


    sub l                                         ; $4d6e: $95
    sub l                                         ; $4d6f: $95
    sub [hl]                                      ; $4d70: $96
    cp a                                          ; $4d71: $bf
    rrca                                          ; $4d72: $0f
    inc b                                         ; $4d73: $04
    inc b                                         ; $4d74: $04
    rrca                                          ; $4d75: $0f

jr_02d_4d76:
    ld b, $36                                     ; $4d76: $06 $36
    add b                                         ; $4d78: $80
    ldh [$39], a                                  ; $4d79: $e0 $39
    add c                                         ; $4d7b: $81
    ld a, $3c                                     ; $4d7c: $3e $3c
    ldh [$7d], a                                  ; $4d7e: $e0 $7d
    and c                                         ; $4d80: $a1
    db $fd                                        ; $4d81: $fd
    add c                                         ; $4d82: $81
    add b                                         ; $4d83: $80
    jp c, $821d                                   ; $4d84: $da $1d $82

    ret                                           ; $4d87: $c9


    add b                                         ; $4d88: $80
    ld [bc], a                                    ; $4d89: $02
    ld a, [hl]                                    ; $4d8a: $7e
    ld b, e                                       ; $4d8b: $43
    ldh [$98], a                                  ; $4d8c: $e0 $98
    ld [bc], a                                    ; $4d8e: $02
    dec hl                                        ; $4d8f: $2b
    dec hl                                        ; $4d90: $2b
    ld [bc], a                                    ; $4d91: $02
    ld [bc], a                                    ; $4d92: $02
    ld b, c                                       ; $4d93: $41
    ret nz                                        ; $4d94: $c0

    dec bc                                        ; $4d95: $0b
    ld a, [hl-]                                   ; $4d96: $3a
    xor e                                         ; $4d97: $ab
    ei                                            ; $4d98: $fb
    pop hl                                        ; $4d99: $e1
    ld b, l                                       ; $4d9a: $45
    ld l, a                                       ; $4d9b: $6f
    and b                                         ; $4d9c: $a0
    rst $28                                       ; $4d9d: $ef
    ld h, b                                       ; $4d9e: $60
    ld h, c                                       ; $4d9f: $61
    and e                                         ; $4da0: $a3
    add b                                         ; $4da1: $80
    push de                                       ; $4da2: $d5
    db $fc                                        ; $4da3: $fc
    add e                                         ; $4da4: $83
    and e                                         ; $4da5: $a3
    adc b                                         ; $4da6: $88
    add b                                         ; $4da7: $80
    ld b, $96                                     ; $4da8: $06 $96
    sbc c                                         ; $4daa: $99
    sub [hl]                                      ; $4dab: $96
    ld [bc], a                                    ; $4dac: $02
    ld l, $03                                     ; $4dad: $2e $03
    jr nz, @+$2c                                  ; $4daf: $20 $2a

    ld b, c                                       ; $4db1: $41
    ret nz                                        ; $4db2: $c0

    ld b, b                                       ; $4db3: $40
    ret nz                                        ; $4db4: $c0

    ld a, e                                       ; $4db5: $7b
    ldh [$bb], a                                  ; $4db6: $e0 $bb
    and b                                         ; $4db8: $a0
    ld b, c                                       ; $4db9: $41
    jp nz, $83a4                                  ; $4dba: $c2 $a4 $83

    db $f4                                        ; $4dbd: $f4
    nop                                           ; $4dbe: $00
    or l                                          ; $4dbf: $b5
    add e                                         ; $4dc0: $83
    and h                                         ; $4dc1: $a4
    sbc h                                         ; $4dc2: $9c
    add e                                         ; $4dc3: $83
    pop bc                                        ; $4dc4: $c1
    sub [hl]                                      ; $4dc5: $96
    ld [$202d], sp                                ; $4dc6: $08 $2d $20
    ei                                            ; $4dc9: $fb
    jr nz, @+$36                                  ; $4dca: $20 $34

    add c                                         ; $4dcc: $81
    ret nz                                        ; $4dcd: $c0

    ld h, d                                       ; $4dce: $62
    ld a, d                                       ; $4dcf: $7a
    ld h, l                                       ; $4dd0: $65
    ld h, [hl]                                    ; $4dd1: $66
    dec [hl]                                      ; $4dd2: $35
    ld b, e                                       ; $4dd3: $43
    dec [hl]                                      ; $4dd4: $35
    ld b, b                                       ; $4dd5: $40
    db $fc                                        ; $4dd6: $fc
    add c                                         ; $4dd7: $81
    add c                                         ; $4dd8: $81
    jp $ba00                                      ; $4dd9: $c3 $00 $ba


    adc e                                         ; $4ddc: $8b
    ld h, c                                       ; $4ddd: $61
    sbc [hl]                                      ; $4dde: $9e
    ccf                                           ; $4ddf: $3f
    ldh [rIE], a                                  ; $4de0: $e0 $ff
    ld bc, $0e00                                  ; $4de2: $01 $00 $0e
    dec b                                         ; $4de5: $05
    ld hl, $4021                                  ; $4de6: $21 $21 $40
    add hl, sp                                    ; $4de9: $39
    rst $38                                       ; $4dea: $ff
    dec [hl]                                      ; $4deb: $35
    ld h, d                                       ; $4dec: $62
    ld h, a                                       ; $4ded: $67
    ld b, d                                       ; $4dee: $42
    ld a, [hl-]                                   ; $4def: $3a
    ld l, b                                       ; $4df0: $68
    ld h, [hl]                                    ; $4df1: $66
    ld a, [hl-]                                   ; $4df2: $3a
    ldh a, [$7b]                                  ; $4df3: $f0 $7b
    and b                                         ; $4df5: $a0
    ccf                                           ; $4df6: $3f
    ld [c], a                                     ; $4df7: $e2
    add b                                         ; $4df8: $80
    call c, $a5ff                                 ; $4df9: $dc $ff $a5
    ld [bc], a                                    ; $4dfc: $02
    rlca                                          ; $4dfd: $07
    rrca                                          ; $4dfe: $0f
    ld c, $7f                                     ; $4dff: $0e $7f
    dec b                                         ; $4e01: $05
    inc a                                         ; $4e02: $3c
    dec [hl]                                      ; $4e03: $35
    add hl, sp                                    ; $4e04: $39
    add hl, sp                                    ; $4e05: $39
    dec [hl]                                      ; $4e06: $35
    ld l, c                                       ; $4e07: $69
    ei                                            ; $4e08: $fb
    pop hl                                        ; $4e09: $e1
    add e                                         ; $4e0a: $83
    ld l, d                                       ; $4e0b: $6a
    ld a, $3c                                     ; $4e0c: $3e $3c
    add b                                         ; $4e0e: $80
    add b                                         ; $4e0f: $80
    and d                                         ; $4e10: $a2
    add b                                         ; $4e11: $80
    call c, Call_02d_6306                         ; $4e12: $dc $06 $63
    add [hl]                                      ; $4e15: $86
    ld h, c                                       ; $4e16: $61
    ld [bc], a                                    ; $4e17: $02
    db $fd                                        ; $4e18: $fd
    ld [bc], a                                    ; $4e19: $02
    add h                                         ; $4e1a: $84
    ret nz                                        ; $4e1b: $c0

    ld a, [hl-]                                   ; $4e1c: $3a
    ld a, [hl-]                                   ; $4e1d: $3a
    dec [hl]                                      ; $4e1e: $35
    ld l, e                                       ; $4e1f: $6b
    ld l, h                                       ; $4e20: $6c
    ld a, $0f                                     ; $4e21: $3e $0f
    ld b, h                                       ; $4e23: $44
    inc a                                         ; $4e24: $3c
    ld l, d                                       ; $4e25: $6a
    ld a, $99                                     ; $4e26: $3e $99
    ld b, b                                       ; $4e28: $40
    cp $81                                        ; $4e29: $fe $81
    ld a, l                                       ; $4e2b: $7d
    push bc                                       ; $4e2c: $c5
    nop                                           ; $4e2d: $00
    or h                                          ; $4e2e: $b4
    ldh a, [rTMA]                                 ; $4e2f: $f0 $06
    ld h, [hl]                                    ; $4e31: $66
    ld b, l                                       ; $4e32: $45
    ld h, b                                       ; $4e33: $60
    push bc                                       ; $4e34: $c5
    and c                                         ; $4e35: $a1
    jp nz, Jump_02d_6ea0                          ; $4e36: $c2 $a0 $6e

    ld [hl], h                                    ; $4e39: $74
    ld a, [hl-]                                   ; $4e3a: $3a
    ld [hl], $3b                                  ; $4e3b: $36 $3b
    dec [hl]                                      ; $4e3d: $35
    ld l, d                                       ; $4e3e: $6a
    add b                                         ; $4e3f: $80
    ret nz                                        ; $4e40: $c0

    xor e                                         ; $4e41: $ab
    xor h                                         ; $4e42: $ac
    xor e                                         ; $4e43: $ab
    ld a, l                                       ; $4e44: $7d
    push bc                                       ; $4e45: $c5
    nop                                           ; $4e46: $00
    or [hl]                                       ; $4e47: $b6
    ld d, b                                       ; $4e48: $50
    rst $38                                       ; $4e49: $ff
    add e                                         ; $4e4a: $83
    ld d, e                                       ; $4e4b: $53
    ld b, b                                       ; $4e4c: $40
    jp nz, $8560                                  ; $4e4d: $c2 $60 $85

    and c                                         ; $4e50: $a1
    ld [hl], $00                                  ; $4e51: $36 $00
    ret nz                                        ; $4e53: $c0

    ld l, c                                       ; $4e54: $69
    ld a, l                                       ; $4e55: $7d
    and b                                         ; $4e56: $a0
    dec a                                         ; $4e57: $3d
    ld l, d                                       ; $4e58: $6a
    rst $38                                       ; $4e59: $ff
    and b                                         ; $4e5a: $a0
    xor h                                         ; $4e5b: $ac
    xor e                                         ; $4e5c: $ab
    xor h                                         ; $4e5d: $ac
    sbc h                                         ; $4e5e: $9c
    dec [hl]                                      ; $4e5f: $35
    ld b, c                                       ; $4e60: $41
    ld a, b                                       ; $4e61: $78
    ld b, b                                       ; $4e62: $40

jr_02d_4e63:
    add sp, -$80                                  ; $4e63: $e8 $80
    ld a, h                                       ; $4e65: $7c
    add d                                         ; $4e66: $82
    ld h, e                                       ; $4e67: $63
    ld a, [bc]                                    ; $4e68: $0a
    jp nz, Jump_000_3fab                          ; $4e69: $c2 $ab $3f

    pop hl                                        ; $4e6c: $e1
    dec [hl]                                      ; $4e6d: $35
    ld l, h                                       ; $4e6e: $6c
    ld l, l                                       ; $4e6f: $6d
    add d                                         ; $4e70: $82
    cp a                                          ; $4e71: $bf
    and c                                         ; $4e72: $a1
    xor h                                         ; $4e73: $ac
    cp c                                          ; $4e74: $b9
    ld b, c                                       ; $4e75: $41
    ld hl, $8061                                  ; $4e76: $21 $61 $80
    ld a, h                                       ; $4e79: $7c
    add d                                         ; $4e7a: $82
    ld h, e                                       ; $4e7b: $63
    dec b                                         ; $4e7c: $05
    jp nz, $ffab                                  ; $4e7d: $c2 $ab $ff

    xor h                                         ; $4e80: $ac
    ld a, [hl-]                                   ; $4e81: $3a
    dec [hl]                                      ; $4e82: $35
    ld l, [hl]                                    ; $4e83: $6e
    ld [hl], b                                    ; $4e84: $70
    ld [hl], c                                    ; $4e85: $71
    ld [hl], b                                    ; $4e86: $70
    ld l, [hl]                                    ; $4e87: $6e
    add e                                         ; $4e88: $83
    ld [hl], $44                                  ; $4e89: $36 $44
    sbc b                                         ; $4e8b: $98
    jr nz, @+$80                                  ; $4e8c: $20 $7e

    and e                                         ; $4e8e: $a3
    add b                                         ; $4e8f: $80
    ld a, l                                       ; $4e90: $7d
    ld d, a                                       ; $4e91: $57
    ld b, c                                       ; $4e92: $41
    add h                                         ; $4e93: $84
    ld b, b                                       ; $4e94: $40
    ld b, h                                       ; $4e95: $44
    ld [hl], l                                    ; $4e96: $75
    inc a                                         ; $4e97: $3c
    jp z, $aca0                                   ; $4e98: $ca $a0 $ac

    ei                                            ; $4e9b: $fb
    jp $483a                                      ; $4e9c: $c3 $3a $48


    ld c, c                                       ; $4e9f: $49
    ret nz                                        ; $4ea0: $c0

    add b                                         ; $4ea1: $80
    or b                                          ; $4ea2: $b0
    ccf                                           ; $4ea3: $3f
    call nz, Call_02d_5d00                        ; $4ea4: $c4 $00 $5d
    ld c, c                                       ; $4ea7: $49
    jr nz, jr_02d_4eef                            ; $4ea8: $20 $45

    ld b, b                                       ; $4eaa: $40
    xor h                                         ; $4eab: $ac
    ld b, b                                       ; $4eac: $40
    pop bc                                        ; $4ead: $c1
    pop bc                                        ; $4eae: $c1
    ld [hl], $7b                                  ; $4eaf: $36 $7b
    ld a, [hl-]                                   ; $4eb1: $3a
    ld h, d                                       ; $4eb2: $62
    call nz, Call_000_35a0                        ; $4eb3: $c4 $a0 $35
    ld a, [hl-]                                   ; $4eb6: $3a
    ld d, h                                       ; $4eb7: $54
    ld d, a                                       ; $4eb8: $57
    ret nz                                        ; $4eb9: $c0

    db $e3                                        ; $4eba: $e3
    and e                                         ; $4ebb: $a3
    add $c7                                       ; $4ebc: $c6 $c7
    and b                                         ; $4ebe: $a0
    ld b, e                                       ; $4ebf: $43
    nop                                           ; $4ec0: $00
    ld e, c                                       ; $4ec1: $59
    ld [de], a                                    ; $4ec2: $12
    jr nz, jr_02d_4e63                            ; $4ec3: $20 $9e

    ld c, $60                                     ; $4ec5: $0e $60
    ld b, l                                       ; $4ec7: $45
    ld [hl], h                                    ; $4ec8: $74
    push bc                                       ; $4ec9: $c5
    add c                                         ; $4eca: $81
    jp nz, Jump_02d_68a0                          ; $4ecb: $c2 $a0 $68

    cp a                                          ; $4ece: $bf
    pop hl                                        ; $4ecf: $e1
    jr c, jr_02d_4f0f                             ; $4ed0: $38 $3d

    scf                                           ; $4ed2: $37
    cp c                                          ; $4ed3: $b9
    jr nz, jr_02d_4ed6                            ; $4ed4: $20 $00

jr_02d_4ed6:
    ret nz                                        ; $4ed6: $c0

    ld h, [hl]                                    ; $4ed7: $66
    nop                                           ; $4ed8: $00
    ld e, e                                       ; $4ed9: $5b
    cp [hl]                                       ; $4eda: $be
    ld h, e                                       ; $4edb: $63
    ccf                                           ; $4edc: $3f
    ld [c], a                                     ; $4edd: $e2
    add e                                         ; $4ede: $83
    pop bc                                        ; $4edf: $c1
    cp a                                          ; $4ee0: $bf
    ld [c], a                                     ; $4ee1: $e2
    cp a                                          ; $4ee2: $bf
    add c                                         ; $4ee3: $81
    ld bc, $00c2                                  ; $4ee4: $01 $c2 $00

jr_02d_4ee7:
    xor [hl]                                      ; $4ee7: $ae
    ld [bc], a                                    ; $4ee8: $02
    nop                                           ; $4ee9: $00
    ld e, e                                       ; $4eea: $5b
    ld b, c                                       ; $4eeb: $41
    jp $e305                                      ; $4eec: $c3 $05 $e3


jr_02d_4eef:
    ld b, e                                       ; $4eef: $43
    jp $813b                                      ; $4ef0: $c3 $3b $81


    dec sp                                        ; $4ef3: $3b
    ld [hl+], a                                   ; $4ef4: $22
    ld h, l                                       ; $4ef5: $65
    ld b, e                                       ; $4ef6: $43
    inc e                                         ; $4ef7: $1c
    nop                                           ; $4ef8: $00
    ld e, h                                       ; $4ef9: $5c
    jp $ab21                                      ; $4efa: $c3 $21 $ab


    ld b, [hl]                                    ; $4efd: $46
    ld b, l                                       ; $4efe: $45
    ret nz                                        ; $4eff: $c0

    ld [$c036], a                                 ; $4f00: $ea $36 $c0
    ld b, d                                       ; $4f03: $42
    ld h, c                                       ; $4f04: $61
    ld a, b                                       ; $4f05: $78
    ld l, l                                       ; $4f06: $6d
    ld bc, $5e00                                  ; $4f07: $01 $00 $5e
    jp $ac21                                      ; $4f0a: $c3 $21 $ac


    xor e                                         ; $4f0d: $ab
    ld c, d                                       ; $4f0e: $4a

jr_02d_4f0f:
    ld d, [hl]                                    ; $4f0f: $56
    add h                                         ; $4f10: $84
    ld h, c                                       ; $4f11: $61
    ld [$a0c3], sp                                ; $4f12: $08 $c3 $a0
    inc bc                                        ; $4f15: $03
    ret nz                                        ; $4f16: $c0

    inc a                                         ; $4f17: $3c
    ld h, b                                       ; $4f18: $60
    ld b, [hl]                                    ; $4f19: $46
    jp Jump_000_00a0                              ; $4f1a: $c3 $a0 $00


    add e                                         ; $4f1d: $83
    add b                                         ; $4f1e: $80
    ld e, $02                                     ; $4f1f: $1e $02
    ld b, e                                       ; $4f21: $43
    ei                                            ; $4f22: $fb
    ld c, d                                       ; $4f23: $4a
    ld e, b                                       ; $4f24: $58
    inc b                                         ; $4f25: $04
    ld h, c                                       ; $4f26: $61
    ld l, e                                       ; $4f27: $6b
    ld l, h                                       ; $4f28: $6c
    ld l, h                                       ; $4f29: $6c
    ld l, a                                       ; $4f2a: $6f
    ld l, [hl]                                    ; $4f2b: $6e
    ld [hl], b                                    ; $4f2c: $70
    ld bc, $83e3                                  ; $4f2d: $01 $e3 $83
    and l                                         ; $4f30: $a5
    add b                                         ; $4f31: $80
    db $dd                                        ; $4f32: $dd
    ld a, e                                       ; $4f33: $7b
    ld h, h                                       ; $4f34: $64
    ld b, h                                       ; $4f35: $44
    ld c, l                                       ; $4f36: $4d
    ld d, l                                       ; $4f37: $55
    cp $a0                                        ; $4f38: $fe $a0
    inc de                                        ; $4f3a: $13
    ld l, [hl]                                    ; $4f3b: $6e
    ld [hl], b                                    ; $4f3c: $70
    call nz, $fba0                                ; $4f3d: $c4 $a0 $fb
    ld b, c                                       ; $4f40: $41
    ld b, b                                       ; $4f41: $40
    dec sp                                        ; $4f42: $3b
    ld [bc], a                                    ; $4f43: $02
    jr nz, jr_02d_4ee7                            ; $4f44: $20 $a1

    add b                                         ; $4f46: $80
    db $dd                                        ; $4f47: $dd
    sbc $fe                                       ; $4f48: $de $fe
    inc bc                                        ; $4f4a: $03
    sbc h                                         ; $4f4b: $9c
    ld b, l                                       ; $4f4c: $45
    ld d, d                                       ; $4f4d: $52
    ld d, l                                       ; $4f4e: $55
    cp a                                          ; $4f4f: $bf
    add e                                         ; $4f50: $83
    dec [hl]                                      ; $4f51: $35
    xor e                                         ; $4f52: $ab
    jr nz, jr_02d_4f55                            ; $4f53: $20 $00

jr_02d_4f55:
    ld h, b                                       ; $4f55: $60
    rst $38                                       ; $4f56: $ff
    ld b, [hl]                                    ; $4f57: $46
    cp a                                          ; $4f58: $bf
    ld [bc], a                                    ; $4f59: $02
    nop                                           ; $4f5a: $00
    ld e, d                                       ; $4f5b: $5a
    cp $03                                        ; $4f5c: $fe $03
    sbc [hl]                                      ; $4f5e: $9e
    cp a                                          ; $4f5f: $bf
    call nz, $a57b                                ; $4f60: $c4 $7b $a5
    jr nc, @+$01                                  ; $4f63: $30 $ff

    ld b, l                                       ; $4f65: $45
    ccf                                           ; $4f66: $3f
    pop hl                                        ; $4f67: $e1
    add b                                         ; $4f68: $80
    add hl, de                                    ; $4f69: $19
    ld e, a                                       ; $4f6a: $5f
    ld [bc], a                                    ; $4f6b: $02
    add $c7                                       ; $4f6c: $c6 $c7
    ccf                                           ; $4f6e: $3f
    add b                                         ; $4f6f: $80
    inc b                                         ; $4f70: $04
    ld h, c                                       ; $4f71: $61
    ld h, [hl]                                    ; $4f72: $66
    dec a                                         ; $4f73: $3d
    add d                                         ; $4f74: $82
    ld [hl], $ab                                  ; $4f75: $36 $ab
    or $61                                        ; $4f77: $f6 $61
    rst $38                                       ; $4f79: $ff
    call nz, $cdcc                                ; $4f7a: $c4 $cc $cd
    add b                                         ; $4f7d: $80

jr_02d_4f7e:
    dec de                                        ; $4f7e: $1b
    ret nz                                        ; $4f7f: $c0

    ld b, b                                       ; $4f80: $40
    inc bc                                        ; $4f81: $03
    ret nz                                        ; $4f82: $c0

    add c                                         ; $4f83: $81
    add b                                         ; $4f84: $80
    and d                                         ; $4f85: $a2
    cp a                                          ; $4f86: $bf
    ld h, b                                       ; $4f87: $60
    ld a, [$fa80]                                 ; $4f88: $fa $80 $fa
    nop                                           ; $4f8b: $00
    add hl, sp                                    ; $4f8c: $39
    inc bc                                        ; $4f8d: $03
    ld h, c                                       ; $4f8e: $61
    inc bc                                        ; $4f8f: $03
    ld a, [hl]                                    ; $4f90: $7e
    inc bc                                        ; $4f91: $03
    nop                                           ; $4f92: $00
    cp h                                          ; $4f93: $bc
    ld b, b                                       ; $4f94: $40
    inc bc                                        ; $4f95: $03
    ret nz                                        ; $4f96: $c0

    ld h, b                                       ; $4f97: $60
    ld a, c                                       ; $4f98: $79
    ld h, h                                       ; $4f99: $64
    ld b, $a1                                     ; $4f9a: $06 $a1
    db $fd                                        ; $4f9c: $fd
    add hl, sp                                    ; $4f9d: $39
    ld a, a                                       ; $4f9e: $7f
    ld b, c                                       ; $4f9f: $41
    ld b, l                                       ; $4fa0: $45
    ld b, [hl]                                    ; $4fa1: $46
    add hl, sp                                    ; $4fa2: $39
    ld [hl], $02                                  ; $4fa3: $36 $02
    dec c                                         ; $4fa5: $0d
    ld h, e                                       ; $4fa6: $63
    ld c, $05                                     ; $4fa7: $0e $05
    ld a, [hl]                                    ; $4fa9: $7e
    ld [$b800], sp                                ; $4faa: $08 $00 $b8
    cp h                                          ; $4fad: $bc
    inc hl                                        ; $4fae: $23
    ld a, c                                       ; $4faf: $79
    ld a, [hl]                                    ; $4fb0: $7e
    jp z, Jump_000_0c40                           ; $4fb1: $ca $40 $0c

    adc b                                         ; $4fb4: $88
    jr nz, @+$41                                  ; $4fb5: $20 $3f

    ld b, c                                       ; $4fb7: $41
    dec b                                         ; $4fb8: $05
    rlca                                          ; $4fb9: $07
    or l                                          ; $4fba: $b5
    jr nz, @+$75                                  ; $4fbb: $20 $73

    jr nz, jr_02d_4f7e                            ; $4fbd: $20 $bf

    add [hl]                                      ; $4fbf: $86
    nop                                           ; $4fc0: $00
    cp l                                          ; $4fc1: $bd
    adc [hl]                                      ; $4fc2: $8e
    pop bc                                        ; $4fc3: $c1
    ld h, b                                       ; $4fc4: $60
    add d                                         ; $4fc5: $82
    add e                                         ; $4fc6: $83
    add hl, sp                                    ; $4fc7: $39
    rst $00                                       ; $4fc8: $c7
    and c                                         ; $4fc9: $a1
    cp a                                          ; $4fca: $bf
    ld b, b                                       ; $4fcb: $40
    ret nz                                        ; $4fcc: $c0

    ldh [$98], a                                  ; $4fcd: $e0 $98
    ld a, $31                                     ; $4fcf: $3e $31
    jr nz, jr_02d_4fe2                            ; $4fd1: $20 $0f

    rlca                                          ; $4fd3: $07
    ld [bc], a                                    ; $4fd4: $02
    sbc d                                         ; $4fd5: $9a
    sbc l                                         ; $4fd6: $9d
    pop hl                                        ; $4fd7: $e1
    nop                                           ; $4fd8: $00
    cp $a1                                        ; $4fd9: $fe $a1
    db $fc                                        ; $4fdb: $fc
    add b                                         ; $4fdc: $80
    reti                                          ; $4fdd: $d9


    cp [hl]                                       ; $4fde: $be
    ld b, d                                       ; $4fdf: $42
    sbc l                                         ; $4fe0: $9d
    sbc d                                         ; $4fe1: $9a

jr_02d_4fe2:
    add h                                         ; $4fe2: $84
    add l                                         ; $4fe3: $85
    add [hl]                                      ; $4fe4: $86
    ld [hl], b                                    ; $4fe5: $70
    db $fc                                        ; $4fe6: $fc
    rst $00                                       ; $4fe7: $c7
    and b                                         ; $4fe8: $a0
    ret nz                                        ; $4fe9: $c0

    pop hl                                        ; $4fea: $e1
    add hl, sp                                    ; $4feb: $39
    dec b                                         ; $4fec: $05
    sub a                                         ; $4fed: $97
    sbc c                                         ; $4fee: $99
    sub l                                         ; $4fef: $95
    sub [hl]                                      ; $4ff0: $96
    add c                                         ; $4ff1: $81
    ld b, $c0                                     ; $4ff2: $06 $c0
    inc b                                         ; $4ff4: $04
    ld e, $60                                     ; $4ff5: $1e $60
    add b                                         ; $4ff7: $80
    ld a, c                                       ; $4ff8: $79
    rst $38                                       ; $4ff9: $ff
    add h                                         ; $4ffa: $84
    cp a                                          ; $4ffb: $bf
    ld b, b                                       ; $4ffc: $40
    cp a                                          ; $4ffd: $bf
    ld h, c                                       ; $4ffe: $61
    ld a, [hl-]                                   ; $4fff: $3a
    ld b, $04                                     ; $5000: $06 $04
    ret nz                                        ; $5002: $c0

    ld [hl], $45                                  ; $5003: $36 $45
    pop af                                        ; $5005: $f1
    nop                                           ; $5006: $00
    ld [hl], $00                                  ; $5007: $36 $00
    ret nz                                        ; $5009: $c0

    dec b                                         ; $500a: $05
    nop                                           ; $500b: $00
    ld e, h                                       ; $500c: $5c
    cp [hl]                                       ; $500d: $be
    ld b, h                                       ; $500e: $44
    sbc e                                         ; $500f: $9b
    sbc l                                         ; $5010: $9d
    sbc d                                         ; $5011: $9a
    ld b, h                                       ; $5012: $44
    ld hl, $ac39                                  ; $5013: $21 $39 $ac
    add $c0                                       ; $5016: $c6 $c0
    dec [hl]                                      ; $5018: $35
    ld [bc], a                                    ; $5019: $02
    ld [bc], a                                    ; $501a: $02
    ret nz                                        ; $501b: $c0

    add c                                         ; $501c: $81
    ld [hl+], a                                   ; $501d: $22
    ld b, e                                       ; $501e: $43
    dec l                                         ; $501f: $2d
    nop                                           ; $5020: $00
    or d                                          ; $5021: $b2
    db $fd                                        ; $5022: $fd
    and b                                         ; $5023: $a0
    cp a                                          ; $5024: $bf
    and d                                         ; $5025: $a2
    call nz, Call_02d_4000                        ; $5026: $c4 $00 $40
    dec b                                         ; $5029: $05
    ld a, [de]                                    ; $502a: $1a
    ld a, e                                       ; $502b: $7b
    nop                                           ; $502c: $00
    sub [hl]                                      ; $502d: $96
    add c                                         ; $502e: $81
    ldh [$97], a                                  ; $502f: $e0 $97
    dec b                                         ; $5031: $05
    add c                                         ; $5032: $81
    and b                                         ; $5033: $a0
    ret nz                                        ; $5034: $c0

    ld b, $80                                     ; $5035: $06 $80
    db $db                                        ; $5037: $db
    inc h                                         ; $5038: $24
    dec a                                         ; $5039: $3d
    add b                                         ; $503a: $80
    add hl, sp                                    ; $503b: $39
    ld [bc], a                                    ; $503c: $02
    ld b, b                                       ; $503d: $40
    adc d                                         ; $503e: $8a
    nop                                           ; $503f: $00
    rst $30                                       ; $5040: $f7
    ld bc, $ff95                                  ; $5041: $01 $95 $ff
    ldh [rSB], a                                  ; $5044: $e0 $01
    ldh [$30], a                                  ; $5046: $e0 $30
    ret nz                                        ; $5048: $c0

    adc b                                         ; $5049: $88
    add b                                         ; $504a: $80
    ld a, e                                       ; $504b: $7b
    sbc l                                         ; $504c: $9d
    ld h, d                                       ; $504d: $62
    ld a, a                                       ; $504e: $7f
    and c                                         ; $504f: $a1
    ld [hl], $39                                  ; $5050: $36 $39
    scf                                           ; $5052: $37
    ld bc, $e1c2                                  ; $5053: $01 $c2 $e1
    add a                                         ; $5056: $87
    sub [hl]                                      ; $5057: $96
    sub a                                         ; $5058: $97
    ld [$89c0], sp                                ; $5059: $08 $c0 $89
    nop                                           ; $505c: $00
    cp d                                          ; $505d: $ba
    sbc e                                         ; $505e: $9b
    and d                                         ; $505f: $a2
    ld a, a                                       ; $5060: $7f
    ld b, b                                       ; $5061: $40
    ld b, [hl]                                    ; $5062: $46
    cp a                                          ; $5063: $bf
    ld b, [hl]                                    ; $5064: $46
    ld b, l                                       ; $5065: $45
    ld b, l                                       ; $5066: $45
    ld b, $01                                     ; $5067: $06 $01
    nop                                           ; $5069: $00
    call nz, $96c0                                ; $506a: $c4 $c0 $96
    rrca                                          ; $506d: $0f
    sub a                                         ; $506e: $97
    ld bc, $0600                                  ; $506f: $01 $00 $06
    add b                                         ; $5072: $80
    inc bc                                        ; $5073: $03
    ld b, e                                       ; $5074: $43
    adc h                                         ; $5075: $8c
    add b                                         ; $5076: $80
    ret nc                                        ; $5077: $d0

    ld [bc], a                                    ; $5078: $02
    db $e3                                        ; $5079: $e3
    ei                                            ; $507a: $fb
    sbc h                                         ; $507b: $9c
    xor e                                         ; $507c: $ab
    rst $08                                       ; $507d: $cf
    nop                                           ; $507e: $00
    ld b, [hl]                                    ; $507f: $46
    ld b, [hl]                                    ; $5080: $46
    dec b                                         ; $5081: $05
    rlca                                          ; $5082: $07
    rrca                                          ; $5083: $0f
    rla                                           ; $5084: $17
    sbc c                                         ; $5085: $99
    sub [hl]                                      ; $5086: $96
    sub a                                         ; $5087: $97
    inc bc                                        ; $5088: $03
    pop bc                                        ; $5089: $c1
    dec b                                         ; $508a: $05
    add b                                         ; $508b: $80
    rra                                           ; $508c: $1f
    ld [hl], e                                    ; $508d: $73
    add e                                         ; $508e: $83
    ld [bc], a                                    ; $508f: $02
    db $e4                                        ; $5090: $e4
    ld [hl], h                                    ; $5091: $74
    pop bc                                        ; $5092: $c1
    ld [c], a                                     ; $5093: $e2
    db $e4                                        ; $5094: $e4
    ld b, b                                       ; $5095: $40
    ld [bc], a                                    ; $5096: $02
    add a                                         ; $5097: $87

jr_02d_5098:
    and b                                         ; $5098: $a0
    sub a                                         ; $5099: $97
    dec c                                         ; $509a: $0d
    ld [bc], a                                    ; $509b: $02
    pop bc                                        ; $509c: $c1

jr_02d_509d:
    ld bc, $42e0                                  ; $509d: $01 $e0 $42
    ld [hl+], a                                   ; $50a0: $22
    add b                                         ; $50a1: $80
    sbc $de                                       ; $50a2: $de $de
    ld h, e                                       ; $50a4: $63
    ld d, l                                       ; $50a5: $55
    ld b, c                                       ; $50a6: $41
    cp a                                          ; $50a7: $bf
    db $e4                                        ; $50a8: $e4
    inc b                                         ; $50a9: $04

jr_02d_50aa:
    inc bc                                        ; $50aa: $03
    inc bc                                        ; $50ab: $03
    ld bc, $8203                                  ; $50ac: $01 $03 $82
    ld bc, $2002                                  ; $50af: $01 $02 $20
    ld h, c                                       ; $50b2: $61
    add h                                         ; $50b3: $84
    add b                                         ; $50b4: $80
    ld a, e                                       ; $50b5: $7b
    ld e, l                                       ; $50b6: $5d
    ld [bc], a                                    ; $50b7: $02
    ret nz                                        ; $50b8: $c0

    rst $20                                       ; $50b9: $e7
    or a                                          ; $50ba: $b7
    push hl                                       ; $50bb: $e5
    ldh a, [rSC]                                  ; $50bc: $f0 $02
    jr nz, jr_02d_5102                            ; $50be: $20 $42

    and h                                         ; $50c0: $a4
    add b                                         ; $50c1: $80
    ld a, h                                       ; $50c2: $7c
    ld b, b                                       ; $50c3: $40
    inc b                                         ; $50c4: $04
    ld b, l                                       ; $50c5: $45
    ld b, e                                       ; $50c6: $43
    ccf                                           ; $50c7: $3f
    ccf                                           ; $50c8: $3f
    inc b                                         ; $50c9: $04
    db $fd                                        ; $50ca: $fd
    pop hl                                        ; $50cb: $e1
    ld sp, hl                                     ; $50cc: $f9
    db $e4                                        ; $50cd: $e4
    xor e                                         ; $50ce: $ab
    ld b, d                                       ; $50cf: $42
    and [hl]                                      ; $50d0: $a6
    nop                                           ; $50d1: $00
    ld e, d                                       ; $50d2: $5a
    pop bc                                        ; $50d3: $c1
    ld h, b                                       ; $50d4: $60
    add b                                         ; $50d5: $80
    jr nz, jr_02d_5098                            ; $50d6: $20 $c0

    ld hl, $4417                                  ; $50d8: $21 $17 $44
    and c                                         ; $50db: $a1
    ld h, h                                       ; $50dc: $64
    rst $38                                       ; $50dd: $ff
    add sp, -$5e                                  ; $50de: $e8 $a2
    ld b, d                                       ; $50e0: $42
    pop hl                                        ; $50e1: $e1
    ld b, d                                       ; $50e2: $42
    dec h                                         ; $50e3: $25
    nop                                           ; $50e4: $00
    ld e, b                                       ; $50e5: $58
    ld a, [$43a0]                                 ; $50e6: $fa $a0 $43
    sbc [hl]                                      ; $50e9: $9e
    xor e                                         ; $50ea: $ab
    jr nz, jr_02d_512d                            ; $50eb: $20 $40

    ld l, c                                       ; $50ed: $69
    and b                                         ; $50ee: $a0
    dec [hl]                                      ; $50ef: $35
    dec [hl]                                      ; $50f0: $35
    dec c                                         ; $50f1: $0d
    and b                                         ; $50f2: $a0
    db $fc                                        ; $50f3: $fc
    push hl                                       ; $50f4: $e5
    ld l, d                                       ; $50f5: $6a
    ld b, b                                       ; $50f6: $40
    db $ec                                        ; $50f7: $ec
    pop hl                                        ; $50f8: $e1
    add c                                         ; $50f9: $81
    ld b, d                                       ; $50fa: $42
    add b                                         ; $50fb: $80
    ld a, [de]                                    ; $50fc: $1a
    ld bc, $3040                                  ; $50fd: $01 $40 $30
    add c                                         ; $5100: $81
    inc hl                                        ; $5101: $23

jr_02d_5102:
    ret nz                                        ; $5102: $c0

    ldh [$c1], a                                  ; $5103: $e0 $c1
    ld b, h                                       ; $5105: $44
    ld a, [$6a42]                                 ; $5106: $fa $42 $6a
    ld b, b                                       ; $5109: $40
    ld b, d                                       ; $510a: $42
    ld h, $80                                     ; $510b: $26 $80
    rra                                           ; $510d: $1f
    ld [hl], $00                                  ; $510e: $36 $00
    inc hl                                        ; $5110: $23
    ld l, e                                       ; $5111: $6b
    ld [hl], c                                    ; $5112: $71
    rst $38                                       ; $5113: $ff
    add sp, $6d                                   ; $5114: $e8 $6d
    ld b, h                                       ; $5116: $44
    add b                                         ; $5117: $80

jr_02d_5118:
    jr nz, jr_02d_509d                            ; $5118: $20 $83

    ld h, d                                       ; $511a: $62
    ld e, b                                       ; $511b: $58
    ret nc                                        ; $511c: $d0

    dec l                                         ; $511d: $2d
    add b                                         ; $511e: $80
    ld de, $c1c0                                  ; $511f: $11 $c0 $c1
    xor h                                         ; $5122: $ac
    xor e                                         ; $5123: $ab
    ret nz                                        ; $5124: $c0

    jp z, $8045                                   ; $5125: $ca $45 $80

    jr nz, jr_02d_50aa                            ; $5128: $20 $80

    ld h, [hl]                                    ; $512a: $66
    nop                                           ; $512b: $00
    ld b, e                                       ; $512c: $43

jr_02d_512d:
    inc l                                         ; $512d: $2c
    add b                                         ; $512e: $80
    inc de                                        ; $512f: $13
    ld b, b                                       ; $5130: $40
    and d                                         ; $5131: $a2
    dec a                                         ; $5132: $3d
    nop                                           ; $5133: $00
    inc a                                         ; $5134: $3c
    jp z, Jump_000_21c1                           ; $5135: $ca $c1 $21

    ret z                                         ; $5138: $c8

    ld de, $43c9                                  ; $5139: $11 $c9 $43
    inc l                                         ; $513c: $2c
    add b                                         ; $513d: $80
    ld [hl], e                                    ; $513e: $73
    ld a, $c2                                     ; $513f: $3e $c2
    sbc e                                         ; $5141: $9b
    rst $38                                       ; $5142: $ff
    ldh [$39], a                                  ; $5143: $e0 $39
    nop                                           ; $5145: $00
    push bc                                       ; $5146: $c5
    ld [c], a                                     ; $5147: $e2
    nop                                           ; $5148: $00
    db $f4                                        ; $5149: $f4
    pop hl                                        ; $514a: $e1
    ld b, e                                       ; $514b: $43
    ld bc, $2442                                  ; $514c: $01 $42 $24
    add b                                         ; $514f: $80
    ld a, l                                       ; $5150: $7d
    ld a, $c0                                     ; $5151: $3e $c0
    push de                                       ; $5153: $d5
    ld h, e                                       ; $5154: $63
    jr c, jr_02d_5118                             ; $5155: $38 $c1

    add [hl]                                      ; $5157: $86
    db $e3                                        ; $5158: $e3
    ld b, $a6                                     ; $5159: $06 $a6
    add c                                         ; $515b: $81
    call nz, Call_02d_66c5                        ; $515c: $c4 $c5 $66
    add d                                         ; $515f: $82
    add b                                         ; $5160: $80
    ld a, [hl]                                    ; $5161: $7e
    cp l                                          ; $5162: $bd
    ld hl, $a0bb                                  ; $5163: $21 $bb $a0
    ld sp, hl                                     ; $5166: $f9
    ld hl, $4b00                                  ; $5167: $21 $00 $4b
    jp nz, $c246                                  ; $516a: $c2 $46 $c2

    ld l, d                                       ; $516d: $6a
    ret nz                                        ; $516e: $c0

    ld [bc], a                                    ; $516f: $02
    and d                                         ; $5170: $a2
    add b                                         ; $5171: $80
    rst $18                                       ; $5172: $df
    sbc h                                         ; $5173: $9c
    ld [bc], a                                    ; $5174: $02
    cp e                                          ; $5175: $bb
    and b                                         ; $5176: $a0
    ld a, b                                       ; $5177: $78
    and c                                         ; $5178: $a1
    ld [bc], a                                    ; $5179: $02
    ld sp, hl                                     ; $517a: $f9
    add d                                         ; $517b: $82
    sbc h                                         ; $517c: $9c
    inc l                                         ; $517d: $2c
    push hl                                       ; $517e: $e5
    ld h, h                                       ; $517f: $64
    ld [hl+], a                                   ; $5180: $22
    ld d, b                                       ; $5181: $50
    dec c                                         ; $5182: $0d
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    cp a                                          ; $5186: $bf
    dec c                                         ; $5187: $0d
    dec c                                         ; $5188: $0d
    dec c                                         ; $5189: $0d
    ld c, $0e                                     ; $518a: $0e $0e
    ld c, $fa                                     ; $518c: $0e $fa
    ld [$c34d], a                                 ; $518e: $ea $4d $c3
    ld c, l                                       ; $5191: $4d
    ld c, l                                       ; $5192: $4d
    ld [$e9e0], a                                 ; $5193: $ea $e0 $e9
    ldh [$fd], a                                  ; $5196: $e0 $fd
    pop hl                                        ; $5198: $e1
    rst $30                                       ; $5199: $f7
    and $0e                                       ; $519a: $e6 $0e
    ld c, $00                                     ; $519c: $0e $00
    ld [$d5e0], a                                 ; $519e: $ea $e0 $d5
    ld [c], a                                     ; $51a1: $e2
    ret nc                                        ; $51a2: $d0

    db $ec                                        ; $51a3: $ec
    db $fd                                        ; $51a4: $fd
    xor $cf                                       ; $51a5: $ee $cf
    and $ba                                       ; $51a7: $e6 $ba
    pop hl                                        ; $51a9: $e1
    db $fc                                        ; $51aa: $fc
    db $e3                                        ; $51ab: $e3
    cp l                                          ; $51ac: $bd
    push hl                                       ; $51ad: $e5
    jr nz, @+$01                                  ; $51ae: $20 $ff

    rst $38                                       ; $51b0: $ff
    ret nz                                        ; $51b1: $c0

    rst $20                                       ; $51b2: $e7
    ld a, e                                       ; $51b3: $7b
    ldh [rPCM12], a                               ; $51b4: $e0 $76
    ldh [$fd], a                                  ; $51b6: $e0 $fd
    pop hl                                        ; $51b8: $e1
    dec l                                         ; $51b9: $2d
    ret nz                                        ; $51ba: $c0

    ei                                            ; $51bb: $fb
    dec a                                         ; $51bc: $3d
    rst $28                                       ; $51bd: $ef
    cp $46                                        ; $51be: $fe $46
    db $e3                                        ; $51c0: $e3
    ld l, l                                       ; $51c1: $6d
    ld l, e                                       ; $51c2: $6b
    ld l, e                                       ; $51c3: $6b
    dec hl                                        ; $51c4: $2b
    ld a, [bc]                                    ; $51c5: $0a
    ld a, [hl+]                                   ; $51c6: $2a
    dec bc                                        ; $51c7: $0b
    inc bc                                        ; $51c8: $03
    ld l, e                                       ; $51c9: $6b
    ld l, e                                       ; $51ca: $6b
    cp a                                          ; $51cb: $bf
    ldh [$35], a                                  ; $51cc: $e0 $35
    ld [c], a                                     ; $51ce: $e2
    ld b, e                                       ; $51cf: $43
    ldh a, [$3f]                                  ; $51d0: $f0 $3f
    xor $d6                                       ; $51d2: $ee $d6
    db $e3                                        ; $51d4: $e3
    nop                                           ; $51d5: $00
    pop hl                                        ; $51d6: $e1
    rst $38                                       ; $51d7: $ff
    ld l, l                                       ; $51d8: $6d
    dec c                                         ; $51d9: $0d
    dec hl                                        ; $51da: $2b
    dec bc                                        ; $51db: $0b
    ld l, e                                       ; $51dc: $6b
    ld a, [bc]                                    ; $51dd: $0a
    ld a, [hl+]                                   ; $51de: $2a
    ld c, e                                       ; $51df: $4b
    jp Jump_000_0d0b                              ; $51e0: $c3 $0b $0d


    cp a                                          ; $51e3: $bf
    pop hl                                        ; $51e4: $e1
    rlca                                          ; $51e5: $07
    db $e4                                        ; $51e6: $e4
    ld b, e                                       ; $51e7: $43
    rst $38                                       ; $51e8: $ff
    call nc, Call_02d_6dc5                        ; $51e9: $d4 $c5 $6d
    ld l, e                                       ; $51ec: $6b
    ld a, a                                       ; $51ed: $7f
    dec c                                         ; $51ee: $0d
    ld a, [bc]                                    ; $51ef: $0a
    ld a, [hl+]                                   ; $51f0: $2a
    dec hl                                        ; $51f1: $2b
    dec hl                                        ; $51f2: $2b
    dec bc                                        ; $51f3: $0b
    dec bc                                        ; $51f4: $0b
    ret nz                                        ; $51f5: $c0

    ldh [$81], a                                  ; $51f6: $e0 $81
    ld l, e                                       ; $51f8: $6b
    ld a, $e1                                     ; $51f9: $3e $e1
    ld b, e                                       ; $51fb: $43
    rst $38                                       ; $51fc: $ff
    ld [hl], h                                    ; $51fd: $74
    jp nz, $c184                                  ; $51fe: $c2 $84 $c1

    ld l, a                                       ; $5201: $6f
    pop bc                                        ; $5202: $c1
    ld c, b                                       ; $5203: $48
    ldh [rWY], a                                  ; $5204: $e0 $4a
    db $fd                                        ; $5206: $fd
    ld a, [bc]                                    ; $5207: $0a
    jp nz, Jump_000_0be0                          ; $5208: $c2 $e0 $0b

    dec hl                                        ; $520b: $2b
    ld l, e                                       ; $520c: $6b
    ld l, e                                       ; $520d: $6b
    ld l, e                                       ; $520e: $6b
    ld l, l                                       ; $520f: $6d
    ld [de], a                                    ; $5210: $12
    ld [hl], b                                    ; $5211: $70
    jp Jump_02d_7b4d                              ; $5212: $c3 $4d $7b


    rst $00                                       ; $5215: $c7
    add b                                         ; $5216: $80
    jp nc, $df4d                                  ; $5217: $d2 $4d $df

    ldh [rOBP0], a                                ; $521a: $e0 $48
    push bc                                       ; $521c: $c5
    adc c                                         ; $521d: $89
    pop hl                                        ; $521e: $e1
    ld e, $02                                     ; $521f: $1e $02
    ldh [rWX], a                                  ; $5221: $e0 $4b
    ld c, e                                       ; $5223: $4b
    ld c, e                                       ; $5224: $4b
    ld l, e                                       ; $5225: $6b
    ccf                                           ; $5226: $3f
    ldh [$bc], a                                  ; $5227: $e0 $bc
    jp $e1c0                                      ; $5229: $c3 $c0 $e1


    jr c, jr_02d_5271                             ; $522c: $38 $43

    rst $38                                       ; $522e: $ff
    ld c, b                                       ; $522f: $48
    push bc                                       ; $5230: $c5
    ccf                                           ; $5231: $3f
    ld [c], a                                     ; $5232: $e2
    ld c, e                                       ; $5233: $4b
    ld l, e                                       ; $5234: $6b
    dec bc                                        ; $5235: $0b
    ret nz                                        ; $5236: $c0

    ldh [$bc], a                                  ; $5237: $e0 $bc
    push bc                                       ; $5239: $c5
    and b                                         ; $523a: $a0
    dec sp                                        ; $523b: $3b
    jp nc, $a6bd                                  ; $523c: $d2 $bd $a6

    inc e                                         ; $523f: $1c
    push bc                                       ; $5240: $c5
    ld b, a                                       ; $5241: $47

jr_02d_5242:
    ret nz                                        ; $5242: $c0

    jp nz, Jump_02d_6bc0                          ; $5243: $c2 $c0 $6b

    ret z                                         ; $5246: $c8

    pop hl                                        ; $5247: $e1
    dec hl                                        ; $5248: $2b
    inc sp                                        ; $5249: $33
    ld c, e                                       ; $524a: $4b
    ld c, e                                       ; $524b: $4b
    ld a, [$bce1]                                 ; $524c: $fa $e1 $bc
    ldh [rKEY1], a                                ; $524f: $e0 $4d
    dec l                                         ; $5251: $2d
    ld h, e                                       ; $5252: $63
    pop hl                                        ; $5253: $e1
    ldh a, [$a6]                                  ; $5254: $f0 $a6
    ld hl, sp-$80                                 ; $5256: $f8 $80
    rst $08                                       ; $5258: $cf
    adc l                                         ; $5259: $8d
    xor b                                         ; $525a: $a8
    jp nz, Jump_000_0bc0                          ; $525b: $c2 $c0 $0b

    inc c                                         ; $525e: $0c
    inc c                                         ; $525f: $0c
    inc l                                         ; $5260: $2c
    inc l                                         ; $5261: $2c
    ld h, e                                       ; $5262: $63
    ld l, e                                       ; $5263: $6b
    dec hl                                        ; $5264: $2b
    ret nz                                        ; $5265: $c0

    ld [c], a                                     ; $5266: $e2
    db $fc                                        ; $5267: $fc
    ret nz                                        ; $5268: $c0

    cp d                                          ; $5269: $ba
    ldh [rKEY1], a                                ; $526a: $e0 $4d
    dec l                                         ; $526c: $2d
    ld l, [hl]                                    ; $526d: $6e
    and l                                         ; $526e: $a5
    db $ec                                        ; $526f: $ec
    or [hl]                                       ; $5270: $b6

jr_02d_5271:
    ret c                                         ; $5271: $d8

    rlca                                          ; $5272: $07
    push bc                                       ; $5273: $c5
    dec bc                                        ; $5274: $0b
    inc l                                         ; $5275: $2c
    pop bc                                        ; $5276: $c1
    ldh [$2c], a                                  ; $5277: $e0 $2c
    inc c                                         ; $5279: $0c
    inc c                                         ; $527a: $0c
    inc hl                                        ; $527b: $23
    ld l, e                                       ; $527c: $6b
    ld c, e                                       ; $527d: $4b
    cp a                                          ; $527e: $bf
    ret nz                                        ; $527f: $c0

    jr c, jr_02d_5242                             ; $5280: $38 $c0

    dec sp                                        ; $5282: $3b
    ldh [rWX], a                                  ; $5283: $e0 $4b
    cp e                                          ; $5285: $bb
    call nz, $ab4b                                ; $5286: $c4 $4b $ab
    sbc h                                         ; $5289: $9c
    nop                                           ; $528a: $00
    xor h                                         ; $528b: $ac
    rlca                                          ; $528c: $07
    jp nz, Jump_000_0b0b                          ; $528d: $c2 $0b $0b

    ld c, e                                       ; $5290: $4b
    ret nz                                        ; $5291: $c0

    ldh [rIE], a                                  ; $5292: $e0 $ff
    ldh [$6c], a                                  ; $5294: $e0 $6c
    add hl, sp                                    ; $5296: $39
    ld c, h                                       ; $5297: $4c
    ld b, b                                       ; $5298: $40
    ldh [$7f], a                                  ; $5299: $e0 $7f
    ret nz                                        ; $529b: $c0

    dec hl                                        ; $529c: $2b
    ld a, [bc]                                    ; $529d: $0a
    ld c, d                                       ; $529e: $4a
    ret nz                                        ; $529f: $c0

    pop hl                                        ; $52a0: $e1
    ld a, a                                       ; $52a1: $7f
    ldh [$4c], a                                  ; $52a2: $e0 $4c
    nop                                           ; $52a4: $00
    cp e                                          ; $52a5: $bb
    adc c                                         ; $52a6: $89
    and e                                         ; $52a7: $a3
    dec c                                         ; $52a8: $0d
    ld c, e                                       ; $52a9: $4b
    call nz, $c0e1                                ; $52aa: $c4 $e1 $c0
    pop hl                                        ; $52ad: $e1
    inc l                                         ; $52ae: $2c
    ld bc, $1be0                                  ; $52af: $01 $e0 $1b
    ld c, e                                       ; $52b2: $4b
    dec hl                                        ; $52b3: $2b
    ccf                                           ; $52b4: $3f
    ret nz                                        ; $52b5: $c0

    ld c, d                                       ; $52b6: $4a
    ld a, [bc]                                    ; $52b7: $0a
    ld a, [c]                                     ; $52b8: $f2
    ret nz                                        ; $52b9: $c0

    ret nz                                        ; $52ba: $c0

    pop hl                                        ; $52bb: $e1
    cp e                                          ; $52bc: $bb
    cp e                                          ; $52bd: $bb
    add b                                         ; $52be: $80
    ld b, a                                       ; $52bf: $47
    call nz, $e284                                ; $52c0: $c4 $84 $e2
    add b                                         ; $52c3: $80
    pop hl                                        ; $52c4: $e1
    add c                                         ; $52c5: $81
    pop hl                                        ; $52c6: $e1
    ret nz                                        ; $52c7: $c0

    ldh [rSTAT], a                                ; $52c8: $e0 $41
    ldh [$3b], a                                  ; $52ca: $e0 $3b
    ret nz                                        ; $52cc: $c0

    ld l, l                                       ; $52cd: $6d
    pop hl                                        ; $52ce: $e1
    dec c                                         ; $52cf: $0d
    ret nz                                        ; $52d0: $c0

    db $f4                                        ; $52d1: $f4
    ld b, e                                       ; $52d2: $43
    add sp, -$39                                  ; $52d3: $e8 $c7
    and d                                         ; $52d5: $a2
    ld b, h                                       ; $52d6: $44
    db $e4                                        ; $52d7: $e4
    ld l, h                                       ; $52d8: $6c
    ld c, h                                       ; $52d9: $4c
    ld c, h                                       ; $52da: $4c
    ld sp, $020c                                  ; $52db: $31 $0c $02
    ret nz                                        ; $52de: $c0

    ccf                                           ; $52df: $3f
    ldh [$7c], a                                  ; $52e0: $e0 $7c
    and b                                         ; $52e2: $a0
    ld l, e                                       ; $52e3: $6b
    ld c, e                                       ; $52e4: $4b
    add c                                         ; $52e5: $81
    ret                                           ; $52e6: $c9


    nop                                           ; $52e7: $00
    or d                                          ; $52e8: $b2
    call z, $a2c3                                 ; $52e9: $cc $c3 $a2
    adc h                                         ; $52ec: $8c
    add b                                         ; $52ed: $80
    dec l                                         ; $52ee: $2d
    dec bc                                        ; $52ef: $0b
    rst $00                                       ; $52f0: $c7
    ldh [rDIV], a                                 ; $52f1: $e0 $04
    ldh [$0b], a                                  ; $52f3: $e0 $0b
    dec hl                                        ; $52f5: $2b
    inc hl                                        ; $52f6: $23
    ld c, h                                       ; $52f7: $4c
    ld l, h                                       ; $52f8: $6c
    ld b, b                                       ; $52f9: $40
    pop hl                                        ; $52fa: $e1
    add b                                         ; $52fb: $80
    pop bc                                        ; $52fc: $c1
    xor $c0                                       ; $52fd: $ee $c0
    ld l, l                                       ; $52ff: $6d
    rst $28                                       ; $5300: $ef
    ld l, c                                       ; $5301: $69
    add hl, bc                                    ; $5302: $09
    sub c                                         ; $5303: $91
    inc d                                         ; $5304: $14
    add e                                         ; $5305: $83
    and l                                         ; $5306: $a5
    cp a                                          ; $5307: $bf
    ldh [$6c], a                                  ; $5308: $e0 $6c
    inc b                                         ; $530a: $04
    pop hl                                        ; $530b: $e1
    ld l, e                                       ; $530c: $6b
    add a                                         ; $530d: $87
    ret nz                                        ; $530e: $c0

    pop bc                                        ; $530f: $c1
    pop bc                                        ; $5310: $c1
    ld l, a                                       ; $5311: $6f
    ldh [rSC], a                                  ; $5312: $e0 $02
    add b                                         ; $5314: $80
    ret nz                                        ; $5315: $c0

    dec bc                                        ; $5316: $0b
    ld b, c                                       ; $5317: $41
    rst $00                                       ; $5318: $c7
    add b                                         ; $5319: $80
    sub $8e                                       ; $531a: $d6 $8e
    ld h, l                                       ; $531c: $65
    add e                                         ; $531d: $83
    jp nz, $e0c0                                  ; $531e: $c2 $c0 $e0

    ld c, c                                       ; $5321: $49
    pop hl                                        ; $5322: $e1
    nop                                           ; $5323: $00
    pop bc                                        ; $5324: $c1
    add b                                         ; $5325: $80
    add d                                         ; $5326: $82
    pop hl                                        ; $5327: $e1
    ld a, a                                       ; $5328: $7f
    pop hl                                        ; $5329: $e1
    ld b, l                                       ; $532a: $45
    and d                                         ; $532b: $a2
    inc de                                        ; $532c: $13
    sub b                                         ; $532d: $90
    dec a                                         ; $532e: $3d
    xor $3f                                       ; $532f: $ee $3f
    ldh [$03], a                                  ; $5331: $e0 $03
    pop bc                                        ; $5333: $c1
    jr @+$47                                      ; $5334: $18 $45

    and c                                         ; $5336: $a1
    inc bc                                        ; $5337: $03
    pop hl                                        ; $5338: $e1
    ret nz                                        ; $5339: $c0

    and b                                         ; $533a: $a0
    ld c, e                                       ; $533b: $4b
    dec c                                         ; $533c: $0d
    ccf                                           ; $533d: $3f
    db $e4                                        ; $533e: $e4
    add b                                         ; $533f: $80
    call c, Call_02d_6106                         ; $5340: $dc $06 $61
    inc e                                         ; $5343: $1c
    sub b                                         ; $5344: $90
    ld h, b                                       ; $5345: $60
    cp $c0                                        ; $5346: $fe $c0
    ld c, h                                       ; $5348: $4c
    ld l, h                                       ; $5349: $6c
    ld c, h                                       ; $534a: $4c
    dec b                                         ; $534b: $05
    pop bc                                        ; $534c: $c1
    ret nz                                        ; $534d: $c0

    ld [c], a                                     ; $534e: $e2
    db $fd                                        ; $534f: $fd
    and b                                         ; $5350: $a0
    ldh [$c0], a                                  ; $5351: $e0 $c0
    ldh [$80], a                                  ; $5353: $e0 $80
    and d                                         ; $5355: $a2
    add b                                         ; $5356: $80
    ret c                                         ; $5357: $d8

    ret                                           ; $5358: $c9


    ld b, c                                       ; $5359: $41
    cp $c6                                        ; $535a: $fe $c6
    dec bc                                        ; $535c: $0b
    ld c, h                                       ; $535d: $4c
    ld l, h                                       ; $535e: $6c
    db $10                                        ; $535f: $10
    add l                                         ; $5360: $85
    add b                                         ; $5361: $80
    ret nz                                        ; $5362: $c0

    ld [c], a                                     ; $5363: $e2
    inc a                                         ; $5364: $3c
    and b                                         ; $5365: $a0
    cp b                                          ; $5366: $b8
    pop hl                                        ; $5367: $e1
    ld c, e                                       ; $5368: $4b
    cp $80                                        ; $5369: $fe $80
    db $ec                                        ; $536b: $ec
    ld b, [hl]                                    ; $536c: $46
    add b                                         ; $536d: $80
    jp nc, $8c06                                  ; $536e: $d2 $06 $8c

    ld b, a                                       ; $5371: $47
    ld c, l                                       ; $5372: $4d
    dec l                                         ; $5373: $2d
    add l                                         ; $5374: $85
    pop hl                                        ; $5375: $e1
    ld b, e                                       ; $5376: $43
    add $3e                                       ; $5377: $c6 $3e
    jp nz, Jump_02d_626e                          ; $5379: $c2 $6e $62

    cp b                                          ; $537c: $b8
    ld e, c                                       ; $537d: $59
    inc b                                         ; $537e: $04

Jump_02d_537f:
    ret nz                                        ; $537f: $c0

    and $fb                                       ; $5380: $e6 $fb
    and e                                         ; $5382: $a3
    ld l, e                                       ; $5383: $6b
    ld b, $81                                     ; $5384: $06 $81
    ld [bc], a                                    ; $5386: $02
    pop bc                                        ; $5387: $c1
    db $fc                                        ; $5388: $fc
    ld [c], a                                     ; $5389: $e2
    ret nz                                        ; $538a: $c0

    and $bb                                       ; $538b: $e6 $bb
    add e                                         ; $538d: $83
    ld d, b                                       ; $538e: $50
    jp Jump_02d_5d55                              ; $538f: $c3 $55 $5d


    add d                                         ; $5392: $82
    cp e                                          ; $5393: $bb
    and e                                         ; $5394: $a3
    add b                                         ; $5395: $80
    ld [c], a                                     ; $5396: $e2
    dec c                                         ; $5397: $0d
    cp a                                          ; $5398: $bf
    jp nz, Jump_000_352b                          ; $5399: $c2 $2b $35

    pop hl                                        ; $539c: $e1
    add l                                         ; $539d: $85
    ld c, e                                       ; $539e: $4b
    xor $41                                       ; $539f: $ee $41
    dec c                                         ; $53a1: $0d
    ld a, h                                       ; $53a2: $7c
    and c                                         ; $53a3: $a1
    nop                                           ; $53a4: $00
    cp b                                          ; $53a5: $b8
    ret nz                                        ; $53a6: $c0

    rst $20                                       ; $53a7: $e7
    dec b                                         ; $53a8: $05
    jp Jump_000_000d                              ; $53a9: $c3 $0d $00


    cp a                                          ; $53ac: $bf
    jp nz, $80fe                                  ; $53ad: $c2 $fe $80

    ld a, b                                       ; $53b0: $78
    ld h, c                                       ; $53b1: $61
    rst $38                                       ; $53b2: $ff
    ld h, d                                       ; $53b3: $62
    ret nz                                        ; $53b4: $c0

    db $e3                                        ; $53b5: $e3
    cp b                                          ; $53b6: $b8
    ld d, h                                       ; $53b7: $54
    cp a                                          ; $53b8: $bf
    pop bc                                        ; $53b9: $c1
    ld [hl], e                                    ; $53ba: $73
    ld [hl+], a                                   ; $53bb: $22
    jr c, @-$7a                                   ; $53bc: $38 $84

    ld b, b                                       ; $53be: $40
    ld b, a                                       ; $53bf: $47
    ld h, d                                       ; $53c0: $62
    ei                                            ; $53c1: $fb
    call nz, $0a0a                                ; $53c2: $c4 $0a $0a
    ld c, d                                       ; $53c5: $4a
    jr c, jr_02d_5428                             ; $53c6: $38 $60

    ccf                                           ; $53c8: $3f
    jp $bde0                                      ; $53c9: $c3 $e0 $bd


    ld e, l                                       ; $53cc: $5d
    ld a, l                                       ; $53cd: $7d
    add e                                         ; $53ce: $83
    add $e3                                       ; $53cf: $c6 $e3
    add c                                         ; $53d1: $81
    ld b, c                                       ; $53d2: $41
    rst $38                                       ; $53d3: $ff
    add c                                         ; $53d4: $81
    ld a, [bc]                                    ; $53d5: $0a
    ld a, [bc]                                    ; $53d6: $0a
    ld a, [bc]                                    ; $53d7: $0a
    jr nc, @-$3e                                  ; $53d8: $30 $c0

    pop hl                                        ; $53da: $e1
    cp a                                          ; $53db: $bf
    and l                                         ; $53dc: $a5
    nop                                           ; $53dd: $00
    ld e, d                                       ; $53de: $5a
    di                                            ; $53df: $f3
    ld bc, $0d4b                                  ; $53e0: $01 $4b $0d
    push bc                                       ; $53e3: $c5
    jp nz, $83c5                                  ; $53e4: $c2 $c5 $83

    ld b, d                                       ; $53e7: $42
    cp l                                          ; $53e8: $bd
    ld b, b                                       ; $53e9: $40
    dec hl                                        ; $53ea: $2b
    db $fd                                        ; $53eb: $fd
    jp nz, $72c0                                  ; $53ec: $c2 $c0 $72

    ld [hl], e                                    ; $53ef: $73
    jr nc, jr_02d_5433                            ; $53f0: $30 $41

    pop bc                                        ; $53f2: $c1
    ld c, e                                       ; $53f3: $4b
    ld b, l                                       ; $53f4: $45
    db $e3                                        ; $53f5: $e3
    ld b, b                                       ; $53f6: $40
    db $fc                                        ; $53f7: $fc
    and c                                         ; $53f8: $a1
    ld a, l                                       ; $53f9: $7d
    ld b, c                                       ; $53fa: $41
    or h                                          ; $53fb: $b4
    jp nz, $81be                                  ; $53fc: $c2 $be $81

    add b                                         ; $53ff: $80
    ld a, e                                       ; $5400: $7b
    cp a                                          ; $5401: $bf
    and l                                         ; $5402: $a5
    dec c                                         ; $5403: $0d
    ret nz                                        ; $5404: $c0

    add sp, $60                                   ; $5405: $e8 $60
    ccf                                           ; $5407: $3f
    jp nz, $e3c1                                  ; $5408: $c2 $c1 $e3

    add c                                         ; $540b: $81
    add a                                         ; $540c: $87
    add b                                         ; $540d: $80
    reti                                          ; $540e: $d9


    ld [hl-], a                                   ; $540f: $32
    ld [bc], a                                    ; $5410: $02
    ld c, e                                       ; $5411: $4b
    dec hl                                        ; $5412: $2b
    ccf                                           ; $5413: $3f
    ld [c], a                                     ; $5414: $e2
    ld [bc], a                                    ; $5415: $02
    ret nz                                        ; $5416: $c0

    rst $20                                       ; $5417: $e7
    dec c                                         ; $5418: $0d
    pop bc                                        ; $5419: $c1
    add l                                         ; $541a: $85
    nop                                           ; $541b: $00
    ld e, a                                       ; $541c: $5f
    db $dd                                        ; $541d: $dd
    jp nz, $600e                                  ; $541e: $c2 $0e $60

    rst $00                                       ; $5421: $c7
    and e                                         ; $5422: $a3
    inc bc                                        ; $5423: $03
    pop bc                                        ; $5424: $c1
    ld de, $804b                                  ; $5425: $11 $4b $80

jr_02d_5428:
    ld b, b                                       ; $5428: $40
    add e                                         ; $5429: $83
    or a                                          ; $542a: $b7
    cp l                                          ; $542b: $bd
    ld c, l                                       ; $542c: $4d
    ld c, l                                       ; $542d: $4d
    ld d, $a1                                     ; $542e: $16 $a1
    ld c, $60                                     ; $5430: $0e $60
    add l                                         ; $5432: $85

jr_02d_5433:
    ld h, d                                       ; $5433: $62
    ld h, b                                       ; $5434: $60
    db $fc                                        ; $5435: $fc
    ld h, d                                       ; $5436: $62
    ld b, c                                       ; $5437: $41
    add d                                         ; $5438: $82
    and h                                         ; $5439: $a4
    add hl, hl                                    ; $543a: $29
    add b                                         ; $543b: $80
    jp c, $807b                                   ; $543c: $da $7b $80

    ld c, l                                       ; $543f: $4d
    dec l                                         ; $5440: $2d
    adc l                                         ; $5441: $8d
    ld b, b                                       ; $5442: $40
    add d                                         ; $5443: $82
    ret nz                                        ; $5444: $c0

    db $e4                                        ; $5445: $e4
    ld l, e                                       ; $5446: $6b
    ld a, [hl-]                                   ; $5447: $3a
    and e                                         ; $5448: $a3
    ret nz                                        ; $5449: $c0

    jr nz, @+$01                                  ; $544a: $20 $ff

    ret z                                         ; $544c: $c8

    cp l                                          ; $544d: $bd
    ld e, c                                       ; $544e: $59
    sbc b                                         ; $544f: $98
    ld [hl+], a                                   ; $5450: $22
    ld l, e                                       ; $5451: $6b
    nop                                           ; $5452: $00
    dec c                                         ; $5453: $0d
    jp nz, $a23c                                  ; $5454: $c2 $3c $a2

    cp e                                          ; $5457: $bb
    call nz, $023c                                ; $5458: $c4 $3c $02
    nop                                           ; $545b: $00
    ld e, h                                       ; $545c: $5c
    dec a                                         ; $545d: $3d
    add [hl]                                      ; $545e: $86
    rst $38                                       ; $545f: $ff
    and b                                         ; $5460: $a0
    ld a, a                                       ; $5461: $7f
    add h                                         ; $5462: $84
    jr nz, @-$3c                                  ; $5463: $20 $c2

    nop                                           ; $5465: $00
    ccf                                           ; $5466: $3f
    db $e4                                        ; $5467: $e4
    and e                                         ; $5468: $a3
    push bc                                       ; $5469: $c5
    nop                                           ; $546a: $00
    cp l                                          ; $546b: $bd
    cp e                                          ; $546c: $bb
    ld bc, $096d                                  ; $546d: $01 $6d $09
    ld b, b                                       ; $5470: $40
    ld [$01c4], sp                                ; $5471: $08 $c4 $01
    dec hl                                        ; $5474: $2b
    ld [hl-], a                                   ; $5475: $32
    ret nz                                        ; $5476: $c0

    ld a, b                                       ; $5477: $78
    ld b, c                                       ; $5478: $41
    cp a                                          ; $5479: $bf
    ld b, h                                       ; $547a: $44
    nop                                           ; $547b: $00
    cp l                                          ; $547c: $bd
    ld b, b                                       ; $547d: $40
    push bc                                       ; $547e: $c5
    ret                                           ; $547f: $c9


    and e                                         ; $5480: $a3
    ld a, [hl-]                                   ; $5481: $3a
    add b                                         ; $5482: $80
    ld e, $81                                     ; $5483: $1e $81
    ld bc, $4b4b                                  ; $5485: $01 $4b $4b
    inc c                                         ; $5488: $0c
    inc l                                         ; $5489: $2c
    ld a, [hl]                                    ; $548a: $7e
    inc bc                                        ; $548b: $03
    nop                                           ; $548c: $00
    cp h                                          ; $548d: $bc
    cp $05                                        ; $548e: $fe $05
    ld e, b                                       ; $5490: $58
    jp z, Jump_02d_4743                           ; $5491: $ca $43 $47

    pop bc                                        ; $5494: $c1
    rst $38                                       ; $5495: $ff
    ld hl, $6b6b                                  ; $5496: $21 $6b $6b
    or d                                          ; $5499: $b2
    nop                                           ; $549a: $00
    inc c                                         ; $549b: $0c
    add b                                         ; $549c: $80
    ld a, h                                       ; $549d: $7c
    nop                                           ; $549e: $00
    ld a, l                                       ; $549f: $7d
    add sp, -$01                                  ; $54a0: $e8 $ff
    add b                                         ; $54a2: $80
    adc d                                         ; $54a3: $8a
    ld bc, $42bf                                  ; $54a4: $01 $bf $42
    push af                                       ; $54a7: $f5
    ld bc, $236f                                  ; $54a8: $01 $6f $23
    db $fd                                        ; $54ab: $fd
    ld [hl+], a                                   ; $54ac: $22
    cp l                                          ; $54ad: $bd
    cp a                                          ; $54ae: $bf
    ret nc                                        ; $54af: $d0

    jr c, jr_02d_5513                             ; $54b0: $38 $61

    ret nz                                        ; $54b2: $c0

    pop hl                                        ; $54b3: $e1
    add h                                         ; $54b4: $84
    add b                                         ; $54b5: $80
    ld a, d                                       ; $54b6: $7a
    ld h, e                                       ; $54b7: $63
    ld l, h                                       ; $54b8: $6c
    or h                                          ; $54b9: $b4
    ld bc, $4c6c                                  ; $54ba: $01 $6c $4c
    add a                                         ; $54bd: $87
    ld l, h                                       ; $54be: $6c
    dec c                                         ; $54bf: $0d
    ld l, l                                       ; $54c0: $6d
    cp a                                          ; $54c1: $bf
    rst $00                                       ; $54c2: $c7
    nop                                           ; $54c3: $00
    or h                                          ; $54c4: $b4
    cp [hl]                                       ; $54c5: $be
    ld b, h                                       ; $54c6: $44
    dec d                                         ; $54c7: $15
    pop hl                                        ; $54c8: $e1
    dec c                                         ; $54c9: $0d
    ld [$8243], sp                                ; $54ca: $08 $43 $82
    ld sp, hl                                     ; $54cd: $f9
    ld h, c                                       ; $54ce: $61
    add b                                         ; $54cf: $80
    ld [c], a                                     ; $54d0: $e2
    ld c, h                                       ; $54d1: $4c
    ld a, $a3                                     ; $54d2: $3e $a3
    ld bc, $0064                                  ; $54d4: $01 $64 $00
    ld d, [hl]                                    ; $54d7: $56
    ld a, [hl]                                    ; $54d8: $7e
    ld b, [hl]                                    ; $54d9: $46
    inc b                                         ; $54da: $04
    ld c, l                                       ; $54db: $4d
    and b                                         ; $54dc: $a0
    add hl, bc                                    ; $54dd: $09
    ld b, e                                       ; $54de: $43
    ld l, e                                       ; $54df: $6b
    ret nz                                        ; $54e0: $c0

    ldh [$36], a                                  ; $54e1: $e0 $36
    ld bc, $80ff                                  ; $54e3: $01 $ff $80
    and h                                         ; $54e6: $a4
    and c                                         ; $54e7: $a1
    ld b, e                                       ; $54e8: $43
    sbc l                                         ; $54e9: $9d
    ld c, $ed                                     ; $54ea: $0e $ed
    inc b                                         ; $54ec: $04
    ld c, l                                       ; $54ed: $4d
    dec l                                         ; $54ee: $2d
    ld l, e                                       ; $54ef: $6b
    ret                                           ; $54f0: $c9


jr_02d_54f1:
    ld [hl+], a                                   ; $54f1: $22
    add $c1                                       ; $54f2: $c6 $c1
    or d                                          ; $54f4: $b2
    ld [bc], a                                    ; $54f5: $02
    inc bc                                        ; $54f6: $03
    ld [c], a                                     ; $54f7: $e2
    nop                                           ; $54f8: $00
    pop hl                                        ; $54f9: $e1
    ld hl, $be00                                  ; $54fa: $21 $00 $be
    cp a                                          ; $54fd: $bf
    and [hl]                                      ; $54fe: $a6
    ld c, e                                       ; $54ff: $4b

Jump_02d_5500:
    ld b, b                                       ; $5500: $40
    ld a, d                                       ; $5501: $7a
    jr nz, jr_02d_5538                            ; $5502: $20 $34

    inc b                                         ; $5504: $04
    add c                                         ; $5505: $81
    and d                                         ; $5506: $a2
    cp [hl]                                       ; $5507: $be
    and c                                         ; $5508: $a1
    nop                                           ; $5509: $00
    add hl, de                                    ; $550a: $19
    ld b, c                                       ; $550b: $41
    add b                                         ; $550c: $80
    ld a, c                                       ; $550d: $79
    db $fd                                        ; $550e: $fd
    ld h, [hl]                                    ; $550f: $66
    adc l                                         ; $5510: $8d
    ld h, c                                       ; $5511: $61
    pop bc                                        ; $5512: $c1

jr_02d_5513:
    and $83                                       ; $5513: $e6 $83
    jp $e4c0                                      ; $5515: $c3 $c0 $e4


    cp l                                          ; $5518: $bd
    ld e, d                                       ; $5519: $5a
    ld [hl+], a                                   ; $551a: $22
    db $fd                                        ; $551b: $fd
    ld [bc], a                                    ; $551c: $02
    ld c, l                                       ; $551d: $4d
    ld a, a                                       ; $551e: $7f
    and b                                         ; $551f: $a0
    res 4, c                                      ; $5520: $cb $a1
    pop bc                                        ; $5522: $c1
    and $2c                                       ; $5523: $e6 $2c
    ret nz                                        ; $5525: $c0

    add b                                         ; $5526: $80
    ld hl, $d042                                  ; $5527: $21 $42 $d0
    sbc d                                         ; $552a: $9a
    inc hl                                        ; $552b: $23
    nop                                           ; $552c: $00
    cp b                                          ; $552d: $b8
    cp [hl]                                       ; $552e: $be
    ld b, l                                       ; $552f: $45
    jp nz, $6c21                                  ; $5530: $c2 $21 $6c

    ld b, b                                       ; $5533: $40
    db $e4                                        ; $5534: $e4
    inc l                                         ; $5535: $2c
    inc l                                         ; $5536: $2c
    add b                                         ; $5537: $80

jr_02d_5538:
    di                                            ; $5538: $f3
    nop                                           ; $5539: $00
    ret nz                                        ; $553a: $c0

    inc bc                                        ; $553b: $03
    cp $c3                                        ; $553c: $fe $c3
    add b                                         ; $553e: $80
    halt                                          ; $553f: $76
    sbc [hl]                                      ; $5540: $9e
    pop hl                                        ; $5541: $e1
    sbc h                                         ; $5542: $9c
    ld b, e                                       ; $5543: $43
    ld b, d                                       ; $5544: $42
    ld hl, $0b6c                                  ; $5545: $21 $6c $0b
    ld c, h                                       ; $5548: $4c
    ld c, h                                       ; $5549: $4c
    jp nz, Jump_02d_4cc3                          ; $554a: $c2 $c3 $4c

    ret nz                                        ; $554d: $c0

    rst $20                                       ; $554e: $e7
    add b                                         ; $554f: $80
    sbc $3c                                       ; $5550: $de $3c
    inc b                                         ; $5552: $04
    ld bc, $8623                                  ; $5553: $01 $23 $86
    cp a                                          ; $5556: $bf
    ld [c], a                                     ; $5557: $e2
    ld l, h                                       ; $5558: $6c
    ld l, h                                       ; $5559: $6c
    pop bc                                        ; $555a: $c1
    ld b, l                                       ; $555b: $45
    ret nz                                        ; $555c: $c0

    ld a, [c]                                     ; $555d: $f2
    cp l                                          ; $555e: $bd
    ld c, c                                       ; $555f: $49
    ld e, $e3                                     ; $5560: $1e $e3
    ld c, l                                       ; $5562: $4d
    inc c                                         ; $5563: $0c
    nop                                           ; $5564: $00
    jr nz, jr_02d_54f1                            ; $5565: $20 $8a

    ld b, h                                       ; $5567: $44
    ld c, h                                       ; $5568: $4c
    ld l, h                                       ; $5569: $6c
    add [hl]                                      ; $556a: $86
    and b                                         ; $556b: $a0
    ld a, [$4261]                                 ; $556c: $fa $61 $42
    ld hl, $e100                                  ; $556f: $21 $00 $e1
    nop                                           ; $5572: $00
    dec e                                         ; $5573: $1d
    db $e4                                        ; $5574: $e4
    nop                                           ; $5575: $00
    or [hl]                                       ; $5576: $b6
    ld a, c                                       ; $5577: $79
    and e                                         ; $5578: $a3
    ret z                                         ; $5579: $c8

    ld hl, $4304                                  ; $557a: $21 $04 $43
    ld b, d                                       ; $557d: $42
    ld b, l                                       ; $557e: $45
    ld b, d                                       ; $557f: $42
    and c                                         ; $5580: $a1
    ret nz                                        ; $5581: $c0

    db $e3                                        ; $5582: $e3
    inc b                                         ; $5583: $04
    dec a                                         ; $5584: $3d
    ei                                            ; $5585: $fb
    add hl, sp                                    ; $5586: $39
    ld b, d                                       ; $5587: $42
    ld l, l                                       ; $5588: $6d
    call z, $0204                                 ; $5589: $cc $04 $02
    ld b, d                                       ; $558c: $42
    ei                                            ; $558d: $fb
    ld hl, $202d                                  ; $558e: $21 $2d $20
    pop bc                                        ; $5591: $c1
    ld h, e                                       ; $5592: $63
    nop                                           ; $5593: $00
    ret nz                                        ; $5594: $c0

    db $ed                                        ; $5595: $ed
    nop                                           ; $5596: $00
    ld c, e                                       ; $5597: $4b

jr_02d_5598:
    ld b, c                                       ; $5598: $41
    add [hl]                                      ; $5599: $86
    adc a                                         ; $559a: $8f
    jr nz, @+$01                                  ; $559b: $20 $ff

    ld [$a342], a                                 ; $559d: $ea $42 $a3
    ld bc, $00c6                                  ; $55a0: $01 $c6 $00
    or l                                          ; $55a3: $b5
    ld [$a4a0], sp                                ; $55a4: $08 $a0 $a4
    ld c, h                                       ; $55a7: $4c
    ld [bc], a                                    ; $55a8: $02
    db $fc                                        ; $55a9: $fc
    ret nz                                        ; $55aa: $c0

    dec l                                         ; $55ab: $2d
    db $fc                                        ; $55ac: $fc
    push hl                                       ; $55ad: $e5
    push af                                       ; $55ae: $f5
    ldh [$e9], a                                  ; $55af: $e0 $e9
    pop bc                                        ; $55b1: $c1
    pop hl                                        ; $55b2: $e1
    and e                                         ; $55b3: $a3
    adc b                                         ; $55b4: $88
    ld b, e                                       ; $55b5: $43
    ei                                            ; $55b6: $fb
    ld b, d                                       ; $55b7: $42
    ld [bc], a                                    ; $55b8: $02
    add b                                         ; $55b9: $80
    xor $0b                                       ; $55ba: $ee $0b

jr_02d_55bc:
    add c                                         ; $55bc: $81
    ld b, b                                       ; $55bd: $40
    inc bc                                        ; $55be: $03
    sub l                                         ; $55bf: $95
    add b                                         ; $55c0: $80
    ld c, $4d                                     ; $55c1: $0e $4d
    nop                                           ; $55c3: $00
    sub b                                         ; $55c4: $90
    ldh [$80], a                                  ; $55c5: $e0 $80
    ld h, c                                       ; $55c7: $61
    dec a                                         ; $55c8: $3d
    add sp, -$40                                  ; $55c9: $e8 $c0
    inc h                                         ; $55cb: $24
    add c                                         ; $55cc: $81
    add d                                         ; $55cd: $82
    add b                                         ; $55ce: $80
    rra                                           ; $55cf: $1f
    cp a                                          ; $55d0: $bf
    ldh [$3b], a                                  ; $55d1: $e0 $3b
    pop hl                                        ; $55d3: $e1
    jr nz, jr_02d_5598                            ; $55d4: $20 $c2

    jp $e3f9                                      ; $55d6: $c3 $f9 $e3


    add b                                         ; $55d9: $80
    dec h                                         ; $55da: $25
    cp $fd                                        ; $55db: $fe $fd
    ld a, $42                                     ; $55dd: $3e $42
    ld c, l                                       ; $55df: $4d
    cp a                                          ; $55e0: $bf
    pop hl                                        ; $55e1: $e1
    ld b, e                                       ; $55e2: $43
    rst $00                                       ; $55e3: $c7
    and b                                         ; $55e4: $a0
    cp a                                          ; $55e5: $bf
    jp Jump_000_33c8                              ; $55e6: $c3 $c8 $33


    nop                                           ; $55e9: $00
    ld c, l                                       ; $55ea: $4d
    cp $a6                                        ; $55eb: $fe $a6
    jr nc, jr_02d_560f                            ; $55ed: $30 $20

    dec l                                         ; $55ef: $2d
    ld a, h                                       ; $55f0: $7c
    ld b, d                                       ; $55f1: $42
    dec hl                                        ; $55f2: $2b
    nop                                           ; $55f3: $00
    adc $42                                       ; $55f4: $ce $42
    inc b                                         ; $55f6: $04
    ld h, e                                       ; $55f7: $63
    jp nz, $80a2                                  ; $55f8: $c2 $a2 $80

    jr jr_02d_55bc                                ; $55fb: $18 $bf

    dec b                                         ; $55fd: $05
    ret c                                         ; $55fe: $d8

    and e                                         ; $55ff: $a3
    ld a, d                                       ; $5600: $7a
    ld h, b                                       ; $5601: $60
    add [hl]                                      ; $5602: $86
    inc bc                                        ; $5603: $03
    ld b, b                                       ; $5604: $40
    di                                            ; $5605: $f3
    ld [c], a                                     ; $5606: $e2
    ret nz                                        ; $5607: $c0

Call_02d_5608:
    db $e4                                        ; $5608: $e4
    add b                                         ; $5609: $80
    ld a, [hl]                                    ; $560a: $7e
    inc a                                         ; $560b: $3c
    add h                                         ; $560c: $84
    dec d                                         ; $560d: $15
    add d                                         ; $560e: $82

jr_02d_560f:
    ret nz                                        ; $560f: $c0

    ld hl, $c02d                                  ; $5610: $21 $2d $c0
    ldh [rP1], a                                  ; $5613: $e0 $00
    xor h                                         ; $5615: $ac
    add sp, -$80                                  ; $5616: $e8 $80
    ld a, a                                       ; $5618: $7f
    add hl, sp                                    ; $5619: $39
    ld b, $c0                                     ; $561a: $06 $c0
    push hl                                       ; $561c: $e5
    adc c                                         ; $561d: $89
    ld b, [hl]                                    ; $561e: $46
    call c, Call_000_0084                         ; $561f: $dc $84 $00
    xor c                                         ; $5622: $a9
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    ld bc, $ff00                                  ; $5626: $01 $00 $ff
    rst $38                                       ; $5629: $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    rst $38                                       ; $562d: $ff
    rst $38                                       ; $562e: $ff
    rst $38                                       ; $562f: $ff
    rst $38                                       ; $5630: $ff
    rst $38                                       ; $5631: $ff
    rst $38                                       ; $5632: $ff
    rst $38                                       ; $5633: $ff
    rst $38                                       ; $5634: $ff
    rst $38                                       ; $5635: $ff
    nop                                           ; $5636: $00
    rst $38                                       ; $5637: $ff
    rst $38                                       ; $5638: $ff
    rst $38                                       ; $5639: $ff
    rst $38                                       ; $563a: $ff
    rst $38                                       ; $563b: $ff
    rst $38                                       ; $563c: $ff
    rst $38                                       ; $563d: $ff
    rst $38                                       ; $563e: $ff
    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    rst $38                                       ; $5641: $ff
    rst $38                                       ; $5642: $ff
    rst $38                                       ; $5643: $ff
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    nop                                           ; $5647: $00
    rst $38                                       ; $5648: $ff
    rst $38                                       ; $5649: $ff
    rst $38                                       ; $564a: $ff
    rst $38                                       ; $564b: $ff
    rst $38                                       ; $564c: $ff
    rst $38                                       ; $564d: $ff
    rst $38                                       ; $564e: $ff
    rst $38                                       ; $564f: $ff
    rst $38                                       ; $5650: $ff
    rst $38                                       ; $5651: $ff
    rst $38                                       ; $5652: $ff
    rst $38                                       ; $5653: $ff
    rst $38                                       ; $5654: $ff
    rst $38                                       ; $5655: $ff
    rst $38                                       ; $5656: $ff
    rst $38                                       ; $5657: $ff
    ld [bc], a                                    ; $5658: $02
    ld a, [$0ff9]                                 ; $5659: $fa $f9 $0f
    rst $38                                       ; $565c: $ff
    and $e0                                       ; $565d: $e6 $e0
    rst $38                                       ; $565f: $ff
    ldh [$f4], a                                  ; $5660: $e0 $f4
    reti                                          ; $5662: $d9


    push hl                                       ; $5663: $e5
    ret nz                                        ; $5664: $c0

    db $f4                                        ; $5665: $f4
    ret c                                         ; $5666: $d8

    ld [$e000], a                                 ; $5667: $ea $00 $e0
    rst $38                                       ; $566a: $ff
    and b                                         ; $566b: $a0
    ld a, [c]                                     ; $566c: $f2
    ld e, a                                       ; $566d: $5f
    rst $30                                       ; $566e: $f7
    ld b, [hl]                                    ; $566f: $46
    db $e3                                        ; $5670: $e3
    ld b, b                                       ; $5671: $40
    db $ec                                        ; $5672: $ec
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    ld bc, $ff00                                  ; $5676: $01 $00 $ff
    rst $38                                       ; $5679: $ff
    rst $38                                       ; $567a: $ff
    rst $38                                       ; $567b: $ff
    rst $38                                       ; $567c: $ff
    rst $38                                       ; $567d: $ff
    rst $38                                       ; $567e: $ff
    rst $38                                       ; $567f: $ff
    rst $38                                       ; $5680: $ff
    rst $38                                       ; $5681: $ff
    rst $38                                       ; $5682: $ff
    rst $38                                       ; $5683: $ff
    rst $38                                       ; $5684: $ff
    rst $38                                       ; $5685: $ff
    nop                                           ; $5686: $00
    rst $38                                       ; $5687: $ff
    rst $38                                       ; $5688: $ff
    rst $38                                       ; $5689: $ff
    rst $38                                       ; $568a: $ff
    rst $38                                       ; $568b: $ff
    rst $38                                       ; $568c: $ff
    rst $38                                       ; $568d: $ff
    rst $38                                       ; $568e: $ff
    rst $38                                       ; $568f: $ff
    rst $38                                       ; $5690: $ff
    rst $38                                       ; $5691: $ff
    rst $38                                       ; $5692: $ff
    rst $38                                       ; $5693: $ff
    rst $38                                       ; $5694: $ff
    rst $38                                       ; $5695: $ff
    rst $38                                       ; $5696: $ff
    nop                                           ; $5697: $00
    rst $38                                       ; $5698: $ff
    rst $38                                       ; $5699: $ff
    rst $38                                       ; $569a: $ff
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    rst $38                                       ; $569d: $ff
    rst $38                                       ; $569e: $ff
    rst $38                                       ; $569f: $ff
    rst $38                                       ; $56a0: $ff
    rst $38                                       ; $56a1: $ff
    rst $38                                       ; $56a2: $ff
    rst $38                                       ; $56a3: $ff
    rst $38                                       ; $56a4: $ff
    rst $38                                       ; $56a5: $ff
    rst $38                                       ; $56a6: $ff
    rst $38                                       ; $56a7: $ff
    jr @+$01                                      ; $56a8: $18 $ff

    rst $38                                       ; $56aa: $ff
    rst $38                                       ; $56ab: $ff
    rst $38                                       ; $56ac: $ff
    ld a, [$11f9]                                 ; $56ad: $fa $f9 $11
    ld de, $ffdc                                  ; $56b0: $11 $dc $ff
    rst $38                                       ; $56b3: $ff
    rst $38                                       ; $56b4: $ff
    rst $38                                       ; $56b5: $ff
    rst $38                                       ; $56b6: $ff
    ld b, $f6                                     ; $56b7: $06 $f6
    push af                                       ; $56b9: $f5
    inc de                                        ; $56ba: $13
    inc de                                        ; $56bb: $13
    call c, Call_000_00ec                         ; $56bc: $dc $ec $00
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    ld [bc], a                                    ; $56c2: $02
    nop                                           ; $56c3: $00
    rrca                                          ; $56c4: $0f
    ld [bc], a                                    ; $56c5: $02
    ld [bc], a                                    ; $56c6: $02
    nop                                           ; $56c7: $00
    rrca                                          ; $56c8: $0f
    inc b                                         ; $56c9: $04
    ld [bc], a                                    ; $56ca: $02
    nop                                           ; $56cb: $00
    rrca                                          ; $56cc: $0f
    ld b, $02                                     ; $56cd: $06 $02
    nop                                           ; $56cf: $00
    rrca                                          ; $56d0: $0f
    ld [$0002], sp                                ; $56d1: $08 $02 $00
    rrca                                          ; $56d4: $0f
    ld b, $02                                     ; $56d5: $06 $02
    nop                                           ; $56d7: $00
    rrca                                          ; $56d8: $0f
    inc b                                         ; $56d9: $04
    ld [bc], a                                    ; $56da: $02
    nop                                           ; $56db: $00
    rrca                                          ; $56dc: $0f
    ld [bc], a                                    ; $56dd: $02
    ld [bc], a                                    ; $56de: $02
    nop                                           ; $56df: $00
    rrca                                          ; $56e0: $0f
    rst $38                                       ; $56e1: $ff
    nop                                           ; $56e2: $00
    ld a, [bc]                                    ; $56e3: $0a
    rrca                                          ; $56e4: $0f
    ld [bc], a                                    ; $56e5: $02
    ld e, $19                                     ; $56e6: $1e $19
    rrca                                          ; $56e8: $0f
    ld [bc], a                                    ; $56e9: $02
    ld e, $28                                     ; $56ea: $1e $28
    rrca                                          ; $56ec: $0f
    ld [bc], a                                    ; $56ed: $02
    ld e, $19                                     ; $56ee: $1e $19
    rrca                                          ; $56f0: $0f
    ld [bc], a                                    ; $56f1: $02
    ld e, $ff                                     ; $56f2: $1e $ff
    ld bc, $0337                                  ; $56f4: $01 $37 $03
    ld de, $3a1e                                  ; $56f7: $11 $1e $3a
    inc bc                                        ; $56fa: $03
    ld de, $ff1e                                  ; $56fb: $11 $1e $ff
    ld [bc], a                                    ; $56fe: $02
    dec a                                         ; $56ff: $3d
    ld bc, $1e14                                  ; $5700: $01 $14 $1e
    ld a, $01                                     ; $5703: $3e $01
    inc d                                         ; $5705: $14
    ld e, $3f                                     ; $5706: $1e $3f
    ld bc, $1e14                                  ; $5708: $01 $14 $1e
    ld a, $01                                     ; $570b: $3e $01
    inc d                                         ; $570d: $14
    ld e, $ff                                     ; $570e: $1e $ff
    ld bc, $d5fe                                  ; $5710: $01 $fe $d5
    nop                                           ; $5713: $00
    rst $38                                       ; $5714: $ff
    ldh [rTIMA], a                                ; $5715: $e0 $05
    ei                                            ; $5717: $fb
    ldh [$0b], a                                  ; $5718: $e0 $0b
    rst $30                                       ; $571a: $f7
    pop hl                                        ; $571b: $e1
    nop                                           ; $571c: $00
    ld [bc], a                                    ; $571d: $02
    db $eb                                        ; $571e: $eb
    nop                                           ; $571f: $00
    jr z, @-$0f                                   ; $5720: $28 $ef

    ldh [$90], a                                  ; $5722: $e0 $90
    db $eb                                        ; $5724: $eb
    ldh [$f5], a                                  ; $5725: $e0 $f5
    nop                                           ; $5727: $00
    ret z                                         ; $5728: $c8

    ld a, [$e0e5]                                 ; $5729: $fa $e5 $e0
    add b                                         ; $572c: $80
    ld [$00e4], a                                 ; $572d: $ea $e4 $00
    nop                                           ; $5730: $00
    rla                                           ; $5731: $17
    nop                                           ; $5732: $00
    ld bc, $d612                                  ; $5733: $01 $12 $d6
    ld [c], a                                     ; $5736: $e2
    ld d, b                                       ; $5737: $50
    rst $08                                       ; $5738: $cf
    ldh [$e6], a                                  ; $5739: $e0 $e6
    pop hl                                        ; $573b: $e1
    ld [$e2da], a                                 ; $573c: $ea $da $e2
    db $fd                                        ; $573f: $fd
    db $e3                                        ; $5740: $e3
    and $e1                                       ; $5741: $e6 $e1
    ld d, a                                       ; $5743: $57
    cpl                                           ; $5744: $2f
    nop                                           ; $5745: $00
    inc bc                                        ; $5746: $03
    ret nz                                        ; $5747: $c0

    ld [c], a                                     ; $5748: $e2
    and b                                         ; $5749: $a0
    xor a                                         ; $574a: $af
    ldh [$64], a                                  ; $574b: $e0 $64
    xor e                                         ; $574d: $ab
    ldh [$c7], a                                  ; $574e: $e0 $c7
    call nc, Call_000_2000                        ; $5750: $d4 $00 $20
    ret nz                                        ; $5753: $c0

    ld [c], a                                     ; $5754: $e2
    jp z, $9ce1                                   ; $5755: $ca $e1 $9c

    pop hl                                        ; $5758: $e1
    ld e, a                                       ; $5759: $5f
    nop                                           ; $575a: $00
    ld d, l                                       ; $575b: $55
    ld b, $96                                     ; $575c: $06 $96
    ld [c], a                                     ; $575e: $e2
    ld b, b                                       ; $575f: $40
    adc a                                         ; $5760: $8f
    ldh [$b2], a                                  ; $5761: $e0 $b2
    adc e                                         ; $5763: $8b
    ldh [$a8], a                                  ; $5764: $e0 $a8
    or $e2                                        ; $5766: $f6 $e2
    sbc h                                         ; $5768: $9c
    and h                                         ; $5769: $a4
    db $e3                                        ; $576a: $e3
    ld a, h                                       ; $576b: $7c
    pop hl                                        ; $576c: $e1
    cp a                                          ; $576d: $bf
    nop                                           ; $576e: $00
    inc c                                         ; $576f: $0c
    add b                                         ; $5770: $80
    ld [c], a                                     ; $5771: $e2
    adc [hl]                                      ; $5772: $8e
    pop hl                                        ; $5773: $e1
    ld e, c                                       ; $5774: $59
    ld a, [$e06b]                                 ; $5775: $fa $6b $e0
    ld d, b                                       ; $5778: $50
    add h                                         ; $5779: $84
    ld [c], a                                     ; $577a: $e2
    add b                                         ; $577b: $80
    nop                                           ; $577c: $00
    db $ec                                        ; $577d: $ec
    rst $38                                       ; $577e: $ff
    ld hl, sp-$01                                 ; $577f: $f8 $ff
    rst $38                                       ; $5781: $ff
    ldh [$fe], a                                  ; $5782: $e0 $fe
    ld b, d                                       ; $5784: $42
    ld hl, sp-$38                                 ; $5785: $f8 $c8
    ldh a, [$80]                                  ; $5787: $f0 $80
    cp a                                          ; $5789: $bf
    ldh [rNR10], a                                ; $578a: $e0 $10
    ldh [rP1], a                                  ; $578c: $e0 $00
    ret nz                                        ; $578e: $c0

    rst $38                                       ; $578f: $ff
    rst $38                                       ; $5790: $ff
    ld [c], a                                     ; $5791: $e2
    rst $30                                       ; $5792: $f7
    rst $38                                       ; $5793: $ff
    rst $38                                       ; $5794: $ff
    cp h                                          ; $5795: $bc
    rst $38                                       ; $5796: $ff
    add sp, -$01                                  ; $5797: $e8 $ff
    add c                                         ; $5799: $81
    cp $08                                        ; $579a: $fe $08
    db $ed                                        ; $579c: $ed
    ldh a, [$f8]                                  ; $579d: $f0 $f8
    push hl                                       ; $579f: $e5
    jr nz, @-$3e                                  ; $57a0: $20 $c0

    ld [hl], c                                    ; $57a2: $71
    db $e3                                        ; $57a3: $e3
    ld a, a                                       ; $57a4: $7f
    rst $38                                       ; $57a5: $ff
    cpl                                           ; $57a6: $2f
    rst $38                                       ; $57a7: $ff
    rst $38                                       ; $57a8: $ff
    ccf                                           ; $57a9: $3f
    rst $38                                       ; $57aa: $ff
    rra                                           ; $57ab: $1f
    rst $38                                       ; $57ac: $ff
    or a                                          ; $57ad: $b7
    ld a, a                                       ; $57ae: $7f
    rra                                           ; $57af: $1f
    rst $38                                       ; $57b0: $ff
    ld a, a                                       ; $57b1: $7f
    rrca                                          ; $57b2: $0f
    ld a, a                                       ; $57b3: $7f
    ld c, a                                       ; $57b4: $4f
    ccf                                           ; $57b5: $3f
    rlca                                          ; $57b6: $07
    rra                                           ; $57b7: $1f
    ld [bc], a                                    ; $57b8: $02
    rst $38                                       ; $57b9: $ff
    rra                                           ; $57ba: $1f
    inc de                                        ; $57bb: $13
    rrca                                          ; $57bc: $0f
    ld bc, $0b0f                                  ; $57bd: $01 $0f $0b
    rlca                                          ; $57c0: $07
    ld bc, $07ff                                  ; $57c1: $01 $ff $07
    nop                                           ; $57c4: $00
    rlca                                          ; $57c5: $07
    inc b                                         ; $57c6: $04
    inc bc                                        ; $57c7: $03
    ld e, h                                       ; $57c8: $5c
    rst $38                                       ; $57c9: $ff
    nop                                           ; $57ca: $00
    rst $28                                       ; $57cb: $ef
    rst $38                                       ; $57cc: $ff
    add c                                         ; $57cd: $81
    inc a                                         ; $57ce: $3c
    db $10                                        ; $57cf: $10
    ld b, h                                       ; $57d0: $44
    and $20                                       ; $57d1: $e6 $20
    ret nz                                        ; $57d3: $c0

    add b                                         ; $57d4: $80
    cp a                                          ; $57d5: $bf
    ret nz                                        ; $57d6: $c0

    nop                                           ; $57d7: $00
    ldh [$90], a                                  ; $57d8: $e0 $90
    ldh [$80], a                                  ; $57da: $e0 $80
    cp $e0                                        ; $57dc: $fe $e0
    nop                                           ; $57de: $00
    ei                                            ; $57df: $fb
    ret nz                                        ; $57e0: $c0

    jr nz, @-$5e                                  ; $57e1: $20 $a0

    ldh [$7d], a                                  ; $57e3: $e0 $7d
    rst $38                                       ; $57e5: $ff
    rst $28                                       ; $57e6: $ef
    rst $38                                       ; $57e7: $ff
    ld a, [hl-]                                   ; $57e8: $3a
    ld a, [$e2da]                                 ; $57e9: $fa $da $e2
    ld [$c0e3], sp                                ; $57ec: $08 $e3 $c0
    and h                                         ; $57ef: $a4
    ld hl, sp-$20                                 ; $57f0: $f8 $e0
    ld hl, sp-$10                                 ; $57f2: $f8 $f0
    rst $38                                       ; $57f4: $ff
    db $fc                                        ; $57f5: $fc
    ret nc                                        ; $57f6: $d0

    db $fc                                        ; $57f7: $fc
    ld a, [c]                                     ; $57f8: $f2
    db $fc                                        ; $57f9: $fc
    ldh [$fc], a                                  ; $57fa: $e0 $fc
    or b                                          ; $57fc: $b0
    rst $30                                       ; $57fd: $f7
    ld hl, sp-$1c                                 ; $57fe: $f8 $e4
    ld hl, sp-$80                                 ; $5800: $f8 $80
    push hl                                       ; $5802: $e5
    cp [hl]                                       ; $5803: $be
    rst $38                                       ; $5804: $ff
    db $e3                                        ; $5805: $e3
    rst $38                                       ; $5806: $ff
    rst $38                                       ; $5807: $ff
    ld b, b                                       ; $5808: $40
    rst $38                                       ; $5809: $ff
    nop                                           ; $580a: $00
    rst $20                                       ; $580b: $e7
    db $fc                                        ; $580c: $fc
    rst $38                                       ; $580d: $ff
    or $ff                                        ; $580e: $f6 $ff
    ld a, a                                       ; $5810: $7f
    db $fc                                        ; $5811: $fc
    rst $38                                       ; $5812: $ff
    ld hl, sp-$02                                 ; $5813: $f8 $fe
    add sp, -$02                                  ; $5815: $e8 $fe
    ld hl, sp-$08                                 ; $5817: $f8 $f8
    ldh [$83], a                                  ; $5819: $e0 $83
    db $f4                                        ; $581b: $f4
    rst $38                                       ; $581c: $ff
    ld a, b                                       ; $581d: $78
    ldh [$cb], a                                  ; $581e: $e0 $cb
    jp $c5e2                                      ; $5820: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $5823: $f0 $e0
    rst $28                                       ; $5825: $ef
    ld [$f1c0], a                                 ; $5826: $ea $c0 $f1
    ld b, b                                       ; $5829: $40
    ldh [$ea], a                                  ; $582a: $e0 $ea
    ret nc                                        ; $582c: $d0

    pop hl                                        ; $582d: $e1
    rst $08                                       ; $582e: $cf
    jp hl                                         ; $582f: $e9


    db $ec                                        ; $5830: $ec
    rst $38                                       ; $5831: $ff
    ld sp, hl                                     ; $5832: $f9
    cp $7f                                        ; $5833: $fe $7f
    and $f8                                       ; $5835: $e6 $f8
    ld c, b                                       ; $5837: $48
    ldh a, [$d0]                                  ; $5838: $f0 $d0
    ldh [$a8], a                                  ; $583a: $e0 $a8
    ld [hl], d                                    ; $583c: $72
    ldh [$fb], a                                  ; $583d: $e0 $fb

jr_02d_583f:
    ld b, b                                       ; $583f: $40
    add b                                         ; $5840: $80
    db $10                                        ; $5841: $10
    rst $20                                       ; $5842: $e7
    jp hl                                         ; $5843: $e9


    cp $8e                                        ; $5844: $fe $8e
    ldh a, [$30]                                  ; $5846: $f0 $30
    pop af                                        ; $5848: $f1
    ret nz                                        ; $5849: $c0

    ld hl, sp-$1b                                 ; $584a: $f8 $e5
    ld h, d                                       ; $584c: $62
    pop bc                                        ; $584d: $c1
    db $10                                        ; $584e: $10
    push hl                                       ; $584f: $e5
    cp a                                          ; $5850: $bf
    ld a, a                                       ; $5851: $7f
    sbc a                                         ; $5852: $9f
    ld a, a                                       ; $5853: $7f
    rst $38                                       ; $5854: $ff
    ld [hl], a                                    ; $5855: $77
    ccf                                           ; $5856: $3f
    ld e, a                                       ; $5857: $5f
    ccf                                           ; $5858: $3f
    ld c, a                                       ; $5859: $4f
    ccf                                           ; $585a: $3f
    cpl                                           ; $585b: $2f
    rra                                           ; $585c: $1f
    rst $30                                       ; $585d: $f7
    rla                                           ; $585e: $17
    rrca                                          ; $585f: $0f
    ld [de], a                                    ; $5860: $12
    inc d                                         ; $5861: $14
    ldh [$09], a                                  ; $5862: $e0 $09
    rlca                                          ; $5864: $07
    rla                                           ; $5865: $17
    inc bc                                        ; $5866: $03
    rst $38                                       ; $5867: $ff
    dec b                                         ; $5868: $05
    inc bc                                        ; $5869: $03
    inc b                                         ; $586a: $04
    inc bc                                        ; $586b: $03
    ld [bc], a                                    ; $586c: $02
    ld bc, $ff5c                                  ; $586d: $01 $5c $ff
    rst $30                                       ; $5870: $f7
    jp Jump_000_3c3c                              ; $5871: $c3 $3c $3c


    sbc d                                         ; $5874: $9a
    add $00                                       ; $5875: $c6 $00
    nop                                           ; $5877: $00
    ld b, b                                       ; $5878: $40
    add b                                         ; $5879: $80
    rst $18                                       ; $587a: $df
    ret nz                                        ; $587b: $c0

    add b                                         ; $587c: $80
    jr nz, jr_02d_583f                            ; $587d: $20 $c0

    and b                                         ; $587f: $a0
    cp $e2                                        ; $5880: $fe $e2
    ld d, b                                       ; $5882: $50
    add b                                         ; $5883: $80
    ldh a, [$a0]                                  ; $5884: $f0 $a0
    pop hl                                        ; $5886: $e1
    db $10                                        ; $5887: $10
    db $e3                                        ; $5888: $e3
    jp c, Jump_02d_64e1                           ; $5889: $da $e1 $64

    pop bc                                        ; $588c: $c1
    xor b                                         ; $588d: $a8
    ldh a, [$ea]                                  ; $588e: $f0 $ea
    ldh a, [$df]                                  ; $5890: $f0 $df
    db $f4                                        ; $5892: $f4
    ld hl, sp-$2c                                 ; $5893: $f8 $d4
    ld hl, sp-$0c                                 ; $5895: $f8 $f4
    inc d                                         ; $5897: $14
    ldh [$b8], a                                  ; $5898: $e0 $b8
    ldh a, [$fb]                                  ; $589a: $f0 $fb
    add sp, -$10                                  ; $589c: $e8 $f0
    db $10                                        ; $589e: $10
    jp hl                                         ; $589f: $e9


    ld e, b                                       ; $58a0: $58
    rst $20                                       ; $58a1: $e7
    ld h, [hl]                                    ; $58a2: $66
    add c                                         ; $58a3: $81
    db $fc                                        ; $58a4: $fc
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $30                                       ; $58a7: $f7
    cp $fd                                        ; $58a8: $fe $fd
    cp $fa                                        ; $58aa: $fe $fa
    db $fc                                        ; $58ac: $fc
    ld [$fc3b], a                                 ; $58ad: $ea $3b $fc
    ld sp, hl                                     ; $58b0: $f9
    ld hl, sp-$20                                 ; $58b1: $f8 $e0
    db $f4                                        ; $58b3: $f4
    rst $38                                       ; $58b4: $ff

jr_02d_58b5:
    ld c, b                                       ; $58b5: $48
    ld [hl+], a                                   ; $58b6: $22
    db $eb                                        ; $58b7: $eb
    and b                                         ; $58b8: $a0
    ldh [$f0], a                                  ; $58b9: $e0 $f0
    call z, $fba3                                 ; $58bb: $cc $a3 $fb
    push bc                                       ; $58be: $c5
    pop af                                        ; $58bf: $f1
    call $cbe3                                    ; $58c0: $cd $e3 $cb
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    db $ed                                        ; $58c5: $ed
    cp $ff                                        ; $58c6: $fe $ff
    cp $f8                                        ; $58c8: $fe $f8
    add sp, -$10                                  ; $58ca: $e8 $f0
    ld d, d                                       ; $58cc: $52
    ldh [$e8], a                                  ; $58cd: $e0 $e8
    ret nz                                        ; $58cf: $c0

    rst $20                                       ; $58d0: $e7
    ret nz                                        ; $58d1: $c0

    add b                                         ; $58d2: $80
    ld d, b                                       ; $58d3: $50
    sub $c0                                       ; $58d4: $d6 $c0
    jr nz, @-$39                                  ; $58d6: $20 $c5

    cp l                                          ; $58d8: $bd
    cp $ee                                        ; $58d9: $fe $ee
    jp $b1f0                                      ; $58db: $c3 $f0 $b1


    ld a, [de]                                    ; $58de: $1a
    ldh [$f8], a                                  ; $58df: $e0 $f8
    push hl                                       ; $58e1: $e5
    or d                                          ; $58e2: $b2
    and c                                         ; $58e3: $a1
    ld d, h                                       ; $58e4: $54
    and c                                         ; $58e5: $a1
    rst $38                                       ; $58e6: $ff
    ld a, a                                       ; $58e7: $7f
    rst $30                                       ; $58e8: $f7
    xor a                                         ; $58e9: $af
    ld a, a                                       ; $58ea: $7f
    ld a, a                                       ; $58eb: $7f
    inc d                                         ; $58ec: $14
    ldh [$b7], a                                  ; $58ed: $e0 $b7
    rra                                           ; $58ef: $1f
    ccf                                           ; $58f0: $3f
    rra                                           ; $58f1: $1f
    ld a, a                                       ; $58f2: $7f

jr_02d_58f3:
    cpl                                           ; $58f3: $2f
    rra                                           ; $58f4: $1f
    ld e, a                                       ; $58f5: $5f
    rrca                                          ; $58f6: $0f
    rrca                                          ; $58f7: $0f
    rlca                                          ; $58f8: $07
    ld a, [bc]                                    ; $58f9: $0a
    inc d                                         ; $58fa: $14
    ld [c], a                                     ; $58fb: $e2
    rst $38                                       ; $58fc: $ff
    dec bc                                        ; $58fd: $0b
    ld bc, $0103                                  ; $58fe: $01 $03 $01
    ld [bc], a                                    ; $5901: $02
    ld bc, $0005                                  ; $5902: $01 $05 $00
    sub l                                         ; $5905: $95
    rst $18                                       ; $5906: $df
    ld [de], a                                    ; $5907: $12
    ldh [rSCY], a                                 ; $5908: $e0 $42
    sub b                                         ; $590a: $90
    ld [$0ca0], a                                 ; $590b: $ea $a0 $0c
    ld [c], a                                     ; $590e: $e2
    cp $e1                                        ; $590f: $fe $e1
    and b                                         ; $5911: $a0
    ld [hl], h                                    ; $5912: $74
    jr nc, jr_02d_58b5                            ; $5913: $30 $a0

    jr nz, @-$3b                                  ; $5915: $20 $c3

    ei                                            ; $5917: $fb
    jp c, $b0e6                                   ; $5918: $da $e6 $b0

    ldh [$f4], a                                  ; $591b: $e0 $f4
    rra                                           ; $591d: $1f
    ret nz                                        ; $591e: $c0

    rst $30                                       ; $591f: $f7
    ret c                                         ; $5920: $d8

    ldh a, [$f8]                                  ; $5921: $f0 $f8
    inc d                                         ; $5923: $14
    ldh [$b4], a                                  ; $5924: $e0 $b4
    ldh [$f0], a                                  ; $5926: $e0 $f0
    ldh [$fa], a                                  ; $5928: $e0 $fa
    jr nz, jr_02d_58f3                            ; $592a: $20 $c7

    ei                                            ; $592c: $fb
    ld [de], a                                    ; $592d: $12
    ldh [$91], a                                  ; $592e: $e0 $91
    nop                                           ; $5930: $00
    db $fd                                        ; $5931: $fd
    cp $f6                                        ; $5932: $fe $f6
    rst $38                                       ; $5934: $ff
    db $fc                                        ; $5935: $fc
    cp $fc                                        ; $5936: $fe $fc
    db $fd                                        ; $5938: $fd
    ld hl, sp-$14                                 ; $5939: $f8 $ec
    ld hl, sp-$06                                 ; $593b: $f8 $fa
    ld b, $f8                                     ; $593d: $06 $f8
    ldh [$f5], a                                  ; $593f: $e0 $f5
    cp $78                                        ; $5941: $fe $78
    push hl                                       ; $5943: $e5
    inc l                                         ; $5944: $2c
    push af                                       ; $5945: $f5
    nop                                           ; $5946: $00
    and c                                         ; $5947: $a1
    xor $cc                                       ; $5948: $ee $cc
    pop af                                        ; $594a: $f1
    xor d                                         ; $594b: $aa
    rst $38                                       ; $594c: $ff
    ld [bc], a                                    ; $594d: $02
    add c                                         ; $594e: $81
    and b                                         ; $594f: $a0
    pop bc                                        ; $5950: $c1
    add b                                         ; $5951: $80
    pop bc                                        ; $5952: $c1
    add l                                         ; $5953: $85
    jp $a1ff                                      ; $5954: $c3 $ff $a1


    jp $8300                                      ; $5957: $c3 $00 $83


    dec b                                         ; $595a: $05
    add e                                         ; $595b: $83
    ld b, b                                       ; $595c: $40
    add c                                         ; $595d: $81
    di                                            ; $595e: $f3
    ld b, c                                       ; $595f: $41
    add b                                         ; $5960: $80
    ldh [$a0], a                                  ; $5961: $e0 $a0
    ld [hl], b                                    ; $5963: $70
    ret nz                                        ; $5964: $c0

    ret nz                                        ; $5965: $c0

    ldh [rBCPS], a                                ; $5966: $e0 $68
    ldh a, [rIE]                                  ; $5968: $f0 $ff
    pop af                                        ; $596a: $f1
    db $fc                                        ; $596b: $fc
    call c, Call_000_1eff                         ; $596c: $dc $ff $1e
    rst $38                                       ; $596f: $ff
    add b                                         ; $5970: $80
    ld e, $fd                                     ; $5971: $1e $fd
    ld [de], a                                    ; $5973: $12
    ld [hl], h                                    ; $5974: $74
    add d                                         ; $5975: $82
    ld c, b                                       ; $5976: $48
    nop                                           ; $5977: $00
    ld bc, $5878                                  ; $5978: $01 $78 $58
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    ld b, b                                       ; $597d: $40
    add c                                         ; $597e: $81
    add d                                         ; $597f: $82
    pop bc                                        ; $5980: $c1
    and b                                         ; $5981: $a0
    pop bc                                        ; $5982: $c1
    and c                                         ; $5983: $a1
    jp $85ff                                      ; $5984: $c3 $ff $85


    jp $8304                                      ; $5987: $c3 $04 $83


    ld b, c                                       ; $598a: $41
    add e                                         ; $598b: $83
    ld [bc], a                                    ; $598c: $02
    add c                                         ; $598d: $81
    or $6d                                        ; $598e: $f6 $6d
    add b                                         ; $5990: $80
    add b                                         ; $5991: $80
    and b                                         ; $5992: $a0
    ld c, h                                       ; $5993: $4c
    and b                                         ; $5994: $a0
    ret nc                                        ; $5995: $d0

    ldh [$64], a                                  ; $5996: $e0 $64

jr_02d_5998:
    ldh a, [$ed]                                  ; $5998: $f0 $ed
    ldh a, [$d0]                                  ; $599a: $f0 $d0
    ld [c], a                                     ; $599c: $e2
    ld b, c                                       ; $599d: $41
    ld e, $c6                                     ; $599e: $1e $c6
    add c                                         ; $59a0: $81
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    jr nc, jr_02d_5998                            ; $59a3: $30 $f3

    nop                                           ; $59a5: $00
    add d                                         ; $59a6: $82
    ret nc                                        ; $59a7: $d0

    ldh [$a0], a                                  ; $59a8: $e0 $a0
    xor c                                         ; $59aa: $a9
    ld [bc], a                                    ; $59ab: $02
    ld bc, $0300                                  ; $59ac: $01 $00 $03
    nop                                           ; $59af: $00
    ld [hl], c                                    ; $59b0: $71
    xor c                                         ; $59b1: $a9
    pop af                                        ; $59b2: $f1
    ldh [$60], a                                  ; $59b3: $e0 $60
    add sp, $30                                   ; $59b5: $e8 $30
    add e                                         ; $59b7: $83
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    rst $38                                       ; $59ba: $ff
    rst $38                                       ; $59bb: $ff
    rst $38                                       ; $59bc: $ff
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    rst $38                                       ; $59bf: $ff
    nop                                           ; $59c0: $00
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
    nop                                           ; $59d1: $00
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
    nop                                           ; $59e2: $00
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
    nop                                           ; $59f3: $00
    rst $38                                       ; $59f4: $ff
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    ccf                                           ; $59f8: $3f
    ld bc, $0000                                  ; $59f9: $01 $00 $00
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    ccf                                           ; $5a01: $3f
    ccf                                           ; $5a02: $3f
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    nop                                           ; $5a05: $00
    jr nz, jr_02d_5a28                            ; $5a06: $20 $20

    ld d, l                                       ; $5a08: $55
    and b                                         ; $5a09: $a0
    ld a, [hl]                                    ; $5a0a: $7e
    rst $38                                       ; $5a0b: $ff
    ld a, a                                       ; $5a0c: $7f
    ld [$0825], sp                                ; $5a0d: $08 $25 $08
    dec h                                         ; $5a10: $25
    ld [$0825], sp                                ; $5a11: $08 $25 $08
    dec h                                         ; $5a14: $25
    sub e                                         ; $5a15: $93
    add hl, hl                                    ; $5a16: $29
    rra                                           ; $5a17: $1f
    ld d, e                                       ; $5a18: $53
    ld [$6003], a                                 ; $5a19: $ea $03 $60
    ld [bc], a                                    ; $5a1c: $02
    rst $38                                       ; $5a1d: $ff
    ld a, a                                       ; $5a1e: $7f
    ld a, [c]                                     ; $5a1f: $f2
    inc bc                                        ; $5a20: $03
    db $ec                                        ; $5a21: $ec
    inc bc                                        ; $5a22: $03
    ld h, b                                       ; $5a23: $60
    ld [bc], a                                    ; $5a24: $02
    and b                                         ; $5a25: $a0
    ld a, l                                       ; $5a26: $7d
    rst $38                                       ; $5a27: $ff

jr_02d_5a28:
    ld a, a                                       ; $5a28: $7f
    rrc h                                         ; $5a29: $cb $0c
    ld h, b                                       ; $5a2b: $60
    ld [bc], a                                    ; $5a2c: $02
    dec sp                                        ; $5a2d: $3b
    ld l, e                                       ; $5a2e: $6b
    ld [$6003], a                                 ; $5a2f: $ea $03 $60
    ld [bc], a                                    ; $5a32: $02
    nop                                           ; $5a33: $00
    dec c                                         ; $5a34: $0d
    sub h                                         ; $5a35: $94
    ld bc, $2bff                                  ; $5a36: $01 $ff $2b
    ld h, b                                       ; $5a39: $60
    ld [bc], a                                    ; $5a3a: $02
    nop                                           ; $5a3b: $00
    dec c                                         ; $5a3c: $0d
    ld [$0825], sp                                ; $5a3d: $08 $25 $08
    dec h                                         ; $5a40: $25
    ld [$0825], sp                                ; $5a41: $08 $25 $08

jr_02d_5a44:
    dec h                                         ; $5a44: $25
    push de                                       ; $5a45: $d5
    nop                                           ; $5a46: $00
    rst $38                                       ; $5a47: $ff

jr_02d_5a48:
    ldh [rTIMA], a                                ; $5a48: $e0 $05
    ei                                            ; $5a4a: $fb
    ldh [$0b], a                                  ; $5a4b: $e0 $0b
    rst $30                                       ; $5a4d: $f7
    pop hl                                        ; $5a4e: $e1
    nop                                           ; $5a4f: $00
    ld [bc], a                                    ; $5a50: $02
    db $eb                                        ; $5a51: $eb
    nop                                           ; $5a52: $00
    jr z, jr_02d_5a44                             ; $5a53: $28 $ef

    ldh [$90], a                                  ; $5a55: $e0 $90
    db $eb                                        ; $5a57: $eb
    ldh [$f5], a                                  ; $5a58: $e0 $f5
    nop                                           ; $5a5a: $00
    ret z                                         ; $5a5b: $c8

    cp $e5                                        ; $5a5c: $fe $e5
    ldh [$80], a                                  ; $5a5e: $e0 $80
    nop                                           ; $5a60: $00
    db $fc                                        ; $5a61: $fc
    rst $38                                       ; $5a62: $ff
    ret nc                                        ; $5a63: $d0

    rst $38                                       ; $5a64: $ff
    and b                                         ; $5a65: $a0
    rst $38                                       ; $5a66: $ff
    cp $c2                                        ; $5a67: $fe $c2
    ld hl, sp-$78                                 ; $5a69: $f8 $88
    ldh a, [$80]                                  ; $5a6b: $f0 $80
    ldh [rNR10], a                                ; $5a6d: $e0 $10
    rst $28                                       ; $5a6f: $ef
    ldh [rP1], a                                  ; $5a70: $e0 $00
    ret nz                                        ; $5a72: $c0

    rst $38                                       ; $5a73: $ff
    rst $38                                       ; $5a74: $ff
    ldh [$fd], a                                  ; $5a75: $e0 $fd
    rst $38                                       ; $5a77: $ff
    ld a, [$ffff]                                 ; $5a78: $fa $ff $ff
    call c, $e0ff                                 ; $5a7b: $dc $ff $e0
    rst $38                                       ; $5a7e: $ff
    add c                                         ; $5a7f: $81
    cp $08                                        ; $5a80: $fe $08
    db $ed                                        ; $5a82: $ed
    ldh a, [$f8]                                  ; $5a83: $f0 $f8
    push hl                                       ; $5a85: $e5
    jr nz, jr_02d_5a48                            ; $5a86: $20 $c0

    cp a                                          ; $5a88: $bf
    ld [c], a                                     ; $5a89: $e2
    nop                                           ; $5a8a: $00
    ld a, a                                       ; $5a8b: $7f
    rst $38                                       ; $5a8c: $ff
    rst $38                                       ; $5a8d: $ff
    ccf                                           ; $5a8e: $3f
    rst $38                                       ; $5a8f: $ff
    cpl                                           ; $5a90: $2f
    rst $38                                       ; $5a91: $ff
    rra                                           ; $5a92: $1f
    rst $38                                       ; $5a93: $ff
    sbc a                                         ; $5a94: $9f
    ld a, a                                       ; $5a95: $7f
    rst $38                                       ; $5a96: $ff
    rla                                           ; $5a97: $17
    ld a, a                                       ; $5a98: $7f
    dec bc                                        ; $5a99: $0b
    ld a, a                                       ; $5a9a: $7f
    ld b, a                                       ; $5a9b: $47
    ccf                                           ; $5a9c: $3f
    rlca                                          ; $5a9d: $07
    rra                                           ; $5a9e: $1f
    rst $38                                       ; $5a9f: $ff
    inc bc                                        ; $5aa0: $03
    rra                                           ; $5aa1: $1f
    ld [de], a                                    ; $5aa2: $12
    rrca                                          ; $5aa3: $0f
    ld bc, $090f                                  ; $5aa4: $01 $0f $09
    rlca                                          ; $5aa7: $07
    rst $38                                       ; $5aa8: $ff
    ld bc, $0007                                  ; $5aa9: $01 $07 $00
    rlca                                          ; $5aac: $07
    inc b                                         ; $5aad: $04
    inc bc                                        ; $5aae: $03
    jr @+$01                                      ; $5aaf: $18 $ff

    rra                                           ; $5ab1: $1f
    nop                                           ; $5ab2: $00
    rst $38                                       ; $5ab3: $ff
    add c                                         ; $5ab4: $81
    inc a                                         ; $5ab5: $3c
    db $10                                        ; $5ab6: $10
    db $d3                                        ; $5ab7: $d3
    db $e3                                        ; $5ab8: $e3
    add e                                         ; $5ab9: $83
    ldh [$c8], a                                  ; $5aba: $e0 $c8
    ldh [rIE], a                                  ; $5abc: $e0 $ff
    ret nz                                        ; $5abe: $c0

    nop                                           ; $5abf: $00
    ldh [$90], a                                  ; $5ac0: $e0 $90
    ldh [$80], a                                  ; $5ac2: $e0 $80
    ldh [rP1], a                                  ; $5ac4: $e0 $00
    ld a, d                                       ; $5ac6: $7a
    and d                                         ; $5ac7: $a2

Jump_02d_5ac8:
    ldh [rNR41], a                                ; $5ac8: $e0 $20
    and b                                         ; $5aca: $a0
    ldh [$7b], a                                  ; $5acb: $e0 $7b
    rst $38                                       ; $5acd: $ff
    rst $30                                       ; $5ace: $f7
    rst $38                                       ; $5acf: $ff
    jp c, $fde3                                   ; $5ad0: $da $e3 $fd

    ld [$e063], sp                                ; $5ad3: $08 $63 $e0
    and h                                         ; $5ad6: $a4
    ld hl, sp-$20                                 ; $5ad7: $f8 $e0
    ld hl, sp-$20                                 ; $5ad9: $f8 $e0
    db $fc                                        ; $5adb: $fc
    rst $38                                       ; $5adc: $ff
    ldh a, [$fc]                                  ; $5add: $f0 $fc
    jp nc, $a0fc                                  ; $5adf: $d2 $fc $a0

    db $fc                                        ; $5ae2: $fc
    ldh [$f8], a                                  ; $5ae3: $e0 $f8
    ei                                            ; $5ae5: $fb
    db $e4                                        ; $5ae6: $e4
    ld hl, sp-$80                                 ; $5ae7: $f8 $80
    pop hl                                        ; $5ae9: $e1
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $18                                       ; $5aec: $df
    rst $38                                       ; $5aed: $ff
    cp l                                          ; $5aee: $bd
    ei                                            ; $5aef: $fb
    rst $38                                       ; $5af0: $ff
    jp $e0b6                                      ; $5af1: $c3 $b6 $e0


    nop                                           ; $5af4: $00
    rst $20                                       ; $5af5: $e7
    db $fc                                        ; $5af6: $fc
    rst $38                                       ; $5af7: $ff
    db $f4                                        ; $5af8: $f4
    sbc a                                         ; $5af9: $9f
    rst $38                                       ; $5afa: $ff
    add sp, -$01                                  ; $5afb: $e8 $ff
    ld hl, sp-$02                                 ; $5afd: $f8 $fe
    cp $e0                                        ; $5aff: $fe $e0
    or $e0                                        ; $5b01: $f6 $e0
    db $fc                                        ; $5b03: $fc
    add l                                         ; $5b04: $85
    rst $38                                       ; $5b05: $ff
    ld a, b                                       ; $5b06: $78
    ldh [$80], a                                  ; $5b07: $e0 $80
    and e                                         ; $5b09: $a3
    and $23                                       ; $5b0a: $e6 $23
    pop hl                                        ; $5b0c: $e1
    ldh a, [$e0]                                  ; $5b0d: $f0 $e0
    rst $28                                       ; $5b0f: $ef
    ld [$f1c0], a                                 ; $5b10: $ea $c0 $f1
    ld b, b                                       ; $5b13: $40
    ldh [$ea], a                                  ; $5b14: $e0 $ea
    ret nc                                        ; $5b16: $d0

    pop hl                                        ; $5b17: $e1
    rst $08                                       ; $5b18: $cf
    jp hl                                         ; $5b19: $e9


    ld [bc], a                                    ; $5b1a: $02
    add c                                         ; $5b1b: $81
    and b                                         ; $5b1c: $a0
    pop bc                                        ; $5b1d: $c1
    rst $38                                       ; $5b1e: $ff
    nop                                           ; $5b1f: $00
    pop bc                                        ; $5b20: $c1
    add l                                         ; $5b21: $85
    jp $c3a1                                      ; $5b22: $c3 $a1 $c3


    nop                                           ; $5b25: $00
    add e                                         ; $5b26: $83
    cp a                                          ; $5b27: $bf
    dec b                                         ; $5b28: $05
    add e                                         ; $5b29: $83
    ld b, b                                       ; $5b2a: $40
    add c                                         ; $5b2b: $81
    ld b, c                                       ; $5b2c: $41
    add b                                         ; $5b2d: $80
    ret nz                                        ; $5b2e: $c0

    ldh [$c0], a                                  ; $5b2f: $e0 $c0
    rst $38                                       ; $5b31: $ff
    and b                                         ; $5b32: $a0
    ret nz                                        ; $5b33: $c0

    ld b, b                                       ; $5b34: $40
    ldh [$e8], a                                  ; $5b35: $e0 $e8
    ldh a, [$d1]                                  ; $5b37: $f0 $d1
    db $fc                                        ; $5b39: $fc
    ld a, a                                       ; $5b3a: $7f
    db $ec                                        ; $5b3b: $ec
    rst $38                                       ; $5b3c: $ff
    ld a, [de]                                    ; $5b3d: $1a
    rst $38                                       ; $5b3e: $ff
    add b                                         ; $5b3f: $80
    ld e, $12                                     ; $5b40: $1e $12
    call nc, $bfc2                                ; $5b42: $d4 $c2 $bf
    ld c, b                                       ; $5b45: $48
    nop                                           ; $5b46: $00
    ld bc, $5878                                  ; $5b47: $01 $78 $58
    rst $38                                       ; $5b4a: $ff
    or b                                          ; $5b4b: $b0
    jp hl                                         ; $5b4c: $e9


    ld [bc], a                                    ; $5b4d: $02
    rst $38                                       ; $5b4e: $ff
    ld bc, $0300                                  ; $5b4f: $01 $00 $03
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    ld b, b                                       ; $5b54: $40
    ld b, b                                       ; $5b55: $40
    nop                                           ; $5b56: $00
    ccf                                           ; $5b57: $3f
    jr nz, jr_02d_5b5a                            ; $5b58: $20 $00

jr_02d_5b5a:
    db $10                                        ; $5b5a: $10
    ld [$0400], sp                                ; $5b5b: $08 $00 $04
    or d                                          ; $5b5e: $b2
    ret nz                                        ; $5b5f: $c0

    and d                                         ; $5b60: $a2
    pop bc                                        ; $5b61: $c1
    ldh [$f0], a                                  ; $5b62: $e0 $f0
    rst $38                                       ; $5b64: $ff
    ldh a, [rIE]                                  ; $5b65: $f0 $ff
    ldh a, [rIE]                                  ; $5b67: $f0 $ff
    ldh a, [rIE]                                  ; $5b69: $f0 $ff
    ldh a, [$f3]                                  ; $5b6b: $f0 $f3
    jp $c33c                                      ; $5b6d: $c3 $3c $c3


    pop af                                        ; $5b70: $f1
    inc a                                         ; $5b71: $3c
    db $fd                                        ; $5b72: $fd
    ldh [$fe], a                                  ; $5b73: $e0 $fe
    ld [c], a                                     ; $5b75: $e2
    db $f4                                        ; $5b76: $f4
    pop hl                                        ; $5b77: $e1
    dec de                                        ; $5b78: $1b
    rst $20                                       ; $5b79: $e7
    cpl                                           ; $5b7a: $2f
    call c, Call_000_1eff                         ; $5b7b: $dc $ff $1e
    pop af                                        ; $5b7e: $f1
    inc a                                         ; $5b7f: $3c
    db $e3                                        ; $5b80: $e3
    ld a, h                                       ; $5b81: $7c
    jp $c37c                                      ; $5b82: $c3 $7c $c3


    rst $38                                       ; $5b85: $ff
    db $e3                                        ; $5b86: $e3
    sbc h                                         ; $5b87: $9c
    jp Jump_000_18bc                              ; $5b88: $c3 $bc $18


    rst $20                                       ; $5b8b: $e7
    inc a                                         ; $5b8c: $3c
    jp Jump_000_3dff                              ; $5b8d: $c3 $ff $3d


    jp nz, $e719                                  ; $5b90: $c2 $19 $e7

    rla                                           ; $5b93: $17
    xor $5f                                       ; $5b94: $ee $5f
    cp b                                          ; $5b96: $b8
    rst $38                                       ; $5b97: $ff
    ld a, a                                       ; $5b98: $7f
    ldh [$f3], a                                  ; $5b99: $e0 $f3
    adc h                                         ; $5b9b: $8c
    dec de                                        ; $5b9c: $1b
    rst $20                                       ; $5b9d: $e7
    rra                                           ; $5b9e: $1f
    db $fc                                        ; $5b9f: $fc
    rst $38                                       ; $5ba0: $ff
    ld a, [hl]                                    ; $5ba1: $7e
    pop hl                                        ; $5ba2: $e1
    db $fc                                        ; $5ba3: $fc
    add e                                         ; $5ba4: $83
    db $fc                                        ; $5ba5: $fc
    inc bc                                        ; $5ba6: $03
    cp h                                          ; $5ba7: $bc
    ld b, e                                       ; $5ba8: $43
    cp $c4                                        ; $5ba9: $fe $c4
    pop hl                                        ; $5bab: $e1
    sbc b                                         ; $5bac: $98
    rst $20                                       ; $5bad: $e7
    db $fc                                        ; $5bae: $fc
    ld b, e                                       ; $5baf: $43
    call c, $f863                                 ; $5bb0: $dc $63 $f8
    rst $38                                       ; $5bb3: $ff
    daa                                           ; $5bb4: $27
    ld l, b                                       ; $5bb5: $68
    or a                                          ; $5bb6: $b7
    ld a, h                                       ; $5bb7: $7c
    sub e                                         ; $5bb8: $93
    db $f4                                        ; $5bb9: $f4
    dec de                                        ; $5bba: $1b
    ld hl, sp-$01                                 ; $5bbb: $f8 $ff
    rrca                                          ; $5bbd: $0f
    ld hl, sp+$0f                                 ; $5bbe: $f8 $0f
    sbc $25                                       ; $5bc0: $de $25
    inc a                                         ; $5bc2: $3c
    rst $00                                       ; $5bc3: $c7
    ld a, $ff                                     ; $5bc4: $3e $ff
    jp $c23f                                      ; $5bc6: $c3 $3f $c2


    ld a, $c3                                     ; $5bc9: $3e $c3
    rst $00                                       ; $5bcb: $c7
    add hl, sp                                    ; $5bcc: $39
    jp Jump_000_3d7f                              ; $5bcd: $c3 $7f $3d


    db $d3                                        ; $5bd0: $d3
    rst $38                                       ; $5bd1: $ff
    rst $10                                       ; $5bd2: $d7
    jr z, @+$01                                   ; $5bd3: $28 $ff

    nop                                           ; $5bd5: $00
    and b                                         ; $5bd6: $a0
    rst $20                                       ; $5bd7: $e7
    rst $38                                       ; $5bd8: $ff
    db $e3                                        ; $5bd9: $e3
    sbc h                                         ; $5bda: $9c
    db $e3                                        ; $5bdb: $e3
    sbc h                                         ; $5bdc: $9c
    ld a, h                                       ; $5bdd: $7c
    add e                                         ; $5bde: $83
    inc a                                         ; $5bdf: $3c
    jp $fcf1                                      ; $5be0: $c3 $f1 $fc


    db $fc                                        ; $5be3: $fc
    ldh [$f4], a                                  ; $5be4: $e0 $f4
    pop hl                                        ; $5be6: $e1
    and b                                         ; $5be7: $a0
    pop hl                                        ; $5be8: $e1
    jr @+$01                                      ; $5be9: $18 $ff

    db $db                                        ; $5beb: $db
    rst $20                                       ; $5bec: $e7
    rst $28                                       ; $5bed: $ef
    rst $38                                       ; $5bee: $ff
    nop                                           ; $5bef: $00
    ld a, [hl]                                    ; $5bf0: $7e
    add c                                         ; $5bf1: $81
    add b                                         ; $5bf2: $80
    ld [c], a                                     ; $5bf3: $e2
    db $f4                                        ; $5bf4: $f4
    ccf                                           ; $5bf5: $3f
    ret nc                                        ; $5bf6: $d0

    rst $38                                       ; $5bf7: $ff
    inc c                                         ; $5bf8: $0c
    di                                            ; $5bf9: $f3
    inc a                                         ; $5bfa: $3c
    db $e3                                        ; $5bfb: $e3
    inc a                                         ; $5bfc: $3c
    db $e3                                        ; $5bfd: $e3
    inc c                                         ; $5bfe: $0c
    di                                            ; $5bff: $f3
    rst $38                                       ; $5c00: $ff
    ccf                                           ; $5c01: $3f
    ret nc                                        ; $5c02: $d0

    dec de                                        ; $5c03: $1b
    db $f4                                        ; $5c04: $f4
    xor e                                         ; $5c05: $ab
    rst $38                                       ; $5c06: $ff
    ld e, a                                       ; $5c07: $5f
    db $fc                                        ; $5c08: $fc
    rst $18                                       ; $5c09: $df
    cp [hl]                                       ; $5c0a: $be
    pop af                                        ; $5c0b: $f1
    ld a, h                                       ; $5c0c: $7c
    db $e3                                        ; $5c0d: $e3
    db $fc                                        ; $5c0e: $fc
    ld [hl], b                                    ; $5c0f: $70
    db $e4                                        ; $5c10: $e4
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    jp c, $f5ff                                   ; $5c14: $da $ff $f5

    rst $38                                       ; $5c17: $ff
    xor e                                         ; $5c18: $ab
    rst $38                                       ; $5c19: $ff
    ld d, a                                       ; $5c1a: $57
    cp $77                                        ; $5c1b: $fe $77
    cp a                                          ; $5c1d: $bf
    ld hl, sp-$01                                 ; $5c1e: $f8 $ff
    ld [hl], b                                    ; $5c20: $70
    ldh [$57], a                                  ; $5c21: $e0 $57
    rst $38                                       ; $5c23: $ff
    cp a                                          ; $5c24: $bf
    ld [hl], b                                    ; $5c25: $70
    ld [$efff], a                                 ; $5c26: $ea $ff $ef
    rst $38                                       ; $5c29: $ff
    rst $10                                       ; $5c2a: $d7
    ld a, a                                       ; $5c2b: $7f
    db $ed                                        ; $5c2c: $ed
    ld a, a                                       ; $5c2d: $7f
    rst $30                                       ; $5c2e: $f7
    ccf                                           ; $5c2f: $3f
    rst $38                                       ; $5c30: $ff
    ld l, e                                       ; $5c31: $6b
    cp a                                          ; $5c32: $bf
    ld [hl], l                                    ; $5c33: $75
    sbc a                                         ; $5c34: $9f
    ei                                            ; $5c35: $fb
    rra                                           ; $5c36: $1f
    db $fd                                        ; $5c37: $fd
    rrca                                          ; $5c38: $0f
    rst $38                                       ; $5c39: $ff
    ld a, [$dd0f]                                 ; $5c3a: $fa $0f $dd
    daa                                           ; $5c3d: $27
    ld a, $c7                                     ; $5c3e: $3e $c7
    ccf                                           ; $5c40: $3f
    jp Jump_02d_6ebc                              ; $5c41: $c3 $bc $6e


    ldh [rSVBK], a                                ; $5c44: $e0 $70
    ld [c], a                                     ; $5c46: $e2
    rst $10                                       ; $5c47: $d7
    rst $38                                       ; $5c48: $ff
    ei                                            ; $5c49: $fb
    inc a                                         ; $5c4a: $3c
    ld [hl], b                                    ; $5c4b: $70
    xor $c3                                       ; $5c4c: $ee $c3
    ld a, [$e1a2]                                 ; $5c4e: $fa $a2 $e1
    cp h                                          ; $5c51: $bc
    ld [hl], b                                    ; $5c52: $70
    ld [c], a                                     ; $5c53: $e2
    ld d, l                                       ; $5c54: $55
    rst $38                                       ; $5c55: $ff
    xor d                                         ; $5c56: $aa
    rst $38                                       ; $5c57: $ff
    ld a, l                                       ; $5c58: $7d
    ld sp, hl                                     ; $5c59: $f9
    rst $38                                       ; $5c5a: $ff
    and e                                         ; $5c5b: $a3
    and c                                         ; $5c5c: $a1
    ldh a, [$c3]                                  ; $5c5d: $f0 $c3
    cp e                                          ; $5c5f: $bb
    db $f4                                        ; $5c60: $f4
    ld e, e                                       ; $5c61: $5b
    db $f4                                        ; $5c62: $f4
    cp h                                          ; $5c63: $bc
    rst $20                                       ; $5c64: $e7
    db $e3                                        ; $5c65: $e3
    ld a, h                                       ; $5c66: $7c
    db $e3                                        ; $5c67: $e3
    db $fc                                        ; $5c68: $fc
    pop hl                                        ; $5c69: $e1
    db $f4                                        ; $5c6a: $f4
    pop hl                                        ; $5c6b: $e1
    rst $38                                       ; $5c6c: $ff
    add c                                         ; $5c6d: $81
    rst $38                                       ; $5c6e: $ff
    ld [hl], a                                    ; $5c6f: $77
    rst $20                                       ; $5c70: $e7
    cp [hl]                                       ; $5c71: $be
    rst $38                                       ; $5c72: $ff
    jp c, $f7e1                                   ; $5c73: $da $e1 $f7

    rst $38                                       ; $5c76: $ff
    db $dd                                        ; $5c77: $dd
    di                                            ; $5c78: $f3
    add b                                         ; $5c79: $80
    ei                                            ; $5c7a: $fb
    rst $10                                       ; $5c7b: $d7
    rst $38                                       ; $5c7c: $ff
    sub d                                         ; $5c7d: $92
    ldh [$7f], a                                  ; $5c7e: $e0 $7f
    db $eb                                        ; $5c80: $eb
    ccf                                           ; $5c81: $3f
    rst $30                                       ; $5c82: $f7
    ccf                                           ; $5c83: $3f
    ccf                                           ; $5c84: $3f
    db $ed                                        ; $5c85: $ed
    ld a, a                                       ; $5c86: $7f
    rst $10                                       ; $5c87: $d7
    ld a, a                                       ; $5c88: $7f
    rst $28                                       ; $5c89: $ef
    rst $38                                       ; $5c8a: $ff
    ret nc                                        ; $5c8b: $d0

    pop bc                                        ; $5c8c: $c1
    ld l, $e0                                     ; $5c8d: $2e $e0
    db $fd                                        ; $5c8f: $fd
    rst $20                                       ; $5c90: $e7
    ld hl, sp-$1b                                 ; $5c91: $f8 $e5
    rst $10                                       ; $5c93: $d7
    rst $38                                       ; $5c94: $ff
    xor h                                         ; $5c95: $ac
    rst $38                                       ; $5c96: $ff
    ld d, h                                       ; $5c97: $54
    ei                                            ; $5c98: $fb
    rst $18                                       ; $5c99: $df
    xor b                                         ; $5c9a: $a8
    rst $30                                       ; $5c9b: $f7
    ld e, b                                       ; $5c9c: $58
    rst $20                                       ; $5c9d: $e7
    db $fc                                        ; $5c9e: $fc
    sbc [hl]                                      ; $5c9f: $9e
    ldh [$98], a                                  ; $5ca0: $e0 $98
    rst $20                                       ; $5ca2: $e7
    cp $40                                        ; $5ca3: $fe $40
    push hl                                       ; $5ca5: $e5
    ld d, [hl]                                    ; $5ca6: $56
    rst $38                                       ; $5ca7: $ff
    cp b                                          ; $5ca8: $b8
    rst $38                                       ; $5ca9: $ff
    db $e4                                        ; $5caa: $e4
    ei                                            ; $5cab: $fb
    sbc b                                         ; $5cac: $98
    ccf                                           ; $5cad: $3f
    rst $20                                       ; $5cae: $e7
    ld d, a                                       ; $5caf: $57
    rst $38                                       ; $5cb0: $ff
    cp h                                          ; $5cb1: $bc
    rst $38                                       ; $5cb2: $ff
    ld h, h                                       ; $5cb3: $64
    ld hl, sp-$20                                 ; $5cb4: $f8 $e0
    ret z                                         ; $5cb6: $c8

    push hl                                       ; $5cb7: $e5
    rst $38                                       ; $5cb8: $ff
    rst $28                                       ; $5cb9: $ef
    rst $38                                       ; $5cba: $ff
    ld d, a                                       ; $5cbb: $57
    rst $38                                       ; $5cbc: $ff
    ld l, l                                       ; $5cbd: $6d
    rst $38                                       ; $5cbe: $ff
    scf                                           ; $5cbf: $37
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    dec hl                                        ; $5cc2: $2b
    rst $38                                       ; $5cc3: $ff
    dec d                                         ; $5cc4: $15
    rst $38                                       ; $5cc5: $ff
    dec sp                                        ; $5cc6: $3b
    rst $18                                       ; $5cc7: $df
    dec c                                         ; $5cc8: $0d
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    ld a, [bc]                                    ; $5ccb: $0a
    rst $38                                       ; $5ccc: $ff
    dec [hl]                                      ; $5ccd: $35
    rst $08                                       ; $5cce: $cf
    ld a, $c7                                     ; $5ccf: $3e $c7
    dec de                                        ; $5cd1: $1b
    rst $20                                       ; $5cd2: $e7
    ld a, a                                       ; $5cd3: $7f
    ld a, [de]                                    ; $5cd4: $1a
    rst $20                                       ; $5cd5: $e7
    ccf                                           ; $5cd6: $3f
    jp $c33d                                      ; $5cd7: $c3 $3d $c3


    add hl, de                                    ; $5cda: $19
    or b                                          ; $5cdb: $b0
    ldh [$ef], a                                  ; $5cdc: $e0 $ef
    jr c, @+$01                                   ; $5cde: $38 $ff

    inc l                                         ; $5ce0: $2c
    db $d3                                        ; $5ce1: $d3
    and b                                         ; $5ce2: $a0
    rst $20                                       ; $5ce3: $e7
    sbc b                                         ; $5ce4: $98
    rst $20                                       ; $5ce5: $e7
    cp h                                          ; $5ce6: $bc
    adc [hl]                                      ; $5ce7: $8e
    ld d, [hl]                                    ; $5ce8: $56
    ret nz                                        ; $5ce9: $c0

    ret c                                         ; $5cea: $d8

    rst $20                                       ; $5ceb: $e7
    ld e, b                                       ; $5cec: $58
    ld hl, sp-$20                                 ; $5ced: $f8 $e0
    and b                                         ; $5cef: $a0
    pop hl                                        ; $5cf0: $e1
    ld b, b                                       ; $5cf1: $40
    db $e3                                        ; $5cf2: $e3
    jp Jump_02d_78fa                              ; $5cf3: $c3 $fa $78


    and $b0                                       ; $5cf6: $e6 $b0
    add d                                         ; $5cf8: $82
    ldh [$a4], a                                  ; $5cf9: $e0 $a4
    ei                                            ; $5cfb: $fb
    ld l, b                                       ; $5cfc: $68
    rst $30                                       ; $5cfd: $f7
    xor b                                         ; $5cfe: $a8
    cp a                                          ; $5cff: $bf

Call_02d_5d00:
    rst $30                                       ; $5d00: $f7
    ld h, h                                       ; $5d01: $64
    ei                                            ; $5d02: $fb
    or h                                          ; $5d03: $b4
    ei                                            ; $5d04: $fb
    ld d, b                                       ; $5d05: $50
    ld b, c                                       ; $5d06: $41
    pop hl                                        ; $5d07: $e1
    rst $38                                       ; $5d08: $ff
    xor [hl]                                      ; $5d09: $ae
    ld b, b                                       ; $5d0a: $40
    db $eb                                        ; $5d0b: $eb
    ld l, l                                       ; $5d0c: $6d
    rst $38                                       ; $5d0d: $ff
    ld [hl], a                                    ; $5d0e: $77
    sub d                                         ; $5d0f: $92
    ldh [$37], a                                  ; $5d10: $e0 $37
    adc d                                         ; $5d12: $8a
    ldh [$57], a                                  ; $5d13: $e0 $57
    ld d, e                                       ; $5d15: $53
    rst $38                                       ; $5d16: $ff
    rst $28                                       ; $5d17: $ef
    and c                                         ; $5d18: $a1
    add e                                         ; $5d19: $83
    xor $e0                                       ; $5d1a: $ee $e0
    db $dd                                        ; $5d1c: $dd
    ld hl, sp-$40                                 ; $5d1d: $f8 $c0
    ld d, l                                       ; $5d1f: $55
    inc de                                        ; $5d20: $13
    add b                                         ; $5d21: $80
    push bc                                       ; $5d22: $c5
    xor a                                         ; $5d23: $af
    sub h                                         ; $5d24: $94
    add b                                         ; $5d25: $80
    or a                                          ; $5d26: $b7
    sub b                                         ; $5d27: $90
    add b                                         ; $5d28: $80
    ld hl, sp-$1b                                 ; $5d29: $f8 $e5
    rst $38                                       ; $5d2b: $ff
    push hl                                       ; $5d2c: $e5
    xor $ff                                       ; $5d2d: $ee $ff
    ld e, l                                       ; $5d2f: $5d
    cp e                                          ; $5d30: $bb
    ld a, [$bfc2]                                 ; $5d31: $fa $c2 $bf
    rst $38                                       ; $5d34: $ff
    ld l, a                                       ; $5d35: $6f
    db $fc                                        ; $5d36: $fc
    ldh [$5f], a                                  ; $5d37: $e0 $5f
    ld hl, sp-$1a                                 ; $5d39: $f8 $e6
    adc d                                         ; $5d3b: $8a
    ld h, b                                       ; $5d3c: $60
    add e                                         ; $5d3d: $83
    cp a                                          ; $5d3e: $bf
    reti                                          ; $5d3f: $d9


    ld h, b                                       ; $5d40: $60
    ld e, a                                       ; $5d41: $5f
    ret z                                         ; $5d42: $c8

    ldh [$f0], a                                  ; $5d43: $e0 $f0
    push hl                                       ; $5d45: $e5
    ld sp, hl                                     ; $5d46: $f9
    rst $20                                       ; $5d47: $e7
    xor c                                         ; $5d48: $a9
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    ld d, h                                       ; $5d4b: $54
    db $fc                                        ; $5d4c: $fc
    add c                                         ; $5d4d: $81
    ldh a, [rDMA]                                 ; $5d4e: $f0 $46
    ldh [$8b], a                                  ; $5d50: $e0 $8b
    rst $38                                       ; $5d52: $ff
    ret nz                                        ; $5d53: $c0

    ld d, a                                       ; $5d54: $57

Jump_02d_5d55:
    ret nz                                        ; $5d55: $c0

    rra                                           ; $5d56: $1f
    add b                                         ; $5d57: $80
    xor a                                         ; $5d58: $af
    add b                                         ; $5d59: $80
    rst $30                                       ; $5d5a: $f7
    cp $36                                        ; $5d5b: $fe $36
    add b                                         ; $5d5d: $80
    ld [$54ff], a                                 ; $5d5e: $ea $ff $54
    rst $38                                       ; $5d61: $ff
    and b                                         ; $5d62: $a0
    db $fc                                        ; $5d63: $fc
    ld b, c                                       ; $5d64: $41
    rst $38                                       ; $5d65: $ff
    ldh a, [$0a]                                  ; $5d66: $f0 $0a
    ret nz                                        ; $5d68: $c0

    rla                                           ; $5d69: $17
    nop                                           ; $5d6a: $00
    xor b                                         ; $5d6b: $a8
    cp $41                                        ; $5d6c: $fe $41
    rst $38                                       ; $5d6e: $ff
    ld hl, sp-$7e                                 ; $5d6f: $f8 $82
    ldh [$15], a                                  ; $5d71: $e0 $15
    add b                                         ; $5d73: $80
    cpl                                           ; $5d74: $2f
    nop                                           ; $5d75: $00
    ld e, a                                       ; $5d76: $5f
    cp $21                                        ; $5d77: $fe $21
    add b                                         ; $5d79: $80
    rst $38                                       ; $5d7a: $ff
    nop                                           ; $5d7b: $00
    add sp, -$02                                  ; $5d7c: $e8 $fe
    or h                                          ; $5d7e: $b4
    cp $e8                                        ; $5d7f: $fe $e8
    rst $38                                       ; $5d81: $ff
    db $fc                                        ; $5d82: $fc
    pop de                                        ; $5d83: $d1
    db $fc                                        ; $5d84: $fc
    ld h, d                                       ; $5d85: $62
    ld hl, sp-$2f                                 ; $5d86: $f8 $d1
    ld hl, sp-$5d                                 ; $5d88: $f8 $a3
    rst $38                                       ; $5d8a: $ff
    ldh a, [$c5]                                  ; $5d8b: $f0 $c5
    ldh a, [$a3]                                  ; $5d8d: $f0 $a3
    ldh a, [rBGP]                                 ; $5d8f: $f0 $47
    ldh [$8b], a                                  ; $5d91: $e0 $8b
    rst $28                                       ; $5d93: $ef
    ldh [rNR22], a                                ; $5d94: $e0 $17
    ret nz                                        ; $5d96: $c0

    adc a                                         ; $5d97: $8f
    jp nz, Jump_000_2fe0                          ; $5d98: $c2 $e0 $2f

    add b                                         ; $5d9b: $80
    ld e, a                                       ; $5d9c: $5f
    rst $38                                       ; $5d9d: $ff
    nop                                           ; $5d9e: $00
    sub c                                         ; $5d9f: $91
    rst $38                                       ; $5da0: $ff
    inc h                                         ; $5da1: $24
    inc a                                         ; $5da2: $3c

jr_02d_5da3:
    add l                                         ; $5da3: $85
    nop                                           ; $5da4: $00
    ld e, d                                       ; $5da5: $5a
    ei                                            ; $5da6: $fb
    nop                                           ; $5da7: $00
    xor l                                         ; $5da8: $ad
    jp nc, $ffe2                                  ; $5da9: $d2 $e2 $ff

    nop                                           ; $5dac: $00
    xor a                                         ; $5dad: $af
    add b                                         ; $5dae: $80
    rla                                           ; $5daf: $17
    rst $38                                       ; $5db0: $ff
    add b                                         ; $5db1: $80
    ld l, a                                       ; $5db2: $6f
    ret nz                                        ; $5db3: $c0

    rra                                           ; $5db4: $1f
    ret nz                                        ; $5db5: $c0

    sub a                                         ; $5db6: $97
    ret nz                                        ; $5db7: $c0

    ld c, a                                       ; $5db8: $4f
    di                                            ; $5db9: $f3
    ret nz                                        ; $5dba: $c0

    rla                                           ; $5dbb: $17
    and b                                         ; $5dbc: $a0
    ldh [$30], a                                  ; $5dbd: $e0 $30
    pop bc                                        ; $5dbf: $c1
    ld b, c                                       ; $5dc0: $41
    rst $38                                       ; $5dc1: $ff
    nop                                           ; $5dc2: $00
    jp $28df                                      ; $5dc3: $c3 $df $28


    nop                                           ; $5dc6: $00
    ld d, l                                       ; $5dc7: $55
    nop                                           ; $5dc8: $00
    cp d                                          ; $5dc9: $ba
    rst $08                                       ; $5dca: $cf
    ld h, b                                       ; $5dcb: $60
    ld b, e                                       ; $5dcc: $43
    ldh a, [rIE]                                  ; $5dcd: $f0 $ff
    and l                                         ; $5dcf: $a5
    ldh a, [rWX]                                  ; $5dd0: $f0 $4b
    ldh [$87], a                                  ; $5dd2: $e0 $87
    ldh [rWX], a                                  ; $5dd4: $e0 $4b
    ldh [$d3], a                                  ; $5dd6: $e0 $d3
    add l                                         ; $5dd8: $85
    ldh [$f4], a                                  ; $5dd9: $e0 $f4
    pop hl                                        ; $5ddb: $e1
    jr nc, jr_02d_5e3f                            ; $5ddc: $30 $61

    rst $28                                       ; $5dde: $ef
    jr nc, jr_02d_5da3                            ; $5ddf: $30 $c2

    ld b, c                                       ; $5de1: $41
    rst $38                                       ; $5de2: $ff
    rst $38                                       ; $5de3: $ff
    inc h                                         ; $5de4: $24
    rst $20                                       ; $5de5: $e7
    sub l                                         ; $5de6: $95
    add c                                         ; $5de7: $81
    push af                                       ; $5de8: $f5
    rst $38                                       ; $5de9: $ff
    add sp, -$02                                  ; $5dea: $e8 $fe
    db $fd                                        ; $5dec: $fd
    di                                            ; $5ded: $f3
    adc [hl]                                      ; $5dee: $8e
    ld [c], a                                     ; $5def: $e2
    ld [$f4fe], a                                 ; $5df0: $ea $fe $f4
    cp $e9                                        ; $5df3: $fe $e9
    rst $38                                       ; $5df5: $ff
    rst $38                                       ; $5df6: $ff
    rst $38                                       ; $5df7: $ff
    add b                                         ; $5df8: $80
    ccf                                           ; $5df9: $3f
    add b                                         ; $5dfa: $80
    ld a, a                                       ; $5dfb: $7f
    ret nz                                        ; $5dfc: $c0

    sbc a                                         ; $5dfd: $9f
    ret nz                                        ; $5dfe: $c0

    rst $38                                       ; $5dff: $ff
    ld c, a                                       ; $5e00: $4f
    ldh [$87], a                                  ; $5e01: $e0 $87
    ldh a, [rHDMA5]                               ; $5e03: $f0 $55
    db $fc                                        ; $5e05: $fc
    xor c                                         ; $5e06: $a9
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    ccf                                           ; $5e09: $3f
    nop                                           ; $5e0a: $00
    rrca                                          ; $5e0b: $0f
    ret nz                                        ; $5e0c: $c0

    ld b, e                                       ; $5e0d: $43
    ldh a, [$a0]                                  ; $5e0e: $f0 $a0
    db $fc                                        ; $5e10: $fc
    sbc a                                         ; $5e11: $9f
    call nc, Call_02d_7aff                        ; $5e12: $d4 $ff $7a
    rst $38                                       ; $5e15: $ff
    db $ed                                        ; $5e16: $ed
    di                                            ; $5e17: $f3
    ld b, c                                       ; $5e18: $41
    adc b                                         ; $5e19: $88
    db $e4                                        ; $5e1a: $e4
    ccf                                           ; $5e1b: $3f
    rst $38                                       ; $5e1c: $ff
    nop                                           ; $5e1d: $00
    rlca                                          ; $5e1e: $07
    ret nz                                        ; $5e1f: $c0

    ld b, c                                       ; $5e20: $41
    ld hl, sp-$58                                 ; $5e21: $f8 $a8
    cp $e3                                        ; $5e23: $fe $e3
    rst $38                                       ; $5e25: $ff
    rrca                                          ; $5e26: $0f
    push hl                                       ; $5e27: $e5
    rrca                                          ; $5e28: $0f
    rr a                                          ; $5e29: $cb $1f
    rst $00                                       ; $5e2b: $c7
    rra                                           ; $5e2c: $1f
    adc l                                         ; $5e2d: $8d
    rst $38                                       ; $5e2e: $ff
    ccf                                           ; $5e2f: $3f
    sub a                                         ; $5e30: $97
    ccf                                           ; $5e31: $3f
    cpl                                           ; $5e32: $2f
    ld a, a                                       ; $5e33: $7f
    dec de                                        ; $5e34: $1b
    ld a, a                                       ; $5e35: $7f
    cp $ff                                        ; $5e36: $fe $ff
    nop                                           ; $5e38: $00
    db $fc                                        ; $5e39: $fc
    ld bc, $01fc                                  ; $5e3a: $01 $fc $01
    ld sp, hl                                     ; $5e3d: $f9
    inc bc                                        ; $5e3e: $03

jr_02d_5e3f:
    ld hl, sp+$7f                                 ; $5e3f: $f8 $7f
    inc bc                                        ; $5e41: $03
    ld sp, hl                                     ; $5e42: $f9
    inc bc                                        ; $5e43: $03
    ld a, [c]                                     ; $5e44: $f2
    rlca                                          ; $5e45: $07
    pop af                                        ; $5e46: $f1
    rlca                                          ; $5e47: $07
    ret nc                                        ; $5e48: $d0

    push hl                                       ; $5e49: $e5
    cp [hl]                                       ; $5e4a: $be
    ld b, e                                       ; $5e4b: $43
    ld h, c                                       ; $5e4c: $61
    and l                                         ; $5e4d: $a5
    nop                                           ; $5e4e: $00
    add c                                         ; $5e4f: $81
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    ld [c], a                                     ; $5e52: $e2

jr_02d_5e53:
    ldh [$fe], a                                  ; $5e53: $e0 $fe
    db $ec                                        ; $5e55: $ec
    sbc $e0                                       ; $5e56: $de $e0
    ld a, [$ffe3]                                 ; $5e58: $fa $e3 $ff
    ld bc, $e33a                                  ; $5e5b: $01 $3a $e3
    inc a                                         ; $5e5e: $3c
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    db $db                                        ; $5e61: $db
    rst $20                                       ; $5e62: $e7
    and d                                         ; $5e63: $a2
    sbc d                                         ; $5e64: $9a
    and b                                         ; $5e65: $a0
    db $eb                                        ; $5e66: $eb
    rst $38                                       ; $5e67: $ff
    or b                                          ; $5e68: $b0
    pop hl                                        ; $5e69: $e1
    ld a, [c]                                     ; $5e6a: $f2
    rrca                                          ; $5e6b: $0f
    cp a                                          ; $5e6c: $bf
    pop af                                        ; $5e6d: $f1
    rlca                                          ; $5e6e: $07
    ld a, [c]                                     ; $5e6f: $f2
    rlca                                          ; $5e70: $07

jr_02d_5e71:
    push af                                       ; $5e71: $f5
    rrca                                          ; $5e72: $0f
    and h                                         ; $5e73: $a4
    pop hl                                        ; $5e74: $e1
    inc a                                         ; $5e75: $3c
    rst $08                                       ; $5e76: $cf
    nop                                           ; $5e77: $00
    inc h                                         ; $5e78: $24
    rst $20                                       ; $5e79: $e7
    add d                                         ; $5e7a: $82
    add b                                         ; $5e7b: $80
    and h                                         ; $5e7c: $a4
    ld [hl], h                                    ; $5e7d: $74
    ld b, c                                       ; $5e7e: $41
    rla                                           ; $5e7f: $17
    ld a, a                                       ; $5e80: $7f
    push de                                       ; $5e81: $d5
    cpl                                           ; $5e82: $2f
    adc b                                         ; $5e83: $88
    and b                                         ; $5e84: $a0
    adc e                                         ; $5e85: $8b
    sub d                                         ; $5e86: $92
    ldh [$cf], a                                  ; $5e87: $e0 $cf
    adc [hl]                                      ; $5e89: $8e
    ld b, b                                       ; $5e8a: $40
    cpl                                           ; $5e8b: $2f
    ld a, a                                       ; $5e8c: $7f
    ld [hl], l                                    ; $5e8d: $75
    xor b                                         ; $5e8e: $a8
    jr jr_02d_5e71                                ; $5e8f: $18 $e0

    cp $9c                                        ; $5e91: $fe $9c
    add sp, -$41                                  ; $5e93: $e8 $bf
    nop                                           ; $5e95: $00
    ld a, a                                       ; $5e96: $7f
    db $fc                                        ; $5e97: $fc
    and $55                                       ; $5e98: $e6 $55
    ccf                                           ; $5e9a: $3f
    xor h                                         ; $5e9b: $ac
    ret nz                                        ; $5e9c: $c0

    ld [$c0f8], sp                                ; $5e9d: $08 $f8 $c0
    ld l, $ec                                     ; $5ea0: $2e $ec
    ld [c], a                                     ; $5ea2: $e2
    ld e, a                                       ; $5ea3: $5f
    ldh a, [$e2]                                  ; $5ea4: $f0 $e2
    ld [c], a                                     ; $5ea6: $e2
    db $ec                                        ; $5ea7: $ec
    pop hl                                        ; $5ea8: $e1
    cp a                                          ; $5ea9: $bf
    ld l, h                                       ; $5eaa: $6c
    add sp, -$0a                                  ; $5eab: $e8 $f6
    db $ed                                        ; $5ead: $ed
    jr nc, jr_02d_5e53                            ; $5eae: $30 $a3

    dec de                                        ; $5eb0: $1b
    db $e4                                        ; $5eb1: $e4
    dec d                                         ; $5eb2: $15
    rst $38                                       ; $5eb3: $ff
    xor $2d                                       ; $5eb4: $ee $2d
    ret nc                                        ; $5eb6: $d0

    dec b                                         ; $5eb7: $05
    ld a, [$c034]                                 ; $5eb8: $fa $34 $c0
    ld d, a                                       ; $5ebb: $57
    cp a                                          ; $5ebc: $bf
    xor d                                         ; $5ebd: $aa
    and h                                         ; $5ebe: $a4
    ld a, [bc]                                    ; $5ebf: $0a
    ld c, e                                       ; $5ec0: $4b
    add b                                         ; $5ec1: $80
    ld b, d                                       ; $5ec2: $42
    ldh [rNR41], a                                ; $5ec3: $e0 $20
    dec e                                         ; $5ec5: $1d
    rst $38                                       ; $5ec6: $ff
    ld [bc], a                                    ; $5ec7: $02
    cp h                                          ; $5ec8: $bc
    inc bc                                        ; $5ec9: $03
    sbc b                                         ; $5eca: $98
    ld h, a                                       ; $5ecb: $67
    rla                                           ; $5ecc: $17
    xor d                                         ; $5ecd: $aa
    db $e4                                        ; $5ece: $e4
    rst $38                                       ; $5ecf: $ff
    ld a, [bc]                                    ; $5ed0: $0a
    adc e                                         ; $5ed1: $8b
    jr nz, jr_02d_5ef6                            ; $5ed2: $20 $22

    nop                                           ; $5ed4: $00
    db $dd                                        ; $5ed5: $dd
    nop                                           ; $5ed6: $00
    cp l                                          ; $5ed7: $bd
    db $fd                                        ; $5ed8: $fd
    ld b, d                                       ; $5ed9: $42
    ld [$16a1], sp                                ; $5eda: $08 $a1 $16
    xor c                                         ; $5edd: $a9
    add sp, $03                                   ; $5ede: $e8 $03
    add l                                         ; $5ee0: $85
    ld [hl+], a                                   ; $5ee1: $22
    rst $38                                       ; $5ee2: $ff
    ld a, [hl+]                                   ; $5ee3: $2a
    rlca                                          ; $5ee4: $07
    db $db                                        ; $5ee5: $db
    nop                                           ; $5ee6: $00
    cp h                                          ; $5ee7: $bc
    ld b, e                                       ; $5ee8: $43
    ccf                                           ; $5ee9: $3f
    ret nz                                        ; $5eea: $c0

    rst $30                                       ; $5eeb: $f7
    add hl, de                                    ; $5eec: $19

jr_02d_5eed:
    and $18                                       ; $5eed: $e6 $18
    ld h, b                                       ; $5eef: $60
    and b                                         ; $5ef0: $a0
    inc a                                         ; $5ef1: $3c
    jp $e7b8                                      ; $5ef2: $c3 $b8 $e7


    rst $38                                       ; $5ef5: $ff

jr_02d_5ef6:
    ld [$ccf7], sp                                ; $5ef6: $08 $f7 $cc
    ei                                            ; $5ef9: $fb
    sub b                                         ; $5efa: $90
    ld l, a                                       ; $5efb: $6f
    ld a, [hl+]                                   ; $5efc: $2a
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    rra                                           ; $5eff: $1f
    ldh [$d0], a                                  ; $5f00: $e0 $d0
    ld bc, $a15a                                  ; $5f02: $01 $5a $a1
    ld c, b                                       ; $5f05: $48
    rlca                                          ; $5f06: $07
    rst $28                                       ; $5f07: $ef
    ld hl, sp+$07                                 ; $5f08: $f8 $07
    inc e                                         ; $5f0a: $1c
    inc bc                                        ; $5f0b: $03
    ret nz                                        ; $5f0c: $c0

    pop hl                                        ; $5f0d: $e1
    or b                                          ; $5f0e: $b0
    rrca                                          ; $5f0f: $0f
    call z, Call_000_3fff                         ; $5f10: $cc $ff $3f
    ld a, c                                       ; $5f13: $79
    add [hl]                                      ; $5f14: $86
    ld [de], a                                    ; $5f15: $12
    rst $28                                       ; $5f16: $ef
    dec de                                        ; $5f17: $1b
    ldh [$3c], a                                  ; $5f18: $e0 $3c
    db $fd                                        ; $5f1a: $fd
    jp $e1d0                                      ; $5f1b: $c3 $d0 $e1


    dec a                                         ; $5f1e: $3d
    ret nz                                        ; $5f1f: $c0

    ld c, a                                       ; $5f20: $4f
    and b                                         ; $5f21: $a0
    jr nc, jr_02d_5eed                            ; $5f22: $30 $c9

    rst $38                                       ; $5f24: $ff
    ld d, d                                       ; $5f25: $52
    and c                                         ; $5f26: $a1
    ld l, l                                       ; $5f27: $6d
    jp nz, $c934                                  ; $5f28: $c2 $34 $c9

    ld c, b                                       ; $5f2b: $48
    or e                                          ; $5f2c: $b3
    rst $38                                       ; $5f2d: $ff
    ld a, [de]                                    ; $5f2e: $1a
    push hl                                       ; $5f2f: $e5
    dec d                                         ; $5f30: $15
    cp a                                          ; $5f31: $bf
    adc $3f                                       ; $5f32: $ce $3f
    ld d, [hl]                                    ; $5f34: $56
    cp a                                          ; $5f35: $bf
    rst $38                                       ; $5f36: $ff
    ld l, l                                       ; $5f37: $6d
    cp a                                          ; $5f38: $bf
    sbc [hl]                                      ; $5f39: $9e
    ld a, a                                       ; $5f3a: $7f
    ld l, d                                       ; $5f3b: $6a
    cp a                                          ; $5f3c: $bf
    dec e                                         ; $5f3d: $1d
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    ld c, [hl]                                    ; $5f40: $4e
    cp a                                          ; $5f41: $bf
    dec [hl]                                      ; $5f42: $35
    ret nz                                        ; $5f43: $c0

    ld c, [hl]                                    ; $5f44: $4e
    and c                                         ; $5f45: $a1
    ld [hl-], a                                   ; $5f46: $32
    ret                                           ; $5f47: $c9


    rst $38                                       ; $5f48: $ff
    ld d, a                                       ; $5f49: $57
    and d                                         ; $5f4a: $a2
    ld a, a                                       ; $5f4b: $7f
    push bc                                       ; $5f4c: $c5
    ld [hl-], a                                   ; $5f4d: $32
    rst $08                                       ; $5f4e: $cf
    ld d, l                                       ; $5f4f: $55
    cp a                                          ; $5f50: $bf
    cp l                                          ; $5f51: $bd
    dec hl                                        ; $5f52: $2b
    sub b                                         ; $5f53: $90
    add d                                         ; $5f54: $82
    cp h                                          ; $5f55: $bc
    ld b, e                                       ; $5f56: $43
    ld e, b                                       ; $5f57: $58
    and a                                         ; $5f58: $a7
    nop                                           ; $5f59: $00
    and b                                         ; $5f5a: $a0
    db $e3                                        ; $5f5b: $e3
    rst $38                                       ; $5f5c: $ff
    call nz, $b4f3                                ; $5f5d: $c4 $f3 $b4
    db $eb                                        ; $5f60: $eb
    sbc d                                         ; $5f61: $9a
    ld a, a                                       ; $5f62: $7f
    rst $28                                       ; $5f63: $ef
    ccf                                           ; $5f64: $3f
    rst $18                                       ; $5f65: $df
    ld a, [hl-]                                   ; $5f66: $3a
    rst $18                                       ; $5f67: $df

jr_02d_5f68:
    ld c, l                                       ; $5f68: $4d
    rst $38                                       ; $5f69: $ff
    or h                                          ; $5f6a: $b4
    ld h, b                                       ; $5f6b: $60
    ret nz                                        ; $5f6c: $c0

    xor b                                         ; $5f6d: $a8
    rst $38                                       ; $5f6e: $ff
    ld a, l                                       ; $5f6f: $7d
    ld [hl], h                                    ; $5f70: $74
    cp d                                          ; $5f71: $ba
    add b                                         ; $5f72: $80
    inc hl                                        ; $5f73: $23
    rst $18                                       ; $5f74: $df
    dec b                                         ; $5f75: $05
    rst $38                                       ; $5f76: $ff
    ld a, [de]                                    ; $5f77: $1a
    ld [hl], b                                    ; $5f78: $70
    add [hl]                                      ; $5f79: $86
    ld a, a                                       ; $5f7a: $7f
    call nc, $bbff                                ; $5f7b: $d4 $ff $bb
    cp $74                                        ; $5f7e: $fe $74
    rst $38                                       ; $5f80: $ff
    xor [hl]                                      ; $5f81: $ae
    inc e                                         ; $5f82: $1c
    add b                                         ; $5f83: $80
    db $fd                                        ; $5f84: $fd
    xor [hl]                                      ; $5f85: $ae
    ld a, [hl-]                                   ; $5f86: $3a
    add b                                         ; $5f87: $80
    inc bc                                        ; $5f88: $03
    rst $38                                       ; $5f89: $ff
    ld d, d                                       ; $5f8a: $52
    db $fc                                        ; $5f8b: $fc
    xor d                                         ; $5f8c: $aa
    db $fd                                        ; $5f8d: $fd
    rst $10                                       ; $5f8e: $d7
    ld [hl], a                                    ; $5f8f: $77
    ei                                            ; $5f90: $fb
    and d                                         ; $5f91: $a2
    adc d                                         ; $5f92: $8a
    add b                                         ; $5f93: $80
    dec c                                         ; $5f94: $0d
    add [hl]                                      ; $5f95: $86
    add b                                         ; $5f96: $80
    ld a, [bc]                                    ; $5f97: $0a
    rst $38                                       ; $5f98: $ff
    ld a, a                                       ; $5f99: $7f
    ld h, a                                       ; $5f9a: $67
    adc b                                         ; $5f9b: $88
    call Call_000_32bb                            ; $5f9c: $cd $bb $32
    rst $28                                       ; $5f9f: $ef
    db $eb                                        ; $5fa0: $eb
    sbc $e0                                       ; $5fa1: $de $e0
    db $fd                                        ; $5fa3: $fd
    cp $9a                                        ; $5fa4: $fe $9a
    ld h, b                                       ; $5fa6: $60
    cp d                                          ; $5fa7: $ba
    rst $38                                       ; $5fa8: $ff
    daa                                           ; $5fa9: $27
    ret z                                         ; $5faa: $c8

    ld l, l                                       ; $5fab: $6d
    sbc e                                         ; $5fac: $9b
    db $dd                                        ; $5fad: $dd

jr_02d_5fae:
    ld [hl+], a                                   ; $5fae: $22
    ld l, h                                       ; $5faf: $6c
    jr nz, jr_02d_5f68                            ; $5fb0: $20 $b6

    rst $38                                       ; $5fb2: $ff
    ld e, [hl]                                    ; $5fb3: $5e
    ld c, $a0                                     ; $5fb4: $0e $a0
    sbc $ff                                       ; $5fb6: $de $ff
    ld a, a                                       ; $5fb8: $7f
    ld c, $bf                                     ; $5fb9: $0e $bf
    db $dd                                        ; $5fbb: $dd
    ccf                                           ; $5fbc: $3f
    ld l, [hl]                                    ; $5fbd: $6e
    cp a                                          ; $5fbe: $bf
    ld d, a                                       ; $5fbf: $57
    ld [hl], b                                    ; $5fc0: $70
    ldh [$f7], a                                  ; $5fc1: $e0 $f7
    ld l, l                                       ; $5fc3: $6d
    cp a                                          ; $5fc4: $bf
    ld e, $70                                     ; $5fc5: $1e $70
    ldh [rHDMA2], a                               ; $5fc7: $e0 $52
    db $fd                                        ; $5fc9: $fd
    xor $f9                                       ; $5fca: $ee $f9
    rst $38                                       ; $5fcc: $ff
    ld c, c                                       ; $5fcd: $49
    or $a7                                        ; $5fce: $f6 $a7
    ld hl, sp+$47                                 ; $5fd0: $f8 $47
    ldh a, [$b4]                                  ; $5fd2: $f0 $b4
    ret                                           ; $5fd4: $c9


    rst $38                                       ; $5fd5: $ff
    ld c, d                                       ; $5fd6: $4a
    or c                                          ; $5fd7: $b1
    dec de                                        ; $5fd8: $1b
    db $e4                                        ; $5fd9: $e4
    rst $38                                       ; $5fda: $ff
    rra                                           ; $5fdb: $1f
    ld c, d                                       ; $5fdc: $4a
    cp a                                          ; $5fdd: $bf
    rst $38                                       ; $5fde: $ff
    ld l, c                                       ; $5fdf: $69
    sub a                                         ; $5fe0: $97
    ld [de], a                                    ; $5fe1: $12
    rst $28                                       ; $5fe2: $ef
    add hl, de                                    ; $5fe3: $19
    ld [c], a                                     ; $5fe4: $e2
    jr c, jr_02d_5fae                             ; $5fe5: $38 $c7

    cp $00                                        ; $5fe7: $fe $00
    pop hl                                        ; $5fe9: $e1
    dec hl                                        ; $5fea: $2b
    ret nc                                        ; $5feb: $d0

    xor d                                         ; $5fec: $aa
    ld b, c                                       ; $5fed: $41
    cp $01                                        ; $5fee: $fe $01
    xor b                                         ; $5ff0: $a8
    rst $30                                       ; $5ff1: $f7
    rlca                                          ; $5ff2: $07
    ld a, b                                       ; $5ff3: $78
    add a                                         ; $5ff4: $87
    db $10                                        ; $5ff5: $10

jr_02d_5ff6:
    db $e3                                        ; $5ff6: $e3
    and c                                         ; $5ff7: $a1
    ld e, $8c                                     ; $5ff8: $1e $8c
    ld a, d                                       ; $5ffa: $7a
    rst $38                                       ; $5ffb: $ff
    ld d, a                                       ; $5ffc: $57
    xor b                                         ; $5ffd: $a8
    jr c, @-$3c                                   ; $5ffe: $38 $c2

    dec c                                         ; $6000: $0d
    ldh a, [$3d]                                  ; $6001: $f0 $3d
    jp nz, $d8fe                                  ; $6003: $c2 $fe $d8

    ld h, c                                       ; $6006: $61
    cpl                                           ; $6007: $2f
    sub b                                         ; $6008: $90

Jump_02d_6009:
    ld sp, hl                                     ; $6009: $f9
    nop                                           ; $600a: $00
    adc d                                         ; $600b: $8a
    ld hl, $9f28                                  ; $600c: $21 $28 $9f
    rlca                                          ; $600f: $07
    ret c                                         ; $6010: $d8

    rlca                                          ; $6011: $07
    cp h                                          ; $6012: $bc
    ld b, e                                       ; $6013: $43
    ret z                                         ; $6014: $c8

    ld h, c                                       ; $6015: $61
    add hl, sp                                    ; $6016: $39
    and e                                         ; $6017: $a3
    ld [bc], a                                    ; $6018: $02
    rst $38                                       ; $6019: $ff
    db $fd                                        ; $601a: $fd
    ld bc, $0dfe                                  ; $601b: $01 $fe $0d
    ldh a, [rSC]                                  ; $601e: $f0 $02
    db $fd                                        ; $6020: $fd
    ld a, [hl+]                                   ; $6021: $2a
    rst $38                                       ; $6022: $ff
    ret nc                                        ; $6023: $d0

    dec hl                                        ; $6024: $2b
    sub $f5                                       ; $6025: $d6 $f5
    ld a, [bc]                                    ; $6027: $0a
    ld e, a                                       ; $6028: $5f
    add b                                         ; $6029: $80
    xor c                                         ; $602a: $a9
    rst $38                                       ; $602b: $ff
    ld [bc], a                                    ; $602c: $02
    ld a, a                                       ; $602d: $7f
    add b                                         ; $602e: $80
    db $10                                        ; $602f: $10
    rrca                                          ; $6030: $0f
    ldh [$1f], a                                  ; $6031: $e0 $1f
    add b                                         ; $6033: $80
    rst $38                                       ; $6034: $ff
    ld a, a                                       ; $6035: $7f
    ld d, a                                       ; $6036: $57
    xor d                                         ; $6037: $aa
    push af                                       ; $6038: $f5
    ld a, [bc]                                    ; $6039: $0a
    sbc a                                         ; $603a: $9f
    jr nz, jr_02d_5ff6                            ; $603b: $20 $b9

    rst $30                                       ; $603d: $f7
    ld [bc], a                                    ; $603e: $02
    ld h, a                                       ; $603f: $67
    sbc b                                         ; $6040: $98
    rrca                                          ; $6041: $0f
    and e                                         ; $6042: $a3
    ld c, d                                       ; $6043: $4a
    or l                                          ; $6044: $b5
    db $f4                                        ; $6045: $f4
    dec bc                                        ; $6046: $0b
    rst $38                                       ; $6047: $ff
    sbc l                                         ; $6048: $9d
    ld [hl+], a                                   ; $6049: $22
    cp d                                          ; $604a: $ba
    rlca                                          ; $604b: $07
    ld a, e                                       ; $604c: $7b
    add b                                         ; $604d: $80
    inc c                                         ; $604e: $0c
    di                                            ; $604f: $f3
    ld d, a                                       ; $6050: $57
    rlca                                          ; $6051: $07
    ld hl, sp+$01                                 ; $6052: $f8 $01
    dec b                                         ; $6054: $05
    ret nz                                        ; $6055: $c0

    add b                                         ; $6056: $80
    sbc [hl]                                      ; $6057: $9e
    nop                                           ; $6058: $00
    and b                                         ; $6059: $a0
    sbc d                                         ; $605a: $9a
    nop                                           ; $605b: $00
    ei                                            ; $605c: $fb
    ld l, b                                       ; $605d: $68
    rst $38                                       ; $605e: $ff
    sub b                                         ; $605f: $90
    pop bc                                        ; $6060: $c1
    rla                                           ; $6061: $17
    add sp, -$2f                                  ; $6062: $e8 $d1
    nop                                           ; $6064: $00
    ld l, $39                                     ; $6065: $2e $39
    pop de                                        ; $6067: $d1
    add b                                         ; $6068: $80
    pop hl                                        ; $6069: $e1
    ret nz                                        ; $606a: $c0

    db $e3                                        ; $606b: $e3
    or b                                          ; $606c: $b0
    rrca                                          ; $606d: $0f
    add $90                                       ; $606e: $c6 $90
    call nz, $e3d0                                ; $6070: $c4 $d0 $e3
    rst $38                                       ; $6073: $ff
    dec a                                         ; $6074: $3d
    ret nz                                        ; $6075: $c0

    ld e, a                                       ; $6076: $5f
    and b                                         ; $6077: $a0
    inc [hl]                                      ; $6078: $34
    ret                                           ; $6079: $c9


    ld e, d                                       ; $607a: $5a
    and c                                         ; $607b: $a1
    push af                                       ; $607c: $f5
    ld a, l                                       ; $607d: $7d
    sub b                                         ; $607e: $90
    ret nz                                        ; $607f: $c0

    ld c, h                                       ; $6080: $4c
    sub b                                         ; $6081: $90
    ret nz                                        ; $6082: $c0

    ld d, l                                       ; $6083: $55
    cp a                                          ; $6084: $bf
    adc [hl]                                      ; $6085: $8e
    ld a, a                                       ; $6086: $7f
    cp $90                                        ; $6087: $fe $90
    jp z, Jump_02d_5ac8                           ; $6089: $ca $c8 $5a

    and c                                         ; $608c: $a1
    inc a                                         ; $608d: $3c
    jp $ae53                                      ; $608e: $c3 $53 $ae


    sbc a                                         ; $6091: $9f
    ld [hl], a                                    ; $6092: $77
    call $bf42                                    ; $6093: $cd $42 $bf
    dec d                                         ; $6096: $15
    ld l, d                                       ; $6097: $6a
    ld h, b                                       ; $6098: $60
    ld l, e                                       ; $6099: $6b
    add c                                         ; $609a: $81
    ret nz                                        ; $609b: $c0

    rst $38                                       ; $609c: $ff
    ccf                                           ; $609d: $3f
    ld b, b                                       ; $609e: $40
    cp a                                          ; $609f: $bf
    ld b, b                                       ; $60a0: $40
    rst $38                                       ; $60a1: $ff
    or b                                          ; $60a2: $b0
    rst $28                                       ; $60a3: $ef
    call z, $f3ef                                 ; $60a4: $cc $ef $f3
    and h                                         ; $60a7: $a4
    ei                                            ; $60a8: $fb
    dec d                                         ; $60a9: $15
    cp h                                          ; $60aa: $bc
    ret nz                                        ; $60ab: $c0

    dec b                                         ; $60ac: $05
    rst $38                                       ; $60ad: $ff
    ld [bc], a                                    ; $60ae: $02
    ld [$a629], a                                 ; $60af: $ea $29 $a6
    ld d, e                                       ; $60b2: $53
    or b                                          ; $60b3: $b0
    ret nz                                        ; $60b4: $c0

    ld [hl], l                                    ; $60b5: $75

jr_02d_60b6:
    or b                                          ; $60b6: $b0
    ret z                                         ; $60b7: $c8

    ld [hl], a                                    ; $60b8: $77
    adc b                                         ; $60b9: $88
    call z, $b0ea                                 ; $60ba: $cc $ea $b0
    jp z, $b037                                   ; $60bd: $ca $37 $b0

    call z, $b04e                                 ; $60c0: $cc $4e $b0
    adc $ae                                       ; $60c3: $ce $ae

jr_02d_60c5:
    ld sp, hl                                     ; $60c5: $f9
    ld a, c                                       ; $60c6: $79
    or $b0                                        ; $60c7: $f6 $b0
    ret z                                         ; $60c9: $c8

    cp a                                          ; $60ca: $bf
    ld e, a                                       ; $60cb: $5f
    or b                                          ; $60cc: $b0
    jp $e21d                                      ; $60cd: $c3 $1d $e2


    ld [$fef7], sp                                ; $60d0: $08 $f7 $fe
    jr nz, jr_02d_60b6                            ; $60d3: $20 $e1

    dec l                                         ; $60d5: $2d
    ret nc                                        ; $60d6: $d0

    sbc d                                         ; $60d7: $9a
    ld h, c                                       ; $60d8: $61
    ld a, [hl]                                    ; $60d9: $7e
    add c                                         ; $60da: $81
    add sp, -$12                                  ; $60db: $e8 $ee
    jr nc, jr_02d_60c5                            ; $60dd: $30 $e6

    ld h, c                                       ; $60df: $61
    ld e, $95                                     ; $60e0: $1e $95
    or b                                          ; $60e2: $b0
    ret nz                                        ; $60e3: $c0

    add hl, sp                                    ; $60e4: $39
    jp nz, $fd0f                                  ; $60e5: $c2 $0f $fd

    ldh a, [rIE]                                  ; $60e8: $f0 $ff
    ld h, e                                       ; $60ea: $63
    ld d, a                                       ; $60eb: $57
    xor b                                         ; $60ec: $a8
    ei                                            ; $60ed: $fb
    nop                                           ; $60ee: $00
    sbc [hl]                                      ; $60ef: $9e
    ld hl, $a8ef                                  ; $60f0: $21 $ef $a8
    rlca                                          ; $60f3: $07
    ld [hl], b                                    ; $60f4: $70
    adc a                                         ; $60f5: $8f
    rst $28                                       ; $60f6: $ef
    ld h, e                                       ; $60f7: $63
    inc c                                         ; $60f8: $0c
    rst $30                                       ; $60f9: $f7
    reti                                          ; $60fa: $d9


    rst $38                                       ; $60fb: $ff
    ld l, a                                       ; $60fc: $6f
    ld [$63ff], sp                                ; $60fd: $08 $ff $63
    cp l                                          ; $6100: $bd
    sub $6b                                       ; $6101: $d6 $6b
    ld l, d                                       ; $6103: $6a
    rst $38                                       ; $6104: $ff
    rst $18                                       ; $6105: $df

Call_02d_6106:
    jr nc, @-$1f                                  ; $6106: $30 $df

    ld d, e                                       ; $6108: $53

jr_02d_6109:
    db $fd                                        ; $6109: $fd
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    ld e, l                                       ; $610c: $5d
    rst $38                                       ; $610d: $ff
    rst $20                                       ; $610e: $e7
    ld [$40ff], sp                                ; $610f: $08 $ff $40
    cp a                                          ; $6112: $bf
    ld l, h                                       ; $6113: $6c
    or a                                          ; $6114: $b7
    ld c, b                                       ; $6115: $48
    ld a, [hl]                                    ; $6116: $7e
    call c, Call_02d_40c0                         ; $6117: $dc $c0 $40
    rst $38                                       ; $611a: $ff
    inc b                                         ; $611b: $04
    ei                                            ; $611c: $fb
    ld e, d                                       ; $611d: $5a
    and l                                         ; $611e: $a5
    dec sp                                        ; $611f: $3b
    add b                                         ; $6120: $80
    cp $41                                        ; $6121: $fe $41
    nop                                           ; $6123: $00
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    ld e, d                                       ; $6126: $5a

jr_02d_6127:
    and l                                         ; $6127: $a5
    jr nz, jr_02d_6109                            ; $6128: $20 $df

    inc h                                         ; $612a: $24
    rst $38                                       ; $612b: $ff
    rst $20                                       ; $612c: $e7
    ld h, [hl]                                    ; $612d: $66

jr_02d_612e:
    and l                                         ; $612e: $a5
    dec h                                         ; $612f: $25
    and $66                                       ; $6130: $e6 $66
    and l                                         ; $6132: $a5
    ld h, [hl]                                    ; $6133: $66
    cp a                                          ; $6134: $bf
    and l                                         ; $6135: $a5
    and h                                         ; $6136: $a4
    ld h, a                                       ; $6137: $67
    ld h, [hl]                                    ; $6138: $66
    and l                                         ; $6139: $a5
    inc h                                         ; $613a: $24
    ld [hl], b                                    ; $613b: $70
    ret nz                                        ; $613c: $c0

    ld bc, $feff                                  ; $613d: $01 $ff $fe
    dec b                                         ; $6140: $05
    ei                                            ; $6141: $fb
    ld e, $e6                                     ; $6142: $1e $e6
    jr jr_02d_612e                                ; $6144: $18 $e8

    jr nc, jr_02d_6127                            ; $6146: $30 $df

    ret nc                                        ; $6148: $d0

    ld de, $63f3                                  ; $6149: $11 $f3 $63
    and d                                         ; $614c: $a2
    cp d                                          ; $614d: $ba
    ld h, c                                       ; $614e: $61
    ld d, l                                       ; $614f: $55
    nop                                           ; $6150: $00
    ld e, a                                       ; $6151: $5f
    xor e                                         ; $6152: $ab
    nop                                           ; $6153: $00
    ld e, l                                       ; $6154: $5d
    nop                                           ; $6155: $00
    ld [$60ae], a                                 ; $6156: $ea $ae $60
    xor [hl]                                      ; $6159: $ae
    xor d                                         ; $615a: $aa
    ld h, b                                       ; $615b: $60
    rst $18                                       ; $615c: $df
    adc d                                         ; $615d: $8a
    nop                                           ; $615e: $00
    ld d, h                                       ; $615f: $54
    nop                                           ; $6160: $00
    xor d                                         ; $6161: $aa
    ldh a, [$e0]                                  ; $6162: $f0 $e0
    xor d                                         ; $6164: $aa
    nop                                           ; $6165: $00
    rst $18                                       ; $6166: $df
    dec d                                         ; $6167: $15

jr_02d_6168:
    nop                                           ; $6168: $00
    xor b                                         ; $6169: $a8
    nop                                           ; $616a: $00
    ld d, c                                       ; $616b: $51
    sbc [hl]                                      ; $616c: $9e
    add b                                         ; $616d: $80
    ld [hl+], a                                   ; $616e: $22
    nop                                           ; $616f: $00
    ld a, a                                       ; $6170: $7f
    sub h                                         ; $6171: $94
    nop                                           ; $6172: $00
    add hl, hl                                    ; $6173: $29
    nop                                           ; $6174: $00
    ld b, h                                       ; $6175: $44
    nop                                           ; $6176: $00
    db $10                                        ; $6177: $10
    db $e4                                        ; $6178: $e4
    ldh [$75], a                                  ; $6179: $e0 $75
    nop                                           ; $617b: $00
    ld [hl], e                                    ; $617c: $73
    nop                                           ; $617d: $00
    ld bc, $0094                                  ; $617e: $01 $94 $00
    jr nz, jr_02d_6183                            ; $6181: $20 $00

jr_02d_6183:
    add b                                         ; $6183: $80
    adc [hl]                                      ; $6184: $8e
    nop                                           ; $6185: $00
    xor $ff                                       ; $6186: $ee $ff
    ldh a, [rNR23]                                ; $6188: $f0 $18
    inc a                                         ; $618a: $3c
    ld a, [hl]                                    ; $618b: $7e
    rst $38                                       ; $618c: $ff
    ldh [rIE], a                                  ; $618d: $e0 $ff
    ld [hl], b                                    ; $618f: $70
    rst $38                                       ; $6190: $ff
    rst $28                                       ; $6191: $ef
    ld a, b                                       ; $6192: $78
    db $fc                                        ; $6193: $fc
    inc a                                         ; $6194: $3c
    ld a, [hl]                                    ; $6195: $7e
    rlca                                          ; $6196: $07
    add b                                         ; $6197: $80
    ld [$3e1c], sp                                ; $6198: $08 $1c $3e
    rst $38                                       ; $619b: $ff
    ld a, $3e                                     ; $619c: $3e $3e
    ld [hl], $7f                                  ; $619e: $36 $7f
    ld h, $7f                                     ; $61a0: $26 $7f
    inc b                                         ; $61a2: $04
    ld l, $ef                                     ; $61a3: $2e $ef
    nop                                           ; $61a5: $00
    inc c                                         ; $61a6: $0c
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    and d                                         ; $61a9: $a2
    ret nz                                        ; $61aa: $c0

    cp $2b                                        ; $61ab: $fe $2b
    db $fc                                        ; $61ad: $fc
    rst $38                                       ; $61ae: $ff
    dec c                                         ; $61af: $0d
    ld a, [$fd32]                                 ; $61b0: $fa $32 $fd
    ld d, l                                       ; $61b3: $55
    ld [$d7a8], a                                 ; $61b4: $ea $a8 $d7
    rst $38                                       ; $61b7: $ff
    db $f4                                        ; $61b8: $f4
    adc e                                         ; $61b9: $8b
    rst $20                                       ; $61ba: $e7
    rst $38                                       ; $61bb: $ff
    jp c, $f53d                                   ; $61bc: $da $3d $f5

    ld a, [bc]                                    ; $61bf: $0a
    rst $18                                       ; $61c0: $df
    xor d                                         ; $61c1: $aa
    ld d, l                                       ; $61c2: $55
    ld b, c                                       ; $61c3: $41
    cp [hl]                                       ; $61c4: $be
    inc d                                         ; $61c5: $14
    jr nz, jr_02d_6168                            ; $61c6: $20 $a0

    ld [hl], l                                    ; $61c8: $75
    rst $38                                       ; $61c9: $ff
    rst $38                                       ; $61ca: $ff
    sub l                                         ; $61cb: $95
    db $eb                                        ; $61cc: $eb
    dec bc                                        ; $61cd: $0b
    push af                                       ; $61ce: $f5
    and l                                         ; $61cf: $a5
    ei                                            ; $61d0: $fb
    ld c, d                                       ; $61d1: $4a
    rst $30                                       ; $61d2: $f7
    rst $38                                       ; $61d3: $ff
    and [hl]                                      ; $61d4: $a6
    ei                                            ; $61d5: $fb
    call $97f3                                    ; $61d6: $cd $f3 $97
    jp hl                                         ; $61d9: $e9


    ld c, a                                       ; $61da: $4f
    pop af                                        ; $61db: $f1
    cp $40                                        ; $61dc: $fe $40
    ld h, b                                       ; $61de: $60
    rst $38                                       ; $61df: $ff
    ld a, [c]                                     ; $61e0: $f2
    db $fd                                        ; $61e1: $fd
    xor c                                         ; $61e2: $a9
    cp $52                                        ; $61e3: $fe $52
    db $fd                                        ; $61e5: $fd
    rst $38                                       ; $61e6: $ff
    add c                                         ; $61e7: $81
    cp $2a                                        ; $61e8: $fe $2a
    push de                                       ; $61ea: $d5
    sub l                                         ; $61eb: $95
    db $eb                                        ; $61ec: $eb
    rst $18                                       ; $61ed: $df
    sbc c                                         ; $61ee: $99
    rst $38                                       ; $61ef: $ff

jr_02d_61f0:
    sbc a                                         ; $61f0: $9f
    ld c, l                                       ; $61f1: $4d
    daa                                           ; $61f2: $27
    rla                                           ; $61f3: $17
    and e                                         ; $61f4: $a3
    di                                            ; $61f5: $f3
    db $db                                        ; $61f6: $db
    pop hl                                        ; $61f7: $e1
    rst $38                                       ; $61f8: $ff
    xor $f1                                       ; $61f9: $ee $f1
    or h                                          ; $61fb: $b4

Call_02d_61fc:
    ei                                            ; $61fc: $fb
    ld b, c                                       ; $61fd: $41
    rst $38                                       ; $61fe: $ff
    rst $18                                       ; $61ff: $df
    sbc a                                         ; $6200: $9f
    rst $38                                       ; $6201: $ff
    sbc h                                         ; $6202: $9c
    ld c, a                                       ; $6203: $4f
    ld h, $17                                     ; $6204: $26 $17
    and d                                         ; $6206: $a2
    di                                            ; $6207: $f3
    jp c, $ffe1                                   ; $6208: $da $e1 $ff

    xor $71                                       ; $620b: $ee $71
    db $f4                                        ; $620d: $f4
    dec sp                                        ; $620e: $3b
    ld sp, hl                                     ; $620f: $f9
    rst $38                                       ; $6210: $ff
    rst $20                                       ; $6211: $e7
    jr @+$01                                      ; $6212: $18 $ff

    jp $e724                                      ; $6214: $c3 $24 $e7


    inc h                                         ; $6217: $24
    rst $38                                       ; $6218: $ff
    inc a                                         ; $6219: $3c
    db $db                                        ; $621a: $db
    inc a                                         ; $621b: $3c
    ei                                            ; $621c: $fb
    rst $20                                       ; $621d: $e7
    jr jr_02d_61f0                                ; $621e: $18 $d0

    ld h, c                                       ; $6220: $61
    ld h, a                                       ; $6221: $67
    sbc d                                         ; $6222: $9a
    call nz, $0b8a                                ; $6223: $c4 $8a $0b
    rst $38                                       ; $6226: $ff
    ret nz                                        ; $6227: $c0

    ld b, d                                       ; $6228: $42
    and b                                         ; $6229: $a0
    db $10                                        ; $622a: $10
    ret nz                                        ; $622b: $c0

    jp hl                                         ; $622c: $e9


    add b                                         ; $622d: $80
    ld h, b                                       ; $622e: $60
    rst $38                                       ; $622f: $ff
    sub c                                         ; $6230: $91
    adc e                                         ; $6231: $8b
    ld h, b                                       ; $6232: $60
    ld d, $a9                                     ; $6233: $16 $a9
    pop hl                                        ; $6235: $e1

jr_02d_6236:
    dec bc                                        ; $6236: $0b
    adc d                                         ; $6237: $8a
    rst $38                                       ; $6238: $ff
    daa                                           ; $6239: $27
    daa                                           ; $623a: $27
    rrca                                          ; $623b: $0f
    xor l                                         ; $623c: $ad
    rra                                           ; $623d: $1f
    sub $3f                                       ; $623e: $d6 $3f
    ld a, l                                       ; $6240: $7d
    db $fc                                        ; $6241: $fc
    halt                                          ; $6242: $76
    add b                                         ; $6243: $80
    jr nz, jr_02d_626d                            ; $6244: $20 $27

    inc h                                         ; $6246: $24
    db $db                                        ; $6247: $db
    inc c                                         ; $6248: $0c
    rst $30                                       ; $6249: $f7
    ld [hl], $cf                                  ; $624a: $36 $cf
    rst $38                                       ; $624c: $ff
    jr jr_02d_6236                                ; $624d: $18 $e7

    sub $0f                                       ; $624f: $d6 $0f
    ld e, c                                       ; $6251: $59
    and [hl]                                      ; $6252: $a6
    ld b, d                                       ; $6253: $42
    rrca                                          ; $6254: $0f
    rst $38                                       ; $6255: $ff
    ei                                            ; $6256: $fb
    nop                                           ; $6257: $00
    inc e                                         ; $6258: $1c
    inc bc                                        ; $6259: $03
    cp a                                          ; $625a: $bf

jr_02d_625b:
    nop                                           ; $625b: $00
    sbc c                                         ; $625c: $99
    ld h, [hl]                                    ; $625d: $66
    ld a, $d0                                     ; $625e: $3e $d0
    ld h, c                                       ; $6260: $61
    dec a                                         ; $6261: $3d
    jp nz, $e718                                  ; $6262: $c2 $18 $e7

    add hl, de                                    ; $6265: $19
    ld hl, sp+$04                                 ; $6266: $f8 $04
    db $10                                        ; $6268: $10
    add c                                         ; $6269: $81
    rst $00                                       ; $626a: $c7
    ld d, [hl]                                    ; $626b: $56
    xor c                                         ; $626c: $a9

jr_02d_626d:
    ld [hl+], a                                   ; $626d: $22

Jump_02d_626e:
    ld d, [hl]                                    ; $626e: $56
    ldh [$90], a                                  ; $626f: $e0 $90

jr_02d_6271:
    add e                                         ; $6271: $83
    add b                                         ; $6272: $80

jr_02d_6273:
    and e                                         ; $6273: $a3
    ld de, $ffef                                  ; $6274: $11 $ef $ff
    rra                                           ; $6277: $1f
    ldh [$3d], a                                  ; $6278: $e0 $3d
    rst $00                                       ; $627a: $c7
    inc sp                                        ; $627b: $33
    rst $08                                       ; $627c: $cf
    dec l                                         ; $627d: $2d
    rst $10                                       ; $627e: $d7
    cp $e0                                        ; $627f: $fe $e0
    ld h, l                                       ; $6281: $65
    jr z, jr_02d_625b                             ; $6282: $28 $d7

    ld b, h                                       ; $6284: $44
    ei                                            ; $6285: $fb
    or h                                          ; $6286: $b4
    rst $38                                       ; $6287: $ff
    ret nc                                        ; $6288: $d0

    cp $62                                        ; $6289: $fe $62
    nop                                           ; $628b: $00
    rst $10                                       ; $628c: $d7

jr_02d_628d:
    ld d, [hl]                                    ; $628d: $56
    rst $20                                       ; $628e: $e7
    and l                                         ; $628f: $a5
    or a                                          ; $6290: $b7
    db $ed                                        ; $6291: $ed
    db $fd                                        ; $6292: $fd
    ld a, a                                       ; $6293: $7f

jr_02d_6294:
    rst $28                                       ; $6294: $ef
    db $eb                                        ; $6295: $eb
    cp a                                          ; $6296: $bf
    rst $38                                       ; $6297: $ff
    ld a, [hl-]                                   ; $6298: $3a
    rst $28                                       ; $6299: $ef
    jr c, jr_02d_62ad                             ; $629a: $38 $11

    jr nz, jr_02d_628d                            ; $629c: $20 $ef

    jr z, @+$01                                   ; $629e: $28 $ff

    jr c, jr_02d_6271                             ; $62a0: $38 $cf

    db $fc                                        ; $62a2: $fc
    pop hl                                        ; $62a3: $e1
    ld l, $ef                                     ; $62a4: $2e $ef
    ccf                                           ; $62a6: $3f
    cp a                                          ; $62a7: $bf
    rst $38                                       ; $62a8: $ff
    ld e, $38                                     ; $62a9: $1e $38
    rst $38                                       ; $62ab: $ff
    ld d, [hl]                                    ; $62ac: $56

jr_02d_62ad:
    rst $10                                       ; $62ad: $d7
    ldh [$e3], a                                  ; $62ae: $e0 $e3
    xor e                                         ; $62b0: $ab
    ld e, e                                       ; $62b1: $5b

jr_02d_62b2:
    rst $38                                       ; $62b2: $ff
    ld a, [hl-]                                   ; $62b3: $3a
    push hl                                       ; $62b4: $e5
    pop hl                                        ; $62b5: $e1
    rst $38                                       ; $62b6: $ff
    jr c, jr_02d_6294                             ; $62b7: $38 $db

    ldh [$28], a                                  ; $62b9: $e0 $28
    rst $10                                       ; $62bb: $d7
    ldh [$fe], a                                  ; $62bc: $e0 $fe
    pop hl                                        ; $62be: $e1
    ld [c], a                                     ; $62bf: $e2
    rst $38                                       ; $62c0: $ff
    rst $18                                       ; $62c1: $df
    jr c, jr_02d_6273                             ; $62c2: $38 $af

    ld e, [hl]                                    ; $62c4: $5e
    bit 4, [hl]                                   ; $62c5: $cb $66
    rst $38                                       ; $62c7: $ff
    ld e, a                                       ; $62c8: $5f
    and a                                         ; $62c9: $a7
    and c                                         ; $62ca: $a1
    sbc a                                         ; $62cb: $9f
    xor e                                         ; $62cc: $ab
    rst $10                                       ; $62cd: $d7
    rst $38                                       ; $62ce: $ff
    ld a, [hl]                                    ; $62cf: $7e
    rst $38                                       ; $62d0: $ff
    ret c                                         ; $62d1: $d8

    cpl                                           ; $62d2: $2f
    jr c, @+$01                                   ; $62d3: $38 $ff

    ld l, [hl]                                    ; $62d5: $6e
    rst $18                                       ; $62d6: $df
    ld a, [bc]                                    ; $62d7: $0a
    rst $20                                       ; $62d8: $e7
    db $fd                                        ; $62d9: $fd
    rst $18                                       ; $62da: $df
    ldh a, [$e2]                                  ; $62db: $f0 $e2
    ld a, [hl]                                    ; $62dd: $7e
    rst $38                                       ; $62de: $ff
    ccf                                           ; $62df: $3f
    rst $28                                       ; $62e0: $ef
    jr nz, jr_02d_62b2                            ; $62e1: $20 $cf

    rst $38                                       ; $62e3: $ff
    or [hl]                                       ; $62e4: $b6
    dec hl                                        ; $62e5: $2b
    db $ed                                        ; $62e6: $ed
    cp d                                          ; $62e7: $ba
    dec sp                                        ; $62e8: $3b
    rst $18                                       ; $62e9: $df
    halt                                          ; $62ea: $76
    rst $18                                       ; $62eb: $df
    rst $18                                       ; $62ec: $df
    ld d, h                                       ; $62ed: $54
    rst $38                                       ; $62ee: $ff
    ld e, l                                       ; $62ef: $5d
    rst $38                                       ; $62f0: $ff
    ld a, [hl+]                                   ; $62f1: $2a
    ld [hl], b                                    ; $62f2: $70
    ldh [$de], a                                  ; $62f3: $e0 $de
    ld a, a                                       ; $62f5: $7f
    rst $10                                       ; $62f6: $d7
    add hl, hl                                    ; $62f7: $29
    cp $55                                        ; $62f8: $fe $55
    db $ec                                        ; $62fa: $ec
    nop                                           ; $62fb: $00
    ld [hl], l                                    ; $62fc: $75
    add $00                                       ; $62fd: $c6 $00
    ret nz                                        ; $62ff: $c0

    rst $38                                       ; $6300: $ff
    ld c, e                                       ; $6301: $4b
    sbc b                                         ; $6302: $98
    ld h, a                                       ; $6303: $67
    ld d, b                                       ; $6304: $50
    ld h, c                                       ; $6305: $61

Call_02d_6306:
    ld e, b                                       ; $6306: $58
    ld b, b                                       ; $6307: $40
    ld b, $00                                     ; $6308: $06 $00
    ld l, e                                       ; $630a: $6b
    dec hl                                        ; $630b: $2b
    ld b, b                                       ; $630c: $40
    ld l, b                                       ; $630d: $68
    rst $38                                       ; $630e: $ff
    inc a                                         ; $630f: $3c
    inc bc                                        ; $6310: $03
    add h                                         ; $6311: $84
    ld [hl], e                                    ; $6312: $73
    or h                                          ; $6313: $b4
    db $eb                                        ; $6314: $eb
    inc hl                                        ; $6315: $23
    call z, $b0fe                                 ; $6316: $cc $fe $b0
    pop hl                                        ; $6319: $e1
    ld a, [hl-]                                   ; $631a: $3a
    rst $18                                       ; $631b: $df
    rst $30                                       ; $631c: $f7
    ld e, [hl]                                    ; $631d: $5e
    push de                                       ; $631e: $d5
    ld a, [hl]                                    ; $631f: $7e
    db $dd                                        ; $6320: $dd
    rst $30                                       ; $6321: $f7
    ld a, a                                       ; $6322: $7f
    ei                                            ; $6323: $fb
    ld l, $e0                                     ; $6324: $2e $e0
    push bc                                       ; $6326: $c5
    dec de                                        ; $6327: $1b
    rst $20                                       ; $6328: $e7
    ccf                                           ; $6329: $3f
    call nz, Call_000_3fff                        ; $632a: $c4 $ff $3f
    ret z                                         ; $632d: $c8

    rra                                           ; $632e: $1f
    add sp, -$01                                  ; $632f: $e8 $ff
    rst $38                                       ; $6331: $ff
    ld a, [$fdff]                                 ; $6332: $fa $ff $fd
    push de                                       ; $6335: $d5
    ld e, $20                                     ; $6336: $1e $20
    rst $10                                       ; $6338: $d7
    rst $38                                       ; $6339: $ff
    xor a                                         ; $633a: $af
    db $fc                                        ; $633b: $fc
    rst $18                                       ; $633c: $df
    ld hl, sp-$15                                 ; $633d: $f8 $eb
    xor a                                         ; $633f: $af
    ld hl, sp-$4d                                 ; $6340: $f8 $b3
    ld b, b                                       ; $6342: $40
    inc a                                         ; $6343: $3c
    ld d, $61                                     ; $6344: $16 $61
    ccf                                           ; $6346: $3f
    jp $df3e                                      ; $6347: $c3 $3e $df


    rst $00                                       ; $634a: $c7
    db $dd                                        ; $634b: $dd
    cpl                                           ; $634c: $2f
    jp c, $f02f                                   ; $634d: $da $2f $f0

    rst $20                                       ; $6350: $e7
    inc a                                         ; $6351: $3c
    rst $00                                       ; $6352: $c7
    rst $38                                       ; $6353: $ff
    ret c                                         ; $6354: $d8

    cpl                                           ; $6355: $2f
    ret c                                         ; $6356: $d8

    cpl                                           ; $6357: $2f
    rst $28                                       ; $6358: $ef
    ldh a, [$b8]                                  ; $6359: $f0 $b8
    rst $00                                       ; $635b: $c7
    rst $38                                       ; $635c: $ff
    ld d, $f9                                     ; $635d: $16 $f9
    db $fc                                        ; $635f: $fc
    db $e3                                        ; $6360: $e3
    db $db                                        ; $6361: $db
    rst $20                                       ; $6362: $e7
    di                                            ; $6363: $f3
    adc $ff                                       ; $6364: $ce $ff
    and $de                                       ; $6366: $e6 $de
    adc a                                         ; $6368: $8f
    rst $38                                       ; $6369: $ff
    ld a, a                                       ; $636a: $7f
    rst $38                                       ; $636b: $ff
    ld d, e                                       ; $636c: $53
    rst $28                                       ; $636d: $ef
    rst $38                                       ; $636e: $ff
    sbc c                                         ; $636f: $99
    rst $20                                       ; $6370: $e7
    ld sp, hl                                     ; $6371: $f9
    rst $38                                       ; $6372: $ff
    xor [hl]                                      ; $6373: $ae
    rst $18                                       ; $6374: $df
    ld e, a                                       ; $6375: $5f
    ld h, a                                       ; $6376: $67
    rst $38                                       ; $6377: $ff
    ld c, e                                       ; $6378: $4b
    ld [hl], a                                    ; $6379: $77
    rst $20                                       ; $637a: $e7
    ei                                            ; $637b: $fb
    sbc a                                         ; $637c: $9f
    ld sp, hl                                     ; $637d: $f9
    cp l                                          ; $637e: $bd
    ld sp, hl                                     ; $637f: $f9
    rst $30                                       ; $6380: $f7
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    cp $ff                                        ; $6383: $fe $ff
    ldh [rIE], a                                  ; $6385: $e0 $ff
    cp $fd                                        ; $6387: $fe $fd
    db $fd                                        ; $6389: $fd
    ld a, a                                       ; $638a: $7f
    rst $38                                       ; $638b: $ff
    cp $f1                                        ; $638c: $fe $f1
    rst $38                                       ; $638e: $ff
    sbc c                                         ; $638f: $99
    sbc a                                         ; $6390: $9f
    cp l                                          ; $6391: $bd
    sub c                                         ; $6392: $91
    nop                                           ; $6393: $00
    pop hl                                        ; $6394: $e1
    ld a, a                                       ; $6395: $7f
    rst $38                                       ; $6396: $ff
    ldh [$fa], a                                  ; $6397: $e0 $fa
    pop hl                                        ; $6399: $e1
    ld [$e4e3], a                                 ; $639a: $ea $e3 $e4
    db $e3                                        ; $639d: $e3
    ld hl, sp-$08                                 ; $639e: $f8 $f8
    cp $f9                                        ; $63a0: $fe $f9
    cp $ea                                        ; $63a2: $fe $ea
    db $e3                                        ; $63a4: $e3
    db $e4                                        ; $63a5: $e4
    db $e3                                        ; $63a6: $e3
    rra                                           ; $63a7: $1f
    rra                                           ; $63a8: $1f
    ld a, a                                       ; $63a9: $7f
    ld a, a                                       ; $63aa: $7f
    db $ec                                        ; $63ab: $ec
    rst $38                                       ; $63ac: $ff
    di                                            ; $63ad: $f3
    adc a                                         ; $63ae: $8f
    rst $38                                       ; $63af: $ff
    ld a, c                                       ; $63b0: $79
    rst $38                                       ; $63b1: $ff
    add sp, -$09                                  ; $63b2: $e8 $f7
    di                                            ; $63b4: $f3
    rst $18                                       ; $63b5: $df
    rst $28                                       ; $63b6: $ef
    add $fe                                       ; $63b7: $c6 $fe
    sbc $fe                                       ; $63b9: $de $fe
    ld e, b                                       ; $63bb: $58
    ld bc, $ff67                                  ; $63bc: $01 $67 $ff
    rst $38                                       ; $63bf: $ff
    db $d3                                        ; $63c0: $d3
    rst $28                                       ; $63c1: $ef
    db $fd                                        ; $63c2: $fd

Call_02d_63c3:
    rst $38                                       ; $63c3: $ff
    rst $08                                       ; $63c4: $cf
    rst $38                                       ; $63c5: $ff
    ld h, a                                       ; $63c6: $67
    ld a, a                                       ; $63c7: $7f
    rst $38                                       ; $63c8: $ff
    rst $30                                       ; $63c9: $f7
    rst $38                                       ; $63ca: $ff
    ei                                            ; $63cb: $fb
    rst $38                                       ; $63cc: $ff
    db $fd                                        ; $63cd: $fd
    ld sp, hl                                     ; $63ce: $f9
    ei                                            ; $63cf: $fb
    ei                                            ; $63d0: $fb
    jr c, jr_02d_640f                             ; $63d1: $38 $3c

    inc bc                                        ; $63d3: $03
    sbc [hl]                                      ; $63d4: $9e
    ldh [$98], a                                  ; $63d5: $e0 $98
    ldh [$fb], a                                  ; $63d7: $e0 $fb
    rst $38                                       ; $63d9: $ff
    cp a                                          ; $63da: $bf
    inc sp                                        ; $63db: $33
    ld bc, $0640                                  ; $63dc: $01 $40 $06
    ld h, h                                       ; $63df: $64
    ld [$e4e3], a                                 ; $63e0: $ea $e3 $e4
    db $e4                                        ; $63e3: $e4
    ei                                            ; $63e4: $fb
    call c, Call_000_22e1                         ; $63e5: $dc $e1 $22
    rlca                                          ; $63e8: $07
    rst $18                                       ; $63e9: $df
    rst $18                                       ; $63ea: $df
    or d                                          ; $63eb: $b2
    nop                                           ; $63ec: $00
    rst $38                                       ; $63ed: $ff
    db $fc                                        ; $63ee: $fc
    db $fc                                        ; $63ef: $fc
    ld hl, sp-$04                                 ; $63f0: $f8 $fc
    ld hl, sp-$0c                                 ; $63f2: $f8 $f4
    ldh a, [$f8]                                  ; $63f4: $f0 $f8
    cp [hl]                                       ; $63f6: $be
    cp $e4                                        ; $63f7: $fe $e4
    rst $18                                       ; $63f9: $df
    rra                                           ; $63fa: $1f
    rrca                                          ; $63fb: $0f
    rrca                                          ; $63fc: $0f
    rra                                           ; $63fd: $1f
    rst $38                                       ; $63fe: $ff
    ld [c], a                                     ; $63ff: $e2
    dec e                                         ; $6400: $1d
    rra                                           ; $6401: $1f
    inc e                                         ; $6402: $1c
    ld e, $1e                                     ; $6403: $1e $1e
    inc e                                         ; $6405: $1c
    inc e                                         ; $6406: $1c
    or l                                          ; $6407: $b5
    rst $20                                       ; $6408: $e7
    ld c, [hl]                                    ; $6409: $4e
    pop hl                                        ; $640a: $e1
    ld c, h                                       ; $640b: $4c
    pop hl                                        ; $640c: $e1
    db $fc                                        ; $640d: $fc
    sub l                                         ; $640e: $95

jr_02d_640f:
    pop hl                                        ; $640f: $e1
    ld c, [hl]                                    ; $6410: $4e
    ld [c], a                                     ; $6411: $e2
    db $fc                                        ; $6412: $fc
    cp $fe                                        ; $6413: $fe $fe
    db $ed                                        ; $6415: $ed
    pop hl                                        ; $6416: $e1
    ld hl, sp-$41                                 ; $6417: $f8 $bf
    ldh a, [rBCPS]                                ; $6419: $f0 $68
    nop                                           ; $641b: $00
    sbc b                                         ; $641c: $98
    db $10                                        ; $641d: $10
    ld [$2058], sp                                ; $641e: $08 $58 $20
    ld [$00ff], sp                                ; $6421: $08 $ff $00
    jr nc, jr_02d_6446                            ; $6424: $30 $20

    stop                                          ; $6426: $10 $00
    ld e, $1e                                     ; $6428: $1e $1e
    dec a                                         ; $642a: $3d
    rst $38                                       ; $642b: $ff
    dec a                                         ; $642c: $3d
    ld [hl], $06                                  ; $642d: $36 $06
    ld b, e                                       ; $642f: $43
    inc bc                                        ; $6430: $03
    add $86                                       ; $6431: $c6 $86
    ld b, a                                       ; $6433: $47
    cp a                                          ; $6434: $bf
    rlca                                          ; $6435: $07
    ld b, a                                       ; $6436: $47
    rlca                                          ; $6437: $07
    rst $00                                       ; $6438: $c7
    rlca                                          ; $6439: $07
    ccf                                           ; $643a: $3f
    rst $38                                       ; $643b: $ff
    db $e4                                        ; $643c: $e4
    cp a                                          ; $643d: $bf
    rst $38                                       ; $643e: $ff
    cp a                                          ; $643f: $bf
    rra                                           ; $6440: $1f
    rra                                           ; $6441: $1f
    sbc a                                         ; $6442: $9f
    sbc a                                         ; $6443: $9f
    ld e, a                                       ; $6444: $5f
    ld e, a                                       ; $6445: $5f

jr_02d_6446:
    ld a, [c]                                     ; $6446: $f2
    rst $38                                       ; $6447: $ff
    ret nz                                        ; $6448: $c0

    pop hl                                        ; $6449: $e1
    pop bc                                        ; $644a: $c1
    pop hl                                        ; $644b: $e1
    pop bc                                        ; $644c: $c1
    db $e3                                        ; $644d: $e3
    jp $ff83                                      ; $644e: $c3 $83 $ff


    add b                                         ; $6451: $80
    db $e4                                        ; $6452: $e4
    ret nz                                        ; $6453: $c0

    adc h                                         ; $6454: $8c
    adc b                                         ; $6455: $88
    sub b                                         ; $6456: $90
    sub b                                         ; $6457: $90
    or b                                          ; $6458: $b0
    rst $38                                       ; $6459: $ff
    and b                                         ; $645a: $a0
    or c                                          ; $645b: $b1
    and c                                         ; $645c: $a1
    ldh a, [$e0]                                  ; $645d: $f0 $e0
    pop hl                                        ; $645f: $e1
    pop hl                                        ; $6460: $e1
    ld [hl], d                                    ; $6461: $72
    rst $38                                       ; $6462: $ff
    ld h, d                                       ; $6463: $62
    pop bc                                        ; $6464: $c1
    pop bc                                        ; $6465: $c1
    ld [c], a                                     ; $6466: $e2
    ld [c], a                                     ; $6467: $e2
    push de                                       ; $6468: $d5
    push de                                       ; $6469: $d5
    add a                                         ; $646a: $87
    rst $38                                       ; $646b: $ff
    rlca                                          ; $646c: $07
    add a                                         ; $646d: $87
    rlca                                          ; $646e: $07
    add h                                         ; $646f: $84
    inc b                                         ; $6470: $04
    add a                                         ; $6471: $87
    nop                                           ; $6472: $00
    adc h                                         ; $6473: $8c
    ei                                            ; $6474: $fb
    ld [$9184], sp                                ; $6475: $08 $84 $91
    add b                                         ; $6478: $80
    sbc b                                         ; $6479: $98
    db $10                                        ; $647a: $10
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    sbc a                                         ; $647d: $9f
    rst $38                                       ; $647e: $ff
    sbc a                                         ; $647f: $9f
    rst $08                                       ; $6480: $cf
    rrca                                          ; $6481: $0f
    rlca                                          ; $6482: $07
    rlca                                          ; $6483: $07
    dec bc                                        ; $6484: $0b
    dec bc                                        ; $6485: $0b
    rlca                                          ; $6486: $07
    rst $38                                       ; $6487: $ff
    rlca                                          ; $6488: $07
    inc bc                                        ; $6489: $03
    inc bc                                        ; $648a: $03
    dec b                                         ; $648b: $05
    dec b                                         ; $648c: $05
    adc d                                         ; $648d: $8a
    adc d                                         ; $648e: $8a
    ld d, l                                       ; $648f: $55
    cp a                                          ; $6490: $bf
    ld d, l                                       ; $6491: $55
    cp [hl]                                       ; $6492: $be
    cp [hl]                                       ; $6493: $be
    db $eb                                        ; $6494: $eb
    rst $38                                       ; $6495: $ff
    pop af                                        ; $6496: $f1
    xor [hl]                                      ; $6497: $ae
    nop                                           ; $6498: $00
    ld d, a                                       ; $6499: $57
    or $00                                        ; $649a: $f6 $00
    ldh [$eb], a                                  ; $649c: $e0 $eb
    db $eb                                        ; $649e: $eb
    xor d                                         ; $649f: $aa
    ret nz                                        ; $64a0: $c0

    rst $38                                       ; $64a1: $ff
    xor a                                         ; $64a2: $af
    rst $38                                       ; $64a3: $ff
    push bc                                       ; $64a4: $c5
    cp $9e                                        ; $64a5: $fe $9e
    nop                                           ; $64a7: $00
    ld e, l                                       ; $64a8: $5d
    rst $38                                       ; $64a9: $ff
    xor $ff                                       ; $64aa: $ee $ff
    ld [hl+], a                                   ; $64ac: $22
    ld [hl+], a                                   ; $64ad: $22
    ld d, l                                       ; $64ae: $55
    ld e, a                                       ; $64af: $5f
    ld d, l                                       ; $64b0: $55
    cp a                                          ; $64b1: $bf
    cp a                                          ; $64b2: $bf
    ld l, e                                       ; $64b3: $6b
    ld a, a                                       ; $64b4: $7f
    ldh [$e1], a                                  ; $64b5: $e0 $e1
    rst $10                                       ; $64b7: $d7
    ldh [$c0], a                                  ; $64b8: $e0 $c0
    rst $38                                       ; $64ba: $ff
    inc hl                                        ; $64bb: $23
    inc hl                                        ; $64bc: $23
    ld d, l                                       ; $64bd: $55
    ld d, l                                       ; $64be: $55
    cp e                                          ; $64bf: $bb
    cp e                                          ; $64c0: $bb
    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    push af                                       ; $64c3: $f5
    ld [hl], a                                    ; $64c4: $77
    ld a, [hl]                                    ; $64c5: $7e
    nop                                           ; $64c6: $00
    ld [hl], a                                    ; $64c7: $77
    dec bc                                        ; $64c8: $0b
    ldh [rP1], a                                  ; $64c9: $e0 $00
    nop                                           ; $64cb: $00
    ld c, [hl]                                    ; $64cc: $4e
    ld [hl], b                                    ; $64cd: $70
    ld a, a                                       ; $64ce: $7f
    inc e                                         ; $64cf: $1c
    ld h, b                                       ; $64d0: $60
    ld a, [hl-]                                   ; $64d1: $3a
    ld b, b                                       ; $64d2: $40
    ld [hl], h                                    ; $64d3: $74
    nop                                           ; $64d4: $00
    ld l, d                                       ; $64d5: $6a
    ld hl, sp+$60                                 ; $64d6: $f8 $60
    cp [hl]                                       ; $64d8: $be
    ld l, $81                                     ; $64d9: $2e $81
    ld b, d                                       ; $64db: $42
    nop                                           ; $64dc: $00
    inc h                                         ; $64dd: $24
    nop                                           ; $64de: $00

jr_02d_64df:
    jr jr_02d_64df                                ; $64df: $18 $fe

Jump_02d_64e1:
    ldh [rNR50], a                                ; $64e1: $e0 $24
    ld b, $f6                                     ; $64e3: $06 $f6
    ldh [rP1], a                                  ; $64e5: $e0 $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    rst $28                                       ; $64eb: $ef
    ld b, [hl]                                    ; $64ec: $46
    push bc                                       ; $64ed: $c5
    add $c7                                       ; $64ee: $c6 $c7
    db $fc                                        ; $64f0: $fc
    jp hl                                         ; $64f1: $e9


    cp a                                          ; $64f2: $bf
    ret nz                                        ; $64f3: $c0

    ld b, [hl]                                    ; $64f4: $46
    cp $ff                                        ; $64f5: $fe $ff
    ldh [$b9], a                                  ; $64f7: $e0 $b9
    cp d                                          ; $64f9: $ba
    ld b, [hl]                                    ; $64fa: $46
    ld b, [hl]                                    ; $64fb: $46
    cp e                                          ; $64fc: $bb
    cp h                                          ; $64fd: $bc
    ld b, [hl]                                    ; $64fe: $46
    ccf                                           ; $64ff: $3f
    cp l                                          ; $6500: $bd
    cp [hl]                                       ; $6501: $be
    ld b, [hl]                                    ; $6502: $46
    pop bc                                        ; $6503: $c1
    jp nz, $fc46                                  ; $6504: $c2 $46 $fc

    ld [c], a                                     ; $6507: $e2
    ret c                                         ; $6508: $d8

    db $ed                                        ; $6509: $ed
    ld e, $c8                                     ; $650a: $1e $c8
    push hl                                       ; $650c: $e5
    ret z                                         ; $650d: $c8

    ret                                           ; $650e: $c9


    jp z, $fccb                                   ; $650f: $ca $cb $fc

    jp hl                                         ; $6512: $e9


    ret nc                                        ; $6513: $d0

    ldh [$c3], a                                  ; $6514: $e0 $c3
    ldh [$f8], a                                  ; $6516: $e0 $f8
    call nz, $c3e0                                ; $6518: $c4 $e0 $c3
    pop hl                                        ; $651b: $e1
    or l                                          ; $651c: $b5
    ldh [$c3], a                                  ; $651d: $e0 $c3
    call nz, $bab9                                ; $651f: $c4 $b9 $ba
    jp $c4e7                                      ; $6522: $c3 $e7 $c4


    ld b, [hl]                                    ; $6525: $46
    ld b, [hl]                                    ; $6526: $46
    ret c                                         ; $6527: $d8

    db $ed                                        ; $6528: $ed
    ret z                                         ; $6529: $c8

    push hl                                       ; $652a: $e5
    call z, $cecd                                 ; $652b: $cc $cd $ce
    ld [hl], c                                    ; $652e: $71
    rst $08                                       ; $652f: $cf
    db $fc                                        ; $6530: $fc
    jp hl                                         ; $6531: $e9


    call nc, $87e0                                ; $6532: $d4 $e0 $87
    ld [c], a                                     ; $6535: $e2
    sbc l                                         ; $6536: $9d
    sbc a                                         ; $6537: $9f
    sbc e                                         ; $6538: $9b
    rst $38                                       ; $6539: $ff
    pop hl                                        ; $653a: $e1
    sbc e                                         ; $653b: $9b
    sbc a                                         ; $653c: $9f
    sbc l                                         ; $653d: $9d
    or h                                          ; $653e: $b4
    ld [c], a                                     ; $653f: $e2
    ld b, [hl]                                    ; $6540: $46
    ld b, [hl]                                    ; $6541: $46
    ret c                                         ; $6542: $d8

    db $ed                                        ; $6543: $ed
    ret z                                         ; $6544: $c8

    push hl                                       ; $6545: $e5
    ret nc                                        ; $6546: $d0

    rst $00                                       ; $6547: $c7
    pop de                                        ; $6548: $d1
    jp nc, $fcd3                                  ; $6549: $d2 $d3 $fc

    jp hl                                         ; $654c: $e9


    ld b, l                                       ; $654d: $45
    ldh [$87], a                                  ; $654e: $e0 $87
    pop hl                                        ; $6550: $e1
    sbc l                                         ; $6551: $9d
    sbc d                                         ; $6552: $9a
    ld l, h                                       ; $6553: $6c
    add hl, sp                                    ; $6554: $39
    pop hl                                        ; $6555: $e1
    dec [hl]                                      ; $6556: $35
    ldh [$9a], a                                  ; $6557: $e0 $9a
    sbc l                                         ; $6559: $9d
    ld a, b                                       ; $655a: $78
    pop hl                                        ; $655b: $e1
    cp c                                          ; $655c: $b9
    cp d                                          ; $655d: $ba
    ret c                                         ; $655e: $d8

    db $ed                                        ; $655f: $ed
    ldh [$c8], a                                  ; $6560: $e0 $c8
    push hl                                       ; $6562: $e5
    ld a, [hl+]                                   ; $6563: $2a
    db $ec                                        ; $6564: $ec
    add hl, bc                                    ; $6565: $09
    ld [c], a                                     ; $6566: $e2
    add h                                         ; $6567: $84
    ldh [$c1], a                                  ; $6568: $e0 $c1
    ldh [$79], a                                  ; $656a: $e0 $79
    ld a, d                                       ; $656c: $7a
    ld a, e                                       ; $656d: $7b
    inc bc                                        ; $656e: $03
    ld a, h                                       ; $656f: $7c
    ld a, l                                       ; $6570: $7d
    cp a                                          ; $6571: $bf
    pop hl                                        ; $6572: $e1
    db $eb                                        ; $6573: $eb
    db $e3                                        ; $6574: $e3
    cp $d4                                        ; $6575: $fe $d4
    ld [bc], a                                    ; $6577: $02
    db $eb                                        ; $6578: $eb
    jp nz, Jump_02d_45c0                          ; $6579: $c2 $c0 $45

    ldh [$7e], a                                  ; $657c: $e0 $7e
    add h                                         ; $657e: $84
    ld [c], a                                     ; $657f: $e2
    ld a, c                                       ; $6580: $79
    ld a, [hl]                                    ; $6581: $7e
    ld b, l                                       ; $6582: $45
    ld b, c                                       ; $6583: $41
    ld b, l                                       ; $6584: $45
    ld a, a                                       ; $6585: $7f
    cp a                                          ; $6586: $bf
    pop hl                                        ; $6587: $e1
    ld e, $3b                                     ; $6588: $1e $3b
    ldh [$bd], a                                  ; $658a: $e0 $bd
    cp [hl]                                       ; $658c: $be
    cp c                                          ; $658d: $b9
    cp d                                          ; $658e: $ba
    cp $d3                                        ; $658f: $fe $d3
    ld [bc], a                                    ; $6591: $02
    db $eb                                        ; $6592: $eb
    sub d                                         ; $6593: $92
    pop bc                                        ; $6594: $c1
    rst $30                                       ; $6595: $f7
    sbc l                                         ; $6596: $9d
    sbc d                                         ; $6597: $9a
    xor e                                         ; $6598: $ab
    pop bc                                        ; $6599: $c1
    ld [c], a                                     ; $659a: $e2
    or [hl]                                       ; $659b: $b6
    inc l                                         ; $659c: $2c
    ld h, $2a                                     ; $659d: $26 $2a
    adc h                                         ; $659f: $8c
    cp a                                          ; $65a0: $bf
    ld [c], a                                     ; $65a1: $e2
    ld a, h                                       ; $65a2: $7c
    ld [c], a                                     ; $65a3: $e2
    cp e                                          ; $65a4: $bb
    cp h                                          ; $65a5: $bc
    cp $d3                                        ; $65a6: $fe $d3
    ld [bc], a                                    ; $65a8: $02
    db $eb                                        ; $65a9: $eb
    sub [hl]                                      ; $65aa: $96
    pop bc                                        ; $65ab: $c1
    sbc h                                         ; $65ac: $9c
    ei                                            ; $65ad: $fb
    xor e                                         ; $65ae: $ab
    xor h                                         ; $65af: $ac
    add d                                         ; $65b0: $82
    ld [c], a                                     ; $65b1: $e2
    ld l, $20                                     ; $65b2: $2e $20
    jr nz, jr_02d_65e0                            ; $65b4: $20 $2a

    ld d, b                                       ; $65b6: $50
    rrca                                          ; $65b7: $0f
    ld b, e                                       ; $65b8: $43
    add c                                         ; $65b9: $81
    ld b, [hl]                                    ; $65ba: $46
    ld b, [hl]                                    ; $65bb: $46
    or c                                          ; $65bc: $b1
    ldh [$fa], a                                  ; $65bd: $e0 $fa
    pop bc                                        ; $65bf: $c1
    cp $d3                                        ; $65c0: $fe $d3
    ld [bc], a                                    ; $65c2: $02
    db $ec                                        ; $65c3: $ec
    ld a, [$c006]                                 ; $65c4: $fa $06 $c0
    sbc h                                         ; $65c7: $9c
    pop bc                                        ; $65c8: $c1
    ldh [rDMA], a                                 ; $65c9: $e0 $46
    add b                                         ; $65cb: $80
    xor e                                         ; $65cc: $ab
    ld b, d                                       ; $65cd: $42
    inc hl                                        ; $65ce: $23
    ld e, a                                       ; $65cf: $5f
    ld h, $2a                                     ; $65d0: $26 $2a
    ld b, a                                       ; $65d2: $47

jr_02d_65d3:
    ld e, l                                       ; $65d3: $5d
    ld d, l                                       ; $65d4: $55
    ret nz                                        ; $65d5: $c0

    ldh [$ac], a                                  ; $65d6: $e0 $ac
    cp [hl]                                       ; $65d8: $be
    ldh [$71], a                                  ; $65d9: $e0 $71
    sbc h                                         ; $65db: $9c
    or c                                          ; $65dc: $b1
    jp nz, $dc00                                  ; $65dd: $c2 $00 $dc

jr_02d_65e0:
    call nz, $bba1                                ; $65e0: $c4 $a1 $bb
    cp h                                          ; $65e3: $bc
    sbc [hl]                                      ; $65e4: $9e
    adc [hl]                                      ; $65e5: $8e
    pop hl                                        ; $65e6: $e1
    rst $38                                       ; $65e7: $ff
    add b                                         ; $65e8: $80
    xor h                                         ; $65e9: $ac
    ld b, b                                       ; $65ea: $40
    dec [hl]                                      ; $65eb: $35
    inc a                                         ; $65ec: $3c
    ld c, d                                       ; $65ed: $4a
    ld h, b                                       ; $65ee: $60
    ld d, l                                       ; $65ef: $55
    pop bc                                        ; $65f0: $c1
    ld b, l                                       ; $65f1: $45
    add b                                         ; $65f2: $80
    ldh [$be], a                                  ; $65f3: $e0 $be
    pop hl                                        ; $65f5: $e1
    ret nz                                        ; $65f6: $c0

    ld [c], a                                     ; $65f7: $e2
    nop                                           ; $65f8: $00
    db $dd                                        ; $65f9: $dd
    sub h                                         ; $65fa: $94
    and c                                         ; $65fb: $a1
    cp l                                          ; $65fc: $bd
    cp [hl]                                       ; $65fd: $be
    cp $95                                        ; $65fe: $fe $95
    ldh [$ac], a                                  ; $6600: $e0 $ac
    ld b, [hl]                                    ; $6602: $46
    add b                                         ; $6603: $80
    ld b, [hl]                                    ; $6604: $46
    add hl, sp                                    ; $6605: $39
    dec [hl]                                      ; $6606: $35
    dec [hl]                                      ; $6607: $35
    ld e, a                                       ; $6608: $5f
    ld d, l                                       ; $6609: $55
    ld d, d                                       ; $660a: $52
    ld b, l                                       ; $660b: $45
    add e                                         ; $660c: $83
    ld l, l                                       ; $660d: $6d
    jr c, jr_02d_65d3                             ; $660e: $38 $c3

    sbc h                                         ; $6610: $9c
    ld l, l                                       ; $6611: $6d
    and c                                         ; $6612: $a1
    ldh a, [rP1]                                  ; $6613: $f0 $00
    db $dd                                        ; $6615: $dd
    sub h                                         ; $6616: $94
    and c                                         ; $6617: $a1
    push de                                       ; $6618: $d5
    pop hl                                        ; $6619: $e1
    ld a, $a0                                     ; $661a: $3e $a0
    add d                                         ; $661c: $82
    add e                                         ; $661d: $83
    ld a, [hl-]                                   ; $661e: $3a
    dec [hl]                                      ; $661f: $35
    cp a                                          ; $6620: $bf
    dec [hl]                                      ; $6621: $35
    add hl, sp                                    ; $6622: $39
    ld b, l                                       ; $6623: $45
    add e                                         ; $6624: $83
    ld l, a                                       ; $6625: $6f
    add h                                         ; $6626: $84
    ld hl, sp-$5d                                 ; $6627: $f8 $a3
    sbc [hl]                                      ; $6629: $9e
    ldh a, [$31]                                  ; $662a: $f0 $31
    and c                                         ; $662c: $a1
    nop                                           ; $662d: $00
    call c, $c403                                 ; $662e: $dc $03 $c4
    add $a2                                       ; $6631: $c6 $a2
    add h                                         ; $6633: $84
    add l                                         ; $6634: $85
    ld [hl], c                                    ; $6635: $71
    ld [hl], d                                    ; $6636: $72
    inc bc                                        ; $6637: $03
    ld l, h                                       ; $6638: $6c
    ld a, [hl-]                                   ; $6639: $3a
    pop bc                                        ; $663a: $c1
    ldh [$74], a                                  ; $663b: $e0 $74
    pop bc                                        ; $663d: $c1
    cp c                                          ; $663e: $b9
    and [hl]                                      ; $663f: $a6
    ld a, [$0290]                                 ; $6640: $fa $90 $02
    db $eb                                        ; $6643: $eb
    inc bc                                        ; $6644: $03
    jp nz, Jump_02d_79fb                          ; $6645: $c2 $fb $79

    ld a, d                                       ; $6648: $7a
    ret                                           ; $6649: $c9


    and b                                         ; $664a: $a0
    ld b, h                                       ; $664b: $44
    inc a                                         ; $664c: $3c
    ld l, [hl]                                    ; $664d: $6e
    ld [hl], b                                    ; $664e: $70
    ld [hl], c                                    ; $664f: $71
    dec de                                        ; $6650: $1b
    add l                                         ; $6651: $85
    add h                                         ; $6652: $84
    jp Jump_02d_79c0                              ; $6653: $c3 $c0 $79


    ld a, d                                       ; $6656: $7a
    cp c                                          ; $6657: $b9
    and h                                         ; $6658: $a4
    xor e                                         ; $6659: $ab
    add b                                         ; $665a: $80
    nop                                           ; $665b: $00
    reti                                          ; $665c: $d9


    inc c                                         ; $665d: $0c
    sbc d                                         ; $665e: $9a
    add d                                         ; $665f: $82
    pop bc                                        ; $6660: $c1
    pop hl                                        ; $6661: $e1
    ld a, [hl]                                    ; $6662: $7e
    xor e                                         ; $6663: $ab
    ret                                           ; $6664: $c9


    and b                                         ; $6665: $a0
    ld bc, $3fe0                                  ; $6666: $01 $e0 $3f
    ldh [$b8], a                                  ; $6669: $e0 $b8
    and d                                         ; $666b: $a2
    dec sp                                        ; $666c: $3b
    xor e                                         ; $666d: $ab
    ld b, [hl]                                    ; $666e: $46
    cp c                                          ; $666f: $b9
    and b                                         ; $6670: $a0
    xor e                                         ; $6671: $ab
    sbc d                                         ; $6672: $9a
    sbc l                                         ; $6673: $9d
    ld l, a                                       ; $6674: $6f
    add b                                         ; $6675: $80
    nop                                           ; $6676: $00
    reti                                          ; $6677: $d9


    ld a, [$e202]                                 ; $6678: $fa $02 $e2
    sbc [hl]                                      ; $667b: $9e
    adc b                                         ; $667c: $88
    and b                                         ; $667d: $a0
    ld b, [hl]                                    ; $667e: $46
    xor h                                         ; $667f: $ac
    add e                                         ; $6680: $83
    ld l, l                                       ; $6681: $6d
    ld b, l                                       ; $6682: $45
    adc $01                                       ; $6683: $ce $01
    ldh [$35], a                                  ; $6685: $e0 $35
    dec [hl]                                      ; $6687: $35
    ld a, $36                                     ; $6688: $3e $36
    pop bc                                        ; $668a: $c1
    ld b, b                                       ; $668b: $40
    pop bc                                        ; $668c: $c1
    ld a, a                                       ; $668d: $7f
    ld a, l                                       ; $668e: $7d
    ld b, a                                       ; $668f: $47
    xor h                                         ; $6690: $ac
    xor e                                         ; $6691: $ab
    sbc h                                         ; $6692: $9c
    ld [hl-], a                                   ; $6693: $32
    add b                                         ; $6694: $80
    nop                                           ; $6695: $00

jr_02d_6696:
    db $db                                        ; $6696: $db
    ld c, $80                                     ; $6697: $0e $80
    sbc h                                         ; $6699: $9c
    ld b, $c0                                     ; $669a: $06 $c0
    sbc a                                         ; $669c: $9f
    ld b, [hl]                                    ; $669d: $46
    ld b, [hl]                                    ; $669e: $46
    adc b                                         ; $669f: $88
    add h                                         ; $66a0: $84
    ld [hl], $81                                  ; $66a1: $36 $81
    pop hl                                        ; $66a3: $e1
    add b                                         ; $66a4: $80
    ld [c], a                                     ; $66a5: $e2
    add d                                         ; $66a6: $82
    dec sp                                        ; $66a7: $3b
    add e                                         ; $66a8: $83
    ld b, [hl]                                    ; $66a9: $46
    xor a                                         ; $66aa: $af
    and b                                         ; $66ab: $a0
    add c                                         ; $66ac: $81
    ld b, [hl]                                    ; $66ad: $46
    xor h                                         ; $66ae: $ac
    db $fd                                        ; $66af: $fd
    and e                                         ; $66b0: $a3
    nop                                           ; $66b1: $00
    sbc c                                         ; $66b2: $99
    cp h                                          ; $66b3: $bc
    pop de                                        ; $66b4: $d1

jr_02d_66b5:
    ld h, b                                       ; $66b5: $60
    ret nz                                        ; $66b6: $c0

    ldh [$ac], a                                  ; $66b7: $e0 $ac
    ld b, [hl]                                    ; $66b9: $46
    add e                                         ; $66ba: $83
    ld l, l                                       ; $66bb: $6d
    ld b, d                                       ; $66bc: $42
    ld [c], a                                     ; $66bd: $e2
    dec [hl]                                      ; $66be: $35
    rst $38                                       ; $66bf: $ff
    inc a                                         ; $66c0: $3c
    ld b, h                                       ; $66c1: $44
    ld c, b                                       ; $66c2: $48
    ld d, e                                       ; $66c3: $53
    ld b, l                                       ; $66c4: $45

Call_02d_66c5:
    add h                                         ; $66c5: $84
    ld l, a                                       ; $66c6: $6f
    add e                                         ; $66c7: $83
    jp nz, $a070                                  ; $66c8: $c2 $70 $a0

    add c                                         ; $66cb: $81
    cp b                                          ; $66cc: $b8
    add d                                         ; $66cd: $82
    and e                                         ; $66ce: $a3
    ld h, b                                       ; $66cf: $60
    nop                                           ; $66d0: $00
    sbc c                                         ; $66d1: $99
    jr jr_02d_6696                                ; $66d2: $18 $c2

    add d                                         ; $66d4: $82
    add e                                         ; $66d5: $83
    db $fc                                        ; $66d6: $fc
    ld c, e                                       ; $66d7: $4b
    ret nz                                        ; $66d8: $c0

    ld b, d                                       ; $66d9: $42
    ld [c], a                                     ; $66da: $e2
    dec [hl]                                      ; $66db: $35
    ld a, [hl-]                                   ; $66dc: $3a
    ld d, c                                       ; $66dd: $51
    ld e, [hl]                                    ; $66de: $5e
    ld d, h                                       ; $66df: $54
    dec hl                                        ; $66e0: $2b
    add c                                         ; $66e1: $81
    or [hl]                                       ; $66e2: $b6
    cp a                                          ; $66e3: $bf
    ldh [$c0], a                                  ; $66e4: $e0 $c0
    pop hl                                        ; $66e6: $e1
    ld a, [hl]                                    ; $66e7: $7e
    and c                                         ; $66e8: $a1
    ld [hl], e                                    ; $66e9: $73
    ld h, b                                       ; $66ea: $60
    nop                                           ; $66eb: $00
    sbc c                                         ; $66ec: $99
    ret nz                                        ; $66ed: $c0

    jp nz, $ef84                                  ; $66ee: $c2 $84 $ef

    add l                                         ; $66f1: $85
    add l                                         ; $66f2: $85
    add h                                         ; $66f3: $84
    ld b, h                                       ; $66f4: $44
    ret nz                                        ; $66f5: $c0

    db $e3                                        ; $66f6: $e3
    add hl, sp                                    ; $66f7: $39
    ld c, d                                       ; $66f8: $4a
    ld e, b                                       ; $66f9: $58
    cp a                                          ; $66fa: $bf
    dec l                                         ; $66fb: $2d
    jr nz, jr_02d_66b5                            ; $66fc: $20 $b7

    ld b, h                                       ; $66fe: $44
    add h                                         ; $66ff: $84
    adc c                                         ; $6700: $89
    add b                                         ; $6701: $80
    pop hl                                        ; $6702: $e1
    sbc [hl]                                      ; $6703: $9e
    ld h, b                                       ; $6704: $60
    dec hl                                        ; $6705: $2b
    ld h, b                                       ; $6706: $60
    ld [hl], a                                    ; $6707: $77
    ld h, b                                       ; $6708: $60
    nop                                           ; $6709: $00
    jp c, Jump_02d_6009                           ; $670a: $da $09 $60

    rla                                           ; $670d: $17
    and d                                         ; $670e: $a2
    ld b, l                                       ; $670f: $45
    ld a, $82                                     ; $6710: $3e $82
    pop bc                                        ; $6712: $c1
    rst $38                                       ; $6713: $ff
    ld [hl], $45                                  ; $6714: $36 $45
    ld d, l                                       ; $6716: $55
    ld d, [hl]                                    ; $6717: $56
    ld [hl-], a                                   ; $6718: $32
    jr nz, jr_02d_673b                            ; $6719: $20 $20

    dec l                                         ; $671b: $2d
    ld [bc], a                                    ; $671c: $02
    ld [hl], e                                    ; $671d: $73
    and b                                         ; $671e: $a0
    xor e                                         ; $671f: $ab
    add b                                         ; $6720: $80
    pop hl                                        ; $6721: $e1
    dec hl                                        ; $6722: $2b
    ld h, c                                       ; $6723: $61
    nop                                           ; $6724: $00
    sbc b                                         ; $6725: $98
    call nz, $0263                                ; $6726: $c4 $63 $02
    and b                                         ; $6729: $a0
    cp a                                          ; $672a: $bf
    ld b, b                                       ; $672b: $40
    cp $42                                        ; $672c: $fe $42
    pop bc                                        ; $672e: $c1
    inc a                                         ; $672f: $3c
    ld b, h                                       ; $6730: $44
    ld b, [hl]                                    ; $6731: $46
    ld b, l                                       ; $6732: $45
    ld b, e                                       ; $6733: $43
    or [hl]                                       ; $6734: $b6
    inc hl                                        ; $6735: $23
    dec b                                         ; $6736: $05
    ld h, $c0                                     ; $6737: $26 $c0
    pop hl                                        ; $6739: $e1
    xor h                                         ; $673a: $ac

jr_02d_673b:
    nop                                           ; $673b: $00
    pop hl                                        ; $673c: $e1
    or d                                          ; $673d: $b2
    ld b, b                                       ; $673e: $40
    nop                                           ; $673f: $00
    sbc c                                         ; $6740: $99
    adc h                                         ; $6741: $8c
    ld b, b                                       ; $6742: $40
    call nz, $ab66                                ; $6743: $c4 $66 $ab
    ld a, d                                       ; $6746: $7a
    ld h, [hl]                                    ; $6747: $66
    ld [bc], a                                    ; $6748: $02
    ldh [rLYC], a                                 ; $6749: $e0 $45
    ld b, [hl]                                    ; $674b: $46
    add b                                         ; $674c: $80
    add hl, sp                                    ; $674d: $39
    cp c                                          ; $674e: $b9
    pop hl                                        ; $674f: $e1
    add b                                         ; $6750: $80
    rrca                                          ; $6751: $0f
    ld b, [hl]                                    ; $6752: $46
    ld b, [hl]                                    ; $6753: $46
    adc d                                         ; $6754: $8a
    ld a, l                                       ; $6755: $7d
    ld [hl], a                                    ; $6756: $77
    ld h, d                                       ; $6757: $62
    nop                                           ; $6758: $00
    sbc c                                         ; $6759: $99
    adc h                                         ; $675a: $8c
    ld b, c                                       ; $675b: $41
    add l                                         ; $675c: $85
    ld h, l                                       ; $675d: $65
    rst $38                                       ; $675e: $ff
    ld [hl], $68                                  ; $675f: $36 $68
    ld h, [hl]                                    ; $6761: $66
    dec [hl]                                      ; $6762: $35
    add hl, sp                                    ; $6763: $39
    xor e                                         ; $6764: $ab
    ld b, [hl]                                    ; $6765: $46
    xor h                                         ; $6766: $ac
    ld e, $f9                                     ; $6767: $1e $f9
    and b                                         ; $6769: $a0
    inc a                                         ; $676a: $3c
    ld b, h                                       ; $676b: $44
    ld a, c                                       ; $676c: $79
    adc e                                         ; $676d: $8b
    xor a                                         ; $676e: $af
    ld h, b                                       ; $676f: $60
    halt                                          ; $6770: $76
    ld h, b                                       ; $6771: $60
    ld [hl], $60                                  ; $6772: $36 $60
    add sp, $00                                   ; $6774: $e8 $00
    sbc b                                         ; $6776: $98
    adc h                                         ; $6777: $8c
    ld b, c                                       ; $6778: $41
    add hl, bc                                    ; $6779: $09
    ld h, h                                       ; $677a: $64
    adc l                                         ; $677b: $8d
    add h                                         ; $677c: $84
    add b                                         ; $677d: $80
    ld l, d                                       ; $677e: $6a
    dec [hl]                                      ; $677f: $35
    ld b, b                                       ; $6780: $40
    scf                                           ; $6781: $37
    xor h                                         ; $6782: $ac
    ld b, [hl]                                    ; $6783: $46
    ld b, l                                       ; $6784: $45
    ld sp, hl                                     ; $6785: $f9
    and b                                         ; $6786: $a0
    ld a, [hl-]                                   ; $6787: $3a
    ld b, l                                       ; $6788: $45
    cp [hl]                                       ; $6789: $be
    and d                                         ; $678a: $a2
    cp $a0                                        ; $678b: $fe $a0
    ret nz                                        ; $678d: $c0

    ei                                            ; $678e: $fb
    ld h, e                                       ; $678f: $63
    nop                                           ; $6790: $00
    ld d, h                                       ; $6791: $54
    adc $20                                       ; $6792: $ce $20
    adc h                                         ; $6794: $8c
    ld b, d                                       ; $6795: $42
    ld d, c                                       ; $6796: $51
    and c                                         ; $6797: $a1
    add e                                         ; $6798: $83
    and b                                         ; $6799: $a0
    ld l, h                                       ; $679a: $6c
    ld l, l                                       ; $679b: $6d

Call_02d_679c:
    ld h, h                                       ; $679c: $64
    pop bc                                        ; $679d: $c1
    ret nz                                        ; $679e: $c0

    dec sp                                        ; $679f: $3b
    and d                                         ; $67a0: $a2
    ld a, $be                                     ; $67a1: $3e $be
    and [hl]                                      ; $67a3: $a6
    cp e                                          ; $67a4: $bb
    ld h, b                                       ; $67a5: $60
    cp a                                          ; $67a6: $bf
    ret nz                                        ; $67a7: $c0

    nop                                           ; $67a8: $00
    ld d, l                                       ; $67a9: $55
    di                                            ; $67aa: $f3
    cp e                                          ; $67ab: $bb
    cp h                                          ; $67ac: $bc
    ld [$4262], sp                                ; $67ad: $08 $62 $42
    and c                                         ; $67b0: $a1
    scf                                           ; $67b1: $37
    jr c, @+$37                                   ; $67b2: $38 $35

    ld l, h                                       ; $67b4: $6c
    xor e                                         ; $67b5: $ab
    ld l, a                                       ; $67b6: $6f
    ld l, [hl]                                    ; $67b7: $6e
    ld b, c                                       ; $67b8: $41
    add b                                         ; $67b9: $80
    xor e                                         ; $67ba: $ab
    ld a, c                                       ; $67bb: $79
    pop bc                                        ; $67bc: $c1
    ld a, [hl-]                                   ; $67bd: $3a
    cp [hl]                                       ; $67be: $be
    xor c                                         ; $67bf: $a9
    pop bc                                        ; $67c0: $c1
    ld a, l                                       ; $67c1: $7d
    jp nz, Jump_02d_5500                          ; $67c2: $c2 $00 $55

    cp l                                          ; $67c5: $bd
    cp [hl]                                       ; $67c6: $be
    sbc [hl]                                      ; $67c7: $9e
    ld b, [hl]                                    ; $67c8: $46
    xor h                                         ; $67c9: $ac
    adc b                                         ; $67ca: $88
    ld h, b                                       ; $67cb: $60
    xor $4c                                       ; $67cc: $ee $4c
    pop hl                                        ; $67ce: $e1
    ld l, h                                       ; $67cf: $6c
    ld [hl], d                                    ; $67d0: $72
    ld [hl], b                                    ; $67d1: $70
    pop bc                                        ; $67d2: $c1
    ldh [$35], a                                  ; $67d3: $e0 $35
    add hl, sp                                    ; $67d5: $39
    xor h                                         ; $67d6: $ac
    ld h, d                                       ; $67d7: $62
    cp e                                          ; $67d8: $bb
    add d                                         ; $67d9: $82
    ld [hl], $7d                                  ; $67da: $36 $7d
    and c                                         ; $67dc: $a1
    ld l, h                                       ; $67dd: $6c
    and b                                         ; $67de: $a0
    inc a                                         ; $67df: $3c
    ld h, c                                       ; $67e0: $61
    jp Jump_000_00c4                              ; $67e1: $c3 $c4 $00


    ld d, h                                       ; $67e4: $54
    inc c                                         ; $67e5: $0c
    sbc l                                         ; $67e6: $9d
    ld h, d                                       ; $67e7: $62
    ld d, $60                                     ; $67e8: $16 $60
    add d                                         ; $67ea: $82
    add e                                         ; $67eb: $83
    pop bc                                        ; $67ec: $c1
    ldh [$83], a                                  ; $67ed: $e0 $83
    pop hl                                        ; $67ef: $e1
    ld b, b                                       ; $67f0: $40
    jp $81ba                                      ; $67f1: $c3 $ba $81


    ld c, $38                                     ; $67f4: $0e $38
    ret nz                                        ; $67f6: $c0

    add h                                         ; $67f7: $84
    add l                                         ; $67f8: $85
    add [hl]                                      ; $67f9: $86
    dec [hl]                                      ; $67fa: $35
    add b                                         ; $67fb: $80
    cp [hl]                                       ; $67fc: $be
    and c                                         ; $67fd: $a1
    ld a, [$044e]                                 ; $67fe: $fa $4e $04
    call nz, $c6a4                                ; $6801: $c4 $a4 $c6
    and l                                         ; $6804: $a5
    ret z                                         ; $6805: $c8

    ld h, b                                       ; $6806: $60
    ld [hl], c                                    ; $6807: $71
    add e                                         ; $6808: $83
    ld [c], a                                     ; $6809: $e2
    ld b, b                                       ; $680a: $40
    jp nz, $b846                                  ; $680b: $c2 $46 $b8

    and b                                         ; $680e: $a0
    ld h, d                                       ; $680f: $62
    add c                                         ; $6810: $81
    ld h, e                                       ; $6811: $63
    cp d                                          ; $6812: $ba
    ld hl, $633c                                  ; $6813: $21 $3c $63
    dec [hl]                                      ; $6816: $35
    ld [hl+], a                                   ; $6817: $22
    nop                                           ; $6818: $00
    ld d, c                                       ; $6819: $51
    sub e                                         ; $681a: $93
    ld bc, $439d                                  ; $681b: $01 $9d $43
    ld b, h                                       ; $681e: $44
    jp hl                                         ; $681f: $e9


    inc a                                         ; $6820: $3c
    add [hl]                                      ; $6821: $86
    add d                                         ; $6822: $82
    inc bc                                        ; $6823: $03
    add d                                         ; $6824: $82
    xor e                                         ; $6825: $ab
    ld a, [hl-]                                   ; $6826: $3a
    add b                                         ; $6827: $80
    ld h, d                                       ; $6828: $62
    ld h, a                                       ; $6829: $67
    dec [hl]                                      ; $682a: $35
    dec c                                         ; $682b: $0d
    add hl, sp                                    ; $682c: $39
    ei                                            ; $682d: $fb
    inc hl                                        ; $682e: $23
    xor e                                         ; $682f: $ab
    sbc h                                         ; $6830: $9c
    ld [hl], b                                    ; $6831: $70
    nop                                           ; $6832: $00
    ld h, c                                       ; $6833: $61
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    ld d, c                                       ; $6836: $51
    adc d                                         ; $6837: $8a
    inc h                                         ; $6838: $24
    db $fc                                        ; $6839: $fc
    add l                                         ; $683a: $85
    ret nz                                        ; $683b: $c0

    ld b, a                                       ; $683c: $47
    add e                                         ; $683d: $83
    dec [hl]                                      ; $683e: $35
    dec sp                                        ; $683f: $3b
    jr c, jr_02d_6879                             ; $6840: $38 $37

    ld b, l                                       ; $6842: $45
    ld b, [hl]                                    ; $6843: $46
    stop                                          ; $6844: $10 $00
    ldh [$c1], a                                  ; $6846: $e0 $c1
    ldh [$fa], a                                  ; $6848: $e0 $fa
    ld h, b                                       ; $684a: $60
    ei                                            ; $684b: $fb
    ld [hl+], a                                   ; $684c: $22
    xor h                                         ; $684d: $ac
    ld [hl], $21                                  ; $684e: $36 $21
    ld sp, $0000                                  ; $6850: $31 $00 $00
    ld c, a                                       ; $6853: $4f
    ld [hl], b                                    ; $6854: $70
    ld c, b                                       ; $6855: $48
    ld b, c                                       ; $6856: $41
    ret                                           ; $6857: $c9


    jr nz, @+$18                                  ; $6858: $20 $16

    ld b, b                                       ; $685a: $40
    pop bc                                        ; $685b: $c1
    db $e4                                        ; $685c: $e4
    jr c, @+$39                                   ; $685d: $38 $37

    ld b, e                                       ; $685f: $43
    ld b, e                                       ; $6860: $43
    ldh [$15], a                                  ; $6861: $e0 $15
    xor e                                         ; $6863: $ab
    ld b, c                                       ; $6864: $41
    ldh [rBCPD], a                                ; $6865: $e0 $69
    cp d                                          ; $6867: $ba
    ld h, c                                       ; $6868: $61
    xor e                                         ; $6869: $ab
    add d                                         ; $686a: $82
    and b                                         ; $686b: $a0
    and h                                         ; $686c: $a4
    ret nz                                        ; $686d: $c0

    cp a                                          ; $686e: $bf
    jp Jump_000_00f0                              ; $686f: $c3 $f0 $00


    ld d, b                                       ; $6872: $50
    ld c, d                                       ; $6873: $4a
    inc hl                                        ; $6874: $23
    ret                                           ; $6875: $c9


    ld hl, $8308                                  ; $6876: $21 $08 $83

jr_02d_6879:
    ld [hl], $03                                  ; $6879: $36 $03
    inc b                                         ; $687b: $04
    rlca                                          ; $687c: $07
    dec hl                                        ; $687d: $2b
    inc b                                         ; $687e: $04
    inc bc                                        ; $687f: $03
    ret z                                         ; $6880: $c8

    jr nz, @+$3b                                  ; $6881: $20 $39

    ret nz                                        ; $6883: $c0

    ld [c], a                                     ; $6884: $e2
    ld a, [hl-]                                   ; $6885: $3a
    inc bc                                        ; $6886: $03
    jp nz, $206b                                  ; $6887: $c2 $6b $20

    sub c                                         ; $688a: $91
    sbc h                                         ; $688b: $9c
    cp $50                                        ; $688c: $fe $50
    nop                                           ; $688e: $00
    ld b, c                                       ; $688f: $41
    ld b, [hl]                                    ; $6890: $46
    ld h, c                                       ; $6891: $61
    sbc [hl]                                      ; $6892: $9e
    dec bc                                        ; $6893: $0b
    ld hl, $634a                                  ; $6894: $21 $4a $63
    ld [hl], $7f                                  ; $6897: $36 $7f
    ld [bc], a                                    ; $6899: $02
    rrca                                          ; $689a: $0f
    inc b                                         ; $689b: $04
    add hl, bc                                    ; $689c: $09
    inc b                                         ; $689d: $04
    rrca                                          ; $689e: $0f
    ld [bc], a                                    ; $689f: $02

Jump_02d_68a0:
    ldh a, [$e1]                                  ; $68a0: $f0 $e1
    sbc b                                         ; $68a2: $98
    add b                                         ; $68a3: $80
    pop hl                                        ; $68a4: $e1
    or a                                          ; $68a5: $b7
    add b                                         ; $68a6: $80
    cp d                                          ; $68a7: $ba
    ld [hl+], a                                   ; $68a8: $22
    ld b, [hl]                                    ; $68a9: $46
    sbc h                                         ; $68aa: $9c
    cp $50                                        ; $68ab: $fe $50
    ld [$bb83], sp                                ; $68ad: $08 $83 $bb
    ld sp, hl                                     ; $68b0: $f9
    cp h                                          ; $68b1: $bc
    ld c, d                                       ; $68b2: $4a
    ld [hl+], a                                   ; $68b3: $22
    jp Jump_000_38c1                              ; $68b4: $c3 $c1 $38


    scf                                           ; $68b7: $37
    ld [bc], a                                    ; $68b8: $02
    rrca                                          ; $68b9: $0f
    ld [bc], a                                    ; $68ba: $02
    jr @+$7f                                      ; $68bb: $18 $7d

    ld b, b                                       ; $68bd: $40
    ld a, [$c0e0]                                 ; $68be: $fa $e0 $c0
    pop hl                                        ; $68c1: $e1
    xor c                                         ; $68c2: $a9
    xor c                                         ; $68c3: $a9
    or a                                          ; $68c4: $b7
    add b                                         ; $68c5: $80
    cp d                                          ; $68c6: $ba
    inc h                                         ; $68c7: $24
    cp $51                                        ; $68c8: $fe $51
    call c, Call_000_0330                         ; $68ca: $dc $30 $03
    ld c, e                                       ; $68cd: $4b
    ld [bc], a                                    ; $68ce: $02
    xor e                                         ; $68cf: $ab
    ld b, [hl]                                    ; $68d0: $46
    ld b, b                                       ; $68d1: $40
    ld b, h                                       ; $68d2: $44
    ld [c], a                                     ; $68d3: $e2
    rrca                                          ; $68d4: $0f
    ld b, $ef                                     ; $68d5: $06 $ef
    ld a, c                                       ; $68d7: $79
    ld a, [hl]                                    ; $68d8: $7e
    ld b, e                                       ; $68d9: $43
    ld a, a                                       ; $68da: $7f
    cp a                                          ; $68db: $bf
    pop hl                                        ; $68dc: $e1
    ld b, h                                       ; $68dd: $44
    inc a                                         ; $68de: $3c
    ld l, c                                       ; $68df: $69
    rrca                                          ; $68e0: $0f
    xor d                                         ; $68e1: $aa
    xor d                                         ; $68e2: $aa
    dec [hl]                                      ; $68e3: $35
    add hl, sp                                    ; $68e4: $39
    cp d                                          ; $68e5: $ba
    inc h                                         ; $68e6: $24
    ld a, $61                                     ; $68e7: $3e $61
    nop                                           ; $68e9: $00
    ld d, h                                       ; $68ea: $54
    ld b, [hl]                                    ; $68eb: $46
    ld b, d                                       ; $68ec: $42
    cp $d0                                        ; $68ed: $fe $d0
    add c                                         ; $68ef: $81
    ld [hl], $05                                  ; $68f0: $36 $05
    rrca                                          ; $68f2: $0f
    sub [hl]                                      ; $68f3: $96
    ld c, $05                                     ; $68f4: $0e $05
    add b                                         ; $68f6: $80
    rst $38                                       ; $68f7: $ff
    dec l                                         ; $68f8: $2d
    inc l                                         ; $68f9: $2c
    or [hl]                                       ; $68fa: $b6
    ld a, a                                       ; $68fb: $7f
    ld a, l                                       ; $68fc: $7d
    ld b, $0e                                     ; $68fd: $06 $0e
    dec b                                         ; $68ff: $05
    rra                                           ; $6900: $1f
    ld a, [hl-]                                   ; $6901: $3a
    ld l, e                                       ; $6902: $6b
    ld l, h                                       ; $6903: $6c
    dec [hl]                                      ; $6904: $35
    inc a                                         ; $6905: $3c
    pop bc                                        ; $6906: $c1
    add sp, $00                                   ; $6907: $e8 $00
    ld d, l                                       ; $6909: $55
    ret nz                                        ; $690a: $c0

    and l                                         ; $690b: $a5
    rst $28                                       ; $690c: $ef
    ld b, l                                       ; $690d: $45
    ld b, l                                       ; $690e: $45
    ld b, $98                                     ; $690f: $06 $98
    ld b, d                                       ; $6911: $42
    ldh [$8b], a                                  ; $6912: $e0 $8b
    ld [hl-], a                                   ; $6914: $32
    jr nz, jr_02d_6996                            ; $6915: $20 $7f

    ld [hl-], a                                   ; $6917: $32
    ld b, [hl]                                    ; $6918: $46
    add c                                         ; $6919: $81
    dec b                                         ; $691a: $05
    sub [hl]                                      ; $691b: $96
    ld b, $39                                     ; $691c: $06 $39
    cp e                                          ; $691e: $bb
    jr nz, jr_02d_6961                            ; $691f: $20 $40

    cp d                                          ; $6921: $ba
    ld hl, $217a                                  ; $6922: $21 $7a $21
    ccf                                           ; $6925: $3f
    ld h, c                                       ; $6926: $61
    nop                                           ; $6927: $00
    ld d, l                                       ; $6928: $55
    ret nz                                        ; $6929: $c0

    and l                                         ; $692a: $a5
    ld b, e                                       ; $692b: $43
    ldh [$96], a                                  ; $692c: $e0 $96
    ld b, d                                       ; $692e: $42
    ldh [rIE], a                                  ; $692f: $e0 $ff
    ld b, l                                       ; $6931: $45
    ld l, $20                                     ; $6932: $2e $20
    ld l, $83                                     ; $6934: $2e $83
    ld l, l                                       ; $6936: $6d
    dec b                                         ; $6937: $05
    sub a                                         ; $6938: $97
    ld bc, $b208                                  ; $6939: $01 $08 $b2
    and d                                         ; $693c: $a2
    cp d                                          ; $693d: $ba
    jr nz, jr_02d_696d                            ; $693e: $20 $2d

    ld bc, $613f                                  ; $6940: $01 $3f $61
    nop                                           ; $6943: $00
    sub h                                         ; $6944: $94
    adc c                                         ; $6945: $89
    ld bc, $a180                                  ; $6946: $01 $80 $a1
    db $fc                                        ; $6949: $fc
    ld b, e                                       ; $694a: $43
    ldh [rSCY], a                                 ; $694b: $e0 $42
    pop hl                                        ; $694d: $e1
    ld b, [hl]                                    ; $694e: $46
    add hl, sp                                    ; $694f: $39
    ld hl, $2a26                                  ; $6950: $21 $26 $2a
    adc b                                         ; $6953: $88
    rrca                                          ; $6954: $0f
    add h                                         ; $6955: $84
    ld b, $99                                     ; $6956: $06 $99
    ld [$c0ef], sp                                ; $6958: $08 $ef $c0
    scf                                           ; $695b: $37
    and e                                         ; $695c: $a3
    and h                                         ; $695d: $a4
    and b                                         ; $695e: $a0
    db $fd                                        ; $695f: $fd
    inc b                                         ; $6960: $04

jr_02d_6961:
    ld hl, sp+$00                                 ; $6961: $f8 $00
    ld d, b                                       ; $6963: $50
    jr z, jr_02d_69a7                             ; $6964: $28 $41

    rst $38                                       ; $6966: $ff
    and b                                         ; $6967: $a0
    xor e                                         ; $6968: $ab
    ld b, [hl]                                    ; $6969: $46
    ld b, $96                                     ; $696a: $06 $96
    sub l                                         ; $696c: $95

jr_02d_696d:
    rst $28                                       ; $696d: $ef
    sub [hl]                                      ; $696e: $96
    ld [$8046], sp                                ; $696f: $08 $46 $80
    add e                                         ; $6972: $83
    jr nz, @+$3c                                  ; $6973: $20 $3a

    ld b, l                                       ; $6975: $45
    add c                                         ; $6976: $81
    inc bc                                        ; $6977: $03
    dec b                                         ; $6978: $05
    ld c, $40                                     ; $6979: $0e $40
    ldh [$f0], a                                  ; $697b: $e0 $f0
    and e                                         ; $697d: $a3
    ld [hl], $61                                  ; $697e: $36 $61
    ld a, a                                       ; $6980: $7f
    jr nz, jr_02d_69bd                            ; $6981: $20 $3a

    and c                                         ; $6983: $a1
    nop                                           ; $6984: $00
    ld d, c                                       ; $6985: $51
    cp h                                          ; $6986: $bc
    jr z, @+$43                                   ; $6987: $28 $41

    add b                                         ; $6989: $80
    and b                                         ; $698a: $a0
    xor h                                         ; $698b: $ac
    ld b, [hl]                                    ; $698c: $46
    ld [$8096], sp                                ; $698d: $08 $96 $80
    pop hl                                        ; $6990: $e1
    add d                                         ; $6991: $82
    ld a, a                                       ; $6992: $7f
    add e                                         ; $6993: $83
    inc a                                         ; $6994: $3c
    dec [hl]                                      ; $6995: $35

jr_02d_6996:
    ld a, [hl-]                                   ; $6996: $3a
    add e                                         ; $6997: $83
    ld l, l                                       ; $6998: $6d
    ld a, [bc]                                    ; $6999: $0a
    or a                                          ; $699a: $b7
    ret nz                                        ; $699b: $c0

    ret nz                                        ; $699c: $c0

    ld hl, sp+$24                                 ; $699d: $f8 $24
    dec [hl]                                      ; $699f: $35
    and b                                         ; $69a0: $a0
    ld a, e                                       ; $69a1: $7b
    jr nz, @-$3d                                  ; $69a2: $20 $c1

    ld h, c                                       ; $69a4: $61
    nop                                           ; $69a5: $00
    db $d3                                        ; $69a6: $d3

jr_02d_69a7:
    jr z, jr_02d_69e9                             ; $69a7: $28 $40

    ld b, [hl]                                    ; $69a9: $46
    sbc [hl]                                      ; $69aa: $9e
    ld a, [hl]                                    ; $69ab: $7e
    ld e, e                                       ; $69ac: $5b
    ld h, b                                       ; $69ad: $60
    ld b, $01                                     ; $69ae: $06 $01
    nop                                           ; $69b0: $00
    sub [hl]                                      ; $69b1: $96
    sub [hl]                                      ; $69b2: $96
    ld b, $7c                                     ; $69b3: $06 $7c
    add c                                         ; $69b5: $81
    ld [hl+], a                                   ; $69b6: $22
    add l                                         ; $69b7: $85
    nop                                           ; $69b8: $00
    ld a, [bc]                                    ; $69b9: $0a
    ld bc, $b9e4                                  ; $69ba: $01 $e4 $b9

jr_02d_69bd:
    inc bc                                        ; $69bd: $03
    inc a                                         ; $69be: $3c
    ld h, b                                       ; $69bf: $60
    sbc h                                         ; $69c0: $9c
    ld [bc], a                                    ; $69c1: $02
    xor a                                         ; $69c2: $af
    nop                                           ; $69c3: $00
    ld b, [hl]                                    ; $69c4: $46
    di                                            ; $69c5: $f3
    cp c                                          ; $69c6: $b9
    cp d                                          ; $69c7: $ba
    ld bc, $4d81                                  ; $69c8: $01 $81 $4d
    ldh [$95], a                                  ; $69cb: $e0 $95
    sub [hl]                                      ; $69cd: $96
    rrca                                          ; $69ce: $0f
    ld [bc], a                                    ; $69cf: $02
    jr c, jr_02d_6a12                             ; $69d0: $38 $40

    ld [c], a                                     ; $69d2: $e2
    inc sp                                        ; $69d3: $33
    ldh [rSB], a                                  ; $69d4: $e0 $01
    db $e3                                        ; $69d6: $e3
    dec [hl]                                      ; $69d7: $35
    dec [hl]                                      ; $69d8: $35
    ld b, b                                       ; $69d9: $40
    ld h, [hl]                                    ; $69da: $66
    add d                                         ; $69db: $82
    ld a, $00                                     ; $69dc: $3e $00
    or b                                          ; $69de: $b0
    ld [bc], a                                    ; $69df: $02
    xor [hl]                                      ; $69e0: $ae
    nop                                           ; $69e1: $00
    add [hl]                                      ; $69e2: $86
    ld a, a                                       ; $69e3: $7f
    and b                                         ; $69e4: $a0
    ld e, e                                       ; $69e5: $5b
    pop bc                                        ; $69e6: $c1
    ld [bc], a                                    ; $69e7: $02
    rrca                                          ; $69e8: $0f

jr_02d_69e9:
    cp $c0                                        ; $69e9: $fe $c0
    ld c, $3f                                     ; $69eb: $0e $3f
    dec b                                         ; $69ed: $05
    ld a, $35                                     ; $69ee: $3e $35
    add hl, sp                                    ; $69f0: $39
    ld [bc], a                                    ; $69f1: $02
    rlca                                          ; $69f2: $07
    halt                                          ; $69f3: $76
    ret nz                                        ; $69f4: $c0

    ld sp, hl                                     ; $69f5: $f9
    dec b                                         ; $69f6: $05
    jr nz, jr_02d_69fa                            ; $69f7: $20 $01

    push bc                                       ; $69f9: $c5

jr_02d_69fa:
    nop                                           ; $69fa: $00
    rst $10                                       ; $69fb: $d7
    ld b, $41                                     ; $69fc: $06 $41
    sbc l                                         ; $69fe: $9d
    add c                                         ; $69ff: $81
    cp [hl]                                       ; $6a00: $be
    ret nz                                        ; $6a01: $c0

jr_02d_6a02:
    sub l                                         ; $6a02: $95
    add hl, bc                                    ; $6a03: $09
    ret nz                                        ; $6a04: $c0

    db $fd                                        ; $6a05: $fd
    add b                                         ; $6a06: $80
    inc bc                                        ; $6a07: $03
    ld bc, $0100                                  ; $6a08: $01 $00 $01
    push hl                                       ; $6a0b: $e5
    or a                                          ; $6a0c: $b7
    ld b, b                                       ; $6a0d: $40
    jp nz, $83a1                                  ; $6a0e: $c2 $a1 $83

    ld h, c                                       ; $6a11: $61

jr_02d_6a12:
    nop                                           ; $6a12: $00
    sub $7f                                       ; $6a13: $d6 $7f
    and h                                         ; $6a15: $a4
    dec a                                         ; $6a16: $3d
    ld b, [hl]                                    ; $6a17: $46
    adc e                                         ; $6a18: $8b
    ret nz                                        ; $6a19: $c0

    sub [hl]                                      ; $6a1a: $96
    sub [hl]                                      ; $6a1b: $96
    rrca                                          ; $6a1c: $0f
    inc b                                         ; $6a1d: $04
    ld sp, hl                                     ; $6a1e: $f9
    and b                                         ; $6a1f: $a0
    jr c, jr_02d_6a02                             ; $6a20: $38 $e0

    ld [bc], a                                    ; $6a22: $02
    dec sp                                        ; $6a23: $3b
    ld [bc], a                                    ; $6a24: $02
    dec sp                                        ; $6a25: $3b
    pop bc                                        ; $6a26: $c1
    ld [c], a                                     ; $6a27: $e2
    jp nz, $e0a0                                  ; $6a28: $c2 $a0 $e0

    ld hl, $5700                                  ; $6a2b: $21 $00 $57
    dec a                                         ; $6a2e: $3d
    ret nz                                        ; $6a2f: $c0

    ld bc, $ff42                                  ; $6a30: $01 $42 $ff
    ld [bc], a                                    ; $6a33: $02
    dec c                                         ; $6a34: $0d
    nop                                           ; $6a35: $00
    ld bc, $9796                                  ; $6a36: $01 $96 $97
    sbc b                                         ; $6a39: $98
    sub a                                         ; $6a3a: $97
    rlca                                          ; $6a3b: $07
    sub [hl]                                      ; $6a3c: $96
    dec c                                         ; $6a3d: $0d
    ld [bc], a                                    ; $6a3e: $02
    jp nz, $f643                                  ; $6a3f: $c2 $43 $f6

    ld h, c                                       ; $6a42: $61
    ld h, a                                       ; $6a43: $67
    ld [bc], a                                    ; $6a44: $02
    add e                                         ; $6a45: $83
    ld h, d                                       ; $6a46: $62
    nop                                           ; $6a47: $00
    ld d, [hl]                                    ; $6a48: $56
    ei                                            ; $6a49: $fb
    pop bc                                        ; $6a4a: $c1
    jp nz, Jump_000_23fe                          ; $6a4b: $c2 $fe $23

    xor e                                         ; $6a4e: $ab
    inc bc                                        ; $6a4f: $03
    inc b                                         ; $6a50: $04
    dec c                                         ; $6a51: $0d
    sbc c                                         ; $6a52: $99
    inc bc                                        ; $6a53: $03
    dec c                                         ; $6a54: $0d
    rlca                                          ; $6a55: $07
    nop                                           ; $6a56: $00
    add c                                         ; $6a57: $81
    cp e                                          ; $6a58: $bb
    nop                                           ; $6a59: $00
    ld a, d                                       ; $6a5a: $7a
    ld h, c                                       ; $6a5b: $61
    ld b, h                                       ; $6a5c: $44
    ld h, d                                       ; $6a5d: $62
    ld b, d                                       ; $6a5e: $42
    ld [hl+], a                                   ; $6a5f: $22
    ret c                                         ; $6a60: $d8

    ld h, c                                       ; $6a61: $61
    and $00                                       ; $6a62: $e6 $00
    ld d, l                                       ; $6a64: $55
    jp Jump_02d_40c4                              ; $6a65: $c3 $c4 $40


    inc hl                                        ; $6a68: $23
    add hl, sp                                    ; $6a69: $39
    add b                                         ; $6a6a: $80
    inc bc                                        ; $6a6b: $03
    add hl, bc                                    ; $6a6c: $09
    inc bc                                        ; $6a6d: $03
    nop                                           ; $6a6e: $00
    cp e                                          ; $6a6f: $bb
    inc bc                                        ; $6a70: $03
    jp nz, $c3e5                                  ; $6a71: $c2 $e5 $c3

    ld h, e                                       ; $6a74: $63
    ld b, d                                       ; $6a75: $42
    ld b, c                                       ; $6a76: $41
    cp $0f                                        ; $6a77: $fe $0f
    ld [hl-], a                                   ; $6a79: $32
    ld h, l                                       ; $6a7a: $65
    ld b, b                                       ; $6a7b: $40
    ld hl, $0541                                  ; $6a7c: $21 $41 $05
    ld [bc], a                                    ; $6a7f: $02
    set 4, h                                      ; $6a80: $cb $e4
    ld b, l                                       ; $6a82: $45
    jp nz, $82e5                                  ; $6a83: $c2 $e5 $82

    ld b, h                                       ; $6a86: $44
    ld b, d                                       ; $6a87: $42
    ld b, d                                       ; $6a88: $42
    nop                                           ; $6a89: $00
    call nc, Call_000_22fc                        ; $6a8a: $d4 $fc $22
    ld b, c                                       ; $6a8d: $41
    ld [bc], a                                    ; $6a8e: $02
    ld h, b                                       ; $6a8f: $60
    ld a, b                                       ; $6a90: $78
    ld h, c                                       ; $6a91: $61
    db $fd                                        ; $6a92: $fd
    pop af                                        ; $6a93: $f1
    ld b, d                                       ; $6a94: $42
    ld b, e                                       ; $6a95: $43
    nop                                           ; $6a96: $00
    call nc, Call_000_01fa                        ; $6a97: $d4 $fa $01
    cp a                                          ; $6a9a: $bf
    ret nz                                        ; $6a9b: $c0

    cp e                                          ; $6a9c: $bb
    add d                                         ; $6a9d: $82
    nop                                           ; $6a9e: $00
    ld a, b                                       ; $6a9f: $78
    ld h, c                                       ; $6aa0: $61
    ret nz                                        ; $6aa1: $c0

    di                                            ; $6aa2: $f3
    sbc h                                         ; $6aa3: $9c
    add b                                         ; $6aa4: $80
    nop                                           ; $6aa5: $00
    push de                                       ; $6aa6: $d5
    ld a, [$ba01]                                 ; $6aa7: $fa $01 $ba
    ld b, e                                       ; $6aaa: $43
    add d                                         ; $6aab: $82
    db $f4                                        ; $6aac: $f4
    ret nz                                        ; $6aad: $c0

    and h                                         ; $6aae: $a4
    ld hl, sp+$00                                 ; $6aaf: $f8 $00
    sub l                                         ; $6ab1: $95
    inc l                                         ; $6ab2: $2c
    ld b, c                                       ; $6ab3: $41
    cp d                                          ; $6ab4: $ba
    ld b, c                                       ; $6ab5: $41
    sbc h                                         ; $6ab6: $9c
    ld b, [hl]                                    ; $6ab7: $46
    ld b, l                                       ; $6ab8: $45
    ld b, c                                       ; $6ab9: $41
    ld b, c                                       ; $6aba: $41
    inc bc                                        ; $6abb: $03
    scf                                           ; $6abc: $37
    scf                                           ; $6abd: $37
    db $fc                                        ; $6abe: $fc
    rst $28                                       ; $6abf: $ef
    ld a, [hl]                                    ; $6ac0: $7e
    add b                                         ; $6ac1: $80
    cp [hl]                                       ; $6ac2: $be
    and c                                         ; $6ac3: $a1
    nop                                           ; $6ac4: $00
    rst $10                                       ; $6ac5: $d7
    sbc [hl]                                      ; $6ac6: $9e
    ld hl, $a13b                                  ; $6ac7: $21 $3b $a1
    or a                                          ; $6aca: $b7
    ld b, d                                       ; $6acb: $42
    and c                                         ; $6acc: $a1
    ld h, h                                       ; $6acd: $64
    rst $38                                       ; $6ace: $ff
    ldh a, [$a2]                                  ; $6acf: $f0 $a2
    ld b, d                                       ; $6ad1: $42
    ret nz                                        ; $6ad2: $c0

    add b                                         ; $6ad3: $80
    sbc [hl]                                      ; $6ad4: $9e
    ld hl, sp+$41                                 ; $6ad5: $f8 $41
    ld [hl+], a                                   ; $6ad7: $22
    nop                                           ; $6ad8: $00
    call nc, Call_02d_61fc                        ; $6ad9: $d4 $fc $61
    cp l                                          ; $6adc: $bd
    cp [hl]                                       ; $6add: $be
    sbc h                                         ; $6ade: $9c
    ld b, [hl]                                    ; $6adf: $46
    ld b, b                                       ; $6ae0: $40
    ld e, a                                       ; $6ae1: $5f
    ld l, c                                       ; $6ae2: $69
    and b                                         ; $6ae3: $a0
    dec [hl]                                      ; $6ae4: $35
    dec [hl]                                      ; $6ae5: $35
    and b                                         ; $6ae6: $a0
    db $fc                                        ; $6ae7: $fc
    db $ed                                        ; $6ae8: $ed
    ld l, d                                       ; $6ae9: $6a
    cp l                                          ; $6aea: $bd
    add c                                         ; $6aeb: $81
    sub b                                         ; $6aec: $90
    add c                                         ; $6aed: $81
    ld b, c                                       ; $6aee: $41
    nop                                           ; $6aef: $00
    sub $e3                                       ; $6af0: $d6 $e3
    and d                                         ; $6af2: $a2
    db $fc                                        ; $6af3: $fc
    nop                                           ; $6af4: $00
    ld b, d                                       ; $6af5: $42
    adc [hl]                                      ; $6af6: $8e
    ld hl, $eefd                                  ; $6af7: $21 $fd $ee
    ld l, d                                       ; $6afa: $6a
    pop hl                                        ; $6afb: $e1
    ld b, d                                       ; $6afc: $42
    cp a                                          ; $6afd: $bf
    add h                                         ; $6afe: $84
    nop                                           ; $6aff: $00
    rst $10                                       ; $6b00: $d7
    db $e3                                        ; $6b01: $e3
    and b                                         ; $6b02: $a0
    cp d                                          ; $6b03: $ba
    jr nz, jr_02d_6b4c                            ; $6b04: $20 $46

    ld b, b                                       ; $6b06: $40
    ld l, e                                       ; $6b07: $6b
    adc h                                         ; $6b08: $8c
    inc bc                                        ; $6b09: $03
    add b                                         ; $6b0a: $80
    db $fd                                        ; $6b0b: $fd
    xor $6d                                       ; $6b0c: $ee $6d
    ld b, b                                       ; $6b0e: $40
    ld b, c                                       ; $6b0f: $41
    add c                                         ; $6b10: $81
    ld e, c                                       ; $6b11: $59
    ld h, c                                       ; $6b12: $61
    nop                                           ; $6b13: $00
    db $db                                        ; $6b14: $db
    sbc l                                         ; $6b15: $9d
    ld a, a                                       ; $6b16: $7f
    sbc d                                         ; $6b17: $9a
    ld b, l                                       ; $6b18: $45
    scf                                           ; $6b19: $37
    dec a                                         ; $6b1a: $3d
    jr c, @+$3a                                   ; $6b1b: $38 $38

    dec a                                         ; $6b1d: $3d
    db $fc                                        ; $6b1e: $fc
    db $ed                                        ; $6b1f: $ed
    db $e3                                        ; $6b20: $e3
    xor e                                         ; $6b21: $ab
    ld b, l                                       ; $6b22: $45
    jp Jump_000_0004                              ; $6b23: $c3 $04 $00


    db $dd                                        ; $6b26: $dd
    ccf                                           ; $6b27: $3f
    ret nz                                        ; $6b28: $c0

    ld b, l                                       ; $6b29: $45
    ld b, e                                       ; $6b2a: $43
    ld b, e                                       ; $6b2b: $43
    ld a, c                                       ; $6b2c: $79
    ld b, l                                       ; $6b2d: $45
    db $fc                                        ; $6b2e: $fc
    db $ed                                        ; $6b2f: $ed
    add h                                         ; $6b30: $84
    ld bc, $bab9                                  ; $6b31: $01 $b9 $ba
    jp Jump_000_00c4                              ; $6b34: $c3 $c4 $00


    db $dd                                        ; $6b37: $dd
    ld [de], a                                    ; $6b38: $12
    cp $a0                                        ; $6b39: $fe $a0
    sbc e                                         ; $6b3b: $9b
    rst $38                                       ; $6b3c: $ff
    rst $20                                       ; $6b3d: $e7
    di                                            ; $6b3e: $f3
    and h                                         ; $6b3f: $a4
    sbc d                                         ; $6b40: $9a
    db $ed                                        ; $6b41: $ed
    ldh [$c4], a                                  ; $6b42: $e0 $c4
    jr nz, @-$7c                                  ; $6b44: $20 $82

    pop bc                                        ; $6b46: $c1
    ld [hl+], a                                   ; $6b47: $22
    nop                                           ; $6b48: $00
    db $db                                        ; $6b49: $db
    ld b, [hl]                                    ; $6b4a: $46
    ld [hl], a                                    ; $6b4b: $77

jr_02d_6b4c:
    ld b, d                                       ; $6b4c: $42
    cp $87                                        ; $6b4d: $fe $87
    ld [hl], e                                    ; $6b4f: $73
    pop hl                                        ; $6b50: $e1
    ld b, l                                       ; $6b51: $45
    ret z                                         ; $6b52: $c8

    call nz, $a262                                ; $6b53: $c4 $62 $a2
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    sub b                                         ; $6b58: $90
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    rrca                                          ; $6b5c: $0f
    dec c                                         ; $6b5d: $0d
    ld c, $0e                                     ; $6b5e: $0e $0e
    ld c, $fc                                     ; $6b60: $0e $fc
    jp hl                                         ; $6b62: $e9


    ld a, [c]                                     ; $6b63: $f2
    ldh [rIE], a                                  ; $6b64: $e0 $ff
    ldh [$fa], a                                  ; $6b66: $e0 $fa
    pop hl                                        ; $6b68: $e1
    nop                                           ; $6b69: $00
    add sp, -$1e                                  ; $6b6a: $e8 $e2
    or $e5                                        ; $6b6c: $f6 $e5
    db $ed                                        ; $6b6e: $ed
    pop hl                                        ; $6b6f: $e1
    ret c                                         ; $6b70: $d8

    ld [$e7d0], a                                 ; $6b71: $ea $d0 $e7
    ei                                            ; $6b74: $fb
    db $ed                                        ; $6b75: $ed
    jp z, $ddea                                   ; $6b76: $ca $ea $dd

    db $e4                                        ; $6b79: $e4
    ld l, b                                       ; $6b7a: $68
    ld hl, sp-$1b                                 ; $6b7b: $f8 $e5
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    adc d                                         ; $6b7f: $8a
    rst $20                                       ; $6b80: $e7
    ld c, l                                       ; $6b81: $4d
    rst $38                                       ; $6b82: $ff
    pop hl                                        ; $6b83: $e1
    dec l                                         ; $6b84: $2d
    dec l                                         ; $6b85: $2d
    cp b                                          ; $6b86: $b8
    ld [$ffd8], a                                 ; $6b87: $ea $d8 $ff
    rst $38                                       ; $6b8a: $ff
    inc a                                         ; $6b8b: $3c
    ld [c], a                                     ; $6b8c: $e2
    dec a                                         ; $6b8d: $3d
    ldh [$6d], a                                  ; $6b8e: $e0 $6d
    dec bc                                        ; $6b90: $0b
    rst $38                                       ; $6b91: $ff
    db $e3                                        ; $6b92: $e3
    ld c, l                                       ; $6b93: $4d
    dec l                                         ; $6b94: $2d
    ld c, b                                       ; $6b95: $48
    add d                                         ; $6b96: $82
    db $fd                                        ; $6b97: $fd
    cp $ca                                        ; $6b98: $fe $ca
    inc de                                        ; $6b9a: $13
    db $e4                                        ; $6b9b: $e4
    ld c, l                                       ; $6b9c: $4d
    pop bc                                        ; $6b9d: $c1
    ldh [$f8], a                                  ; $6b9e: $e0 $f8
    pop bc                                        ; $6ba0: $c1
    dec c                                         ; $6ba1: $0d
    cp a                                          ; $6ba2: $bf
    pop hl                                        ; $6ba3: $e1
    ld [hl], b                                    ; $6ba4: $70
    ld [hl], l                                    ; $6ba5: $75
    ldh [$fe], a                                  ; $6ba6: $e0 $fe
    rst $18                                       ; $6ba8: $df
    ld [bc], a                                    ; $6ba9: $02
    jp hl                                         ; $6baa: $e9


    add h                                         ; $6bab: $84
    ld [c], a                                     ; $6bac: $e2
    dec c                                         ; $6bad: $0d
    dec c                                         ; $6bae: $0d
    dec hl                                        ; $6baf: $2b
    cp h                                          ; $6bb0: $bc
    pop hl                                        ; $6bb1: $e1
    add b                                         ; $6bb2: $80
    ld a, [hl]                                    ; $6bb3: $7e
    ldh [$3b], a                                  ; $6bb4: $e0 $3b
    ldh [rOBP0], a                                ; $6bb6: $e0 $48
    rst $38                                       ; $6bb8: $ff
    jp nz, Jump_02d_45c6                          ; $6bb9: $c2 $c6 $45

    ldh [$8a], a                                  ; $6bbc: $e0 $8a
    ldh [$c6], a                                  ; $6bbe: $e0 $c6

Jump_02d_6bc0:
    ld [c], a                                     ; $6bc0: $e2
    dec bc                                        ; $6bc1: $0b
    dec b                                         ; $6bc2: $05
    dec hl                                        ; $6bc3: $2b
    cp a                                          ; $6bc4: $bf
    pop hl                                        ; $6bc5: $e1
    ld c, e                                       ; $6bc6: $4b
    ld a, h                                       ; $6bc7: $7c
    ld [c], a                                     ; $6bc8: $e2
    add $ff                                       ; $6bc9: $c6 $ff
    ret nz                                        ; $6bcb: $c0

    and $4a                                       ; $6bcc: $e6 $4a
    pop hl                                        ; $6bce: $e1
    add d                                         ; $6bcf: $82
    ldh [$0e], a                                  ; $6bd0: $e0 $0e
    add c                                         ; $6bd2: $81
    ldh [rOCPD], a                                ; $6bd3: $e0 $6b
    ld a, [bc]                                    ; $6bd5: $0a
    dec bc                                        ; $6bd6: $0b
    ret nz                                        ; $6bd7: $c0

    ldh [$bd], a                                  ; $6bd8: $e0 $bd
    ldh [$fa], a                                  ; $6bda: $e0 $fa
    pop bc                                        ; $6bdc: $c1
    ld [bc], a                                    ; $6bdd: $02
    rst $38                                       ; $6bde: $ff
    db $fc                                        ; $6bdf: $fc
    ld b, $c5                                     ; $6be0: $06 $c5
    ld b, d                                       ; $6be2: $42
    db $e3                                        ; $6be3: $e3
    ld c, e                                       ; $6be4: $4b
    ld c, e                                       ; $6be5: $4b
    ld l, e                                       ; $6be6: $6b
    ld a, [bc]                                    ; $6be7: $0a
    ld a, [hl+]                                   ; $6be8: $2a
    ld a, [bc]                                    ; $6be9: $0a
    add b                                         ; $6bea: $80
    or h                                          ; $6beb: $b4
    pop hl                                        ; $6bec: $e1
    cp e                                          ; $6bed: $bb
    ldh [$fb], a                                  ; $6bee: $e0 $fb
    ret nz                                        ; $6bf0: $c0

    cp $d3                                        ; $6bf1: $fe $d3
    ld b, d                                       ; $6bf3: $42
    db $ed                                        ; $6bf4: $ed
    or d                                          ; $6bf5: $b2
    and b                                         ; $6bf6: $a0
    adc $e2                                       ; $6bf7: $ce $e2
    dec c                                         ; $6bf9: $0d
    ccf                                           ; $6bfa: $3f
    ld l, e                                       ; $6bfb: $6b
    ld c, e                                       ; $6bfc: $4b
    dec hl                                        ; $6bfd: $2b
    ld a, [bc]                                    ; $6bfe: $0a
    ld a, [bc]                                    ; $6bff: $0a
    ld a, [bc]                                    ; $6c00: $0a
    add e                                         ; $6c01: $83
    ldh [$f4], a                                  ; $6c02: $e0 $f4
    pop bc                                        ; $6c04: $c1
    ld hl, sp-$40                                 ; $6c05: $f8 $c0
    db $e3                                        ; $6c07: $e3
    ld b, d                                       ; $6c08: $42
    rst $38                                       ; $6c09: $ff
    ret nz                                        ; $6c0a: $c0

    rst $20                                       ; $6c0b: $e7
    dec bc                                        ; $6c0c: $0b
    dec hl                                        ; $6c0d: $2b
    ld c, e                                       ; $6c0e: $4b
    ld l, e                                       ; $6c0f: $6b
    ld a, [hl+]                                   ; $6c10: $2a
    rla                                           ; $6c11: $17
    ld a, [hl+]                                   ; $6c12: $2a
    ld c, e                                       ; $6c13: $4b
    dec l                                         ; $6c14: $2d
    ret nz                                        ; $6c15: $c0

    ld [c], a                                     ; $6c16: $e2
    dec bc                                        ; $6c17: $0b
    add b                                         ; $6c18: $80
    ldh [$91], a                                  ; $6c19: $e0 $91
    or l                                          ; $6c1b: $b5
    ret nz                                        ; $6c1c: $c0

    rst $08                                       ; $6c1d: $cf
    cp $82                                        ; $6c1e: $fe $82
    call nz, Call_02d_4b4b                        ; $6c20: $c4 $4b $4b
    dec bc                                        ; $6c23: $0b
    ld c, e                                       ; $6c24: $4b
    dec l                                         ; $6c25: $2d
    dec l                                         ; $6c26: $2d
    dec l                                         ; $6c27: $2d
    db $10                                        ; $6c28: $10
    ret nz                                        ; $6c29: $c0

    cp $02                                        ; $6c2a: $fe $02
    db $ed                                        ; $6c2c: $ed
    ld b, d                                       ; $6c2d: $42
    call nz, $c083                                ; $6c2e: $c4 $83 $c0
    dec bc                                        ; $6c31: $0b
    pop bc                                        ; $6c32: $c1
    ldh [$80], a                                  ; $6c33: $e0 $80
    db $e4                                        ; $6c35: $e4
    cp c                                          ; $6c36: $b9
    and e                                         ; $6c37: $a3
    ld b, h                                       ; $6c38: $44
    cp $dc                                        ; $6c39: $fe $dc
    ret z                                         ; $6c3b: $c8

    add d                                         ; $6c3c: $82
    ld l, l                                       ; $6c3d: $6d
    rst $00                                       ; $6c3e: $c7
    and c                                         ; $6c3f: $a1
    ld b, l                                       ; $6c40: $45

Call_02d_6c41:
    pop bc                                        ; $6c41: $c1
    ld c, d                                       ; $6c42: $4a
    pop hl                                        ; $6c43: $e1
    dec l                                         ; $6c44: $2d
    push af                                       ; $6c45: $f5
    jp nz, $b920                                  ; $6c46: $c2 $20 $b9

    and h                                         ; $6c49: $a4
    ld a, $fe                                     ; $6c4a: $3e $fe
    add [hl]                                      ; $6c4c: $86
    add c                                         ; $6c4d: $81
    pop bc                                        ; $6c4e: $c1
    ld [c], a                                     ; $6c4f: $e2
    add d                                         ; $6c50: $82
    pop hl                                        ; $6c51: $e1
    ld c, e                                       ; $6c52: $4b
    rst $38                                       ; $6c53: $ff
    ldh [$b8], a                                  ; $6c54: $e0 $b8
    and e                                         ; $6c56: $a3
    ld b, [hl]                                    ; $6c57: $46
    or d                                          ; $6c58: $b2
    pop bc                                        ; $6c59: $c1
    dec bc                                        ; $6c5a: $0b
    dec c                                         ; $6c5b: $0d
    scf                                           ; $6c5c: $37
    and d                                         ; $6c5d: $a2
    ld [bc], a                                    ; $6c5e: $02
    rst $38                                       ; $6c5f: $ff
    call nc, $2de2                                ; $6c60: $d4 $e2 $2d
    ld [bc], a                                    ; $6c63: $02
    ret nz                                        ; $6c64: $c0

    add b                                         ; $6c65: $80
    ret nz                                        ; $6c66: $c0

    pop hl                                        ; $6c67: $e1
    ld a, e                                       ; $6c68: $7b
    pop hl                                        ; $6c69: $e1
    ld b, d                                       ; $6c6a: $42
    pop bc                                        ; $6c6b: $c1
    dec [hl]                                      ; $6c6c: $35
    and d                                         ; $6c6d: $a2
    ret nz                                        ; $6c6e: $c0

    di                                            ; $6c6f: $f3
    inc b                                         ; $6c70: $04
    adc l                                         ; $6c71: $8d
    ld c, l                                       ; $6c72: $4d
    and d                                         ; $6c73: $a2
    dec c                                         ; $6c74: $0d
    inc bc                                        ; $6c75: $03
    dec l                                         ; $6c76: $2d
    dec bc                                        ; $6c77: $0b
    add c                                         ; $6c78: $81
    pop hl                                        ; $6c79: $e1
    ld a, a                                       ; $6c7a: $7f
    ld [c], a                                     ; $6c7b: $e2
    add c                                         ; $6c7c: $81
    db $e4                                        ; $6c7d: $e4
    xor e                                         ; $6c7e: $ab
    pop hl                                        ; $6c7f: $e1
    db $fc                                        ; $6c80: $fc
    or c                                          ; $6c81: $b1
    add b                                         ; $6c82: $80
    pop af                                        ; $6c83: $f1
    inc a                                         ; $6c84: $3c
    add c                                         ; $6c85: $81
    ldh [$c1], a                                  ; $6c86: $e0 $c1
    ld [c], a                                     ; $6c88: $e2
    dec hl                                        ; $6c89: $2b
    dec bc                                        ; $6c8a: $0b
    ld a, [bc]                                    ; $6c8b: $0a
    ld l, d                                       ; $6c8c: $6a
    ld bc, $bce4                                  ; $6c8d: $01 $e4 $bc
    and b                                         ; $6c90: $a0
    pop bc                                        ; $6c91: $c1
    ld l, l                                       ; $6c92: $6d
    xor l                                         ; $6c93: $ad
    ld h, h                                       ; $6c94: $64
    ld b, h                                       ; $6c95: $44
    cp e                                          ; $6c96: $bb
    adc c                                         ; $6c97: $89
    add b                                         ; $6c98: $80
    ld c, e                                       ; $6c99: $4b
    ret nz                                        ; $6c9a: $c0

    ret nz                                        ; $6c9b: $c0

    db $e3                                        ; $6c9c: $e3
    ld c, e                                       ; $6c9d: $4b
    ld a, [bc]                                    ; $6c9e: $0a
    rrca                                          ; $6c9f: $0f
    ld c, d                                       ; $6ca0: $4a
    ld a, [hl+]                                   ; $6ca1: $2a
    dec bc                                        ; $6ca2: $0b
    dec hl                                        ; $6ca3: $2b
    ret nz                                        ; $6ca4: $c0

    db $e4                                        ; $6ca5: $e4
    ld a, [hl]                                    ; $6ca6: $7e
    and c                                         ; $6ca7: $a1
    ret nz                                        ; $6ca8: $c0

    rst $38                                       ; $6ca9: $ff
    ld d, d                                       ; $6caa: $52
    add c                                         ; $6cab: $81
    ld l, a                                       ; $6cac: $6f
    dec l                                         ; $6cad: $2d
    dec l                                         ; $6cae: $2d
    ld l, e                                       ; $6caf: $6b
    ld l, e                                       ; $6cb0: $6b
    ret nz                                        ; $6cb1: $c0

    db $e4                                        ; $6cb2: $e4
    ld a, [bc]                                    ; $6cb3: $0a
    dec hl                                        ; $6cb4: $2b
    pop bc                                        ; $6cb5: $c1
    add b                                         ; $6cb6: $80
    or b                                          ; $6cb7: $b0
    ret nz                                        ; $6cb8: $c0

    push hl                                       ; $6cb9: $e5
    pop hl                                        ; $6cba: $e1
    ld h, [hl]                                    ; $6cbb: $66
    nop                                           ; $6cbc: $00
    sub $03                                       ; $6cbd: $d6 $03
    and h                                         ; $6cbf: $a4
    dec bc                                        ; $6cc0: $0b
    ld l, e                                       ; $6cc1: $6b
    ld bc, $6be2                                  ; $6cc2: $01 $e2 $6b
    rlca                                          ; $6cc5: $07
    ld c, e                                       ; $6cc6: $4b
    ld a, [hl+]                                   ; $6cc7: $2a
    ld a, [bc]                                    ; $6cc8: $0a
    cp d                                          ; $6cc9: $ba
    ld h, d                                       ; $6cca: $62
    ld sp, $76a1                                  ; $6ccb: $31 $a1 $76
    and b                                         ; $6cce: $a0
    add hl, sp                                    ; $6ccf: $39
    ld h, h                                       ; $6cd0: $64
    cp $55                                        ; $6cd1: $fe $55
    ld [bc], a                                    ; $6cd3: $02
    ret nz                                        ; $6cd4: $c0

    add sp, $0b                                   ; $6cd5: $e8 $0b
    add b                                         ; $6cd7: $80
    pop hl                                        ; $6cd8: $e1
    add b                                         ; $6cd9: $80
    add c                                         ; $6cda: $81
    cp e                                          ; $6cdb: $bb
    jp $e2c0                                      ; $6cdc: $c3 $c0 $e2


    ld b, b                                       ; $6cdf: $40
    rst $18                                       ; $6ce0: $df
    call nz, Call_000_0c69                        ; $6ce1: $c4 $69 $0c
    add b                                         ; $6ce4: $80
    jp nz, $81fa                                  ; $6ce5: $c2 $fa $81

    dec hl                                        ; $6ce8: $2b
    ld l, e                                       ; $6ce9: $6b
    ret nz                                        ; $6cea: $c0

    pop hl                                        ; $6ceb: $e1
    or a                                          ; $6cec: $b7
    ld h, c                                       ; $6ced: $61
    ld [hl], a                                    ; $6cee: $77
    ld h, c                                       ; $6cef: $61
    call nz, Call_000_127f                        ; $6cf0: $c4 $7f $12
    ld b, e                                       ; $6cf3: $43
    and h                                         ; $6cf4: $a4
    dec bc                                        ; $6cf5: $0b
    ccf                                           ; $6cf6: $3f
    ret nz                                        ; $6cf7: $c0

    ld c, b                                       ; $6cf8: $48
    add b                                         ; $6cf9: $80
    dec hl                                        ; $6cfa: $2b
    ret nz                                        ; $6cfb: $c0

    pop hl                                        ; $6cfc: $e1
    rst $28                                       ; $6cfd: $ef
    ld h, h                                       ; $6cfe: $64
    cp d                                          ; $6cff: $ba
    ld [hl], e                                    ; $6d00: $73
    nop                                           ; $6d01: $00
    ld b, $67                                     ; $6d02: $06 $67
    ld hl, sp+$20                                 ; $6d04: $f8 $20
    add hl, bc                                    ; $6d06: $09
    ld h, l                                       ; $6d07: $65
    call nz, $8481                                ; $6d08: $c4 $81 $84
    ld h, b                                       ; $6d0b: $60
    add b                                         ; $6d0c: $80
    ld h, b                                       ; $6d0d: $60
    cp b                                          ; $6d0e: $b8
    and c                                         ; $6d0f: $a1
    cp [hl]                                       ; $6d10: $be
    and d                                         ; $6d11: $a2
    jr nz, jr_02d_6d8f                            ; $6d12: $20 $7b

    pop hl                                        ; $6d14: $e1
    dec sp                                        ; $6d15: $3b
    add l                                         ; $6d16: $85
    ld [bc], a                                    ; $6d17: $02
    or l                                          ; $6d18: $b5
    adc h                                         ; $6d19: $8c
    ld b, c                                       ; $6d1a: $41
    ld b, h                                       ; $6d1b: $44
    and d                                         ; $6d1c: $a2
    dec hl                                        ; $6d1d: $2b
    add [hl]                                      ; $6d1e: $86
    and b                                         ; $6d1f: $a0
    add e                                         ; $6d20: $83
    and c                                         ; $6d21: $a1
    add b                                         ; $6d22: $80
    add c                                         ; $6d23: $81
    ldh [$79], a                                  ; $6d24: $e0 $79
    ld h, b                                       ; $6d26: $60
    cp [hl]                                       ; $6d27: $be
    and l                                         ; $6d28: $a5
    ld a, l                                       ; $6d29: $7d
    call nz, Call_02d_5608                        ; $6d2a: $c4 $08 $56
    ld [$d761], sp                                ; $6d2d: $08 $61 $d7
    db $e3                                        ; $6d30: $e3
    ld c, e                                       ; $6d31: $4b
    nop                                           ; $6d32: $00
    ld c, b                                       ; $6d33: $48
    ldh [rSB], a                                  ; $6d34: $e0 $01
    db $e4                                        ; $6d36: $e4
    cp e                                          ; $6d37: $bb
    ld b, d                                       ; $6d38: $42
    cp [hl]                                       ; $6d39: $be
    and [hl]                                      ; $6d3a: $a6
    ret z                                         ; $6d3b: $c8

    ld a, [hl-]                                   ; $6d3c: $3a
    ld e, b                                       ; $6d3d: $58
    and e                                         ; $6d3e: $a3
    adc c                                         ; $6d3f: $89
    pop hl                                        ; $6d40: $e1
    ld c, c                                       ; $6d41: $49
    ld [c], a                                     ; $6d42: $e2
    ld [bc], a                                    ; $6d43: $02
    rst $38                                       ; $6d44: $ff
    ret nz                                        ; $6d45: $c0

    ld l, e                                       ; $6d46: $6b
    ld a, a                                       ; $6d47: $7f
    push hl                                       ; $6d48: $e5
    ccf                                           ; $6d49: $3f
    ld h, c                                       ; $6d4a: $61
    inc a                                         ; $6d4b: $3c
    ld h, c                                       ; $6d4c: $61
    cp $56                                        ; $6d4d: $fe $56
    ld e, d                                       ; $6d4f: $5a
    and [hl]                                      ; $6d50: $a6
    ld b, l                                       ; $6d51: $45
    add c                                         ; $6d52: $81
    ld b, $c3                                     ; $6d53: $06 $c3
    add [hl]                                      ; $6d55: $86
    ld l, e                                       ; $6d56: $6b
    ld l, e                                       ; $6d57: $6b
    cp [hl]                                       ; $6d58: $be
    pop hl                                        ; $6d59: $e1
    push af                                       ; $6d5a: $f5
    ld [hl+], a                                   ; $6d5b: $22
    or a                                          ; $6d5c: $b7
    ld h, b                                       ; $6d5d: $60
    ld [hl], l                                    ; $6d5e: $75

jr_02d_6d5f:
    jr z, jr_02d_6d5f                             ; $6d5f: $28 $fe

    dec c                                         ; $6d61: $0d
    db $10                                        ; $6d62: $10
    add $a6                                       ; $6d63: $c6 $a6
    ret nz                                        ; $6d65: $c0

    db $e3                                        ; $6d66: $e3
    jp Jump_02d_4183                              ; $6d67: $c3 $83 $41


    add c                                         ; $6d6a: $81
    ld l, e                                       ; $6d6b: $6b
    ei                                            ; $6d6c: $fb
    inc h                                         ; $6d6d: $24
    inc a                                         ; $6d6e: $3c
    ld h, [hl]                                    ; $6d6f: $66
    ld a, h                                       ; $6d70: $7c
    or $00                                        ; $6d71: $f6 $00
    add $a4                                       ; $6d73: $c6 $a4
    ret z                                         ; $6d75: $c8

    ld h, d                                       ; $6d76: $62
    ld b, h                                       ; $6d77: $44
    ld hl, $a1c8                                  ; $6d78: $21 $c8 $a1
    ld [bc], a                                    ; $6d7b: $02
    ret nz                                        ; $6d7c: $c0

    ei                                            ; $6d7d: $fb
    inc h                                         ; $6d7e: $24
    xor a                                         ; $6d7f: $af
    ld hl, $b63e                                  ; $6d80: $21 $3e $b6
    nop                                           ; $6d83: $00
    adc d                                         ; $6d84: $8a
    ld h, $4b                                     ; $6d85: $26 $4b
    ld h, d                                       ; $6d87: $62
    jp nz, $fde3                                  ; $6d88: $c2 $e3 $fd

    add b                                         ; $6d8b: $80
    ld bc, $c1c0                                  ; $6d8c: $01 $c0 $c1

jr_02d_6d8f:
    pop hl                                        ; $6d8f: $e1
    ld a, [hl]                                    ; $6d90: $7e
    pop bc                                        ; $6d91: $c1
    dec sp                                        ; $6d92: $3b
    ld b, d                                       ; $6d93: $42
    ret nz                                        ; $6d94: $c0

    cp a                                          ; $6d95: $bf
    and e                                         ; $6d96: $a3
    ld c, e                                       ; $6d97: $4b
    inc c                                         ; $6d98: $0c
    ld [$ca85], sp                                ; $6d99: $08 $85 $ca
    inc hl                                        ; $6d9c: $23
    add d                                         ; $6d9d: $82
    db $e4                                        ; $6d9e: $e4
    ret nz                                        ; $6d9f: $c0

    add c                                         ; $6da0: $81
    ld l, e                                       ; $6da1: $6b
    ld l, e                                       ; $6da2: $6b
    add b                                         ; $6da3: $80
    ld a, [hl-]                                   ; $6da4: $3a
    ld h, d                                       ; $6da5: $62
    dec a                                         ; $6da6: $3d
    pop bc                                        ; $6da7: $c1
    ld a, l                                       ; $6da8: $7d
    ld h, h                                       ; $6da9: $64
    cp a                                          ; $6daa: $bf
    add $02                                       ; $6dab: $c6 $02
    cpl                                           ; $6dad: $2f
    ld c, d                                       ; $6dae: $4a
    dec h                                         ; $6daf: $25
    ld b, d                                       ; $6db0: $42
    db $e3                                        ; $6db1: $e3
    ld l, e                                       ; $6db2: $6b
    rra                                           ; $6db3: $1f
    inc c                                         ; $6db4: $0c
    inc c                                         ; $6db5: $0c
    inc c                                         ; $6db6: $0c
    inc l                                         ; $6db7: $2c
    inc l                                         ; $6db8: $2c
    ret nz                                        ; $6db9: $c0

    ldh [rSC], a                                  ; $6dba: $e0 $02
    ldh [$81], a                                  ; $6dbc: $e0 $81
    db $e3                                        ; $6dbe: $e3
    jp nz, Jump_000_22ba                          ; $6dbf: $c2 $ba $22

    dec bc                                        ; $6dc2: $0b
    cp $99                                        ; $6dc3: $fe $99

Call_02d_6dc5:
    db $10                                        ; $6dc5: $10
    inc hl                                        ; $6dc6: $23
    jp z, $c142                                   ; $6dc7: $ca $42 $c1

    ldh [$6c], a                                  ; $6dca: $e0 $6c
    ld c, h                                       ; $6dcc: $4c
    ld bc, $bf4c                                  ; $6dcd: $01 $4c $bf
    ldh [$80], a                                  ; $6dd0: $e0 $80
    ret nz                                        ; $6dd2: $c0

    cp l                                          ; $6dd3: $bd
    and d                                         ; $6dd4: $a2
    jp $fbe2                                      ; $6dd5: $c3 $e2 $fb


    ld hl, $f502                                  ; $6dd8: $21 $02 $f5
    ld c, d                                       ; $6ddb: $4a
    dec h                                         ; $6ddc: $25
    ld [bc], a                                    ; $6ddd: $02
    adc e                                         ; $6dde: $8b
    ld b, c                                       ; $6ddf: $41
    ld l, e                                       ; $6de0: $6b
    pop bc                                        ; $6de1: $c1
    pop hl                                        ; $6de2: $e1
    ld [hl], $20                                  ; $6de3: $36 $20
    cp a                                          ; $6de5: $bf
    ldh [$b0], a                                  ; $6de6: $e0 $b0
    pop hl                                        ; $6de8: $e1
    scf                                           ; $6de9: $37
    ld [hl+], a                                   ; $6dea: $22
    cp d                                          ; $6deb: $ba
    inc h                                         ; $6dec: $24
    adc [hl]                                      ; $6ded: $8e
    cp $57                                        ; $6dee: $fe $57
    ld c, $0e                                     ; $6df0: $0e $0e
    ld c, l                                       ; $6df2: $4d
    ld d, l                                       ; $6df3: $55
    ld b, c                                       ; $6df4: $41
    call Call_02d_4401                            ; $6df5: $cd $01 $44
    ldh [$4c], a                                  ; $6df8: $e0 $4c
    ld [$0044], sp                                ; $6dfa: $08 $44 $00
    cp a                                          ; $6dfd: $bf
    ld [c], a                                     ; $6dfe: $e2
    ld a, $02                                     ; $6dff: $3e $02
    dec hl                                        ; $6e01: $2b
    cp d                                          ; $6e02: $ba
    dec h                                         ; $6e03: $25
    ld a, $63                                     ; $6e04: $3e $63
    cp $12                                        ; $6e06: $fe $12
    add [hl]                                      ; $6e08: $86
    ld h, e                                       ; $6e09: $63
    and $09                                       ; $6e0a: $e6 $09
    add b                                         ; $6e0c: $80
    ld l, e                                       ; $6e0d: $6b
    inc l                                         ; $6e0e: $2c
    ld b, e                                       ; $6e0f: $43
    pop hl                                        ; $6e10: $e1
    adc b                                         ; $6e11: $88
    add c                                         ; $6e12: $81
    dec c                                         ; $6e13: $0d
    dec c                                         ; $6e14: $0d
    ld l, h                                       ; $6e15: $6c
    adc e                                         ; $6e16: $8b
    inc l                                         ; $6e17: $2c
    inc c                                         ; $6e18: $0c
    ld b, c                                       ; $6e19: $41
    pop bc                                        ; $6e1a: $c1
    ld l, e                                       ; $6e1b: $6b
    pop bc                                        ; $6e1c: $c1
    db $eb                                        ; $6e1d: $eb
    ld b, $96                                     ; $6e1e: $06 $96
    add [hl]                                      ; $6e20: $86
    ld h, c                                       ; $6e21: $61
    ld l, e                                       ; $6e22: $6b
    rst $08                                       ; $6e23: $cf
    ld c, e                                       ; $6e24: $4b
    inc l                                         ; $6e25: $2c
    inc l                                         ; $6e26: $2c
    ld l, h                                       ; $6e27: $6c
    ld b, d                                       ; $6e28: $42
    ldh [$0a], a                                  ; $6e29: $e0 $0a
    ret nz                                        ; $6e2b: $c0

    ld c, e                                       ; $6e2c: $4b
    dec c                                         ; $6e2d: $0d
    inc bc                                        ; $6e2e: $03
    ld l, h                                       ; $6e2f: $6c
    inc c                                         ; $6e30: $0c
    ret nz                                        ; $6e31: $c0

    pop hl                                        ; $6e32: $e1
    cp d                                          ; $6e33: $ba
    inc h                                         ; $6e34: $24
    jp nz, Jump_02d_499b                          ; $6e35: $c2 $9b $49

    dec b                                         ; $6e38: $05
    add a                                         ; $6e39: $87
    ret nz                                        ; $6e3a: $c0

    ld b, d                                       ; $6e3b: $42
    ld [c], a                                     ; $6e3c: $e2
    ld c, $44                                     ; $6e3d: $0e $44
    ld hl, $2c0d                                  ; $6e3f: $21 $0d $2c
    inc c                                         ; $6e42: $0c
    ccf                                           ; $6e43: $3f
    ldh [$be], a                                  ; $6e44: $e0 $be
    add d                                         ; $6e46: $82
    ret nz                                        ; $6e47: $c0

    ld hl, sp+$06                                 ; $6e48: $f8 $06
    ld l, d                                       ; $6e4a: $6a
    db $f4                                        ; $6e4b: $f4
    ld b, e                                       ; $6e4c: $43
    ldh [rSCY], a                                 ; $6e4d: $e0 $42
    pop hl                                        ; $6e4f: $e1
    ld c, e                                       ; $6e50: $4b
    ccf                                           ; $6e51: $3f
    and b                                         ; $6e52: $a0
    ld l, e                                       ; $6e53: $6b
    dec c                                         ; $6e54: $0d
    dec l                                         ; $6e55: $2d
    inc l                                         ; $6e56: $2c
    add b                                         ; $6e57: $80
    rst $38                                       ; $6e58: $ff
    pop bc                                        ; $6e59: $c1
    ret nz                                        ; $6e5a: $c0

    db $e3                                        ; $6e5b: $e3
    daa                                           ; $6e5c: $27
    add c                                         ; $6e5d: $81
    db $fd                                        ; $6e5e: $fd
    inc b                                         ; $6e5f: $04
    ld [bc], a                                    ; $6e60: $02
    or l                                          ; $6e61: $b5
    ld b, c                                       ; $6e62: $41
    add c                                         ; $6e63: $81
    ret nz                                        ; $6e64: $c0

    pop hl                                        ; $6e65: $e1
    inc l                                         ; $6e66: $2c
    ld de, $814b                                  ; $6e67: $11 $4b $81
    pop hl                                        ; $6e6a: $e1
    add d                                         ; $6e6b: $82
    ld h, b                                       ; $6e6c: $60
    or $c0                                        ; $6e6d: $f6 $c0
    ld c, h                                       ; $6e6f: $4c
    rst $38                                       ; $6e70: $ff
    ld h, d                                       ; $6e71: $62
    ccf                                           ; $6e72: $3f
    jp $207f                                      ; $6e73: $c3 $7f $20


    or b                                          ; $6e76: $b0
    pop bc                                        ; $6e77: $c1
    inc h                                         ; $6e78: $24
    ld [bc], a                                    ; $6e79: $02
    or e                                          ; $6e7a: $b3
    jp z, $4101                                   ; $6e7b: $ca $01 $41

    pop hl                                        ; $6e7e: $e1
    inc l                                         ; $6e7f: $2c
    inc c                                         ; $6e80: $0c
    dec [hl]                                      ; $6e81: $35
    jp nz, Jump_02d_412d                          ; $6e82: $c2 $2d $41

    dec c                                         ; $6e85: $0d
    ld a, [$c0a1]                                 ; $6e86: $fa $a1 $c0
    db $e3                                        ; $6e89: $e3
    cp l                                          ; $6e8a: $bd
    ld b, h                                       ; $6e8b: $44
    cp [hl]                                       ; $6e8c: $be
    ld d, $68                                     ; $6e8d: $16 $68
    add h                                         ; $6e8f: $84
    dec bc                                        ; $6e90: $0b
    adc [hl]                                      ; $6e91: $8e
    ret nz                                        ; $6e92: $c0

    inc h                                         ; $6e93: $24
    ld a, $e1                                     ; $6e94: $3e $e1
    ret nz                                        ; $6e96: $c0

    db $e3                                        ; $6e97: $e3
    dec l                                         ; $6e98: $2d
    ld a, h                                       ; $6e99: $7c
    and b                                         ; $6e9a: $a0
    ld b, c                                       ; $6e9b: $41
    and e                                         ; $6e9c: $a3
    dec hl                                        ; $6e9d: $2b
    cp b                                          ; $6e9e: $b8
    inc bc                                        ; $6e9f: $03

Jump_02d_6ea0:
    add b                                         ; $6ea0: $80
    add e                                         ; $6ea1: $83
    inc c                                         ; $6ea2: $0c
    cp $16                                        ; $6ea3: $fe $16
    call c, Call_02d_6c41                         ; $6ea5: $dc $41 $6c
    ld c, h                                       ; $6ea8: $4c
    ld b, [hl]                                    ; $6ea9: $46
    and e                                         ; $6eaa: $a3
    nop                                           ; $6eab: $00
    ld b, d                                       ; $6eac: $42
    pop bc                                        ; $6ead: $c1
    push bc                                       ; $6eae: $c5
    ld a, [hl]                                    ; $6eaf: $7e
    ld b, c                                       ; $6eb0: $41
    ld d, b                                       ; $6eb1: $50
    ld bc, $02c4                                  ; $6eb2: $01 $c4 $02
    xor [hl]                                      ; $6eb5: $ae
    nop                                           ; $6eb6: $00
    adc c                                         ; $6eb7: $89
    ld e, c                                       ; $6eb8: $59
    ld b, c                                       ; $6eb9: $41
    ld c, h                                       ; $6eba: $4c
    cp a                                          ; $6ebb: $bf

Jump_02d_6ebc:
    ld [c], a                                     ; $6ebc: $e2
    inc c                                         ; $6ebd: $0c
    add b                                         ; $6ebe: $80
    add b                                         ; $6ebf: $80
    ret nz                                        ; $6ec0: $c0

    halt                                          ; $6ec1: $76
    jp nz, Jump_02d_43fd                          ; $6ec2: $c2 $fd $43

    ret nz                                        ; $6ec5: $c0

    db $e3                                        ; $6ec6: $e3
    nop                                           ; $6ec7: $00
    ld hl, $d900                                  ; $6ec8: $21 $00 $d9
    ld b, [hl]                                    ; $6ecb: $46
    ld hl, $0b0b                                  ; $6ecc: $21 $0b $0b
    ld h, b                                       ; $6ecf: $60
    inc c                                         ; $6ed0: $0c
    ret nz                                        ; $6ed1: $c0

    jp Jump_000_3c80                              ; $6ed2: $c3 $80 $3c


    and c                                         ; $6ed5: $a1
    rst $30                                       ; $6ed6: $f7
    and b                                         ; $6ed7: $a0
    ret nz                                        ; $6ed8: $c0

    jp hl                                         ; $6ed9: $e9


    dec c                                         ; $6eda: $0d
    ld l, l                                       ; $6edb: $6d
    add c                                         ; $6edc: $81
    inc h                                         ; $6edd: $24
    ld h, h                                       ; $6ede: $64
    add $16                                       ; $6edf: $c6 $16
    ld a, a                                       ; $6ee1: $7f
    and c                                         ; $6ee2: $a1
    dec bc                                        ; $6ee3: $0b
    ld a, $e4                                     ; $6ee4: $3e $e4
    ld hl, sp-$5f                                 ; $6ee6: $f8 $a1
    ld l, h                                       ; $6ee8: $6c
    ld l, h                                       ; $6ee9: $6c
    or $64                                        ; $6eea: $f6 $64
    db $10                                        ; $6eec: $10
    ld bc, $43e2                                  ; $6eed: $01 $e2 $43
    ld h, c                                       ; $6ef0: $61
    nop                                           ; $6ef1: $00
    ld e, c                                       ; $6ef2: $59
    ld [bc], a                                    ; $6ef3: $02
    ld b, c                                       ; $6ef4: $41
    dec c                                         ; $6ef5: $0d
    add hl, de                                    ; $6ef6: $19
    and b                                         ; $6ef7: $a0
    ld a, $e2                                     ; $6ef8: $3e $e2
    pop bc                                        ; $6efa: $c1
    db $e3                                        ; $6efb: $e3
    ld b, b                                       ; $6efc: $40
    ld [hl], e                                    ; $6efd: $73
    add e                                         ; $6efe: $83
    add hl, sp                                    ; $6eff: $39
    ld h, d                                       ; $6f00: $62
    ld b, h                                       ; $6f01: $44
    ld b, l                                       ; $6f02: $45
    nop                                           ; $6f03: $00
    ld e, c                                       ; $6f04: $59
    ret nz                                        ; $6f05: $c0

    ld hl, $a056                                  ; $6f06: $21 $56 $a0
    ld c, h                                       ; $6f09: $4c
    db $fc                                        ; $6f0a: $fc
    ret nz                                        ; $6f0b: $c0

    db $10                                        ; $6f0c: $10
    ld b, c                                       ; $6f0d: $41
    add b                                         ; $6f0e: $80
    add d                                         ; $6f0f: $82
    db $e3                                        ; $6f10: $e3
    ld a, d                                       ; $6f11: $7a
    ld h, c                                       ; $6f12: $61
    cp [hl]                                       ; $6f13: $be
    inc bc                                        ; $6f14: $03
    ld c, l                                       ; $6f15: $4d
    ld a, [$3e80]                                 ; $6f16: $fa $80 $3e
    ld sp, hl                                     ; $6f19: $f9
    db $fc                                        ; $6f1a: $fc
    ld h, e                                       ; $6f1b: $63
    nop                                           ; $6f1c: $00
    inc a                                         ; $6f1d: $3c
    ld [c], a                                     ; $6f1e: $e2
    jp Jump_02d_7ae0                              ; $6f1f: $c3 $e0 $7a


    ld h, h                                       ; $6f22: $64
    add [hl]                                      ; $6f23: $86
    call nz, Call_02d_63c3                        ; $6f24: $c4 $c3 $63
    ld a, [de]                                    ; $6f27: $1a
    add e                                         ; $6f28: $83
    inc b                                         ; $6f29: $04
    scf                                           ; $6f2a: $37
    cp d                                          ; $6f2b: $ba
    ld h, [hl]                                    ; $6f2c: $66
    nop                                           ; $6f2d: $00
    cp [hl]                                       ; $6f2e: $be
    ld b, l                                       ; $6f2f: $45
    jp nz, $82e6                                  ; $6f30: $c2 $e6 $82

    ld e, e                                       ; $6f33: $5b
    cp $0a                                        ; $6f34: $fe $0a
    jr jr_02d_6f5a                                ; $6f36: $18 $22

    cp $f2                                        ; $6f38: $fe $f2
    cp a                                          ; $6f3a: $bf
    add $fe                                       ; $6f3b: $c6 $fe
    jp c, $c004                                   ; $6f3d: $da $04 $c0

    ei                                            ; $6f40: $fb
    ld b, b                                       ; $6f41: $40
    rra                                           ; $6f42: $1f
    ld l, l                                       ; $6f43: $6d
    nop                                           ; $6f44: $00
    ld b, [hl]                                    ; $6f45: $46
    ld a, c                                       ; $6f46: $79
    db $ed                                        ; $6f47: $ed
    ld b, d                                       ; $6f48: $42
    ld b, c                                       ; $6f49: $41
    ret nz                                        ; $6f4a: $c0

    db $fc                                        ; $6f4b: $fc
    db $fc                                        ; $6f4c: $fc
    ld bc, $7e00                                  ; $6f4d: $01 $00 $7e
    ld b, c                                       ; $6f50: $41
    db $fc                                        ; $6f51: $fc
    pop af                                        ; $6f52: $f1
    ld b, b                                       ; $6f53: $40
    add e                                         ; $6f54: $83
    ld [bc], a                                    ; $6f55: $02
    ld sp, hl                                     ; $6f56: $f9
    cp d                                          ; $6f57: $ba
    ld b, d                                       ; $6f58: $42
    add b                                         ; $6f59: $80

jr_02d_6f5a:
    daa                                           ; $6f5a: $27
    ld sp, hl                                     ; $6f5b: $f9
    call $80c0                                    ; $6f5c: $cd $c0 $80
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    reti                                          ; $6f61: $d9


    ld [hl+], a                                   ; $6f62: $22
    db $e3                                        ; $6f63: $e3
    add c                                         ; $6f64: $81
    ld bc, $22d7                                  ; $6f65: $01 $d7 $22
    db $fc                                        ; $6f68: $fc
    db $ec                                        ; $6f69: $ec
    ld b, c                                       ; $6f6a: $41
    ld b, [hl]                                    ; $6f6b: $46
    cp $5b                                        ; $6f6c: $fe $5b
    sbc e                                         ; $6f6e: $9b
    jr nz, @-$3e                                  ; $6f6f: $20 $c0

    nop                                           ; $6f71: $00
    or $bf                                        ; $6f72: $f6 $bf
    add e                                         ; $6f74: $83
    cp [hl]                                       ; $6f75: $be
    ld e, d                                       ; $6f76: $5a
    ld b, b                                       ; $6f77: $40
    ei                                            ; $6f78: $fb
    ld b, c                                       ; $6f79: $41
    add c                                         ; $6f7a: $81
    nop                                           ; $6f7b: $00
    db $dd                                        ; $6f7c: $dd
    ld c, l                                       ; $6f7d: $4d
    dec l                                         ; $6f7e: $2d
    sbc b                                         ; $6f7f: $98
    db $10                                        ; $6f80: $10
    and b                                         ; $6f81: $a0
    adc $80                                       ; $6f82: $ce $80
    db $fc                                        ; $6f84: $fc
    db $ed                                        ; $6f85: $ed
    dec c                                         ; $6f86: $0d
    ld c, e                                       ; $6f87: $4b
    inc bc                                        ; $6f88: $03
    ld b, e                                       ; $6f89: $43
    nop                                           ; $6f8a: $00
    sbc $4d                                       ; $6f8b: $de $4d
    ld bc, $512d                                  ; $6f8d: $01 $2d $51
    add b                                         ; $6f90: $80
    cp [hl]                                       ; $6f91: $be
    rst $28                                       ; $6f92: $ef
    ld [c], a                                     ; $6f93: $e2
    ld b, c                                       ; $6f94: $41
    ld b, h                                       ; $6f95: $44
    db $dd                                        ; $6f96: $dd
    ld a, [hl-]                                   ; $6f97: $3a
    add h                                         ; $6f98: $84
    or $42                                        ; $6f99: $f6 $42
    ei                                            ; $6f9b: $fb
    db $e3                                        ; $6f9c: $e3
    nop                                           ; $6f9d: $00
    adc d                                         ; $6f9e: $8a
    ld hl, $0381                                  ; $6f9f: $21 $81 $03
    add d                                         ; $6fa2: $82
    db $e4                                        ; $6fa3: $e4
    ret nz                                        ; $6fa4: $c0

    cp [hl]                                       ; $6fa5: $be
    ld [hl], $04                                  ; $6fa6: $36 $04
    cp h                                          ; $6fa8: $bc
    db $e4                                        ; $6fa9: $e4
    inc l                                         ; $6faa: $2c
    jr nz, jr_02d_6fec                            ; $6fab: $20 $3f

    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    ret z                                         ; $6faf: $c8

    rst $00                                       ; $6fb0: $c7
    ld [bc], a                                    ; $6fb1: $02
    or c                                          ; $6fb2: $b1
    nop                                           ; $6fb3: $00
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    ld bc, $ff00                                  ; $6fb6: $01 $00 $ff
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
    nop                                           ; $6fc6: $00
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
    nop                                           ; $6fd7: $00
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff

Jump_02d_6fe0:
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    inc b                                         ; $6fe8: $04
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff

jr_02d_6feb:
    db $f4                                        ; $6feb: $f4

jr_02d_6fec:
    di                                            ; $6fec: $f3
    rrca                                          ; $6fed: $0f
    rst $38                                       ; $6fee: $ff
    ld [$ffe0], a                                 ; $6fef: $ea $e0 $ff
    ldh [$f0], a                                  ; $6ff2: $e0 $f0
    push af                                       ; $6ff4: $f5
    ldh a, [$c0]                                  ; $6ff5: $f0 $c0
    jp hl                                         ; $6ff7: $e9


    nop                                           ; $6ff8: $00
    db $f4                                        ; $6ff9: $f4
    di                                            ; $6ffa: $f3
    ldh [rIE], a                                  ; $6ffb: $e0 $ff
    add b                                         ; $6ffd: $80
    db $eb                                        ; $6ffe: $eb
    halt                                          ; $6fff: $76
    db $e3                                        ; $7000: $e3
    jr nc, jr_02d_6feb                            ; $7001: $30 $e8

    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    ld bc, $ff00                                  ; $7006: $01 $00 $ff
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
    nop                                           ; $7016: $00
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
    nop                                           ; $7027: $00
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
    db $10                                        ; $7038: $10
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    ld a, [c]                                     ; $703f: $f2
    pop af                                        ; $7040: $f1
    pop af                                        ; $7041: $f1
    rst $38                                       ; $7042: $ff
    and $e0                                       ; $7043: $e6 $e0
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    ld a, $f3                                     ; $7048: $3e $f3
    ld a, [c]                                     ; $704a: $f2
    db $10                                        ; $704b: $10
    stop                                          ; $704c: $10 $00
    inc de                                        ; $704e: $13
    inc de                                        ; $704f: $13
    reti                                          ; $7050: $d9


    db $ec                                        ; $7051: $ec
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    ld [bc], a                                    ; $7056: $02
    nop                                           ; $7057: $00
    rrca                                          ; $7058: $0f
    ld [bc], a                                    ; $7059: $02
    ld [bc], a                                    ; $705a: $02
    nop                                           ; $705b: $00
    rrca                                          ; $705c: $0f
    inc b                                         ; $705d: $04
    ld [bc], a                                    ; $705e: $02
    nop                                           ; $705f: $00
    rrca                                          ; $7060: $0f
    ld b, $02                                     ; $7061: $06 $02
    nop                                           ; $7063: $00
    rrca                                          ; $7064: $0f
    ld [$0002], sp                                ; $7065: $08 $02 $00
    rrca                                          ; $7068: $0f
    ld b, $02                                     ; $7069: $06 $02
    nop                                           ; $706b: $00
    rrca                                          ; $706c: $0f
    inc b                                         ; $706d: $04
    ld [bc], a                                    ; $706e: $02
    nop                                           ; $706f: $00
    rrca                                          ; $7070: $0f
    ld [bc], a                                    ; $7071: $02
    ld [bc], a                                    ; $7072: $02
    nop                                           ; $7073: $00
    rrca                                          ; $7074: $0f
    rst $38                                       ; $7075: $ff
    nop                                           ; $7076: $00
    ld a, [bc]                                    ; $7077: $0a
    rrca                                          ; $7078: $0f
    ld [bc], a                                    ; $7079: $02
    ld e, $19                                     ; $707a: $1e $19
    rrca                                          ; $707c: $0f
    ld [bc], a                                    ; $707d: $02
    ld e, $28                                     ; $707e: $1e $28
    rrca                                          ; $7080: $0f
    ld [bc], a                                    ; $7081: $02
    ld e, $19                                     ; $7082: $1e $19
    rrca                                          ; $7084: $0f
    ld [bc], a                                    ; $7085: $02
    ld e, $ff                                     ; $7086: $1e $ff
    ld bc, $0337                                  ; $7088: $01 $37 $03
    ld de, $3a1e                                  ; $708b: $11 $1e $3a
    inc bc                                        ; $708e: $03
    ld de, $ff1e                                  ; $708f: $11 $1e $ff
    ld [bc], a                                    ; $7092: $02
    dec a                                         ; $7093: $3d
    ld bc, $1e14                                  ; $7094: $01 $14 $1e
    ld a, $01                                     ; $7097: $3e $01
    inc d                                         ; $7099: $14
    ld e, $3f                                     ; $709a: $1e $3f
    ld bc, $1e14                                  ; $709c: $01 $14 $1e
    ld a, $01                                     ; $709f: $3e $01
    inc d                                         ; $70a1: $14
    ld e, $ff                                     ; $70a2: $1e $ff
    ld bc, $d5fe                                  ; $70a4: $01 $fe $d5
    nop                                           ; $70a7: $00
    rst $38                                       ; $70a8: $ff
    ldh [rTIMA], a                                ; $70a9: $e0 $05
    ei                                            ; $70ab: $fb
    ldh [$0b], a                                  ; $70ac: $e0 $0b
    rst $30                                       ; $70ae: $f7
    pop hl                                        ; $70af: $e1
    nop                                           ; $70b0: $00
    ld [bc], a                                    ; $70b1: $02
    db $eb                                        ; $70b2: $eb
    nop                                           ; $70b3: $00
    jr z, @-$0f                                   ; $70b4: $28 $ef

    ldh [$90], a                                  ; $70b6: $e0 $90
    db $eb                                        ; $70b8: $eb
    ldh [$f5], a                                  ; $70b9: $e0 $f5
    nop                                           ; $70bb: $00
    ret z                                         ; $70bc: $c8

    ld a, [$e0e5]                                 ; $70bd: $fa $e5 $e0
    add b                                         ; $70c0: $80
    ld [$00e4], a                                 ; $70c1: $ea $e4 $00
    nop                                           ; $70c4: $00
    rla                                           ; $70c5: $17
    nop                                           ; $70c6: $00
    ld bc, $d612                                  ; $70c7: $01 $12 $d6
    ld [c], a                                     ; $70ca: $e2
    ld d, b                                       ; $70cb: $50
    rst $08                                       ; $70cc: $cf
    ldh [$e6], a                                  ; $70cd: $e0 $e6
    pop hl                                        ; $70cf: $e1
    ld [$e2da], a                                 ; $70d0: $ea $da $e2
    db $fd                                        ; $70d3: $fd
    db $e3                                        ; $70d4: $e3
    and $e1                                       ; $70d5: $e6 $e1
    ld d, a                                       ; $70d7: $57
    cpl                                           ; $70d8: $2f
    nop                                           ; $70d9: $00
    inc bc                                        ; $70da: $03
    ret nz                                        ; $70db: $c0

    ld [c], a                                     ; $70dc: $e2
    and b                                         ; $70dd: $a0
    xor a                                         ; $70de: $af
    ldh [$64], a                                  ; $70df: $e0 $64
    xor e                                         ; $70e1: $ab
    ldh [$c7], a                                  ; $70e2: $e0 $c7
    call nc, Call_000_2000                        ; $70e4: $d4 $00 $20
    ret nz                                        ; $70e7: $c0

    ld [c], a                                     ; $70e8: $e2
    jp z, $9ce1                                   ; $70e9: $ca $e1 $9c

    pop hl                                        ; $70ec: $e1
    ld e, a                                       ; $70ed: $5f
    nop                                           ; $70ee: $00
    ld d, l                                       ; $70ef: $55
    ld b, $96                                     ; $70f0: $06 $96
    ld [c], a                                     ; $70f2: $e2
    ld b, b                                       ; $70f3: $40
    adc a                                         ; $70f4: $8f
    ldh [$b2], a                                  ; $70f5: $e0 $b2
    adc e                                         ; $70f7: $8b

jr_02d_70f8:
    ldh [$a8], a                                  ; $70f8: $e0 $a8
    or $e2                                        ; $70fa: $f6 $e2
    sbc h                                         ; $70fc: $9c
    and h                                         ; $70fd: $a4
    db $e3                                        ; $70fe: $e3
    ld a, h                                       ; $70ff: $7c
    pop hl                                        ; $7100: $e1
    cp a                                          ; $7101: $bf
    nop                                           ; $7102: $00
    inc c                                         ; $7103: $0c
    add b                                         ; $7104: $80
    ld [c], a                                     ; $7105: $e2
    adc [hl]                                      ; $7106: $8e
    pop hl                                        ; $7107: $e1
    ld e, c                                       ; $7108: $59
    ld a, [$e06b]                                 ; $7109: $fa $6b $e0
    ld d, b                                       ; $710c: $50
    add h                                         ; $710d: $84
    ld [c], a                                     ; $710e: $e2
    add b                                         ; $710f: $80
    nop                                           ; $7110: $00
    db $fc                                        ; $7111: $fc
    rst $38                                       ; $7112: $ff
    ret nc                                        ; $7113: $d0

    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    and b                                         ; $7116: $a0
    cp $c2                                        ; $7117: $fe $c2
    ld hl, sp-$78                                 ; $7119: $f8 $88
    ldh a, [$80]                                  ; $711b: $f0 $80
    cp a                                          ; $711d: $bf
    ldh [rNR10], a                                ; $711e: $e0 $10
    ldh [rP1], a                                  ; $7120: $e0 $00
    ret nz                                        ; $7122: $c0

    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    ldh [$fd], a                                  ; $7125: $e0 $fd
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    ld a, [$dcff]                                 ; $7129: $fa $ff $dc
    rst $38                                       ; $712c: $ff
    ldh [rIE], a                                  ; $712d: $e0 $ff
    add c                                         ; $712f: $81
    or a                                          ; $7130: $b7
    cp $08                                        ; $7131: $fe $08
    ldh a, [$f8]                                  ; $7133: $f0 $f8
    push hl                                       ; $7135: $e5
    jr nz, jr_02d_70f8                            ; $7136: $20 $c0

    ld [hl], c                                    ; $7138: $71
    db $e3                                        ; $7139: $e3
    ld a, a                                       ; $713a: $7f
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    ccf                                           ; $713d: $3f
    rst $38                                       ; $713e: $ff
    cpl                                           ; $713f: $2f
    rst $38                                       ; $7140: $ff
    rra                                           ; $7141: $1f
    rst $38                                       ; $7142: $ff
    sbc a                                         ; $7143: $9f
    rst $38                                       ; $7144: $ff
    ld a, a                                       ; $7145: $7f
    rla                                           ; $7146: $17
    ld a, a                                       ; $7147: $7f
    dec bc                                        ; $7148: $0b
    ld a, a                                       ; $7149: $7f
    ld b, a                                       ; $714a: $47
    ccf                                           ; $714b: $3f
    rlca                                          ; $714c: $07
    rst $38                                       ; $714d: $ff
    rra                                           ; $714e: $1f
    inc bc                                        ; $714f: $03
    rra                                           ; $7150: $1f
    ld [de], a                                    ; $7151: $12
    rrca                                          ; $7152: $0f
    ld bc, $090f                                  ; $7153: $01 $0f $09
    rst $38                                       ; $7156: $ff
    rlca                                          ; $7157: $07
    ld bc, $0007                                  ; $7158: $01 $07 $00
    rlca                                          ; $715b: $07
    inc b                                         ; $715c: $04
    inc bc                                        ; $715d: $03
    jr @+$41                                      ; $715e: $18 $3f

    rst $38                                       ; $7160: $ff
    nop                                           ; $7161: $00
    rst $38                                       ; $7162: $ff
    add c                                         ; $7163: $81
    inc a                                         ; $7164: $3c
    db $10                                        ; $7165: $10
    ld b, h                                       ; $7166: $44
    and $c8                                       ; $7167: $e6 $c8
    ldh [rIE], a                                  ; $7169: $e0 $ff
    ret nz                                        ; $716b: $c0

    nop                                           ; $716c: $00
    ldh [$90], a                                  ; $716d: $e0 $90
    ldh [$80], a                                  ; $716f: $e0 $80
    ldh [rP1], a                                  ; $7171: $e0 $00
    ld a, d                                       ; $7173: $7a
    and d                                         ; $7174: $a2
    ldh [rNR41], a                                ; $7175: $e0 $20
    and b                                         ; $7177: $a0
    ldh [$7b], a                                  ; $7178: $e0 $7b
    rst $38                                       ; $717a: $ff
    rst $30                                       ; $717b: $f7
    rst $38                                       ; $717c: $ff
    jp c, $fde3                                   ; $717d: $da $e3 $fd

    ld [$c0e3], sp                                ; $7180: $08 $e3 $c0
    and h                                         ; $7183: $a4
    ld hl, sp-$20                                 ; $7184: $f8 $e0
    ld hl, sp-$20                                 ; $7186: $f8 $e0
    db $fc                                        ; $7188: $fc
    rst $38                                       ; $7189: $ff
    ldh a, [$fc]                                  ; $718a: $f0 $fc
    jp nc, $a0fc                                  ; $718c: $d2 $fc $a0

    db $fc                                        ; $718f: $fc
    ldh [$f8], a                                  ; $7190: $e0 $f8
    ei                                            ; $7192: $fb
    db $e4                                        ; $7193: $e4
    ld hl, sp-$80                                 ; $7194: $f8 $80
    pop hl                                        ; $7196: $e1
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $18                                       ; $7199: $df
    rst $38                                       ; $719a: $ff
    cp l                                          ; $719b: $bd
    ei                                            ; $719c: $fb
    rst $38                                       ; $719d: $ff
    jp $e0b6                                      ; $719e: $c3 $b6 $e0


    nop                                           ; $71a1: $00
    rst $20                                       ; $71a2: $e7
    db $fc                                        ; $71a3: $fc
    rst $38                                       ; $71a4: $ff
    db $f4                                        ; $71a5: $f4
    sbc a                                         ; $71a6: $9f
    rst $38                                       ; $71a7: $ff
    add sp, -$01                                  ; $71a8: $e8 $ff
    ld hl, sp-$02                                 ; $71aa: $f8 $fe
    cp $e0                                        ; $71ac: $fe $e0
    or $e0                                        ; $71ae: $f6 $e0
    db $fc                                        ; $71b0: $fc
    pop bc                                        ; $71b1: $c1
    rst $38                                       ; $71b2: $ff
    ld a, b                                       ; $71b3: $78
    ldh [$cb], a                                  ; $71b4: $e0 $cb
    jp $c5e2                                      ; $71b6: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $71b9: $f0 $e0
    rst $28                                       ; $71bb: $ef
    ld [$40c0], a                                 ; $71bc: $ea $c0 $40
    ld hl, sp-$20                                 ; $71bf: $f8 $e0
    ld [$e1d0], a                                 ; $71c1: $ea $d0 $e1
    rst $08                                       ; $71c4: $cf
    jp hl                                         ; $71c5: $e9


    db $fc                                        ; $71c6: $fc
    rst $38                                       ; $71c7: $ff
    pop de                                        ; $71c8: $d1
    cp $a6                                        ; $71c9: $fe $a6
    cp a                                          ; $71cb: $bf
    ld hl, sp-$38                                 ; $71cc: $f8 $c8
    ldh a, [$90]                                  ; $71ce: $f0 $90
    ldh [$a8], a                                  ; $71d0: $e0 $a8
    ld [hl], d                                    ; $71d2: $72
    ldh [rLCDC], a                                ; $71d3: $e0 $40
    db $fd                                        ; $71d5: $fd

jr_02d_71d6:
    add b                                         ; $71d6: $80
    db $10                                        ; $71d7: $10
    rst $20                                       ; $71d8: $e7
    pop hl                                        ; $71d9: $e1
    cp $8e                                        ; $71da: $fe $8e
    ldh a, [$30]                                  ; $71dc: $f0 $30

jr_02d_71de:
    ret nz                                        ; $71de: $c0

    ld hl, sp-$08                                 ; $71df: $f8 $f8
    push hl                                       ; $71e1: $e5
    ld h, d                                       ; $71e2: $62
    pop bc                                        ; $71e3: $c1
    db $10                                        ; $71e4: $10
    push hl                                       ; $71e5: $e5
    xor a                                         ; $71e6: $af
    ld a, a                                       ; $71e7: $7f
    sbc a                                         ; $71e8: $9f
    ld a, a                                       ; $71e9: $7f
    ld e, a                                       ; $71ea: $5f
    rst $38                                       ; $71eb: $ff
    ccf                                           ; $71ec: $3f
    ld d, a                                       ; $71ed: $57
    ccf                                           ; $71ee: $3f
    ld c, e                                       ; $71ef: $4b
    ccf                                           ; $71f0: $3f
    daa                                           ; $71f1: $27
    rra                                           ; $71f2: $1f
    rla                                           ; $71f3: $17
    rst $38                                       ; $71f4: $ff
    rrca                                          ; $71f5: $0f
    inc de                                        ; $71f6: $13
    rrca                                          ; $71f7: $0f
    ld a, [bc]                                    ; $71f8: $0a
    rlca                                          ; $71f9: $07
    add hl, bc                                    ; $71fa: $09
    rlca                                          ; $71fb: $07
    dec d                                         ; $71fc: $15
    rst $38                                       ; $71fd: $ff
    inc bc                                        ; $71fe: $03
    dec b                                         ; $71ff: $05
    inc bc                                        ; $7200: $03
    inc b                                         ; $7201: $04
    inc bc                                        ; $7202: $03
    ld [bc], a                                    ; $7203: $02
    ld bc, $ef18                                  ; $7204: $01 $18 $ef
    rst $38                                       ; $7207: $ff
    jp Jump_000_3c3c                              ; $7208: $c3 $3c $3c


    sbc d                                         ; $720b: $9a
    add $00                                       ; $720c: $c6 $00
    nop                                           ; $720e: $00
    ld b, b                                       ; $720f: $40
    cp a                                          ; $7210: $bf
    add b                                         ; $7211: $80
    ld b, b                                       ; $7212: $40
    add b                                         ; $7213: $80
    jr nz, jr_02d_71d6                            ; $7214: $20 $c0

    and b                                         ; $7216: $a0
    cp $e0                                        ; $7217: $fe $e0
    jr nz, jr_02d_71de                            ; $7219: $20 $c3

    ret nz                                        ; $721b: $c0

    ld d, b                                       ; $721c: $50
    db $f4                                        ; $721d: $f4
    ldh [rNR10], a                                ; $721e: $e0 $10
    push hl                                       ; $7220: $e5
    jp c, Jump_02d_64e1                           ; $7221: $da $e1 $64

    pop bc                                        ; $7224: $c1
    xor b                                         ; $7225: $a8
    ldh a, [rIE]                                  ; $7226: $f0 $ff
    ld [$e4f0], a                                 ; $7228: $ea $f0 $e4
    ld hl, sp-$0c                                 ; $722b: $f8 $f4
    ld hl, sp-$2c                                 ; $722d: $f8 $d4
    ld hl, sp-$41                                 ; $722f: $f8 $bf
    and h                                         ; $7231: $a4
    ld hl, sp-$18                                 ; $7232: $f8 $e8
    ldh a, [$e8]                                  ; $7234: $f0 $e8
    ldh a, [rNR10]                                ; $7236: $f0 $10
    jp hl                                         ; $7238: $e9


    jr @+$01                                      ; $7239: $18 $ff

    rst $20                                       ; $723b: $e7
    ld h, [hl]                                    ; $723c: $66
    add c                                         ; $723d: $81
    db $fc                                        ; $723e: $fc
    rst $38                                       ; $723f: $ff
    push af                                       ; $7240: $f5
    cp $e9                                        ; $7241: $fe $e9
    rst $38                                       ; $7243: $ff
    cp $fa                                        ; $7244: $fe $fa
    db $fc                                        ; $7246: $fc
    ld a, [$f9fc]                                 ; $7247: $fa $fc $f9
    cp $f5                                        ; $724a: $fe $f5
    rrca                                          ; $724c: $0f
    cp $fc                                        ; $724d: $fe $fc
    rst $38                                       ; $724f: $ff
    ld c, b                                       ; $7250: $48
    ld [hl+], a                                   ; $7251: $22
    db $eb                                        ; $7252: $eb
    and b                                         ; $7253: $a0
    ldh [$cc], a                                  ; $7254: $e0 $cc
    and e                                         ; $7256: $a3
    ei                                            ; $7257: $fb
    push bc                                       ; $7258: $c5
    db $fc                                        ; $7259: $fc
    pop af                                        ; $725a: $f1
    call $cbe3                                    ; $725b: $cd $e3 $cb
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    db $fd                                        ; $7260: $fd
    cp $d6                                        ; $7261: $fe $d6
    ld hl, sp+$77                                 ; $7263: $f8 $77
    xor b                                         ; $7265: $a8
    ldh a, [$d2]                                  ; $7266: $f0 $d2
    ld [de], a                                    ; $7268: $12
    ldh [$c0], a                                  ; $7269: $e0 $c0
    add b                                         ; $726b: $80
    ld d, b                                       ; $726c: $50
    sub $c0                                       ; $726d: $d6 $c0
    ld a, $20                                     ; $726f: $3e $20
    push bc                                       ; $7271: $c5
    db $dd                                        ; $7272: $dd
    cp $ee                                        ; $7273: $fe $ee
    ldh a, [$b1]                                  ; $7275: $f0 $b1
    ld a, [de]                                    ; $7277: $1a
    ldh [$f8], a                                  ; $7278: $e0 $f8

jr_02d_727a:
    push hl                                       ; $727a: $e5
    db $fc                                        ; $727b: $fc
    or d                                          ; $727c: $b2
    and c                                         ; $727d: $a1
    ld d, h                                       ; $727e: $54
    and c                                         ; $727f: $a1
    rst $38                                       ; $7280: $ff
    ld a, a                                       ; $7281: $7f
    cp a                                          ; $7282: $bf
    ld a, a                                       ; $7283: $7f
    ld l, a                                       ; $7284: $6f
    ccf                                           ; $7285: $3f
    rst $38                                       ; $7286: $ff
    ld e, a                                       ; $7287: $5f
    ccf                                           ; $7288: $3f
    cp a                                          ; $7289: $bf
    rra                                           ; $728a: $1f
    scf                                           ; $728b: $37
    rra                                           ; $728c: $1f
    dec hl                                        ; $728d: $2b
    rra                                           ; $728e: $1f
    ld a, a                                       ; $728f: $7f
    ld d, a                                       ; $7290: $57
    rrca                                          ; $7291: $0f
    rrca                                          ; $7292: $0f
    rlca                                          ; $7293: $07
    dec bc                                        ; $7294: $0b
    rlca                                          ; $7295: $07
    ld d, $14                                     ; $7296: $16 $14
    ldh [rIE], a                                  ; $7298: $e0 $ff
    dec bc                                        ; $729a: $0b
    ld bc, $0103                                  ; $729b: $01 $03 $01
    ld [bc], a                                    ; $729e: $02
    ld bc, $0005                                  ; $729f: $01 $05 $00
    ld d, l                                       ; $72a2: $55
    db $db                                        ; $72a3: $db
    ld [de], a                                    ; $72a4: $12
    ldh [rSCY], a                                 ; $72a5: $e0 $42
    sub b                                         ; $72a7: $90
    ld [$0ca0], a                                 ; $72a8: $ea $a0 $0c
    ldh [$c0], a                                  ; $72ab: $e0 $c0
    cp $e0                                        ; $72ad: $fe $e0
    rst $00                                       ; $72af: $c7
    ld b, b                                       ; $72b0: $40
    add b                                         ; $72b1: $80
    and b                                         ; $72b2: $a0
    jr nc, @-$5e                                  ; $72b3: $30 $a0

    jr nz, jr_02d_727a                            ; $72b5: $20 $c3

    jp c, $b0e7                                   ; $72b7: $da $e7 $b0

    ldh [rIE], a                                  ; $72ba: $e0 $ff
    db $f4                                        ; $72bc: $f4
    ldh [$e8], a                                  ; $72bd: $e0 $e8
    ldh a, [$f8]                                  ; $72bf: $f0 $f8
    ldh a, [$d8]                                  ; $72c1: $f0 $d8
    ldh a, [$bf]                                  ; $72c3: $f0 $bf
    xor b                                         ; $72c5: $a8
    ldh a, [$f4]                                  ; $72c6: $f0 $f4
    ldh [$f0], a                                  ; $72c8: $e0 $f0
    ldh [rNR41], a                                ; $72ca: $e0 $20
    rst $00                                       ; $72cc: $c7
    db $db                                        ; $72cd: $db
    ld a, [$e012]                                 ; $72ce: $fa $12 $e0
    sub c                                         ; $72d1: $91
    ld h, b                                       ; $72d2: $60
    ldh [$f6], a                                  ; $72d3: $e0 $f6
    db $fc                                        ; $72d5: $fc
    ld [$fdfc], a                                 ; $72d6: $ea $fc $fd
    rst $38                                       ; $72d9: $ff
    ld hl, sp-$04                                 ; $72da: $f8 $fc
    ld hl, sp-$06                                 ; $72dc: $f8 $fa
    db $fc                                        ; $72de: $fc
    or $fc                                        ; $72df: $f6 $fc
    db $fd                                        ; $72e1: $fd
    pop bc                                        ; $72e2: $c1
    cp $78                                        ; $72e3: $fe $78

jr_02d_72e5:
    push hl                                       ; $72e5: $e5
    inc l                                         ; $72e6: $2c
    push af                                       ; $72e7: $f5
    nop                                           ; $72e8: $00
    and c                                         ; $72e9: $a1
    xor $cc                                       ; $72ea: $ee $cc
    pop af                                        ; $72ec: $f1
    xor d                                         ; $72ed: $aa
    ld [bc], a                                    ; $72ee: $02
    add c                                         ; $72ef: $81
    rst $38                                       ; $72f0: $ff
    and b                                         ; $72f1: $a0
    pop bc                                        ; $72f2: $c1
    nop                                           ; $72f3: $00
    pop bc                                        ; $72f4: $c1
    add l                                         ; $72f5: $85
    jp $c3a1                                      ; $72f6: $c3 $a1 $c3


    rst $38                                       ; $72f9: $ff
    nop                                           ; $72fa: $00
    add e                                         ; $72fb: $83
    dec b                                         ; $72fc: $05
    add e                                         ; $72fd: $83
    ld b, b                                       ; $72fe: $40
    add c                                         ; $72ff: $81
    ld b, c                                       ; $7300: $41
    add b                                         ; $7301: $80
    db $f4                                        ; $7302: $f4
    ldh [$a0], a                                  ; $7303: $e0 $a0
    ld [hl], b                                    ; $7305: $70
    ret nz                                        ; $7306: $c0

    ld b, b                                       ; $7307: $40
    ld a, d                                       ; $7308: $7a
    ldh [$d1], a                                  ; $7309: $e0 $d1
    db $fc                                        ; $730b: $fc
    db $ec                                        ; $730c: $ec
    rst $38                                       ; $730d: $ff
    rst $18                                       ; $730e: $df
    ld a, [de]                                    ; $730f: $1a
    rst $38                                       ; $7310: $ff
    add b                                         ; $7311: $80
    ld e, $12                                     ; $7312: $1e $12
    ld [hl], h                                    ; $7314: $74
    add d                                         ; $7315: $82
    ld c, b                                       ; $7316: $48
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    ld bc, $5878                                  ; $7319: $01 $78 $58
    rst $38                                       ; $731c: $ff
    ld b, b                                       ; $731d: $40
    add c                                         ; $731e: $81
    add d                                         ; $731f: $82
    pop bc                                        ; $7320: $c1
    rst $38                                       ; $7321: $ff
    jr nz, jr_02d_72e5                            ; $7322: $20 $c1

    and c                                         ; $7324: $a1
    jp $c385                                      ; $7325: $c3 $85 $c3


    inc b                                         ; $7328: $04
    add e                                         ; $7329: $83
    ld l, a                                       ; $732a: $6f
    ld b, c                                       ; $732b: $41
    add e                                         ; $732c: $83
    ld [bc], a                                    ; $732d: $02
    add c                                         ; $732e: $81
    ld l, l                                       ; $732f: $6d
    add b                                         ; $7330: $80
    add b                                         ; $7331: $80
    and b                                         ; $7332: $a0
    ld sp, $dfe0                                  ; $7333: $31 $e0 $df
    ld d, b                                       ; $7336: $50
    ldh [$e4], a                                  ; $7337: $e0 $e4
    ldh a, [$d0]                                  ; $7339: $f0 $d0
    ret nc                                        ; $733b: $d0

    ld [c], a                                     ; $733c: $e2
    ld b, c                                       ; $733d: $41
    ld e, $3e                                     ; $733e: $1e $3e
    add $81                                       ; $7340: $c6 $81
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    jr nc, jr_02d_7346                            ; $7344: $30 $00

jr_02d_7346:
    add d                                         ; $7346: $82
    ret nc                                        ; $7347: $d0

    ldh [$a0], a                                  ; $7348: $e0 $a0
    xor c                                         ; $734a: $a9
    rrca                                          ; $734b: $0f
    ld [bc], a                                    ; $734c: $02
    ld bc, $0300                                  ; $734d: $01 $00 $03
    ld [hl], c                                    ; $7350: $71
    xor c                                         ; $7351: $a9
    pop af                                        ; $7352: $f1
    ldh [$60], a                                  ; $7353: $e0 $60
    add sp, $30                                   ; $7355: $e8 $30
    add e                                         ; $7357: $83
    nop                                           ; $7358: $00
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
    nop                                           ; $7369: $00
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
    nop                                           ; $737a: $00
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
    nop                                           ; $738b: $00
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
    ccf                                           ; $7398: $3f
    ld bc, $0000                                  ; $7399: $01 $00 $00
    nop                                           ; $739c: $00
    push af                                       ; $739d: $f5
    push bc                                       ; $739e: $c5
    push de                                       ; $739f: $d5
    push hl                                       ; $73a0: $e5
    ld [$c32f], a                                 ; $73a1: $ea $2f $c3
    ld c, a                                       ; $73a4: $4f
    ld a, $ff                                     ; $73a5: $3e $ff
    ld b, $01                                     ; $73a7: $06 $01
    ld hl, $c330                                  ; $73a9: $21 $30 $c3
    ld [hl+], a                                   ; $73ac: $22
    ld [hl], b                                    ; $73ad: $70
    inc hl                                        ; $73ae: $23
    ld [hl+], a                                   ; $73af: $22
    ld [hl], b                                    ; $73b0: $70
    inc hl                                        ; $73b1: $23
    ld [hl+], a                                   ; $73b2: $22
    ld [hl], b                                    ; $73b3: $70
    inc hl                                        ; $73b4: $23
    ld [hl+], a                                   ; $73b5: $22
    ld [hl], b                                    ; $73b6: $70
    inc hl                                        ; $73b7: $23
    ld [hl+], a                                   ; $73b8: $22
    ld [hl+], a                                   ; $73b9: $22
    ld [hl+], a                                   ; $73ba: $22
    ld [hl+], a                                   ; $73bb: $22
    ld a, c                                       ; $73bc: $79
    ld h, $00                                     ; $73bd: $26 $00
    ld l, a                                       ; $73bf: $6f
    add hl, hl                                    ; $73c0: $29
    ld bc, $4028                                  ; $73c1: $01 $28 $40
    add hl, bc                                    ; $73c4: $09
    ld a, [hl+]                                   ; $73c5: $2a
    ld h, [hl]                                    ; $73c6: $66
    ld l, a                                       ; $73c7: $6f
    ld a, [hl]                                    ; $73c8: $7e
    cp $fe                                        ; $73c9: $fe $fe
    jr nz, jr_02d_73cf                            ; $73cb: $20 $02

    jr jr_02d_743f                                ; $73cd: $18 $70

jr_02d_73cf:
    add sp, -$02                                  ; $73cf: $e8 $fe
    ld de, $c332                                  ; $73d1: $11 $32 $c3
    push hl                                       ; $73d4: $e5
    ld hl, sp+$02                                 ; $73d5: $f8 $02
    ld [hl], e                                    ; $73d7: $73
    inc hl                                        ; $73d8: $23
    ld [hl], d                                    ; $73d9: $72
    pop hl                                        ; $73da: $e1
    ld d, h                                       ; $73db: $54
    ld e, l                                       ; $73dc: $5d
    ld b, $ff                                     ; $73dd: $06 $ff
    ld c, $03                                     ; $73df: $0e $03
    xor a                                         ; $73e1: $af
    ld hl, $c330                                  ; $73e2: $21 $30 $c3
    ld [hl], a                                    ; $73e5: $77
    ld hl, $c338                                  ; $73e6: $21 $38 $c3
    ld [hl], a                                    ; $73e9: $77
    inc hl                                        ; $73ea: $23

jr_02d_73eb:
    inc b                                         ; $73eb: $04
    ld a, [de]                                    ; $73ec: $1a
    inc de                                        ; $73ed: $13
    cp $fe                                        ; $73ee: $fe $fe
    jr z, jr_02d_7427                             ; $73f0: $28 $35

    cp $ff                                        ; $73f2: $fe $ff
    jr nz, jr_02d_73eb                            ; $73f4: $20 $f5

    inc b                                         ; $73f6: $04
    ld a, b                                       ; $73f7: $78
    inc a                                         ; $73f8: $3c
    ld [hl], a                                    ; $73f9: $77
    push de                                       ; $73fa: $d5
    push hl                                       ; $73fb: $e5
    ld hl, sp+$04                                 ; $73fc: $f8 $04
    ld e, [hl]                                    ; $73fe: $5e
    inc hl                                        ; $73ff: $23
    ld d, [hl]                                    ; $7400: $56
    pop hl                                        ; $7401: $e1
    ld [de], a                                    ; $7402: $12
    inc de                                        ; $7403: $13
    inc de                                        ; $7404: $13
    push hl                                       ; $7405: $e5
    ld hl, sp+$04                                 ; $7406: $f8 $04
    ld [hl], e                                    ; $7408: $73
    inc hl                                        ; $7409: $23
    ld [hl], d                                    ; $740a: $72
    pop hl                                        ; $740b: $e1
    pop de                                        ; $740c: $d1
    ld a, [de]                                    ; $740d: $1a
    inc a                                         ; $740e: $3c
    inc de                                        ; $740f: $13
    push hl                                       ; $7410: $e5
    push de                                       ; $7411: $d5
    ld d, a                                       ; $7412: $57
    ld a, $04                                     ; $7413: $3e $04
    sub c                                         ; $7415: $91
    ld hl, $c330                                  ; $7416: $21 $30 $c3
    ld e, a                                       ; $7419: $5f
    ld a, d                                       ; $741a: $7a
    ld d, $00                                     ; $741b: $16 $00
    add hl, de                                    ; $741d: $19
    add hl, de                                    ; $741e: $19
    inc hl                                        ; $741f: $23
    ld [hl], a                                    ; $7420: $77
    pop de                                        ; $7421: $d1
    pop hl                                        ; $7422: $e1
    inc hl                                        ; $7423: $23
    dec c                                         ; $7424: $0d
    jr nz, jr_02d_73eb                            ; $7425: $20 $c4

jr_02d_7427:
    ld a, $ff                                     ; $7427: $3e $ff
    dec hl                                        ; $7429: $2b
    ld [hl], a                                    ; $742a: $77
    push hl                                       ; $742b: $e5
    ld hl, sp+$02                                 ; $742c: $f8 $02
    ld e, [hl]                                    ; $742e: $5e
    inc hl                                        ; $742f: $23
    ld d, [hl]                                    ; $7430: $56
    pop hl                                        ; $7431: $e1
    dec de                                        ; $7432: $1b
    dec de                                        ; $7433: $1b
    ld [de], a                                    ; $7434: $12
    ld a, $01                                     ; $7435: $3e $01
    ld hl, $7453                                  ; $7437: $21 $53 $74
    call Call_000_23e8                            ; $743a: $cd $e8 $23
    add sp, $02                                   ; $743d: $e8 $02

jr_02d_743f:
    pop hl                                        ; $743f: $e1
    pop de                                        ; $7440: $d1
    pop bc                                        ; $7441: $c1
    pop af                                        ; $7442: $f1
    ret                                           ; $7443: $c9


    push af                                       ; $7444: $f5
    push bc                                       ; $7445: $c5
    push de                                       ; $7446: $d5
    push hl                                       ; $7447: $e5
    ld hl, $7453                                  ; $7448: $21 $53 $74
    call Call_000_2449                            ; $744b: $cd $49 $24
    pop hl                                        ; $744e: $e1
    pop de                                        ; $744f: $d1
    pop bc                                        ; $7450: $c1
    pop af                                        ; $7451: $f1
    ret                                           ; $7452: $c9


    rst $30                                       ; $7453: $f7
    add b                                         ; $7454: $80
    inc bc                                        ; $7455: $03
    jr nz, jr_02d_745c                            ; $7456: $20 $04

    rst $30                                       ; $7458: $f7
    nop                                           ; $7459: $00
    inc bc                                        ; $745a: $03
    ret nz                                        ; $745b: $c0

jr_02d_745c:
    push af                                       ; $745c: $f5
    push bc                                       ; $745d: $c5
    push de                                       ; $745e: $d5
    push hl                                       ; $745f: $e5
    ldh a, [$96]                                  ; $7460: $f0 $96
    push af                                       ; $7462: $f5
    ld a, $06                                     ; $7463: $3e $06
    ldh [$96], a                                  ; $7465: $e0 $96
    ldh [rSVBK], a                                ; $7467: $e0 $70
    ld c, $00                                     ; $7469: $0e $00
    ld hl, $c338                                  ; $746b: $21 $38 $c3

jr_02d_746e:
    ld a, [hl]                                    ; $746e: $7e
    cp $ff                                        ; $746f: $fe $ff
    jr z, jr_02d_7490                             ; $7471: $28 $1d

    push hl                                       ; $7473: $e5
    ld l, c                                       ; $7474: $69
    ld h, $00                                     ; $7475: $26 $00
    add hl, hl                                    ; $7477: $29
    ld de, $c330                                  ; $7478: $11 $30 $c3
    add hl, de                                    ; $747b: $19
    inc hl                                        ; $747c: $23
    ld a, [hl]                                    ; $747d: $7e
    dec a                                         ; $747e: $3d
    ld [hl], a                                    ; $747f: $77
    pop hl                                        ; $7480: $e1
    inc hl                                        ; $7481: $23
    ld b, c                                       ; $7482: $41
    inc c                                         ; $7483: $0c
    or a                                          ; $7484: $b7
    jr nz, jr_02d_746e                            ; $7485: $20 $e7

    ld a, b                                       ; $7487: $78
    call Call_02d_749a                            ; $7488: $cd $9a $74
    ld a, c                                       ; $748b: $79
    cp $04                                        ; $748c: $fe $04
    jr nz, jr_02d_746e                            ; $748e: $20 $de

jr_02d_7490:
    pop af                                        ; $7490: $f1
    ldh [$96], a                                  ; $7491: $e0 $96
    ldh [rSVBK], a                                ; $7493: $e0 $70
    pop hl                                        ; $7495: $e1
    pop de                                        ; $7496: $d1
    pop bc                                        ; $7497: $c1
    pop af                                        ; $7498: $f1
    ret                                           ; $7499: $c9


Call_02d_749a:
    push af                                       ; $749a: $f5
    push bc                                       ; $749b: $c5
    push de                                       ; $749c: $d5
    push hl                                       ; $749d: $e5
    push af                                       ; $749e: $f5
    add sp, -$01                                  ; $749f: $e8 $ff
    ld hl, sp+$00                                 ; $74a1: $f8 $00
    ld [hl], a                                    ; $74a3: $77
    ld h, $00                                     ; $74a4: $26 $00
    ld l, a                                       ; $74a6: $6f
    add hl, hl                                    ; $74a7: $29
    ld bc, $c330                                  ; $74a8: $01 $30 $c3
    add hl, bc                                    ; $74ab: $09
    ld a, [hl]                                    ; $74ac: $7e
    ld [$c33c], a                                 ; $74ad: $ea $3c $c3

jr_02d_74b0:
    ld a, [$c32f]                                 ; $74b0: $fa $2f $c3
    ld l, a                                       ; $74b3: $6f
    ld h, $00                                     ; $74b4: $26 $00
    add hl, hl                                    ; $74b6: $29
    ld bc, $4028                                  ; $74b7: $01 $28 $40
    add hl, bc                                    ; $74ba: $09
    ld a, [hl+]                                   ; $74bb: $2a
    ld h, [hl]                                    ; $74bc: $66
    ld l, a                                       ; $74bd: $6f
    ld a, [$c33c]                                 ; $74be: $fa $3c $c3
    ld c, a                                       ; $74c1: $4f
    ld b, $00                                     ; $74c2: $06 $00
    add hl, bc                                    ; $74c4: $09
    ld a, [hl]                                    ; $74c5: $7e
    cp $ff                                        ; $74c6: $fe $ff
    jr nz, jr_02d_74d9                            ; $74c8: $20 $0f

    ld hl, sp+$00                                 ; $74ca: $f8 $00
    ld c, [hl]                                    ; $74cc: $4e
    ld b, $00                                     ; $74cd: $06 $00
    ld hl, $c338                                  ; $74cf: $21 $38 $c3
    add hl, bc                                    ; $74d2: $09
    ld a, [hl]                                    ; $74d3: $7e
    ld [$c33c], a                                 ; $74d4: $ea $3c $c3
    jr jr_02d_74b0                                ; $74d7: $18 $d7

jr_02d_74d9:
    ld b, a                                       ; $74d9: $47
    inc hl                                        ; $74da: $23
    ld c, [hl]                                    ; $74db: $4e
    inc hl                                        ; $74dc: $23
    ld e, [hl]                                    ; $74dd: $5e
    inc hl                                        ; $74de: $23
    ld a, [hl]                                    ; $74df: $7e
    push af                                       ; $74e0: $f5
    push bc                                       ; $74e1: $c5
    ld l, e                                       ; $74e2: $6b
    ld h, $00                                     ; $74e3: $26 $00
    add hl, hl                                    ; $74e5: $29
    add hl, hl                                    ; $74e6: $29
    add hl, hl                                    ; $74e7: $29
    add hl, hl                                    ; $74e8: $29
    ld de, $b000                                  ; $74e9: $11 $00 $b0
    add hl, de                                    ; $74ec: $19
    push hl                                       ; $74ed: $e5
    ld l, b                                       ; $74ee: $68
    ld h, $00                                     ; $74ef: $26 $00
    add hl, hl                                    ; $74f1: $29
    add hl, hl                                    ; $74f2: $29
    add hl, hl                                    ; $74f3: $29
    add hl, hl                                    ; $74f4: $29
    ld bc, $d800                                  ; $74f5: $01 $00 $d8
    add hl, bc                                    ; $74f8: $09
    pop de                                        ; $74f9: $d1
    pop bc                                        ; $74fa: $c1
    call Call_000_0468                            ; $74fb: $cd $68 $04
    ld a, [$c33c]                                 ; $74fe: $fa $3c $c3
    add $04                                       ; $7501: $c6 $04
    ld [$c33c], a                                 ; $7503: $ea $3c $c3
    pop af                                        ; $7506: $f1
    ld d, a                                       ; $7507: $57
    add sp, $01                                   ; $7508: $e8 $01
    pop af                                        ; $750a: $f1
    ld h, $00                                     ; $750b: $26 $00
    ld l, a                                       ; $750d: $6f
    add hl, hl                                    ; $750e: $29
    ld bc, $c330                                  ; $750f: $01 $30 $c3
    add hl, bc                                    ; $7512: $09
    ld a, [$c33c]                                 ; $7513: $fa $3c $c3
    ld [hl+], a                                   ; $7516: $22
    ld [hl], d                                    ; $7517: $72
    pop hl                                        ; $7518: $e1
    pop de                                        ; $7519: $d1
    pop bc                                        ; $751a: $c1
    pop af                                        ; $751b: $f1
    ret                                           ; $751c: $c9


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

Jump_02d_78fa:
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

Jump_02d_79c0:
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

Jump_02d_79fb:
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

Jump_02d_7ae0:
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

Call_02d_7aff:
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

Jump_02d_7b4d:
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

Jump_02d_7f7c:
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

Jump_02d_7fff:
    rst $38                                       ; $7fff: $ff
