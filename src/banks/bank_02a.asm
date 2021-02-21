; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

    cp a                                          ; $4000: $bf
    halt                                          ; $4001: $76
    ld h, [hl]                                    ; $4002: $66
    ld [hl], a                                    ; $4003: $77
    inc l                                         ; $4004: $2c
    ld b, b                                       ; $4005: $40
    inc [hl]                                      ; $4006: $34
    ld b, b                                       ; $4007: $40
    ld b, a                                       ; $4008: $47
    ld c, e                                       ; $4009: $4b
    add hl, bc                                    ; $400a: $09
    ld d, c                                       ; $400b: $51
    ld e, h                                       ; $400c: $5c
    ld d, [hl]                                    ; $400d: $56
    call z, $2956                                 ; $400e: $cc $56 $29
    ld d, a                                       ; $4011: $57
    ld a, [hl+]                                   ; $4012: $2a
    ld d, a                                       ; $4013: $57
    ld [hl], h                                    ; $4014: $74
    ld b, b                                       ; $4015: $40
    dec d                                         ; $4016: $15
    ld e, d                                       ; $4017: $5a
    dec e                                         ; $4018: $1d
    ld e, d                                       ; $4019: $5a
    jr nc, jr_02a_4081                            ; $401a: $30 $65

    sub e                                         ; $401c: $93
    ld l, h                                       ; $401d: $6c
    dec hl                                        ; $401e: $2b
    ld [hl], e                                    ; $401f: $73
    add h                                         ; $4020: $84
    ld [hl], e                                    ; $4021: $73
    db $d3                                        ; $4022: $d3
    ld [hl], e                                    ; $4023: $73
    call nc, Call_02a_5d73                        ; $4024: $d4 $73 $5d
    ld e, d                                       ; $4027: $5a
    add hl, hl                                    ; $4028: $29
    ld d, a                                       ; $4029: $57
    db $d3                                        ; $402a: $d3
    ld [hl], e                                    ; $402b: $73
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    ccf                                           ; $4030: $3f
    ccf                                           ; $4031: $3f
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    jr nz, jr_02a_4057                            ; $4035: $20 $20

    ld d, l                                       ; $4037: $55
    and b                                         ; $4038: $a0
    ld a, [hl]                                    ; $4039: $7e
    rst $38                                       ; $403a: $ff
    ld a, a                                       ; $403b: $7f
    ld [$0825], sp                                ; $403c: $08 $25 $08
    dec h                                         ; $403f: $25
    ld [$0825], sp                                ; $4040: $08 $25 $08
    dec h                                         ; $4043: $25
    rst $18                                       ; $4044: $df
    dec l                                         ; $4045: $2d
    rst $38                                       ; $4046: $ff
    ld d, e                                       ; $4047: $53
    sub b                                         ; $4048: $90
    inc bc                                        ; $4049: $03
    call nc, $ff01                                ; $404a: $d4 $01 $ff
    ld a, a                                       ; $404d: $7f
    db $f4                                        ; $404e: $f4
    inc bc                                        ; $404f: $03
    sub b                                         ; $4050: $90
    inc bc                                        ; $4051: $03
    call nc, $1601                                ; $4052: $d4 $01 $16
    ld a, l                                       ; $4055: $7d
    sbc a                                         ; $4056: $9f

jr_02a_4057:
    ld a, [hl]                                    ; $4057: $7e
    pop af                                        ; $4058: $f1
    nop                                           ; $4059: $00
    call nc, $ff01                                ; $405a: $d4 $01 $ff
    ld a, a                                       ; $405d: $7f
    sub b                                         ; $405e: $90
    inc bc                                        ; $405f: $03
    call nc, $ac01                                ; $4060: $d4 $01 $ac
    ld [$08f5], sp                                ; $4063: $08 $f5 $08
    ld a, a                                       ; $4066: $7f
    ld de, $1aff                                  ; $4067: $11 $ff $1a
    xor h                                         ; $406a: $ac
    ld [$2508], sp                                ; $406b: $08 $08 $25
    ld [$0825], sp                                ; $406e: $08 $25 $08
    dec h                                         ; $4071: $25
    ld [$d525], sp                                ; $4072: $08 $25 $d5

jr_02a_4075:
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

jr_02a_4081:
    nop                                           ; $4081: $00
    jr z, @-$0f                                   ; $4082: $28 $ef

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
    jr nz, jr_02a_4075                            ; $40b3: $20 $c0

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

Call_02a_40bf:
    rra                                           ; $40bf: $1f
    rst $38                                       ; $40c0: $ff
    or a                                          ; $40c1: $b7
    ld a, a                                       ; $40c2: $7f
    rra                                           ; $40c3: $1f
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

Call_02a_40d5:
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

Jump_02a_4162:
    ldh [rBCPS], a                                ; $4162: $e0 $68
    ldh a, [$f1]                                  ; $4164: $f0 $f1
    rst $38                                       ; $4166: $ff
    db $fc                                        ; $4167: $fc
    call c, Call_000_1eff                         ; $4168: $dc $ff $1e
    rst $38                                       ; $416b: $ff
    add b                                         ; $416c: $80
    ld e, $12                                     ; $416d: $1e $12
    ld a, [hl]                                    ; $416f: $7e
    call nc, Call_02a_48c2                        ; $4170: $d4 $c2 $48
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
    ld a, a                                       ; $4183: $7f
    nop                                           ; $4184: $00
    jr nz, jr_02a_4187                            ; $4185: $20 $00

jr_02a_4187:
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
    jp Jump_02a_7f7c                              ; $41af: $c3 $7c $7f


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

Jump_02a_422a:
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
    jp z, Jump_02a_6fe0                           ; $436e: $ca $e0 $6f

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
    ld l, l                                       ; $43fd: $6d
    nop                                           ; $43fe: $00
    cp e                                          ; $43ff: $bb
    nop                                           ; $4400: $00
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

jr_02a_4474:
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

Jump_02a_44a0:
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
    cp a                                          ; $44ab: $bf
    rrca                                          ; $44ac: $0f
    db $e3                                        ; $44ad: $e3
    rrca                                          ; $44ae: $0f
    jr jr_02a_4474                                ; $44af: $18 $c3

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

jr_02a_452a:
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
    jr nc, jr_02a_452a                            ; $455f: $30 $c9

    ld d, d                                       ; $4561: $52

Jump_02a_4562:
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

Jump_02a_4576:
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
    ld a, [$209a]                                 ; $45c0: $fa $9a $20
    xor [hl]                                      ; $45c3: $ae
    ld a, [hl-]                                   ; $45c4: $3a
    add b                                         ; $45c5: $80
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

jr_02a_45ee:
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

jr_02a_4601:
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
    jr c, jr_02a_45ee                             ; $4625: $38 $c7

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

jr_02a_4636:
    and c                                         ; $4636: $a1
    rst $38                                       ; $4637: $ff
    ld e, $8c                                     ; $4638: $1e $8c
    ld a, d                                       ; $463a: $7a
    ld d, a                                       ; $463b: $57
    xor b                                         ; $463c: $a8
    jr c, jr_02a_4601                             ; $463d: $38 $c2

    dec c                                         ; $463f: $0d
    rst $30                                       ; $4640: $f7
    ldh a, [$3d]                                  ; $4641: $f0 $3d
    jp nz, Jump_02a_61d8                          ; $4643: $c2 $d8 $61

Jump_02a_4646:
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
    jr nz, jr_02a_4636                            ; $467b: $20 $b9

    ld [bc], a                                    ; $467d: $02
    ld h, a                                       ; $467e: $67
    sbc b                                         ; $467f: $98

Call_02a_4680:
    rrca                                          ; $4680: $0f

Jump_02a_4681:
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
    ei                                            ; $46c3: $fb
    adc [hl]                                      ; $46c4: $8e
    ld a, a                                       ; $46c5: $7f
    sub b                                         ; $46c6: $90
    jp z, Jump_02a_5ac8                           ; $46c7: $ca $c8 $5a

    and c                                         ; $46ca: $a1
    inc a                                         ; $46cb: $3c
    jp Jump_02a_537f                              ; $46cc: $c3 $7f $53


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
    ld bc, $fffb                                  ; $4736: $01 $fb $ff
    ld h, b                                       ; $4739: $60
    db $f4                                        ; $473a: $f4
    and b                                         ; $473b: $a0
    nop                                           ; $473c: $00
    rst $38                                       ; $473d: $ff
    ld [hl+], a                                   ; $473e: $22
    rst $38                                       ; $473f: $ff
    ld [$aeae], sp                                ; $4740: $08 $ae $ae
    ld b, b                                       ; $4743: $40
    ld b, b                                       ; $4744: $40
    rst $38                                       ; $4745: $ff
    sub b                                         ; $4746: $90
    ld d, h                                       ; $4747: $54
    ldh [$28], a                                  ; $4748: $e0 $28
    call c, $28c0                                 ; $474a: $dc $c0 $28
    ld [hl], d                                    ; $474d: $72
    sbc $c0                                       ; $474e: $de $c0
    ld b, b                                       ; $4750: $40
    sbc a                                         ; $4751: $9f
    ld h, c                                       ; $4752: $61
    rst $38                                       ; $4753: $ff
    db $ec                                        ; $4754: $ec
    ld d, l                                       ; $4755: $55
    nop                                           ; $4756: $00
    cp d                                          ; $4757: $ba
    cp [hl]                                       ; $4758: $be
    add b                                         ; $4759: $80
    ld e, a                                       ; $475a: $5f
    xor e                                         ; $475b: $ab
    nop                                           ; $475c: $00
    ld e, l                                       ; $475d: $5d
    nop                                           ; $475e: $00
    ld [$80b6], a                                 ; $475f: $ea $b6 $80
    xor [hl]                                      ; $4762: $ae
    or d                                          ; $4763: $b2
    add b                                         ; $4764: $80
    rst $18                                       ; $4765: $df
    adc d                                         ; $4766: $8a
    nop                                           ; $4767: $00
    ld d, h                                       ; $4768: $54
    nop                                           ; $4769: $00
    xor d                                         ; $476a: $aa
    ldh a, [$e0]                                  ; $476b: $f0 $e0
    xor d                                         ; $476d: $aa
    nop                                           ; $476e: $00
    rst $38                                       ; $476f: $ff
    dec d                                         ; $4770: $15
    nop                                           ; $4771: $00
    xor b                                         ; $4772: $a8
    nop                                           ; $4773: $00
    ld d, c                                       ; $4774: $51
    nop                                           ; $4775: $00
    ld [$ff00], sp                                ; $4776: $08 $00 $ff
    ld [hl+], a                                   ; $4779: $22
    nop                                           ; $477a: $00
    sub h                                         ; $477b: $94
    nop                                           ; $477c: $00
    add hl, hl                                    ; $477d: $29
    nop                                           ; $477e: $00
    ld b, h                                       ; $477f: $44
    nop                                           ; $4780: $00
    push de                                       ; $4781: $d5
    db $10                                        ; $4782: $10
    db $e4                                        ; $4783: $e4
    ldh [rP1], a                                  ; $4784: $e0 $00
    sub e                                         ; $4786: $93
    nop                                           ; $4787: $00
    ld bc, $00b4                                  ; $4788: $01 $b4 $00
    jr nz, jr_02a_478d                            ; $478b: $20 $00

jr_02a_478d:
    ld sp, hl                                     ; $478d: $f9
    add b                                         ; $478e: $80
    xor [hl]                                      ; $478f: $ae
    nop                                           ; $4790: $00
    cp l                                          ; $4791: $bd
    ldh [rNR23], a                                ; $4792: $e0 $18
    inc a                                         ; $4794: $3c
    ld a, [hl]                                    ; $4795: $7e
    ld a, [hl]                                    ; $4796: $7e
    rst $38                                       ; $4797: $ff
    rst $38                                       ; $4798: $ff
    ld [hl], b                                    ; $4799: $70
    rst $38                                       ; $479a: $ff
    ld a, b                                       ; $479b: $78
    db $fc                                        ; $479c: $fc
    inc a                                         ; $479d: $3c
    cp $80                                        ; $479e: $fe $80
    ld a, h                                       ; $47a0: $7c
    rst $38                                       ; $47a1: $ff
    ld h, h                                       ; $47a2: $64
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    ld [$3e1c], sp                                ; $47a5: $08 $1c $3e
    ld [hl], $7f                                  ; $47a8: $36 $7f
    ld a, a                                       ; $47aa: $7f
    and [hl]                                      ; $47ab: $a6
    ld a, a                                       ; $47ac: $7f
    add h                                         ; $47ad: $84

jr_02a_47ae:
    ld l, a                                       ; $47ae: $6f
    ld b, b                                       ; $47af: $40
    ld c, $08                                     ; $47b0: $0e $08
    sbc [hl]                                      ; $47b2: $9e
    ldh [$fd], a                                  ; $47b3: $e0 $fd
    inc bc                                        ; $47b5: $03
    call nc, $0fc0                                ; $47b6: $d4 $c0 $0f
    rst $38                                       ; $47b9: $ff
    ld a, [de]                                    ; $47ba: $1a
    rst $38                                       ; $47bb: $ff
    ld [hl], $fd                                  ; $47bc: $36 $fd
    ld a, a                                       ; $47be: $7f
    ld hl, $f8fe                                  ; $47bf: $21 $fe $f8
    rst $30                                       ; $47c2: $f7
    xor l                                         ; $47c3: $ad
    di                                            ; $47c4: $f3
    rst $38                                       ; $47c5: $ff
    or d                                          ; $47c6: $b2
    jr nz, jr_02a_4848                            ; $47c7: $20 $7f

    ld d, d                                       ; $47c9: $52
    db $fd                                        ; $47ca: $fd
    ld d, l                                       ; $47cb: $55
    xor d                                         ; $47cc: $aa
    jr nz, jr_02a_47ae                            ; $47cd: $20 $df

    ld a, [bc]                                    ; $47cf: $0a
    xor d                                         ; $47d0: $aa
    jr nz, @+$01                                  ; $47d1: $20 $ff

    xor a                                         ; $47d3: $af
    rst $38                                       ; $47d4: $ff
    add e                                         ; $47d5: $83
    rst $38                                       ; $47d6: $ff
    ld c, l                                       ; $47d7: $4d
    rst $30                                       ; $47d8: $f7
    sub e                                         ; $47d9: $93
    rst $28                                       ; $47da: $ef
    rst $38                                       ; $47db: $ff
    ld c, a                                       ; $47dc: $4f

jr_02a_47dd:
    rst $30                                       ; $47dd: $f7
    and e                                         ; $47de: $a3
    rst $38                                       ; $47df: $ff
    ret                                           ; $47e0: $c9


    rst $30                                       ; $47e1: $f7
    and a                                         ; $47e2: $a7
    ei                                            ; $47e3: $fb
    rst $30                                       ; $47e4: $f7

jr_02a_47e5:
    ret                                           ; $47e5: $c9


    rst $30                                       ; $47e6: $f7
    or $9c                                        ; $47e7: $f6 $9c
    ld h, b                                       ; $47e9: $60
    ld [$b0ff], a                                 ; $47ea: $ea $ff $b0
    rst $38                                       ; $47ed: $ff
    rst $38                                       ; $47ee: $ff
    db $eb                                        ; $47ef: $eb
    db $fc                                        ; $47f0: $fc
    ld b, c                                       ; $47f1: $41
    cp $a8                                        ; $47f2: $fe $a8
    rst $30                                       ; $47f4: $f7
    ld b, $fb                                     ; $47f5: $06 $fb
    rst $38                                       ; $47f7: $ff
    db $dd                                        ; $47f8: $dd
    sbc e                                         ; $47f9: $9b
    sbc l                                         ; $47fa: $9d
    ld c, a                                       ; $47fb: $4f
    daa                                           ; $47fc: $27
    rla                                           ; $47fd: $17
    and e                                         ; $47fe: $a3
    di                                            ; $47ff: $f3
    rst $38                                       ; $4800: $ff
    db $db                                        ; $4801: $db
    pop hl                                        ; $4802: $e1
    xor $f1                                       ; $4803: $ee $f1
    or h                                          ; $4805: $b4
    ei                                            ; $4806: $fb
    reti                                          ; $4807: $d9


    rst $38                                       ; $4808: $ff
    ld e, a                                       ; $4809: $5f
    jp c, $9d9f                                   ; $480a: $da $9f $9d

    ld c, a                                       ; $480d: $4f
    ld h, $f0                                     ; $480e: $26 $f0
    ld [c], a                                     ; $4810: $e2
    ld l, [hl]                                    ; $4811: $6e
    ldh a, [$e0]                                  ; $4812: $f0 $e0
    rst $38                                       ; $4814: $ff
    ld sp, hl                                     ; $4815: $f9
    rst $38                                       ; $4816: $ff
    rst $20                                       ; $4817: $e7
    jr jr_02a_47dd                                ; $4818: $18 $c3

    inc h                                         ; $481a: $24
    rst $20                                       ; $481b: $e7
    inc h                                         ; $481c: $24
    cp a                                          ; $481d: $bf
    rst $38                                       ; $481e: $ff
    inc a                                         ; $481f: $3c
    db $db                                        ; $4820: $db
    inc a                                         ; $4821: $3c
    rst $20                                       ; $4822: $e7
    jr jr_02a_47e5                                ; $4823: $18 $c0

    ld b, c                                       ; $4825: $41
    ld h, a                                       ; $4826: $67
    rst $38                                       ; $4827: $ff
    sbc d                                         ; $4828: $9a
    call nz, $0b8a                                ; $4829: $c4 $8a $0b
    ret nz                                        ; $482c: $c0

    ld b, d                                       ; $482d: $42
    and b                                         ; $482e: $a0
    db $10                                        ; $482f: $10
    rst $38                                       ; $4830: $ff
    ret nz                                        ; $4831: $c0

    jp hl                                         ; $4832: $e9


    add b                                         ; $4833: $80
    ld h, b                                       ; $4834: $60
    sub c                                         ; $4835: $91
    adc e                                         ; $4836: $8b
    ld h, b                                       ; $4837: $60
    ld d, $ff                                     ; $4838: $16 $ff
    xor c                                         ; $483a: $a9

jr_02a_483b:
    pop hl                                        ; $483b: $e1
    dec bc                                        ; $483c: $0b
    adc d                                         ; $483d: $8a
    daa                                           ; $483e: $27
    daa                                           ; $483f: $27
    rrca                                          ; $4840: $0f
    xor l                                         ; $4841: $ad
    rst $08                                       ; $4842: $cf
    rra                                           ; $4843: $1f
    sub $3f                                       ; $4844: $d6 $3f
    ld a, l                                       ; $4846: $7d
    and [hl]                                      ; $4847: $a6

jr_02a_4848:
    add b                                         ; $4848: $80
    ld d, b                                       ; $4849: $50
    daa                                           ; $484a: $27
    inc h                                         ; $484b: $24
    db $db                                        ; $484c: $db
    rst $38                                       ; $484d: $ff
    inc c                                         ; $484e: $0c
    rst $30                                       ; $484f: $f7
    ld [hl], $cf                                  ; $4850: $36 $cf
    jr jr_02a_483b                                ; $4852: $18 $e7

    sub $0f                                       ; $4854: $d6 $0f
    rst $38                                       ; $4856: $ff
    ld e, c                                       ; $4857: $59
    and [hl]                                      ; $4858: $a6
    ld b, d                                       ; $4859: $42
    rrca                                          ; $485a: $0f
    ei                                            ; $485b: $fb
    nop                                           ; $485c: $00

jr_02a_485d:
    inc e                                         ; $485d: $1c
    inc bc                                        ; $485e: $03
    rst $28                                       ; $485f: $ef

jr_02a_4860:
    cp a                                          ; $4860: $bf
    nop                                           ; $4861: $00
    sbc c                                         ; $4862: $99
    ld h, [hl]                                    ; $4863: $66
    ld l, b                                       ; $4864: $68
    ld hl, $c23d                                  ; $4865: $21 $3d $c2
    jr jr_02a_485d                                ; $4868: $18 $f3

    rst $20                                       ; $486a: $e7
    add hl, de                                    ; $486b: $19
    ld h, b                                       ; $486c: $60
    inc h                                         ; $486d: $24
    ld b, b                                       ; $486e: $40
    add c                                         ; $486f: $81
    ld d, [hl]                                    ; $4870: $56
    xor c                                         ; $4871: $a9
    ld [hl+], a                                   ; $4872: $22
    rst $38                                       ; $4873: $ff
    ld sp, hl                                     ; $4874: $f9
    ld [hl], l                                    ; $4875: $75
    ret nz                                        ; $4876: $c0

    add h                                         ; $4877: $84
    or b                                          ; $4878: $b0
    and e                                         ; $4879: $a3
    ld de, $1fef                                  ; $487a: $11 $ef $1f
    ldh [$3d], a                                  ; $487d: $e0 $3d
    rst $18                                       ; $487f: $df
    rst $00                                       ; $4880: $c7
    inc sp                                        ; $4881: $33
    rst $08                                       ; $4882: $cf
    dec l                                         ; $4883: $2d
    rst $10                                       ; $4884: $d7
    db $10                                        ; $4885: $10
    add l                                         ; $4886: $85
    jr z, jr_02a_4860                             ; $4887: $28 $d7

    rst $38                                       ; $4889: $ff
    ld b, h                                       ; $488a: $44
    ei                                            ; $488b: $fb
    or h                                          ; $488c: $b4
    rst $38                                       ; $488d: $ff
    ret nc                                        ; $488e: $d0

    rst $38                                       ; $488f: $ff
    rst $30                                       ; $4890: $f7
    jr @+$01                                      ; $4891: $18 $ff

jr_02a_4893:
    rst $28                                       ; $4893: $ef
    jr z, jr_02a_4893                             ; $4894: $28 $fd

    ld l, $eb                                     ; $4896: $2e $eb
    ld a, [hl+]                                   ; $4898: $2a
    rst $38                                       ; $4899: $ff
    ld l, d                                       ; $489a: $6a
    rst $38                                       ; $489b: $ff
    xor e                                         ; $489c: $ab
    or [hl]                                       ; $489d: $b6
    cp $af                                        ; $489e: $fe $af
    cp a                                          ; $48a0: $bf
    xor l                                         ; $48a1: $ad
    db $ed                                        ; $48a2: $ed
    sbc a                                         ; $48a3: $9f
    rst $38                                       ; $48a4: $ff
    ld e, a                                       ; $48a5: $5f
    db $ed                                        ; $48a6: $ed
    push hl                                       ; $48a7: $e5

Call_02a_48a8:
jr_02a_48a8:
    dec sp                                        ; $48a8: $3b
    rst $30                                       ; $48a9: $f7
    ld l, $ef                                     ; $48aa: $2e $ef
    jr c, @+$01                                   ; $48ac: $38 $ff

    cp a                                          ; $48ae: $bf
    ld l, [hl]                                    ; $48af: $6e
    rst $30                                       ; $48b0: $f7
    ld c, a                                       ; $48b1: $4f
    adc $3f                                       ; $48b2: $ce $3f
    db $10                                        ; $48b4: $10
    rst $38                                       ; $48b5: $ff
    rst $38                                       ; $48b6: $ff
    jr z, jr_02a_48a8                             ; $48b7: $28 $ef

    inc a                                         ; $48b9: $3c
    rst $28                                       ; $48ba: $ef
    ld a, [hl+]                                   ; $48bb: $2a
    db $eb                                        ; $48bc: $eb
    ld a, [hl]                                    ; $48bd: $7e
    db $eb                                        ; $48be: $eb
    ei                                            ; $48bf: $fb
    xor d                                         ; $48c0: $aa
    or a                                          ; $48c1: $b7

Call_02a_48c2:
    ldh [$e5], a                                  ; $48c2: $e0 $e5
    dec h                                         ; $48c4: $25
    ei                                            ; $48c5: $fb
    ld [hl], $ef                                  ; $48c6: $36 $ef
    jr z, @+$01                                   ; $48c8: $28 $ff

    rst $38                                       ; $48ca: $ff
    ld a, $ef                                     ; $48cb: $3e $ef
    ld [hl], a                                    ; $48cd: $77
    rst $08                                       ; $48ce: $cf
    ld l, $ff                                     ; $48cf: $2e $ff
    jr nz, @+$01                                  ; $48d1: $20 $ff

    rst $08                                       ; $48d3: $cf
    or [hl]                                       ; $48d4: $b6
    dec hl                                        ; $48d5: $2b
    db $ed                                        ; $48d6: $ed
    cp d                                          ; $48d7: $ba
    dec sp                                        ; $48d8: $3b
    rst $18                                       ; $48d9: $df
    halt                                          ; $48da: $76
    xor e                                         ; $48db: $ab
    rst $18                                       ; $48dc: $df
    ld d, h                                       ; $48dd: $54
    ld c, b                                       ; $48de: $48
    jr nz, jr_02a_490b                            ; $48df: $20 $2a

    adc b                                         ; $48e1: $88
    nop                                           ; $48e2: $00
    ld [bc], a                                    ; $48e3: $02
    ld l, h                                       ; $48e4: $6c
    jr nz, jr_02a_4901                            ; $48e5: $20 $1a

    ei                                            ; $48e7: $fb
    rst $38                                       ; $48e8: $ff
    or [hl]                                       ; $48e9: $b6
    ret nz                                        ; $48ea: $c0

    call nz, $0fb0                                ; $48eb: $c4 $b0 $0f
    sbc $7f                                       ; $48ee: $de $7f
    add hl, hl                                    ; $48f0: $29
    rst $28                                       ; $48f1: $ef
    cp $55                                        ; $48f2: $fe $55
    rst $38                                       ; $48f4: $ff
    cp [hl]                                       ; $48f5: $be
    ld l, [hl]                                    ; $48f6: $6e
    ldh [$aa], a                                  ; $48f7: $e0 $aa
    rst $38                                       ; $48f9: $ff
    ret nz                                        ; $48fa: $c0

    sub a                                         ; $48fb: $97
    rst $38                                       ; $48fc: $ff
    sbc b                                         ; $48fd: $98
    ld h, a                                       ; $48fe: $67
    sub b                                         ; $48ff: $90
    ld h, c                                       ; $4900: $61

jr_02a_4901:
    ld e, b                                       ; $4901: $58
    add b                                         ; $4902: $80
    ld b, $40                                     ; $4903: $06 $40

Jump_02a_4905:
    ld l, e                                       ; $4905: $6b
    dec hl                                        ; $4906: $2b
    cp $80                                        ; $4907: $fe $80
    ld l, b                                       ; $4909: $68
    inc a                                         ; $490a: $3c

jr_02a_490b:
    inc bc                                        ; $490b: $03
    add h                                         ; $490c: $84
    ld [hl], e                                    ; $490d: $73
    or h                                          ; $490e: $b4
    db $eb                                        ; $490f: $eb
    inc hl                                        ; $4910: $23
    db $fd                                        ; $4911: $fd
    call z, $e1a0                                 ; $4912: $cc $a0 $e1
    ld a, [hl-]                                   ; $4915: $3a
    rst $18                                       ; $4916: $df
    rst $30                                       ; $4917: $f7
    ld e, [hl]                                    ; $4918: $5e
    push de                                       ; $4919: $d5
    ld a, [hl]                                    ; $491a: $7e
    rst $28                                       ; $491b: $ef
    db $dd                                        ; $491c: $dd
    ld a, a                                       ; $491d: $7f
    ei                                            ; $491e: $fb
    ld l, $78                                     ; $491f: $2e $78
    inc bc                                        ; $4921: $03
    add hl, de                                    ; $4922: $19
    rst $20                                       ; $4923: $e7
    rla                                           ; $4924: $17
    rst $38                                       ; $4925: $ff
    xor $3f                                       ; $4926: $ee $3f
    ret z                                         ; $4928: $c8

    cpl                                           ; $4929: $2f
    ret c                                         ; $492a: $d8

    rra                                           ; $492b: $1f
    ldh a, [$fd]                                  ; $492c: $f0 $fd
    ld a, [$00da]                                 ; $492e: $fa $da $00
    jp c, Jump_000_004e                           ; $4931: $da $4e $00

    xor a                                         ; $4934: $af
    cp $df                                        ; $4935: $fe $df
    ld hl, sp+$6f                                 ; $4937: $f8 $6f
    rst $10                                       ; $4939: $d7
    ld hl, sp-$21                                 ; $493a: $f8 $df

jr_02a_493c:
    ldh a, [$f3]                                  ; $493c: $f0 $f3
    ld b, b                                       ; $493e: $40
    inc a                                         ; $493f: $3c
    ld d, [hl]                                    ; $4940: $56
    ld h, c                                       ; $4941: $61
    ccf                                           ; $4942: $3f
    jp Jump_000_3ebf                              ; $4943: $c3 $bf $3e


    rst $00                                       ; $4946: $c7
    db $dd                                        ; $4947: $dd
    cpl                                           ; $4948: $2f

jr_02a_4949:
    jp c, $f02f                                   ; $4949: $da $2f $f0

jr_02a_494c:
    push hl                                       ; $494c: $e5
    dec a                                         ; $494d: $3d
    rst $38                                       ; $494e: $ff
    jp $c73c                                      ; $494f: $c3 $3c $c7


    ret nc                                        ; $4952: $d0

    cpl                                           ; $4953: $2f

jr_02a_4954:
    ret c                                         ; $4954: $d8

    cpl                                           ; $4955: $2f
    sub b                                         ; $4956: $90
    cp e                                          ; $4957: $bb
    rst $38                                       ; $4958: $ff
    ld a, [hl+]                                   ; $4959: $2a
    jr nc, jr_02a_493c                            ; $495a: $30 $e0

    xor d                                         ; $495c: $aa
    db $eb                                        ; $495d: $eb
    ld a, a                                       ; $495e: $7f
    jr nc, jr_02a_4949                            ; $495f: $30 $e8

    and l                                         ; $4961: $a5
    cp d                                          ; $4962: $ba
    jr nc, @-$1e                                  ; $4963: $30 $e0

    xor c                                         ; $4965: $a9
    jr nc, jr_02a_494c                            ; $4966: $30 $e4

    rst $38                                       ; $4968: $ff
    nop                                           ; $4969: $00
    rst $18                                       ; $496a: $df
    xor $20                                       ; $496b: $ee $20
    ei                                            ; $496d: $fb
    xor d                                         ; $496e: $aa
    ld a, [$7fe0]                                 ; $496f: $fa $e0 $7f
    ld a, [$ffe0]                                 ; $4972: $fa $e0 $ff
    sbc [hl]                                      ; $4975: $9e
    and b                                         ; $4976: $a0
    rst $30                                       ; $4977: $f7
    call nz, Call_02a_6b40                        ; $4978: $c4 $40 $6b
    db $eb                                        ; $497b: $eb
    nop                                           ; $497c: $00
    sub $62                                       ; $497d: $d6 $62
    ld [hl+], a                                   ; $497f: $22
    ld [hl], l                                    ; $4980: $75
    inc c                                         ; $4981: $0c
    ld [hl+], a                                   ; $4982: $22
    db $db                                        ; $4983: $db
    inc h                                         ; $4984: $24
    cp $ff                                        ; $4985: $fe $ff
    ld bc, $0af5                                  ; $4987: $01 $f5 $0a
    jp c, $f425                                   ; $498a: $da $25 $f4

    dec bc                                        ; $498d: $0b
    add sp, -$01                                  ; $498e: $e8 $ff
    rla                                           ; $4990: $17
    add sp, $17                                   ; $4991: $e8 $17
    or c                                          ; $4993: $b1
    ld c, [hl]                                    ; $4994: $4e
    jp hl                                         ; $4995: $e9


    ld d, $d2                                     ; $4996: $16 $d2
    rst $38                                       ; $4998: $ff

jr_02a_4999:
    inc l                                         ; $4999: $2c
    ld h, e                                       ; $499a: $63
    sbc h                                         ; $499b: $9c
    ret nc                                        ; $499c: $d0

    ld l, $e9                                     ; $499d: $2e $e9
    ld d, $b4                                     ; $499f: $16 $b4
    rst $38                                       ; $49a1: $ff
    ld c, e                                       ; $49a2: $4b
    rst $28                                       ; $49a3: $ef
    db $10                                        ; $49a4: $10
    ld a, l                                       ; $49a5: $7d
    add d                                         ; $49a6: $82
    rst $10                                       ; $49a7: $d7
    jr z, jr_02a_4954                             ; $49a8: $28 $aa

    rst $38                                       ; $49aa: $ff
    ld d, l                                       ; $49ab: $55
    ld b, l                                       ; $49ac: $45
    cp d                                          ; $49ad: $ba
    add b                                         ; $49ae: $80
    ld a, a                                       ; $49af: $7f
    jr jr_02a_4999                                ; $49b0: $18 $e7

    ld l, [hl]                                    ; $49b2: $6e
    rst $38                                       ; $49b3: $ff
    add c                                         ; $49b4: $81
    ld a, [hl]                                    ; $49b5: $7e
    cp l                                          ; $49b6: $bd
    jr @-$17                                      ; $49b7: $18 $e7

    add b                                         ; $49b9: $80
    ld a, a                                       ; $49ba: $7f
    ld b, l                                       ; $49bb: $45
    rst $38                                       ; $49bc: $ff
    cp d                                          ; $49bd: $ba
    xor d                                         ; $49be: $aa
    ld d, l                                       ; $49bf: $55
    rst $10                                       ; $49c0: $d7
    jr z, jr_02a_4a40                             ; $49c1: $28 $7d

    add d                                         ; $49c3: $82
    rst $28                                       ; $49c4: $ef
    rst $38                                       ; $49c5: $ff
    db $10                                        ; $49c6: $10
    ld e, a                                       ; $49c7: $5f

jr_02a_49c8:
    add b                                         ; $49c8: $80
    rla                                           ; $49c9: $17
    ldh [$83], a                                  ; $49ca: $e0 $83
    ld a, b                                       ; $49cc: $78
    ld d, c                                       ; $49cd: $51
    rst $38                                       ; $49ce: $ff
    xor h                                         ; $49cf: $ac
    xor e                                         ; $49d0: $ab
    ld d, h                                       ; $49d1: $54
    ldh a, [$0e]                                  ; $49d2: $f0 $0e
    xor c                                         ; $49d4: $a9
    ld d, [hl]                                    ; $49d5: $56
    db $f4                                        ; $49d6: $f4
    rst $38                                       ; $49d7: $ff
    dec bc                                        ; $49d8: $0b
    db $f4                                        ; $49d9: $f4
    dec bc                                        ; $49da: $0b
    xor c                                         ; $49db: $a9
    ld d, [hl]                                    ; $49dc: $56
    pop af                                        ; $49dd: $f1
    ld c, $aa                                     ; $49de: $0e $aa
    rst $38                                       ; $49e0: $ff
    ld d, h                                       ; $49e1: $54
    ld d, d                                       ; $49e2: $52
    xor h                                         ; $49e3: $ac
    add h                                         ; $49e4: $84
    ld a, b                                       ; $49e5: $78
    jr jr_02a_49c8                                ; $49e6: $18 $e0

    ld l, b                                       ; $49e8: $68
    rst $38                                       ; $49e9: $ff
    add b                                         ; $49ea: $80
    ld a, a                                       ; $49eb: $7f
    cp a                                          ; $49ec: $bf
    rra                                           ; $49ed: $1f
    rst $28                                       ; $49ee: $ef
    add a                                         ; $49ef: $87
    ld a, a                                       ; $49f0: $7f
    ld d, e                                       ; $49f1: $53
    rst $18                                       ; $49f2: $df
    xor a                                         ; $49f3: $af
    xor e                                         ; $49f4: $ab
    ld d, l                                       ; $49f5: $55
    pop af                                        ; $49f6: $f1
    rrca                                          ; $49f7: $0f
    ldh [$e1], a                                  ; $49f8: $e0 $e1
    ld d, a                                       ; $49fa: $57
    nop                                           ; $49fb: $00
    rst $30                                       ; $49fc: $f7
    adc [hl]                                      ; $49fd: $8e
    nop                                           ; $49fe: $00
    rla                                           ; $49ff: $17
    inc e                                         ; $4a00: $1c
    and b                                         ; $4a01: $a0
    rlca                                          ; $4a02: $07
    nop                                           ; $4a03: $00
    ld c, d                                       ; $4a04: $4a
    ld b, b                                       ; $4a05: $40
    rst $38                                       ; $4a06: $ff
    dec b                                         ; $4a07: $05
    nop                                           ; $4a08: $00
    ld [bc], a                                    ; $4a09: $02
    nop                                           ; $4a0a: $00
    sub b                                         ; $4a0b: $90
    nop                                           ; $4a0c: $00
    adc b                                         ; $4a0d: $88
    nop                                           ; $4a0e: $00
    rst $30                                       ; $4a0f: $f7
    ld de, $8001                                  ; $4a10: $11 $01 $80
    db $fc                                        ; $4a13: $fc
    ldh [$c0], a                                  ; $4a14: $e0 $c0
    ld b, b                                       ; $4a16: $40
    ld de, $ff01                                  ; $4a17: $11 $01 $ff
    ld [bc], a                                    ; $4a1a: $02
    ld [bc], a                                    ; $4a1b: $02
    ld b, l                                       ; $4a1c: $45
    ld b, b                                       ; $4a1d: $40
    ld [bc], a                                    ; $4a1e: $02
    nop                                           ; $4a1f: $00
    ld b, b                                       ; $4a20: $40
    ld b, b                                       ; $4a21: $40
    rst $38                                       ; $4a22: $ff
    and d                                         ; $4a23: $a2
    and b                                         ; $4a24: $a0
    ld b, b                                       ; $4a25: $40
    ld b, b                                       ; $4a26: $40
    and b                                         ; $4a27: $a0
    and b                                         ; $4a28: $a0
    ld d, l                                       ; $4a29: $55
    ld d, l                                       ; $4a2a: $55
    rst $28                                       ; $4a2b: $ef
    ld [$41ea], a                                 ; $4a2c: $ea $ea $41
    ld b, c                                       ; $4a2f: $41
    db $ec                                        ; $4a30: $ec
    ldh [rLYC], a                                 ; $4a31: $e0 $45
    inc hl                                        ; $4a33: $23
    inc hl                                        ; $4a34: $23
    rst $38                                       ; $4a35: $ff
    ld b, l                                       ; $4a36: $45
    ld b, l                                       ; $4a37: $45
    xor e                                         ; $4a38: $ab
    xor e                                         ; $4a39: $ab
    ld d, a                                       ; $4a3a: $57
    ld d, a                                       ; $4a3b: $57
    rst $38                                       ; $4a3c: $ff
    rst $38                                       ; $4a3d: $ff
    rst $38                                       ; $4a3e: $ff
    sub b                                         ; $4a3f: $90

jr_02a_4a40:
    nop                                           ; $4a40: $00
    adc c                                         ; $4a41: $89
    nop                                           ; $4a42: $00
    ld de, $8300                                  ; $4a43: $11 $00 $83
    nop                                           ; $4a46: $00
    rst $38                                       ; $4a47: $ff
    ld [de], a                                    ; $4a48: $12
    nop                                           ; $4a49: $00
    rst $00                                       ; $4a4a: $c7
    ld b, b                                       ; $4a4b: $40
    dec e                                         ; $4a4c: $1d
    nop                                           ; $4a4d: $00
    ld [hl], a                                    ; $4a4e: $77
    nop                                           ; $4a4f: $00
    rst $38                                       ; $4a50: $ff
    cp $ff                                        ; $4a51: $fe $ff
    cp $fe                                        ; $4a53: $fe $fe
    db $f4                                        ; $4a55: $f4
    ld a, [$f2f6]                                 ; $4a56: $fa $f6 $f2
    rst $30                                       ; $4a59: $f7
    pop af                                        ; $4a5a: $f1
    or $fe                                        ; $4a5b: $f6 $fe
    db $fc                                        ; $4a5d: $fc
    ldh [$f4], a                                  ; $4a5e: $e0 $f4
    ld a, [$7fff]                                 ; $4a60: $fa $ff $7f
    ei                                            ; $4a63: $fb
    ccf                                           ; $4a64: $3f
    ld a, a                                       ; $4a65: $7f
    db $fc                                        ; $4a66: $fc
    ldh [rIE], a                                  ; $4a67: $e0 $ff
    rst $38                                       ; $4a69: $ff
    ld a, a                                       ; $4a6a: $7f
    cpl                                           ; $4a6b: $2f
    rst $30                                       ; $4a6c: $f7
    rst $38                                       ; $4a6d: $ff
    db $eb                                        ; $4a6e: $eb
    ld h, a                                       ; $4a6f: $67
    inc hl                                        ; $4a70: $23
    rst $28                                       ; $4a71: $ef
    ld sp, hl                                     ; $4a72: $f9
    cp $fe                                        ; $4a73: $fe $fe
    cp $7f                                        ; $4a75: $fe $7f
    db $eb                                        ; $4a77: $eb
    or $ee                                        ; $4a78: $f6 $ee
    and $e3                                       ; $4a7a: $e6 $e3
    xor $fe                                       ; $4a7c: $ee $fe
    db $fc                                        ; $4a7e: $fc
    ldh [$e7], a                                  ; $4a7f: $e0 $e7
    add sp, -$0a                                  ; $4a81: $e8 $f6
    rst $38                                       ; $4a83: $ff
    db $ec                                        ; $4a84: $ec
    ldh [$fc], a                                  ; $4a85: $e0 $fc
    ld [c], a                                     ; $4a87: $e2
    ld b, a                                       ; $4a88: $47
    inc de                                        ; $4a89: $13
    rst $28                                       ; $4a8a: $ef
    db $dd                                        ; $4a8b: $dd
    rst $00                                       ; $4a8c: $c7
    ret c                                         ; $4a8d: $d8

    ldh [$f5], a                                  ; $4a8e: $e0 $f5
    ld a, [$bdfc]                                 ; $4a90: $fa $fc $bd
    pop hl                                        ; $4a93: $e1
    cp $dd                                        ; $4a94: $fe $dd
    ld a, a                                       ; $4a96: $7f
    cp $f3                                        ; $4a97: $fe $f3
    db $fc                                        ; $4a99: $fc
    ld d, l                                       ; $4a9a: $55
    ld [$fdf2], a                                 ; $4a9b: $ea $f2 $fd
    call nz, $9fe3                                ; $4a9e: $c4 $e3 $9f
    ccf                                           ; $4aa1: $3f
    rst $38                                       ; $4aa2: $ff
    rst $30                                       ; $4aa3: $f7
    ld a, a                                       ; $4aa4: $7f
    ld a, $ac                                     ; $4aa5: $3e $ac
    ld h, b                                       ; $4aa7: $60
    cp b                                          ; $4aa8: $b8
    ldh [rIE], a                                  ; $4aa9: $e0 $ff
    rst $38                                       ; $4aab: $ff
    ld a, [$fdfa]                                 ; $4aac: $fa $fa $fd
    db $fd                                        ; $4aaf: $fd
    cp $fc                                        ; $4ab0: $fe $fc
    db $fd                                        ; $4ab2: $fd
    ld a, [$64fc]                                 ; $4ab3: $fa $fc $64
    nop                                           ; $4ab6: $00
    add b                                         ; $4ab7: $80
    ld bc, $bfdf                                  ; $4ab8: $01 $df $bf
    ld a, a                                       ; $4abb: $7f
    ld c, a                                       ; $4abc: $4f
    ccf                                           ; $4abd: $3f
    rst $18                                       ; $4abe: $df

jr_02a_4abf:
    ei                                            ; $4abf: $fb
    ccf                                           ; $4ac0: $3f
    sbc a                                         ; $4ac1: $9f
    inc b                                         ; $4ac2: $04
    jr nz, @-$0f                                  ; $4ac3: $20 $ef

    rst $38                                       ; $4ac5: $ff
    ld e, a                                       ; $4ac6: $5f
    ccf                                           ; $4ac7: $3f
    cp $d6                                        ; $4ac8: $fe $d6
    ld a, a                                       ; $4aca: $7f
    pop hl                                        ; $4acb: $e1
    db $fd                                        ; $4acc: $fd
    cp $29                                        ; $4acd: $fe $29
    nop                                           ; $4acf: $00
    cp $d8                                        ; $4ad0: $fe $d8
    ldh [rIE], a                                  ; $4ad2: $e0 $ff
    db $fc                                        ; $4ad4: $fc
    ld a, a                                       ; $4ad5: $7f
    xor a                                         ; $4ad6: $af
    sbc a                                         ; $4ad7: $9f
    ld l, a                                       ; $4ad8: $6f
    rra                                           ; $4ad9: $1f
    rst $00                                       ; $4ada: $c7
    ld a, a                                       ; $4adb: $7f
    rra                                           ; $4adc: $1f
    db $d3                                        ; $4add: $d3
    nop                                           ; $4ade: $00
    or a                                          ; $4adf: $b7

Call_02a_4ae0:
    cp a                                          ; $4ae0: $bf
    ld a, a                                       ; $4ae1: $7f
    rst $08                                       ; $4ae2: $cf
    ret c                                         ; $4ae3: $d8

    ldh [$f9], a                                  ; $4ae4: $e0 $f9
    cp $c8                                        ; $4ae6: $fe $c8
    db $e3                                        ; $4ae8: $e3
    cp $ff                                        ; $4ae9: $fe $ff
    cp $ef                                        ; $4aeb: $fe $ef
    cp $7e                                        ; $4aed: $fe $7e
    db $fd                                        ; $4aef: $fd
    or $ff                                        ; $4af0: $f6 $ff
    sbc a                                         ; $4af2: $9f
    ei                                            ; $4af3: $fb
    rst $38                                       ; $4af4: $ff
    cpl                                           ; $4af5: $2f
    or a                                          ; $4af6: $b7
    nop                                           ; $4af7: $00
    rst $18                                       ; $4af8: $df
    ccf                                           ; $4af9: $3f
    rst $20                                       ; $4afa: $e7
    sbc a                                         ; $4afb: $9f
    rst $28                                       ; $4afc: $ef
    ei                                            ; $4afd: $fb
    rra                                           ; $4afe: $1f
    call $e2d8                                    ; $4aff: $cd $d8 $e2
    rst $08                                       ; $4b02: $cf
    rst $10                                       ; $4b03: $d7
    db $e3                                        ; $4b04: $e3
    db $db                                        ; $4b05: $db
    add e                                         ; $4b06: $83
    rst $38                                       ; $4b07: $ff
    cp e                                          ; $4b08: $bb
    ret                                           ; $4b09: $c9


    or c                                          ; $4b0a: $b1
    pop hl                                        ; $4b0b: $e1
    sub l                                         ; $4b0c: $95
    ld [hl], $00                                  ; $4b0d: $36 $00
    and c                                         ; $4b0f: $a1
    db $fd                                        ; $4b10: $fd
    add c                                         ; $4b11: $81
    sbc d                                         ; $4b12: $9a
    ld bc, $cfef                                  ; $4b13: $01 $ef $cf
    rst $08                                       ; $4b16: $cf
    rst $38                                       ; $4b17: $ff
    sub a                                         ; $4b18: $97
    and a                                         ; $4b19: $a7
    rst $38                                       ; $4b1a: $ff
    db $db                                        ; $4b1b: $db
    and e                                         ; $4b1c: $a3
    sbc a                                         ; $4b1d: $9f
    db $e3                                        ; $4b1e: $e3
    ccf                                           ; $4b1f: $3f
    ld b, e                                       ; $4b20: $43
    ei                                            ; $4b21: $fb
    ei                                            ; $4b22: $fb
    rst $38                                       ; $4b23: $ff
    cp $fe                                        ; $4b24: $fe $fe
    ld a, a                                       ; $4b26: $7f
    ld a, [hl]                                    ; $4b27: $7e
    ld hl, sp-$10                                 ; $4b28: $f8 $f0

Jump_02a_4b2a:
    and [hl]                                      ; $4b2a: $a6
    sbc d                                         ; $4b2b: $9a
    rst $38                                       ; $4b2c: $ff
    pop hl                                        ; $4b2d: $e1
    add c                                         ; $4b2e: $81
    daa                                           ; $4b2f: $27
    daa                                           ; $4b30: $27
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    sub c                                         ; $4b33: $91
    ld b, c                                       ; $4b34: $41
    rst $38                                       ; $4b35: $ff
    ld b, d                                       ; $4b36: $42
    add b                                         ; $4b37: $80
    db $e3                                        ; $4b38: $e3
    jr nz, jr_02a_4abf                            ; $4b39: $20 $84

    nop                                           ; $4b3b: $00
    or e                                          ; $4b3c: $b3
    or e                                          ; $4b3d: $b3
    ld c, $8e                                     ; $4b3e: $0e $8e
    ldh [$fe], a                                  ; $4b40: $e0 $fe
    cp a                                          ; $4b42: $bf
    cp a                                          ; $4b43: $bf
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    db $fd                                        ; $4b47: $fd
    ld b, [hl]                                    ; $4b48: $46
    rst $38                                       ; $4b49: $ff
    db $f4                                        ; $4b4a: $f4
    pop bc                                        ; $4b4b: $c1
    cp d                                          ; $4b4c: $ba
    or a                                          ; $4b4d: $b7
    or a                                          ; $4b4e: $b7
    call nz, Call_02a_6fc0                        ; $4b4f: $c4 $c0 $6f
    call nz, $b7b8                                ; $4b52: $c4 $b8 $b7
    cp d                                          ; $4b55: $ba
    sbc $e1                                       ; $4b56: $de $e1
    set 1, h                                      ; $4b58: $cb $cc
    ret c                                         ; $4b5a: $d8

    push af                                       ; $4b5b: $f5
    cp $c0                                        ; $4b5c: $fe $c0
    ld a, [c]                                     ; $4b5e: $f2
    jp nc, Jump_02a_4646                          ; $4b5f: $d2 $46 $46

    jp $bbbe                                      ; $4b62: $c3 $be $bb


    cp e                                          ; $4b65: $bb
    cp a                                          ; $4b66: $bf
    cp c                                          ; $4b67: $b9
    or a                                          ; $4b68: $b7
    or a                                          ; $4b69: $b7
    cp c                                          ; $4b6a: $b9
    cp e                                          ; $4b6b: $bb
    cp [hl]                                       ; $4b6c: $be
    sbc [hl]                                      ; $4b6d: $9e
    pop hl                                        ; $4b6e: $e1
    call $ceb9                                    ; $4b6f: $cd $b9 $ce
    rst $20                                       ; $4b72: $e7
    and $ff                                       ; $4b73: $e6 $ff
    rst $38                                       ; $4b75: $ff
    ld b, [hl]                                    ; $4b76: $46
    db $d3                                        ; $4b77: $d3
    call nc, $e17f                                ; $4b78: $d4 $7f $e1
    ret nz                                        ; $4b7b: $c0

    db $dd                                        ; $4b7c: $dd
    ret nz                                        ; $4b7d: $c0

    cp l                                          ; $4b7e: $bd
    ldh [$be], a                                  ; $4b7f: $e0 $be
    ret nz                                        ; $4b81: $c0

    pop bc                                        ; $4b82: $c1
    ld e, [hl]                                    ; $4b83: $5e
    pop hl                                        ; $4b84: $e1
    rst $08                                       ; $4b85: $cf
    ret nc                                        ; $4b86: $d0

    sbc [hl]                                      ; $4b87: $9e
    rst $20                                       ; $4b88: $e7
    and $bf                                       ; $4b89: $e6 $bf
    cp h                                          ; $4b8b: $bc
    cp h                                          ; $4b8c: $bc
    cp a                                          ; $4b8d: $bf
    cp l                                          ; $4b8e: $bd
    rst $38                                       ; $4b8f: $ff
    ld a, a                                       ; $4b90: $7f
    ldh [$c2], a                                  ; $4b91: $e0 $c2
    dec e                                         ; $4b93: $1d
    jp nz, $e0bd                                  ; $4b94: $c2 $bd $e0

    pop bc                                        ; $4b97: $c1
    jp nz, $cec3                                  ; $4b98: $c2 $c3 $ce

    ldh [$cf], a                                  ; $4b9b: $e0 $cf
    ld [c], a                                     ; $4b9d: $e2
    ld sp, hl                                     ; $4b9e: $f9
    ld [c], a                                     ; $4b9f: $e2
    ccf                                           ; $4ba0: $3f
    cp a                                          ; $4ba1: $bf
    cp h                                          ; $4ba2: $bc
    cp c                                          ; $4ba3: $b9
    cp l                                          ; $4ba4: $bd
    cp e                                          ; $4ba5: $bb
    cp l                                          ; $4ba6: $bd
    cp l                                          ; $4ba7: $bd
    push af                                       ; $4ba8: $f5
    add hl, de                                    ; $4ba9: $19
    db $e3                                        ; $4baa: $e3
    sub h                                         ; $4bab: $94
    sbc [hl]                                      ; $4bac: $9e
    and $bd                                       ; $4bad: $e6 $bd
    ldh [$c3], a                                  ; $4baf: $e0 $c3
    ldh [$c0], a                                  ; $4bb1: $e0 $c0
    cp d                                          ; $4bb3: $ba
    db $fc                                        ; $4bb4: $fc
    pop bc                                        ; $4bb5: $c1
    rst $00                                       ; $4bb6: $c7
    ldh [$b7], a                                  ; $4bb7: $e0 $b7
    ld l, e                                       ; $4bb9: $6b
    cp c                                          ; $4bba: $b9
    cp a                                          ; $4bbb: $bf
    db $f4                                        ; $4bbc: $f4
    ldh [$bd], a                                  ; $4bbd: $e0 $bd
    ld hl, sp-$20                                 ; $4bbf: $f8 $e0
    cp e                                          ; $4bc1: $bb
    cp l                                          ; $4bc2: $bd
    ld [$50c2], a                                 ; $4bc3: $ea $c2 $50
    call nz, $19ce                                ; $4bc6: $c4 $ce $19
    ldh [$61], a                                  ; $4bc9: $e0 $61
    ldh [$9f], a                                  ; $4bcb: $e0 $9f
    ldh [$b9], a                                  ; $4bcd: $e0 $b9
    ld e, h                                       ; $4bcf: $5c
    jp hl                                         ; $4bd0: $e9


    cp [hl]                                       ; $4bd1: $be
    db $fc                                        ; $4bd2: $fc
    ret nz                                        ; $4bd3: $c0

    ld a, a                                       ; $4bd4: $7f
    cp a                                          ; $4bd5: $bf
    cp c                                          ; $4bd6: $b9
    or a                                          ; $4bd7: $b7
    cp b                                          ; $4bd8: $b8
    or a                                          ; $4bd9: $b7
    cp c                                          ; $4bda: $b9
    cp [hl]                                       ; $4bdb: $be
    or h                                          ; $4bdc: $b4
    ldh [$0d], a                                  ; $4bdd: $e0 $0d
    cp [hl]                                       ; $4bdf: $be
    jp hl                                         ; $4be0: $e9


    ret nz                                        ; $4be1: $c0

    cp c                                          ; $4be2: $b9
    cp [hl]                                       ; $4be3: $be
    or l                                          ; $4be4: $b5
    ldh [$86], a                                  ; $4be5: $e0 $86
    ret z                                         ; $4be7: $c8

    inc l                                         ; $4be8: $2c
    push hl                                       ; $4be9: $e5
    add hl, de                                    ; $4bea: $19
    ldh [$ab], a                                  ; $4beb: $e0 $ab
    cp d                                          ; $4bed: $ba
    cp l                                          ; $4bee: $bd
    ldh [$e1], a                                  ; $4bef: $e0 $e1
    cp l                                          ; $4bf1: $bd
    adc c                                         ; $4bf2: $89
    jp nz, $b5d1                                  ; $4bf3: $c2 $d1 $b5

    jp $aac1                                      ; $4bf6: $c3 $c1 $aa


    db $fc                                        ; $4bf9: $fc
    ret nz                                        ; $4bfa: $c0

    cp [hl]                                       ; $4bfb: $be
    adc d                                         ; $4bfc: $8a
    pop hl                                        ; $4bfd: $e1
    cp [hl]                                       ; $4bfe: $be
    ld hl, sp-$1f                                 ; $4bff: $f8 $e1
    call nz, $c0e9                                ; $4c01: $c4 $e9 $c0
    cp [hl]                                       ; $4c04: $be
    ld de, $69c4                                  ; $4c05: $11 $c4 $69
    jp $e5c2                                      ; $4c08: $c3 $c2 $e5


    inc l                                         ; $4c0b: $2c
    rst $20                                       ; $4c0c: $e7
    cp a                                          ; $4c0d: $bf
    and l                                         ; $4c0e: $a5
    ldh [$8b], a                                  ; $4c0f: $e0 $8b
    pop bc                                        ; $4c11: $c1
    ldh [$e5], a                                  ; $4c12: $e0 $e5
    ld l, d                                       ; $4c14: $6a
    or l                                          ; $4c15: $b5
    pop bc                                        ; $4c16: $c1
    jp $c0fc                                      ; $4c17: $c3 $fc $c0


    pop bc                                        ; $4c1a: $c1
    ld a, e                                       ; $4c1b: $7b
    ldh [$c0], a                                  ; $4c1c: $e0 $c0
    pop bc                                        ; $4c1e: $c1
    ld hl, sp-$20                                 ; $4c1f: $f8 $e0
    cp b                                          ; $4c21: $b8
    add hl, hl                                    ; $4c22: $29
    rst $00                                       ; $4c23: $c7
    inc l                                         ; $4c24: $2c
    add $2c                                       ; $4c25: $c6 $2c
    jp hl                                         ; $4c27: $e9


    cp d                                          ; $4c28: $ba
    or a                                          ; $4c29: $b7
    call nz, $e1d6                                ; $4c2a: $c4 $d6 $e1
    call nz, Call_02a_5500                        ; $4c2d: $c4 $00 $55
    ldh [$c8], a                                  ; $4c30: $e0 $c8
    push bc                                       ; $4c32: $c5
    or d                                          ; $4c33: $b2
    jp $e07b                                      ; $4c34: $c3 $7b $e0


    di                                            ; $4c37: $f3
    pop bc                                        ; $4c38: $c1
    add hl, hl                                    ; $4c39: $29
    ret z                                         ; $4c3a: $c8

    inc l                                         ; $4c3b: $2c
    push bc                                       ; $4c3c: $c5
    inc l                                         ; $4c3d: $2c
    ld [$baf7], a                                 ; $4c3e: $ea $f7 $ba
    or a                                          ; $4c41: $b7
    cp b                                          ; $4c42: $b8
    jp z, $b7a0                                   ; $4c43: $ca $a0 $b7

    or a                                          ; $4c46: $b7
    cp d                                          ; $4c47: $ba
    pop bc                                        ; $4c48: $c1
    nop                                           ; $4c49: $00
    dec c                                         ; $4c4a: $0d
    pop hl                                        ; $4c4b: $e1
    ld sp, hl                                     ; $4c4c: $f9
    jp nz, $a3c4                                  ; $4c4d: $c2 $c4 $a3

    ld a, e                                       ; $4c50: $7b
    pop hl                                        ; $4c51: $e1
    ld l, $e1                                     ; $4c52: $2e $e1
    add hl, hl                                    ; $4c54: $29
    rst $00                                       ; $4c55: $c7
    inc l                                         ; $4c56: $2c
    call nz, $c0e0                                ; $4c57: $c4 $e0 $c0
    jr c, @+$2e                                   ; $4c5a: $38 $2c

    add sp, -$1e                                  ; $4c5c: $e8 $e2
    pop bc                                        ; $4c5e: $c1
    res 4, b                                      ; $4c5f: $cb $a0
    cp e                                          ; $4c61: $bb
    cp [hl]                                       ; $4c62: $be
    jp $e10d                                      ; $4c63: $c3 $0d $e1


    call $21c0                                    ; $4c66: $cd $c0 $21
    cp a                                          ; $4c69: $bf
    sbc b                                         ; $4c6a: $98
    rst $20                                       ; $4c6b: $e7
    add hl, hl                                    ; $4c6c: $29
    call z, $c32c                                 ; $4c6d: $cc $2c $c3
    ld d, l                                       ; $4c70: $55
    xor h                                         ; $4c71: $ac
    pop bc                                        ; $4c72: $c1
    res 4, e                                      ; $4c73: $cb $a3
    jp z, Jump_02a_78a1                           ; $4c75: $ca $a1 $78

    dec c                                         ; $4c78: $0d
    ldh [$96], a                                  ; $4c79: $e0 $96
    pop bc                                        ; $4c7b: $c1
    call nz, $9aa1                                ; $4c7c: $c4 $a1 $9a
    sbc b                                         ; $4c7f: $98
    sbc b                                         ; $4c80: $98
    sbc d                                         ; $4c81: $9a
    add e                                         ; $4c82: $83
    and a                                         ; $4c83: $a7
    db $10                                        ; $4c84: $10
    add hl, hl                                    ; $4c85: $29
    call nz, $c32c                                ; $4c86: $c4 $2c $c3
    sub $a1                                       ; $4c89: $d6 $a1
    ld d, l                                       ; $4c8b: $55
    xor b                                         ; $4c8c: $a8
    jp $a3cb                                      ; $4c8d: $c3 $cb $a3


    dec d                                         ; $4c90: $15
    ld [c], a                                     ; $4c91: $e2
    or h                                          ; $4c92: $b4
    pop hl                                        ; $4c93: $e1
    cp $8d                                        ; $4c94: $fe $8d
    ret nz                                        ; $4c96: $c0

    ld b, [hl]                                    ; $4c97: $46
    ld b, [hl]                                    ; $4c98: $46
    sbc d                                         ; $4c99: $9a
    sub a                                         ; $4c9a: $97
    ld b, [hl]                                    ; $4c9b: $46
    ld b, [hl]                                    ; $4c9c: $46
    sub a                                         ; $4c9d: $97
    ld bc, $6a9a                                  ; $4c9e: $01 $9a $6a
    and d                                         ; $4ca1: $a2
    ld c, d                                       ; $4ca2: $4a
    jp z, $c12c                                   ; $4ca3: $ca $2c $c1

    call nc, Call_02a_5582                        ; $4ca6: $d4 $82 $55
    xor c                                         ; $4ca9: $a9
    and d                                         ; $4caa: $a2
    and $b4                                       ; $4cab: $e6 $b4
    ld [c], a                                     ; $4cad: $e2
    inc [hl]                                      ; $4cae: $34
    adc l                                         ; $4caf: $8d
    ret nz                                        ; $4cb0: $c0

    pop bc                                        ; $4cb1: $c1
    ldh [$a8], a                                  ; $4cb2: $e0 $a8
    sbc d                                         ; $4cb4: $9a
    add b                                         ; $4cb5: $80
    sub a                                         ; $4cb6: $97
    sbc d                                         ; $4cb7: $9a
    and c                                         ; $4cb8: $a1
    xor l                                         ; $4cb9: $ad
    inc l                                         ; $4cba: $2c
    jp nz, Jump_000_2cf0                          ; $4cbb: $c2 $f0 $2c

    db $ec                                        ; $4cbe: $ec
    dec c                                         ; $4cbf: $0d
    pop bc                                        ; $4cc0: $c1
    inc a                                         ; $4cc1: $3c
    xor c                                         ; $4cc2: $a9
    add b                                         ; $4cc3: $80
    and c                                         ; $4cc4: $a1
    sbc e                                         ; $4cc5: $9b
    xor b                                         ; $4cc6: $a8
    xor c                                         ; $4cc7: $a9
    xor b                                         ; $4cc8: $a8
    rrca                                          ; $4cc9: $0f
    ld b, [hl]                                    ; $4cca: $46
    xor b                                         ; $4ccb: $a8
    ld b, [hl]                                    ; $4ccc: $46
    sbc e                                         ; $4ccd: $9b
    and c                                         ; $4cce: $a1
    xor l                                         ; $4ccf: $ad
    inc l                                         ; $4cd0: $2c
    jp nz, $ed2c                                  ; $4cd1: $c2 $2c $ed

    ld c, d                                       ; $4cd4: $4a
    rst $00                                       ; $4cd5: $c7
    ld a, l                                       ; $4cd6: $7d
    push bc                                       ; $4cd7: $c5
    dec h                                         ; $4cd8: $25
    add e                                         ; $4cd9: $83
    pop de                                        ; $4cda: $d1
    ld b, [hl]                                    ; $4cdb: $46
    sbc c                                         ; $4cdc: $99
    xor c                                         ; $4cdd: $a9
    ld b, [hl]                                    ; $4cde: $46
    cp $e1                                        ; $4cdf: $fe $e1
    pop bc                                        ; $4ce1: $c1
    sbc c                                         ; $4ce2: $99
    and c                                         ; $4ce3: $a1
    xor l                                         ; $4ce4: $ad
    inc l                                         ; $4ce5: $2c
    jp nz, $ab79                                  ; $4ce6: $c2 $79 $ab

    ld a, $c2                                     ; $4ce9: $3e $c2
    ld c, $82                                     ; $4ceb: $0e $82
    jp nc, $2346                                  ; $4ced: $d2 $46 $23

    rst $00                                       ; $4cf0: $c7
    ret z                                         ; $4cf1: $c8

    db $e4                                        ; $4cf2: $e4
    ld h, e                                       ; $4cf3: $63
    ld [bc], a                                    ; $4cf4: $02
    pop hl                                        ; $4cf5: $e1
    jp c, $9961                                   ; $4cf6: $da $61 $99

    and c                                         ; $4cf9: $a1
    xor [hl]                                      ; $4cfa: $ae
    inc l                                         ; $4cfb: $2c
    jp $0ef0                                      ; $4cfc: $c3 $f0 $0e


    add l                                         ; $4cff: $85
    sbc $84                                       ; $4d00: $de $84
    ld [de], a                                    ; $4d02: $12
    and c                                         ; $4d03: $a1
    dec a                                         ; $4d04: $3d
    add d                                         ; $4d05: $82
    ret                                           ; $4d06: $c9


    jp z, $9a46                                   ; $4d07: $ca $46 $9a

    ld c, a                                       ; $4d0a: $4f
    sbc h                                         ; $4d0b: $9c
    sbc b                                         ; $4d0c: $98
    sbc b                                         ; $4d0d: $98
    sbc b                                         ; $4d0e: $98
    pop bc                                        ; $4d0f: $c1
    db $e4                                        ; $4d10: $e4
    add b                                         ; $4d11: $80
    ldh [$d1], a                                  ; $4d12: $e0 $d1
    and c                                         ; $4d14: $a1
    xor d                                         ; $4d15: $aa
    ld b, b                                       ; $4d16: $40
    dec b                                         ; $4d17: $05
    xor c                                         ; $4d18: $a9
    ld c, $80                                     ; $4d19: $0e $80
    sbc $85                                       ; $4d1b: $de $85
    ld [de], a                                    ; $4d1d: $12
    and c                                         ; $4d1e: $a1
    ld a, [$88c4]                                 ; $4d1f: $fa $c4 $88
    pop bc                                        ; $4d22: $c1
    xor b                                         ; $4d23: $a8
    call nz, Call_000_0cc1                        ; $4d24: $c4 $c1 $0c
    add b                                         ; $4d27: $80
    and $a1                                       ; $4d28: $e6 $a1
    xor b                                         ; $4d2a: $a8
    push bc                                       ; $4d2b: $c5

jr_02a_4d2c:
    add $45                                       ; $4d2c: $c6 $45
    ld h, d                                       ; $4d2e: $62
    sub e                                         ; $4d2f: $93
    add [hl]                                      ; $4d30: $86
    sbc $85                                       ; $4d31: $de $85
    sub a                                         ; $4d33: $97
    and e                                         ; $4d34: $a3
    ld b, $86                                     ; $4d35: $06 $86
    and $a9                                       ; $4d37: $e6 $a9
    xor c                                         ; $4d39: $a9
    ret nz                                        ; $4d3a: $c0

    jp hl                                         ; $4d3b: $e9


    and c                                         ; $4d3c: $a1
    xor b                                         ; $4d3d: $a8
    ld hl, $93e4                                  ; $4d3e: $21 $e4 $93
    add [hl]                                      ; $4d41: $86
    sbc $85                                       ; $4d42: $de $85
    nop                                           ; $4d44: $00
    inc c                                         ; $4d45: $0c
    ld [$49e2], a                                 ; $4d46: $ea $e2 $49
    nop                                           ; $4d49: $00
    pop hl                                        ; $4d4a: $e1
    and c                                         ; $4d4b: $a1
    xor b                                         ; $4d4c: $a8
    ld hl, $c4e0                                  ; $4d4d: $21 $e0 $c4

jr_02a_4d50:
    ld b, c                                       ; $4d50: $41
    sub e                                         ; $4d51: $93
    add [hl]                                      ; $4d52: $86
    sbc $85                                       ; $4d53: $de $85
    jr jr_02a_4d2c                                ; $4d55: $18 $d5

    ld b, c                                       ; $4d57: $41
    pop bc                                        ; $4d58: $c1
    pop af                                        ; $4d59: $f1
    add b                                         ; $4d5a: $80
    ret nz                                        ; $4d5b: $c0

    push bc                                       ; $4d5c: $c5
    add $a1                                       ; $4d5d: $c6 $a1
    xor b                                         ; $4d5f: $a8
    add a                                         ; $4d60: $87
    ld b, h                                       ; $4d61: $44
    ld a, [c]                                     ; $4d62: $f2
    rst $00                                       ; $4d63: $c7
    ld hl, sp-$4e                                 ; $4d64: $f8 $b2
    call nz, Call_02a_40d5                        ; $4d66: $c4 $d5 $40
    add d                                         ; $4d69: $82
    rst $20                                       ; $4d6a: $e7
    ld b, l                                       ; $4d6b: $45
    ld b, l                                       ; $4d6c: $45
    ld b, l                                       ; $4d6d: $45
    ld c, b                                       ; $4d6e: $48
    ld c, [hl]                                    ; $4d6f: $4e
    rra                                           ; $4d70: $1f
    ld d, e                                       ; $4d71: $53
    ld b, e                                       ; $4d72: $43
    ld c, b                                       ; $4d73: $48
    ld d, e                                       ; $4d74: $53
    ld b, l                                       ; $4d75: $45
    ld sp, hl                                     ; $4d76: $f9
    and b                                         ; $4d77: $a0
    ld l, [hl]                                    ; $4d78: $6e
    jp nz, $a7a1                                  ; $4d79: $c2 $a1 $a7

    or b                                          ; $4d7c: $b0
    ld b, [hl]                                    ; $4d7d: $46
    ld b, e                                       ; $4d7e: $43
    sub e                                         ; $4d7f: $93
    add h                                         ; $4d80: $84
    add hl, sp                                    ; $4d81: $39
    ld b, h                                       ; $4d82: $44
    adc $60                                       ; $4d83: $ce $60
    rst $08                                       ; $4d85: $cf
    ret nc                                        ; $4d86: $d0

    ld b, e                                       ; $4d87: $43
    and $45                                       ; $4d88: $e6 $45
    rst $38                                       ; $4d8a: $ff
    ld c, b                                       ; $4d8b: $48
    ld c, c                                       ; $4d8c: $49
    ld d, l                                       ; $4d8d: $55
    ld b, a                                       ; $4d8e: $47
    ld h, b                                       ; $4d8f: $60
    ld h, c                                       ; $4d90: $61
    ld h, c                                       ; $4d91: $61
    ld c, h                                       ; $4d92: $4c
    rrca                                          ; $4d93: $0f
    ld h, b                                       ; $4d94: $60
    ld h, c                                       ; $4d95: $61
    ld d, d                                       ; $4d96: $52
    ld b, l                                       ; $4d97: $45
    nop                                           ; $4d98: $00
    ret nz                                        ; $4d99: $c0

    ld c, l                                       ; $4d9a: $4d
    db $e4                                        ; $4d9b: $e4
    inc e                                         ; $4d9c: $1c
    ld l, d                                       ; $4d9d: $6a
    sub e                                         ; $4d9e: $93
    add h                                         ; $4d9f: $84
    ld hl, sp-$58                                 ; $4da0: $f8 $a8
    ld c, c                                       ; $4da2: $49
    rla                                           ; $4da3: $17
    pop bc                                        ; $4da4: $c1
    jp hl                                         ; $4da5: $e9


    jr nz, jr_02a_4d50                            ; $4da6: $20 $a8

    xor b                                         ; $4da8: $a8
    ld d, c                                       ; $4da9: $51
    ld e, [hl]                                    ; $4daa: $5e
    ld h, c                                       ; $4dab: $61
    rst $38                                       ; $4dac: $ff
    ld d, l                                       ; $4dad: $55
    ld d, e                                       ; $4dae: $53
    ld e, c                                       ; $4daf: $59
    ld e, c                                       ; $4db0: $59
    ld d, h                                       ; $4db1: $54
    ld h, c                                       ; $4db2: $61
    ld h, c                                       ; $4db3: $61

jr_02a_4db4:
    ld h, c                                       ; $4db4: $61
    add e                                         ; $4db5: $83
    ld d, [hl]                                    ; $4db6: $56
    ld b, l                                       ; $4db7: $45
    ccf                                           ; $4db8: $3f
    and c                                         ; $4db9: $a1
    ccf                                           ; $4dba: $3f
    ld b, l                                       ; $4dbb: $45
    cp d                                          ; $4dbc: $ba
    ld c, b                                       ; $4dbd: $48
    sub e                                         ; $4dbe: $93
    add h                                         ; $4dbf: $84
    xor b                                         ; $4dc0: $a8
    ld c, c                                       ; $4dc1: $49
    sbc e                                         ; $4dc2: $9b
    cp $ac                                        ; $4dc3: $fe $ac
    inc hl                                        ; $4dc5: $23
    xor c                                         ; $4dc6: $a9
    xor c                                         ; $4dc7: $a9
    ld b, l                                       ; $4dc8: $45
    ld d, d                                       ; $4dc9: $52
    ld d, d                                       ; $4dca: $52
    ld a, c                                       ; $4dcb: $79
    ld a, d                                       ; $4dcc: $7a
    ld a, a                                       ; $4dcd: $7f
    ld a, e                                       ; $4dce: $7b
    ld a, h                                       ; $4dcf: $7c
    ld a, l                                       ; $4dd0: $7d
    ld b, a                                       ; $4dd1: $47
    ld h, c                                       ; $4dd2: $61
    ld h, c                                       ; $4dd3: $61
    ld d, l                                       ; $4dd4: $55
    cp $83                                        ; $4dd5: $fe $83
    ldh [$bc], a                                  ; $4dd7: $e0 $bc
    add h                                         ; $4dd9: $84
    cp d                                          ; $4dda: $ba
    ld c, b                                       ; $4ddb: $48
    sub e                                         ; $4ddc: $93
    add h                                         ; $4ddd: $84
    xor b                                         ; $4dde: $a8
    ld c, c                                       ; $4ddf: $49
    ld bc, $79e8                                  ; $4de0: $01 $e8 $79
    ld a, [hl]                                    ; $4de3: $7e
    ld b, l                                       ; $4de4: $45
    rra                                           ; $4de5: $1f
    ld b, c                                       ; $4de6: $41
    ld b, l                                       ; $4de7: $45
    ld a, a                                       ; $4de8: $7f
    ld a, l                                       ; $4de9: $7d
    ld c, e                                       ; $4dea: $4b
    ld b, c                                       ; $4deb: $41
    ldh [$7e], a                                  ; $4dec: $e0 $7e
    and l                                         ; $4dee: $a5
    ld e, h                                       ; $4def: $5c
    and e                                         ; $4df0: $a3
    add sp, -$46                                  ; $4df1: $e8 $ba
    ld b, [hl]                                    ; $4df3: $46
    rst $30                                       ; $4df4: $f7
    ld h, h                                       ; $4df5: $64
    xor b                                         ; $4df6: $a8
    ld c, b                                       ; $4df7: $48
    pop de                                        ; $4df8: $d1
    ld b, d                                       ; $4df9: $42
    ret z                                         ; $4dfa: $c8

    add b                                         ; $4dfb: $80
    or d                                          ; $4dfc: $b2
    inc l                                         ; $4dfd: $2c
    inc bc                                        ; $4dfe: $03
    ld h, $2a                                     ; $4dff: $26 $2a
    cp a                                          ; $4e01: $bf
    ldh [$c1], a                                  ; $4e02: $e0 $c1
    ld [c], a                                     ; $4e04: $e2
    ld a, [hl]                                    ; $4e05: $7e
    and h                                         ; $4e06: $a4
    sbc d                                         ; $4e07: $9a
    ld h, c                                       ; $4e08: $61
    cp d                                          ; $4e09: $ba
    ld c, [hl]                                    ; $4e0a: $4e
    xor b                                         ; $4e0b: $a8
    ld c, c                                       ; $4e0c: $49
    rst $30                                       ; $4e0d: $f7
    jp nc, $9946                                  ; $4e0e: $d2 $46 $99

    adc d                                         ; $4e11: $8a
    and h                                         ; $4e12: $a4
    ld a, c                                       ; $4e13: $79
    adc e                                         ; $4e14: $8b
    dec l                                         ; $4e15: $2d
    jr nz, jr_02a_4e37                            ; $4e16: $20 $1f

    jr nz, jr_02a_4e44                            ; $4e18: $20 $2a

    ld d, b                                       ; $4e1a: $50
    ld b, l                                       ; $4e1b: $45
    add c                                         ; $4e1c: $81
    ld a, b                                       ; $4e1d: $78
    and e                                         ; $4e1e: $a3
    cp [hl]                                       ; $4e1f: $be
    and e                                         ; $4e20: $a3

Jump_02a_4e21:
    cpl                                           ; $4e21: $2f
    jr nz, jr_02a_4db4                            ; $4e22: $20 $90

    db $e3                                        ; $4e24: $e3

jr_02a_4e25:
    dec bc                                        ; $4e25: $0b
    ld [hl], l                                    ; $4e26: $75
    and c                                         ; $4e27: $a1
    pop de                                        ; $4e28: $d1
    ld [$2042], sp                                ; $4e29: $08 $42 $20
    sbc c                                         ; $4e2c: $99
    adc d                                         ; $4e2d: $8a
    and e                                         ; $4e2e: $a3
    ld b, d                                       ; $4e2f: $42
    ldh [$3a], a                                  ; $4e30: $e0 $3a
    rra                                           ; $4e32: $1f
    ld hl, $472a                                  ; $4e33: $21 $2a $47
    ld d, h                                       ; $4e36: $54

jr_02a_4e37:
    ld b, h                                       ; $4e37: $44
    ret nz                                        ; $4e38: $c0

    ldh [$78], a                                  ; $4e39: $e0 $78
    and c                                         ; $4e3b: $a1
    cp [hl]                                       ; $4e3c: $be
    and e                                         ; $4e3d: $a3
    ldh [$2f], a                                  ; $4e3e: $e0 $2f
    jr nz, jr_02a_4e25                            ; $4e40: $20 $e3

    dec bc                                        ; $4e42: $0b
    sub [hl]                                      ; $4e43: $96

jr_02a_4e44:
    add c                                         ; $4e44: $81
    pop de                                        ; $4e45: $d1
    dec bc                                        ; $4e46: $0b
    ld a, [hl]                                    ; $4e47: $7e
    call nz, Call_02a_4680                        ; $4e48: $c4 $80 $46
    add hl, sp                                    ; $4e4b: $39
    ld a, a                                       ; $4e4c: $7f
    dec [hl]                                      ; $4e4d: $35
    ld a, $49                                     ; $4e4e: $3e $49
    ld d, h                                       ; $4e50: $54
    ld b, l                                       ; $4e51: $45
    add e                                         ; $4e52: $83
    ld l, l                                       ; $4e53: $6d
    ld a, [hl]                                    ; $4e54: $7e
    add l                                         ; $4e55: $85
    inc bc                                        ; $4e56: $03
    set 1, h                                      ; $4e57: $cb $cc
    cp b                                          ; $4e59: $b8
    ld b, e                                       ; $4e5a: $43
    db $e3                                        ; $4e5b: $e3
    ld a, [bc]                                    ; $4e5c: $0a
    ld [hl], l                                    ; $4e5d: $75
    and d                                         ; $4e5e: $a2
    pop de                                        ; $4e5f: $d1
    rlca                                          ; $4e60: $07
    rst $20                                       ; $4e61: $e7
    add b                                         ; $4e62: $80
    ld a, $c4                                     ; $4e63: $3e $c4
    rst $38                                       ; $4e65: $ff
    add d                                         ; $4e66: $82
    add e                                         ; $4e67: $83
    ld a, [hl-]                                   ; $4e68: $3a
    dec [hl]                                      ; $4e69: $35
    ld a, [hl-]                                   ; $4e6a: $3a
    ld b, e                                       ; $4e6b: $43
    ld b, l                                       ; $4e6c: $45
    add e                                         ; $4e6d: $83
    inc bc                                        ; $4e6e: $03
    ld l, a                                       ; $4e6f: $6f
    add h                                         ; $4e70: $84
    sub l                                         ; $4e71: $95
    inc bc                                        ; $4e72: $03
    cp [hl]                                       ; $4e73: $be
    ld h, d                                       ; $4e74: $62
    xor b                                         ; $4e75: $a8
    ld [hl+], a                                   ; $4e76: $22
    cp d                                          ; $4e77: $ba
    ld c, e                                       ; $4e78: $4b
    pop de                                        ; $4e79: $d1
    dec bc                                        ; $4e7a: $0b
    ld [$fe80], sp                                ; $4e7b: $08 $80 $fe
    ld a, $c4                                     ; $4e7e: $3e $c4
    add h                                         ; $4e80: $84
    add l                                         ; $4e81: $85
    ld [hl], c                                    ; $4e82: $71
    ld [hl], c                                    ; $4e83: $71
    ld [hl], c                                    ; $4e84: $71
    add [hl]                                      ; $4e85: $86
    add [hl]                                      ; $4e86: $86
    ld bc, $c185                                  ; $4e87: $01 $85 $c1
    db $e4                                        ; $4e8a: $e4
    ld a, $60                                     ; $4e8b: $3e $60
    ld a, b                                       ; $4e8d: $78
    nop                                           ; $4e8e: $00
    ld [$7725], a                                 ; $4e8f: $ea $25 $77
    xor c                                         ; $4e92: $a9

jr_02a_4e93:
    ld l, h                                       ; $4e93: $6c
    inc bc                                        ; $4e94: $03
    pop de                                        ; $4e95: $d1
    inc b                                         ; $4e96: $04
    ld a, h                                       ; $4e97: $7c
    ld [$be80], sp                                ; $4e98: $08 $80 $be
    and h                                         ; $4e9b: $a4
    ld b, [hl]                                    ; $4e9c: $46
    ld b, l                                       ; $4e9d: $45
    ld a, [hl-]                                   ; $4e9e: $3a
    dec [hl]                                      ; $4e9f: $35
    ld [hl], $85                                  ; $4ea0: $36 $85
    jp $ff80                                      ; $4ea2: $c3 $80 $ff


    ld b, e                                       ; $4ea5: $43
    cpl                                           ; $4ea6: $2f
    jr nz, jr_02a_4e93                            ; $4ea7: $20 $ea

    dec h                                         ; $4ea9: $25
    inc bc                                        ; $4eaa: $03

jr_02a_4eab:
    ld a, [hl+]                                   ; $4eab: $2a
    adc $0c                                       ; $4eac: $ce $0c
    adc [hl]                                      ; $4eae: $8e
    ld h, e                                       ; $4eaf: $63
    ld b, $81                                     ; $4eb0: $06 $81
    add hl, sp                                    ; $4eb2: $39
    nop                                           ; $4eb3: $00
    pop bc                                        ; $4eb4: $c1
    jp hl                                         ; $4eb5: $e9


    ld c, $82                                     ; $4eb6: $0e $82
    ld [$8025], a                                 ; $4eb8: $ea $25 $80
    rlca                                          ; $4ebb: $07
    adc $09                                       ; $4ebc: $ce $09
    add c                                         ; $4ebe: $81
    add d                                         ; $4ebf: $82
    ld c, a                                       ; $4ec0: $4f
    ld h, h                                       ; $4ec1: $64
    ld b, $81                                     ; $4ec2: $06 $81
    ld bc, $8245                                  ; $4ec4: $01 $45 $82
    jp hl                                         ; $4ec7: $e9


    cpl                                           ; $4ec8: $2f
    ld h, d                                       ; $4ec9: $62
    ld [$7625], a                                 ; $4eca: $ea $25 $76
    ld b, [hl]                                    ; $4ecd: $46
    adc $0c                                       ; $4ece: $ce $0c
    ld a, [hl+]                                   ; $4ed0: $2a
    jr nz, jr_02a_4f15                            ; $4ed1: $20 $42

    push hl                                       ; $4ed3: $e5
    ld c, $ff                                     ; $4ed4: $0e $ff
    and c                                         ; $4ed6: $a1
    ld a, d                                       ; $4ed7: $7a

jr_02a_4ed8:
    ld a, h                                       ; $4ed8: $7c
    ld a, l                                       ; $4ed9: $7d
    ld b, h                                       ; $4eda: $44
    ld b, c                                       ; $4edb: $41
    ret nz                                        ; $4edc: $c0

    ld [hl+], a                                   ; $4edd: $22
    ld c, $82                                     ; $4ede: $0e $82
    ld [$c426], a                                 ; $4ee0: $ea $26 $c4
    halt                                          ; $4ee3: $76
    ld b, h                                       ; $4ee4: $44
    dec l                                         ; $4ee5: $2d
    ld l, h                                       ; $4ee6: $6c
    pop de                                        ; $4ee7: $d1
    ld a, [hl+]                                   ; $4ee8: $2a
    jr nz, jr_02a_4eab                            ; $4ee9: $20 $c0

    rst $20                                       ; $4eeb: $e7
    ld b, c                                       ; $4eec: $41
    and b                                         ; $4eed: $a0
    ld b, [hl]                                    ; $4eee: $46
    ld a, a                                       ; $4eef: $7f
    ld bc, $c67d                                  ; $4ef0: $01 $7d $c6
    add e                                         ; $4ef3: $83
    ld h, l                                       ; $4ef4: $65
    ld b, l                                       ; $4ef5: $45
    ld [$7625], a                                 ; $4ef6: $ea $25 $76
    ld b, h                                       ; $4ef9: $44
    adc $0a                                       ; $4efa: $ce $0a
    and l                                         ; $4efc: $a5
    jp nz, Jump_02a_6784                          ; $4efd: $c2 $84 $67

    dec bc                                        ; $4f00: $0b
    ld a, c                                       ; $4f01: $79
    ld a, [hl]                                    ; $4f02: $7e
    nop                                           ; $4f03: $00
    pop hl                                        ; $4f04: $e1
    add c                                         ; $4f05: $81
    xor a                                         ; $4f06: $af
    add c                                         ; $4f07: $81
    and b                                         ; $4f08: $a0
    ld b, a                                       ; $4f09: $47
    or l                                          ; $4f0a: $b5
    inc b                                         ; $4f0b: $04
    halt                                          ; $4f0c: $76
    ld b, l                                       ; $4f0d: $45
    ld hl, sp-$32                                 ; $4f0e: $f8 $ce
    add hl, bc                                    ; $4f10: $09
    inc h                                         ; $4f11: $24
    and d                                         ; $4f12: $a2
    ld b, l                                       ; $4f13: $45
    ld l, b                                       ; $4f14: $68

jr_02a_4f15:
    add b                                         ; $4f15: $80
    ld b, h                                       ; $4f16: $44
    ld a, [hl-]                                   ; $4f17: $3a
    dec [hl]                                      ; $4f18: $35
    ld b, b                                       ; $4f19: $40
    ld [bc], a                                    ; $4f1a: $02
    ret nz                                        ; $4f1b: $c0

    ldh [$99], a                                  ; $4f1c: $e0 $99
    and b                                         ; $4f1e: $a0
    ld c, c                                       ; $4f1f: $49
    ld hl, sp+$04                                 ; $4f20: $f8 $04
    ld c, c                                       ; $4f22: $49
    push hl                                       ; $4f23: $e5
    adc $09                                       ; $4f24: $ce $09
    inc h                                         ; $4f26: $24
    and d                                         ; $4f27: $a2
    ld b, d                                       ; $4f28: $42
    add h                                         ; $4f29: $84
    ld c, $c0                                     ; $4f2a: $0e $c0
    and e                                         ; $4f2c: $a3
    ld [hl], $38                                  ; $4f2d: $36 $38
    ld b, h                                       ; $4f2f: $44
    add e                                         ; $4f30: $83
    and b                                         ; $4f31: $a0
    rst $28                                       ; $4f32: $ef
    ld h, d                                       ; $4f33: $62
    and b                                         ; $4f34: $a0
    ld b, l                                       ; $4f35: $45
    inc a                                         ; $4f36: $3c
    add h                                         ; $4f37: $84
    ldh a, [rPCM12]                               ; $4f38: $f0 $76
    ld b, l                                       ; $4f3a: $45
    adc $09                                       ; $4f3b: $ce $09
    inc h                                         ; $4f3d: $24
    and d                                         ; $4f3e: $a2
    jp nz, $84c8                                  ; $4f3f: $c2 $c8 $84

    ld l, a                                       ; $4f42: $6f
    add e                                         ; $4f43: $83
    ld b, e                                       ; $4f44: $43
    inc c                                         ; $4f45: $0c
    add e                                         ; $4f46: $83
    and c                                         ; $4f47: $a1
    add $20                                       ; $4f48: $c6 $20
    push bc                                       ; $4f4a: $c5
    add $a0                                       ; $4f4b: $c6 $a0
    ld c, d                                       ; $4f4d: $4a
    halt                                          ; $4f4e: $76
    ld b, a                                       ; $4f4f: $47
    ld [hl], b                                    ; $4f50: $70
    add hl, bc                                    ; $4f51: $09
    inc h                                         ; $4f52: $24
    and d                                         ; $4f53: $a2
    jr jr_02a_4ed8                                ; $4f54: $18 $82

    ld h, e                                       ; $4f56: $63
    adc [hl]                                      ; $4f57: $8e
    ret nz                                        ; $4f58: $c0

    adc e                                         ; $4f59: $8b
    nop                                           ; $4f5a: $00
    add h                                         ; $4f5b: $84
    add l                                         ; $4f5c: $85
    add e                                         ; $4f5d: $83
    and d                                         ; $4f5e: $a2
    ld b, h                                       ; $4f5f: $44
    jp nz, Jump_02a_44a0                          ; $4f60: $c2 $a0 $44

    ret nz                                        ; $4f63: $c0

    jp nz, Jump_02a_4905                          ; $4f64: $c2 $05 $49

    push hl                                       ; $4f67: $e5
    ld b, h                                       ; $4f68: $44
    ld a, [hl+]                                   ; $4f69: $2a
    ld [de], a                                    ; $4f6a: $12
    ld [hl+], a                                   ; $4f6b: $22
    ld d, l                                       ; $4f6c: $55
    and h                                         ; $4f6d: $a4
    inc a                                         ; $4f6e: $3c
    ld c, c                                       ; $4f6f: $49
    sub a                                         ; $4f70: $97
    sbc d                                         ; $4f71: $9a
    nop                                           ; $4f72: $00
    ld [hl], e                                    ; $4f73: $73
    jr nz, @-$38                                  ; $4f74: $20 $c6

    add c                                         ; $4f76: $81
    ld b, a                                       ; $4f77: $47
    ld h, a                                       ; $4f78: $67
    ld c, c                                       ; $4f79: $49
    push hl                                       ; $4f7a: $e5
    pop af                                        ; $4f7b: $f1
    ld b, l                                       ; $4f7c: $45
    and h                                         ; $4f7d: $a4
    call nz, $6402                                ; $4f7e: $c4 $02 $64
    sub [hl]                                      ; $4f81: $96
    add c                                         ; $4f82: $81
    ld e, $8f                                     ; $4f83: $1e $8f
    nop                                           ; $4f85: $00
    ld b, l                                       ; $4f86: $45
    ld b, e                                       ; $4f87: $43
    ld b, c                                       ; $4f88: $41
    ld b, e                                       ; $4f89: $43
    db $fd                                        ; $4f8a: $fd
    ldh [rDIV], a                                 ; $4f8b: $e0 $04
    ld h, h                                       ; $4f8d: $64
    ld b, a                                       ; $4f8e: $47
    ld l, e                                       ; $4f8f: $6b
    ldh a, [rPCM12]                               ; $4f90: $f0 $76
    ld c, c                                       ; $4f92: $49
    and h                                         ; $4f93: $a4
    add $84                                       ; $4f94: $c6 $84
    add l                                         ; $4f96: $85
    ld d, h                                       ; $4f97: $54
    ld [bc], a                                    ; $4f98: $02
    sbc c                                         ; $4f99: $99
    ld b, l                                       ; $4f9a: $45
    ld [hl], $3b                                  ; $4f9b: $36 $3b
    inc bc                                        ; $4f9d: $03
    dec [hl]                                      ; $4f9e: $35
    dec sp                                        ; $4f9f: $3b
    db $fd                                        ; $4fa0: $fd
    ldh [$fc], a                                  ; $4fa1: $e0 $fc
    add b                                         ; $4fa3: $80
    db $fd                                        ; $4fa4: $fd
    and h                                         ; $4fa5: $a4
    ld b, a                                       ; $4fa6: $47
    ld l, b                                       ; $4fa7: $68
    sbc $29                                       ; $4fa8: $de $29
    and h                                         ; $4faa: $a4
    add $78                                       ; $4fab: $c6 $78
    adc h                                         ; $4fad: $8c
    nop                                           ; $4fae: $00
    add b                                         ; $4faf: $80
    db $e4                                        ; $4fb0: $e4
    cp b                                          ; $4fb1: $b8
    and c                                         ; $4fb2: $a1
    ld b, h                                       ; $4fb3: $44
    inc a                                         ; $4fb4: $3c
    sbc [hl]                                      ; $4fb5: $9e
    ld h, h                                       ; $4fb6: $64
    rst $38                                       ; $4fb7: $ff
    ldh [$1f], a                                  ; $4fb8: $e0 $1f
    sbc a                                         ; $4fba: $9f
    inc a                                         ; $4fbb: $3c
    ld b, h                                       ; $4fbc: $44
    xor b                                         ; $4fbd: $a8
    xor b                                         ; $4fbe: $a8
    xor e                                         ; $4fbf: $ab
    ld b, e                                       ; $4fc0: $43
    ld b, a                                       ; $4fc1: $47
    ld l, a                                       ; $4fc2: $6f
    push de                                       ; $4fc3: $d5
    ld b, d                                       ; $4fc4: $42
    ld [c], a                                     ; $4fc5: $e2
    ld b, h                                       ; $4fc6: $44
    dec h                                         ; $4fc7: $25
    jp nc, Jump_000_008c                          ; $4fc8: $d2 $8c $00

    add d                                         ; $4fcb: $82
    ld b, d                                       ; $4fcc: $42
    dec sp                                        ; $4fcd: $3b
    db $e3                                        ; $4fce: $e3
    ld b, d                                       ; $4fcf: $42
    dec [hl]                                      ; $4fd0: $35
    ld l, c                                       ; $4fd1: $69
    rst $38                                       ; $4fd2: $ff
    sbc l                                         ; $4fd3: $9d
    dec [hl]                                      ; $4fd4: $35
    dec [hl]                                      ; $4fd5: $35
    sbc l                                         ; $4fd6: $9d
    ld l, d                                       ; $4fd7: $6a
    dec [hl]                                      ; $4fd8: $35
    ld b, d                                       ; $4fd9: $42
    xor c                                         ; $4fda: $a9
    inc bc                                        ; $4fdb: $03
    xor c                                         ; $4fdc: $a9
    sbc c                                         ; $4fdd: $99
    ld l, b                                       ; $4fde: $68
    ld hl, $6947                                  ; $4fdf: $21 $47 $69
    ret nz                                        ; $4fe2: $c0

    inc b                                         ; $4fe3: $04
    inc [hl]                                      ; $4fe4: $34
    add e                                         ; $4fe5: $83
    and h                                         ; $4fe6: $a4
    jp Jump_02a_4162                              ; $4fe7: $c3 $62 $41


    db $10                                        ; $4fea: $10
    add h                                         ; $4feb: $84
    add e                                         ; $4fec: $83
    ld d, $60                                     ; $4fed: $16 $60
    ld a, [$c040]                                 ; $4fef: $fa $40 $c0
    ldh [$35], a                                  ; $4ff2: $e0 $35
    rst $38                                       ; $4ff4: $ff
    ldh [$c0], a                                  ; $4ff5: $e0 $c0
    ldh [$be], a                                  ; $4ff7: $e0 $be
    ret nz                                        ; $4ff9: $c0

    nop                                           ; $4ffa: $00
    push bc                                       ; $4ffb: $c5
    ld h, d                                       ; $4ffc: $62
    ld e, c                                       ; $4ffd: $59
    ld l, b                                       ; $4ffe: $68
    ret nz                                        ; $4fff: $c0

    inc b                                         ; $5000: $04
    jp nz, $c765                                  ; $5001: $c2 $65 $c7

    ld b, $c6                                     ; $5004: $06 $c6
    ld b, d                                       ; $5006: $42
    adc [hl]                                      ; $5007: $8e
    and d                                         ; $5008: $a2
    ld b, b                                       ; $5009: $40
    ldh [$3d], a                                  ; $500a: $e0 $3d
    ld l, e                                       ; $500c: $6b
    cp a                                          ; $500d: $bf
    ld h, b                                       ; $500e: $60
    ld [hl], c                                    ; $500f: $71
    ld l, l                                       ; $5010: $6d
    inc a                                         ; $5011: $3c
    ld b, h                                       ; $5012: $44
    push bc                                       ; $5013: $c5
    ld h, e                                       ; $5014: $63
    ld b, a                                       ; $5015: $47
    ld l, d                                       ; $5016: $6a
    jr jr_02a_508c                                ; $5017: $18 $73

    jr z, jr_02a_502c                             ; $5019: $28 $11

    ld b, l                                       ; $501b: $45
    push bc                                       ; $501c: $c5
    nop                                           ; $501d: $00
    sbc c                                         ; $501e: $99
    xor b                                         ; $501f: $a8
    ld d, b                                       ; $5020: $50
    ld bc, $83cf                                  ; $5021: $01 $cf $83
    ret nz                                        ; $5024: $c0

    rst $00                                       ; $5025: $c7
    nop                                           ; $5026: $00
    rst $38                                       ; $5027: $ff
    and b                                         ; $5028: $a0
    add a                                         ; $5029: $87
    inc hl                                        ; $502a: $23
    ld b, a                                       ; $502b: $47

jr_02a_502c:
    ld [hl], b                                    ; $502c: $70
    call nc, Call_02a_6922                        ; $502d: $d4 $22 $69
    inc hl                                        ; $5030: $23
    ld b, h                                       ; $5031: $44
    add c                                         ; $5032: $81
    pop bc                                        ; $5033: $c1
    db $e3                                        ; $5034: $e3
    inc hl                                        ; $5035: $23
    ldh [rSB], a                                  ; $5036: $e0 $01
    pop de                                        ; $5038: $d1
    ld b, b                                       ; $5039: $40
    rst $00                                       ; $503a: $c7
    add a                                         ; $503b: $87
    inc h                                         ; $503c: $24
    inc c                                         ; $503d: $0c
    inc h                                         ; $503e: $24
    cp [hl]                                       ; $503f: $be
    dec c                                         ; $5040: $0d
    sub e                                         ; $5041: $93
    jr nz, jr_02a_50ad                            ; $5042: $20 $69

    inc h                                         ; $5044: $24
    ld b, h                                       ; $5045: $44
    add l                                         ; $5046: $85
    ld bc, $2399                                  ; $5047: $01 $99 $23
    db $e3                                        ; $504a: $e3
    ld a, c                                       ; $504b: $79
    ld h, e                                       ; $504c: $63
    inc b                                         ; $504d: $04
    add e                                         ; $504e: $83
    ld e, d                                       ; $504f: $5a
    ld l, e                                       ; $5050: $6b
    db $fc                                        ; $5051: $fc
    ld b, l                                       ; $5052: $45
    ei                                            ; $5053: $fb
    rst $28                                       ; $5054: $ef
    ld [bc], a                                    ; $5055: $02
    call nz, $9618                                ; $5056: $c4 $18 $96
    inc bc                                        ; $5059: $03
    jr c, jr_02a_50bd                             ; $505a: $38 $61

    jp z, $c501                                   ; $505c: $ca $01 $c5

    add $88                                       ; $505f: $c6 $88
    jr nz, jr_02a_50bd                            ; $5061: $20 $5a

    ld h, a                                       ; $5063: $67
    sub e                                         ; $5064: $93
    xor b                                         ; $5065: $a8
    ld [$0c72], sp                                ; $5066: $08 $72 $0c
    ld c, h                                       ; $5069: $4c
    pop hl                                        ; $506a: $e1
    jr jr_02a_5096                                ; $506b: $18 $29

    sbc d                                         ; $506d: $9a
    add h                                         ; $506e: $84
    db $e3                                        ; $506f: $e3
    sub l                                         ; $5070: $95
    ret nz                                        ; $5071: $c0

    ld e, d                                       ; $5072: $5a
    ld l, b                                       ; $5073: $68
    scf                                           ; $5074: $37
    add a                                         ; $5075: $87
    db $10                                        ; $5076: $10
    dec b                                         ; $5077: $05
    and [hl]                                      ; $5078: $a6
    add h                                         ; $5079: $84
    rlca                                          ; $507a: $07
    ld b, d                                       ; $507b: $42
    and h                                         ; $507c: $a4
    ld h, b                                       ; $507d: $60
    add c                                         ; $507e: $81
    cp d                                          ; $507f: $ba
    db $f4                                        ; $5080: $f4
    ld b, c                                       ; $5081: $41
    add $62                                       ; $5082: $c6 $62
    ld l, [hl]                                    ; $5084: $6e
    ld b, b                                       ; $5085: $40
    nop                                           ; $5086: $00
    ld e, d                                       ; $5087: $5a
    ld l, b                                       ; $5088: $68
    scf                                           ; $5089: $37
    add [hl]                                      ; $508a: $86
    cp a                                          ; $508b: $bf

jr_02a_508c:
    ld b, [hl]                                    ; $508c: $46
    add h                                         ; $508d: $84
    ld [$86c2], sp                                ; $508e: $08 $c2 $86
    jr jr_02a_50b4                                ; $5091: $18 $21

    jp nc, Jump_02a_4e21                          ; $5093: $d2 $21 $4e

jr_02a_5096:
    ld b, $10                                     ; $5096: $06 $10
    ld e, d                                       ; $5098: $5a
    ld h, [hl]                                    ; $5099: $66
    scf                                           ; $509a: $37
    adc h                                         ; $509b: $8c
    dec hl                                        ; $509c: $2b
    xor e                                         ; $509d: $ab
    push de                                       ; $509e: $d5
    ld h, d                                       ; $509f: $62
    xor b                                         ; $50a0: $a8
    ld c, a                                       ; $50a1: $4f
    add b                                         ; $50a2: $80
    jr jr_02a_50c6                                ; $50a3: $18 $21

    dec c                                         ; $50a5: $0d
    jp nz, $d0c0                                  ; $50a6: $c2 $c0 $d0

    inc hl                                        ; $50a9: $23
    ld e, d                                       ; $50aa: $5a
    ld l, b                                       ; $50ab: $68
    scf                                           ; $50ac: $37

jr_02a_50ad:
    add h                                         ; $50ad: $84
    ld [bc], a                                    ; $50ae: $02
    xor c                                         ; $50af: $a9
    add h                                         ; $50b0: $84
    rlca                                          ; $50b1: $07
    dec b                                         ; $50b2: $05
    ld b, d                                       ; $50b3: $42

jr_02a_50b4:
    xor c                                         ; $50b4: $a9
    xor b                                         ; $50b5: $a8
    add c                                         ; $50b6: $81
    sbc c                                         ; $50b7: $99
    xor [hl]                                      ; $50b8: $ae
    and [hl]                                      ; $50b9: $a6
    ret nc                                        ; $50ba: $d0

    inc h                                         ; $50bb: $24
    ld e, d                                       ; $50bc: $5a

jr_02a_50bd:
    ld l, b                                       ; $50bd: $68
    sub e                                         ; $50be: $93
    and a                                         ; $50bf: $a7
    ld [bc], a                                    ; $50c0: $02
    and l                                         ; $50c1: $a5
    ld [hl], d                                    ; $50c2: $72
    rlca                                          ; $50c3: $07
    rlc c                                         ; $50c4: $cb $01

jr_02a_50c6:
    call z, $e3bf                                 ; $50c6: $cc $bf $e3
    dec a                                         ; $50c9: $3d
    ld b, a                                       ; $50ca: $47
    ret nc                                        ; $50cb: $d0

    inc h                                         ; $50cc: $24
    ld e, d                                       ; $50cd: $5a
    ld h, a                                       ; $50ce: $67
    ld hl, sp-$7e                                 ; $50cf: $f8 $82
    add l                                         ; $50d1: $85
    xor d                                         ; $50d2: $aa
    add h                                         ; $50d3: $84
    ld [$0200], sp                                ; $50d4: $08 $00 $02
    ld b, l                                       ; $50d7: $45
    db $fd                                        ; $50d8: $fd
    daa                                           ; $50d9: $27
    ret nc                                        ; $50da: $d0

    ld h, $11                                     ; $50db: $26 $11
    add l                                         ; $50dd: $85
    cp l                                          ; $50de: $bd
    inc bc                                        ; $50df: $03
    add c                                         ; $50e0: $81
    adc e                                         ; $50e1: $8b
    ld [hl], d                                    ; $50e2: $72
    ld b, $02                                     ; $50e3: $06 $02
    ld b, l                                       ; $50e5: $45
    nop                                           ; $50e6: $00
    ld c, [hl]                                    ; $50e7: $4e
    ld b, e                                       ; $50e8: $43
    and l                                         ; $50e9: $a5
    add h                                         ; $50ea: $84
    ret nc                                        ; $50eb: $d0

    inc hl                                        ; $50ec: $23
    ld [de], a                                    ; $50ed: $12
    and l                                         ; $50ee: $a5
    ld hl, sp-$7d                                 ; $50ef: $f8 $83
    ld a, a                                       ; $50f1: $7f
    db $eb                                        ; $50f2: $eb
    ld [hl], d                                    ; $50f3: $72
    add hl, bc                                    ; $50f4: $09
    ld b, b                                       ; $50f5: $40
    add h                                         ; $50f6: $84
    nop                                           ; $50f7: $00
    adc b                                         ; $50f8: $88
    call nz, Call_000_27d0                        ; $50f9: $c4 $d0 $27
    cp $fb                                        ; $50fc: $fe $fb
    ld [hl], e                                    ; $50fe: $73
    ld h, a                                       ; $50ff: $67
    ld b, b                                       ; $5100: $40
    db $ec                                        ; $5101: $ec
    ret nc                                        ; $5102: $d0

    ret nc                                        ; $5103: $d0

    cp a                                          ; $5104: $bf
    ld [$0000], a                                 ; $5105: $ea $00 $00
    nop                                           ; $5108: $00
    adc a                                         ; $5109: $8f
    ld c, l                                       ; $510a: $4d
    ld c, l                                       ; $510b: $4d
    dec c                                         ; $510c: $0d
    ld c, l                                       ; $510d: $4d
    rst $38                                       ; $510e: $ff
    pop hl                                        ; $510f: $e1
    ld a, [$f6e1]                                 ; $5110: $fa $e1 $f6
    jp hl                                         ; $5113: $e9


    ld l, $02                                     ; $5114: $2e $02
    rst $38                                       ; $5116: $ff
    pop hl                                        ; $5117: $e1
    ld c, $ff                                     ; $5118: $0e $ff
    pop hl                                        ; $511a: $e1
    ld [c], a                                     ; $511b: $e2
    ld [c], a                                     ; $511c: $e2
    pop hl                                        ; $511d: $e1
    rst $20                                       ; $511e: $e7
    ei                                            ; $511f: $fb
    db $e3                                        ; $5120: $e3
    set 4, b                                      ; $5121: $cb $e0
    ret z                                         ; $5123: $c8

    ld [c], a                                     ; $5124: $e2
    nop                                           ; $5125: $00
    db $ec                                        ; $5126: $ec
    jp hl                                         ; $5127: $e9


    db $e3                                        ; $5128: $e3
    rst $20                                       ; $5129: $e7
    call z, $c0e0                                 ; $512a: $cc $e0 $c0
    ld a, [c]                                     ; $512d: $f2
    rst $20                                       ; $512e: $e7
    pop hl                                        ; $512f: $e1
    adc $ee                                       ; $5130: $ce $ee
    cp b                                          ; $5132: $b8
    push hl                                       ; $5133: $e5
    pop hl                                        ; $5134: $e1
    ldh [rTMA], a                                 ; $5135: $e0 $06
    ld [hl], a                                    ; $5137: $77
    db $e4                                        ; $5138: $e4
    ld c, $0e                                     ; $5139: $0e $0e
    ld l, h                                       ; $513b: $6c
    ldh [$80], a                                  ; $513c: $e0 $80
    db $ed                                        ; $513e: $ed
    ld e, c                                       ; $513f: $59

jr_02a_5140:
    pop hl                                        ; $5140: $e1
    ld [hl], e                                    ; $5141: $73
    pop hl                                        ; $5142: $e1
    ld l, e                                       ; $5143: $6b
    pop hl                                        ; $5144: $e1
    ret nc                                        ; $5145: $d0

    ret z                                         ; $5146: $c8

    db $ec                                        ; $5147: $ec
    ret nz                                        ; $5148: $c0

    db $ed                                        ; $5149: $ed
    or [hl]                                       ; $514a: $b6
    ld [c], a                                     ; $514b: $e2
    ld b, b                                       ; $514c: $40
    and $0d                                       ; $514d: $e6 $0d
    jr c, @-$1e                                   ; $514f: $38 $e0

    dec c                                         ; $5151: $0d
    dec c                                         ; $5152: $0d
    db $eb                                        ; $5153: $eb
    ld l, l                                       ; $5154: $6d
    ld l, l                                       ; $5155: $6d
    ld sp, $6de0                                  ; $5156: $31 $e0 $6d
    jp nz, Jump_02a_6ee0                          ; $5159: $c2 $e0 $6e

    ld l, $6e                                     ; $515c: $2e $6e
    nop                                           ; $515e: $00
    ld a, [hl+]                                   ; $515f: $2a
    db $e3                                        ; $5160: $e3
    sub b                                         ; $5161: $90
    ld [c], a                                     ; $5162: $e2
    ld b, b                                       ; $5163: $40
    db $eb                                        ; $5164: $eb
    reti                                          ; $5165: $d9


    pop hl                                        ; $5166: $e1
    rst $10                                       ; $5167: $d7
    pop hl                                        ; $5168: $e1
    sub $e1                                       ; $5169: $d6 $e1
    ld [$00c0], a                                 ; $516b: $ea $c0 $00
    pop hl                                        ; $516e: $e1
    db $f4                                        ; $516f: $f4
    ld b, $e0                                     ; $5170: $06 $e0
    ret nc                                        ; $5172: $d0

    ldh [rKEY1], a                                ; $5173: $e0 $4d
    jp nz, Jump_02a_6ee0                          ; $5175: $c2 $e0 $6e

    ld l, $4e                                     ; $5178: $2e $4e
    ld c, $1e                                     ; $517a: $0e $1e
    jp hl                                         ; $517c: $e9


    pop bc                                        ; $517d: $c1
    ld l, [hl]                                    ; $517e: $6e
    ld c, $4e                                     ; $517f: $0e $4e
    ld c, [hl]                                    ; $5181: $4e
    ld [$f2c0], a                                 ; $5182: $ea $c0 $f2
    add $c6                                       ; $5185: $c6 $c6
    jp nz, $ff78                                  ; $5187: $c2 $78 $ff

    ldh [$c0], a                                  ; $518a: $e0 $c0
    db $e3                                        ; $518c: $e3
    ret z                                         ; $518d: $c8

    pop bc                                        ; $518e: $c1
    ld c, [hl]                                    ; $518f: $4e
    ld c, $4e                                     ; $5190: $0e $4e
    ld l, $9f                                     ; $5192: $2e $9f
    and $04                                       ; $5194: $e6 $04
    or l                                          ; $5196: $b5
    pop bc                                        ; $5197: $c1
    ld a, h                                       ; $5198: $7c
    ldh [$6e], a                                  ; $5199: $e0 $6e
    or c                                          ; $519b: $b1
    jp nz, $c6a9                                  ; $519c: $c2 $a9 $c6

    or l                                          ; $519f: $b5
    ldh [$80], a                                  ; $51a0: $e0 $80
    push hl                                       ; $51a2: $e5
    inc d                                         ; $51a3: $14
    pop hl                                        ; $51a4: $e1
    jr nz, jr_02a_5140                            ; $51a5: $20 $99

    add $98                                       ; $51a7: $c6 $98
    pop hl                                        ; $51a9: $e1
    sub a                                         ; $51aa: $97
    pop hl                                        ; $51ab: $e1
    ld e, a                                       ; $51ac: $5f
    ld [c], a                                     ; $51ad: $e2
    sbc e                                         ; $51ae: $9b
    ldh [$0d], a                                  ; $51af: $e0 $0d
    push af                                       ; $51b1: $f5
    ret nz                                        ; $51b2: $c0

    ld a, c                                       ; $51b3: $79
    ret nz                                        ; $51b4: $c0

    add [hl]                                      ; $51b5: $86
    inc a                                         ; $51b6: $3c
    ldh [$2e], a                                  ; $51b7: $e0 $2e
    ld c, $c0                                     ; $51b9: $0e $c0
    jp hl                                         ; $51bb: $e9


    db $fc                                        ; $51bc: $fc
    call nz, $c243                                ; $51bd: $c4 $43 $c2
    inc l                                         ; $51c0: $2c
    add sp, $4d                                   ; $51c1: $e8 $4d
    nop                                           ; $51c3: $00
    sbc b                                         ; $51c4: $98
    db $e4                                        ; $51c5: $e4
    ldh [$e6], a                                  ; $51c6: $e0 $e6
    adc $c4                                       ; $51c8: $ce $c4
    ld sp, $c0c1                                  ; $51ca: $31 $c1 $c0
    db $ed                                        ; $51cd: $ed
    inc l                                         ; $51ce: $2c
    jp nz, $c106                                  ; $51cf: $c2 $06 $c1

    inc l                                         ; $51d2: $2c
    jp hl                                         ; $51d3: $e9


    inc c                                         ; $51d4: $0c
    add hl, bc                                    ; $51d5: $09
    ret                                           ; $51d6: $c9


    ld d, b                                       ; $51d7: $50
    pop hl                                        ; $51d8: $e1
    ld c, l                                       ; $51d9: $4d
    dec l                                         ; $51da: $2d
    add hl, de                                    ; $51db: $19
    jp $e380                                      ; $51dc: $c3 $80 $e3


    ret nz                                        ; $51df: $c0

    ret nz                                        ; $51e0: $c0

    ret nz                                        ; $51e1: $c0

    db $ec                                        ; $51e2: $ec
    jr nz, @-$06                                  ; $51e3: $20 $f8

    and c                                         ; $51e5: $a1
    inc l                                         ; $51e6: $2c
    rst $20                                       ; $51e7: $e7
    ret                                           ; $51e8: $c9


    xor d                                         ; $51e9: $aa
    rst $10                                       ; $51ea: $d7
    pop bc                                        ; $51eb: $c1
    jp nz, Jump_000_2da0                          ; $51ec: $c2 $a0 $2d

    call nz, $82a2                                ; $51ef: $c4 $a2 $82
    jp nz, Jump_02a_6d03                          ; $51f2: $c2 $03 $6d

    ld l, l                                       ; $51f5: $6d
    rst $38                                       ; $51f6: $ff
    jp $e580                                      ; $51f7: $c3 $80 $e5


    nop                                           ; $51fa: $00
    db $e4                                        ; $51fb: $e4
    sub l                                         ; $51fc: $95
    and a                                         ; $51fd: $a7
    ret nz                                        ; $51fe: $c0

    db $eb                                        ; $51ff: $eb
    ret c                                         ; $5200: $d8

    push bc                                       ; $5201: $c5
    nop                                           ; $5202: $00
    ret nz                                        ; $5203: $c0

    ld [c], a                                     ; $5204: $e2
    rst $38                                       ; $5205: $ff
    db $e3                                        ; $5206: $e3
    jp hl                                         ; $5207: $e9


    xor d                                         ; $5208: $aa
    inc l                                         ; $5209: $2c
    jp nz, $ebc0                                  ; $520a: $c2 $c0 $eb

    or h                                          ; $520d: $b4
    rst $20                                       ; $520e: $e7
    ld d, l                                       ; $520f: $55
    pop hl                                        ; $5210: $e1
    adc $c1                                       ; $5211: $ce $c1
    ld c, $18                                     ; $5213: $0e $18
    ld [c], a                                     ; $5215: $e2
    dec c                                         ; $5216: $0d
    ld c, l                                       ; $5217: $4d
    ld l, l                                       ; $5218: $6d
    ld a, c                                       ; $5219: $79
    ldh [$2b], a                                  ; $521a: $e0 $2b
    jp $c429                                      ; $521c: $c3 $29 $c4


    db $ec                                        ; $521f: $ec
    pop hl                                        ; $5220: $e1
    ldh [$2c], a                                  ; $5221: $e0 $2c
    pop bc                                        ; $5223: $c1
    add hl, de                                    ; $5224: $19
    pop bc                                        ; $5225: $c1
    add b                                         ; $5226: $80
    pop af                                        ; $5227: $f1
    ret nz                                        ; $5228: $c0

    rst $20                                       ; $5229: $e7
    sub a                                         ; $522a: $97
    pop hl                                        ; $522b: $e1
    ld l, e                                       ; $522c: $6b
    ld l, e                                       ; $522d: $6b
    ld c, l                                       ; $522e: $4d
    pop bc                                        ; $522f: $c1
    dec l                                         ; $5230: $2d
    xor h                                         ; $5231: $ac
    pop hl                                        ; $5232: $e1
    ld c, h                                       ; $5233: $4c
    xor d                                         ; $5234: $aa
    inc l                                         ; $5235: $2c
    jp nz, $85d4                                  ; $5236: $c2 $d4 $85

    sub l                                         ; $5239: $95
    and e                                         ; $523a: $a3
    ld l, l                                       ; $523b: $6d
    ld l, l                                       ; $523c: $6d
    pop hl                                        ; $523d: $e1
    dec l                                         ; $523e: $2d
    jp nz, $b9a2                                  ; $523f: $c2 $a2 $b9

    and b                                         ; $5242: $a0
    ld c, b                                       ; $5243: $48
    pop bc                                        ; $5244: $c1
    ld d, h                                       ; $5245: $54
    and e                                         ; $5246: $a3
    dec c                                         ; $5247: $0d
    ld l, l                                       ; $5248: $6d
    dec c                                         ; $5249: $0d
    ld bc, $bf6b                                  ; $524a: $01 $6b $bf
    pop hl                                        ; $524d: $e1
    and c                                         ; $524e: $a1
    xor c                                         ; $524f: $a9
    and b                                         ; $5250: $a0
    and c                                         ; $5251: $a1
    inc l                                         ; $5252: $2c
    jp nz, $eac0                                  ; $5253: $c2 $c0 $ea

    dec b                                         ; $5256: $05
    and b                                         ; $5257: $a0
    and [hl]                                      ; $5258: $a6
    adc d                                         ; $5259: $8a
    inc e                                         ; $525a: $1c
    ld a, [hl]                                    ; $525b: $7e
    jp nz, $a2a3                                  ; $525c: $c2 $a3 $a2

    ld l, e                                       ; $525f: $6b
    dec c                                         ; $5260: $0d
    ld c, e                                       ; $5261: $4b
    ret nz                                        ; $5262: $c0

    ld [c], a                                     ; $5263: $e2
    and c                                         ; $5264: $a1
    xor b                                         ; $5265: $a8
    ret nz                                        ; $5266: $c0

    db $e4                                        ; $5267: $e4
    ld b, b                                       ; $5268: $40
    ld b, c                                       ; $5269: $41
    add e                                         ; $526a: $83
    inc l                                         ; $526b: $2c
    db $e3                                        ; $526c: $e3
    ld c, e                                       ; $526d: $4b
    and d                                         ; $526e: $a2
    db $e4                                        ; $526f: $e4
    ld [c], a                                     ; $5270: $e2
    ld d, c                                       ; $5271: $51
    add a                                         ; $5272: $87
    cp e                                          ; $5273: $bb
    and c                                         ; $5274: $a1
    ld l, e                                       ; $5275: $6b
    ret nz                                        ; $5276: $c0

    pop hl                                        ; $5277: $e1
    ld bc, $a16d                                  ; $5278: $01 $6d $a1
    xor h                                         ; $527b: $ac
    add b                                         ; $527c: $80
    push hl                                       ; $527d: $e5
    ld l, $85                                     ; $527e: $2e $85
    sbc $84                                       ; $5280: $de $84
    ld [c], a                                     ; $5282: $e2
    add b                                         ; $5283: $80
    inc hl                                        ; $5284: $23
    add c                                         ; $5285: $81
    call Call_000_0080                            ; $5286: $cd $80 $00
    ldh [$a5], a                                  ; $5289: $e0 $a5
    ld [bc], a                                    ; $528b: $02
    ldh [rLCDC], a                                ; $528c: $e0 $40
    ldh [$c0], a                                  ; $528e: $e0 $c0
    ldh [$a1], a                                  ; $5290: $e0 $a1
    xor h                                         ; $5292: $ac
    xor [hl]                                      ; $5293: $ae
    add e                                         ; $5294: $83
    ld sp, hl                                     ; $5295: $f9
    ld h, e                                       ; $5296: $63
    sbc $89                                       ; $5297: $de $89
    ld hl, sp-$32                                 ; $5299: $f8 $ce
    ld h, c                                       ; $529b: $61
    adc b                                         ; $529c: $88
    call nz, $c205                                ; $529d: $c4 $05 $c2
    dec bc                                        ; $52a0: $0b
    ld l, e                                       ; $52a1: $6b
    ld l, e                                       ; $52a2: $6b
    dec bc                                        ; $52a3: $0b
    dec bc                                        ; $52a4: $0b
    ld bc, $804b                                  ; $52a5: $01 $4b $80
    ldh [rSTAT], a                                ; $52a8: $e0 $41
    xor h                                         ; $52aa: $ac
    cp h                                          ; $52ab: $bc
    ld h, d                                       ; $52ac: $62
    pop de                                        ; $52ad: $d1
    jp $a2d1                                      ; $52ae: $c3 $d1 $a2


    sbc $84                                       ; $52b1: $de $84
    adc [hl]                                      ; $52b3: $8e
    ld h, b                                       ; $52b4: $60
    ld a, [hl]                                    ; $52b5: $7e
    inc hl                                        ; $52b6: $23
    and l                                         ; $52b7: $a5
    ld l, l                                       ; $52b8: $6d
    ld c, e                                       ; $52b9: $4b
    ld c, e                                       ; $52ba: $4b
    dec c                                         ; $52bb: $0d
    dec c                                         ; $52bc: $0d
    ld c, e                                       ; $52bd: $4b
    rst $38                                       ; $52be: $ff
    db $e4                                        ; $52bf: $e4
    jr nz, @-$31                                  ; $52c0: $20 $cd

    call nz, $ac81                                ; $52c2: $c4 $81 $ac
    ld a, [c]                                     ; $52c5: $f2
    set 0, b                                      ; $52c6: $cb $c0
    db $e4                                        ; $52c8: $e4
    ld c, a                                       ; $52c9: $4f
    ld h, h                                       ; $52ca: $64
    ld l, l                                       ; $52cb: $6d
    adc d                                         ; $52cc: $8a
    ldh [$c0], a                                  ; $52cd: $e0 $c0
    jp hl                                         ; $52cf: $e9


    ld b, b                                       ; $52d0: $40
    ld h, e                                       ; $52d1: $63
    jp nz, $ac01                                  ; $52d2: $c2 $01 $ac

    sub e                                         ; $52d5: $93
    add e                                         ; $52d6: $83
    sub b                                         ; $52d7: $90
    ld h, e                                       ; $52d8: $63
    sbc [hl]                                      ; $52d9: $9e
    add d                                         ; $52da: $82
    di                                            ; $52db: $f3
    call nz, $ff0b                                ; $52dc: $c4 $0b $ff
    ldh [rP1], a                                  ; $52df: $e0 $00
    add [hl]                                      ; $52e1: $86
    push hl                                       ; $52e2: $e5
    add b                                         ; $52e3: $80
    and $a1                                       ; $52e4: $e6 $a1
    xor c                                         ; $52e6: $a9
    add b                                         ; $52e7: $80
    push hl                                       ; $52e8: $e5
    ld b, a                                       ; $52e9: $47
    and h                                         ; $52ea: $a4
    sbc [hl]                                      ; $52eb: $9e
    add h                                         ; $52ec: $84
    add sp, -$1d                                  ; $52ed: $e8 $e3
    pop bc                                        ; $52ef: $c1
    db $e3                                        ; $52f0: $e3
    nop                                           ; $52f1: $00
    ret nz                                        ; $52f2: $c0

    jp hl                                         ; $52f3: $e9


    nop                                           ; $52f4: $00
    ld [c], a                                     ; $52f5: $e2
    ld h, c                                       ; $52f6: $61
    xor d                                         ; $52f7: $aa
    cp e                                          ; $52f8: $bb
    and l                                         ; $52f9: $a5
    ret nz                                        ; $52fa: $c0

    push hl                                       ; $52fb: $e5
    sbc $84                                       ; $52fc: $de $84
    dec d                                         ; $52fe: $15
    ld h, d                                       ; $52ff: $62
    pop bc                                        ; $5300: $c1
    db $e3                                        ; $5301: $e3
    cp $cc                                        ; $5302: $fe $cc
    ret nz                                        ; $5304: $c0

    dec hl                                        ; $5305: $2b
    dec bc                                        ; $5306: $0b
    dec hl                                        ; $5307: $2b
    ld a, [bc]                                    ; $5308: $0a
    ld a, [bc]                                    ; $5309: $0a
    ld l, d                                       ; $530a: $6a
    dec bc                                        ; $530b: $0b
    ld [bc], a                                    ; $530c: $02
    db $fd                                        ; $530d: $fd
    ldh [rWX], a                                  ; $530e: $e0 $4b
    nop                                           ; $5310: $00
    jp $a6a1                                      ; $5311: $c3 $a1 $a6


    ld [hl], h                                    ; $5314: $74
    ld b, l                                       ; $5315: $45
    di                                            ; $5316: $f3
    ld l, c                                       ; $5317: $69
    pop bc                                        ; $5318: $c1
    and c                                         ; $5319: $a1
    ld [hl], l                                    ; $531a: $75
    ld h, c                                       ; $531b: $61
    ld [hl-], a                                   ; $531c: $32
    ld [$4be1], sp                                ; $531d: $08 $e1 $4b
    adc l                                         ; $5320: $8d
    ret nz                                        ; $5321: $c0

    call nz, Call_02a_4ae0                        ; $5322: $c4 $e0 $4a
    ld a, [bc]                                    ; $5325: $0a
    rst $38                                       ; $5326: $ff
    db $e3                                        ; $5327: $e3
    cp a                                          ; $5328: $bf
    ldh [$60], a                                  ; $5329: $e0 $60
    nop                                           ; $532b: $00
    pop bc                                        ; $532c: $c1
    inc d                                         ; $532d: $14
    ld b, [hl]                                    ; $532e: $46
    cp d                                          ; $532f: $ba
    ld b, [hl]                                    ; $5330: $46
    inc e                                         ; $5331: $1c
    ld b, [hl]                                    ; $5332: $46
    xor b                                         ; $5333: $a8
    ld b, [hl]                                    ; $5334: $46
    ld c, l                                       ; $5335: $4d
    dec c                                         ; $5336: $0d
    dec b                                         ; $5337: $05
    db $e3                                        ; $5338: $e3
    di                                            ; $5339: $f3
    dec c                                         ; $533a: $0d
    dec c                                         ; $533b: $0d
    call nz, $bde4                                ; $533c: $c4 $e4 $bd
    ld [c], a                                     ; $533f: $e2
    ld c, e                                       ; $5340: $4b
    ld c, e                                       ; $5341: $4b
    ld c, l                                       ; $5342: $4d
    dec l                                         ; $5343: $2d
    add c                                         ; $5344: $81
    ld l, l                                       ; $5345: $6d
    ld [hl], c                                    ; $5346: $71
    ld h, b                                       ; $5347: $60
    cp [hl]                                       ; $5348: $be
    add h                                         ; $5349: $84
    cp d                                          ; $534a: $ba
    ld b, [hl]                                    ; $534b: $46
    sub e                                         ; $534c: $93
    add l                                         ; $534d: $85
    ld a, h                                       ; $534e: $7c
    ld l, b                                       ; $534f: $68
    ret nz                                        ; $5350: $c0

    and $6b                                       ; $5351: $e6 $6b
    dec bc                                        ; $5353: $0b
    ld a, [bc]                                    ; $5354: $0a
    ld a, [hl+]                                   ; $5355: $2a
    rst $20                                       ; $5356: $e7
    ld b, c                                       ; $5357: $41
    dec c                                         ; $5358: $0d
    ld a, e                                       ; $5359: $7b
    pop hl                                        ; $535a: $e1
    ld a, [hl-]                                   ; $535b: $3a
    ret nz                                        ; $535c: $c0

    cp $80                                        ; $535d: $fe $80
    ld [$c0c4], sp                                ; $535f: $08 $c4 $c0
    cp d                                          ; $5362: $ba
    ld b, a                                       ; $5363: $47
    ret nz                                        ; $5364: $c0

    and $ee                                       ; $5365: $e6 $ee
    rst $20                                       ; $5367: $e7
    adc h                                         ; $5368: $8c
    ld h, b                                       ; $5369: $60
    pop de                                        ; $536a: $d1
    and b                                         ; $536b: $a0
    add d                                         ; $536c: $82
    jp nz, Jump_000_0d6b                          ; $536d: $c2 $6b $0d

    cpl                                           ; $5370: $2f
    dec c                                         ; $5371: $0d
    dec hl                                        ; $5372: $2b
    dec bc                                        ; $5373: $0b
    dec bc                                        ; $5374: $0b
    cp a                                          ; $5375: $bf
    ldh [$2a], a                                  ; $5376: $e0 $2a
    cp $a4                                        ; $5378: $fe $a4
    or e                                          ; $537a: $b3
    ld b, e                                       ; $537b: $43
    and b                                         ; $537c: $a0
    cp d                                          ; $537d: $ba
    ld c, c                                       ; $537e: $49

Jump_02a_537f:
    ld a, [c]                                     ; $537f: $f2
    call nz, Call_02a_48a8                        ; $5380: $c4 $a8 $48
    ld c, e                                       ; $5383: $4b
    ld h, c                                       ; $5384: $61
    ret nz                                        ; $5385: $c0

    db $e4                                        ; $5386: $e4
    ld c, e                                       ; $5387: $4b
    dec [hl]                                      ; $5388: $35
    pop hl                                        ; $5389: $e1
    dec hl                                        ; $538a: $2b
    inc b                                         ; $538b: $04
    cp a                                          ; $538c: $bf
    ldh [$be], a                                  ; $538d: $e0 $be
    and l                                         ; $538f: $a5
    ld c, $33                                     ; $5390: $0e $33
    ld b, d                                       ; $5392: $42
    cp d                                          ; $5393: $ba
    ld c, [hl]                                    ; $5394: $4e
    and a                                         ; $5395: $a7
    xor e                                         ; $5396: $ab
    ld h, l                                       ; $5397: $65
    ld h, d                                       ; $5398: $62
    dec a                                         ; $5399: $3d
    push hl                                       ; $539a: $e5
    rra                                           ; $539b: $1f
    dec bc                                        ; $539c: $0b
    dec bc                                        ; $539d: $0b
    ld l, e                                       ; $539e: $6b
    ld a, [bc]                                    ; $539f: $0a
    dec bc                                        ; $53a0: $0b
    ld a, h                                       ; $53a1: $7c
    and b                                         ; $53a2: $a0
    ld a, b                                       ; $53a3: $78
    and c                                         ; $53a4: $a1
    add b                                         ; $53a5: $80
    xor $e0                                       ; $53a6: $ee $e0
    add hl, sp                                    ; $53a8: $39
    and h                                         ; $53a9: $a4
    inc e                                         ; $53aa: $1c
    ld b, d                                       ; $53ab: $42
    pop de                                        ; $53ac: $d1
    ld b, $25                                     ; $53ad: $06 $25
    ld h, e                                       ; $53af: $63
    add d                                         ; $53b0: $82
    ld [c], a                                     ; $53b1: $e2
    dec c                                         ; $53b2: $0d
    dec hl                                        ; $53b3: $2b
    dec hl                                        ; $53b4: $2b
    add c                                         ; $53b5: $81
    ld c, e                                       ; $53b6: $4b
    ei                                            ; $53b7: $fb
    ret nz                                        ; $53b8: $c0

    ret nz                                        ; $53b9: $c0

    ld [$6c1a], a                                 ; $53ba: $ea $1a $6c
    ret nz                                        ; $53bd: $c0

    rst $28                                       ; $53be: $ef
    ld [hl], e                                    ; $53bf: $73
    ld bc, $a30c                                  ; $53c0: $01 $0c $a3
    dec c                                         ; $53c3: $0d
    ld c, $00                                     ; $53c4: $0e $00
    jp nz, Jump_02a_4b2a                          ; $53c6: $c2 $2a $4b

    dec l                                         ; $53c9: $2d
    ld b, b                                       ; $53ca: $40
    and $1f                                       ; $53cb: $e6 $1f
    ld h, b                                       ; $53cd: $60
    ld b, l                                       ; $53ce: $45
    add l                                         ; $53cf: $85
    ld a, [$c828]                                 ; $53d0: $fa $28 $c8
    ld h, d                                       ; $53d3: $62
    ld bc, $4a28                                  ; $53d4: $01 $28 $4a
    call z, $0b82                                 ; $53d7: $cc $82 $0b
    add b                                         ; $53da: $80
    pop hl                                        ; $53db: $e1
    add a                                         ; $53dc: $87
    add c                                         ; $53dd: $81
    dec l                                         ; $53de: $2d
    dec l                                         ; $53df: $2d
    ld bc, $bc2d                                  ; $53e0: $01 $2d $bc
    add e                                         ; $53e3: $83
    ld a, [hl]                                    ; $53e4: $7e
    ld h, c                                       ; $53e5: $61
    ld h, c                                       ; $53e6: $61
    inc bc                                        ; $53e7: $03
    ret nz                                        ; $53e8: $c0

    db $ec                                        ; $53e9: $ec
    xor [hl]                                      ; $53ea: $ae
    ld [$e4c0], a                                 ; $53eb: $ea $c0 $e4
    call nz, $1682                                ; $53ee: $c4 $82 $16
    ld a, [$0d80]                                 ; $53f1: $fa $80 $0d
    dec c                                         ; $53f4: $0d
    pop bc                                        ; $53f5: $c1
    push hl                                       ; $53f6: $e5
    dec c                                         ; $53f7: $0d
    dec bc                                        ; $53f8: $0b
    and d                                         ; $53f9: $a2
    call c, $8e85                                 ; $53fa: $dc $85 $8e
    ld h, l                                       ; $53fd: $65
    jr z, jr_02a_542d                             ; $53fe: $28 $2d

    ld h, a                                       ; $5400: $67
    ld a, h                                       ; $5401: $7c
    ld h, h                                       ; $5402: $64
    ret nz                                        ; $5403: $c0

    rst $20                                       ; $5404: $e7
    ld c, e                                       ; $5405: $4b
    rlca                                          ; $5406: $07
    add b                                         ; $5407: $80
    ld l, e                                       ; $5408: $6b
    cp e                                          ; $5409: $bb
    add [hl]                                      ; $540a: $86
    pop bc                                        ; $540b: $c1
    ldh [rP1], a                                  ; $540c: $e0 $00
    xor e                                         ; $540e: $ab
    ld hl, $23ea                                  ; $540f: $21 $ea $23
    adc e                                         ; $5412: $8b

jr_02a_5413:
    rlca                                          ; $5413: $07
    dec l                                         ; $5414: $2d
    ld l, d                                       ; $5415: $6a
    ld [$0687], sp                                ; $5416: $08 $87 $06
    add e                                         ; $5419: $83
    adc c                                         ; $541a: $89
    ld h, b                                       ; $541b: $60
    pop bc                                        ; $541c: $c1
    rst $20                                       ; $541d: $e7
    nop                                           ; $541e: $00
    adc a                                         ; $541f: $8f

jr_02a_5420:
    ld [hl+], a                                   ; $5420: $22
    jp nz, $c005                                  ; $5421: $c2 $05 $c0

    ld h, l                                       ; $5424: $65
    ld h, [hl]                                    ; $5425: $66
    ld [bc], a                                    ; $5426: $02
    adc $06                                       ; $5427: $ce $06
    add d                                         ; $5429: $82
    db $e3                                        ; $542a: $e3
    pop bc                                        ; $542b: $c1
    ld [c], a                                     ; $542c: $e2

jr_02a_542d:
    call nz, Call_000_00a0                        ; $542d: $c4 $a0 $00
    cp a                                          ; $5430: $bf
    and b                                         ; $5431: $a0
    add d                                         ; $5432: $82
    jp hl                                         ; $5433: $e9


    ld e, h                                       ; $5434: $5c
    ld [bc], a                                    ; $5435: $02
    ld [$7625], a                                 ; $5436: $ea $25 $76
    ld b, l                                       ; $5439: $45
    adc $0a                                       ; $543a: $ce $0a
    ld b, d                                       ; $543c: $42
    rst $20                                       ; $543d: $e7
    ld c, h                                       ; $543e: $4c
    push hl                                       ; $543f: $e5
    ret nz                                        ; $5440: $c0

    ld [hl], $c3                                  ; $5441: $36 $c3
    xor h                                         ; $5443: $ac
    add c                                         ; $5444: $81
    xor h                                         ; $5445: $ac
    ld h, h                                       ; $5446: $64
    ret nz                                        ; $5447: $c0

    and $76                                       ; $5448: $e6 $76
    ld b, h                                       ; $544a: $44
    dec l                                         ; $544b: $2d
    ld l, d                                       ; $544c: $6a
    dec c                                         ; $544d: $0d
    ld c, l                                       ; $544e: $4d
    nop                                           ; $544f: $00
    ld a, l                                       ; $5450: $7d
    jr nz, jr_02a_5413                            ; $5451: $20 $c0

    add sp, -$47                                  ; $5453: $e8 $b9
    and b                                         ; $5455: $a0
    ccf                                           ; $5456: $3f
    ld h, c                                       ; $5457: $61
    jp $a0e1                                      ; $5458: $c3 $e1 $a0


    ld b, [hl]                                    ; $545b: $46
    ret nz                                        ; $545c: $c0

    rst $20                                       ; $545d: $e7
    halt                                          ; $545e: $76
    ld b, d                                       ; $545f: $42
    nop                                           ; $5460: $00
    ld c, $2c                                     ; $5461: $0e $2c
    ld [bc], a                                    ; $5463: $02
    and $c0                                       ; $5464: $e6 $c0
    and l                                         ; $5466: $a5
    ld a, [hl-]                                   ; $5467: $3a
    ret nz                                        ; $5468: $c0

    ld b, $41                                     ; $5469: $06 $41
    and b                                         ; $546b: $a0
    ld b, a                                       ; $546c: $47
    ld l, b                                       ; $546d: $68
    inc b                                         ; $546e: $04
    ld c, c                                       ; $546f: $49
    push hl                                       ; $5470: $e5
    jr c, jr_02a_5420                             ; $5471: $38 $ad

    ld c, c                                       ; $5473: $49
    ld b, l                                       ; $5474: $45
    ld b, d                                       ; $5475: $42
    pop bc                                        ; $5476: $c1
    rst $20                                       ; $5477: $e7
    ld c, e                                       ; $5478: $4b
    dec c                                         ; $5479: $0d
    ld l, e                                       ; $547a: $6b
    add b                                         ; $547b: $80
    and b                                         ; $547c: $a0
    cp d                                          ; $547d: $ba
    and b                                         ; $547e: $a0
    add b                                         ; $547f: $80
    ld [$a0a0], sp                                ; $5480: $08 $a0 $a0
    ld b, [hl]                                    ; $5483: $46
    ld l, e                                       ; $5484: $6b
    ld b, b                                       ; $5485: $40
    dec bc                                        ; $5486: $0b
    jp nz, Jump_02a_4576                          ; $5487: $c2 $76 $45

    ld c, $2c                                     ; $548a: $0e $2c
    ld [bc], a                                    ; $548c: $02
    db $ec                                        ; $548d: $ec
    ld c, e                                       ; $548e: $4b
    inc bc                                        ; $548f: $03
    ld l, e                                       ; $5490: $6b
    dec bc                                        ; $5491: $0b
    add e                                         ; $5492: $83
    and b                                         ; $5493: $a0
    ret z                                         ; $5494: $c8

    ld [bc], a                                    ; $5495: $02
    ldh [rDMA], a                                 ; $5496: $e0 $46
    jp $c003                                      ; $5498: $c3 $03 $c0


    ld a, [c]                                     ; $549b: $f2
    ld l, d                                       ; $549c: $6a
    ld [bc], a                                    ; $549d: $02
    nop                                           ; $549e: $00
    jp nz, $83ca                                  ; $549f: $c2 $ca $83

    and d                                         ; $54a2: $a2
    call nz, Call_02a_60c2                        ; $54a3: $c4 $c2 $60
    ld b, h                                       ; $54a6: $44
    ld hl, $8025                                  ; $54a7: $21 $25 $80
    and $2d                                       ; $54aa: $e6 $2d
    ld l, b                                       ; $54ac: $68
    ld h, c                                       ; $54ad: $61
    db $e3                                        ; $54ae: $e3
    ld h, $87                                     ; $54af: $26 $87
    push bc                                       ; $54b1: $c5
    dec l                                         ; $54b2: $2d
    ld l, e                                       ; $54b3: $6b
    ld b, $80                                     ; $54b4: $06 $80
    add e                                         ; $54b6: $83
    and b                                         ; $54b7: $a0
    dec bc                                        ; $54b8: $0b
    rst $00                                       ; $54b9: $c7
    ld h, c                                       ; $54ba: $61
    ret nz                                        ; $54bb: $c0

    push hl                                       ; $54bc: $e5
    nop                                           ; $54bd: $00
    ld b, a                                       ; $54be: $47
    ld h, [hl]                                    ; $54bf: $66
    ld b, b                                       ; $54c0: $40
    and $f9                                       ; $54c1: $e6 $f9
    ld [hl+], a                                   ; $54c3: $22
    ld b, h                                       ; $54c4: $44
    inc hl                                        ; $54c5: $23
    ld [hl+], a                                   ; $54c6: $22
    ld h, b                                       ; $54c7: $60
    ret nz                                        ; $54c8: $c0

    nop                                           ; $54c9: $00
    ld d, l                                       ; $54ca: $55
    and h                                         ; $54cb: $a4
    ld a, [$1660]                                 ; $54cc: $fa $60 $16
    ld b, b                                       ; $54cf: $40
    ld b, [hl]                                    ; $54d0: $46
    ld c, l                                       ; $54d1: $4d
    dec l                                         ; $54d2: $2d
    dec b                                         ; $54d3: $05
    ld [hl+], a                                   ; $54d4: $22
    ld c, $5d                                     ; $54d5: $0e $5d
    and b                                         ; $54d7: $a0
    ld e, c                                       ; $54d8: $59
    ld h, l                                       ; $54d9: $65
    nop                                           ; $54da: $00
    and $00                                       ; $54db: $e6 $00
    ld a, h                                       ; $54dd: $7c
    and h                                         ; $54de: $a4
    and h                                         ; $54df: $a4
    call nz, $8484                                ; $54e0: $c4 $84 $84
    sub $82                                       ; $54e3: $d6 $82
    add d                                         ; $54e5: $82
    pop bc                                        ; $54e6: $c1
    rst $38                                       ; $54e7: $ff
    db $e4                                        ; $54e8: $e4
    ld b, e                                       ; $54e9: $43
    nop                                           ; $54ea: $00
    ld b, a                                       ; $54eb: $47
    ld l, h                                       ; $54ec: $6c
    nop                                           ; $54ed: $00
    halt                                          ; $54ee: $76
    ld b, l                                       ; $54ef: $45
    ld e, b                                       ; $54f0: $58
    inc bc                                        ; $54f1: $03
    and h                                         ; $54f2: $a4
    add $c2                                       ; $54f3: $c6 $c2
    and h                                         ; $54f5: $a4
    ret nz                                        ; $54f6: $c0

    db $e4                                        ; $54f7: $e4
    pop bc                                        ; $54f8: $c1
    db $e4                                        ; $54f9: $e4
    dec sp                                        ; $54fa: $3b
    ret nz                                        ; $54fb: $c0

    cp a                                          ; $54fc: $bf
    db $e3                                        ; $54fd: $e3
    nop                                           ; $54fe: $00
    ld b, a                                       ; $54ff: $47

Call_02a_5500:
    ld l, c                                       ; $5500: $69
    halt                                          ; $5501: $76
    ld b, l                                       ; $5502: $45
    add e                                         ; $5503: $83
    add h                                         ; $5504: $84
    db $e4                                        ; $5505: $e4
    jp $f5c0                                      ; $5506: $c3 $c0 $f5


    ld a, e                                       ; $5509: $7b
    add b                                         ; $550a: $80
    ld e, c                                       ; $550b: $59
    ld l, [hl]                                    ; $550c: $6e
    jp nz, Jump_000_30e6                          ; $550d: $c2 $e6 $30

    ret nz                                        ; $5510: $c0

    rst $20                                       ; $5511: $e7
    add d                                         ; $5512: $82
    and [hl]                                      ; $5513: $a6
    ld d, c                                       ; $5514: $51
    db $e3                                        ; $5515: $e3
    call nz, $0b41                                ; $5516: $c4 $41 $0b
    dec bc                                        ; $5519: $0b
    or d                                          ; $551a: $b2
    ld b, b                                       ; $551b: $40
    cp l                                          ; $551c: $bd
    ld b, b                                       ; $551d: $40
    nop                                           ; $551e: $00
    jp nz, Jump_000_0085                          ; $551f: $c2 $85 $00

    inc l                                         ; $5522: $2c
    dec [hl]                                      ; $5523: $35
    pop bc                                        ; $5524: $c1
    ld b, h                                       ; $5525: $44
    ld h, $bd                                     ; $5526: $26 $bd
    add d                                         ; $5528: $82
    add h                                         ; $5529: $84
    add d                                         ; $552a: $82
    adc [hl]                                      ; $552b: $8e
    and d                                         ; $552c: $a2
    ld b, b                                       ; $552d: $40
    and $00                                       ; $552e: $e6 $00
    ld b, d                                       ; $5530: $42
    nop                                           ; $5531: $00
    ret nz                                        ; $5532: $c0

    push af                                       ; $5533: $f5
    ld [hl-], a                                   ; $5534: $32
    jp Jump_000_2544                              ; $5535: $c3 $44 $25


    ld a, [de]                                    ; $5538: $1a
    and c                                         ; $5539: $a1
    ret nz                                        ; $553a: $c0

    call nz, $41b7                                ; $553b: $c4 $b7 $41
    ld b, b                                       ; $553e: $40
    add sp, $00                                   ; $553f: $e8 $00
    ret nc                                        ; $5541: $d0

    inc b                                         ; $5542: $04
    ld e, c                                       ; $5543: $59
    ld l, e                                       ; $5544: $6b
    jp nz, $fee5                                  ; $5545: $c2 $e5 $fe

    ldh [$b8], a                                  ; $5548: $e0 $b8
    ld h, d                                       ; $554a: $62
    ld b, [hl]                                    ; $554b: $46
    ld h, c                                       ; $554c: $61
    sub b                                         ; $554d: $90
    add e                                         ; $554e: $83
    adc [hl]                                      ; $554f: $8e
    and d                                         ; $5550: $a2
    inc de                                        ; $5551: $13
    dec c                                         ; $5552: $0d
    ld l, e                                       ; $5553: $6b
    add c                                         ; $5554: $81
    and b                                         ; $5555: $a0
    cp l                                          ; $5556: $bd
    ld h, c                                       ; $5557: $61
    ld l, e                                       ; $5558: $6b
    inc b                                         ; $5559: $04
    add b                                         ; $555a: $80
    rla                                           ; $555b: $17
    jp Jump_02a_6919                              ; $555c: $c3 $19 $69


    nop                                           ; $555f: $00
    ld b, l                                       ; $5560: $45
    ld h, [hl]                                    ; $5561: $66
    ld l, $62                                     ; $5562: $2e $62
    ld [hl], d                                    ; $5564: $72
    ld [bc], a                                    ; $5565: $02
    or l                                          ; $5566: $b5
    ld b, c                                       ; $5567: $41
    push de                                       ; $5568: $d5
    ld h, l                                       ; $5569: $65
    or $a1                                        ; $556a: $f6 $a1
    add e                                         ; $556c: $83
    ld h, h                                       ; $556d: $64
    add [hl]                                      ; $556e: $86
    ld h, c                                       ; $556f: $61
    nop                                           ; $5570: $00
    ld h, b                                       ; $5571: $60
    ld h, c                                       ; $5572: $61
    and b                                         ; $5573: $a0
    add e                                         ; $5574: $83
    ld b, a                                       ; $5575: $47
    ld h, l                                       ; $5576: $65
    ld a, h                                       ; $5577: $7c
    ld l, b                                       ; $5578: $68
    cp b                                          ; $5579: $b8
    ld b, a                                       ; $557a: $47
    ld [bc], a                                    ; $557b: $02
    rst $00                                       ; $557c: $c7
    cp a                                          ; $557d: $bf
    and l                                         ; $557e: $a5
    inc b                                         ; $557f: $04
    add e                                         ; $5580: $83
    nop                                           ; $5581: $00

Call_02a_5582:
    ld e, d                                       ; $5582: $5a
    ld h, a                                       ; $5583: $67
    or [hl]                                       ; $5584: $b6
    and b                                         ; $5585: $a0
    sub e                                         ; $5586: $93
    and h                                         ; $5587: $a4
    ld c, a                                       ; $5588: $4f
    ldh [$82], a                                  ; $5589: $e0 $82
    and e                                         ; $558b: $a3
    cp h                                          ; $558c: $bc
    ld b, l                                       ; $558d: $45
    add c                                         ; $558e: $81
    ld h, c                                       ; $558f: $61
    ret nz                                        ; $5590: $c0

    jp hl                                         ; $5591: $e9


    nop                                           ; $5592: $00
    ld a, [hl]                                    ; $5593: $7e
    and c                                         ; $5594: $a1
    rst $00                                       ; $5595: $c7
    ld h, e                                       ; $5596: $63
    add [hl]                                      ; $5597: $86
    and b                                         ; $5598: $a0
    ld e, d                                       ; $5599: $5a
    ld h, l                                       ; $559a: $65
    ld [hl], a                                    ; $559b: $77
    and c                                         ; $559c: $a1
    ld d, b                                       ; $559d: $50
    ld h, c                                       ; $559e: $61
    call nz, $84e8                                ; $559f: $c4 $e8 $84
    ld b, $00                                     ; $55a2: $06 $00
    ld b, d                                       ; $55a4: $42
    and h                                         ; $55a5: $a4
    sub e                                         ; $55a6: $93
    and c                                         ; $55a7: $a1
    db $f4                                        ; $55a8: $f4
    ld h, h                                       ; $55a9: $64
    adc b                                         ; $55aa: $88
    ld h, e                                       ; $55ab: $63
    adc $20                                       ; $55ac: $ce $20
    ld e, d                                       ; $55ae: $5a
    ld h, a                                       ; $55af: $67
    scf                                           ; $55b0: $37
    add a                                         ; $55b1: $87
    ld d, c                                       ; $55b2: $51
    inc b                                         ; $55b3: $04
    nop                                           ; $55b4: $00
    add h                                         ; $55b5: $84
    ld a, [bc]                                    ; $55b6: $0a
    ld [bc], a                                    ; $55b7: $02
    push bc                                       ; $55b8: $c5
    jr jr_02a_55dc                                ; $55b9: $18 $21

    ld [de], a                                    ; $55bb: $12
    ld b, c                                       ; $55bc: $41
    ld c, [hl]                                    ; $55bd: $4e
    ld bc, $2ba0                                  ; $55be: $01 $a0 $2b
    sub e                                         ; $55c1: $93
    and a                                         ; $55c2: $a7
    cp h                                          ; $55c3: $bc
    ld b, h                                       ; $55c4: $44
    nop                                           ; $55c5: $00
    add h                                         ; $55c6: $84
    add hl, bc                                    ; $55c7: $09
    ld [bc], a                                    ; $55c8: $02
    add d                                         ; $55c9: $82
    ld d, e                                       ; $55ca: $53
    and c                                         ; $55cb: $a1
    ld [hl], h                                    ; $55cc: $74
    ld h, c                                       ; $55cd: $61
    jp nc, $9e21                                  ; $55ce: $d2 $21 $9e

    add h                                         ; $55d1: $84
    ret nz                                        ; $55d2: $c0

    ld a, [c]                                     ; $55d3: $f2
    ld b, d                                       ; $55d4: $42
    and a                                         ; $55d5: $a7
    nop                                           ; $55d6: $00
    dec hl                                        ; $55d7: $2b
    and [hl]                                      ; $55d8: $a6
    ld [$4f23], sp                                ; $55d9: $08 $23 $4f

jr_02a_55dc:
    add b                                         ; $55dc: $80
    ld e, e                                       ; $55dd: $5b
    ld h, c                                       ; $55de: $61
    ld c, a                                       ; $55df: $4f
    ld b, e                                       ; $55e0: $43
    ld c, a                                       ; $55e1: $4f
    ld hl, $811c                                  ; $55e2: $21 $1c $81
    add b                                         ; $55e5: $80
    db $eb                                        ; $55e6: $eb
    nop                                           ; $55e7: $00
    ld d, e                                       ; $55e8: $53
    add c                                         ; $55e9: $81
    ld b, e                                       ; $55ea: $43
    call nz, Call_000_0af2                        ; $55eb: $c4 $f2 $0a
    ld d, l                                       ; $55ee: $55
    ld hl, $a112                                  ; $55ef: $21 $12 $a1
    sbc c                                         ; $55f2: $99
    inc hl                                        ; $55f3: $23
    rlca                                          ; $55f4: $07
    pop hl                                        ; $55f5: $e1
    ret nc                                        ; $55f6: $d0

    ld [hl+], a                                   ; $55f7: $22
    nop                                           ; $55f8: $00
    ld e, d                                       ; $55f9: $5a
    ld l, b                                       ; $55fa: $68
    sub e                                         ; $55fb: $93
    and h                                         ; $55fc: $a4
    add b                                         ; $55fd: $80
    and $c0                                       ; $55fe: $e6 $c0
    jp hl                                         ; $5600: $e9


    jr nz, jr_02a_5623                            ; $5601: $20 $20

    cp a                                          ; $5603: $bf
    ld [c], a                                     ; $5604: $e2
    ld d, c                                       ; $5605: $51
    add b                                         ; $5606: $80
    ld hl, $00a4                                  ; $5607: $21 $a4 $00
    sub c                                         ; $560a: $91
    add h                                         ; $560b: $84
    ld a, [de]                                    ; $560c: $1a
    ld h, a                                       ; $560d: $67
    ld a, [$0822]                                 ; $560e: $fa $22 $08
    and d                                         ; $5611: $a2
    ld b, h                                       ; $5612: $44
    push bc                                       ; $5613: $c5
    dec hl                                        ; $5614: $2b
    xor e                                         ; $5615: $ab
    ret nz                                        ; $5616: $c0

    add a                                         ; $5617: $87
    ld c, [hl]                                    ; $5618: $4e
    add h                                         ; $5619: $84
    nop                                           ; $561a: $00
    ret nc                                        ; $561b: $d0

    ld [hl+], a                                   ; $561c: $22
    ld e, d                                       ; $561d: $5a
    ld h, a                                       ; $561e: $67
    cp d                                          ; $561f: $ba
    ld [hl+], a                                   ; $5620: $22
    add l                                         ; $5621: $85
    ld [hl+], a                                   ; $5622: $22

jr_02a_5623:
    rst $38                                       ; $5623: $ff
    add [hl]                                      ; $5624: $86
    ret nz                                        ; $5625: $c0

    pop af                                        ; $5626: $f1
    sbc d                                         ; $5627: $9a
    ld b, e                                       ; $5628: $43
    add b                                         ; $5629: $80
    ld [c], a                                     ; $562a: $e2
    nop                                           ; $562b: $00
    ret nz                                        ; $562c: $c0

    db $e3                                        ; $562d: $e3
    ret c                                         ; $562e: $d8

    ld bc, $e3c0                                  ; $562f: $01 $c0 $e3
    ld b, l                                       ; $5632: $45
    db $e3                                        ; $5633: $e3
    or h                                          ; $5634: $b4
    ld [c], a                                     ; $5635: $e2
    inc a                                         ; $5636: $3c
    inc hl                                        ; $5637: $23
    ld [hl], d                                    ; $5638: $72
    ld a, [bc]                                    ; $5639: $0a
    ret nz                                        ; $563a: $c0

    add a                                         ; $563b: $87
    ld [$e47f], sp                                ; $563c: $08 $7f $e4
    ld d, b                                       ; $563f: $50
    inc hl                                        ; $5640: $23
    ld de, $6d88                                  ; $5641: $11 $88 $6d
    ld [hl], e                                    ; $5644: $73
    ld h, d                                       ; $5645: $62
    adc $42                                       ; $5646: $ce $42
    ld e, c                                       ; $5648: $59
    rst $20                                       ; $5649: $e7
    dec hl                                        ; $564a: $2b
    and [hl]                                      ; $564b: $a6
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    add l                                         ; $564e: $85
    and c                                         ; $564f: $a1
    add [hl]                                      ; $5650: $86
    ld l, c                                       ; $5651: $69
    ld b, h                                       ; $5652: $44
    pop de                                        ; $5653: $d1
    ld l, b                                       ; $5654: $68
    ld b, d                                       ; $5655: $42
    db $e4                                        ; $5656: $e4
    db $fc                                        ; $5657: $fc
    jp nz, $0000                                  ; $5658: $c2 $00 $00

    nop                                           ; $565b: $00
    ld bc, $ff00                                  ; $565c: $01 $00 $ff
    rst $38                                       ; $565f: $ff
    rst $38                                       ; $5660: $ff
    rst $38                                       ; $5661: $ff
    rst $38                                       ; $5662: $ff
    rst $38                                       ; $5663: $ff
    rst $38                                       ; $5664: $ff
    rst $38                                       ; $5665: $ff
    rst $38                                       ; $5666: $ff
    rst $38                                       ; $5667: $ff
    rst $38                                       ; $5668: $ff
    rst $38                                       ; $5669: $ff
    ld [c], a                                     ; $566a: $e2
    pop hl                                        ; $566b: $e1
    ld bc, $ff0f                                  ; $566c: $01 $0f $ff
    pop hl                                        ; $566f: $e1
    db $e3                                        ; $5670: $e3
    ld a, [$f5df]                                 ; $5671: $fa $df $f5
    push hl                                       ; $5674: $e5
    rst $20                                       ; $5675: $e7
    cp a                                          ; $5676: $bf
    ld a, [c]                                     ; $5677: $f2
    and a                                         ; $5678: $a7
    db $e3                                        ; $5679: $e3
    and l                                         ; $567a: $a5
    ld [c], a                                     ; $567b: $e2
    nop                                           ; $567c: $00
    sbc a                                         ; $567d: $9f
    pop af                                        ; $567e: $f1
    adc d                                         ; $567f: $8a
    jp hl                                         ; $5680: $e9


    ld a, a                                       ; $5681: $7f
    ldh a, [rOCPD]                                ; $5682: $f0 $6b
    ld [$f2e0], a                                 ; $5684: $ea $e0 $f2
    ld b, h                                       ; $5687: $44
    pop hl                                        ; $5688: $e1
    db $d3                                        ; $5689: $d3
    pop af                                        ; $568a: $f1
    db $ed                                        ; $568b: $ed
    pop af                                        ; $568c: $f1
    nop                                           ; $568d: $00
    sbc a                                         ; $568e: $9f
    ei                                            ; $568f: $fb
    ld e, d                                       ; $5690: $5a
    ldh [$9f], a                                  ; $5691: $e0 $9f
    db $f4                                        ; $5693: $f4
    ld a, a                                       ; $5694: $7f
    db $fd                                        ; $5695: $fd
    add b                                         ; $5696: $80
    ld sp, hl                                     ; $5697: $f9
    ld h, b                                       ; $5698: $60
    rst $20                                       ; $5699: $e7
    sbc a                                         ; $569a: $9f
    pop de                                        ; $569b: $d1
    ld [bc], a                                    ; $569c: $02
    ld [$e100], a                                 ; $569d: $ea $00 $e1
    rst $38                                       ; $56a0: $ff
    ldh [$fa], a                                  ; $56a1: $e0 $fa
    ld a, [hl+]                                   ; $56a3: $2a
    jp nc, $e981                                  ; $56a4: $d2 $81 $e9

    ret nz                                        ; $56a7: $c0

    di                                            ; $56a8: $f3
    ld [$e0c5], sp                                ; $56a9: $08 $c5 $e0
    rst $38                                       ; $56ac: $ff
    ldh [rIE], a                                  ; $56ad: $e0 $ff
    nop                                           ; $56af: $00
    inc hl                                        ; $56b0: $23
    ret nc                                        ; $56b1: $d0

    xor b                                         ; $56b2: $a8
    and [hl]                                      ; $56b3: $a6
    ld b, d                                       ; $56b4: $42
    call nc, $a6c4                                ; $56b5: $d4 $c4 $a6
    and c                                         ; $56b8: $a1
    or $81                                        ; $56b9: $f6 $81
    and h                                         ; $56bb: $a4
    ld hl, $5df4                                  ; $56bc: $21 $f4 $5d
    jp hl                                         ; $56bf: $e9


    nop                                           ; $56c0: $00
    add b                                         ; $56c1: $80
    db $f4                                        ; $56c2: $f4
    ld a, [bc]                                    ; $56c3: $0a
    cp c                                          ; $56c4: $b9
    ld c, d                                       ; $56c5: $4a
    or h                                          ; $56c6: $b4
    ldh [$fd], a                                  ; $56c7: $e0 $fd
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    ld bc, $ff00                                  ; $56cc: $01 $00 $ff
    rst $38                                       ; $56cf: $ff
    rst $38                                       ; $56d0: $ff
    rst $38                                       ; $56d1: $ff
    rst $38                                       ; $56d2: $ff
    rst $38                                       ; $56d3: $ff
    rst $38                                       ; $56d4: $ff
    rst $38                                       ; $56d5: $ff
    rst $38                                       ; $56d6: $ff
    rst $38                                       ; $56d7: $ff
    rst $38                                       ; $56d8: $ff
    rst $38                                       ; $56d9: $ff
    db $e4                                        ; $56da: $e4
    db $e3                                        ; $56db: $e3
    dec b                                         ; $56dc: $05
    pop af                                        ; $56dd: $f1
    pop hl                                        ; $56de: $e1
    db $fc                                        ; $56df: $fc
    pop af                                        ; $56e0: $f1
    rst $18                                       ; $56e1: $df
    ei                                            ; $56e2: $fb
    ldh [$fa], a                                  ; $56e3: $e0 $fa
    jp $c0e0                                      ; $56e5: $c3 $e0 $c0


    rst $30                                       ; $56e8: $f7
    db $e3                                        ; $56e9: $e3
    db $e3                                        ; $56ea: $e3
    nop                                           ; $56eb: $00
    and b                                         ; $56ec: $a0
    or $e1                                        ; $56ed: $f6 $e1
    and $5f                                       ; $56ef: $e6 $5f
    di                                            ; $56f1: $f3
    pop hl                                        ; $56f2: $e1
    rst $20                                       ; $56f3: $e7
    ret nz                                        ; $56f4: $c0

    cp $bf                                        ; $56f5: $fe $bf
    rst $38                                       ; $56f7: $ff
    ldh [rIE], a                                  ; $56f8: $e0 $ff
    ld h, b                                       ; $56fa: $60
    rst $38                                       ; $56fb: $ff
    nop                                           ; $56fc: $00
    ld hl, $e1ff                                  ; $56fd: $21 $ff $e1
    ld a, [c]                                     ; $5700: $f2
    push bc                                       ; $5701: $c5
    db $db                                        ; $5702: $db
    jp Jump_02a_69df                              ; $5703: $c3 $df $69


    sub $81                                       ; $5706: $d6 $81
    call nz, $fde0                                ; $5708: $c4 $e0 $fd
    add d                                         ; $570b: $82
    sub $c0                                       ; $570c: $d6 $c0
    ld b, c                                       ; $570e: $41
    db $db                                        ; $570f: $db
    ret nz                                        ; $5710: $c0

    db $fc                                        ; $5711: $fc
    res 4, e                                      ; $5712: $cb $a3
    and c                                         ; $5714: $a1
    db $fc                                        ; $5715: $fc
    add h                                         ; $5716: $84
    cp b                                          ; $5717: $b8
    adc e                                         ; $5718: $8b
    cp h                                          ; $5719: $bc
    nop                                           ; $571a: $00
    inc de                                        ; $571b: $13
    ld bc, $2713                                  ; $571c: $01 $13 $27
    cp a                                          ; $571f: $bf
    rst $38                                       ; $5720: $ff
    rst $38                                       ; $5721: $ff
    sbc a                                         ; $5722: $9f
    rst $38                                       ; $5723: $ff
    rst $38                                       ; $5724: $ff
    db $ed                                        ; $5725: $ed
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00

jr_02a_5729:
    cp $d5                                        ; $5729: $fe $d5
    nop                                           ; $572b: $00
    rst $38                                       ; $572c: $ff
    ldh [rTIMA], a                                ; $572d: $e0 $05
    ei                                            ; $572f: $fb
    ldh [$0b], a                                  ; $5730: $e0 $0b
    rst $30                                       ; $5732: $f7
    pop hl                                        ; $5733: $e1
    nop                                           ; $5734: $00
    ld [bc], a                                    ; $5735: $02
    db $eb                                        ; $5736: $eb
    nop                                           ; $5737: $00
    jr z, jr_02a_5729                             ; $5738: $28 $ef

    ldh [$90], a                                  ; $573a: $e0 $90
    db $eb                                        ; $573c: $eb
    ldh [$f5], a                                  ; $573d: $e0 $f5
    nop                                           ; $573f: $00
    ret z                                         ; $5740: $c8

    ld a, [$e0e5]                                 ; $5741: $fa $e5 $e0
    add b                                         ; $5744: $80
    ld [$00e4], a                                 ; $5745: $ea $e4 $00
    nop                                           ; $5748: $00
    rla                                           ; $5749: $17
    nop                                           ; $574a: $00
    ld bc, $d612                                  ; $574b: $01 $12 $d6
    ld [c], a                                     ; $574e: $e2
    ld d, b                                       ; $574f: $50
    rst $08                                       ; $5750: $cf
    ldh [$e6], a                                  ; $5751: $e0 $e6
    pop hl                                        ; $5753: $e1
    ld [$e2da], a                                 ; $5754: $ea $da $e2
    db $fd                                        ; $5757: $fd
    db $e3                                        ; $5758: $e3
    and $e1                                       ; $5759: $e6 $e1
    ld d, a                                       ; $575b: $57
    cpl                                           ; $575c: $2f
    nop                                           ; $575d: $00
    inc bc                                        ; $575e: $03
    ret nz                                        ; $575f: $c0

    ld [c], a                                     ; $5760: $e2
    and b                                         ; $5761: $a0
    xor a                                         ; $5762: $af
    ldh [$64], a                                  ; $5763: $e0 $64
    xor e                                         ; $5765: $ab
    ldh [$c7], a                                  ; $5766: $e0 $c7
    call nc, Call_000_2000                        ; $5768: $d4 $00 $20
    ret nz                                        ; $576b: $c0

    ld [c], a                                     ; $576c: $e2
    jp z, $9ce1                                   ; $576d: $ca $e1 $9c

    pop hl                                        ; $5770: $e1
    ld e, a                                       ; $5771: $5f
    nop                                           ; $5772: $00
    ld d, l                                       ; $5773: $55
    ld b, $96                                     ; $5774: $06 $96
    ld [c], a                                     ; $5776: $e2
    ld b, b                                       ; $5777: $40
    adc a                                         ; $5778: $8f
    ldh [$b2], a                                  ; $5779: $e0 $b2
    adc e                                         ; $577b: $8b
    ldh [$a8], a                                  ; $577c: $e0 $a8
    or $e2                                        ; $577e: $f6 $e2
    sbc h                                         ; $5780: $9c
    and h                                         ; $5781: $a4
    db $e3                                        ; $5782: $e3
    ld a, h                                       ; $5783: $7c
    pop hl                                        ; $5784: $e1
    cp a                                          ; $5785: $bf
    nop                                           ; $5786: $00
    inc c                                         ; $5787: $0c
    add b                                         ; $5788: $80
    ld [c], a                                     ; $5789: $e2
    adc [hl]                                      ; $578a: $8e
    pop hl                                        ; $578b: $e1
    ld e, c                                       ; $578c: $59
    ld a, [$e06b]                                 ; $578d: $fa $6b $e0
    ld d, b                                       ; $5790: $50
    add h                                         ; $5791: $84
    ld [c], a                                     ; $5792: $e2
    add b                                         ; $5793: $80
    nop                                           ; $5794: $00
    db $ec                                        ; $5795: $ec
    rst $38                                       ; $5796: $ff
    ld hl, sp-$01                                 ; $5797: $f8 $ff
    rst $38                                       ; $5799: $ff
    ldh [$fe], a                                  ; $579a: $e0 $fe
    ld b, d                                       ; $579c: $42
    ld hl, sp-$38                                 ; $579d: $f8 $c8
    ldh a, [$80]                                  ; $579f: $f0 $80
    cp a                                          ; $57a1: $bf
    ldh [rNR10], a                                ; $57a2: $e0 $10
    ldh [rP1], a                                  ; $57a4: $e0 $00
    ret nz                                        ; $57a6: $c0

    rst $38                                       ; $57a7: $ff
    rst $38                                       ; $57a8: $ff
    ld [c], a                                     ; $57a9: $e2
    rst $30                                       ; $57aa: $f7
    rst $38                                       ; $57ab: $ff
    rst $38                                       ; $57ac: $ff
    cp h                                          ; $57ad: $bc
    rst $38                                       ; $57ae: $ff
    add sp, -$01                                  ; $57af: $e8 $ff
    add c                                         ; $57b1: $81
    cp $08                                        ; $57b2: $fe $08
    db $ed                                        ; $57b4: $ed
    ldh a, [$f8]                                  ; $57b5: $f0 $f8
    push hl                                       ; $57b7: $e5
    jr nz, @-$3e                                  ; $57b8: $20 $c0

    ld [hl], c                                    ; $57ba: $71
    db $e3                                        ; $57bb: $e3
    ld a, a                                       ; $57bc: $7f
    rst $38                                       ; $57bd: $ff
    cpl                                           ; $57be: $2f
    rst $38                                       ; $57bf: $ff
    rst $38                                       ; $57c0: $ff
    ccf                                           ; $57c1: $3f
    rst $38                                       ; $57c2: $ff
    rra                                           ; $57c3: $1f
    rst $38                                       ; $57c4: $ff
    or a                                          ; $57c5: $b7
    ld a, a                                       ; $57c6: $7f
    rra                                           ; $57c7: $1f
    rst $38                                       ; $57c8: $ff
    ld a, a                                       ; $57c9: $7f
    rrca                                          ; $57ca: $0f
    ld a, a                                       ; $57cb: $7f
    ld c, a                                       ; $57cc: $4f
    ccf                                           ; $57cd: $3f
    rlca                                          ; $57ce: $07
    rra                                           ; $57cf: $1f
    ld [bc], a                                    ; $57d0: $02
    rst $38                                       ; $57d1: $ff
    rra                                           ; $57d2: $1f
    inc de                                        ; $57d3: $13
    rrca                                          ; $57d4: $0f
    ld bc, $0b0f                                  ; $57d5: $01 $0f $0b
    rlca                                          ; $57d8: $07
    ld bc, $07ff                                  ; $57d9: $01 $ff $07
    nop                                           ; $57dc: $00
    rlca                                          ; $57dd: $07
    inc b                                         ; $57de: $04
    inc bc                                        ; $57df: $03
    ld e, h                                       ; $57e0: $5c
    rst $38                                       ; $57e1: $ff
    nop                                           ; $57e2: $00
    rst $28                                       ; $57e3: $ef
    rst $38                                       ; $57e4: $ff
    add c                                         ; $57e5: $81
    inc a                                         ; $57e6: $3c
    db $10                                        ; $57e7: $10
    ld b, h                                       ; $57e8: $44
    and $20                                       ; $57e9: $e6 $20
    ret nz                                        ; $57eb: $c0

    add b                                         ; $57ec: $80
    cp a                                          ; $57ed: $bf
    ret nz                                        ; $57ee: $c0

    nop                                           ; $57ef: $00
    ldh [$90], a                                  ; $57f0: $e0 $90
    ldh [$80], a                                  ; $57f2: $e0 $80
    cp $e0                                        ; $57f4: $fe $e0
    nop                                           ; $57f6: $00
    ei                                            ; $57f7: $fb
    ret nz                                        ; $57f8: $c0

    jr nz, @-$5e                                  ; $57f9: $20 $a0

    ldh [$7d], a                                  ; $57fb: $e0 $7d
    rst $38                                       ; $57fd: $ff
    rst $28                                       ; $57fe: $ef
    rst $38                                       ; $57ff: $ff
    ld a, [hl-]                                   ; $5800: $3a
    ld a, [$e2da]                                 ; $5801: $fa $da $e2
    ld [$c0e3], sp                                ; $5804: $08 $e3 $c0
    and h                                         ; $5807: $a4
    ld hl, sp-$20                                 ; $5808: $f8 $e0
    ld hl, sp-$10                                 ; $580a: $f8 $f0
    rst $38                                       ; $580c: $ff
    db $fc                                        ; $580d: $fc
    ret nc                                        ; $580e: $d0

    db $fc                                        ; $580f: $fc
    ld a, [c]                                     ; $5810: $f2
    db $fc                                        ; $5811: $fc
    ldh [$fc], a                                  ; $5812: $e0 $fc
    or b                                          ; $5814: $b0
    rst $30                                       ; $5815: $f7
    ld hl, sp-$1c                                 ; $5816: $f8 $e4
    ld hl, sp-$80                                 ; $5818: $f8 $80
    push hl                                       ; $581a: $e5
    cp [hl]                                       ; $581b: $be
    rst $38                                       ; $581c: $ff
    db $e3                                        ; $581d: $e3
    rst $38                                       ; $581e: $ff
    rst $38                                       ; $581f: $ff
    ld b, b                                       ; $5820: $40
    rst $38                                       ; $5821: $ff
    nop                                           ; $5822: $00
    rst $20                                       ; $5823: $e7
    db $fc                                        ; $5824: $fc
    rst $38                                       ; $5825: $ff
    or $ff                                        ; $5826: $f6 $ff
    ld a, a                                       ; $5828: $7f
    db $fc                                        ; $5829: $fc
    rst $38                                       ; $582a: $ff
    ld hl, sp-$02                                 ; $582b: $f8 $fe
    add sp, -$02                                  ; $582d: $e8 $fe
    ld hl, sp-$08                                 ; $582f: $f8 $f8
    ldh [$83], a                                  ; $5831: $e0 $83
    db $f4                                        ; $5833: $f4
    rst $38                                       ; $5834: $ff
    ld a, b                                       ; $5835: $78
    ldh [$cb], a                                  ; $5836: $e0 $cb
    jp $c5e2                                      ; $5838: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $583b: $f0 $e0
    rst $28                                       ; $583d: $ef
    ld [$f1c0], a                                 ; $583e: $ea $c0 $f1
    ld b, b                                       ; $5841: $40
    ldh [$ea], a                                  ; $5842: $e0 $ea
    ret nc                                        ; $5844: $d0

    pop hl                                        ; $5845: $e1
    rst $08                                       ; $5846: $cf
    jp hl                                         ; $5847: $e9


    db $ec                                        ; $5848: $ec
    rst $38                                       ; $5849: $ff
    ld sp, hl                                     ; $584a: $f9
    cp $7f                                        ; $584b: $fe $7f
    and $f8                                       ; $584d: $e6 $f8
    ld c, b                                       ; $584f: $48
    ldh a, [$d0]                                  ; $5850: $f0 $d0
    ldh [$a8], a                                  ; $5852: $e0 $a8
    ld [hl], d                                    ; $5854: $72
    ldh [$fb], a                                  ; $5855: $e0 $fb

jr_02a_5857:
    ld b, b                                       ; $5857: $40
    add b                                         ; $5858: $80
    db $10                                        ; $5859: $10
    rst $20                                       ; $585a: $e7
    jp hl                                         ; $585b: $e9


    cp $8e                                        ; $585c: $fe $8e
    ldh a, [$30]                                  ; $585e: $f0 $30
    pop af                                        ; $5860: $f1
    ret nz                                        ; $5861: $c0

    ld hl, sp-$1b                                 ; $5862: $f8 $e5
    ld h, d                                       ; $5864: $62
    pop bc                                        ; $5865: $c1
    db $10                                        ; $5866: $10
    push hl                                       ; $5867: $e5
    cp a                                          ; $5868: $bf
    ld a, a                                       ; $5869: $7f
    sbc a                                         ; $586a: $9f
    ld a, a                                       ; $586b: $7f
    rst $38                                       ; $586c: $ff
    ld [hl], a                                    ; $586d: $77
    ccf                                           ; $586e: $3f
    ld e, a                                       ; $586f: $5f
    ccf                                           ; $5870: $3f
    ld c, a                                       ; $5871: $4f
    ccf                                           ; $5872: $3f
    cpl                                           ; $5873: $2f
    rra                                           ; $5874: $1f
    rst $30                                       ; $5875: $f7
    rla                                           ; $5876: $17
    rrca                                          ; $5877: $0f
    ld [de], a                                    ; $5878: $12
    inc d                                         ; $5879: $14
    ldh [$09], a                                  ; $587a: $e0 $09
    rlca                                          ; $587c: $07
    rla                                           ; $587d: $17
    inc bc                                        ; $587e: $03
    rst $38                                       ; $587f: $ff
    dec b                                         ; $5880: $05
    inc bc                                        ; $5881: $03
    inc b                                         ; $5882: $04
    inc bc                                        ; $5883: $03
    ld [bc], a                                    ; $5884: $02
    ld bc, $ff5c                                  ; $5885: $01 $5c $ff
    rst $30                                       ; $5888: $f7
    jp Jump_000_3c3c                              ; $5889: $c3 $3c $3c


    sbc d                                         ; $588c: $9a
    add $00                                       ; $588d: $c6 $00
    nop                                           ; $588f: $00
    ld b, b                                       ; $5890: $40
    add b                                         ; $5891: $80
    rst $18                                       ; $5892: $df
    ret nz                                        ; $5893: $c0

    add b                                         ; $5894: $80
    jr nz, jr_02a_5857                            ; $5895: $20 $c0

    and b                                         ; $5897: $a0
    cp $e2                                        ; $5898: $fe $e2
    ld d, b                                       ; $589a: $50
    add b                                         ; $589b: $80
    ldh a, [$a0]                                  ; $589c: $f0 $a0
    pop hl                                        ; $589e: $e1
    db $10                                        ; $589f: $10
    db $e3                                        ; $58a0: $e3
    jp c, Jump_02a_64e1                           ; $58a1: $da $e1 $64

    pop bc                                        ; $58a4: $c1
    xor b                                         ; $58a5: $a8
    ldh a, [$ea]                                  ; $58a6: $f0 $ea
    ldh a, [$df]                                  ; $58a8: $f0 $df
    db $f4                                        ; $58aa: $f4
    ld hl, sp-$2c                                 ; $58ab: $f8 $d4
    ld hl, sp-$0c                                 ; $58ad: $f8 $f4
    inc d                                         ; $58af: $14
    ldh [$b8], a                                  ; $58b0: $e0 $b8
    ldh a, [$fb]                                  ; $58b2: $f0 $fb
    add sp, -$10                                  ; $58b4: $e8 $f0
    db $10                                        ; $58b6: $10
    jp hl                                         ; $58b7: $e9


    ld e, b                                       ; $58b8: $58
    rst $20                                       ; $58b9: $e7
    ld h, [hl]                                    ; $58ba: $66
    add c                                         ; $58bb: $81
    db $fc                                        ; $58bc: $fc
    rst $38                                       ; $58bd: $ff
    rst $38                                       ; $58be: $ff
    rst $30                                       ; $58bf: $f7
    cp $fd                                        ; $58c0: $fe $fd
    cp $fa                                        ; $58c2: $fe $fa
    db $fc                                        ; $58c4: $fc
    ld [$fc3b], a                                 ; $58c5: $ea $3b $fc
    ld sp, hl                                     ; $58c8: $f9
    ld hl, sp-$20                                 ; $58c9: $f8 $e0
    db $f4                                        ; $58cb: $f4
    rst $38                                       ; $58cc: $ff

jr_02a_58cd:
    ld c, b                                       ; $58cd: $48
    ld [hl+], a                                   ; $58ce: $22
    db $eb                                        ; $58cf: $eb
    and b                                         ; $58d0: $a0
    ldh [$f0], a                                  ; $58d1: $e0 $f0
    call z, $fba3                                 ; $58d3: $cc $a3 $fb
    push bc                                       ; $58d6: $c5
    pop af                                        ; $58d7: $f1
    call $cbe3                                    ; $58d8: $cd $e3 $cb
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    db $ed                                        ; $58dd: $ed
    cp $ff                                        ; $58de: $fe $ff
    cp $f8                                        ; $58e0: $fe $f8
    add sp, -$10                                  ; $58e2: $e8 $f0
    ld d, d                                       ; $58e4: $52
    ldh [$e8], a                                  ; $58e5: $e0 $e8
    ret nz                                        ; $58e7: $c0

    rst $20                                       ; $58e8: $e7
    ret nz                                        ; $58e9: $c0

    add b                                         ; $58ea: $80
    ld d, b                                       ; $58eb: $50
    sub $c0                                       ; $58ec: $d6 $c0
    jr nz, @-$39                                  ; $58ee: $20 $c5

    cp l                                          ; $58f0: $bd
    cp $ee                                        ; $58f1: $fe $ee
    jp $b1f0                                      ; $58f3: $c3 $f0 $b1


    ld a, [de]                                    ; $58f6: $1a
    ldh [$f8], a                                  ; $58f7: $e0 $f8
    push hl                                       ; $58f9: $e5
    or d                                          ; $58fa: $b2
    and c                                         ; $58fb: $a1
    ld d, h                                       ; $58fc: $54
    and c                                         ; $58fd: $a1
    rst $38                                       ; $58fe: $ff
    ld a, a                                       ; $58ff: $7f
    rst $30                                       ; $5900: $f7
    xor a                                         ; $5901: $af
    ld a, a                                       ; $5902: $7f
    ld a, a                                       ; $5903: $7f
    inc d                                         ; $5904: $14
    ldh [$b7], a                                  ; $5905: $e0 $b7
    rra                                           ; $5907: $1f
    ccf                                           ; $5908: $3f
    rra                                           ; $5909: $1f
    ld a, a                                       ; $590a: $7f

jr_02a_590b:
    cpl                                           ; $590b: $2f
    rra                                           ; $590c: $1f
    ld e, a                                       ; $590d: $5f
    rrca                                          ; $590e: $0f
    rrca                                          ; $590f: $0f
    rlca                                          ; $5910: $07
    ld a, [bc]                                    ; $5911: $0a
    inc d                                         ; $5912: $14
    ld [c], a                                     ; $5913: $e2
    rst $38                                       ; $5914: $ff
    dec bc                                        ; $5915: $0b
    ld bc, $0103                                  ; $5916: $01 $03 $01
    ld [bc], a                                    ; $5919: $02
    ld bc, $0005                                  ; $591a: $01 $05 $00
    sub l                                         ; $591d: $95
    rst $18                                       ; $591e: $df
    ld [de], a                                    ; $591f: $12
    ldh [rSCY], a                                 ; $5920: $e0 $42
    sub b                                         ; $5922: $90
    ld [$0ca0], a                                 ; $5923: $ea $a0 $0c
    ld [c], a                                     ; $5926: $e2
    cp $e1                                        ; $5927: $fe $e1
    and b                                         ; $5929: $a0
    ld [hl], h                                    ; $592a: $74
    jr nc, jr_02a_58cd                            ; $592b: $30 $a0

    jr nz, @-$3b                                  ; $592d: $20 $c3

    ei                                            ; $592f: $fb
    jp c, $b0e6                                   ; $5930: $da $e6 $b0

    ldh [$f4], a                                  ; $5933: $e0 $f4
    rra                                           ; $5935: $1f
    ret nz                                        ; $5936: $c0

    rst $30                                       ; $5937: $f7
    ret c                                         ; $5938: $d8

    ldh a, [$f8]                                  ; $5939: $f0 $f8
    inc d                                         ; $593b: $14
    ldh [$b4], a                                  ; $593c: $e0 $b4
    ldh [$f0], a                                  ; $593e: $e0 $f0
    ldh [$fa], a                                  ; $5940: $e0 $fa
    jr nz, jr_02a_590b                            ; $5942: $20 $c7

    ei                                            ; $5944: $fb
    ld [de], a                                    ; $5945: $12
    ldh [$91], a                                  ; $5946: $e0 $91
    nop                                           ; $5948: $00
    db $fd                                        ; $5949: $fd
    cp $f6                                        ; $594a: $fe $f6
    rst $38                                       ; $594c: $ff
    db $fc                                        ; $594d: $fc
    cp $fc                                        ; $594e: $fe $fc
    db $fd                                        ; $5950: $fd
    ld hl, sp-$14                                 ; $5951: $f8 $ec
    ld hl, sp-$06                                 ; $5953: $f8 $fa
    ld b, $f8                                     ; $5955: $06 $f8
    ldh [$f5], a                                  ; $5957: $e0 $f5
    cp $78                                        ; $5959: $fe $78
    push hl                                       ; $595b: $e5
    inc l                                         ; $595c: $2c
    push af                                       ; $595d: $f5
    nop                                           ; $595e: $00
    and c                                         ; $595f: $a1
    xor $cc                                       ; $5960: $ee $cc
    pop af                                        ; $5962: $f1
    xor d                                         ; $5963: $aa
    rst $38                                       ; $5964: $ff
    ld [bc], a                                    ; $5965: $02
    add c                                         ; $5966: $81
    and b                                         ; $5967: $a0
    pop bc                                        ; $5968: $c1
    add b                                         ; $5969: $80
    pop bc                                        ; $596a: $c1
    add l                                         ; $596b: $85
    jp $a1ff                                      ; $596c: $c3 $ff $a1


    jp $8300                                      ; $596f: $c3 $00 $83


    dec b                                         ; $5972: $05
    add e                                         ; $5973: $83
    ld b, b                                       ; $5974: $40
    add c                                         ; $5975: $81
    di                                            ; $5976: $f3
    ld b, c                                       ; $5977: $41
    add b                                         ; $5978: $80
    ldh [$a0], a                                  ; $5979: $e0 $a0
    ld [hl], b                                    ; $597b: $70
    ret nz                                        ; $597c: $c0

    ret nz                                        ; $597d: $c0

    ldh [rBCPS], a                                ; $597e: $e0 $68
    ldh a, [rIE]                                  ; $5980: $f0 $ff
    pop af                                        ; $5982: $f1
    db $fc                                        ; $5983: $fc
    call c, Call_000_1eff                         ; $5984: $dc $ff $1e
    rst $38                                       ; $5987: $ff
    add b                                         ; $5988: $80
    ld e, $fd                                     ; $5989: $1e $fd
    ld [de], a                                    ; $598b: $12
    ld [hl], h                                    ; $598c: $74
    add d                                         ; $598d: $82
    ld c, b                                       ; $598e: $48
    nop                                           ; $598f: $00
    ld bc, $5878                                  ; $5990: $01 $78 $58
    rst $38                                       ; $5993: $ff
    rst $38                                       ; $5994: $ff
    ld b, b                                       ; $5995: $40
    add c                                         ; $5996: $81
    add d                                         ; $5997: $82
    pop bc                                        ; $5998: $c1
    and b                                         ; $5999: $a0
    pop bc                                        ; $599a: $c1
    and c                                         ; $599b: $a1
    jp $85ff                                      ; $599c: $c3 $ff $85


    jp $8304                                      ; $599f: $c3 $04 $83


    ld b, c                                       ; $59a2: $41
    add e                                         ; $59a3: $83
    ld [bc], a                                    ; $59a4: $02
    add c                                         ; $59a5: $81
    or $6d                                        ; $59a6: $f6 $6d
    add b                                         ; $59a8: $80
    add b                                         ; $59a9: $80
    and b                                         ; $59aa: $a0
    ld c, h                                       ; $59ab: $4c
    and b                                         ; $59ac: $a0
    ret nc                                        ; $59ad: $d0

    ldh [$64], a                                  ; $59ae: $e0 $64

jr_02a_59b0:
    ldh a, [$ed]                                  ; $59b0: $f0 $ed
    ldh a, [$d0]                                  ; $59b2: $f0 $d0
    ld [c], a                                     ; $59b4: $e2
    ld b, c                                       ; $59b5: $41
    ld e, $c6                                     ; $59b6: $1e $c6
    add c                                         ; $59b8: $81
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    jr nc, jr_02a_59b0                            ; $59bb: $30 $f3

    nop                                           ; $59bd: $00
    add d                                         ; $59be: $82
    ret nc                                        ; $59bf: $d0

Call_02a_59c0:
    ldh [$a0], a                                  ; $59c0: $e0 $a0
    xor c                                         ; $59c2: $a9
    ld [bc], a                                    ; $59c3: $02
    ld bc, $0300                                  ; $59c4: $01 $00 $03
    nop                                           ; $59c7: $00
    ld [hl], c                                    ; $59c8: $71
    xor c                                         ; $59c9: $a9
    pop af                                        ; $59ca: $f1
    ldh [$60], a                                  ; $59cb: $e0 $60
    add sp, $30                                   ; $59cd: $e8 $30
    add e                                         ; $59cf: $83
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    rst $38                                       ; $59d2: $ff
    rst $38                                       ; $59d3: $ff
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    rst $38                                       ; $59d7: $ff
    nop                                           ; $59d8: $00
    rst $38                                       ; $59d9: $ff
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    rst $38                                       ; $59dc: $ff
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    rst $38                                       ; $59e4: $ff
    rst $38                                       ; $59e5: $ff
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    nop                                           ; $59e9: $00
    rst $38                                       ; $59ea: $ff
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    rst $38                                       ; $59ed: $ff
    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    rst $38                                       ; $59f1: $ff
    rst $38                                       ; $59f2: $ff
    rst $38                                       ; $59f3: $ff
    rst $38                                       ; $59f4: $ff
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    rst $38                                       ; $59f8: $ff
    rst $38                                       ; $59f9: $ff
    nop                                           ; $59fa: $00
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    rst $38                                       ; $59fe: $ff
    rst $38                                       ; $59ff: $ff
    rst $38                                       ; $5a00: $ff
    rst $38                                       ; $5a01: $ff
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    rst $38                                       ; $5a04: $ff
    rst $38                                       ; $5a05: $ff
    rst $38                                       ; $5a06: $ff
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    nop                                           ; $5a0b: $00
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    rst $38                                       ; $5a0f: $ff
    ccf                                           ; $5a10: $3f
    ld bc, $0000                                  ; $5a11: $01 $00 $00
    nop                                           ; $5a14: $00
    nop                                           ; $5a15: $00
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00
    ccf                                           ; $5a19: $3f
    ccf                                           ; $5a1a: $3f
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    jr nz, jr_02a_5a40                            ; $5a1e: $20 $20

    ld d, l                                       ; $5a20: $55
    and b                                         ; $5a21: $a0
    ld a, [hl]                                    ; $5a22: $7e
    rst $38                                       ; $5a23: $ff
    ld a, a                                       ; $5a24: $7f
    ld [$0825], sp                                ; $5a25: $08 $25 $08
    dec h                                         ; $5a28: $25
    ld [$0825], sp                                ; $5a29: $08 $25 $08
    dec h                                         ; $5a2c: $25
    rst $18                                       ; $5a2d: $df
    dec l                                         ; $5a2e: $2d
    rst $38                                       ; $5a2f: $ff
    ld d, e                                       ; $5a30: $53
    sub b                                         ; $5a31: $90
    inc bc                                        ; $5a32: $03
    call nc, $ff01                                ; $5a33: $d4 $01 $ff
    ld a, a                                       ; $5a36: $7f
    db $f4                                        ; $5a37: $f4
    inc bc                                        ; $5a38: $03
    sub b                                         ; $5a39: $90
    inc bc                                        ; $5a3a: $03
    call nc, $1601                                ; $5a3b: $d4 $01 $16
    ld a, l                                       ; $5a3e: $7d
    sbc a                                         ; $5a3f: $9f

jr_02a_5a40:
    ld a, [hl]                                    ; $5a40: $7e
    pop af                                        ; $5a41: $f1
    nop                                           ; $5a42: $00
    call nc, $ff01                                ; $5a43: $d4 $01 $ff
    ld a, a                                       ; $5a46: $7f
    sub b                                         ; $5a47: $90
    inc bc                                        ; $5a48: $03
    call nc, $ac01                                ; $5a49: $d4 $01 $ac
    ld [$08f5], sp                                ; $5a4c: $08 $f5 $08
    ld a, a                                       ; $5a4f: $7f
    ld de, $1aff                                  ; $5a50: $11 $ff $1a
    xor h                                         ; $5a53: $ac
    ld [$2508], sp                                ; $5a54: $08 $08 $25
    ld [$0825], sp                                ; $5a57: $08 $25 $08
    dec h                                         ; $5a5a: $25
    ld [$d525], sp                                ; $5a5b: $08 $25 $d5

jr_02a_5a5e:
    nop                                           ; $5a5e: $00
    rst $38                                       ; $5a5f: $ff
    ldh [rTIMA], a                                ; $5a60: $e0 $05
    ei                                            ; $5a62: $fb
    ldh [$0b], a                                  ; $5a63: $e0 $0b
    rst $30                                       ; $5a65: $f7
    pop hl                                        ; $5a66: $e1
    nop                                           ; $5a67: $00
    ld [bc], a                                    ; $5a68: $02
    db $eb                                        ; $5a69: $eb
    nop                                           ; $5a6a: $00
    jr z, @-$0f                                   ; $5a6b: $28 $ef

    ldh [$90], a                                  ; $5a6d: $e0 $90
    db $eb                                        ; $5a6f: $eb
    ldh [$f5], a                                  ; $5a70: $e0 $f5
    nop                                           ; $5a72: $00
    ret z                                         ; $5a73: $c8

    cp $e5                                        ; $5a74: $fe $e5
    ldh [$80], a                                  ; $5a76: $e0 $80
    nop                                           ; $5a78: $00
    db $ec                                        ; $5a79: $ec
    rst $38                                       ; $5a7a: $ff
    ld hl, sp-$01                                 ; $5a7b: $f8 $ff
    ldh [rIE], a                                  ; $5a7d: $e0 $ff
    cp $42                                        ; $5a7f: $fe $42
    ld hl, sp-$38                                 ; $5a81: $f8 $c8
    ldh a, [$80]                                  ; $5a83: $f0 $80
    ldh [rNR10], a                                ; $5a85: $e0 $10
    rst $28                                       ; $5a87: $ef
    ldh [rP1], a                                  ; $5a88: $e0 $00
    ret nz                                        ; $5a8a: $c0

    rst $38                                       ; $5a8b: $ff
    rst $38                                       ; $5a8c: $ff
    ld [c], a                                     ; $5a8d: $e2
    rst $30                                       ; $5a8e: $f7
    rst $38                                       ; $5a8f: $ff
    cp h                                          ; $5a90: $bc
    ld a, a                                       ; $5a91: $7f
    rst $38                                       ; $5a92: $ff
    add sp, -$01                                  ; $5a93: $e8 $ff
    add c                                         ; $5a95: $81
    cp $08                                        ; $5a96: $fe $08
    ldh a, [$f8]                                  ; $5a98: $f0 $f8
    push hl                                       ; $5a9a: $e5
    ei                                            ; $5a9b: $fb
    jr nz, jr_02a_5a5e                            ; $5a9c: $20 $c0

    cp a                                          ; $5a9e: $bf
    ld [c], a                                     ; $5a9f: $e2
    nop                                           ; $5aa0: $00
    ld a, a                                       ; $5aa1: $7f
    rst $38                                       ; $5aa2: $ff
    cpl                                           ; $5aa3: $2f
    rst $38                                       ; $5aa4: $ff
    rst $38                                       ; $5aa5: $ff
    ccf                                           ; $5aa6: $3f
    rst $38                                       ; $5aa7: $ff
    rra                                           ; $5aa8: $1f
    rst $38                                       ; $5aa9: $ff
    or a                                          ; $5aaa: $b7
    ld a, a                                       ; $5aab: $7f
    rra                                           ; $5aac: $1f
    ld a, a                                       ; $5aad: $7f
    rst $38                                       ; $5aae: $ff
    rrca                                          ; $5aaf: $0f
    ld a, a                                       ; $5ab0: $7f
    ld c, a                                       ; $5ab1: $4f
    ccf                                           ; $5ab2: $3f
    rlca                                          ; $5ab3: $07
    rra                                           ; $5ab4: $1f
    ld [bc], a                                    ; $5ab5: $02
    rra                                           ; $5ab6: $1f
    rst $38                                       ; $5ab7: $ff
    inc de                                        ; $5ab8: $13
    rrca                                          ; $5ab9: $0f
    ld bc, $0b0f                                  ; $5aba: $01 $0f $0b
    rlca                                          ; $5abd: $07
    ld bc, $ff07                                  ; $5abe: $01 $07 $ff
    nop                                           ; $5ac1: $00
    rlca                                          ; $5ac2: $07
    inc b                                         ; $5ac3: $04
    inc bc                                        ; $5ac4: $03
    ld e, h                                       ; $5ac5: $5c
    rst $38                                       ; $5ac6: $ff
    nop                                           ; $5ac7: $00

Jump_02a_5ac8:
    rst $38                                       ; $5ac8: $ff
    rst $20                                       ; $5ac9: $e7
    add c                                         ; $5aca: $81
    inc a                                         ; $5acb: $3c
    db $10                                        ; $5acc: $10
    db $d3                                        ; $5acd: $d3
    db $e3                                        ; $5ace: $e3
    add e                                         ; $5acf: $83
    ldh [rNR41], a                                ; $5ad0: $e0 $20
    ret nz                                        ; $5ad2: $c0

    add b                                         ; $5ad3: $80
    cp a                                          ; $5ad4: $bf
    ret nz                                        ; $5ad5: $c0

    nop                                           ; $5ad6: $00
    ldh [$90], a                                  ; $5ad7: $e0 $90
    ldh [$80], a                                  ; $5ad9: $e0 $80
    cp $e0                                        ; $5adb: $fe $e0
    nop                                           ; $5add: $00
    ei                                            ; $5ade: $fb
    ret nz                                        ; $5adf: $c0

    jr nz, @-$5e                                  ; $5ae0: $20 $a0

    ldh [$7d], a                                  ; $5ae2: $e0 $7d
    rst $38                                       ; $5ae4: $ff
    rst $28                                       ; $5ae5: $ef
    rst $38                                       ; $5ae6: $ff
    ld a, [hl-]                                   ; $5ae7: $3a
    ld a, [$e2da]                                 ; $5ae8: $fa $da $e2
    ld [$e063], sp                                ; $5aeb: $08 $63 $e0
    and h                                         ; $5aee: $a4
    ld hl, sp-$20                                 ; $5aef: $f8 $e0
    ld hl, sp-$10                                 ; $5af1: $f8 $f0
    rst $38                                       ; $5af3: $ff
    db $fc                                        ; $5af4: $fc
    ret nc                                        ; $5af5: $d0

    db $fc                                        ; $5af6: $fc
    ld a, [c]                                     ; $5af7: $f2
    db $fc                                        ; $5af8: $fc
    ldh [$fc], a                                  ; $5af9: $e0 $fc
    or b                                          ; $5afb: $b0
    rst $30                                       ; $5afc: $f7
    ld hl, sp-$1c                                 ; $5afd: $f8 $e4
    ld hl, sp-$80                                 ; $5aff: $f8 $80
    push hl                                       ; $5b01: $e5
    cp [hl]                                       ; $5b02: $be
    rst $38                                       ; $5b03: $ff
    db $e3                                        ; $5b04: $e3
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    ld b, b                                       ; $5b07: $40
    rst $38                                       ; $5b08: $ff
    nop                                           ; $5b09: $00
    rst $20                                       ; $5b0a: $e7
    db $fc                                        ; $5b0b: $fc
    rst $38                                       ; $5b0c: $ff
    or $ff                                        ; $5b0d: $f6 $ff
    ld a, a                                       ; $5b0f: $7f
    db $fc                                        ; $5b10: $fc
    rst $38                                       ; $5b11: $ff
    ld hl, sp-$02                                 ; $5b12: $f8 $fe
    add sp, -$02                                  ; $5b14: $e8 $fe
    ld hl, sp-$08                                 ; $5b16: $f8 $f8
    ldh [$0b], a                                  ; $5b18: $e0 $0b
    db $f4                                        ; $5b1a: $f4
    rst $38                                       ; $5b1b: $ff
    ld a, b                                       ; $5b1c: $78
    ldh [$80], a                                  ; $5b1d: $e0 $80
    and e                                         ; $5b1f: $a3
    and $23                                       ; $5b20: $e6 $23
    pop hl                                        ; $5b22: $e1
    ldh a, [$e0]                                  ; $5b23: $f0 $e0
    rst $28                                       ; $5b25: $ef
    ld [$c0e3], a                                 ; $5b26: $ea $e3 $c0
    ld b, b                                       ; $5b29: $40
    ldh [$ea], a                                  ; $5b2a: $e0 $ea
    ret nc                                        ; $5b2c: $d0

    pop hl                                        ; $5b2d: $e1
    rst $08                                       ; $5b2e: $cf
    jp hl                                         ; $5b2f: $e9


    ld [bc], a                                    ; $5b30: $02
    add c                                         ; $5b31: $81
    and b                                         ; $5b32: $a0
    rst $38                                       ; $5b33: $ff
    pop bc                                        ; $5b34: $c1
    add b                                         ; $5b35: $80
    pop bc                                        ; $5b36: $c1
    add l                                         ; $5b37: $85
    jp $c3a1                                      ; $5b38: $c3 $a1 $c3


    nop                                           ; $5b3b: $00
    ld a, a                                       ; $5b3c: $7f
    add e                                         ; $5b3d: $83
    dec b                                         ; $5b3e: $05
    add e                                         ; $5b3f: $83
    ld b, b                                       ; $5b40: $40
    add c                                         ; $5b41: $81
    ld b, c                                       ; $5b42: $41
    add b                                         ; $5b43: $80
    ret nz                                        ; $5b44: $c0

    ldh [rIE], a                                  ; $5b45: $e0 $ff
    ret nz                                        ; $5b47: $c0

    and b                                         ; $5b48: $a0
    ret nz                                        ; $5b49: $c0

    ret nz                                        ; $5b4a: $c0

    ldh [rBCPS], a                                ; $5b4b: $e0 $68
    ldh a, [$f1]                                  ; $5b4d: $f0 $f1
    rst $38                                       ; $5b4f: $ff
    db $fc                                        ; $5b50: $fc
    call c, Call_000_1eff                         ; $5b51: $dc $ff $1e
    rst $38                                       ; $5b54: $ff
    add b                                         ; $5b55: $80
    ld e, $12                                     ; $5b56: $1e $12
    ld a, [hl]                                    ; $5b58: $7e
    call nc, Call_02a_48c2                        ; $5b59: $d4 $c2 $48
    nop                                           ; $5b5c: $00
    ld bc, $5878                                  ; $5b5d: $01 $78 $58
    rst $38                                       ; $5b60: $ff
    or b                                          ; $5b61: $b0
    jp hl                                         ; $5b62: $e9


    rst $38                                       ; $5b63: $ff
    ld [bc], a                                    ; $5b64: $02
    ld bc, $0300                                  ; $5b65: $01 $00 $03
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00
    ld b, b                                       ; $5b6a: $40
    ld b, b                                       ; $5b6b: $40
    ld a, a                                       ; $5b6c: $7f
    nop                                           ; $5b6d: $00
    jr nz, jr_02a_5b70                            ; $5b6e: $20 $00

jr_02a_5b70:
    db $10                                        ; $5b70: $10
    ld [$0400], sp                                ; $5b71: $08 $00 $04
    or d                                          ; $5b74: $b2
    ret nz                                        ; $5b75: $c0

    ret nz                                        ; $5b76: $c0

    and d                                         ; $5b77: $a2
    pop bc                                        ; $5b78: $c1
    ldh a, [rIE]                                  ; $5b79: $f0 $ff
    ldh a, [rIE]                                  ; $5b7b: $f0 $ff
    ldh a, [rIE]                                  ; $5b7d: $f0 $ff
    ldh a, [rIE]                                  ; $5b7f: $f0 $ff
    ldh a, [$f3]                                  ; $5b81: $f0 $f3
    jp $e33c                                      ; $5b83: $c3 $3c $e3


    jp $fd3c                                      ; $5b86: $c3 $3c $fd


    ldh [$fe], a                                  ; $5b89: $e0 $fe
    ld [c], a                                     ; $5b8b: $e2
    db $f4                                        ; $5b8c: $f4
    pop hl                                        ; $5b8d: $e1
    dec de                                        ; $5b8e: $1b
    rst $20                                       ; $5b8f: $e7
    cpl                                           ; $5b90: $2f
    rst $38                                       ; $5b91: $ff
    call c, $f11e                                 ; $5b92: $dc $1e $f1
    inc a                                         ; $5b95: $3c
    db $e3                                        ; $5b96: $e3
    ld a, h                                       ; $5b97: $7c
    jp Jump_02a_7f7c                              ; $5b98: $c3 $7c $7f


    jp $9ce3                                      ; $5b9b: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $5b9e: $c3 $bc $18


    rst $20                                       ; $5ba1: $e7
    ld [c], a                                     ; $5ba2: $e2
    pop hl                                        ; $5ba3: $e1
    rst $38                                       ; $5ba4: $ff
    ld a, [de]                                    ; $5ba5: $1a
    push hl                                       ; $5ba6: $e5
    ld [de], a                                    ; $5ba7: $12
    rst $28                                       ; $5ba8: $ef
    ld e, a                                       ; $5ba9: $5f
    cp b                                          ; $5baa: $b8
    ld a, a                                       ; $5bab: $7f
    ldh [rIE], a                                  ; $5bac: $e0 $ff
    di                                            ; $5bae: $f3
    adc h                                         ; $5baf: $8c
    inc de                                        ; $5bb0: $13
    rst $28                                       ; $5bb1: $ef
    rra                                           ; $5bb2: $1f
    ld hl, sp-$04                                 ; $5bb3: $f8 $fc
    ld h, e                                       ; $5bb5: $63
    cp a                                          ; $5bb6: $bf
    db $fc                                        ; $5bb7: $fc
    add e                                         ; $5bb8: $83
    db $fc                                        ; $5bb9: $fc
    inc bc                                        ; $5bba: $03
    cp h                                          ; $5bbb: $bc
    ld b, e                                       ; $5bbc: $43
    call nz, $98e1                                ; $5bbd: $c4 $e1 $98
    rst $38                                       ; $5bc0: $ff
    rst $20                                       ; $5bc1: $e7
    db $fc                                        ; $5bc2: $fc
    ld b, e                                       ; $5bc3: $43
    call c, $f863                                 ; $5bc4: $dc $63 $f8
    daa                                           ; $5bc7: $27
    ld l, b                                       ; $5bc8: $68
    rst $38                                       ; $5bc9: $ff
    or a                                          ; $5bca: $b7
    ld l, h                                       ; $5bcb: $6c
    sub e                                         ; $5bcc: $93
    db $fc                                        ; $5bcd: $fc
    inc de                                        ; $5bce: $13
    add sp, $17                                   ; $5bcf: $e8 $17
    ld hl, sp-$01                                 ; $5bd1: $f8 $ff
    rrca                                          ; $5bd3: $0f
    sbc $25                                       ; $5bd4: $de $25
    inc a                                         ; $5bd6: $3c
    rst $00                                       ; $5bd7: $c7
    ld a, $c3                                     ; $5bd8: $3e $c3
    ccf                                           ; $5bda: $3f
    rst $38                                       ; $5bdb: $ff
    jp nz, $c13e                                  ; $5bdc: $c2 $3e $c1

    jp $c33d                                      ; $5bdf: $c3 $3d $c3


    dec a                                         ; $5be2: $3d
    cp e                                          ; $5be3: $bb
    rst $30                                       ; $5be4: $f7
    rst $10                                       ; $5be5: $d7
    rst $38                                       ; $5be6: $ff
    nop                                           ; $5be7: $00
    and b                                         ; $5be8: $a0
    jp hl                                         ; $5be9: $e9


    jp $c3bc                                      ; $5bea: $c3 $bc $c3


    cp h                                          ; $5bed: $bc
    ret                                           ; $5bee: $c9


    ld a, h                                       ; $5bef: $7c
    jp nz, $bee0                                  ; $5bf0: $c2 $e0 $be

    pop hl                                        ; $5bf3: $e1
    ld b, e                                       ; $5bf4: $43
    db $f4                                        ; $5bf5: $f4
    ldh [$a0], a                                  ; $5bf6: $e0 $a0
    pop hl                                        ; $5bf8: $e1
    nop                                           ; $5bf9: $00
    rst $38                                       ; $5bfa: $ff
    cp a                                          ; $5bfb: $bf
    db $dd                                        ; $5bfc: $dd
    db $eb                                        ; $5bfd: $eb
    rst $38                                       ; $5bfe: $ff
    nop                                           ; $5bff: $00
    ld a, [hl]                                    ; $5c00: $7e
    add c                                         ; $5c01: $81
    add b                                         ; $5c02: $80
    ld [c], a                                     ; $5c03: $e2
    db $f4                                        ; $5c04: $f4
    rst $38                                       ; $5c05: $ff
    rrca                                          ; $5c06: $0f
    ldh a, [rNR32]                                ; $5c07: $f0 $1c
    db $e3                                        ; $5c09: $e3
    inc e                                         ; $5c0a: $1c
    di                                            ; $5c0b: $f3
    inc e                                         ; $5c0c: $1c
    db $e3                                        ; $5c0d: $e3
    rst $38                                       ; $5c0e: $ff
    inc c                                         ; $5c0f: $0c
    di                                            ; $5c10: $f3
    ccf                                           ; $5c11: $3f
    ret nc                                        ; $5c12: $d0

    dec de                                        ; $5c13: $1b
    db $f4                                        ; $5c14: $f4
    ld d, a                                       ; $5c15: $57
    rst $38                                       ; $5c16: $ff
    ld e, a                                       ; $5c17: $5f
    xor a                                         ; $5c18: $af
    db $fc                                        ; $5c19: $fc
    ld a, [hl]                                    ; $5c1a: $7e
    pop af                                        ; $5c1b: $f1
    cp h                                          ; $5c1c: $bc
    ld [hl], b                                    ; $5c1d: $70
    ldh [$fc], a                                  ; $5c1e: $e0 $fc
    ld [hl], b                                    ; $5c20: $70
    ld [c], a                                     ; $5c21: $e2
    rst $38                                       ; $5c22: $ff
    ei                                            ; $5c23: $fb
    rst $38                                       ; $5c24: $ff
    sbc $ff                                       ; $5c25: $de $ff
    push af                                       ; $5c27: $f5
    rst $38                                       ; $5c28: $ff
    xor d                                         ; $5c29: $aa
    rst $38                                       ; $5c2a: $ff
    or a                                          ; $5c2b: $b7
    ld d, a                                       ; $5c2c: $57
    rst $38                                       ; $5c2d: $ff
    cp a                                          ; $5c2e: $bf
    ld h, a                                       ; $5c2f: $67
    and b                                         ; $5c30: $a0
    di                                            ; $5c31: $f3
    adc h                                         ; $5c32: $8c
    ld hl, sp-$1f                                 ; $5c33: $f8 $e1
    ld a, h                                       ; $5c35: $7c
    db $fd                                        ; $5c36: $fd
    db $e3                                        ; $5c37: $e3
    ld [hl], b                                    ; $5c38: $70
    rst $20                                       ; $5c39: $e7
    rst $28                                       ; $5c3a: $ef
    rst $38                                       ; $5c3b: $ff
    rst $10                                       ; $5c3c: $d7
    ld a, a                                       ; $5c3d: $7f
    db $ed                                        ; $5c3e: $ed
    ld a, a                                       ; $5c3f: $7f
    rst $38                                       ; $5c40: $ff
    rst $30                                       ; $5c41: $f7
    ccf                                           ; $5c42: $3f
    ld l, e                                       ; $5c43: $6b
    cp a                                          ; $5c44: $bf
    halt                                          ; $5c45: $76
    sbc a                                         ; $5c46: $9f
    ei                                            ; $5c47: $fb
    rra                                           ; $5c48: $1f
    rst $38                                       ; $5c49: $ff
    push af                                       ; $5c4a: $f5
    rra                                           ; $5c4b: $1f
    ld a, [$dd0f]                                 ; $5c4c: $fa $0f $dd
    daa                                           ; $5c4f: $27
    ld a, $c7                                     ; $5c50: $3e $c7
    di                                            ; $5c52: $f3
    ccf                                           ; $5c53: $3f
    jp $e06e                                      ; $5c54: $c3 $6e $e0


    ld [hl], b                                    ; $5c57: $70
    ld [c], a                                     ; $5c58: $e2
    db $ed                                        ; $5c59: $ed
    rst $38                                       ; $5c5a: $ff
    db $d3                                        ; $5c5b: $d3
    inc a                                         ; $5c5c: $3c
    dec sp                                        ; $5c5d: $3b
    ld a, [hl]                                    ; $5c5e: $7e
    add c                                         ; $5c5f: $81
    ld [hl], b                                    ; $5c60: $70
    jp hl                                         ; $5c61: $e9


    db $e3                                        ; $5c62: $e3
    sbc h                                         ; $5c63: $9c
    cp h                                          ; $5c64: $bc
    inc d                                         ; $5c65: $14
    ldh [rBCPD], a                                ; $5c66: $e0 $69
    ldh [$eb], a                                  ; $5c68: $e0 $eb
    jp $1063                                      ; $5c6a: $c3 $63 $10


    ldh [$57], a                                  ; $5c6d: $e0 $57
    and h                                         ; $5c6f: $a4
    ldh [$7d], a                                  ; $5c70: $e0 $7d
    rst $38                                       ; $5c72: $ff
    db $d3                                        ; $5c73: $d3
    ld sp, hl                                     ; $5c74: $f9
    rst $28                                       ; $5c75: $ef
    ld c, d                                       ; $5c76: $4a
    pop hl                                        ; $5c77: $e1
    db $e4                                        ; $5c78: $e4
    pop bc                                        ; $5c79: $c1
    cp e                                          ; $5c7a: $bb
    db $f4                                        ; $5c7b: $f4
    ld e, e                                       ; $5c7c: $5b
    db $f4                                        ; $5c7d: $f4
    xor h                                         ; $5c7e: $ac
    rst $38                                       ; $5c7f: $ff
    di                                            ; $5c80: $f3
    ld l, h                                       ; $5c81: $6c
    di                                            ; $5c82: $f3
    cp h                                          ; $5c83: $bc
    db $e3                                        ; $5c84: $e3
    ld l, h                                       ; $5c85: $6c
    di                                            ; $5c86: $f3
    cp e                                          ; $5c87: $bb
    rst $38                                       ; $5c88: $ff
    db $f4                                        ; $5c89: $f4
    db $db                                        ; $5c8a: $db
    db $f4                                        ; $5c8b: $f4
    cp l                                          ; $5c8c: $bd
    jp $ffe7                                      ; $5c8d: $c3 $e7 $ff


    cp d                                          ; $5c90: $ba
    cp a                                          ; $5c91: $bf
    rst $38                                       ; $5c92: $ff
    ld d, l                                       ; $5c93: $55
    rst $38                                       ; $5c94: $ff
    xor e                                         ; $5c95: $ab
    rst $38                                       ; $5c96: $ff
    cp $58                                        ; $5c97: $fe $58
    and b                                         ; $5c99: $a0
    rst $38                                       ; $5c9a: $ff
    rst $28                                       ; $5c9b: $ef
    rst $38                                       ; $5c9c: $ff
    db $db                                        ; $5c9d: $db
    rst $38                                       ; $5c9e: $ff
    ld l, a                                       ; $5c9f: $6f
    adc [hl]                                      ; $5ca0: $8e
    ldh [$af], a                                  ; $5ca1: $e0 $af
    ld a, a                                       ; $5ca3: $7f
    or l                                          ; $5ca4: $b5
    rst $08                                       ; $5ca5: $cf
    ld a, a                                       ; $5ca6: $7f
    rst $28                                       ; $5ca7: $ef
    ld a, a                                       ; $5ca8: $7f
    ld d, a                                       ; $5ca9: $57
    ld b, [hl]                                    ; $5caa: $46
    and b                                         ; $5cab: $a0
    ret nc                                        ; $5cac: $d0

    jp $e718                                      ; $5cad: $c3 $18 $e7


    cp $f8                                        ; $5cb0: $fe $f8
    push hl                                       ; $5cb2: $e5
    ld d, a                                       ; $5cb3: $57
    rst $38                                       ; $5cb4: $ff
    xor h                                         ; $5cb5: $ac
    rst $38                                       ; $5cb6: $ff
    ld [hl], h                                    ; $5cb7: $74
    ei                                            ; $5cb8: $fb
    cp b                                          ; $5cb9: $b8
    ld l, a                                       ; $5cba: $6f
    rst $20                                       ; $5cbb: $e7
    ld e, b                                       ; $5cbc: $58
    rst $20                                       ; $5cbd: $e7
    db $fc                                        ; $5cbe: $fc
    dec b                                         ; $5cbf: $05
    ldh [$98], a                                  ; $5cc0: $e0 $98
    rst $20                                       ; $5cc2: $e7
    ld b, b                                       ; $5cc3: $40
    rst $20                                       ; $5cc4: $e7
    rst $18                                       ; $5cc5: $df
    cp d                                          ; $5cc6: $ba
    rst $38                                       ; $5cc7: $ff
    db $ec                                        ; $5cc8: $ec
    di                                            ; $5cc9: $f3
    sbc b                                         ; $5cca: $98
    ldh [$e0], a                                  ; $5ccb: $e0 $e0
    cp d                                          ; $5ccd: $ba
    rst $38                                       ; $5cce: $ff
    jp hl                                         ; $5ccf: $e9


    ld l, h                                       ; $5cd0: $6c
    ld hl, sp-$20                                 ; $5cd1: $f8 $e0
    ret z                                         ; $5cd3: $c8

    push hl                                       ; $5cd4: $e5
    rst $28                                       ; $5cd5: $ef
    ld h, $e0                                     ; $5cd6: $26 $e0
    ld l, l                                       ; $5cd8: $6d
    rst $38                                       ; $5cd9: $ff
    scf                                           ; $5cda: $37
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    dec hl                                        ; $5cdd: $2b
    rst $38                                       ; $5cde: $ff
    ld d, $ff                                     ; $5cdf: $16 $ff
    dec sp                                        ; $5ce1: $3b
    rst $38                                       ; $5ce2: $ff
    dec d                                         ; $5ce3: $15
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    ld a, [de]                                    ; $5ce6: $1a
    rst $28                                       ; $5ce7: $ef
    dec [hl]                                      ; $5ce8: $35
    rst $08                                       ; $5ce9: $cf
    ld a, $c7                                     ; $5cea: $3e $c7
    dec de                                        ; $5cec: $1b
    rst $38                                       ; $5ced: $ff
    rst $20                                       ; $5cee: $e7
    ld a, [de]                                    ; $5cef: $1a
    rst $20                                       ; $5cf0: $e7
    dec a                                         ; $5cf1: $3d
    jp $c33f                                      ; $5cf2: $c3 $3f $c3


    add hl, de                                    ; $5cf5: $19
    db $db                                        ; $5cf6: $db
    rst $20                                       ; $5cf7: $e7
    rst $10                                       ; $5cf8: $d7
    db $e4                                        ; $5cf9: $e4
    add b                                         ; $5cfa: $80
    inc l                                         ; $5cfb: $2c
    db $d3                                        ; $5cfc: $d3
    and b                                         ; $5cfd: $a0
    rst $20                                       ; $5cfe: $e7
    sbc b                                         ; $5cff: $98
    rst $20                                       ; $5d00: $e7
    adc d                                         ; $5d01: $8a
    ld b, d                                       ; $5d02: $42
    pop hl                                        ; $5d03: $e1
    ret c                                         ; $5d04: $d8

    and b                                         ; $5d05: $a0
    ldh [$bc], a                                  ; $5d06: $e0 $bc
    sbc $c0                                       ; $5d08: $de $c0
    or b                                          ; $5d0a: $b0
    pop hl                                        ; $5d0b: $e1
    ld b, b                                       ; $5d0c: $40
    pop hl                                        ; $5d0d: $e1
    set 7, [hl]                                   ; $5d0e: $cb $fe
    ld a, b                                       ; $5d10: $78
    and $b0                                       ; $5d11: $e6 $b0
    rst $38                                       ; $5d13: $ff
    ld d, h                                       ; $5d14: $54
    ei                                            ; $5d15: $fb
    and h                                         ; $5d16: $a4
    ei                                            ; $5d17: $fb
    ld a, b                                       ; $5d18: $78
    rst $38                                       ; $5d19: $ff
    rst $30                                       ; $5d1a: $f7
    xor b                                         ; $5d1b: $a8
    rst $30                                       ; $5d1c: $f7
    ld h, h                                       ; $5d1d: $64
    ei                                            ; $5d1e: $fb
    or h                                          ; $5d1f: $b4
    ei                                            ; $5d20: $fb
    ret nc                                        ; $5d21: $d0

    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    pop bc                                        ; $5d24: $c1
    rst $38                                       ; $5d25: $ff
    or a                                          ; $5d26: $b7
    rst $38                                       ; $5d27: $ff
    ld e, l                                       ; $5d28: $5d
    rst $38                                       ; $5d29: $ff
    ld [$3e54], a                                 ; $5d2a: $ea $54 $3e
    ldh [$3a], a                                  ; $5d2d: $e0 $3a
    add c                                         ; $5d2f: $81
    rst $38                                       ; $5d30: $ff
    sub h                                         ; $5d31: $94
    add b                                         ; $5d32: $80
    ld d, a                                       ; $5d33: $57
    ld a, $e0                                     ; $5d34: $3e $e0
    dec [hl]                                      ; $5d36: $35
    ld a, [hl-]                                   ; $5d37: $3a
    ldh [$f6], a                                  ; $5d38: $e0 $f6
    xor [hl]                                      ; $5d3a: $ae
    ret nz                                        ; $5d3b: $c0

    rst $38                                       ; $5d3c: $ff
    rst $10                                       ; $5d3d: $d7
    ld hl, $ff83                                  ; $5d3e: $21 $83 $ff
    db $dd                                        ; $5d41: $dd
    rst $38                                       ; $5d42: $ff
    ld [hl], a                                    ; $5d43: $77
    ld e, h                                       ; $5d44: $5c
    sbc h                                         ; $5d45: $9c
    ret nz                                        ; $5d46: $c0

    call c, $afe1                                 ; $5d47: $dc $e1 $af
    rst $38                                       ; $5d4a: $ff
    rst $18                                       ; $5d4b: $df
    adc $e0                                       ; $5d4c: $ce $e0
    rst $18                                       ; $5d4e: $df
    ld hl, sp-$1a                                 ; $5d4f: $f8 $e6
    inc d                                         ; $5d51: $14
    rst $38                                       ; $5d52: $ff
    push hl                                       ; $5d53: $e5
    sbc $e5                                       ; $5d54: $de $e5
    ld e, a                                       ; $5d56: $5f
    jp z, Jump_02a_6fe0                           ; $5d57: $ca $e0 $6f

    add $e0                                       ; $5d5a: $c6 $e0
    ld hl, sp-$1b                                 ; $5d5c: $f8 $e5
    ldh [$63], a                                  ; $5d5e: $e0 $63
    jp z, $e1f8                                   ; $5d60: $ca $f8 $e1

    ld e, a                                       ; $5d63: $5f
    sub [hl]                                      ; $5d64: $96
    ldh [$5f], a                                  ; $5d65: $e0 $5f
    ret nc                                        ; $5d67: $d0

    and $c7                                       ; $5d68: $e6 $c7
    push hl                                       ; $5d6a: $e5
    ld l, c                                       ; $5d6b: $69
    rst $38                                       ; $5d6c: $ff
    rst $38                                       ; $5d6d: $ff
    call nc, $81fc                                ; $5d6e: $d4 $fc $81
    ldh a, [rDMA]                                 ; $5d71: $f0 $46

Call_02a_5d73:
    ldh [$8b], a                                  ; $5d73: $e0 $8b
    ret nz                                        ; $5d75: $c0

    ld a, a                                       ; $5d76: $7f
    ld d, a                                       ; $5d77: $57
    ret nz                                        ; $5d78: $c0

    dec e                                         ; $5d79: $1d
    add b                                         ; $5d7a: $80
    xor a                                         ; $5d7b: $af
    add b                                         ; $5d7c: $80
    db $fd                                        ; $5d7d: $fd
    xor a                                         ; $5d7e: $af
    ld h, b                                       ; $5d7f: $60
    db $fd                                        ; $5d80: $fd
    jp c, $8048                                   ; $5d81: $da $48 $80

    and b                                         ; $5d84: $a0
    db $fc                                        ; $5d85: $fc
    ld b, c                                       ; $5d86: $41
    ldh a, [$0b]                                  ; $5d87: $f0 $0b
    ret nz                                        ; $5d89: $c0

    ei                                            ; $5d8a: $fb
    ld d, $00                                     ; $5d8b: $16 $00
    ld hl, sp-$1f                                 ; $5d8d: $f8 $e1
    ld a, [bc]                                    ; $5d8f: $0a
    ret nz                                        ; $5d90: $c0

    rla                                           ; $5d91: $17
    nop                                           ; $5d92: $00
    cp l                                          ; $5d93: $bd
    rst $30                                       ; $5d94: $f7
    nop                                           ; $5d95: $00
    ld l, a                                       ; $5d96: $6f
    nop                                           ; $5d97: $00
    push de                                       ; $5d98: $d5
    ld h, b                                       ; $5d99: $60
    nop                                           ; $5d9a: $00
    ld hl, sp-$02                                 ; $5d9b: $f8 $fe
    db $f4                                        ; $5d9d: $f4
    rst $38                                       ; $5d9e: $ff
    cp $d8                                        ; $5d9f: $fe $d8
    db $fc                                        ; $5da1: $fc
    pop af                                        ; $5da2: $f1
    db $fc                                        ; $5da3: $fc
    ld [c], a                                     ; $5da4: $e2
    ld hl, sp-$2f                                 ; $5da5: $f8 $d1
    rst $38                                       ; $5da7: $ff
    ld hl, sp+$63                                 ; $5da8: $f8 $63
    ldh a, [$c6]                                  ; $5daa: $f0 $c6
    ldh a, [$8b]                                  ; $5dac: $f0 $8b
    ldh [rBGP], a                                 ; $5dae: $e0 $47
    rst $38                                       ; $5db0: $ff
    ldh [$8f], a                                  ; $5db1: $e0 $8f
    ret nz                                        ; $5db3: $c0

    dec de                                        ; $5db4: $1b
    ret nz                                        ; $5db5: $c0

    cpl                                           ; $5db6: $2f
    add b                                         ; $5db7: $80
    rra                                           ; $5db8: $1f
    rst $38                                       ; $5db9: $ff
    add b                                         ; $5dba: $80
    scf                                           ; $5dbb: $37
    nop                                           ; $5dbc: $00
    ld e, a                                       ; $5dbd: $5f
    nop                                           ; $5dbe: $00
    inc h                                         ; $5dbf: $24
    inc a                                         ; $5dc0: $3c
    ld b, d                                       ; $5dc1: $42
    cp a                                          ; $5dc2: $bf
    nop                                           ; $5dc3: $00
    xor l                                         ; $5dc4: $ad
    nop                                           ; $5dc5: $00
    rst $30                                       ; $5dc6: $f7
    nop                                           ; $5dc7: $00
    ld a, l                                       ; $5dc8: $7d
    jp nc, $ffe2                                  ; $5dc9: $d2 $e2 $ff

    push af                                       ; $5dcc: $f5
    nop                                           ; $5dcd: $00
    db $ec                                        ; $5dce: $ec
    pop hl                                        ; $5dcf: $e1
    cp a                                          ; $5dd0: $bf
    db $e4                                        ; $5dd1: $e4
    ldh [$2f], a                                  ; $5dd2: $e0 $2f
    add b                                         ; $5dd4: $80
    cp a                                          ; $5dd5: $bf
    add b                                         ; $5dd6: $80
    rst $18                                       ; $5dd7: $df
    ld d, a                                       ; $5dd8: $57
    nop                                           ; $5dd9: $00
    ccf                                           ; $5dda: $3f
    nop                                           ; $5ddb: $00
    push af                                       ; $5ddc: $f5
    ld a, $e0                                     ; $5ddd: $3e $e0
    ld b, l                                       ; $5ddf: $45
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    nop                                           ; $5de2: $00
    rst $00                                       ; $5de3: $c7
    stop                                          ; $5de4: $10 $00
    ld l, l                                       ; $5de6: $6d
    nop                                           ; $5de7: $00
    cp e                                          ; $5de8: $bb
    nop                                           ; $5de9: $00
    rst $38                                       ; $5dea: $ff
    rst $28                                       ; $5deb: $ef
    nop                                           ; $5dec: $00
    rst $20                                       ; $5ded: $e7
    ldh a, [rSCX]                                 ; $5dee: $f0 $43
    ldh a, [$e5]                                  ; $5df0: $f0 $e5
    ldh a, [rIE]                                  ; $5df2: $f0 $ff
    ld b, a                                       ; $5df4: $47
    ldh [$8a], a                                  ; $5df5: $e0 $8a
    ldh [$c7], a                                  ; $5df7: $e0 $c7
    ldh [$a5], a                                  ; $5df9: $e0 $a5
    ldh a, [$eb]                                  ; $5dfb: $f0 $eb
    jp $30f0                                      ; $5dfd: $c3 $f0 $30


    ld h, e                                       ; $5e00: $63
    rst $18                                       ; $5e01: $df
    ld l, $60                                     ; $5e02: $2e $60
    xor l                                         ; $5e04: $ad
    rst $38                                       ; $5e05: $ff
    ld b, d                                       ; $5e06: $42
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    nop                                           ; $5e09: $00
    jp $fffc                                      ; $5e0a: $c3 $fc $ff


    ld a, [$fcff]                                 ; $5e0d: $fa $ff $fc
    sbc $8c                                       ; $5e10: $de $8c
    ldh [$f8], a                                  ; $5e12: $e0 $f8
    cp $ec                                        ; $5e14: $fe $ec
    cp $f6                                        ; $5e16: $fe $f6
    ldh [rIE], a                                  ; $5e18: $e0 $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    add b                                         ; $5e1c: $80
    ccf                                           ; $5e1d: $3f
    add b                                         ; $5e1e: $80
    ld a, a                                       ; $5e1f: $7f
    ret nz                                        ; $5e20: $c0

    sbc a                                         ; $5e21: $9f
    ret nz                                        ; $5e22: $c0

    ld c, a                                       ; $5e23: $4f
    rst $38                                       ; $5e24: $ff
    ldh [$87], a                                  ; $5e25: $e0 $87
    ldh a, [$d5]                                  ; $5e27: $f0 $d5
    db $fc                                        ; $5e29: $fc
    ld l, c                                       ; $5e2a: $69
    rst $38                                       ; $5e2b: $ff
    ccf                                           ; $5e2c: $3f
    rst $38                                       ; $5e2d: $ff
    nop                                           ; $5e2e: $00
    rrca                                          ; $5e2f: $0f
    ret nz                                        ; $5e30: $c0

    ld b, e                                       ; $5e31: $43
    ldh a, [$a0]                                  ; $5e32: $f0 $a0
    db $fc                                        ; $5e34: $fc
    db $f4                                        ; $5e35: $f4
    add $4a                                       ; $5e36: $c6 $4a
    ldh [rIE], a                                  ; $5e38: $e0 $ff
    rst $38                                       ; $5e3a: $ff
    ld b, d                                       ; $5e3b: $42
    ldh [$88], a                                  ; $5e3c: $e0 $88
    db $e4                                        ; $5e3e: $e4
    add sp, -$1b                                  ; $5e3f: $e8 $e5
    db $e3                                        ; $5e41: $e3
    rrca                                          ; $5e42: $0f
    rst $38                                       ; $5e43: $ff
    and $0f                                       ; $5e44: $e6 $0f
    rr a                                          ; $5e46: $cb $1f
    rst $00                                       ; $5e48: $c7
    rra                                           ; $5e49: $1f
    adc a                                         ; $5e4a: $8f
    ccf                                           ; $5e4b: $3f
    rst $30                                       ; $5e4c: $f7
    sbc e                                         ; $5e4d: $9b
    ccf                                           ; $5e4e: $3f
    cpl                                           ; $5e4f: $2f
    db $fc                                        ; $5e50: $fc
    ld b, b                                       ; $5e51: $40
    cp $00                                        ; $5e52: $fe $00
    cp $00                                        ; $5e54: $fe $00
    rst $38                                       ; $5e56: $ff
    db $fc                                        ; $5e57: $fc
    ld bc, $01fc                                  ; $5e58: $01 $fc $01
    ld hl, sp+$03                                 ; $5e5b: $f8 $03

jr_02a_5e5d:
    ld sp, hl                                     ; $5e5d: $f9
    inc bc                                        ; $5e5e: $03
    rst $08                                       ; $5e5f: $cf
    ld a, [c]                                     ; $5e60: $f2
    rlca                                          ; $5e61: $07
    pop af                                        ; $5e62: $f1
    rlca                                          ; $5e63: $07
    ret nc                                        ; $5e64: $d0

    push hl                                       ; $5e65: $e5
    inc h                                         ; $5e66: $24
    pop hl                                        ; $5e67: $e1
    db $d3                                        ; $5e68: $d3
    nop                                           ; $5e69: $00
    ld e, a                                       ; $5e6a: $5f
    ld b, d                                       ; $5e6b: $42
    ld a, [hl]                                    ; $5e6c: $7e
    cp $00                                        ; $5e6d: $fe $00
    rst $38                                       ; $5e6f: $ff
    ld [c], a                                     ; $5e70: $e2
    ldh [$fe], a                                  ; $5e71: $e0 $fe
    sbc $e0                                       ; $5e73: $de $e0
    rst $08                                       ; $5e75: $cf
    db $fc                                        ; $5e76: $fc
    ld bc, $01ff                                  ; $5e77: $01 $ff $01
    ld a, [c]                                     ; $5e7a: $f2
    ldh [$0a], a                                  ; $5e7b: $e0 $0a
    ld [c], a                                     ; $5e7d: $e2
    inc a                                         ; $5e7e: $3c
    nop                                           ; $5e7f: $00
    rst $30                                       ; $5e80: $f7
    nop                                           ; $5e81: $00
    rst $00                                       ; $5e82: $c7
    ld b, l                                       ; $5e83: $45
    add h                                         ; $5e84: $84
    ret nz                                        ; $5e85: $c0

    push af                                       ; $5e86: $f5
    rst $38                                       ; $5e87: $ff
    rst $20                                       ; $5e88: $e7
    rrca                                          ; $5e89: $0f
    rst $28                                       ; $5e8a: $ef
    ld [c], a                                     ; $5e8b: $e2
    rrca                                          ; $5e8c: $0f
    rst $30                                       ; $5e8d: $f7
    rrca                                          ; $5e8e: $0f
    add $e1                                       ; $5e8f: $c6 $e1
    di                                            ; $5e91: $f3
    rlca                                          ; $5e92: $07
    push hl                                       ; $5e93: $e5
    cp a                                          ; $5e94: $bf
    rrca                                          ; $5e95: $0f
    db $e3                                        ; $5e96: $e3
    rrca                                          ; $5e97: $0f
    jr jr_02a_5e5d                                ; $5e98: $18 $c3

    ld b, d                                       ; $5e9a: $42
    ld d, [hl]                                    ; $5e9b: $56
    ldh [$f7], a                                  ; $5e9c: $e0 $f7
    ld [$c676], a                                 ; $5e9e: $ea $76 $c6
    ccf                                           ; $5ea1: $3f
    ld a, [hl]                                    ; $5ea2: $7e
    ret nz                                        ; $5ea3: $c0

    ccf                                           ; $5ea4: $3f
    add b                                         ; $5ea5: $80
    and b                                         ; $5ea6: $a0
    sbc a                                         ; $5ea7: $9f
    ld a, a                                       ; $5ea8: $7f
    scf                                           ; $5ea9: $37
    db $fd                                        ; $5eaa: $fd
    ld a, a                                       ; $5eab: $7f
    or $e0                                        ; $5eac: $f6 $e0
    rst $38                                       ; $5eae: $ff
    ld [$5500], sp                                ; $5eaf: $08 $00 $55
    nop                                           ; $5eb2: $00
    cp [hl]                                       ; $5eb3: $be
    ld [hl], h                                    ; $5eb4: $74
    ldh a, [$c0]                                  ; $5eb5: $f0 $c0
    ld l, b                                       ; $5eb7: $68
    push hl                                       ; $5eb8: $e5
    ld e, a                                       ; $5eb9: $5f
    db $fc                                        ; $5eba: $fc
    ret nz                                        ; $5ebb: $c0

    ld a, a                                       ; $5ebc: $7f
    nop                                           ; $5ebd: $00
    xor a                                         ; $5ebe: $af
    db $fc                                        ; $5ebf: $fc
    ldh [$9d], a                                  ; $5ec0: $e0 $9d
    ccf                                           ; $5ec2: $3f
    db $f4                                        ; $5ec3: $f4
    ld [c], a                                     ; $5ec4: $e2
    ld de, $2a80                                  ; $5ec5: $11 $80 $2a
    call nc, $f0c0                                ; $5ec8: $d4 $c0 $f0
    push hl                                       ; $5ecb: $e5
    cp a                                          ; $5ecc: $bf
    ldh a, [$fa]                                  ; $5ecd: $f0 $fa
    db $e4                                        ; $5ecf: $e4
    ld l, d                                       ; $5ed0: $6a
    jp hl                                         ; $5ed1: $e9


    db $f4                                        ; $5ed2: $f4
    db $eb                                        ; $5ed3: $eb
    nop                                           ; $5ed4: $00
    add e                                         ; $5ed5: $83
    dec de                                        ; $5ed6: $1b
    db $e4                                        ; $5ed7: $e4
    dec d                                         ; $5ed8: $15
    xor $ff                                       ; $5ed9: $ee $ff
    dec l                                         ; $5edb: $2d
    ret nc                                        ; $5edc: $d0

    dec b                                         ; $5edd: $05
    ld a, [$c034]                                 ; $5ede: $fa $34 $c0
    ld d, a                                       ; $5ee1: $57
    xor d                                         ; $5ee2: $aa
    rst $18                                       ; $5ee3: $df
    and h                                         ; $5ee4: $a4
    ld a, [bc]                                    ; $5ee5: $0a
    ld c, e                                       ; $5ee6: $4b
    add b                                         ; $5ee7: $80
    ld b, d                                       ; $5ee8: $42
    ldh [rNR41], a                                ; $5ee9: $e0 $20
    dec e                                         ; $5eeb: $1d
    ld [bc], a                                    ; $5eec: $02
    rst $38                                       ; $5eed: $ff
    cp h                                          ; $5eee: $bc
    inc bc                                        ; $5eef: $03
    sbc b                                         ; $5ef0: $98
    ld h, a                                       ; $5ef1: $67
    rla                                           ; $5ef2: $17
    xor d                                         ; $5ef3: $aa
    db $e4                                        ; $5ef4: $e4
    ld a, [bc]                                    ; $5ef5: $0a
    rst $38                                       ; $5ef6: $ff
    adc e                                         ; $5ef7: $8b
    jr nz, @+$24                                  ; $5ef8: $20 $22

    nop                                           ; $5efa: $00
    db $dd                                        ; $5efb: $dd
    nop                                           ; $5efc: $00
    cp l                                          ; $5efd: $bd
    ld b, d                                       ; $5efe: $42
    cp $08                                        ; $5eff: $fe $08
    and c                                         ; $5f01: $a1
    ld d, $a9                                     ; $5f02: $16 $a9
    add sp, $03                                   ; $5f04: $e8 $03
    add l                                         ; $5f06: $85
    ld [hl+], a                                   ; $5f07: $22
    ld a, [hl+]                                   ; $5f08: $2a
    rst $38                                       ; $5f09: $ff
    rlca                                          ; $5f0a: $07
    db $db                                        ; $5f0b: $db
    nop                                           ; $5f0c: $00
    cp h                                          ; $5f0d: $bc
    ld b, e                                       ; $5f0e: $43
    ccf                                           ; $5f0f: $3f
    ret nz                                        ; $5f10: $c0

    add hl, de                                    ; $5f11: $19
    ei                                            ; $5f12: $fb

jr_02a_5f13:
    and $18                                       ; $5f13: $e6 $18
    ld h, b                                       ; $5f15: $60
    and b                                         ; $5f16: $a0
    inc a                                         ; $5f17: $3c
    jp $e7b8                                      ; $5f18: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $5f1b: $08 $ff $f7
    call z, $90fb                                 ; $5f1e: $cc $fb $90
    ld l, a                                       ; $5f21: $6f
    ld a, [hl+]                                   ; $5f22: $2a
    rst $38                                       ; $5f23: $ff
    rra                                           ; $5f24: $1f
    rst $38                                       ; $5f25: $ff
    ldh [$d0], a                                  ; $5f26: $e0 $d0
    ld bc, $a15a                                  ; $5f28: $01 $5a $a1
    ld c, b                                       ; $5f2b: $48
    rlca                                          ; $5f2c: $07
    ld hl, sp-$09                                 ; $5f2d: $f8 $f7
    rlca                                          ; $5f2f: $07
    inc e                                         ; $5f30: $1c
    inc bc                                        ; $5f31: $03
    ret nz                                        ; $5f32: $c0

    pop hl                                        ; $5f33: $e1
    or b                                          ; $5f34: $b0
    rrca                                          ; $5f35: $0f
    call z, $ff3f                                 ; $5f36: $cc $3f $ff
    ld a, c                                       ; $5f39: $79
    add [hl]                                      ; $5f3a: $86
    ld [de], a                                    ; $5f3b: $12
    rst $28                                       ; $5f3c: $ef
    dec de                                        ; $5f3d: $1b
    ldh [$3c], a                                  ; $5f3e: $e0 $3c
    jp $d0fe                                      ; $5f40: $c3 $fe $d0


    pop hl                                        ; $5f43: $e1
    dec a                                         ; $5f44: $3d
    ret nz                                        ; $5f45: $c0

    ld c, a                                       ; $5f46: $4f
    and b                                         ; $5f47: $a0
    jr nc, jr_02a_5f13                            ; $5f48: $30 $c9

    ld d, d                                       ; $5f4a: $52
    rst $38                                       ; $5f4b: $ff
    and c                                         ; $5f4c: $a1
    ld l, l                                       ; $5f4d: $6d
    jp nz, $c934                                  ; $5f4e: $c2 $34 $c9

    ld c, b                                       ; $5f51: $48
    or e                                          ; $5f52: $b3
    ld a, [de]                                    ; $5f53: $1a
    rst $38                                       ; $5f54: $ff
    push hl                                       ; $5f55: $e5
    dec d                                         ; $5f56: $15
    cp a                                          ; $5f57: $bf
    adc $3f                                       ; $5f58: $ce $3f
    ld d, [hl]                                    ; $5f5a: $56
    cp a                                          ; $5f5b: $bf
    ld l, l                                       ; $5f5c: $6d
    rst $38                                       ; $5f5d: $ff
    cp a                                          ; $5f5e: $bf
    sbc [hl]                                      ; $5f5f: $9e
    ld a, a                                       ; $5f60: $7f
    ld l, d                                       ; $5f61: $6a
    cp a                                          ; $5f62: $bf
    dec e                                         ; $5f63: $1d
    rst $38                                       ; $5f64: $ff
    ld c, [hl]                                    ; $5f65: $4e
    rst $38                                       ; $5f66: $ff
    cp a                                          ; $5f67: $bf
    dec [hl]                                      ; $5f68: $35
    ret nz                                        ; $5f69: $c0

    ld c, [hl]                                    ; $5f6a: $4e
    and c                                         ; $5f6b: $a1
    ld [hl-], a                                   ; $5f6c: $32
    ret                                           ; $5f6d: $c9


    ld d, a                                       ; $5f6e: $57
    rst $38                                       ; $5f6f: $ff
    and d                                         ; $5f70: $a2
    ld a, a                                       ; $5f71: $7f
    push bc                                       ; $5f72: $c5
    ld [hl-], a                                   ; $5f73: $32
    rst $08                                       ; $5f74: $cf
    ld d, l                                       ; $5f75: $55
    cp a                                          ; $5f76: $bf
    dec hl                                        ; $5f77: $2b
    sbc $90                                       ; $5f78: $de $90
    add d                                         ; $5f7a: $82
    cp h                                          ; $5f7b: $bc
    ld b, e                                       ; $5f7c: $43
    ld e, b                                       ; $5f7d: $58
    and a                                         ; $5f7e: $a7
    nop                                           ; $5f7f: $00
    and b                                         ; $5f80: $a0
    db $e3                                        ; $5f81: $e3
    call nz, $f3ff                                ; $5f82: $c4 $ff $f3
    or h                                          ; $5f85: $b4
    db $eb                                        ; $5f86: $eb
    sbc d                                         ; $5f87: $9a
    ld a, a                                       ; $5f88: $7f
    rst $28                                       ; $5f89: $ef
    ccf                                           ; $5f8a: $3f
    ld a, [hl-]                                   ; $5f8b: $3a
    rst $38                                       ; $5f8c: $ff
    rst $18                                       ; $5f8d: $df
    ld c, l                                       ; $5f8e: $4d
    rst $38                                       ; $5f8f: $ff
    or h                                          ; $5f90: $b4
    rst $38                                       ; $5f91: $ff
    ld a, d                                       ; $5f92: $7a
    rst $38                                       ; $5f93: $ff
    xor b                                         ; $5f94: $a8
    ei                                            ; $5f95: $fb
    rst $38                                       ; $5f96: $ff
    ld [hl], h                                    ; $5f97: $74
    cp [hl]                                       ; $5f98: $be
    add b                                         ; $5f99: $80
    inc hl                                        ; $5f9a: $23
    rst $18                                       ; $5f9b: $df
    dec b                                         ; $5f9c: $05
    rst $38                                       ; $5f9d: $ff
    ld a, [de]                                    ; $5f9e: $1a
    cp $70                                        ; $5f9f: $fe $70
    add [hl]                                      ; $5fa1: $86
    call nc, $bbff                                ; $5fa2: $d4 $ff $bb
    cp $74                                        ; $5fa5: $fe $74
    rst $38                                       ; $5fa7: $ff
    xor [hl]                                      ; $5fa8: $ae
    ld a, [$209a]                                 ; $5fa9: $fa $9a $20
    xor [hl]                                      ; $5fac: $ae
    ld a, [hl-]                                   ; $5fad: $3a
    add b                                         ; $5fae: $80
    inc bc                                        ; $5faf: $03
    rst $38                                       ; $5fb0: $ff
    ld d, d                                       ; $5fb1: $52
    db $fc                                        ; $5fb2: $fc
    xor d                                         ; $5fb3: $aa
    xor a                                         ; $5fb4: $af
    db $fd                                        ; $5fb5: $fd
    ld [hl], a                                    ; $5fb6: $77
    ei                                            ; $5fb7: $fb
    and d                                         ; $5fb8: $a2
    or b                                          ; $5fb9: $b0
    ld h, b                                       ; $5fba: $60
    dec c                                         ; $5fbb: $0d
    xor h                                         ; $5fbc: $ac
    ld h, b                                       ; $5fbd: $60
    ld a, [bc]                                    ; $5fbe: $0a
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    ld h, a                                       ; $5fc1: $67
    adc b                                         ; $5fc2: $88
    call Call_000_32bb                            ; $5fc3: $cd $bb $32
    rst $28                                       ; $5fc6: $ef
    db $eb                                        ; $5fc7: $eb
    ld a, [$e0de]                                 ; $5fc8: $fa $de $e0
    cp $1c                                        ; $5fcb: $fe $1c
    add b                                         ; $5fcd: $80
    cp d                                          ; $5fce: $ba
    rst $38                                       ; $5fcf: $ff
    daa                                           ; $5fd0: $27
    ret z                                         ; $5fd1: $c8

    ld l, l                                       ; $5fd2: $6d
    rst $38                                       ; $5fd3: $ff
    sbc e                                         ; $5fd4: $9b
    ld [hl+], a                                   ; $5fd5: $22
    rst $38                                       ; $5fd6: $ff

jr_02a_5fd7:
    ld a, e                                       ; $5fd7: $7b
    rst $38                                       ; $5fd8: $ff
    or [hl]                                       ; $5fd9: $b6
    rst $38                                       ; $5fda: $ff
    ld e, [hl]                                    ; $5fdb: $5e
    ei                                            ; $5fdc: $fb
    rst $38                                       ; $5fdd: $ff
    cp e                                          ; $5fde: $bb
    add h                                         ; $5fdf: $84
    ld h, b                                       ; $5fe0: $60
    ld c, $bf                                     ; $5fe1: $0e $bf
    db $dd                                        ; $5fe3: $dd
    ccf                                           ; $5fe4: $3f
    ld l, [hl]                                    ; $5fe5: $6e
    cp e                                          ; $5fe6: $bb
    cp a                                          ; $5fe7: $bf
    ld d, a                                       ; $5fe8: $57
    ld [hl], b                                    ; $5fe9: $70

jr_02a_5fea:
    ldh [$6d], a                                  ; $5fea: $e0 $6d
    cp a                                          ; $5fec: $bf
    ld e, $70                                     ; $5fed: $1e $70
    ldh [rHDMA2], a                               ; $5fef: $e0 $52
    rst $38                                       ; $5ff1: $ff
    db $fd                                        ; $5ff2: $fd
    xor $f9                                       ; $5ff3: $ee $f9
    ld c, c                                       ; $5ff5: $49
    or $a7                                        ; $5ff6: $f6 $a7
    ld hl, sp+$47                                 ; $5ff8: $f8 $47
    rst $38                                       ; $5ffa: $ff
    ldh a, [$b4]                                  ; $5ffb: $f0 $b4
    ret                                           ; $5ffd: $c9


    ld c, d                                       ; $5ffe: $4a
    or c                                          ; $5fff: $b1
    dec de                                        ; $6000: $1b
    db $e4                                        ; $6001: $e4
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    rra                                           ; $6004: $1f
    ld c, d                                       ; $6005: $4a
    cp a                                          ; $6006: $bf
    ld l, c                                       ; $6007: $69
    sub a                                         ; $6008: $97
    ld [de], a                                    ; $6009: $12
    rst $28                                       ; $600a: $ef
    add hl, de                                    ; $600b: $19
    rst $30                                       ; $600c: $f7
    ld [c], a                                     ; $600d: $e2
    jr c, jr_02a_5fd7                             ; $600e: $38 $c7

    nop                                           ; $6010: $00
    pop hl                                        ; $6011: $e1
    dec hl                                        ; $6012: $2b
    ret nc                                        ; $6013: $d0

    xor d                                         ; $6014: $aa
    ld b, c                                       ; $6015: $41
    cp a                                          ; $6016: $bf
    cp $01                                        ; $6017: $fe $01
    xor b                                         ; $6019: $a8
    rlca                                          ; $601a: $07
    ld a, b                                       ; $601b: $78
    add a                                         ; $601c: $87
    db $10                                        ; $601d: $10
    db $e3                                        ; $601e: $e3

jr_02a_601f:
    and c                                         ; $601f: $a1
    rst $38                                       ; $6020: $ff
    ld e, $8c                                     ; $6021: $1e $8c
    ld a, d                                       ; $6023: $7a
    ld d, a                                       ; $6024: $57
    xor b                                         ; $6025: $a8
    jr c, jr_02a_5fea                             ; $6026: $38 $c2

    dec c                                         ; $6028: $0d
    rst $30                                       ; $6029: $f7
    ldh a, [$3d]                                  ; $602a: $f0 $3d
    jp nz, Jump_02a_61d8                          ; $602c: $c2 $d8 $61

    cpl                                           ; $602f: $2f
    sub b                                         ; $6030: $90
    ld sp, hl                                     ; $6031: $f9
    nop                                           ; $6032: $00
    rst $38                                       ; $6033: $ff
    adc d                                         ; $6034: $8a
    ld hl, $0728                                  ; $6035: $21 $28 $07
    ret c                                         ; $6038: $d8

    rlca                                          ; $6039: $07
    cp h                                          ; $603a: $bc
    ld b, e                                       ; $603b: $43
    db $fc                                        ; $603c: $fc
    ret z                                         ; $603d: $c8

    ld h, c                                       ; $603e: $61
    add hl, sp                                    ; $603f: $39
    and e                                         ; $6040: $a3
    ld [bc], a                                    ; $6041: $02
    db $fd                                        ; $6042: $fd
    ld bc, $0dfe                                  ; $6043: $01 $fe $0d
    ldh a, [rIE]                                  ; $6046: $f0 $ff
    ld [bc], a                                    ; $6048: $02
    db $fd                                        ; $6049: $fd
    ld a, [hl+]                                   ; $604a: $2a
    ret nc                                        ; $604b: $d0

    dec hl                                        ; $604c: $2b
    sub $f5                                       ; $604d: $d6 $f5
    ld a, [bc]                                    ; $604f: $0a
    rst $38                                       ; $6050: $ff
    ld e, a                                       ; $6051: $5f
    add b                                         ; $6052: $80
    xor c                                         ; $6053: $a9
    ld [bc], a                                    ; $6054: $02
    ld a, a                                       ; $6055: $7f
    add b                                         ; $6056: $80
    db $10                                        ; $6057: $10
    rrca                                          ; $6058: $0f
    rst $38                                       ; $6059: $ff
    ldh [$1f], a                                  ; $605a: $e0 $1f
    add b                                         ; $605c: $80
    ld a, a                                       ; $605d: $7f
    ld d, a                                       ; $605e: $57
    xor d                                         ; $605f: $aa
    push af                                       ; $6060: $f5
    ld a, [bc]                                    ; $6061: $0a
    cp a                                          ; $6062: $bf
    sbc a                                         ; $6063: $9f
    jr nz, jr_02a_601f                            ; $6064: $20 $b9

    ld [bc], a                                    ; $6066: $02
    ld h, a                                       ; $6067: $67
    sbc b                                         ; $6068: $98
    rrca                                          ; $6069: $0f
    and e                                         ; $606a: $a3
    ld c, d                                       ; $606b: $4a
    rst $38                                       ; $606c: $ff
    or l                                          ; $606d: $b5
    db $f4                                        ; $606e: $f4
    dec bc                                        ; $606f: $0b
    sbc l                                         ; $6070: $9d
    ld [hl+], a                                   ; $6071: $22
    cp d                                          ; $6072: $ba
    rlca                                          ; $6073: $07
    ld a, e                                       ; $6074: $7b
    ld e, a                                       ; $6075: $5f
    add b                                         ; $6076: $80
    inc c                                         ; $6077: $0c
    di                                            ; $6078: $f3
    rlca                                          ; $6079: $07
    ld hl, sp-$41                                 ; $607a: $f8 $bf
    and c                                         ; $607c: $a1
    add b                                         ; $607d: $80
    sbc [hl]                                      ; $607e: $9e
    nop                                           ; $607f: $00
    db $ed                                        ; $6080: $ed
    and b                                         ; $6081: $a0
    sbc d                                         ; $6082: $9a
    nop                                           ; $6083: $00
    ld l, b                                       ; $6084: $68
    rst $38                                       ; $6085: $ff
    sub b                                         ; $6086: $90
    pop bc                                        ; $6087: $c1
    rla                                           ; $6088: $17
    add sp, -$2f                                  ; $6089: $e8 $d1
    rst $20                                       ; $608b: $e7
    nop                                           ; $608c: $00
    ld l, $d1                                     ; $608d: $2e $d1
    add b                                         ; $608f: $80
    pop hl                                        ; $6090: $e1
    ret nz                                        ; $6091: $c0

    db $e3                                        ; $6092: $e3
    or b                                          ; $6093: $b0
    rrca                                          ; $6094: $0f
    add $fc                                       ; $6095: $c6 $fc
    sub b                                         ; $6097: $90
    call nz, $e3d0                                ; $6098: $c4 $d0 $e3
    dec a                                         ; $609b: $3d
    ret nz                                        ; $609c: $c0

    ld e, a                                       ; $609d: $5f
    and b                                         ; $609e: $a0
    inc [hl]                                      ; $609f: $34
    ret                                           ; $60a0: $c9


    rst $10                                       ; $60a1: $d7
    ld e, d                                       ; $60a2: $5a
    and c                                         ; $60a3: $a1
    ld a, l                                       ; $60a4: $7d
    sub b                                         ; $60a5: $90
    ret nz                                        ; $60a6: $c0

    ld c, h                                       ; $60a7: $4c
    sub b                                         ; $60a8: $90

Jump_02a_60a9:
    ret nz                                        ; $60a9: $c0

    ld d, l                                       ; $60aa: $55
    cp a                                          ; $60ab: $bf
    ei                                            ; $60ac: $fb
    adc [hl]                                      ; $60ad: $8e
    ld a, a                                       ; $60ae: $7f
    sub b                                         ; $60af: $90
    jp z, Jump_02a_5ac8                           ; $60b0: $ca $c8 $5a

    and c                                         ; $60b3: $a1
    inc a                                         ; $60b4: $3c
    jp Jump_02a_537f                              ; $60b5: $c3 $7f $53


    xor [hl]                                      ; $60b8: $ae
    ld [hl], a                                    ; $60b9: $77
    call $bf42                                    ; $60ba: $cd $42 $bf
    dec d                                         ; $60bd: $15
    ld l, d                                       ; $60be: $6a
    ld h, b                                       ; $60bf: $60
    cp $6b                                        ; $60c0: $fe $6b

Call_02a_60c2:
    add c                                         ; $60c2: $81
    ret nz                                        ; $60c3: $c0

    ccf                                           ; $60c4: $3f
    ld b, b                                       ; $60c5: $40
    cp a                                          ; $60c6: $bf
    ld b, b                                       ; $60c7: $40
    rst $38                                       ; $60c8: $ff
    or b                                          ; $60c9: $b0
    cp a                                          ; $60ca: $bf
    rst $28                                       ; $60cb: $ef
    call z, $a4f3                                 ; $60cc: $cc $f3 $a4
    ei                                            ; $60cf: $fb
    dec d                                         ; $60d0: $15
    cp h                                          ; $60d1: $bc
    ret nz                                        ; $60d2: $c0

    dec b                                         ; $60d3: $05
    xor e                                         ; $60d4: $ab
    rst $38                                       ; $60d5: $ff
    ld [bc], a                                    ; $60d6: $02
    add hl, hl                                    ; $60d7: $29
    and [hl]                                      ; $60d8: $a6
    ld d, e                                       ; $60d9: $53
    or b                                          ; $60da: $b0
    ret nz                                        ; $60db: $c0

    ld [hl], l                                    ; $60dc: $75
    or b                                          ; $60dd: $b0
    ret z                                         ; $60de: $c8

    ld [hl], a                                    ; $60df: $77
    xor e                                         ; $60e0: $ab
    adc b                                         ; $60e1: $88
    call z, $cab0                                 ; $60e2: $cc $b0 $ca
    scf                                           ; $60e5: $37
    or b                                          ; $60e6: $b0
    call z, $b04e                                 ; $60e7: $cc $4e $b0
    adc $ae                                       ; $60ea: $ce $ae
    db $db                                        ; $60ec: $db
    ld sp, hl                                     ; $60ed: $f9
    ld a, c                                       ; $60ee: $79
    or b                                          ; $60ef: $b0
    ret z                                         ; $60f0: $c8

    cp a                                          ; $60f1: $bf
    ld e, a                                       ; $60f2: $5f
    or b                                          ; $60f3: $b0
    jp $e21d                                      ; $60f4: $c3 $1d $e2


    ei                                            ; $60f7: $fb
    ld [$20f7], sp                                ; $60f8: $08 $f7 $20
    pop hl                                        ; $60fb: $e1
    dec l                                         ; $60fc: $2d
    ret nc                                        ; $60fd: $d0

    sbc d                                         ; $60fe: $9a
    ld h, c                                       ; $60ff: $61
    ld a, [hl]                                    ; $6100: $7e
    cp e                                          ; $6101: $bb
    add c                                         ; $6102: $81
    add sp, $30                                   ; $6103: $e8 $30
    and $61                                       ; $6105: $e6 $61
    ld e, $95                                     ; $6107: $1e $95
    or b                                          ; $6109: $b0
    ret nz                                        ; $610a: $c0

    add hl, sp                                    ; $610b: $39
    rst $30                                       ; $610c: $f7
    jp nz, $f00f                                  ; $610d: $c2 $0f $f0

    rst $38                                       ; $6110: $ff
    ld h, e                                       ; $6111: $63
    ld d, a                                       ; $6112: $57
    xor b                                         ; $6113: $a8
    ei                                            ; $6114: $fb
    nop                                           ; $6115: $00
    cp a                                          ; $6116: $bf
    sbc [hl]                                      ; $6117: $9e
    ld hl, $07a8                                  ; $6118: $21 $a8 $07
    ld [hl], b                                    ; $611b: $70
    adc a                                         ; $611c: $8f
    rst $28                                       ; $611d: $ef
    ld h, e                                       ; $611e: $63
    ld bc, $fffb                                  ; $611f: $01 $fb $ff
    ld h, b                                       ; $6122: $60
    db $f4                                        ; $6123: $f4
    and b                                         ; $6124: $a0
    nop                                           ; $6125: $00
    rst $38                                       ; $6126: $ff
    ld [hl+], a                                   ; $6127: $22
    rst $38                                       ; $6128: $ff
    ld [$aeae], sp                                ; $6129: $08 $ae $ae
    ld b, b                                       ; $612c: $40
    ld b, b                                       ; $612d: $40
    rst $38                                       ; $612e: $ff
    sub b                                         ; $612f: $90
    ld d, h                                       ; $6130: $54
    ldh [$28], a                                  ; $6131: $e0 $28
    call c, $28c0                                 ; $6133: $dc $c0 $28
    ld [hl], d                                    ; $6136: $72
    sbc $c0                                       ; $6137: $de $c0
    ld b, b                                       ; $6139: $40
    sbc a                                         ; $613a: $9f
    ld h, c                                       ; $613b: $61
    rst $38                                       ; $613c: $ff
    db $ec                                        ; $613d: $ec
    ld d, l                                       ; $613e: $55
    nop                                           ; $613f: $00
    cp d                                          ; $6140: $ba
    cp [hl]                                       ; $6141: $be
    add b                                         ; $6142: $80
    ld e, a                                       ; $6143: $5f
    xor e                                         ; $6144: $ab
    nop                                           ; $6145: $00
    ld e, l                                       ; $6146: $5d
    nop                                           ; $6147: $00
    ld [$80b6], a                                 ; $6148: $ea $b6 $80
    xor [hl]                                      ; $614b: $ae
    or d                                          ; $614c: $b2
    add b                                         ; $614d: $80
    rst $18                                       ; $614e: $df
    adc d                                         ; $614f: $8a
    nop                                           ; $6150: $00
    ld d, h                                       ; $6151: $54
    nop                                           ; $6152: $00
    xor d                                         ; $6153: $aa
    ldh a, [$e0]                                  ; $6154: $f0 $e0
    xor d                                         ; $6156: $aa
    nop                                           ; $6157: $00
    rst $38                                       ; $6158: $ff
    dec d                                         ; $6159: $15
    nop                                           ; $615a: $00
    xor b                                         ; $615b: $a8
    nop                                           ; $615c: $00
    ld d, c                                       ; $615d: $51
    nop                                           ; $615e: $00
    ld [$ff00], sp                                ; $615f: $08 $00 $ff
    ld [hl+], a                                   ; $6162: $22
    nop                                           ; $6163: $00
    sub h                                         ; $6164: $94
    nop                                           ; $6165: $00
    add hl, hl                                    ; $6166: $29
    nop                                           ; $6167: $00
    ld b, h                                       ; $6168: $44
    nop                                           ; $6169: $00
    push de                                       ; $616a: $d5
    db $10                                        ; $616b: $10
    db $e4                                        ; $616c: $e4
    ldh [rP1], a                                  ; $616d: $e0 $00
    sub e                                         ; $616f: $93
    nop                                           ; $6170: $00
    ld bc, $00b4                                  ; $6171: $01 $b4 $00
    jr nz, jr_02a_6176                            ; $6174: $20 $00

jr_02a_6176:
    ld sp, hl                                     ; $6176: $f9
    add b                                         ; $6177: $80
    xor [hl]                                      ; $6178: $ae
    nop                                           ; $6179: $00
    cp l                                          ; $617a: $bd
    ldh [rNR23], a                                ; $617b: $e0 $18
    inc a                                         ; $617d: $3c
    ld a, [hl]                                    ; $617e: $7e
    ld a, [hl]                                    ; $617f: $7e
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    ld [hl], b                                    ; $6182: $70
    rst $38                                       ; $6183: $ff
    ld a, b                                       ; $6184: $78
    db $fc                                        ; $6185: $fc
    inc a                                         ; $6186: $3c
    cp $80                                        ; $6187: $fe $80
    ld a, h                                       ; $6189: $7c
    rst $38                                       ; $618a: $ff
    ld h, h                                       ; $618b: $64
    nop                                           ; $618c: $00
    nop                                           ; $618d: $00
    ld [$3e1c], sp                                ; $618e: $08 $1c $3e
    ld [hl], $7f                                  ; $6191: $36 $7f
    ld a, a                                       ; $6193: $7f
    and [hl]                                      ; $6194: $a6
    ld a, a                                       ; $6195: $7f
    add h                                         ; $6196: $84

jr_02a_6197:
    ld l, a                                       ; $6197: $6f
    ld b, b                                       ; $6198: $40
    ld c, $08                                     ; $6199: $0e $08
    sbc [hl]                                      ; $619b: $9e
    ldh [$fd], a                                  ; $619c: $e0 $fd
    inc bc                                        ; $619e: $03
    call nc, $0fc0                                ; $619f: $d4 $c0 $0f
    rst $38                                       ; $61a2: $ff
    ld a, [de]                                    ; $61a3: $1a
    rst $38                                       ; $61a4: $ff
    ld [hl], $fd                                  ; $61a5: $36 $fd
    ld a, a                                       ; $61a7: $7f
    ld hl, $f8fe                                  ; $61a8: $21 $fe $f8
    rst $30                                       ; $61ab: $f7
    xor l                                         ; $61ac: $ad
    di                                            ; $61ad: $f3
    rst $38                                       ; $61ae: $ff
    or d                                          ; $61af: $b2
    jr nz, jr_02a_6231                            ; $61b0: $20 $7f

    ld d, d                                       ; $61b2: $52
    db $fd                                        ; $61b3: $fd
    ld d, l                                       ; $61b4: $55
    xor d                                         ; $61b5: $aa
    jr nz, jr_02a_6197                            ; $61b6: $20 $df

    ld a, [bc]                                    ; $61b8: $0a
    xor d                                         ; $61b9: $aa
    jr nz, @+$01                                  ; $61ba: $20 $ff

    xor a                                         ; $61bc: $af
    rst $38                                       ; $61bd: $ff
    add e                                         ; $61be: $83
    rst $38                                       ; $61bf: $ff
    ld c, l                                       ; $61c0: $4d
    rst $30                                       ; $61c1: $f7
    sub e                                         ; $61c2: $93
    rst $28                                       ; $61c3: $ef

Jump_02a_61c4:
    rst $38                                       ; $61c4: $ff
    ld c, a                                       ; $61c5: $4f

jr_02a_61c6:
    rst $30                                       ; $61c6: $f7
    and e                                         ; $61c7: $a3
    rst $38                                       ; $61c8: $ff
    ret                                           ; $61c9: $c9


    rst $30                                       ; $61ca: $f7
    and a                                         ; $61cb: $a7
    ei                                            ; $61cc: $fb
    rst $30                                       ; $61cd: $f7

jr_02a_61ce:
    ret                                           ; $61ce: $c9


    rst $30                                       ; $61cf: $f7
    or $9c                                        ; $61d0: $f6 $9c
    ld h, b                                       ; $61d2: $60
    ld [$b0ff], a                                 ; $61d3: $ea $ff $b0
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff

Jump_02a_61d8:
    db $eb                                        ; $61d8: $eb
    db $fc                                        ; $61d9: $fc
    ld b, c                                       ; $61da: $41
    cp $a8                                        ; $61db: $fe $a8
    rst $30                                       ; $61dd: $f7
    ld b, $fb                                     ; $61de: $06 $fb
    rst $38                                       ; $61e0: $ff
    db $dd                                        ; $61e1: $dd
    sbc e                                         ; $61e2: $9b
    sbc l                                         ; $61e3: $9d
    ld c, a                                       ; $61e4: $4f
    daa                                           ; $61e5: $27
    rla                                           ; $61e6: $17
    and e                                         ; $61e7: $a3
    di                                            ; $61e8: $f3
    rst $38                                       ; $61e9: $ff
    db $db                                        ; $61ea: $db
    pop hl                                        ; $61eb: $e1
    xor $f1                                       ; $61ec: $ee $f1
    or h                                          ; $61ee: $b4
    ei                                            ; $61ef: $fb
    reti                                          ; $61f0: $d9


    rst $38                                       ; $61f1: $ff
    ld e, a                                       ; $61f2: $5f
    jp c, $9d9f                                   ; $61f3: $da $9f $9d

    ld c, a                                       ; $61f6: $4f
    ld h, $f0                                     ; $61f7: $26 $f0
    ld [c], a                                     ; $61f9: $e2
    ld l, [hl]                                    ; $61fa: $6e
    ldh a, [$e0]                                  ; $61fb: $f0 $e0
    rst $38                                       ; $61fd: $ff
    ld sp, hl                                     ; $61fe: $f9
    rst $38                                       ; $61ff: $ff
    rst $20                                       ; $6200: $e7
    jr jr_02a_61c6                                ; $6201: $18 $c3

    inc h                                         ; $6203: $24
    rst $20                                       ; $6204: $e7
    inc h                                         ; $6205: $24
    cp a                                          ; $6206: $bf
    rst $38                                       ; $6207: $ff
    inc a                                         ; $6208: $3c
    db $db                                        ; $6209: $db
    inc a                                         ; $620a: $3c
    rst $20                                       ; $620b: $e7
    jr jr_02a_61ce                                ; $620c: $18 $c0

    ld b, c                                       ; $620e: $41
    ld h, a                                       ; $620f: $67
    rst $38                                       ; $6210: $ff
    sbc d                                         ; $6211: $9a
    call nz, $0b8a                                ; $6212: $c4 $8a $0b
    ret nz                                        ; $6215: $c0

    ld b, d                                       ; $6216: $42
    and b                                         ; $6217: $a0
    db $10                                        ; $6218: $10
    rst $38                                       ; $6219: $ff
    ret nz                                        ; $621a: $c0

    jp hl                                         ; $621b: $e9


    add b                                         ; $621c: $80
    ld h, b                                       ; $621d: $60
    sub c                                         ; $621e: $91
    adc e                                         ; $621f: $8b
    ld h, b                                       ; $6220: $60
    ld d, $ff                                     ; $6221: $16 $ff
    xor c                                         ; $6223: $a9

jr_02a_6224:
    pop hl                                        ; $6224: $e1
    dec bc                                        ; $6225: $0b
    adc d                                         ; $6226: $8a
    daa                                           ; $6227: $27
    daa                                           ; $6228: $27
    rrca                                          ; $6229: $0f
    xor l                                         ; $622a: $ad
    rst $08                                       ; $622b: $cf
    rra                                           ; $622c: $1f
    sub $3f                                       ; $622d: $d6 $3f
    ld a, l                                       ; $622f: $7d
    and [hl]                                      ; $6230: $a6

jr_02a_6231:
    add b                                         ; $6231: $80
    ld d, b                                       ; $6232: $50
    daa                                           ; $6233: $27
    inc h                                         ; $6234: $24
    db $db                                        ; $6235: $db
    rst $38                                       ; $6236: $ff
    inc c                                         ; $6237: $0c
    rst $30                                       ; $6238: $f7
    ld [hl], $cf                                  ; $6239: $36 $cf
    jr jr_02a_6224                                ; $623b: $18 $e7

    sub $0f                                       ; $623d: $d6 $0f
    rst $38                                       ; $623f: $ff
    ld e, c                                       ; $6240: $59
    and [hl]                                      ; $6241: $a6
    ld b, d                                       ; $6242: $42
    rrca                                          ; $6243: $0f
    ei                                            ; $6244: $fb
    nop                                           ; $6245: $00

jr_02a_6246:
    inc e                                         ; $6246: $1c
    inc bc                                        ; $6247: $03
    rst $28                                       ; $6248: $ef

jr_02a_6249:
    cp a                                          ; $6249: $bf
    nop                                           ; $624a: $00
    sbc c                                         ; $624b: $99
    ld h, [hl]                                    ; $624c: $66
    ld l, b                                       ; $624d: $68
    ld hl, $c23d                                  ; $624e: $21 $3d $c2
    jr jr_02a_6246                                ; $6251: $18 $f3

    rst $20                                       ; $6253: $e7
    add hl, de                                    ; $6254: $19
    ld h, b                                       ; $6255: $60
    inc h                                         ; $6256: $24
    ld b, b                                       ; $6257: $40
    add c                                         ; $6258: $81
    ld d, [hl]                                    ; $6259: $56
    xor c                                         ; $625a: $a9
    ld [hl+], a                                   ; $625b: $22
    rst $38                                       ; $625c: $ff
    ld sp, hl                                     ; $625d: $f9
    ld [hl], l                                    ; $625e: $75
    ret nz                                        ; $625f: $c0

    add h                                         ; $6260: $84
    or b                                          ; $6261: $b0
    and e                                         ; $6262: $a3
    ld de, $1fef                                  ; $6263: $11 $ef $1f
    ldh [$3d], a                                  ; $6266: $e0 $3d
    rst $18                                       ; $6268: $df
    rst $00                                       ; $6269: $c7
    inc sp                                        ; $626a: $33
    rst $08                                       ; $626b: $cf
    dec l                                         ; $626c: $2d
    rst $10                                       ; $626d: $d7
    db $10                                        ; $626e: $10
    add l                                         ; $626f: $85
    jr z, jr_02a_6249                             ; $6270: $28 $d7

    rst $38                                       ; $6272: $ff
    ld b, h                                       ; $6273: $44
    ei                                            ; $6274: $fb
    or h                                          ; $6275: $b4
    rst $38                                       ; $6276: $ff
    ret nc                                        ; $6277: $d0

    rst $38                                       ; $6278: $ff
    rst $30                                       ; $6279: $f7
    jr @+$01                                      ; $627a: $18 $ff

jr_02a_627c:
    rst $28                                       ; $627c: $ef
    jr z, jr_02a_627c                             ; $627d: $28 $fd

    ld l, $eb                                     ; $627f: $2e $eb
    ld a, [hl+]                                   ; $6281: $2a
    rst $38                                       ; $6282: $ff
    ld l, d                                       ; $6283: $6a
    rst $38                                       ; $6284: $ff
    xor e                                         ; $6285: $ab
    or [hl]                                       ; $6286: $b6
    cp $af                                        ; $6287: $fe $af
    cp a                                          ; $6289: $bf
    xor l                                         ; $628a: $ad
    db $ed                                        ; $628b: $ed
    sbc a                                         ; $628c: $9f
    rst $38                                       ; $628d: $ff
    ld e, a                                       ; $628e: $5f
    db $ed                                        ; $628f: $ed
    push hl                                       ; $6290: $e5

jr_02a_6291:
    dec sp                                        ; $6291: $3b
    rst $30                                       ; $6292: $f7
    ld l, $ef                                     ; $6293: $2e $ef
    jr c, @+$01                                   ; $6295: $38 $ff

    cp a                                          ; $6297: $bf
    ld l, [hl]                                    ; $6298: $6e
    rst $30                                       ; $6299: $f7
    ld c, a                                       ; $629a: $4f
    adc $3f                                       ; $629b: $ce $3f
    db $10                                        ; $629d: $10
    rst $38                                       ; $629e: $ff
    rst $38                                       ; $629f: $ff
    jr z, jr_02a_6291                             ; $62a0: $28 $ef

    inc a                                         ; $62a2: $3c
    rst $28                                       ; $62a3: $ef
    ld a, [hl+]                                   ; $62a4: $2a
    db $eb                                        ; $62a5: $eb
    ld a, [hl]                                    ; $62a6: $7e
    db $eb                                        ; $62a7: $eb
    ei                                            ; $62a8: $fb
    xor d                                         ; $62a9: $aa
    or a                                          ; $62aa: $b7
    ldh [$e5], a                                  ; $62ab: $e0 $e5
    dec h                                         ; $62ad: $25
    ei                                            ; $62ae: $fb
    ld [hl], $ef                                  ; $62af: $36 $ef
    jr z, @+$01                                   ; $62b1: $28 $ff

    rst $38                                       ; $62b3: $ff
    ld a, $ef                                     ; $62b4: $3e $ef
    ld [hl], a                                    ; $62b6: $77
    rst $08                                       ; $62b7: $cf
    ld l, $ff                                     ; $62b8: $2e $ff
    jr nz, @+$01                                  ; $62ba: $20 $ff

    rst $08                                       ; $62bc: $cf
    or [hl]                                       ; $62bd: $b6
    dec hl                                        ; $62be: $2b
    db $ed                                        ; $62bf: $ed
    cp d                                          ; $62c0: $ba
    dec sp                                        ; $62c1: $3b
    rst $18                                       ; $62c2: $df
    halt                                          ; $62c3: $76
    xor e                                         ; $62c4: $ab
    rst $18                                       ; $62c5: $df
    ld d, h                                       ; $62c6: $54
    ld c, b                                       ; $62c7: $48
    jr nz, jr_02a_62f4                            ; $62c8: $20 $2a

    adc b                                         ; $62ca: $88
    nop                                           ; $62cb: $00
    ld [bc], a                                    ; $62cc: $02
    ld l, h                                       ; $62cd: $6c
    jr nz, jr_02a_62ea                            ; $62ce: $20 $1a

    ei                                            ; $62d0: $fb
    rst $38                                       ; $62d1: $ff

Call_02a_62d2:
    or [hl]                                       ; $62d2: $b6
    ret nz                                        ; $62d3: $c0

    call nz, $0fb0                                ; $62d4: $c4 $b0 $0f
    sbc $7f                                       ; $62d7: $de $7f
    add hl, hl                                    ; $62d9: $29
    rst $28                                       ; $62da: $ef
    cp $55                                        ; $62db: $fe $55
    rst $38                                       ; $62dd: $ff
    cp [hl]                                       ; $62de: $be
    ld l, [hl]                                    ; $62df: $6e
    ldh [$aa], a                                  ; $62e0: $e0 $aa
    rst $38                                       ; $62e2: $ff
    ret nz                                        ; $62e3: $c0

    sub a                                         ; $62e4: $97
    rst $38                                       ; $62e5: $ff
    sbc b                                         ; $62e6: $98
    ld h, a                                       ; $62e7: $67
    sub b                                         ; $62e8: $90
    ld h, c                                       ; $62e9: $61

jr_02a_62ea:
    ld e, b                                       ; $62ea: $58
    add b                                         ; $62eb: $80
    ld b, $40                                     ; $62ec: $06 $40
    ld l, e                                       ; $62ee: $6b
    dec hl                                        ; $62ef: $2b
    cp $80                                        ; $62f0: $fe $80
    ld l, b                                       ; $62f2: $68
    inc a                                         ; $62f3: $3c

jr_02a_62f4:
    inc bc                                        ; $62f4: $03
    add h                                         ; $62f5: $84
    ld [hl], e                                    ; $62f6: $73
    or h                                          ; $62f7: $b4
    db $eb                                        ; $62f8: $eb
    inc hl                                        ; $62f9: $23
    db $fd                                        ; $62fa: $fd
    call z, $e1a0                                 ; $62fb: $cc $a0 $e1
    ld a, [hl-]                                   ; $62fe: $3a
    rst $18                                       ; $62ff: $df
    rst $30                                       ; $6300: $f7
    ld e, [hl]                                    ; $6301: $5e
    push de                                       ; $6302: $d5
    ld a, [hl]                                    ; $6303: $7e
    rst $28                                       ; $6304: $ef
    db $dd                                        ; $6305: $dd
    ld a, a                                       ; $6306: $7f
    ei                                            ; $6307: $fb
    ld l, $78                                     ; $6308: $2e $78
    inc bc                                        ; $630a: $03
    add hl, de                                    ; $630b: $19
    rst $20                                       ; $630c: $e7
    rla                                           ; $630d: $17
    rst $38                                       ; $630e: $ff
    xor $3f                                       ; $630f: $ee $3f
    ret z                                         ; $6311: $c8

    cpl                                           ; $6312: $2f
    ret c                                         ; $6313: $d8

    rra                                           ; $6314: $1f
    ldh a, [$fd]                                  ; $6315: $f0 $fd
    ld a, [$00da]                                 ; $6317: $fa $da $00
    jp c, Jump_000_004e                           ; $631a: $da $4e $00

    xor a                                         ; $631d: $af
    cp $df                                        ; $631e: $fe $df
    ld hl, sp+$6f                                 ; $6320: $f8 $6f
    rst $10                                       ; $6322: $d7
    ld hl, sp-$21                                 ; $6323: $f8 $df

jr_02a_6325:
    ldh a, [$f3]                                  ; $6325: $f0 $f3
    ld b, b                                       ; $6327: $40
    inc a                                         ; $6328: $3c
    ld d, [hl]                                    ; $6329: $56
    ld h, c                                       ; $632a: $61
    ccf                                           ; $632b: $3f
    jp Jump_000_3ebf                              ; $632c: $c3 $bf $3e


    rst $00                                       ; $632f: $c7
    db $dd                                        ; $6330: $dd
    cpl                                           ; $6331: $2f

jr_02a_6332:
    jp c, $f02f                                   ; $6332: $da $2f $f0

jr_02a_6335:
    push hl                                       ; $6335: $e5
    dec a                                         ; $6336: $3d
    rst $38                                       ; $6337: $ff
    jp $c73c                                      ; $6338: $c3 $3c $c7


    ret nc                                        ; $633b: $d0

    cpl                                           ; $633c: $2f

jr_02a_633d:
    ret c                                         ; $633d: $d8

    cpl                                           ; $633e: $2f
    sub b                                         ; $633f: $90
    cp e                                          ; $6340: $bb
    rst $38                                       ; $6341: $ff
    ld a, [hl+]                                   ; $6342: $2a
    jr nc, jr_02a_6325                            ; $6343: $30 $e0

    xor d                                         ; $6345: $aa
    db $eb                                        ; $6346: $eb
    ld a, a                                       ; $6347: $7f
    jr nc, jr_02a_6332                            ; $6348: $30 $e8

    and l                                         ; $634a: $a5
    cp d                                          ; $634b: $ba
    jr nc, @-$1e                                  ; $634c: $30 $e0

    xor c                                         ; $634e: $a9
    jr nc, jr_02a_6335                            ; $634f: $30 $e4

    rst $38                                       ; $6351: $ff
    nop                                           ; $6352: $00
    rst $18                                       ; $6353: $df
    xor $20                                       ; $6354: $ee $20
    ei                                            ; $6356: $fb
    xor d                                         ; $6357: $aa
    ld a, [$7fe0]                                 ; $6358: $fa $e0 $7f
    ld a, [$ffe0]                                 ; $635b: $fa $e0 $ff
    sbc [hl]                                      ; $635e: $9e
    and b                                         ; $635f: $a0
    rst $30                                       ; $6360: $f7
    call nz, Call_02a_6b40                        ; $6361: $c4 $40 $6b
    db $eb                                        ; $6364: $eb
    nop                                           ; $6365: $00
    sub $62                                       ; $6366: $d6 $62
    ld [hl+], a                                   ; $6368: $22
    ld [hl], l                                    ; $6369: $75
    inc c                                         ; $636a: $0c
    ld [hl+], a                                   ; $636b: $22
    db $db                                        ; $636c: $db
    inc h                                         ; $636d: $24
    cp $ff                                        ; $636e: $fe $ff
    ld bc, $0af5                                  ; $6370: $01 $f5 $0a
    jp c, $f425                                   ; $6373: $da $25 $f4

    dec bc                                        ; $6376: $0b
    add sp, -$01                                  ; $6377: $e8 $ff
    rla                                           ; $6379: $17
    add sp, $17                                   ; $637a: $e8 $17
    or c                                          ; $637c: $b1
    ld c, [hl]                                    ; $637d: $4e
    jp hl                                         ; $637e: $e9


    ld d, $d2                                     ; $637f: $16 $d2
    rst $38                                       ; $6381: $ff

jr_02a_6382:
    inc l                                         ; $6382: $2c
    ld h, e                                       ; $6383: $63
    sbc h                                         ; $6384: $9c

Jump_02a_6385:
    ret nc                                        ; $6385: $d0

    ld l, $e9                                     ; $6386: $2e $e9
    ld d, $b4                                     ; $6388: $16 $b4
    rst $38                                       ; $638a: $ff
    ld c, e                                       ; $638b: $4b
    rst $28                                       ; $638c: $ef
    db $10                                        ; $638d: $10
    ld a, l                                       ; $638e: $7d
    add d                                         ; $638f: $82
    rst $10                                       ; $6390: $d7
    jr z, jr_02a_633d                             ; $6391: $28 $aa

    rst $38                                       ; $6393: $ff
    ld d, l                                       ; $6394: $55
    ld b, l                                       ; $6395: $45
    cp d                                          ; $6396: $ba
    add b                                         ; $6397: $80
    ld a, a                                       ; $6398: $7f
    jr jr_02a_6382                                ; $6399: $18 $e7

    ld l, [hl]                                    ; $639b: $6e
    rst $38                                       ; $639c: $ff
    add c                                         ; $639d: $81
    ld a, [hl]                                    ; $639e: $7e
    cp l                                          ; $639f: $bd
    jr @-$17                                      ; $63a0: $18 $e7

    add b                                         ; $63a2: $80
    ld a, a                                       ; $63a3: $7f
    ld b, l                                       ; $63a4: $45
    rst $38                                       ; $63a5: $ff
    cp d                                          ; $63a6: $ba
    xor d                                         ; $63a7: $aa
    ld d, l                                       ; $63a8: $55
    rst $10                                       ; $63a9: $d7
    jr z, jr_02a_6429                             ; $63aa: $28 $7d

    add d                                         ; $63ac: $82
    rst $28                                       ; $63ad: $ef
    rst $38                                       ; $63ae: $ff
    db $10                                        ; $63af: $10
    ld e, a                                       ; $63b0: $5f

jr_02a_63b1:
    add b                                         ; $63b1: $80
    rla                                           ; $63b2: $17
    ldh [$83], a                                  ; $63b3: $e0 $83
    ld a, b                                       ; $63b5: $78
    ld d, c                                       ; $63b6: $51
    rst $38                                       ; $63b7: $ff
    xor h                                         ; $63b8: $ac
    xor e                                         ; $63b9: $ab
    ld d, h                                       ; $63ba: $54
    ldh a, [$0e]                                  ; $63bb: $f0 $0e
    xor c                                         ; $63bd: $a9
    ld d, [hl]                                    ; $63be: $56
    db $f4                                        ; $63bf: $f4
    rst $38                                       ; $63c0: $ff
    dec bc                                        ; $63c1: $0b
    db $f4                                        ; $63c2: $f4
    dec bc                                        ; $63c3: $0b
    xor c                                         ; $63c4: $a9
    ld d, [hl]                                    ; $63c5: $56
    pop af                                        ; $63c6: $f1
    ld c, $aa                                     ; $63c7: $0e $aa
    rst $38                                       ; $63c9: $ff
    ld d, h                                       ; $63ca: $54
    ld d, d                                       ; $63cb: $52
    xor h                                         ; $63cc: $ac
    add h                                         ; $63cd: $84
    ld a, b                                       ; $63ce: $78
    jr jr_02a_63b1                                ; $63cf: $18 $e0

    ld l, b                                       ; $63d1: $68
    rst $38                                       ; $63d2: $ff
    add b                                         ; $63d3: $80
    ld a, a                                       ; $63d4: $7f
    cp a                                          ; $63d5: $bf
    rra                                           ; $63d6: $1f
    rst $28                                       ; $63d7: $ef
    add a                                         ; $63d8: $87
    ld a, a                                       ; $63d9: $7f
    ld d, e                                       ; $63da: $53
    rst $18                                       ; $63db: $df
    xor a                                         ; $63dc: $af
    xor e                                         ; $63dd: $ab
    ld d, l                                       ; $63de: $55
    pop af                                        ; $63df: $f1
    rrca                                          ; $63e0: $0f
    ldh [$e1], a                                  ; $63e1: $e0 $e1
    ld d, a                                       ; $63e3: $57
    nop                                           ; $63e4: $00
    rst $30                                       ; $63e5: $f7
    adc [hl]                                      ; $63e6: $8e
    nop                                           ; $63e7: $00
    rla                                           ; $63e8: $17
    inc e                                         ; $63e9: $1c
    and b                                         ; $63ea: $a0
    rlca                                          ; $63eb: $07
    nop                                           ; $63ec: $00
    ld c, d                                       ; $63ed: $4a
    ld b, b                                       ; $63ee: $40
    rst $38                                       ; $63ef: $ff
    dec b                                         ; $63f0: $05
    nop                                           ; $63f1: $00
    ld [bc], a                                    ; $63f2: $02
    nop                                           ; $63f3: $00
    sub b                                         ; $63f4: $90
    nop                                           ; $63f5: $00
    adc b                                         ; $63f6: $88
    nop                                           ; $63f7: $00
    rst $30                                       ; $63f8: $f7
    ld de, $8001                                  ; $63f9: $11 $01 $80
    db $fc                                        ; $63fc: $fc
    ldh [$c0], a                                  ; $63fd: $e0 $c0
    ld b, b                                       ; $63ff: $40
    ld de, $ff01                                  ; $6400: $11 $01 $ff
    ld [bc], a                                    ; $6403: $02
    ld [bc], a                                    ; $6404: $02
    ld b, l                                       ; $6405: $45
    ld b, b                                       ; $6406: $40
    ld [bc], a                                    ; $6407: $02
    nop                                           ; $6408: $00
    ld b, b                                       ; $6409: $40
    ld b, b                                       ; $640a: $40
    rst $38                                       ; $640b: $ff
    and d                                         ; $640c: $a2
    and b                                         ; $640d: $a0
    ld b, b                                       ; $640e: $40
    ld b, b                                       ; $640f: $40
    and b                                         ; $6410: $a0
    and b                                         ; $6411: $a0
    ld d, l                                       ; $6412: $55
    ld d, l                                       ; $6413: $55
    rst $28                                       ; $6414: $ef
    ld [$41ea], a                                 ; $6415: $ea $ea $41
    ld b, c                                       ; $6418: $41
    db $ec                                        ; $6419: $ec
    ldh [rLYC], a                                 ; $641a: $e0 $45
    inc hl                                        ; $641c: $23
    inc hl                                        ; $641d: $23
    rst $38                                       ; $641e: $ff
    ld b, l                                       ; $641f: $45
    ld b, l                                       ; $6420: $45
    xor e                                         ; $6421: $ab
    xor e                                         ; $6422: $ab
    ld d, a                                       ; $6423: $57
    ld d, a                                       ; $6424: $57
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    rst $38                                       ; $6427: $ff
    sub b                                         ; $6428: $90

jr_02a_6429:
    nop                                           ; $6429: $00
    adc c                                         ; $642a: $89
    nop                                           ; $642b: $00
    ld de, $8300                                  ; $642c: $11 $00 $83
    nop                                           ; $642f: $00
    rst $38                                       ; $6430: $ff
    ld [de], a                                    ; $6431: $12
    nop                                           ; $6432: $00
    rst $00                                       ; $6433: $c7
    ld b, b                                       ; $6434: $40
    dec e                                         ; $6435: $1d
    nop                                           ; $6436: $00
    ld [hl], a                                    ; $6437: $77
    nop                                           ; $6438: $00
    rst $38                                       ; $6439: $ff
    cp $ff                                        ; $643a: $fe $ff
    cp $fe                                        ; $643c: $fe $fe
    db $f4                                        ; $643e: $f4
    ld a, [$f2f6]                                 ; $643f: $fa $f6 $f2
    rst $30                                       ; $6442: $f7
    pop af                                        ; $6443: $f1
    or $fe                                        ; $6444: $f6 $fe
    db $fc                                        ; $6446: $fc
    ldh [$f4], a                                  ; $6447: $e0 $f4
    ld a, [$7fff]                                 ; $6449: $fa $ff $7f
    ei                                            ; $644c: $fb
    ccf                                           ; $644d: $3f
    ld a, a                                       ; $644e: $7f
    db $fc                                        ; $644f: $fc
    ldh [rIE], a                                  ; $6450: $e0 $ff
    rst $38                                       ; $6452: $ff
    ld a, a                                       ; $6453: $7f
    cpl                                           ; $6454: $2f
    rst $30                                       ; $6455: $f7
    rst $38                                       ; $6456: $ff
    db $eb                                        ; $6457: $eb
    ld h, a                                       ; $6458: $67
    inc hl                                        ; $6459: $23
    rst $28                                       ; $645a: $ef
    ld sp, hl                                     ; $645b: $f9
    cp $fe                                        ; $645c: $fe $fe
    cp $7f                                        ; $645e: $fe $7f
    db $eb                                        ; $6460: $eb
    or $ee                                        ; $6461: $f6 $ee
    and $e3                                       ; $6463: $e6 $e3
    xor $fe                                       ; $6465: $ee $fe
    db $fc                                        ; $6467: $fc
    ldh [$e7], a                                  ; $6468: $e0 $e7
    add sp, -$0a                                  ; $646a: $e8 $f6
    rst $38                                       ; $646c: $ff
    db $ec                                        ; $646d: $ec
    ldh [$fc], a                                  ; $646e: $e0 $fc
    ld [c], a                                     ; $6470: $e2
    ld b, a                                       ; $6471: $47
    inc de                                        ; $6472: $13
    rst $28                                       ; $6473: $ef
    db $dd                                        ; $6474: $dd
    rst $00                                       ; $6475: $c7
    ret c                                         ; $6476: $d8

    ldh [$f5], a                                  ; $6477: $e0 $f5
    ld a, [$bdfc]                                 ; $6479: $fa $fc $bd
    pop hl                                        ; $647c: $e1
    cp $dd                                        ; $647d: $fe $dd
    ld a, a                                       ; $647f: $7f
    cp $f3                                        ; $6480: $fe $f3
    db $fc                                        ; $6482: $fc
    ld d, l                                       ; $6483: $55
    ld [$fdf2], a                                 ; $6484: $ea $f2 $fd
    call nz, $9fe3                                ; $6487: $c4 $e3 $9f
    ccf                                           ; $648a: $3f
    rst $38                                       ; $648b: $ff
    rst $30                                       ; $648c: $f7
    ld a, a                                       ; $648d: $7f
    ld a, $ac                                     ; $648e: $3e $ac
    ld h, b                                       ; $6490: $60
    cp b                                          ; $6491: $b8
    ldh [rIE], a                                  ; $6492: $e0 $ff
    rst $38                                       ; $6494: $ff
    ld a, [$fdfa]                                 ; $6495: $fa $fa $fd
    db $fd                                        ; $6498: $fd
    cp $fc                                        ; $6499: $fe $fc
    db $fd                                        ; $649b: $fd
    ld a, [$64fc]                                 ; $649c: $fa $fc $64
    nop                                           ; $649f: $00
    add b                                         ; $64a0: $80
    ld bc, $bfdf                                  ; $64a1: $01 $df $bf
    ld a, a                                       ; $64a4: $7f
    ld c, a                                       ; $64a5: $4f
    ccf                                           ; $64a6: $3f
    rst $18                                       ; $64a7: $df

jr_02a_64a8:
    ei                                            ; $64a8: $fb
    ccf                                           ; $64a9: $3f
    sbc a                                         ; $64aa: $9f
    inc b                                         ; $64ab: $04
    jr nz, @-$0f                                  ; $64ac: $20 $ef

    rst $38                                       ; $64ae: $ff
    ld e, a                                       ; $64af: $5f
    ccf                                           ; $64b0: $3f
    cp $d6                                        ; $64b1: $fe $d6
    ld a, a                                       ; $64b3: $7f
    pop hl                                        ; $64b4: $e1
    db $fd                                        ; $64b5: $fd
    cp $29                                        ; $64b6: $fe $29
    nop                                           ; $64b8: $00
    cp $d8                                        ; $64b9: $fe $d8
    ldh [rIE], a                                  ; $64bb: $e0 $ff
    db $fc                                        ; $64bd: $fc
    ld a, a                                       ; $64be: $7f
    xor a                                         ; $64bf: $af
    sbc a                                         ; $64c0: $9f
    ld l, a                                       ; $64c1: $6f
    rra                                           ; $64c2: $1f
    rst $00                                       ; $64c3: $c7
    ld a, a                                       ; $64c4: $7f
    rra                                           ; $64c5: $1f
    db $d3                                        ; $64c6: $d3
    nop                                           ; $64c7: $00
    or a                                          ; $64c8: $b7
    cp a                                          ; $64c9: $bf
    ld a, a                                       ; $64ca: $7f
    rst $08                                       ; $64cb: $cf
    ret c                                         ; $64cc: $d8

    ldh [$f9], a                                  ; $64cd: $e0 $f9
    cp $c8                                        ; $64cf: $fe $c8
    db $e3                                        ; $64d1: $e3
    cp $ff                                        ; $64d2: $fe $ff
    cp $ef                                        ; $64d4: $fe $ef
    cp $7e                                        ; $64d6: $fe $7e
    db $fd                                        ; $64d8: $fd
    or $ff                                        ; $64d9: $f6 $ff
    sbc a                                         ; $64db: $9f
    ei                                            ; $64dc: $fb
    rst $38                                       ; $64dd: $ff
    cpl                                           ; $64de: $2f
    or a                                          ; $64df: $b7
    nop                                           ; $64e0: $00

Jump_02a_64e1:
    rst $18                                       ; $64e1: $df
    ccf                                           ; $64e2: $3f
    rst $20                                       ; $64e3: $e7
    sbc a                                         ; $64e4: $9f
    rst $28                                       ; $64e5: $ef
    ei                                            ; $64e6: $fb
    rra                                           ; $64e7: $1f
    call $e2d8                                    ; $64e8: $cd $d8 $e2
    rst $08                                       ; $64eb: $cf
    rst $10                                       ; $64ec: $d7
    db $e3                                        ; $64ed: $e3
    db $db                                        ; $64ee: $db
    add e                                         ; $64ef: $83
    rst $38                                       ; $64f0: $ff
    cp e                                          ; $64f1: $bb
    ret                                           ; $64f2: $c9


    or c                                          ; $64f3: $b1
    pop hl                                        ; $64f4: $e1
    sub l                                         ; $64f5: $95
    ld [hl], $00                                  ; $64f6: $36 $00
    and c                                         ; $64f8: $a1
    db $fd                                        ; $64f9: $fd
    add c                                         ; $64fa: $81
    sbc d                                         ; $64fb: $9a
    ld bc, $cfef                                  ; $64fc: $01 $ef $cf
    rst $08                                       ; $64ff: $cf
    rst $38                                       ; $6500: $ff
    sub a                                         ; $6501: $97
    and a                                         ; $6502: $a7
    rst $38                                       ; $6503: $ff
    db $db                                        ; $6504: $db
    and e                                         ; $6505: $a3
    sbc a                                         ; $6506: $9f
    db $e3                                        ; $6507: $e3
    ccf                                           ; $6508: $3f
    ld b, e                                       ; $6509: $43
    ei                                            ; $650a: $fb
    ei                                            ; $650b: $fb
    rst $38                                       ; $650c: $ff
    cp $fe                                        ; $650d: $fe $fe
    ld a, a                                       ; $650f: $7f
    ld a, [hl]                                    ; $6510: $7e
    ld hl, sp-$10                                 ; $6511: $f8 $f0
    and [hl]                                      ; $6513: $a6
    sbc d                                         ; $6514: $9a
    rst $38                                       ; $6515: $ff
    pop hl                                        ; $6516: $e1
    add c                                         ; $6517: $81
    daa                                           ; $6518: $27
    daa                                           ; $6519: $27
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    sub c                                         ; $651c: $91
    ld b, c                                       ; $651d: $41
    rst $38                                       ; $651e: $ff
    ld b, d                                       ; $651f: $42
    add b                                         ; $6520: $80
    db $e3                                        ; $6521: $e3
    jr nz, jr_02a_64a8                            ; $6522: $20 $84

    nop                                           ; $6524: $00
    or e                                          ; $6525: $b3
    or e                                          ; $6526: $b3
    ld c, $8e                                     ; $6527: $0e $8e
    ldh [$fe], a                                  ; $6529: $e0 $fe
    cp a                                          ; $652b: $bf
    cp a                                          ; $652c: $bf
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    rst $38                                       ; $6530: $ff
    cp c                                          ; $6531: $b9
    or a                                          ; $6532: $b7
    cp c                                          ; $6533: $b9
    cp a                                          ; $6534: $bf
    ld b, [hl]                                    ; $6535: $46
    ld b, [hl]                                    ; $6536: $46
    ld b, [hl]                                    ; $6537: $46
    pop bc                                        ; $6538: $c1
    rst $38                                       ; $6539: $ff
    cp [hl]                                       ; $653a: $be
    cp e                                          ; $653b: $bb
    cp [hl]                                       ; $653c: $be
    ret nz                                        ; $653d: $c0

    pop bc                                        ; $653e: $c1
    jp $cd46                                      ; $653f: $c3 $46 $cd


    cp c                                          ; $6542: $b9
    adc $f3                                       ; $6543: $ce $f3
    ldh [$fd], a                                  ; $6545: $e0 $fd
    jp hl                                         ; $6547: $e9


    cp d                                          ; $6548: $ba
    or a                                          ; $6549: $b7
    cp d                                          ; $654a: $ba
    xor $e5                                       ; $654b: $ee $e5
    pop bc                                        ; $654d: $c1
    rst $08                                       ; $654e: $cf
    ret nz                                        ; $654f: $c0

    ret nz                                        ; $6550: $c0

    cp [hl]                                       ; $6551: $be
    cp e                                          ; $6552: $bb
    reti                                          ; $6553: $d9


    pop hl                                        ; $6554: $e1
    db $dd                                        ; $6555: $dd
    ld [c], a                                     ; $6556: $e2
    cp a                                          ; $6557: $bf
    cp h                                          ; $6558: $bc
    rst $38                                       ; $6559: $ff
    cp h                                          ; $655a: $bc
    cp l                                          ; $655b: $bd
    cp e                                          ; $655c: $bb
    cp l                                          ; $655d: $bd
    cp c                                          ; $655e: $b9
    cp b                                          ; $655f: $b8
    or a                                          ; $6560: $b7
    cp c                                          ; $6561: $b9
    db $fd                                        ; $6562: $fd
    cp [hl]                                       ; $6563: $be
    ret nz                                        ; $6564: $c0

    ldh [$c3], a                                  ; $6565: $e0 $c3
    pop bc                                        ; $6567: $c1
    ret nz                                        ; $6568: $c0

    pop bc                                        ; $6569: $c1
    jp nz, $efc3                                  ; $656a: $c2 $c3 $ef

    ld b, [hl]                                    ; $656d: $46
    ld b, [hl]                                    ; $656e: $46
    rst $08                                       ; $656f: $cf
    ret nc                                        ; $6570: $d0

    ret nz                                        ; $6571: $c0

    rst $20                                       ; $6572: $e7
    jp nc, $c546                                  ; $6573: $d2 $46 $c5

    ld [hl], e                                    ; $6576: $73
    add $46                                       ; $6577: $c6 $46
    xor b                                         ; $6579: $a8
    ldh [$ae], a                                  ; $657a: $e0 $ae
    push hl                                       ; $657c: $e5
    jp $c2c2                                      ; $657d: $c3 $c2 $c2


    cp l                                          ; $6580: $bd
    ldh [$ec], a                                  ; $6581: $e0 $ec
    reti                                          ; $6583: $d9


    ld [c], a                                     ; $6584: $e2
    and a                                         ; $6585: $a7
    pop hl                                        ; $6586: $e1
    cp l                                          ; $6587: $bd
    cp e                                          ; $6588: $bb
    add h                                         ; $6589: $84
    ldh [$bd], a                                  ; $658a: $e0 $bd
    cp c                                          ; $658c: $b9
    cp e                                          ; $658d: $bb
    push af                                       ; $658e: $f5
    cp [hl]                                       ; $658f: $be
    or b                                          ; $6590: $b0
    ld [c], a                                     ; $6591: $e2
    jp $e4e9                                      ; $6592: $c3 $e9 $e4


    ld b, [hl]                                    ; $6595: $46
    ld b, [hl]                                    ; $6596: $46
    sbc d                                         ; $6597: $9a
    sbc b                                         ; $6598: $98
    cp $ff                                        ; $6599: $fe $ff
    ldh [$9a], a                                  ; $659b: $e0 $9a
    ld b, [hl]                                    ; $659d: $46
    ld b, [hl]                                    ; $659e: $46
    db $d3                                        ; $659f: $d3
    call nc, $c746                                ; $65a0: $d4 $46 $c7
    pop hl                                        ; $65a3: $e1
    ret z                                         ; $65a4: $c8

    adc e                                         ; $65a5: $8b
    ldh [$91], a                                  ; $65a6: $e0 $91
    db $e3                                        ; $65a8: $e3
    cp l                                          ; $65a9: $bd
    and $d9                                       ; $65aa: $e6 $d9
    db $e4                                        ; $65ac: $e4
    cp a                                          ; $65ad: $bf
    cp c                                          ; $65ae: $b9
    cp [hl]                                       ; $65af: $be
    and $45                                       ; $65b0: $e6 $45
    ldh [$bb], a                                  ; $65b2: $e0 $bb
    cp [hl]                                       ; $65b4: $be
    ld c, d                                       ; $65b5: $4a
    ld [c], a                                     ; $65b6: $e2
    ld c, h                                       ; $65b7: $4c
    push hl                                       ; $65b8: $e5
    pop de                                        ; $65b9: $d1
    ld b, [hl]                                    ; $65ba: $46
    sbc d                                         ; $65bb: $9a
    or a                                          ; $65bc: $b7
    sbc h                                         ; $65bd: $9c
    sbc b                                         ; $65be: $98
    sub a                                         ; $65bf: $97
    ld sp, $a8e0                                  ; $65c0: $31 $e0 $a8
    sub a                                         ; $65c3: $97
    cp a                                          ; $65c4: $bf
    ldh [rDMA], a                                 ; $65c5: $e0 $46
    rla                                           ; $65c7: $17
    ld b, [hl]                                    ; $65c8: $46
    ret                                           ; $65c9: $c9


    jp z, $e3a8                                   ; $65ca: $ca $a8 $e3

    jp nc, $e22b                                  ; $65cd: $d2 $2b $e2

jr_02a_65d0:
    ld [hl], d                                    ; $65d0: $72
    ldh [$28], a                                  ; $65d1: $e0 $28
    jp hl                                         ; $65d3: $e9


    dec [hl]                                      ; $65d4: $35
    call nz, $e10d                                ; $65d5: $c4 $0d $e1
    call nz, $e24a                                ; $65d8: $c4 $4a $e2
    cp a                                          ; $65db: $bf
    cp h                                          ; $65dc: $bc
    db $fc                                        ; $65dd: $fc
    pop bc                                        ; $65de: $c1
    add h                                         ; $65df: $84
    pop hl                                        ; $65e0: $e1
    ld a, h                                       ; $65e1: $7c
    jp $f1e1                                      ; $65e2: $c3 $e1 $f1


    ret nz                                        ; $65e5: $c0

    xor c                                         ; $65e6: $a9
    xor b                                         ; $65e7: $a8
    sub a                                         ; $65e8: $97
    sbc b                                         ; $65e9: $98
    sbc h                                         ; $65ea: $9c
    ld a, e                                       ; $65eb: $7b
    pop hl                                        ; $65ec: $e1
    ldh [$f2], a                                  ; $65ed: $e0 $f2
    jp nz, $e076                                  ; $65ef: $c2 $76 $e0

    ld [$72c1], a                                 ; $65f2: $ea $c1 $72
    ldh [$e8], a                                  ; $65f5: $e0 $e8
    ret                                           ; $65f7: $c9


    cp b                                          ; $65f8: $b8
    call nz, $87c0                                ; $65f9: $c4 $c0 $87
    call nz, $b7b7                                ; $65fc: $c4 $b7 $b7
    inc sp                                        ; $65ff: $33
    ld [c], a                                     ; $6600: $e2
    db $db                                        ; $6601: $db
    pop bc                                        ; $6602: $c1
    and d                                         ; $6603: $a2
    pop hl                                        ; $6604: $e1
    pop bc                                        ; $6605: $c1
    pop hl                                        ; $6606: $e1
    xor b                                         ; $6607: $a8
    ccf                                           ; $6608: $3f
    ld a, c                                       ; $6609: $79
    ld a, d                                       ; $660a: $7a
    ld a, e                                       ; $660b: $7b
    ld a, h                                       ; $660c: $7c
    ld a, l                                       ; $660d: $7d
    xor c                                         ; $660e: $a9
    cp c                                          ; $660f: $b9
    pop bc                                        ; $6610: $c1
    ld a, e                                       ; $6611: $7b
    ldh [rNR42], a                                ; $6612: $e0 $21
    pop de                                        ; $6614: $d1
    or c                                          ; $6615: $b1
    call nz, $e19e                                ; $6616: $c4 $9e $e1
    ld [hl], d                                    ; $6619: $72
    ldh [$a3], a                                  ; $661a: $e0 $a3
    rst $00                                       ; $661c: $c7
    cp [hl]                                       ; $661d: $be
    ld [bc], a                                    ; $661e: $02
    ldh [rLCDC], a                                ; $661f: $e0 $40
    ldh [$e1], a                                  ; $6621: $e0 $e1
    cp e                                          ; $6623: $bb
    ret c                                         ; $6624: $d8

    jp nz, $c1db                                  ; $6625: $c2 $db $c1

    inc d                                         ; $6628: $14
    ldh [$82], a                                  ; $6629: $e0 $82
    ld [c], a                                     ; $662b: $e2
    xor c                                         ; $662c: $a9
    add b                                         ; $662d: $80
    or d                                          ; $662e: $b2
    rst $08                                       ; $662f: $cf
    inc l                                         ; $6630: $2c
    ld a, [hl+]                                   ; $6631: $2a
    ld a, a                                       ; $6632: $7f
    ld a, l                                       ; $6633: $7d
    ld a, c                                       ; $6634: $79
    pop bc                                        ; $6635: $c1
    ld a, [hl-]                                   ; $6636: $3a
    ld [c], a                                     ; $6637: $e2
    set 1, h                                      ; $6638: $cb $cc
    jr nz, jr_02a_65d0                            ; $663a: $20 $94

    pop bc                                        ; $663c: $c1
    ld e, c                                       ; $663d: $59
    call nz, $e657                                ; $663e: $c4 $57 $e6
    ld [hl], e                                    ; $6641: $73
    ret nz                                        ; $6642: $c0

    ld [hl], h                                    ; $6643: $74
    jp nz, $d8c0                                  ; $6644: $c2 $c0 $d8

    jp nz, $c1db                                  ; $6647: $c2 $db $c1

    rst $18                                       ; $664a: $df
    ret                                           ; $664b: $c9


    jp z, $979a                                   ; $664c: $ca $9a $97

    xor b                                         ; $664f: $a8
    ld b, e                                       ; $6650: $43
    pop bc                                        ; $6651: $c1
    add b                                         ; $6652: $80
    dec l                                         ; $6653: $2d
    and a                                         ; $6654: $a7
    jr nz, jr_02a_667e                            ; $6655: $20 $27

    ld b, d                                       ; $6657: $42
    cp a                                          ; $6658: $bf
    ld [c], a                                     ; $6659: $e2
    ld a, [hl-]                                   ; $665a: $3a
    ldh [$9a], a                                  ; $665b: $e0 $9a
    ld l, $c1                                     ; $665d: $2e $c1
    cp a                                          ; $665f: $bf
    ld d, e                                       ; $6660: $53
    cp c                                          ; $6661: $b9
    or a                                          ; $6662: $b7
    ld e, c                                       ; $6663: $59
    jp $e0f7                                      ; $6664: $c3 $f7 $e0


    cp c                                          ; $6667: $b9
    dec d                                         ; $6668: $15
    db $e4                                        ; $6669: $e4
    jp $c374                                      ; $666a: $c3 $74 $c3


    cp c                                          ; $666d: $b9
    jp nz, $c466                                  ; $666e: $c2 $66 $c4

    ld l, h                                       ; $6671: $6c
    pop bc                                        ; $6672: $c1
    sbc c                                         ; $6673: $99
    xor b                                         ; $6674: $a8
    xor c                                         ; $6675: $a9
    cp a                                          ; $6676: $bf
    pop hl                                        ; $6677: $e1
    add b                                         ; $6678: $80
    sbc a                                         ; $6679: $9f
    ld b, d                                       ; $667a: $42
    daa                                           ; $667b: $27
    jr nz, jr_02a_66a8                            ; $667c: $20 $2a

jr_02a_667e:
    ld b, l                                       ; $667e: $45
    ld a, [hl]                                    ; $667f: $7e
    pop hl                                        ; $6680: $e1
    ldh a, [$e0]                                  ; $6681: $f0 $e0
    sub a                                         ; $6683: $97
    ld bc, $2e9a                                  ; $6684: $01 $9a $2e
    ret nz                                        ; $6687: $c0

    sub [hl]                                      ; $6688: $96
    jp $c009                                      ; $6689: $c3 $09 $c0


    adc l                                         ; $668c: $8d
    ret nz                                        ; $668d: $c0

    db $10                                        ; $668e: $10
    ret nz                                        ; $668f: $c0

    call nc, Call_02a_74c4                        ; $6690: $d4 $c4 $74
    rst $00                                       ; $6693: $c7
    xor $cd                                       ; $6694: $ee $cd
    and h                                         ; $6696: $a4

jr_02a_6697:
    sbc e                                         ; $6697: $9b
    xor c                                         ; $6698: $a9
    xor b                                         ; $6699: $a8
    add hl, bc                                    ; $669a: $09
    pop hl                                        ; $669b: $e1
    add d                                         ; $669c: $82
    add e                                         ; $669d: $83
    ld a, [hl+]                                   ; $669e: $2a
    rst $18                                       ; $669f: $df
    ld h, $21                                     ; $66a0: $26 $21
    add hl, sp                                    ; $66a2: $39
    ld b, [hl]                                    ; $66a3: $46
    add c                                         ; $66a4: $81
    cp d                                          ; $66a5: $ba
    pop bc                                        ; $66a6: $c1
    xor c                                         ; $66a7: $a9

jr_02a_66a8:
    ld b, [hl]                                    ; $66a8: $46
    add c                                         ; $66a9: $81
    sbc e                                         ; $66aa: $9b
    and e                                         ; $66ab: $a3
    xor b                                         ; $66ac: $a8
    sbc d                                         ; $66ad: $9a
    and c                                         ; $66ae: $a1
    sub b                                         ; $66af: $90
    and b                                         ; $66b0: $a0
    rst $28                                       ; $66b1: $ef
    and [hl]                                      ; $66b2: $a6
    push hl                                       ; $66b3: $e5
    push bc                                       ; $66b4: $c5
    add d                                         ; $66b5: $82
    call nz, $fd9a                                ; $66b6: $c4 $9a $fd
    sub a                                         ; $66b9: $97
    jp z, $84c2                                   ; $66ba: $ca $c2 $84

    add l                                         ; $66bd: $85
    add [hl]                                      ; $66be: $86
    ld [hl], d                                    ; $66bf: $72
    ld l, h                                       ; $66c0: $6c
    ld a, [hl-]                                   ; $66c1: $3a
    inc bc                                        ; $66c2: $03
    add e                                         ; $66c3: $83
    ld l, l                                       ; $66c4: $6d
    ld a, c                                       ; $66c5: $79
    pop bc                                        ; $66c6: $c1
    ld l, e                                       ; $66c7: $6b
    ldh [$a3], a                                  ; $66c8: $e0 $a3
    xor b                                         ; $66ca: $a8
    sbc d                                         ; $66cb: $9a
    and c                                         ; $66cc: $a1
    ld e, b                                       ; $66cd: $58
    and b                                         ; $66ce: $a0
    add b                                         ; $66cf: $80
    and d                                         ; $66d0: $a2
    ret nz                                        ; $66d1: $c0

    ld c, l                                       ; $66d2: $4d

jr_02a_66d3:
    push bc                                       ; $66d3: $c5
    push hl                                       ; $66d4: $e5
    ret nz                                        ; $66d5: $c0

    ld a, c                                       ; $66d6: $79
    and b                                         ; $66d7: $a0
    cp l                                          ; $66d8: $bd
    db $e3                                        ; $66d9: $e3
    ld b, d                                       ; $66da: $42
    jp nz, $c0fc                                  ; $66db: $c2 $fc $c0

    add hl, sp                                    ; $66de: $39
    ld l, [hl]                                    ; $66df: $6e
    rrca                                          ; $66e0: $0f
    ld [hl], b                                    ; $66e1: $70
    ld [hl], c                                    ; $66e2: $71
    add l                                         ; $66e3: $85
    add h                                         ; $66e4: $84
    scf                                           ; $66e5: $37
    and e                                         ; $66e6: $a3
    ret nz                                        ; $66e7: $c0

    pop hl                                        ; $66e8: $e1
    and e                                         ; $66e9: $a3
    and a                                         ; $66ea: $a7
    ld a, [bc]                                    ; $66eb: $0a
    pop hl                                        ; $66ec: $e1
    ld e, h                                       ; $66ed: $5c
    ret nc                                        ; $66ee: $d0

    and e                                         ; $66ef: $a3
    jr z, jr_02a_6697                             ; $66f0: $28 $a5

    cp d                                          ; $66f2: $ba
    or a                                          ; $66f3: $b7
    cp l                                          ; $66f4: $bd
    cp b                                          ; $66f5: $b8
    and c                                         ; $66f6: $a1
    cp l                                          ; $66f7: $bd
    ld a, [de]                                    ; $66f8: $1a
    and d                                         ; $66f9: $a2
    cp $93                                        ; $66fa: $fe $93
    pop hl                                        ; $66fc: $e1
    xor c                                         ; $66fd: $a9
    ld b, [hl]                                    ; $66fe: $46
    ld b, l                                       ; $66ff: $45
    ld a, [hl-]                                   ; $6700: $3a
    dec [hl]                                      ; $6701: $35
    dec [hl]                                      ; $6702: $35
    ld a, [hl-]                                   ; $6703: $3a
    add c                                         ; $6704: $81
    ld b, l                                       ; $6705: $45
    or h                                          ; $6706: $b4
    jp nz, $e4c0                                  ; $6707: $c2 $c0 $e4

    and h                                         ; $670a: $a4
    and e                                         ; $670b: $a3
    push de                                       ; $670c: $d5
    add $6d                                       ; $670d: $c6 $6d
    pop bc                                        ; $670f: $c1
    jr z, @-$59                                   ; $6710: $28 $a5

    cp d                                          ; $6712: $ba
    pop af                                        ; $6713: $f1
    or a                                          ; $6714: $b7
    inc l                                         ; $6715: $2c
    db $e3                                        ; $6716: $e3
    cp d                                          ; $6717: $ba
    add d                                         ; $6718: $82
    sub e                                         ; $6719: $93
    ld [c], a                                     ; $671a: $e2
    ld a, c                                       ; $671b: $79
    ld a, d                                       ; $671c: $7a
    ld h, l                                       ; $671d: $65
    ld h, [hl]                                    ; $671e: $66
    inc bc                                        ; $671f: $03
    dec [hl]                                      ; $6720: $35
    ld a, $44                                     ; $6721: $3e $44
    pop hl                                        ; $6723: $e1
    db $fc                                        ; $6724: $fc
    and h                                         ; $6725: $a4
    adc b                                         ; $6726: $88
    and l                                         ; $6727: $a5
    rla                                           ; $6728: $17
    and $9b                                       ; $6729: $e6 $9b
    add c                                         ; $672b: $81
    jr z, jr_02a_66d3                             ; $672c: $28 $a5

    rst $10                                       ; $672e: $d7
    cp [hl]                                       ; $672f: $be
    cp c                                          ; $6730: $b9

jr_02a_6731:
    call nz, $e12c                                ; $6731: $c4 $2c $e1
    call nz, $8099                                ; $6734: $c4 $99 $80
    set 1, h                                      ; $6737: $cb $cc
    cp $81                                        ; $6739: $fe $81
    and c                                         ; $673b: $a1
    ld a, c                                       ; $673c: $79
    ld a, [hl]                                    ; $673d: $7e
    add hl, sp                                    ; $673e: $39
    dec [hl]                                      ; $673f: $35
    ld l, b                                       ; $6740: $68
    ld h, [hl]                                    ; $6741: $66
    ld a, $0c                                     ; $6742: $3e $0c
    ld a, c                                       ; $6744: $79
    add d                                         ; $6745: $82
    jr nc, @-$3d                                  ; $6746: $30 $c1

    sub a                                         ; $6748: $97
    sbc d                                         ; $6749: $9a
    adc b                                         ; $674a: $88
    and d                                         ; $674b: $a2
    sub c                                         ; $674c: $91
    add h                                         ; $674d: $84
    ld d, a                                       ; $674e: $57
    and d                                         ; $674f: $a2
    sbc e                                         ; $6750: $9b
    add c                                         ; $6751: $81
    ld e, [hl]                                    ; $6752: $5e
    ret nc                                        ; $6753: $d0

    add l                                         ; $6754: $85
    pop bc                                        ; $6755: $c1
    cp d                                          ; $6756: $ba
    or a                                          ; $6757: $b7
    or a                                          ; $6758: $b7
    ld [hl], a                                    ; $6759: $77
    and b                                         ; $675a: $a0
    cp b                                          ; $675b: $b8
    ld e, c                                       ; $675c: $59
    add b                                         ; $675d: $80
    db $fc                                        ; $675e: $fc
    ld b, h                                       ; $675f: $44
    add b                                         ; $6760: $80
    jp nc, $80c0                                  ; $6761: $d2 $c0 $80

    ld b, [hl]                                    ; $6764: $46
    ld a, $35                                     ; $6765: $3e $35
    dec [hl]                                      ; $6767: $35
    ld l, d                                       ; $6768: $6a
    add hl, bc                                    ; $6769: $09
    add hl, sp                                    ; $676a: $39
    or $c2                                        ; $676b: $f6 $c2
    jr nc, jr_02a_6731                            ; $676d: $30 $c2

    sbc c                                         ; $676f: $99
    adc b                                         ; $6770: $88
    and d                                         ; $6771: $a2
    sub c                                         ; $6772: $91
    add h                                         ; $6773: $84
    ld [hl-], a                                   ; $6774: $32
    add a                                         ; $6775: $87
    ld l, e                                       ; $6776: $6b
    add l                                         ; $6777: $85
    db $e4                                        ; $6778: $e4
    dec l                                         ; $6779: $2d
    add b                                         ; $677a: $80
    halt                                          ; $677b: $76
    and d                                         ; $677c: $a2
    cp [hl]                                       ; $677d: $be
    ld b, h                                       ; $677e: $44
    add c                                         ; $677f: $81
    ld d, d                                       ; $6780: $52
    ret nz                                        ; $6781: $c0

    add d                                         ; $6782: $82
    add e                                         ; $6783: $83

Jump_02a_6784:
    add hl, sp                                    ; $6784: $39
    nop                                           ; $6785: $00
    ret nz                                        ; $6786: $c0

    db $e4                                        ; $6787: $e4
    inc a                                         ; $6788: $3c
    and b                                         ; $6789: $a0
    add hl, sp                                    ; $678a: $39
    and c                                         ; $678b: $a1
    cp [hl]                                       ; $678c: $be
    jp nz, $8591                                  ; $678d: $c2 $91 $85

    ld a, [c]                                     ; $6790: $f2
    ld h, d                                       ; $6791: $62
    ld c, [hl]                                    ; $6792: $4e
    add $ea                                       ; $6793: $c6 $ea
    ld l, [hl]                                    ; $6795: $6e
    halt                                          ; $6796: $76
    ld d, d                                       ; $6797: $52
    ret nz                                        ; $6798: $c0

    add h                                         ; $6799: $84
    adc c                                         ; $679a: $89
    ret nz                                        ; $679b: $c0

    ret nz                                        ; $679c: $c0

    ld l, d                                       ; $679d: $6a
    ld a, [hl-]                                   ; $679e: $3a
    ld b, l                                       ; $679f: $45
    cp b                                          ; $67a0: $b8
    ld h, d                                       ; $67a1: $62
    rra                                           ; $67a2: $1f
    ld b, l                                       ; $67a3: $45
    ld b, l                                       ; $67a4: $45
    ld b, [hl]                                    ; $67a5: $46
    xor b                                         ; $67a6: $a8
    sbc e                                         ; $67a7: $9b
    ei                                            ; $67a8: $fb
    add c                                         ; $67a9: $81
    sub c                                         ; $67aa: $91
    add l                                         ; $67ab: $85
    db $d3                                        ; $67ac: $d3
    ld h, b                                       ; $67ad: $60
    ldh [$4e], a                                  ; $67ae: $e0 $4e
    ret                                           ; $67b0: $c9


    ld [$5a6a], a                                 ; $67b1: $ea $6a $5a
    add b                                         ; $67b4: $80
    ld [de], a                                    ; $67b5: $12
    pop bc                                        ; $67b6: $c1
    ccf                                           ; $67b7: $3f
    pop hl                                        ; $67b8: $e1
    ld [hl], l                                    ; $67b9: $75
    ld h, [hl]                                    ; $67ba: $66
    ld [hl], $7e                                  ; $67bb: $36 $7e
    cp a                                          ; $67bd: $bf
    ldh [$b2], a                                  ; $67be: $e0 $b2
    dec hl                                        ; $67c0: $2b
    ld c, d                                       ; $67c1: $4a
    ld d, d                                       ; $67c2: $52
    ld b, l                                       ; $67c3: $45
    xor c                                         ; $67c4: $a9
    ld a, $c2                                     ; $67c5: $3e $c2
    ld b, $91                                     ; $67c7: $06 $91
    add l                                         ; $67c9: $85
    cp d                                          ; $67ca: $ba
    pop bc                                        ; $67cb: $c1
    ld c, [hl]                                    ; $67cc: $4e
    set 5, d                                      ; $67cd: $cb $ea
    ld l, b                                       ; $67cf: $68
    ret nc                                        ; $67d0: $d0

    ld h, b                                       ; $67d1: $60
    cp $82                                        ; $67d2: $fe $82
    rst $38                                       ; $67d4: $ff
    jp nz, Jump_02a_68ff                          ; $67d5: $c2 $ff $68

    ld h, [hl]                                    ; $67d8: $66
    add hl, sp                                    ; $67d9: $39
    ld b, l                                       ; $67da: $45
    dec hl                                        ; $67db: $2b
    or e                                          ; $67dc: $b3
    daa                                           ; $67dd: $27
    ld c, a                                       ; $67de: $4f
    inc sp                                        ; $67df: $33
    ld d, [hl]                                    ; $67e0: $56
    ld b, l                                       ; $67e1: $45
    push af                                       ; $67e2: $f5
    ld h, e                                       ; $67e3: $63
    sub c                                         ; $67e4: $91
    add l                                         ; $67e5: $85
    cp [hl]                                       ; $67e6: $be
    jp $cb4e                                      ; $67e7: $c3 $4e $cb


    xor h                                         ; $67ea: $ac
    adc d                                         ; $67eb: $8a
    call c, $81fe                                 ; $67ec: $dc $fe $81
    rst $38                                       ; $67ef: $ff
    call nz, Call_02a_6d6c                        ; $67f0: $c4 $6c $6d
    ld a, [hl-]                                   ; $67f3: $3a
    ld sp, hl                                     ; $67f4: $f9
    add b                                         ; $67f5: $80
    ld l, $4b                                     ; $67f6: $2e $4b
    rrca                                          ; $67f8: $0f
    ld d, [hl]                                    ; $67f9: $56
    ld b, l                                       ; $67fa: $45
    xor c                                         ; $67fb: $a9
    xor b                                         ; $67fc: $a8
    ld a, l                                       ; $67fd: $7d
    and c                                         ; $67fe: $a1
    sub c                                         ; $67ff: $91
    add l                                         ; $6800: $85
    ei                                            ; $6801: $fb
    add d                                         ; $6802: $82
    ld c, [hl]                                    ; $6803: $4e
    add $c8                                       ; $6804: $c6 $c8
    ld [hl], a                                    ; $6806: $77
    ld h, e                                       ; $6807: $63
    xor h                                         ; $6808: $ac
    add e                                         ; $6809: $83
    and d                                         ; $680a: $a2
    ld h, c                                       ; $680b: $61
    sbc c                                         ; $680c: $99
    add hl, bc                                    ; $680d: $09
    add c                                         ; $680e: $81
    ld b, b                                       ; $680f: $40
    and b                                         ; $6810: $a0
    ld [hl], c                                    ; $6811: $71
    ld [hl], c                                    ; $6812: $71
    rst $38                                       ; $6813: $ff
    ld [hl], b                                    ; $6814: $70
    ld l, [hl]                                    ; $6815: $6e
    ld a, [hl-]                                   ; $6816: $3a
    ld b, d                                       ; $6817: $42
    ld hl, $b223                                  ; $6818: $21 $23 $b2
    ld d, h                                       ; $681b: $54
    rlca                                          ; $681c: $07
    ld d, e                                       ; $681d: $53
    ld b, l                                       ; $681e: $45
    ld b, [hl]                                    ; $681f: $46
    ccf                                           ; $6820: $3f
    ld [c], a                                     ; $6821: $e2
    sub c                                         ; $6822: $91
    add l                                         ; $6823: $85
    ei                                            ; $6824: $fb
    add c                                         ; $6825: $81
    ld c, [hl]                                    ; $6826: $4e
    rst $00                                       ; $6827: $c7
    rst $38                                       ; $6828: $ff
    and e                                         ; $6829: $a3
    ldh a, [$ac]                                  ; $682a: $f0 $ac
    add e                                         ; $682c: $83
    nop                                           ; $682d: $00
    add l                                         ; $682e: $85
    jp z, Jump_02a_7fc1                           ; $682f: $ca $c1 $7f

    and b                                         ; $6832: $a0
    dec [hl]                                      ; $6833: $35
    ld a, $44                                     ; $6834: $3e $44
    inc a                                         ; $6836: $3c
    ld bc, $fb35                                  ; $6837: $01 $35 $fb
    pop bc                                        ; $683a: $c1
    db $fd                                        ; $683b: $fd
    add c                                         ; $683c: $81
    db $fc                                        ; $683d: $fc
    ld h, c                                       ; $683e: $61

jr_02a_683f:
    dec b                                         ; $683f: $05
    ld h, [hl]                                    ; $6840: $66

jr_02a_6841:
    ld c, [hl]                                    ; $6841: $4e
    ret z                                         ; $6842: $c8

    ld l, d                                       ; $6843: $6a
    ld b, d                                       ; $6844: $42
    xor h                                         ; $6845: $ac
    add h                                         ; $6846: $84
    db $ec                                        ; $6847: $ec
    inc d                                         ; $6848: $14
    ld h, b                                       ; $6849: $60
    ld d, h                                       ; $684a: $54
    and h                                         ; $684b: $a4
    xor b                                         ; $684c: $a8
    ld b, [hl]                                    ; $684d: $46
    ld a, $c0                                     ; $684e: $3e $c0
    dec [hl]                                      ; $6850: $35
    add hl, sp                                    ; $6851: $39
    xor b                                         ; $6852: $a8
    nop                                           ; $6853: $00
    add hl, sp                                    ; $6854: $39
    and b                                         ; $6855: $a0
    ld sp, hl                                     ; $6856: $f9
    and c                                         ; $6857: $a1
    cp l                                          ; $6858: $bd
    add b                                         ; $6859: $80
    ld a, [hl+]                                   ; $685a: $2a
    ld c, e                                       ; $685b: $4b
    jr c, jr_02a_68a9                             ; $685c: $38 $4b

    xor h                                         ; $685e: $ac
    adc b                                         ; $685f: $88
    ld d, h                                       ; $6860: $54
    add b                                         ; $6861: $80
    cp [hl]                                       ; $6862: $be
    ld h, c                                       ; $6863: $61
    xor l                                         ; $6864: $ad
    xor c                                         ; $6865: $a9
    ld a, $a2                                     ; $6866: $3e $a2
    add hl, sp                                    ; $6868: $39
    xor c                                         ; $6869: $a9
    ld hl, sp-$60                                 ; $686a: $f8 $a0
    ld a, $b1                                     ; $686c: $3e $b1
    add c                                         ; $686e: $81
    sbc e                                         ; $686f: $9b
    ld b, b                                       ; $6870: $40
    ld a, [hl+]                                   ; $6871: $2a
    ld b, e                                       ; $6872: $43
    cp e                                          ; $6873: $bb
    ld b, e                                       ; $6874: $43
    ld a, [hl+]                                   ; $6875: $2a
    ld b, b                                       ; $6876: $40
    jr c, jr_02a_68c0                             ; $6877: $38 $47

    ld h, h                                       ; $6879: $64
    ld h, c                                       ; $687a: $61
    xor h                                         ; $687b: $ac
    add [hl]                                      ; $687c: $86
    pop de                                        ; $687d: $d1
    ld d, h                                       ; $687e: $54
    add c                                         ; $687f: $81
    inc c                                         ; $6880: $0c
    cp [hl]                                       ; $6881: $be
    ld h, c                                       ; $6882: $61
    ld a, $a3                                     ; $6883: $3e $a3
    ld a, [hl-]                                   ; $6885: $3a
    ld b, l                                       ; $6886: $45
    ccf                                           ; $6887: $3f
    ldh [$f9], a                                  ; $6888: $e0 $f9
    add d                                         ; $688a: $82
    ld [hl], h                                    ; $688b: $74
    ld b, e                                       ; $688c: $43
    cp e                                          ; $688d: $bb
    ld b, c                                       ; $688e: $41
    ret nz                                        ; $688f: $c0

    ldh a, [rNR41]                                ; $6890: $f0 $20
    or h                                          ; $6892: $b4
    ld b, e                                       ; $6893: $43
    jr c, jr_02a_68da                             ; $6894: $38 $44

    sub d                                         ; $6896: $92
    inc h                                         ; $6897: $24
    inc b                                         ; $6898: $04
    ld b, l                                       ; $6899: $45
    add c                                         ; $689a: $81
    add e                                         ; $689b: $83
    ld a, c                                       ; $689c: $79
    ld a, [hl]                                    ; $689d: $7e
    ld [de], a                                    ; $689e: $12
    ld a, a                                       ; $689f: $7f
    add c                                         ; $68a0: $81
    ld l, d                                       ; $68a1: $6a
    ccf                                           ; $68a2: $3f
    ld [c], a                                     ; $68a3: $e2
    cp c                                          ; $68a4: $b9
    and e                                         ; $68a5: $a3
    sub a                                         ; $68a6: $97
    rst $28                                       ; $68a7: $ef
    inc hl                                        ; $68a8: $23

jr_02a_68a9:
    ld a, [hl]                                    ; $68a9: $7e
    ld b, [hl]                                    ; $68aa: $46
    ld d, c                                       ; $68ab: $51
    ld b, [hl]                                    ; $68ac: $46
    jr c, jr_02a_6841                             ; $68ad: $38 $92

    jr nz, jr_02a_68dc                            ; $68af: $20 $2b

    ld c, b                                       ; $68b1: $48
    ld b, e                                       ; $68b2: $43
    ld b, h                                       ; $68b3: $44
    add b                                         ; $68b4: $80
    ld b, l                                       ; $68b5: $45
    ld [hl], $c1                                  ; $68b6: $36 $c1
    ret nz                                        ; $68b8: $c0

    ret nz                                        ; $68b9: $c0

    ldh [rNR42], a                                ; $68ba: $e0 $21
    xor c                                         ; $68bc: $a9
    jr c, jr_02a_683f                             ; $68bd: $38 $80

    cp [hl]                                       ; $68bf: $be

jr_02a_68c0:
    jp $60eb                                      ; $68c0: $c3 $eb $60


    jr nc, jr_02a_6905                            ; $68c3: $30 $40

    sbc d                                         ; $68c5: $9a
    ld a, [hl]                                    ; $68c6: $7e
    ld b, e                                       ; $68c7: $43
    or e                                          ; $68c8: $b3

jr_02a_68c9:
    ld b, [hl]                                    ; $68c9: $46
    ret z                                         ; $68ca: $c8

    dec hl                                        ; $68cb: $2b
    ld b, l                                       ; $68cc: $45
    ld [bc], a                                    ; $68cd: $02
    ld b, h                                       ; $68ce: $44
    inc b                                         ; $68cf: $04
    ld b, l                                       ; $68d0: $45
    add b                                         ; $68d1: $80
    jp nz, Jump_000_00c1                          ; $68d2: $c2 $c1 $00

    ret nz                                        ; $68d5: $c0

    xor b                                         ; $68d6: $a8
    add hl, sp                                    ; $68d7: $39
    rra                                           ; $68d8: $1f
    dec [hl]                                      ; $68d9: $35

jr_02a_68da:
    ld h, d                                       ; $68da: $62
    ld h, e                                       ; $68db: $63

jr_02a_68dc:
    ld h, l                                       ; $68dc: $65
    ld a, l                                       ; $68dd: $7d
    db $ed                                        ; $68de: $ed
    jp Jump_02a_60a9                              ; $68df: $c3 $a9 $60


    xor h                                         ; $68e2: $ac
    inc h                                         ; $68e3: $24
    ret nz                                        ; $68e4: $c0

    or e                                          ; $68e5: $b3
    ld b, [hl]                                    ; $68e6: $46
    db $fc                                        ; $68e7: $fc
    inc bc                                        ; $68e8: $03
    sbc l                                         ; $68e9: $9d

jr_02a_68ea:
    jr nz, jr_02a_68c9                            ; $68ea: $20 $dd

    inc b                                         ; $68ec: $04
    ld d, [hl]                                    ; $68ed: $56
    ld h, b                                       ; $68ee: $60
    add b                                         ; $68ef: $80
    ld b, c                                       ; $68f0: $41
    ld a, c                                       ; $68f1: $79
    adc e                                         ; $68f2: $8b
    xor $c1                                       ; $68f3: $ee $c1
    ld h, b                                       ; $68f5: $60
    ld l, h                                       ; $68f6: $6c
    ld l, a                                       ; $68f7: $6f
    ld l, [hl]                                    ; $68f8: $6e
    ret nz                                        ; $68f9: $c0

    ret nz                                        ; $68fa: $c0

    ld h, d                                       ; $68fb: $62
    ld h, a                                       ; $68fc: $67
    dec [hl]                                      ; $68fd: $35
    inc bc                                        ; $68fe: $03

Jump_02a_68ff:
    inc a                                         ; $68ff: $3c
    ld a, a                                       ; $6900: $7f
    push af                                       ; $6901: $f5
    inc hl                                        ; $6902: $23
    db $f4                                        ; $6903: $f4
    ld b, d                                       ; $6904: $42

jr_02a_6905:
    ldh a, [rNR43]                                ; $6905: $f0 $22
    or e                                          ; $6907: $b3
    ld b, [hl]                                    ; $6908: $46
    cp a                                          ; $6909: $bf

jr_02a_690a:
    inc bc                                        ; $690a: $03
    push af                                       ; $690b: $f5
    ld [hl+], a                                   ; $690c: $22
    pop af                                        ; $690d: $f1
    cp [hl]                                       ; $690e: $be
    ld a, [de]                                    ; $690f: $1a
    ld b, c                                       ; $6910: $41
    jp nz, $81c1                                  ; $6911: $c2 $c1 $81

    push hl                                       ; $6914: $e5
    ld [hl], e                                    ; $6915: $73
    ld l, [hl]                                    ; $6916: $6e
    ld [hl], $47                                  ; $6917: $36 $47

Jump_02a_6919:
    rlca                                          ; $6919: $07
    ld c, h                                       ; $691a: $4c
    ld d, l                                       ; $691b: $55
    ld l, c                                       ; $691c: $69
    ld a, b                                       ; $691d: $78
    ld h, c                                       ; $691e: $61
    cp b                                          ; $691f: $b8
    ld b, b                                       ; $6920: $40
    ld l, l                                       ; $6921: $6d

Call_02a_6922:
    inc hl                                        ; $6922: $23
    inc sp                                        ; $6923: $33
    ld h, h                                       ; $6924: $64
    or e                                          ; $6925: $b3
    ld b, [hl]                                    ; $6926: $46
    ld h, b                                       ; $6927: $60
    cp a                                          ; $6928: $bf
    inc bc                                        ; $6929: $03
    inc c                                         ; $692a: $0c
    jr nz, jr_02a_690a                            ; $692b: $20 $dd

    ld bc, $0048                                  ; $692d: $01 $48 $00
    ld b, h                                       ; $6930: $44
    inc hl                                        ; $6931: $23
    ld a, c                                       ; $6932: $79
    adc e                                         ; $6933: $8b
    inc bc                                        ; $6934: $03
    pop bc                                        ; $6935: $c1
    ld e, a                                       ; $6936: $5f
    ld l, d                                       ; $6937: $6a
    ld a, [hl-]                                   ; $6938: $3a
    ld c, e                                       ; $6939: $4b
    ld h, b                                       ; $693a: $60
    ld h, c                                       ; $693b: $61
    ret nz                                        ; $693c: $c0

    pop hl                                        ; $693d: $e1
    add hl, sp                                    ; $693e: $39
    cp b                                          ; $693f: $b8
    ld b, d                                       ; $6940: $42
    ret nz                                        ; $6941: $c0

    jr nz, jr_02a_68ea                            ; $6942: $20 $a6

    ld d, [hl]                                    ; $6944: $56
    ld [$04bf], sp                                ; $6945: $08 $bf $04
    add l                                         ; $6948: $85
    inc b                                         ; $6949: $04
    ld c, b                                       ; $694a: $48
    ld bc, $4155                                  ; $694b: $01 $55 $41
    ld a, c                                       ; $694e: $79
    ld a, [hl]                                    ; $694f: $7e
    rst $30                                       ; $6950: $f7
    ld b, a                                       ; $6951: $47
    ld e, d                                       ; $6952: $5a
    inc a                                         ; $6953: $3c
    ret nz                                        ; $6954: $c0

    pop hl                                        ; $6955: $e1
    ld d, [hl]                                    ; $6956: $56
    ld h, c                                       ; $6957: $61
    ld h, c                                       ; $6958: $61
    add hl, sp                                    ; $6959: $39
    rra                                           ; $695a: $1f
    ld l, c                                       ; $695b: $69
    dec [hl]                                      ; $695c: $35
    inc a                                         ; $695d: $3c
    ld b, h                                       ; $695e: $44
    adc b                                         ; $695f: $88
    cp b                                          ; $6960: $b8
    ld b, h                                       ; $6961: $44
    or e                                          ; $6962: $b3
    ld c, [hl]                                    ; $6963: $4e
    cp a                                          ; $6964: $bf
    inc b                                         ; $6965: $04
    sbc $a2                                       ; $6966: $de $a2
    db $ec                                        ; $6968: $ec
    add b                                         ; $6969: $80
    ld c, d                                       ; $696a: $4a
    ld h, b                                       ; $696b: $60
    ld d, l                                       ; $696c: $55
    ld b, e                                       ; $696d: $43
    and b                                         ; $696e: $a0
    ld [hl], l                                    ; $696f: $75
    ld h, [hl]                                    ; $6970: $66
    rra                                           ; $6971: $1f
    add hl, sp                                    ; $6972: $39
    ld d, [hl]                                    ; $6973: $56
    ld d, d                                       ; $6974: $52
    ld a, [hl-]                                   ; $6975: $3a
    ld l, c                                       ; $6976: $69
    ld b, c                                       ; $6977: $41
    push hl                                       ; $6978: $e5
    jp $dec0                                      ; $6979: $c3 $c0 $de


    inc hl                                        ; $697c: $23
    call nc, $0fbf                                ; $697d: $d4 $bf $0f
    ld [bc], a                                    ; $6980: $02
    ld b, [hl]                                    ; $6981: $46
    jp nc, $e4c0                                  ; $6982: $d2 $c0 $e4

    ld d, [hl]                                    ; $6985: $56
    ld b, d                                       ; $6986: $42
    pop bc                                        ; $6987: $c1
    dec [hl]                                      ; $6988: $35
    ld l, d                                       ; $6989: $6a
    rra                                           ; $698a: $1f
    ld a, $45                                     ; $698b: $3e $45
    ld [hl], $62                                  ; $698d: $36 $62
    halt                                          ; $698f: $76
    cp c                                          ; $6990: $b9
    ld b, b                                       ; $6991: $40
    ld bc, $a7e2                                  ; $6992: $01 $e2 $a7
    inc hl                                        ; $6995: $23
    ld b, b                                       ; $6996: $40
    ld a, [hl+]                                   ; $6997: $2a
    dec b                                         ; $6998: $05
    dec [hl]                                      ; $6999: $35
    inc bc                                        ; $699a: $03
    cp a                                          ; $699b: $bf
    inc b                                         ; $699c: $04
    ld [bc], a                                    ; $699d: $02
    ld b, l                                       ; $699e: $45

jr_02a_699f:
    ld e, h                                       ; $699f: $5c
    nop                                           ; $69a0: $00
    jp Jump_02a_4562                              ; $69a1: $c3 $62 $45


    inc b                                         ; $69a4: $04
    and c                                         ; $69a5: $a1
    ld [bc], a                                    ; $69a6: $02
    ld b, c                                       ; $69a7: $41
    add b                                         ; $69a8: $80
    add hl, sp                                    ; $69a9: $39
    add d                                         ; $69aa: $82
    pop bc                                        ; $69ab: $c1
    ret nz                                        ; $69ac: $c0

    push hl                                       ; $69ad: $e5
    or a                                          ; $69ae: $b7
    ld hl, $00e4                                  ; $69af: $21 $e4 $00
    ld a, [hl]                                    ; $69b2: $7e
    jp nz, Jump_000_00b0                          ; $69b3: $c2 $b0 $00

    sub c                                         ; $69b6: $91
    pop de                                        ; $69b7: $d1
    ld a, [bc]                                    ; $69b8: $0a
    pop bc                                        ; $69b9: $c1
    cp a                                          ; $69ba: $bf
    inc b                                         ; $69bb: $04

jr_02a_69bc:
    ld [bc], a                                    ; $69bc: $02
    ld c, h                                       ; $69bd: $4c
    add b                                         ; $69be: $80
    add h                                         ; $69bf: $84
    add d                                         ; $69c0: $82
    ld b, c                                       ; $69c1: $41
    ret nz                                        ; $69c2: $c0

    xor b                                         ; $69c3: $a8
    ld [$e042], sp                                ; $69c4: $08 $42 $e0
    pop bc                                        ; $69c7: $c1
    jp RST_30                                     ; $69c8: $c3 $30 $00


    ld a, e                                       ; $69cb: $7b
    ld l, $01                                     ; $69cc: $2e $01
    and e                                         ; $69ce: $a3
    ld [bc], a                                    ; $69cf: $02
    or h                                          ; $69d0: $b4
    add h                                         ; $69d1: $84
    ld a, [bc]                                    ; $69d2: $0a
    ret nz                                        ; $69d3: $c0

    call nz, Call_000_04bf                        ; $69d4: $c4 $bf $04
    ld [bc], a                                    ; $69d7: $02
    ld c, d                                       ; $69d8: $4a
    xor b                                         ; $69d9: $a8
    inc bc                                        ; $69da: $03
    jr nz, jr_02a_699f                            ; $69db: $20 $c2

    ret nz                                        ; $69dd: $c0

    ld [bc], a                                    ; $69de: $02

Jump_02a_69df:
    ret nz                                        ; $69df: $c0

    ld [hl], $a9                                  ; $69e0: $36 $a9
    rst $38                                       ; $69e2: $ff
    inc a                                         ; $69e3: $3c
    ld l, e                                       ; $69e4: $6b
    ld l, h                                       ; $69e5: $6c
    ld l, h                                       ; $69e6: $6c
    ld [hl], d                                    ; $69e7: $72
    add [hl]                                      ; $69e8: $86

jr_02a_69e9:
    add l                                         ; $69e9: $85
    add h                                         ; $69ea: $84
    inc de                                        ; $69eb: $13
    ld a, c                                       ; $69ec: $79
    ld a, [hl]                                    ; $69ed: $7e
    dec hl                                        ; $69ee: $2b
    add d                                         ; $69ef: $82
    ld hl, sp-$5c                                 ; $69f0: $f8 $a4
    sbc c                                         ; $69f2: $99
    or h                                          ; $69f3: $b4
    add e                                         ; $69f4: $83
    cp a                                          ; $69f5: $bf
    rlca                                          ; $69f6: $07
    or h                                          ; $69f7: $b4
    ld l, b                                       ; $69f8: $68
    xor $00                                       ; $69f9: $ee $00
    ld hl, $8584                                  ; $69fb: $21 $84 $85
    ld [hl], c                                    ; $69fe: $71
    jp Jump_02a_4562                              ; $69ff: $c3 $62 $45


    ld b, l                                       ; $6a02: $45
    ld a, [hl-]                                   ; $6a03: $3a
    cpl                                           ; $6a04: $2f
    ld l, [hl]                                    ; $6a05: $6e
    ld [hl], b                                    ; $6a06: $70
    ld [hl], b                                    ; $6a07: $70
    ld l, [hl]                                    ; $6a08: $6e
    ld a, [$8040]                                 ; $6a09: $fa $40 $80
    rst $30                                       ; $6a0c: $f7
    inc h                                         ; $6a0d: $24
    ld hl, sp-$5d                                 ; $6a0e: $f8 $a3
    ld l, h                                       ; $6a10: $6c
    pop af                                        ; $6a11: $f1
    ld bc, $684f                                  ; $6a12: $01 $4f $68
    ld b, [hl]                                    ; $6a15: $46
    ld b, [hl]                                    ; $6a16: $46
    or h                                          ; $6a17: $b4
    ld h, a                                       ; $6a18: $67
    push bc                                       ; $6a19: $c5
    add $3e                                       ; $6a1a: $c6 $3e
    and c                                         ; $6a1c: $a1
    nop                                           ; $6a1d: $00
    ld bc, $08e2                                  ; $6a1e: $01 $e2 $08
    add c                                         ; $6a21: $81
    rst $30                                       ; $6a22: $f7
    push hl                                       ; $6a23: $e5
    ret nz                                        ; $6a24: $c0

    ldh [$f7], a                                  ; $6a25: $e0 $f7
    jr nz, jr_02a_69e9                            ; $6a27: $20 $c0

    jp hl                                         ; $6a29: $e9


    ld d, b                                       ; $6a2a: $50
    and e                                         ; $6a2b: $a3
    add hl, bc                                    ; $6a2c: $09
    ld h, h                                       ; $6a2d: $64
    inc [hl]                                      ; $6a2e: $34
    or h                                          ; $6a2f: $b4
    ld h, a                                       ; $6a30: $67
    ld a, a                                       ; $6a31: $7f
    ld h, b                                       ; $6a32: $60
    sbc e                                         ; $6a33: $9b
    push bc                                       ; $6a34: $c5
    ld h, e                                       ; $6a35: $63
    jr c, jr_02a_6a6f                             ; $6a36: $38 $37

    ld [bc], a                                    ; $6a38: $02
    jr nz, jr_02a_69bc                            ; $6a39: $20 $81

    ld h, b                                       ; $6a3b: $60
    ld h, [hl]                                    ; $6a3c: $66
    ld a, d                                       ; $6a3d: $7a
    ld h, b                                       ; $6a3e: $60
    ld a, [hl-]                                   ; $6a3f: $3a
    ld b, l                                       ; $6a40: $45
    add b                                         ; $6a41: $80
    ldh [rBCPD], a                                ; $6a42: $e0 $69
    ld [bc], a                                    ; $6a44: $02
    adc d                                         ; $6a45: $8a
    ld a, l                                       ; $6a46: $7d
    ld [hl-], a                                   ; $6a47: $32
    inc hl                                        ; $6a48: $23
    jr nz, jr_02a_6a50                            ; $6a49: $20 $05

    inc h                                         ; $6a4b: $24
    add hl, bc                                    ; $6a4c: $09
    ld h, l                                       ; $6a4d: $65
    ld [bc], a                                    ; $6a4e: $02
    ld b, a                                       ; $6a4f: $47

jr_02a_6a50:
    ld a, a                                       ; $6a50: $7f
    ld h, c                                       ; $6a51: $61
    ret c                                         ; $6a52: $d8

    add b                                         ; $6a53: $80
    ld [hl], $c2                                  ; $6a54: $36 $c2
    ldh [$ba], a                                  ; $6a56: $e0 $ba
    dec b                                         ; $6a58: $05
    ld l, $39                                     ; $6a59: $2e $39
    ld h, b                                       ; $6a5b: $60
    ld [hl], $82                                  ; $6a5c: $36 $82
    add e                                         ; $6a5e: $83
    adc [hl]                                      ; $6a5f: $8e
    inc h                                         ; $6a60: $24
    add c                                         ; $6a61: $81
    ld a, e                                       ; $6a62: $7b
    add b                                         ; $6a63: $80
    ld a, [hl-]                                   ; $6a64: $3a
    add d                                         ; $6a65: $82
    ldh [rTIMA], a                                ; $6a66: $e0 $05
    ld [hl+], a                                   ; $6a68: $22
    add hl, bc                                    ; $6a69: $09
    ld h, l                                       ; $6a6a: $65
    ld [bc], a                                    ; $6a6b: $02
    ld b, [hl]                                    ; $6a6c: $46
    and b                                         ; $6a6d: $a0
    nop                                           ; $6a6e: $00

jr_02a_6a6f:
    ld b, c                                       ; $6a6f: $41
    ld b, b                                       ; $6a70: $40
    xor b                                         ; $6a71: $a8
    xor c                                         ; $6a72: $a9
    xor b                                         ; $6a73: $a8
    db $e4                                        ; $6a74: $e4
    add $23                                       ; $6a75: $c6 $23
    ld [hl], $e5                                  ; $6a77: $36 $e5
    inc a                                         ; $6a79: $3c
    or c                                          ; $6a7a: $b1
    ld b, b                                       ; $6a7b: $40
    rst $38                                       ; $6a7c: $ff
    ldh [$87], a                                  ; $6a7d: $e0 $87
    add e                                         ; $6a7f: $83
    add e                                         ; $6a80: $83
    inc bc                                        ; $6a81: $03
    ld l, l                                       ; $6a82: $6d
    xor c                                         ; $6a83: $a9
    ld e, [hl]                                    ; $6a84: $5e
    and c                                         ; $6a85: $a1
    ld a, d                                       ; $6a86: $7a
    ld h, b                                       ; $6a87: $60
    ld a, a                                       ; $6a88: $7f
    and d                                         ; $6a89: $a2
    add hl, bc                                    ; $6a8a: $09
    ld h, l                                       ; $6a8b: $65
    rst $20                                       ; $6a8c: $e7
    ld c, b                                       ; $6a8d: $48
    ccf                                           ; $6a8e: $3f
    add b                                         ; $6a8f: $80
    sbc c                                         ; $6a90: $99
    xor c                                         ; $6a91: $a9
    sub $a0                                       ; $6a92: $d6 $a0
    ld b, a                                       ; $6a94: $47
    inc b                                         ; $6a95: $04
    ld b, [hl]                                    ; $6a96: $46
    ld a, c                                       ; $6a97: $79
    ld a, c                                       ; $6a98: $79
    nop                                           ; $6a99: $00
    scf                                           ; $6a9a: $37
    ld bc, $7f46                                  ; $6a9b: $01 $46 $7f
    ld b, l                                       ; $6a9e: $45
    ld b, e                                       ; $6a9f: $43
    ld c, b                                       ; $6aa0: $48
    ld c, b                                       ; $6aa1: $48
    add h                                         ; $6aa2: $84
    add l                                         ; $6aa3: $85
    add l                                         ; $6aa4: $85
    scf                                           ; $6aa5: $37
    and b                                         ; $6aa6: $a0
    pop bc                                        ; $6aa7: $c1
    sbc c                                         ; $6aa8: $99
    add c                                         ; $6aa9: $81
    ld h, h                                       ; $6aaa: $64
    add hl, bc                                    ; $6aab: $09
    ld l, e                                       ; $6aac: $6b
    pop bc                                        ; $6aad: $c1
    ld l, d                                       ; $6aae: $6a
    sub l                                         ; $6aaf: $95
    and c                                         ; $6ab0: $a1
    ld d, e                                       ; $6ab1: $53
    and d                                         ; $6ab2: $a2
    ld a, c                                       ; $6ab3: $79
    ld a, [hl]                                    ; $6ab4: $7e
    ei                                            ; $6ab5: $fb
    inc a                                         ; $6ab6: $3c
    ld l, b                                       ; $6ab7: $68
    cp a                                          ; $6ab8: $bf
    ldh [$39], a                                  ; $6ab9: $e0 $39
    xor b                                         ; $6abb: $a8
    ld b, [hl]                                    ; $6abc: $46
    ld c, d                                       ; $6abd: $4a
    ld e, l                                       ; $6abe: $5d
    rlca                                          ; $6abf: $07
    ld h, b                                       ; $6ac0: $60
    ld d, h                                       ; $6ac1: $54
    ld b, h                                       ; $6ac2: $44
    inc [hl]                                      ; $6ac3: $34
    inc b                                         ; $6ac4: $04
    jr c, @+$09                                   ; $6ac5: $38 $07

    add hl, bc                                    ; $6ac7: $09
    ld h, l                                       ; $6ac8: $65
    rst $20                                       ; $6ac9: $e7
    ld b, d                                       ; $6aca: $42
    rst $30                                       ; $6acb: $f7
    ld b, b                                       ; $6acc: $40
    ldh [$c1], a                                  ; $6acd: $e0 $c1
    ld h, h                                       ; $6acf: $64
    add b                                         ; $6ad0: $80
    pop hl                                        ; $6ad1: $e1
    ld c, $82                                     ; $6ad2: $0e $82
    or [hl]                                       ; $6ad4: $b6
    and c                                         ; $6ad5: $a1
    cp a                                          ; $6ad6: $bf
    ldh [$39], a                                  ; $6ad7: $e0 $39
    xor c                                         ; $6ad9: $a9
    ld b, [hl]                                    ; $6ada: $46
    rrca                                          ; $6adb: $0f
    ld c, d                                       ; $6adc: $4a
    ld d, [hl]                                    ; $6add: $56
    inc l                                         ; $6ade: $2c
    inc l                                         ; $6adf: $2c
    pop af                                        ; $6ae0: $f1
    ld bc, $62c0                                  ; $6ae1: $01 $c0 $62
    jr c, jr_02a_6aee                             ; $6ae4: $38 $08

    or a                                          ; $6ae6: $b7
    add h                                         ; $6ae7: $84
    add b                                         ; $6ae8: $80
    rst $20                                       ; $6ae9: $e7
    ld b, c                                       ; $6aea: $41
    ld b, l                                       ; $6aeb: $45
    inc bc                                        ; $6aec: $03
    ld c, l                                       ; $6aed: $4d

jr_02a_6aee:
    inc bc                                        ; $6aee: $03
    ret nc                                        ; $6aef: $d0

    ld h, c                                       ; $6af0: $61
    add hl, sp                                    ; $6af1: $39
    ld [hl+], a                                   ; $6af2: $22
    ld a, b                                       ; $6af3: $78
    nop                                           ; $6af4: $00
    cp c                                          ; $6af5: $b9
    ld b, c                                       ; $6af6: $41
    ld b, l                                       ; $6af7: $45
    cpl                                           ; $6af8: $2f
    ld b, e                                       ; $6af9: $43
    ld a, [hl+]                                   ; $6afa: $2a
    jr nz, jr_02a_6b27                            ; $6afb: $20 $2a

    add b                                         ; $6afd: $80
    pop hl                                        ; $6afe: $e1
    sbc c                                         ; $6aff: $99
    sbc h                                         ; $6b00: $9c
    ld hl, $1338                                  ; $6b01: $21 $38 $13
    ld h, h                                       ; $6b04: $64
    ld b, l                                       ; $6b05: $45
    nop                                           ; $6b06: $00
    ld e, c                                       ; $6b07: $59
    ld [bc], a                                    ; $6b08: $02
    xor c                                         ; $6b09: $a9
    cp a                                          ; $6b0a: $bf
    ret nz                                        ; $6b0b: $c0

    db $10                                        ; $6b0c: $10
    and h                                         ; $6b0d: $a4
    add b                                         ; $6b0e: $80
    ld b, [hl]                                    ; $6b0f: $46
    ld hl, sp+$41                                 ; $6b10: $f8 $41
    rst $38                                       ; $6b12: $ff
    ld l, d                                       ; $6b13: $6a
    dec [hl]                                      ; $6b14: $35
    ld b, d                                       ; $6b15: $42
    ld c, d                                       ; $6b16: $4a
    ld d, [hl]                                    ; $6b17: $56
    ld a, [hl+]                                   ; $6b18: $2a
    ld a, [hl+]                                   ; $6b19: $2a
    ld c, e                                       ; $6b1a: $4b
    dec b                                         ; $6b1b: $05
    ld d, l                                       ; $6b1c: $55
    jp nz, $9980                                  ; $6b1d: $c2 $80 $99

    inc de                                        ; $6b20: $13
    ld h, b                                       ; $6b21: $60
    jr c, jr_02a_6b2e                             ; $6b22: $38 $0a

    or h                                          ; $6b24: $b4
    ld c, d                                       ; $6b25: $4a
    inc bc                                        ; $6b26: $03

jr_02a_6b27:
    ld b, c                                       ; $6b27: $41
    rst $10                                       ; $6b28: $d7
    and b                                         ; $6b29: $a0
    ldh a, [rHDMA2]                               ; $6b2a: $f0 $52
    ld h, e                                       ; $6b2c: $63
    sbc b                                         ; $6b2d: $98

jr_02a_6b2e:
    ld h, b                                       ; $6b2e: $60
    ld c, b                                       ; $6b2f: $48
    ret nz                                        ; $6b30: $c0

    scf                                           ; $6b31: $37
    ld bc, $443c                                  ; $6b32: $01 $3c $44
    ld c, d                                       ; $6b35: $4a
    ld h, b                                       ; $6b36: $60
    ld h, a                                       ; $6b37: $67
    ld e, l                                       ; $6b38: $5d
    ld e, l                                       ; $6b39: $5d
    ld h, b                                       ; $6b3a: $60
    ret nz                                        ; $6b3b: $c0

    ldh [rPCM34], a                               ; $6b3c: $e0 $77
    nop                                           ; $6b3e: $00
    ret                                           ; $6b3f: $c9


Call_02a_6b40:
    jp z, $0838                                   ; $6b40: $ca $38 $08

    ldh [rHDMA4], a                               ; $6b43: $e0 $54
    inc hl                                        ; $6b45: $23
    ld [bc], a                                    ; $6b46: $02
    inc h                                         ; $6b47: $24
    ld h, h                                       ; $6b48: $64
    ld h, d                                       ; $6b49: $62
    jp $f9e7                                      ; $6b4a: $c3 $e7 $f9


    ld bc, $836f                                  ; $6b4d: $01 $6f $83
    ld b, [hl]                                    ; $6b50: $46
    dec e                                         ; $6b51: $1d
    add hl, sp                                    ; $6b52: $39
    cp c                                          ; $6b53: $b9
    nop                                           ; $6b54: $00
    ld b, l                                       ; $6b55: $45
    ld b, l                                       ; $6b56: $45
    ld d, e                                       ; $6b57: $53
    rst $38                                       ; $6b58: $ff
    ldh [$37], a                                  ; $6b59: $e0 $37
    ld hl, $61a0                                  ; $6b5b: $21 $a0 $61
    add b                                         ; $6b5e: $80
    jr c, @+$0a                                   ; $6b5f: $38 $08

    ret nz                                        ; $6b61: $c0

    push hl                                       ; $6b62: $e5
    ld [bc], a                                    ; $6b63: $02
    ld [hl+], a                                   ; $6b64: $22
    and h                                         ; $6b65: $a4
    ld h, h                                       ; $6b66: $64
    ld b, h                                       ; $6b67: $44
    call nz, Call_02a_62d2                        ; $6b68: $c4 $d2 $62
    rlca                                          ; $6b6b: $07
    pop bc                                        ; $6b6c: $c1
    ld [hl], b                                    ; $6b6d: $70
    ld bc, $3e6e                                  ; $6b6e: $01 $6e $3e
    ld [hl+], a                                   ; $6b71: $22
    ld b, d                                       ; $6b72: $42
    ld h, l                                       ; $6b73: $65
    jp nz, Jump_000_3840                          ; $6b74: $c2 $40 $38

    rlca                                          ; $6b77: $07
    ld b, $43                                     ; $6b78: $06 $43
    ld sp, hl                                     ; $6b7a: $f9
    and [hl]                                      ; $6b7b: $a6
    nop                                           ; $6b7c: $00
    db $e4                                        ; $6b7d: $e4
    nop                                           ; $6b7e: $00
    call nc, $b746                                ; $6b7f: $d4 $46 $b7
    inc bc                                        ; $6b82: $03
    nop                                           ; $6b83: $00
    ld b, h                                       ; $6b84: $44
    and c                                         ; $6b85: $a1
    ld h, $38                                     ; $6b86: $26 $38
    ld [$23b3], sp                                ; $6b88: $08 $b3 $23
    ld [bc], a                                    ; $6b8b: $02
    ld h, $80                                     ; $6b8c: $26 $80
    jp Jump_000_3e00                              ; $6b8e: $c3 $00 $3e


    jp hl                                         ; $6b91: $e9


    halt                                          ; $6b92: $76
    ld bc, $e8c1                                  ; $6b93: $01 $c1 $e8
    ret nz                                        ; $6b96: $c0

    ret nz                                        ; $6b97: $c0

    jr c, jr_02a_6ba4                             ; $6b98: $38 $0a

    or e                                          ; $6b9a: $b3
    ld [hl+], a                                   ; $6b9b: $22
    ld sp, hl                                     ; $6b9c: $f9
    and a                                         ; $6b9d: $a7
    add b                                         ; $6b9e: $80
    jp $c104                                      ; $6b9f: $c3 $04 $c1


    db $eb                                        ; $6ba2: $eb
    adc d                                         ; $6ba3: $8a

jr_02a_6ba4:
    add hl, bc                                    ; $6ba4: $09
    xor b                                         ; $6ba5: $a8
    ret nz                                        ; $6ba6: $c0

    ret nz                                        ; $6ba7: $c0

    dec b                                         ; $6ba8: $05
    jr z, @+$6c                                   ; $6ba9: $28 $6a

    ld b, a                                       ; $6bab: $47
    or b                                          ; $6bac: $b0
    ld b, d                                       ; $6bad: $42
    ld b, e                                       ; $6bae: $43
    add e                                         ; $6baf: $83
    inc e                                         ; $6bb0: $1c
    cp $c7                                        ; $6bb1: $fe $c7
    cp b                                          ; $6bb3: $b8
    rst $28                                       ; $6bb4: $ef
    xor c                                         ; $6bb5: $a9
    sub a                                         ; $6bb6: $97
    sbc d                                         ; $6bb7: $9a
    sub c                                         ; $6bb8: $91
    ld [bc], a                                    ; $6bb9: $02
    ld a, [hl]                                    ; $6bba: $7e
    and a                                         ; $6bbb: $a7
    daa                                           ; $6bbc: $27
    ld c, b                                       ; $6bbd: $48
    ld a, c                                       ; $6bbe: $79
    jp nc, $e033                                  ; $6bbf: $d2 $33 $e0

    ld b, b                                       ; $6bc2: $40
    and h                                         ; $6bc3: $a4
    ld b, c                                       ; $6bc4: $41
    ld b, c                                       ; $6bc5: $41
    scf                                           ; $6bc6: $37
    scf                                           ; $6bc7: $37
    db $fc                                        ; $6bc8: $fc
    rst $28                                       ; $6bc9: $ef
    pop bc                                        ; $6bca: $c1
    ld b, l                                       ; $6bcb: $45
    dec b                                         ; $6bcc: $05
    ld h, c                                       ; $6bcd: $61
    sub c                                         ; $6bce: $91
    inc b                                         ; $6bcf: $04
    rst $38                                       ; $6bd0: $ff
    nop                                           ; $6bd1: $00
    bit 0, h                                      ; $6bd2: $cb $44
    push hl                                       ; $6bd4: $e5
    dec h                                         ; $6bd5: $25
    db $d3                                        ; $6bd6: $d3
    call nc, $e6dc                                ; $6bd7: $d4 $dc $e6
    ld bc, $4262                                  ; $6bda: $01 $62 $42
    xor b                                         ; $6bdd: $a8
    sbc [hl]                                      ; $6bde: $9e
    ld h, h                                       ; $6bdf: $64

Jump_02a_6be0:
    rst $38                                       ; $6be0: $ff
    ldh a, [$9f]                                  ; $6be1: $f0 $9f
    ld b, d                                       ; $6be3: $42
    ld [hl], $84                                  ; $6be4: $36 $84
    ld hl, $d0cf                                  ; $6be6: $21 $cf $d0
    add l                                         ; $6be9: $85
    ld h, d                                       ; $6bea: $62
    cp d                                          ; $6beb: $ba
    or a                                          ; $6bec: $b7
    bit 1, b                                      ; $6bed: $cb $48
    ld [c], a                                     ; $6bef: $e2
    dec l                                         ; $6bf0: $2d
    cp a                                          ; $6bf1: $bf
    xor c                                         ; $6bf2: $a9
    ld l, c                                       ; $6bf3: $69
    sbc l                                         ; $6bf4: $9d
    dec [hl]                                      ; $6bf5: $35
    dec [hl]                                      ; $6bf6: $35
    sbc l                                         ; $6bf7: $9d
    db $fc                                        ; $6bf8: $fc
    db $ed                                        ; $6bf9: $ed
    ld l, d                                       ; $6bfa: $6a
    sbc c                                         ; $6bfb: $99
    ld b, b                                       ; $6bfc: $40
    inc b                                         ; $6bfd: $04
    ld b, e                                       ; $6bfe: $43
    push de                                       ; $6bff: $d5
    ld [bc], a                                    ; $6c00: $02
    cp d                                          ; $6c01: $ba
    or a                                          ; $6c02: $b7
    bit 1, b                                      ; $6c03: $cb $48
    cpl                                           ; $6c05: $2f
    ld b, $d1                                     ; $6c06: $06 $d1
    ld d, d                                       ; $6c08: $52
    ld a, $a3                                     ; $6c09: $3e $a3
    ld b, d                                       ; $6c0b: $42
    adc c                                         ; $6c0c: $89
    ld b, c                                       ; $6c0d: $41
    db $fd                                        ; $6c0e: $fd
    xor $6a                                       ; $6c0f: $ee $6a
    add b                                         ; $6c11: $80
    ld [c], a                                     ; $6c12: $e2
    jp nc, Jump_02a_6385                          ; $6c13: $d2 $85 $63

    jp $b9be                                      ; $6c16: $c3 $be $b9


    bit 1, b                                      ; $6c19: $cb $48
    or h                                          ; $6c1b: $b4
    inc h                                         ; $6c1c: $24
    pop af                                        ; $6c1d: $f1
    add c                                         ; $6c1e: $81
    cp $82                                        ; $6c1f: $fe $82
    ld b, b                                       ; $6c21: $40
    ld l, e                                       ; $6c22: $6b
    call z, Call_02a_40bf                         ; $6c23: $cc $bf $40
    db $fd                                        ; $6c26: $fd
    xor $6d                                       ; $6c27: $ee $6d
    ld b, b                                       ; $6c29: $40
    inc b                                         ; $6c2a: $04
    add e                                         ; $6c2b: $83
    add l                                         ; $6c2c: $85
    ld h, d                                       ; $6c2d: $62
    pop bc                                        ; $6c2e: $c1
    cp d                                          ; $6c2f: $ba
    ldh a, [$cb]                                  ; $6c30: $f0 $cb
    ld b, a                                       ; $6c32: $47
    sub l                                         ; $6c33: $95
    ld h, e                                       ; $6c34: $63
    ld l, $62                                     ; $6c35: $2e $62
    cp a                                          ; $6c37: $bf
    inc bc                                        ; $6c38: $03
    ld b, l                                       ; $6c39: $45
    scf                                           ; $6c3a: $37
    dec a                                         ; $6c3b: $3d
    jr c, @-$63                                   ; $6c3c: $38 $9b

    jr c, jr_02a_6c7d                             ; $6c3e: $38 $3d

    db $fc                                        ; $6c40: $fc
    db $ed                                        ; $6c41: $ed
    xor b                                         ; $6c42: $a8
    ld b, l                                       ; $6c43: $45
    inc b                                         ; $6c44: $04
    add e                                         ; $6c45: $83
    inc b                                         ; $6c46: $04
    ld [hl+], a                                   ; $6c47: $22
    jp $c7e0                                      ; $6c48: $c3 $e0 $c7


    jr nz, @-$33                                  ; $6c4b: $20 $cb

    ld b, l                                       ; $6c4d: $45
    ld d, l                                       ; $6c4e: $55
    ld h, e                                       ; $6c4f: $63
    ld l, $62                                     ; $6c50: $2e $62
    cp [hl]                                       ; $6c52: $be
    ld h, l                                       ; $6c53: $65
    ld b, l                                       ; $6c54: $45
    ld b, e                                       ; $6c55: $43
    ld b, e                                       ; $6c56: $43
    nop                                           ; $6c57: $00
    ld c, h                                       ; $6c58: $4c
    add b                                         ; $6c59: $80
    db $fc                                        ; $6c5a: $fc
    db $eb                                        ; $6c5b: $eb
    ld b, e                                       ; $6c5c: $43
    ret nz                                        ; $6c5d: $c0

    ld a, c                                       ; $6c5e: $79
    ld [$20c7], sp                                ; $6c5f: $08 $c7 $20
    bit 0, l                                      ; $6c62: $cb $45
    db $fd                                        ; $6c64: $fd
    xor b                                         ; $6c65: $a8
    ld h, [hl]                                    ; $6c66: $66
    jr nz, @+$35                                  ; $6c67: $20 $33

    sbc d                                         ; $6c69: $9a
    sbc b                                         ; $6c6a: $98
    rst $38                                       ; $6c6b: $ff
    ld [c], a                                     ; $6c6c: $e2
    or [hl]                                       ; $6c6d: $b6
    ld h, e                                       ; $6c6e: $63
    ld b, [hl]                                    ; $6c6f: $46
    sub a                                         ; $6c70: $97
    ld a, [c]                                     ; $6c71: $f2
    db $e3                                        ; $6c72: $e3
    db $ec                                        ; $6c73: $ec
    ld [c], a                                     ; $6c74: $e2
    ld bc, $119a                                  ; $6c75: $01 $9a $11
    and h                                         ; $6c78: $a4
    jp c, $0e40                                   ; $6c79: $da $40 $0e

    ld h, d                                       ; $6c7c: $62

jr_02a_6c7d:
    bit 0, h                                      ; $6c7d: $cb $44
    ei                                            ; $6c7f: $fb
    ld l, d                                       ; $6c80: $6a
    ld hl, $f7c4                                  ; $6c81: $21 $c4 $f7
    ld b, d                                       ; $6c84: $42
    nop                                           ; $6c85: $00
    ld b, a                                       ; $6c86: $47
    and b                                         ; $6c87: $a0
    adc l                                         ; $6c88: $8d
    ld [$a511], a                                 ; $6c89: $ea $11 $a5
    add h                                         ; $6c8c: $84
    ld a, [hl+]                                   ; $6c8d: $2a
    ld a, a                                       ; $6c8e: $7f
    and c                                         ; $6c8f: $a1
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    rst $38                                       ; $6c93: $ff
    ld l, [hl]                                    ; $6c94: $6e
    ld l, $4e                                     ; $6c95: $2e $4e
    ld c, $4d                                     ; $6c97: $0e $4d
    ld c, l                                       ; $6c99: $4d
    ld c, l                                       ; $6c9a: $4d
    ld l, $ff                                     ; $6c9b: $2e $ff
    ld l, $2e                                     ; $6c9d: $2e $2e
    ld c, $2e                                     ; $6c9f: $0e $2e
    ld c, $0e                                     ; $6ca1: $0e $0e
    ld c, l                                       ; $6ca3: $4d
    dec c                                         ; $6ca4: $0d
    ld b, a                                       ; $6ca5: $47
    dec c                                         ; $6ca6: $0d
    ld c, l                                       ; $6ca7: $4d
    dec c                                         ; $6ca8: $0d
    pop af                                        ; $6ca9: $f1
    ldh [$fc], a                                  ; $6caa: $e0 $fc
    db $e4                                        ; $6cac: $e4
    ld a, [c]                                     ; $6cad: $f2
    ldh [$6e], a                                  ; $6cae: $e0 $6e
    db $eb                                        ; $6cb0: $eb
    ldh [$60], a                                  ; $6cb1: $e0 $60
    ldh a, [$e3]                                  ; $6cb3: $f0 $e3
    call c, $dde1                                 ; $6cb5: $dc $e1 $dd
    ldh [$fe], a                                  ; $6cb8: $e0 $fe
    ldh [$dd], a                                  ; $6cba: $e0 $dd
    ldh [$0d], a                                  ; $6cbc: $e0 $0d
    ld l, l                                       ; $6cbe: $6d
    ld a, [c]                                     ; $6cbf: $f2
    pop hl                                        ; $6cc0: $e1
    daa                                           ; $6cc1: $27
    ld c, [hl]                                    ; $6cc2: $4e
    ld c, $4e                                     ; $6cc3: $0e $4e
    db $ed                                        ; $6cc5: $ed
    pop hl                                        ; $6cc6: $e1
    ret nz                                        ; $6cc7: $c0

    and $6d                                       ; $6cc8: $e6 $6d
    ret nz                                        ; $6cca: $c0

    pop hl                                        ; $6ccb: $e1
    cp h                                          ; $6ccc: $bc
    ldh [rNR21], a                                ; $6ccd: $e0 $16
    push bc                                       ; $6ccf: $c5
    pop hl                                        ; $6cd0: $e1
    ld c, l                                       ; $6cd1: $4d
    dec c                                         ; $6cd2: $0d
    or d                                          ; $6cd3: $b2
    pop hl                                        ; $6cd4: $e1
    dec c                                         ; $6cd5: $0d
    xor b                                         ; $6cd6: $a8
    ldh [$b7], a                                  ; $6cd7: $e0 $b7
    db $e3                                        ; $6cd9: $e3
    ret nz                                        ; $6cda: $c0

    db $eb                                        ; $6cdb: $eb
    push bc                                       ; $6cdc: $c5
    ld c, l                                       ; $6cdd: $4d
    ret nz                                        ; $6cde: $c0

    ldh [$6e], a                                  ; $6cdf: $e0 $6e
    add h                                         ; $6ce1: $84
    pop hl                                        ; $6ce2: $e1
    adc d                                         ; $6ce3: $8a
    ld [c], a                                     ; $6ce4: $e2
    pop af                                        ; $6ce5: $f1
    ld [c], a                                     ; $6ce6: $e2
    ld c, $6d                                     ; $6ce7: $0e $6d
    ld [hl], e                                    ; $6ce9: $73
    ld l, l                                       ; $6cea: $6d
    ld l, l                                       ; $6ceb: $6d
    add l                                         ; $6cec: $85
    pop hl                                        ; $6ced: $e1
    sub h                                         ; $6cee: $94
    ld [c], a                                     ; $6cef: $e2
    dec l                                         ; $6cf0: $2d
    dec c                                         ; $6cf1: $0d
    ld l, l                                       ; $6cf2: $6d
    ld [hl], d                                    ; $6cf3: $72
    ld [c], a                                     ; $6cf4: $e2
    pop bc                                        ; $6cf5: $c1
    dec c                                         ; $6cf6: $0d
    ld l, e                                       ; $6cf7: $6b
    ldh [$6f], a                                  ; $6cf8: $e0 $6f
    push hl                                       ; $6cfa: $e5
    ld e, c                                       ; $6cfb: $59
    pop hl                                        ; $6cfc: $e1
    add b                                         ; $6cfd: $80
    ldh [$60], a                                  ; $6cfe: $e0 $60
    db $e3                                        ; $6d00: $e3
    ld l, $6e                                     ; $6d01: $2e $6e

Jump_02a_6d03:
    cp b                                          ; $6d03: $b8
    ld [hl], d                                    ; $6d04: $72
    db $e4                                        ; $6d05: $e4
    add b                                         ; $6d06: $80
    db $e3                                        ; $6d07: $e3
    ld c, b                                       ; $6d08: $48
    pop hl                                        ; $6d09: $e1
    dec c                                         ; $6d0a: $0d
    ld c, l                                       ; $6d0b: $4d
    ld c, $85                                     ; $6d0c: $0e $85
    pop hl                                        ; $6d0e: $e1
    ld l, l                                       ; $6d0f: $6d
    rrca                                          ; $6d10: $0f
    dec bc                                        ; $6d11: $0b
    dec bc                                        ; $6d12: $0b
    dec bc                                        ; $6d13: $0b
    dec c                                         ; $6d14: $0d
    cp a                                          ; $6d15: $bf
    ldh [rLCDC], a                                ; $6d16: $e0 $40
    db $e3                                        ; $6d18: $e3
    dec hl                                        ; $6d19: $2b
    ld [c], a                                     ; $6d1a: $e2
    add sp, -$20                                  ; $6d1b: $e8 $e0
    jr nz, jr_02a_6d88                            ; $6d1d: $20 $69

    db $e4                                        ; $6d1f: $e4
    cp c                                          ; $6d20: $b9
    db $e3                                        ; $6d21: $e3
    dec e                                         ; $6d22: $1d
    ldh [$33], a                                  ; $6d23: $e0 $33
    pop hl                                        ; $6d25: $e1
    ret nz                                        ; $6d26: $c0

    db $e4                                        ; $6d27: $e4
    ld l, l                                       ; $6d28: $6d
    add e                                         ; $6d29: $83
    pop hl                                        ; $6d2a: $e1
    cp a                                          ; $6d2b: $bf
    db $e3                                        ; $6d2c: $e3
    ld c, l                                       ; $6d2d: $4d
    dec c                                         ; $6d2e: $0d
    jp Jump_02a_6be0                              ; $6d2f: $c3 $e0 $6b


    ld l, e                                       ; $6d32: $6b
    ret nz                                        ; $6d33: $c0

    ldh [$fb], a                                  ; $6d34: $e0 $fb
    ret nz                                        ; $6d36: $c0

    dec l                                         ; $6d37: $2d
    cp h                                          ; $6d38: $bc
    db $e4                                        ; $6d39: $e4
    add e                                         ; $6d3a: $83
    ld c, l                                       ; $6d3b: $4d
    ld c, l                                       ; $6d3c: $4d
    ld a, l                                       ; $6d3d: $7d
    db $e3                                        ; $6d3e: $e3
    cp a                                          ; $6d3f: $bf
    db $e4                                        ; $6d40: $e4
    xor b                                         ; $6d41: $a8
    push hl                                       ; $6d42: $e5
    ld a, [c]                                     ; $6d43: $f2
    push bc                                       ; $6d44: $c5
    ld c, d                                       ; $6d45: $4a
    ldh [$6d], a                                  ; $6d46: $e0 $6d
    inc e                                         ; $6d48: $1c
    db $db                                        ; $6d49: $db
    pop bc                                        ; $6d4a: $c1
    ld b, $e2                                     ; $6d4b: $06 $e2
    ld l, l                                       ; $6d4d: $6d
    ld c, e                                       ; $6d4e: $4b
    ld l, e                                       ; $6d4f: $6b
    ld [bc], a                                    ; $6d50: $02
    ldh [$fd], a                                  ; $6d51: $e0 $fd
    pop hl                                        ; $6d53: $e1
    ld a, e                                       ; $6d54: $7b
    ldh [rNR11], a                                ; $6d55: $e0 $11
    dec bc                                        ; $6d57: $0b
    ld a, [hl-]                                   ; $6d58: $3a
    ldh [rNR14], a                                ; $6d59: $e0 $14
    db $e3                                        ; $6d5b: $e3
    sbc [hl]                                      ; $6d5c: $9e
    ld [c], a                                     ; $6d5d: $e2
    ld l, l                                       ; $6d5e: $6d
    add b                                         ; $6d5f: $80
    rst $20                                       ; $6d60: $e7
    ld b, b                                       ; $6d61: $40
    pop hl                                        ; $6d62: $e1
    or d                                          ; $6d63: $b2
    call nz, $9492                                ; $6d64: $c4 $92 $94
    ret nz                                        ; $6d67: $c0

    ld c, $82                                     ; $6d68: $0e $82
    ret nz                                        ; $6d6a: $c0

    add [hl]                                      ; $6d6b: $86

Call_02a_6d6c:
    jp $846d                                      ; $6d6c: $c3 $6d $84


    ldh [$c5], a                                  ; $6d6f: $e0 $c5
    pop hl                                        ; $6d71: $e1
    dec hl                                        ; $6d72: $2b
    rlca                                          ; $6d73: $07
    dec c                                         ; $6d74: $0d
    dec c                                         ; $6d75: $0d
    ld c, e                                       ; $6d76: $4b
    push af                                       ; $6d77: $f5
    pop hl                                        ; $6d78: $e1
    ld a, [hl-]                                   ; $6d79: $3a
    pop hl                                        ; $6d7a: $e1
    ld l, $e1                                     ; $6d7b: $2e $e1
    call nc, Call_02a_59c0                        ; $6d7d: $d4 $c0 $59
    call nz, Call_02a_7270                        ; $6d80: $c4 $70 $72
    jp nz, $e940                                  ; $6d83: $c2 $40 $e9

    ld h, d                                       ; $6d86: $62
    ld [c], a                                     ; $6d87: $e2

jr_02a_6d88:
    ld b, [hl]                                    ; $6d88: $46
    jp $6d0d                                      ; $6d89: $c3 $0d $6d


    dec c                                         ; $6d8c: $0d
    ld b, l                                       ; $6d8d: $45
    ldh [$75], a                                  ; $6d8e: $e0 $75
    ld c, e                                       ; $6d90: $4b
    ei                                            ; $6d91: $fb
    ldh [$2b], a                                  ; $6d92: $e0 $2b
    ccf                                           ; $6d94: $3f
    ldh [rWX], a                                  ; $6d95: $e0 $4b
    ld c, e                                       ; $6d97: $4b
    ld c, e                                       ; $6d98: $4b
    inc sp                                        ; $6d99: $33
    ret nz                                        ; $6d9a: $c0

    ld [$e1bf], sp                                ; $6d9b: $08 $bf $e1
    call nc, $cbc5                                ; $6d9e: $d4 $c5 $cb
    pop bc                                        ; $6da1: $c1
    ld c, $8e                                     ; $6da2: $0e $8e
    ret nz                                        ; $6da4: $c0

    add b                                         ; $6da5: $80
    db $ec                                        ; $6da6: $ec
    ld [de], a                                    ; $6da7: $12
    ret nz                                        ; $6da8: $c0

    cp h                                          ; $6da9: $bc
    push bc                                       ; $6daa: $c5
    ld [bc], a                                    ; $6dab: $02
    jp z, $2be3                                   ; $6dac: $ca $e3 $2b

    ld a, a                                       ; $6daf: $7f
    ldh [$bf], a                                  ; $6db0: $e0 $bf
    ld [c], a                                     ; $6db2: $e2
    scf                                           ; $6db3: $37
    pop bc                                        ; $6db4: $c1
    cp b                                          ; $6db5: $b8
    pop bc                                        ; $6db6: $c1
    db $e3                                        ; $6db7: $e3
    and h                                         ; $6db8: $a4
    dec bc                                        ; $6db9: $0b
    pop hl                                        ; $6dba: $e1
    ld [$c000], sp                                ; $6dbb: $08 $00 $c0
    ret nc                                        ; $6dbe: $d0

    and b                                         ; $6dbf: $a0
    sbc d                                         ; $6dc0: $9a
    pop bc                                        ; $6dc1: $c1
    dec l                                         ; $6dc2: $2d
    call $4ea1                                    ; $6dc3: $cd $a1 $4e
    add $80                                       ; $6dc6: $c6 $80
    jp nz, $c007                                  ; $6dc8: $c2 $07 $c0

    dec de                                        ; $6dcb: $1b
    ld l, e                                       ; $6dcc: $6b
    dec bc                                        ; $6dcd: $0b
    rst $38                                       ; $6dce: $ff
    ret nz                                        ; $6dcf: $c0

    ld c, e                                       ; $6dd0: $4b
    ld c, e                                       ; $6dd1: $4b
    ld sp, hl                                     ; $6dd2: $f9
    pop hl                                        ; $6dd3: $e1
    halt                                          ; $6dd4: $76
    ldh [$39], a                                  ; $6dd5: $e0 $39
    ldh [$03], a                                  ; $6dd7: $e0 $03
    dec l                                         ; $6dd9: $2d
    ld l, l                                       ; $6dda: $6d
    ret nz                                        ; $6ddb: $c0

    db $eb                                        ; $6ddc: $eb
    adc h                                         ; $6ddd: $8c
    and $97                                       ; $6dde: $e6 $97
    and [hl]                                      ; $6de0: $a6
    ld a, d                                       ; $6de1: $7a
    and $0b                                       ; $6de2: $e6 $0b
    ret nz                                        ; $6de4: $c0

    ld c, e                                       ; $6de5: $4b
    ldh [rLCDC], a                                ; $6de6: $e0 $40
    adc d                                         ; $6de8: $8a
    pop hl                                        ; $6de9: $e1
    ld a, [hl]                                    ; $6dea: $7e
    ldh [$f4], a                                  ; $6deb: $e0 $f4
    ld [c], a                                     ; $6ded: $e2
    dec sp                                        ; $6dee: $3b
    ldh [$ec], a                                  ; $6def: $e0 $ec
    and c                                         ; $6df1: $a1
    and e                                         ; $6df2: $a3
    and h                                         ; $6df3: $a4
    ld l, l                                       ; $6df4: $6d
    ret nz                                        ; $6df5: $c0

    push hl                                       ; $6df6: $e5
    ld c, b                                       ; $6df7: $48
    ld e, h                                       ; $6df8: $5c
    and c                                         ; $6df9: $a1
    xor b                                         ; $6dfa: $a8
    and e                                         ; $6dfb: $a3
    xor $a1                                       ; $6dfc: $ee $a1

jr_02a_6dfe:
    ld l, [hl]                                    ; $6dfe: $6e
    ld a, [hl+]                                   ; $6dff: $2a
    ldh [$ab], a                                  ; $6e00: $e0 $ab
    and h                                         ; $6e02: $a4
    dec l                                         ; $6e03: $2d
    call z, Call_000_0ee3                         ; $6e04: $cc $e3 $0e
    ccf                                           ; $6e07: $3f
    ldh [$0b], a                                  ; $6e08: $e0 $0b
    dec l                                         ; $6e0a: $2d
    dec l                                         ; $6e0b: $2d
    db $f4                                        ; $6e0c: $f4
    pop bc                                        ; $6e0d: $c1
    ret nz                                        ; $6e0e: $c0

    ldh [$30], a                                  ; $6e0f: $e0 $30
    and b                                         ; $6e11: $a0
    and e                                         ; $6e12: $a3
    and h                                         ; $6e13: $a4
    add b                                         ; $6e14: $80
    or [hl]                                       ; $6e15: $b6
    pop hl                                        ; $6e16: $e1
    add b                                         ; $6e17: $80
    and $28                                       ; $6e18: $e6 $28
    and b                                         ; $6e1a: $a0
    ld e, b                                       ; $6e1b: $58
    and c                                         ; $6e1c: $a1
    ld h, b                                       ; $6e1d: $60
    and b                                         ; $6e1e: $a0
    db $eb                                        ; $6e1f: $eb
    pop bc                                        ; $6e20: $c1
    ld [$6dc1], a                                 ; $6e21: $ea $c1 $6d
    call nz, $c05f                                ; $6e24: $c4 $5f $c0
    adc h                                         ; $6e27: $8c
    ld [c], a                                     ; $6e28: $e2
    dec hl                                        ; $6e29: $2b
    rst $38                                       ; $6e2a: $ff
    ret nz                                        ; $6e2b: $c0

    jp $f8c0                                      ; $6e2c: $c3 $c0 $f8


    and c                                         ; $6e2f: $a1
    ld c, e                                       ; $6e30: $4b
    dec bc                                        ; $6e31: $0b
    add b                                         ; $6e32: $80
    ld l, l                                       ; $6e33: $6d
    and b                                         ; $6e34: $a0
    ret c                                         ; $6e35: $d8

    ld [c], a                                     ; $6e36: $e2
    cp h                                          ; $6e37: $bc
    and e                                         ; $6e38: $a3
    ld a, [hl]                                    ; $6e39: $7e
    jp $c2ac                                      ; $6e3a: $c3 $ac $c2


    call $b8a1                                    ; $6e3d: $cd $a1 $b8
    xor b                                         ; $6e40: $a8
    ld c, [hl]                                    ; $6e41: $4e
    ld h, b                                       ; $6e42: $60
    db $f4                                        ; $6e43: $f4
    pop bc                                        ; $6e44: $c1
    ld c, d                                       ; $6e45: $4a
    jp $c104                                      ; $6e46: $c3 $04 $c1


    ld a, [hl]                                    ; $6e49: $7e
    ret nz                                        ; $6e4a: $c0

    add d                                         ; $6e4b: $82
    pop hl                                        ; $6e4c: $e1
    ld c, e                                       ; $6e4d: $4b
    ld c, e                                       ; $6e4e: $4b
    cp c                                          ; $6e4f: $b9
    and b                                         ; $6e50: $a0
    db $10                                        ; $6e51: $10
    ld l, e                                       ; $6e52: $6b
    and d                                         ; $6e53: $a2
    db $fc                                        ; $6e54: $fc
    and d                                         ; $6e55: $a2
    inc e                                         ; $6e56: $1c
    and c                                         ; $6e57: $a1
    sub $c3                                       ; $6e58: $d6 $c3
    ld l, l                                       ; $6e5a: $6d
    jr z, jr_02a_6dfe                             ; $6e5b: $28 $a1

    add b                                         ; $6e5d: $80
    db $e4                                        ; $6e5e: $e4
    xor d                                         ; $6e5f: $aa
    add h                                         ; $6e60: $84
    ld [$c292], sp                                ; $6e61: $08 $92 $c2
    ld c, e                                       ; $6e64: $4b
    pop bc                                        ; $6e65: $c1
    ld b, c                                       ; $6e66: $41
    pop hl                                        ; $6e67: $e1
    dec hl                                        ; $6e68: $2b
    jp Jump_000_30e2                              ; $6e69: $c3 $e2 $30


    pop bc                                        ; $6e6c: $c1
    ld [hl], $a2                                  ; $6e6d: $36 $a2
    sub c                                         ; $6e6f: $91
    add a                                         ; $6e70: $87
    nop                                           ; $6e71: $00
    ld d, a                                       ; $6e72: $57
    and h                                         ; $6e73: $a4
    or $81                                        ; $6e74: $f6 $81
    ret nz                                        ; $6e76: $c0

    db $ec                                        ; $6e77: $ec
    and [hl]                                      ; $6e78: $a6
    ld [c], a                                     ; $6e79: $e2
    add b                                         ; $6e7a: $80
    and b                                         ; $6e7b: $a0
    ld b, c                                       ; $6e7c: $41
    and b                                         ; $6e7d: $a0
    ld b, $e2                                     ; $6e7e: $06 $e2
    rst $30                                       ; $6e80: $f7
    and b                                         ; $6e81: $a0
    nop                                           ; $6e82: $00

jr_02a_6e83:
    cp c                                          ; $6e83: $b9
    and d                                         ; $6e84: $a2
    adc b                                         ; $6e85: $88
    and b                                         ; $6e86: $a0
    sub b                                         ; $6e87: $90
    pop hl                                        ; $6e88: $e1
    sub c                                         ; $6e89: $91
    add h                                         ; $6e8a: $84
    ld [hl-], a                                   ; $6e8b: $32
    add e                                         ; $6e8c: $83
    scf                                           ; $6e8d: $37
    and e                                         ; $6e8e: $a3
    ld b, b                                       ; $6e8f: $40
    jp hl                                         ; $6e90: $e9


    ret nz                                        ; $6e91: $c0

    ld [c], a                                     ; $6e92: $e2
    ld bc, $0b6d                                  ; $6e93: $01 $6d $0b
    jp nz, $e2bf                                  ; $6e96: $c2 $bf $e2

    scf                                           ; $6e99: $37
    pop bc                                        ; $6e9a: $c1
    ld a, a                                       ; $6e9b: $7f
    jp nz, $c1be                                  ; $6e9c: $c2 $be $c1

    sub c                                         ; $6e9f: $91
    adc b                                         ; $6ea0: $88
    ld [hl-], a                                   ; $6ea1: $32
    add c                                         ; $6ea2: $81
    add b                                         ; $6ea3: $80
    ret z                                         ; $6ea4: $c8

    and l                                         ; $6ea5: $a5
    or a                                          ; $6ea6: $b7
    ld [c], a                                     ; $6ea7: $e2
    add b                                         ; $6ea8: $80
    rst $20                                       ; $6ea9: $e7
    ld b, b                                       ; $6eaa: $40
    add b                                         ; $6eab: $80
    ret nz                                        ; $6eac: $c0

    db $e3                                        ; $6ead: $e3
    ld a, [hl]                                    ; $6eae: $7e
    and $76                                       ; $6eaf: $e6 $76
    ret nz                                        ; $6eb1: $c0

    ld c, e                                       ; $6eb2: $4b
    inc bc                                        ; $6eb3: $03
    dec c                                         ; $6eb4: $0d
    dec l                                         ; $6eb5: $2d
    ld l, c                                       ; $6eb6: $69
    add c                                         ; $6eb7: $81
    add hl, de                                    ; $6eb8: $19
    add sp, $4e                                   ; $6eb9: $e8 $4e
    rst $00                                       ; $6ebb: $c7
    rst $30                                       ; $6ebc: $f7
    add [hl]                                      ; $6ebd: $86
    nop                                           ; $6ebe: $00
    db $e3                                        ; $6ebf: $e3
    jr z, jr_02a_6e83                             ; $6ec0: $28 $c1

    ld hl, sp+$0b                                 ; $6ec2: $f8 $0b
    jp nz, $81c4                                  ; $6ec4: $c2 $c4 $81

    add $e0                                       ; $6ec7: $c6 $e0
    ld c, e                                       ; $6ec9: $4b
    dec bc                                        ; $6eca: $0b
    dec hl                                        ; $6ecb: $2b
    ld a, [bc]                                    ; $6ecc: $0a
    ld l, d                                       ; $6ecd: $6a
    inc bc                                        ; $6ece: $03
    dec bc                                        ; $6ecf: $0b
    dec c                                         ; $6ed0: $0d
    db $eb                                        ; $6ed1: $eb
    ld h, c                                       ; $6ed2: $61
    ld e, c                                       ; $6ed3: $59
    add sp, $4e                                   ; $6ed4: $e8 $4e
    ret z                                         ; $6ed6: $c8

    ld sp, $ea85                                  ; $6ed7: $31 $85 $ea
    ld h, e                                       ; $6eda: $63
    cp $c1                                        ; $6edb: $fe $c1
    ld hl, sp-$02                                 ; $6edd: $f8 $fe
    add b                                         ; $6edf: $80

Jump_02a_6ee0:
    ret nz                                        ; $6ee0: $c0

    db $e4                                        ; $6ee1: $e4
    inc a                                         ; $6ee2: $3c
    and c                                         ; $6ee3: $a1
    ld l, e                                       ; $6ee4: $6b
    dec hl                                        ; $6ee5: $2b
    ld a, [bc]                                    ; $6ee6: $0a
    ld a, [bc]                                    ; $6ee7: $0a
    ld c, e                                       ; $6ee8: $4b
    nop                                           ; $6ee9: $00
    push af                                       ; $6eea: $f5
    ld h, b                                       ; $6eeb: $60
    ret nz                                        ; $6eec: $c0

    xor $4e                                       ; $6eed: $ee $4e
    push bc                                       ; $6eef: $c5
    inc de                                        ; $6ef0: $13
    ld h, d                                       ; $6ef1: $62
    xor h                                         ; $6ef2: $ac
    add h                                         ; $6ef3: $84
    ld a, e                                       ; $6ef4: $7b
    ld h, c                                       ; $6ef5: $61
    rst $38                                       ; $6ef6: $ff
    add d                                         ; $6ef7: $82
    rst $38                                       ; $6ef8: $ff
    jp nz, $fc1e                                  ; $6ef9: $c2 $1e $fc

    add d                                         ; $6efc: $82
    dec bc                                        ; $6efd: $0b
    ld c, e                                       ; $6efe: $4b
    ld a, [bc]                                    ; $6eff: $0a
    ld c, d                                       ; $6f00: $4a
    push af                                       ; $6f01: $f5
    ld h, b                                       ; $6f02: $60
    db $fd                                        ; $6f03: $fd
    and c                                         ; $6f04: $a1
    ld de, $8087                                  ; $6f05: $11 $87 $80
    adc [hl]                                      ; $6f08: $8e
    ret                                           ; $6f09: $c9


    ld [$ac42], a                                 ; $6f0a: $ea $42 $ac
    add h                                         ; $6f0d: $84
    add [hl]                                      ; $6f0e: $86
    ld h, c                                       ; $6f0f: $61
    nop                                           ; $6f10: $00
    and b                                         ; $6f11: $a0
    jp z, Jump_000_3e82                           ; $6f12: $ca $82 $3e

    add b                                         ; $6f15: $80
    dec hl                                        ; $6f16: $2b
    dec de                                        ; $6f17: $1b
    ld c, e                                       ; $6f18: $4b
    dec hl                                        ; $6f19: $2b
    dec a                                         ; $6f1a: $3d
    add b                                         ; $6f1b: $80
    ld a, [hl+]                                   ; $6f1c: $2a
    ld a, [hl+]                                   ; $6f1d: $2a
    ld a, d                                       ; $6f1e: $7a
    add b                                         ; $6f1f: $80
    ret nz                                        ; $6f20: $c0

    db $eb                                        ; $6f21: $eb
    adc [hl]                                      ; $6f22: $8e
    ret z                                         ; $6f23: $c8

    ld [$c4c0], sp                                ; $6f24: $08 $c0 $c4
    xor h                                         ; $6f27: $ac
    add d                                         ; $6f28: $82
    ld [hl], e                                    ; $6f29: $73
    and d                                         ; $6f2a: $a2
    ld l, l                                       ; $6f2b: $6d
    pop bc                                        ; $6f2c: $c1
    ldh [rOBP0], a                                ; $6f2d: $e0 $48
    add b                                         ; $6f2f: $80
    cp a                                          ; $6f30: $bf
    jp nz, $a17a                                  ; $6f31: $c2 $7a $a1

    nop                                           ; $6f34: $00
    ei                                            ; $6f35: $fb
    pop bc                                        ; $6f36: $c1
    ld a, a                                       ; $6f37: $7f
    jp $8591                                      ; $6f38: $c3 $91 $85


    ld e, e                                       ; $6f3b: $5b
    and b                                         ; $6f3c: $a0
    ret nz                                        ; $6f3d: $c0

    add sp, -$49                                  ; $6f3e: $e8 $b7
    ld h, e                                       ; $6f40: $63
    db $ec                                        ; $6f41: $ec
    add e                                         ; $6f42: $83
    ld [bc], a                                    ; $6f43: $02
    jp nz, $ca00                                  ; $6f44: $c2 $00 $ca

    and e                                         ; $6f47: $a3
    add c                                         ; $6f48: $81
    add b                                         ; $6f49: $80
    ld hl, sp+$63                                 ; $6f4a: $f8 $63
    ld hl, sp-$5d                                 ; $6f4c: $f8 $a3
    ret nz                                        ; $6f4e: $c0

    db $e3                                        ; $6f4f: $e3
    ld e, b                                       ; $6f50: $58
    ld h, c                                       ; $6f51: $61
    ei                                            ; $6f52: $fb
    add h                                         ; $6f53: $84
    dec [hl]                                      ; $6f54: $35
    ret z                                         ; $6f55: $c8

    nop                                           ; $6f56: $00
    ret nz                                        ; $6f57: $c0

    add sp, $0a                                   ; $6f58: $e8 $0a
    ld b, b                                       ; $6f5a: $40
    adc [hl]                                      ; $6f5b: $8e
    add d                                         ; $6f5c: $82
    ld a, $61                                     ; $6f5d: $3e $61
    ld b, d                                       ; $6f5f: $42
    ld h, c                                       ; $6f60: $61
    ld sp, hl                                     ; $6f61: $f9
    jp nz, $817d                                  ; $6f62: $c2 $7d $81

    ld a, $a3                                     ; $6f65: $3e $a3
    nop                                           ; $6f67: $00
    ld h, c                                       ; $6f68: $61
    jp nz, Jump_02a_422a                          ; $6f69: $c2 $2a $42

    ld c, [hl]                                    ; $6f6c: $4e
    xor d                                         ; $6f6d: $aa
    xor h                                         ; $6f6e: $ac
    add l                                         ; $6f6f: $85
    rst $18                                       ; $6f70: $df
    add b                                         ; $6f71: $80
    add d                                         ; $6f72: $82
    and d                                         ; $6f73: $a2
    ret                                           ; $6f74: $c9


    ld h, d                                       ; $6f75: $62

jr_02a_6f76:
    ld a, a                                       ; $6f76: $7f
    add c                                         ; $6f77: $81
    nop                                           ; $6f78: $00
    cp h                                          ; $6f79: $bc
    jp $813d                                      ; $6f7a: $c3 $3d $81


    ld a, $a3                                     ; $6f7d: $3e $a3
    ld c, c                                       ; $6f7f: $49
    add d                                         ; $6f80: $82
    cp c                                          ; $6f81: $b9
    add b                                         ; $6f82: $80
    ccf                                           ; $6f83: $3f
    ld h, d                                       ; $6f84: $62
    ld a, [hl-]                                   ; $6f85: $3a
    add h                                         ; $6f86: $84
    ld l, l                                       ; $6f87: $6d
    ld b, h                                       ; $6f88: $44
    jr nz, @+$80                                  ; $6f89: $20 $7e

    push bc                                       ; $6f8b: $c5
    dec c                                         ; $6f8c: $0d
    add e                                         ; $6f8d: $83
    ld bc, $c080                                  ; $6f8e: $01 $80 $c0
    db $e3                                        ; $6f91: $e3
    ccf                                           ; $6f92: $3f
    push hl                                       ; $6f93: $e5
    dec bc                                        ; $6f94: $0b
    rst $28                                       ; $6f95: $ef
    inc hl                                        ; $6f96: $23
    sbc l                                         ; $6f97: $9d
    ld h, e                                       ; $6f98: $63
    nop                                           ; $6f99: $00
    or e                                          ; $6f9a: $b3
    ld b, [hl]                                    ; $6f9b: $46
    sbc l                                         ; $6f9c: $9d
    ld [hl+], a                                   ; $6f9d: $22
    cp [hl]                                       ; $6f9e: $be
    push hl                                       ; $6f9f: $e5
    ld a, [hl+]                                   ; $6fa0: $2a
    ld b, e                                       ; $6fa1: $43
    add d                                         ; $6fa2: $82
    ld b, b                                       ; $6fa3: $40
    ld b, b                                       ; $6fa4: $40
    ld h, h                                       ; $6fa5: $64
    db $fd                                        ; $6fa6: $fd
    add d                                         ; $6fa7: $82
    scf                                           ; $6fa8: $37
    ld h, e                                       ; $6fa9: $63
    add b                                         ; $6faa: $80
    db $ed                                        ; $6fab: $ed
    call nz, Call_000_20ad                        ; $6fac: $c4 $ad $20
    or e                                          ; $6faf: $b3
    ld c, d                                       ; $6fb0: $4a
    ld l, c                                       ; $6fb1: $69
    ld b, d                                       ; $6fb2: $42
    ld d, h                                       ; $6fb3: $54
    inc hl                                        ; $6fb4: $23
    add d                                         ; $6fb5: $82
    ld b, [hl]                                    ; $6fb6: $46
    pop bc                                        ; $6fb7: $c1
    ld [c], a                                     ; $6fb8: $e2
    ld l, e                                       ; $6fb9: $6b
    nop                                           ; $6fba: $00
    add b                                         ; $6fbb: $80
    add e                                         ; $6fbc: $83
    pop bc                                        ; $6fbd: $c1

jr_02a_6fbe:
    db $e3                                        ; $6fbe: $e3
    or [hl]                                       ; $6fbf: $b6

Call_02a_6fc0:
    jr nz, jr_02a_6fbe                            ; $6fc0: $20 $fc

    add d                                         ; $6fc2: $82
    ld l, d                                       ; $6fc3: $6a
    ldh [$ac], a                                  ; $6fc4: $e0 $ac
    ld [hl+], a                                   ; $6fc6: $22
    db $10                                        ; $6fc7: $10
    jp nz, Jump_000_02f9                          ; $6fc8: $c2 $f9 $02

    ld b, b                                       ; $6fcb: $40
    ld l, h                                       ; $6fcc: $6c
    pop bc                                        ; $6fcd: $c1
    db $fc                                        ; $6fce: $fc
    ld bc, $04dd                                  ; $6fcf: $01 $dd $04
    jp nz, $cec2                                  ; $6fd2: $c2 $c2 $ce

    add c                                         ; $6fd5: $81
    ld b, b                                       ; $6fd6: $40
    add e                                         ; $6fd7: $83
    dec hl                                        ; $6fd8: $2b
    nop                                           ; $6fd9: $00
    ret nz                                        ; $6fda: $c0

    nop                                           ; $6fdb: $00
    ld [hl], a                                    ; $6fdc: $77
    add d                                         ; $6fdd: $82
    ld [hl], $40                                  ; $6fde: $36 $40

Jump_02a_6fe0:
    ld l, d                                       ; $6fe0: $6a
    jp Jump_000_21ed                              ; $6fe1: $c3 $ed $21


    ldh a, [rNR43]                                ; $6fe4: $f0 $22
    or e                                          ; $6fe6: $b3
    ld b, l                                       ; $6fe7: $45
    cp a                                          ; $6fe8: $bf
    inc b                                         ; $6fe9: $04
    add h                                         ; $6fea: $84
    ld [bc], a                                    ; $6feb: $02
    jr c, jr_02a_6f76                             ; $6fec: $38 $88

    inc bc                                        ; $6fee: $03
    sub c                                         ; $6fef: $91
    add e                                         ; $6ff0: $83
    jp Jump_000_2bc3                              ; $6ff1: $c3 $c3 $2b


    ld l, e                                       ; $6ff4: $6b
    ld a, [bc]                                    ; $6ff5: $0a
    add h                                         ; $6ff6: $84
    and b                                         ; $6ff7: $a0
    ld a, b                                       ; $6ff8: $78
    ld h, d                                       ; $6ff9: $62
    add h                                         ; $6ffa: $84
    dec hl                                        ; $6ffb: $2b
    jp $e077                                      ; $6ffc: $c3 $77 $e0


    ld l, e                                       ; $6fff: $6b
    inc sp                                        ; $7000: $33
    ld h, b                                       ; $7001: $60
    add c                                         ; $7002: $81
    and d                                         ; $7003: $a2
    ret nz                                        ; $7004: $c0

    push hl                                       ; $7005: $e5
    cp a                                          ; $7006: $bf
    ld bc, $644d                                  ; $7007: $01 $4d $64
    jp nz, $8220                                  ; $700a: $c2 $20 $82

    inc h                                         ; $700d: $24
    dec l                                         ; $700e: $2d
    ld bc, $41e1                                  ; $700f: $01 $e1 $41
    add h                                         ; $7012: $84
    ld c, e                                       ; $7013: $4b
    ld a, [bc]                                    ; $7014: $0a
    rst $38                                       ; $7015: $ff
    ldh [rP1], a                                  ; $7016: $e0 $00
    ld hl, sp+$61                                 ; $7018: $f8 $61
    xor h                                         ; $701a: $ac
    ld b, e                                       ; $701b: $43
    or h                                          ; $701c: $b4
    add b                                         ; $701d: $80
    db $e4                                        ; $701e: $e4
    pop bc                                        ; $701f: $c1
    ret nz                                        ; $7020: $c0

    ldh [rRP], a                                  ; $7021: $e0 $56
    ld b, $38                                     ; $7023: $06 $38
    push hl                                       ; $7025: $e5
    dec l                                         ; $7026: $2d
    ld h, l                                       ; $7027: $65
    ld a, [c]                                     ; $7028: $f2
    ld l, [hl]                                    ; $7029: $6e
    ld b, b                                       ; $702a: $40
    ld l, e                                       ; $702b: $6b
    ld b, d                                       ; $702c: $42
    ld hl, $e2c9                                  ; $702d: $21 $c9 $e2
    dec bc                                        ; $7030: $0b
    dec bc                                        ; $7031: $0b
    ld a, [hl+]                                   ; $7032: $2a
    ld a, [bc]                                    ; $7033: $0a
    dec b                                         ; $7034: $05
    ld a, [bc]                                    ; $7035: $0a
    ld hl, sp+$23                                 ; $7036: $f8 $23
    dec l                                         ; $7038: $2d
    ld l, h                                       ; $7039: $6c
    and e                                         ; $703a: $a3
    inc sp                                        ; $703b: $33
    ld h, d                                       ; $703c: $62
    ld h, b                                       ; $703d: $60
    ld bc, $0556                                  ; $703e: $01 $56 $05
    cp a                                          ; $7041: $bf
    inc b                                         ; $7042: $04
    ldh [$64], a                                  ; $7043: $e0 $64
    inc b                                         ; $7045: $04
    db $eb                                        ; $7046: $eb
    ld [bc], a                                    ; $7047: $02
    add c                                         ; $7048: $81
    ret nz                                        ; $7049: $c0

    pop bc                                        ; $704a: $c1
    ldh [$c0], a                                  ; $704b: $e0 $c0
    db $e3                                        ; $704d: $e3
    dec bc                                        ; $704e: $0b
    ld a, [hl+]                                   ; $704f: $2a
    ld a, [hl+]                                   ; $7050: $2a
    nop                                           ; $7051: $00
    cp c                                          ; $7052: $b9
    ld b, e                                       ; $7053: $43
    ld l, [hl]                                    ; $7054: $6e
    and e                                         ; $7055: $a3
    ld h, l                                       ; $7056: $65
    and e                                         ; $7057: $a3
    db $f4                                        ; $7058: $f4
    ld b, b                                       ; $7059: $40
    cp a                                          ; $705a: $bf
    ldh [$bb], a                                  ; $705b: $e0 $bb
    pop hl                                        ; $705d: $e1
    ld a, [c]                                     ; $705e: $f2
    ld b, d                                       ; $705f: $42
    ld sp, hl                                     ; $7060: $f9
    add c                                         ; $7061: $81
    jr z, @+$7e                                   ; $7062: $28 $7c

    ld h, $42                                     ; $7064: $26 $42
    add b                                         ; $7066: $80
    ld c, l                                       ; $7067: $4d
    ld hl, $c14a                                  ; $7068: $21 $4a $c1
    db $e4                                        ; $706b: $e4
    dec hl                                        ; $706c: $2b
    add hl, sp                                    ; $706d: $39
    ld h, d                                       ; $706e: $62
    add b                                         ; $706f: $80
    and d                                         ; $7070: $a2

jr_02a_7071:
    nop                                           ; $7071: $00
    ld [hl], a                                    ; $7072: $77
    ld [hl+], a                                   ; $7073: $22
    and $22                                       ; $7074: $e6 $22
    or e                                          ; $7076: $b3
    ld b, c                                       ; $7077: $41
    ld [$3fc4], sp                                ; $7078: $08 $c4 $3f
    dec b                                         ; $707b: $05
    ld [bc], a                                    ; $707c: $02
    ld b, l                                       ; $707d: $45
    ld sp, $4441                                  ; $707e: $31 $41 $44
    and c                                         ; $7081: $a1
    dec b                                         ; $7082: $05
    ld l, e                                       ; $7083: $6b
    pop bc                                        ; $7084: $c1
    jp $fb0b                                      ; $7085: $c3 $0b $fb


    ld [hl+], a                                   ; $7088: $22
    ret nz                                        ; $7089: $c0

    push hl                                       ; $708a: $e5
    xor h                                         ; $708b: $ac
    ld h, c                                       ; $708c: $61
    jr nc, @+$23                                  ; $708d: $30 $21

    or e                                          ; $708f: $b3
    ld b, d                                       ; $7090: $42
    nop                                           ; $7091: $00
    sub $60                                       ; $7092: $d6 $60
    ccf                                           ; $7094: $3f
    ld [$66b4], sp                                ; $7095: $08 $b4 $66
    inc bc                                        ; $7098: $03
    ld hl, $60c3                                  ; $7099: $21 $c3 $60
    add h                                         ; $709c: $84
    and d                                         ; $709d: $a2
    ld b, c                                       ; $709e: $41
    ret nz                                        ; $709f: $c0

    inc a                                         ; $70a0: $3c
    and e                                         ; $70a1: $a3
    nop                                           ; $70a2: $00
    pop bc                                        ; $70a3: $c1
    ret nz                                        ; $70a4: $c0

    or l                                          ; $70a5: $b5
    nop                                           ; $70a6: $00
    dec l                                         ; $70a7: $2d
    inc b                                         ; $70a8: $04
    cp e                                          ; $70a9: $bb
    pop bc                                        ; $70aa: $c1
    di                                            ; $70ab: $f3
    ld b, c                                       ; $70ac: $41
    add b                                         ; $70ad: $80
    ld [$4502], a                                 ; $70ae: $ea $02 $45
    xor e                                         ; $70b1: $ab
    ld b, c                                       ; $70b2: $41
    nop                                           ; $70b3: $00
    ld b, e                                       ; $70b4: $43
    and d                                         ; $70b5: $a2
    pop bc                                        ; $70b6: $c1
    db $e3                                        ; $70b7: $e3
    ld bc, $c220                                  ; $70b8: $01 $20 $c2
    jp Jump_000_00c0                              ; $70bb: $c3 $c0 $00


    xor a                                         ; $70be: $af
    jr nz, jr_02a_7071                            ; $70bf: $20 $b0

    ldh [$c0], a                                  ; $70c1: $e0 $c0
    db $e4                                        ; $70c3: $e4
    nop                                           ; $70c4: $00
    ld c, a                                       ; $70c5: $4f
    and l                                         ; $70c6: $a5
    ld l, $85                                     ; $70c7: $2e $85
    db $f4                                        ; $70c9: $f4
    ld l, b                                       ; $70ca: $68
    nop                                           ; $70cb: $00
    ld hl, $e4c0                                  ; $70cc: $21 $c0 $e4
    db $fc                                        ; $70cf: $fc
    ld h, e                                       ; $70d0: $63
    cp d                                          ; $70d1: $ba
    and b                                         ; $70d2: $a0
    ld sp, $0000                                  ; $70d3: $31 $00 $00
    pop bc                                        ; $70d6: $c1
    pop hl                                        ; $70d7: $e1
    db $ed                                        ; $70d8: $ed
    add b                                         ; $70d9: $80
    jp hl                                         ; $70da: $e9


    ld b, b                                       ; $70db: $40
    ret nz                                        ; $70dc: $c0

    ld [c], a                                     ; $70dd: $e2
    ld c, l                                       ; $70de: $4d
    ld hl, $2213                                  ; $70df: $21 $13 $22
    inc b                                         ; $70e2: $04
    ld h, h                                       ; $70e3: $64
    add d                                         ; $70e4: $82
    ld b, [hl]                                    ; $70e5: $46
    nop                                           ; $70e6: $00
    pop bc                                        ; $70e7: $c1
    inc hl                                        ; $70e8: $23
    inc b                                         ; $70e9: $04
    ld hl, $63bb                                  ; $70ea: $21 $bb $63
    add hl, bc                                    ; $70ed: $09
    call nz, $e1c5                                ; $70ee: $c4 $c5 $e1
    ld [hl-], a                                   ; $70f1: $32
    ldh [$3f], a                                  ; $70f2: $e0 $3f
    and b                                         ; $70f4: $a0
    xor b                                         ; $70f5: $a8
    ld b, b                                       ; $70f6: $40
    ld b, b                                       ; $70f7: $40
    pop af                                        ; $70f8: $f1
    ld [bc], a                                    ; $70f9: $02
    dec b                                         ; $70fa: $05
    ld hl, $6509                                  ; $70fb: $21 $09 $65
    or c                                          ; $70fe: $b1
    and d                                         ; $70ff: $a2
    ret nz                                        ; $7100: $c0

    and $44                                       ; $7101: $e6 $44
    ld b, h                                       ; $7103: $44
    ld l, e                                       ; $7104: $6b
    cp e                                          ; $7105: $bb
    ld b, c                                       ; $7106: $41
    nop                                           ; $7107: $00
    add h                                         ; $7108: $84
    ld h, e                                       ; $7109: $63
    rst $38                                       ; $710a: $ff
    add b                                         ; $710b: $80
    add d                                         ; $710c: $82
    ld [c], a                                     ; $710d: $e2
    rst $30                                       ; $710e: $f7
    ld h, b                                       ; $710f: $60
    ld l, b                                       ; $7110: $68
    ld b, c                                       ; $7111: $41
    ld [hl], e                                    ; $7112: $73
    ld b, b                                       ; $7113: $40
    inc [hl]                                      ; $7114: $34
    ld b, c                                       ; $7115: $41
    ld d, b                                       ; $7116: $50
    and b                                         ; $7117: $a0
    nop                                           ; $7118: $00
    add hl, bc                                    ; $7119: $09
    ld h, l                                       ; $711a: $65
    ld [hl], h                                    ; $711b: $74
    ld h, a                                       ; $711c: $67
    jp c, $8302                                   ; $711d: $da $02 $83

    ld h, c                                       ; $7120: $61
    ld a, e                                       ; $7121: $7b
    add d                                         ; $7122: $82
    ld sp, hl                                     ; $7123: $f9
    db $e3                                        ; $7124: $e3
    ld [hl], h                                    ; $7125: $74
    nop                                           ; $7126: $00
    ld sp, $0081                                  ; $7127: $31 $81 $00
    pop af                                        ; $712a: $f1
    add c                                         ; $712b: $81
    add sp, $01                                   ; $712c: $e8 $01
    ld h, b                                       ; $712e: $60
    ld b, b                                       ; $712f: $40
    sub b                                         ; $7130: $90
    and l                                         ; $7131: $a5

jr_02a_7132:
    add hl, bc                                    ; $7132: $09
    ld h, l                                       ; $7133: $65
    db $f4                                        ; $7134: $f4
    ld b, [hl]                                    ; $7135: $46
    cp l                                          ; $7136: $bd
    ld b, c                                       ; $7137: $41
    ld d, l                                       ; $7138: $55
    ld [hl+], a                                   ; $7139: $22
    inc h                                         ; $713a: $24
    sub c                                         ; $713b: $91
    and l                                         ; $713c: $a5
    ret nz                                        ; $713d: $c0

    and $2d                                       ; $713e: $e6 $2d
    ld b, [hl]                                    ; $7140: $46
    add b                                         ; $7141: $80
    cp $e1                                        ; $7142: $fe $e1
    dec c                                         ; $7144: $0d
    ret nz                                        ; $7145: $c0

    and c                                         ; $7146: $a1
    adc l                                         ; $7147: $8d
    pop hl                                        ; $7148: $e1
    db $10                                        ; $7149: $10
    adc b                                         ; $714a: $88
    db $e3                                        ; $714b: $e3
    dec [hl]                                      ; $714c: $35
    dec b                                         ; $714d: $05
    ld [bc], a                                    ; $714e: $02
    ld b, e                                       ; $714f: $43
    dec hl                                        ; $7150: $2b
    ld hl, $d76d                                  ; $7151: $21 $6d $d7
    and c                                         ; $7154: $a1
    sub b                                         ; $7155: $90
    add h                                         ; $7156: $84
    ld a, b                                       ; $7157: $78
    nop                                           ; $7158: $00
    ld b, $7b                                     ; $7159: $06 $7b
    daa                                           ; $715b: $27
    ld a, [bc]                                    ; $715c: $0a
    ld a, [hl+]                                   ; $715d: $2a
    cp d                                          ; $715e: $ba
    pop hl                                        ; $715f: $e1
    ld b, d                                       ; $7160: $42
    pop bc                                        ; $7161: $c1
    adc d                                         ; $7162: $8a
    dec h                                         ; $7163: $25
    cp e                                          ; $7164: $bb
    pop bc                                        ; $7165: $c1
    rst $00                                       ; $7166: $c7
    db $e4                                        ; $7167: $e4
    ldh [rOBP0], a                                ; $7168: $e0 $48
    ld [hl+], a                                   ; $716a: $22
    pop bc                                        ; $716b: $c1
    ld h, [hl]                                    ; $716c: $66
    db $fd                                        ; $716d: $fd
    ld hl, $a48c                                  ; $716e: $21 $8c $a4
    ld a, [hl-]                                   ; $7171: $3a
    inc hl                                        ; $7172: $23
    dec c                                         ; $7173: $0d
    ld c, e                                       ; $7174: $4b
    ld a, [bc]                                    ; $7175: $0a
    rlca                                          ; $7176: $07
    ld a, [hl+]                                   ; $7177: $2a
    ld a, [bc]                                    ; $7178: $0a
    ld a, [hl+]                                   ; $7179: $2a
    ld [hl], d                                    ; $717a: $72
    ld hl, $2175                                  ; $717b: $21 $75 $21
    jr c, jr_02a_7186                             ; $717e: $38 $06

    add hl, bc                                    ; $7180: $09
    ld h, h                                       ; $7181: $64
    ld l, [hl]                                    ; $7182: $6e
    add c                                         ; $7183: $81
    jr nz, jr_02a_71ba                            ; $7184: $20 $34

jr_02a_7186:
    add b                                         ; $7186: $80
    pop bc                                        ; $7187: $c1
    ld h, a                                       ; $7188: $67
    ret nz                                        ; $7189: $c0

    rst $20                                       ; $718a: $e7
    ld a, [hl-]                                   ; $718b: $3a
    ld b, d                                       ; $718c: $42
    ld c, b                                       ; $718d: $48
    add b                                         ; $718e: $80
    ld l, e                                       ; $718f: $6b
    dec l                                         ; $7190: $2d
    and b                                         ; $7191: $a0
    ld [hl-], a                                   ; $7192: $32
    ld [hl+], a                                   ; $7193: $22
    ld [$2136], sp                                ; $7194: $08 $36 $21
    jr c, jr_02a_71a0                             ; $7197: $38 $07

    add a                                         ; $7199: $87
    dec h                                         ; $719a: $25
    ld l, l                                       ; $719b: $6d
    jr c, jr_02a_71de                             ; $719c: $38 $40

    ld b, l                                       ; $719e: $45
    inc bc                                        ; $719f: $03

jr_02a_71a0:
    pop bc                                        ; $71a0: $c1
    add c                                         ; $71a1: $81
    dec d                                         ; $71a2: $15
    and h                                         ; $71a3: $a4
    nop                                           ; $71a4: $00
    or h                                          ; $71a5: $b4
    ld h, d                                       ; $71a6: $62
    scf                                           ; $71a7: $37
    ld [bc], a                                    ; $71a8: $02
    rst $30                                       ; $71a9: $f7
    inc hl                                        ; $71aa: $23
    xor c                                         ; $71ab: $a9
    jr nz, jr_02a_7132                            ; $71ac: $20 $84

    and e                                         ; $71ae: $a3
    jr c, jr_02a_71b8                             ; $71af: $38 $07

    ld [hl], d                                    ; $71b1: $72
    ld b, d                                       ; $71b2: $42
    pop af                                        ; $71b3: $f1
    add h                                         ; $71b4: $84
    ldh [$c1], a                                  ; $71b5: $e0 $c1
    ld h, e                                       ; $71b7: $63

jr_02a_71b8:
    add h                                         ; $71b8: $84
    inc hl                                        ; $71b9: $23

jr_02a_71ba:
    adc a                                         ; $71ba: $8f
    add h                                         ; $71bb: $84
    ld a, [$b721]                                 ; $71bc: $fa $21 $b7
    ld bc, $0b4b                                  ; $71bf: $01 $4b $0b
    ld a, [bc]                                    ; $71c2: $0a
    rlca                                          ; $71c3: $07
    ld c, d                                       ; $71c4: $4a
    ld c, e                                       ; $71c5: $4b
    ld l, e                                       ; $71c6: $6b
    db $fc                                        ; $71c7: $fc
    ldh [rLY], a                                  ; $71c8: $e0 $44
    call nz, $0638                                ; $71ca: $c4 $38 $06
    call z, Call_02a_7b44                         ; $71cd: $cc $44 $7b
    db $e4                                        ; $71d0: $e4
    ret nz                                        ; $71d1: $c0

    db $e4                                        ; $71d2: $e4
    ldh [rLYC], a                                 ; $71d3: $e0 $45
    ld h, c                                       ; $71d5: $61
    ld a, [de]                                    ; $71d6: $1a
    pop bc                                        ; $71d7: $c1
    ld de, $fb84                                  ; $71d8: $11 $84 $fb
    jr nz, jr_02a_7259                            ; $71db: $20 $7c

    and d                                         ; $71dd: $a2

jr_02a_71de:
    ld c, e                                       ; $71de: $4b
    ld c, d                                       ; $71df: $4a
    ld bc, $b44a                                  ; $71e0: $01 $4a $b4
    ld h, c                                       ; $71e3: $61
    ret nz                                        ; $71e4: $c0

    push hl                                       ; $71e5: $e5
    jp $4428                                      ; $71e6: $c3 $28 $44


    ld b, d                                       ; $71e9: $42
    ld [bc], a                                    ; $71ea: $02
    inc hl                                        ; $71eb: $23
    ret nz                                        ; $71ec: $c0

    and $d4                                       ; $71ed: $e6 $d4
    ld h, a                                       ; $71ef: $67
    inc b                                         ; $71f0: $04
    or b                                          ; $71f1: $b0
    add d                                         ; $71f2: $82
    ld a, [hl-]                                   ; $71f3: $3a
    ld bc, $c06b                                  ; $71f4: $01 $6b $c0
    pop bc                                        ; $71f7: $c1
    ld a, a                                       ; $71f8: $7f
    ld h, c                                       ; $71f9: $61
    ld a, b                                       ; $71fa: $78
    nop                                           ; $71fb: $00
    ld b, e                                       ; $71fc: $43
    dec hl                                        ; $71fd: $2b
    add b                                         ; $71fe: $80
    db $e4                                        ; $71ff: $e4
    nop                                           ; $7200: $00
    jp nz, $8381                                  ; $7201: $c2 $81 $83

    ld [hl+], a                                   ; $7204: $22
    ld b, h                                       ; $7205: $44
    nop                                           ; $7206: $00
    rst $38                                       ; $7207: $ff
    inc bc                                        ; $7208: $03
    dec bc                                        ; $7209: $0b
    add l                                         ; $720a: $85
    or $20                                        ; $720b: $f6 $20
    add e                                         ; $720d: $83
    ld h, [hl]                                    ; $720e: $66
    ld b, d                                       ; $720f: $42
    jp nz, $0300                                  ; $7210: $c2 $00 $03

    add hl, hl                                    ; $7213: $29
    add e                                         ; $7214: $83
    ld [hl+], a                                   ; $7215: $22
    ld b, b                                       ; $7216: $40
    ldh [$b4], a                                  ; $7217: $e0 $b4
    ld [hl+], a                                   ; $7219: $22
    ld b, b                                       ; $721a: $40
    pop hl                                        ; $721b: $e1
    add h                                         ; $721c: $84
    ld [bc], a                                    ; $721d: $02
    ret nz                                        ; $721e: $c0

    rst $20                                       ; $721f: $e7
    or a                                          ; $7220: $b7
    ld [bc], a                                    ; $7221: $02
    nop                                           ; $7222: $00
    ld [hl], b                                    ; $7223: $70
    nop                                           ; $7224: $00
    xor h                                         ; $7225: $ac
    ld [bc], a                                    ; $7226: $02
    db $f4                                        ; $7227: $f4
    ret nz                                        ; $7228: $c0

    ld b, d                                       ; $7229: $42
    ld h, d                                       ; $722a: $62
    ld a, b                                       ; $722b: $78
    ld [$2584], sp                                ; $722c: $08 $84 $25
    ret nz                                        ; $722f: $c0

    and l                                         ; $7230: $a5
    ld e, d                                       ; $7231: $5a
    ld b, e                                       ; $7232: $43
    nop                                           ; $7233: $00
    ld a, $e8                                     ; $7234: $3e $e8
    cp e                                          ; $7236: $bb
    add [hl]                                      ; $7237: $86
    ld hl, sp-$7e                                 ; $7238: $f8 $82
    ld b, e                                       ; $723a: $43
    and d                                         ; $723b: $a2
    jr c, jr_02a_7247                             ; $723c: $38 $09

    rst $38                                       ; $723e: $ff
    jr nz, jr_02a_72b4                            ; $723f: $20 $73

    add c                                         ; $7241: $81
    ld a, $65                                     ; $7242: $3e $65
    add b                                         ; $7244: $80
    inc b                                         ; $7245: $04
    ld b, c                                       ; $7246: $41

jr_02a_7247:
    rst $38                                       ; $7247: $ff
    ld [hl+], a                                   ; $7248: $22
    jp z, $84e6                                   ; $7249: $ca $e6 $84

    pop hl                                        ; $724c: $e1
    ld a, a                                       ; $724d: $7f
    push hl                                       ; $724e: $e5
    or a                                          ; $724f: $b7
    jr nz, jr_02a_7253                            ; $7250: $20 $01

    pop bc                                        ; $7252: $c1

jr_02a_7253:
    ld c, l                                       ; $7253: $4d
    nop                                           ; $7254: $00
    jr c, jr_02a_725f                             ; $7255: $38 $08

    ret z                                         ; $7257: $c8

    ld b, l                                       ; $7258: $45

jr_02a_7259:
    ld a, e                                       ; $7259: $7b
    ld b, c                                       ; $725a: $41
    ld b, e                                       ; $725b: $43
    add e                                         ; $725c: $83
    rst $00                                       ; $725d: $c7
    add e                                         ; $725e: $83

jr_02a_725f:
    pop bc                                        ; $725f: $c1
    jp hl                                         ; $7260: $e9


    inc a                                         ; $7261: $3c
    ld [c], a                                     ; $7262: $e2
    ld a, b                                       ; $7263: $78
    add h                                         ; $7264: $84
    add d                                         ; $7265: $82
    ld [c], a                                     ; $7266: $e2
    add d                                         ; $7267: $82
    ld l, l                                       ; $7268: $6d
    cp e                                          ; $7269: $bb
    ret nz                                        ; $726a: $c0

    pop bc                                        ; $726b: $c1
    inc bc                                        ; $726c: $03
    add hl, bc                                    ; $726d: $09
    ld h, $86                                     ; $726e: $26 $86

Call_02a_7270:
    add c                                         ; $7270: $81
    ld [hl], l                                    ; $7271: $75
    nop                                           ; $7272: $00
    ld l, l                                       ; $7273: $6d
    add b                                         ; $7274: $80
    ld [bc], a                                    ; $7275: $02
    add c                                         ; $7276: $81
    inc e                                         ; $7277: $1c
    ld h, c                                       ; $7278: $61
    add a                                         ; $7279: $87
    ld [bc], a                                    ; $727a: $02
    db $fc                                        ; $727b: $fc
    xor $01                                       ; $727c: $ee $01
    ret nz                                        ; $727e: $c0

    sbc d                                         ; $727f: $9a
    and c                                         ; $7280: $a1
    ret nz                                        ; $7281: $c0

    pop hl                                        ; $7282: $e1
    ld l, $00                                     ; $7283: $2e $00
    bit 0, [hl]                                   ; $7285: $cb $46
    ld b, h                                       ; $7287: $44
    ld b, h                                       ; $7288: $44
    ld h, h                                       ; $7289: $64
    ld bc, $c6fe                                  ; $728a: $01 $fe $c6
    ld b, d                                       ; $728d: $42
    ld b, e                                       ; $728e: $43
    ld a, [$84ee]                                 ; $728f: $fa $ee $84
    ld [hl+], a                                   ; $7292: $22
    add l                                         ; $7293: $85
    ld h, c                                       ; $7294: $61
    nop                                           ; $7295: $00
    db $fc                                        ; $7296: $fc
    and d                                         ; $7297: $a2
    bit 0, l                                      ; $7298: $cb $45
    inc b                                         ; $729a: $04
    ld b, l                                       ; $729b: $45
    db $fc                                        ; $729c: $fc
    inc hl                                        ; $729d: $23
    ld a, $a2                                     ; $729e: $3e $a2
    adc b                                         ; $72a0: $88
    add c                                         ; $72a1: $81
    jp z, $fc40                                   ; $72a2: $ca $40 $fc

    db $eb                                        ; $72a5: $eb
    nop                                           ; $72a6: $00
    ld [hl], a                                    ; $72a7: $77
    ld hl, $21cb                                  ; $72a8: $21 $cb $21
    add l                                         ; $72ab: $85
    ld h, c                                       ; $72ac: $61
    cp h                                          ; $72ad: $bc
    add $03                                       ; $72ae: $c6 $03
    ld [hl+], a                                   ; $72b0: $22
    call nz, Call_02a_7e22                        ; $72b1: $c4 $22 $7e

jr_02a_72b4:
    ld bc, $00fc                                  ; $72b4: $01 $fc $00
    nop                                           ; $72b7: $00
    ld b, c                                       ; $72b8: $41
    nop                                           ; $72b9: $00
    ld b, c                                       ; $72ba: $41
    ld b, e                                       ; $72bb: $43
    add b                                         ; $72bc: $80
    di                                            ; $72bd: $f3
    ld a, [de]                                    ; $72be: $1a
    ldh [rHDMA5], a                               ; $72bf: $e0 $55
    ld bc, $c73c                                  ; $72c1: $01 $3c $c7
    adc e                                         ; $72c4: $8b
    ld h, c                                       ; $72c5: $61
    or h                                          ; $72c6: $b4
    ld [hl+], a                                   ; $72c7: $22
    nop                                           ; $72c8: $00
    ld a, [hl]                                    ; $72c9: $7e
    nop                                           ; $72ca: $00
    ld a, $a3                                     ; $72cb: $3e $a3
    nop                                           ; $72cd: $00
    ld h, e                                       ; $72ce: $63
    ld b, b                                       ; $72cf: $40
    di                                            ; $72d0: $f3
    sub a                                         ; $72d1: $97
    add c                                         ; $72d2: $81
    push bc                                       ; $72d3: $c5
    ld h, h                                       ; $72d4: $64
    ret nz                                        ; $72d5: $c0

    db $ed                                        ; $72d6: $ed
    dec l                                         ; $72d7: $2d
    inc h                                         ; $72d8: $24
    nop                                           ; $72d9: $00
    cp a                                          ; $72da: $bf
    pop bc                                        ; $72db: $c1
    adc l                                         ; $72dc: $8d
    jp nz, $eef8                                  ; $72dd: $c2 $f8 $ee

    ld l, b                                       ; $72e0: $68
    add b                                         ; $72e1: $80
    add $41                                       ; $72e2: $c6 $41
    jp nc, Jump_02a_4681                          ; $72e4: $d2 $81 $46

    ld h, $bc                                     ; $72e7: $26 $bc
    add a                                         ; $72e9: $87
    inc b                                         ; $72ea: $04
    or h                                          ; $72eb: $b4
    ld b, e                                       ; $72ec: $43
    ld a, [hl]                                    ; $72ed: $7e
    call nz, $be2b                                ; $72ee: $c4 $2b $be
    pop af                                        ; $72f1: $f1
    ld b, e                                       ; $72f2: $43
    jp nz, Jump_02a_61c4                          ; $72f3: $c2 $c4 $61

    ret nz                                        ; $72f6: $c0

    ld h, c                                       ; $72f7: $61
    ld b, l                                       ; $72f8: $45
    ld [hl+], a                                   ; $72f9: $22
    nop                                           ; $72fa: $00
    cp h                                          ; $72fb: $bc
    add [hl]                                      ; $72fc: $86
    xor $44                                       ; $72fd: $ee $44
    ld a, e                                       ; $72ff: $7b
    ld h, c                                       ; $7300: $61
    daa                                           ; $7301: $27
    ld [hl+], a                                   ; $7302: $22
    inc h                                         ; $7303: $24
    jr nz, jr_02a_733d                            ; $7304: $20 $37

    jp nz, $8333                                  ; $7306: $c2 $33 $83

    add e                                         ; $7309: $83
    dec h                                         ; $730a: $25
    add b                                         ; $730b: $80
    and $42                                       ; $730c: $e6 $42
    jp c, $bf01                                   ; $730e: $da $01 $bf

    ld b, d                                       ; $7311: $42
    inc a                                         ; $7312: $3c
    adc e                                         ; $7313: $8b
    dec a                                         ; $7314: $3d
    ld h, e                                       ; $7315: $63
    rst $38                                       ; $7316: $ff
    ld [hl+], a                                   ; $7317: $22
    rst $28                                       ; $7318: $ef
    and h                                         ; $7319: $a4
    dec l                                         ; $731a: $2d
    nop                                           ; $731b: $00
    ld b, d                                       ; $731c: $42
    ld b, c                                       ; $731d: $41
    sub b                                         ; $731e: $90
    and d                                         ; $731f: $a2
    call c, $d1a8                                 ; $7320: $dc $a8 $d1
    ld h, h                                       ; $7323: $64
    ret                                           ; $7324: $c9


    inc h                                         ; $7325: $24
    add d                                         ; $7326: $82
    push hl                                       ; $7327: $e5
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    ld bc, $ff00                                  ; $732b: $01 $00 $ff
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
    nop                                           ; $733b: $00
    rst $38                                       ; $733c: $ff

jr_02a_733d:
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
    db $10                                        ; $734c: $10
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    cp $fd                                        ; $7353: $fe $fd
    rrca                                          ; $7355: $0f
    rst $38                                       ; $7356: $ff
    ldh [$e1], a                                  ; $7357: $e0 $e1
    db $fc                                        ; $7359: $fc
    rst $18                                       ; $735a: $df
    ld hl, sp+$00                                 ; $735b: $f8 $00
    jp $e0e2                                      ; $735d: $c3 $e2 $e0


    ld a, [$e4dc]                                 ; $7360: $fa $dc $e4
    ldh [$f7], a                                  ; $7363: $e0 $f7
    add b                                         ; $7365: $80
    ld a, [$fca1]                                 ; $7366: $fa $a1 $fc
    and b                                         ; $7369: $a0
    push hl                                       ; $736a: $e5
    db $fd                                        ; $736b: $fd
    add sp, $00                                   ; $736c: $e8 $00
    ld h, b                                       ; $736e: $60
    ld a, [c]                                     ; $736f: $f2
    ldh [$f6], a                                  ; $7370: $e0 $f6
    sbc a                                         ; $7372: $9f
    db $ec                                        ; $7373: $ec
    ldh [$f3], a                                  ; $7374: $e0 $f3
    pop af                                        ; $7376: $f1
    rst $30                                       ; $7377: $f7
    inc hl                                        ; $7378: $23
    xor $b4                                       ; $7379: $ee $b4
    rst $08                                       ; $737b: $cf
    cp a                                          ; $737c: $bf
    push bc                                       ; $737d: $c5
    nop                                           ; $737e: $00
    add b                                         ; $737f: $80
    ldh a, [rP1]                                  ; $7380: $f0 $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    ld bc, $ff00                                  ; $7384: $01 $00 $ff
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
    nop                                           ; $7394: $00
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
    nop                                           ; $73a5: $00
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
    db $10                                        ; $73b6: $10
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    ld a, [c]                                     ; $73bd: $f2
    pop af                                        ; $73be: $f1
    pop af                                        ; $73bf: $f1
    rst $38                                       ; $73c0: $ff
    and $e0                                       ; $73c1: $e6 $e0
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    ld a, $ef                                     ; $73c6: $3e $ef
    xor $10                                       ; $73c8: $ee $10
    db $10                                        ; $73ca: $10
    db $10                                        ; $73cb: $10
    inc de                                        ; $73cc: $13
    inc de                                        ; $73cd: $13
    reti                                          ; $73ce: $d9


    ldh a, [rP1]                                  ; $73cf: $f0 $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00

jr_02a_73d3:
    cp $d5                                        ; $73d3: $fe $d5
    nop                                           ; $73d5: $00
    rst $38                                       ; $73d6: $ff
    ldh [rTIMA], a                                ; $73d7: $e0 $05
    ei                                            ; $73d9: $fb
    ldh [$0b], a                                  ; $73da: $e0 $0b
    rst $30                                       ; $73dc: $f7
    pop hl                                        ; $73dd: $e1
    nop                                           ; $73de: $00
    ld [bc], a                                    ; $73df: $02
    db $eb                                        ; $73e0: $eb
    nop                                           ; $73e1: $00
    jr z, jr_02a_73d3                             ; $73e2: $28 $ef

    ldh [$90], a                                  ; $73e4: $e0 $90
    db $eb                                        ; $73e6: $eb
    ldh [$f5], a                                  ; $73e7: $e0 $f5
    nop                                           ; $73e9: $00
    ret z                                         ; $73ea: $c8

    ld a, [$e0e5]                                 ; $73eb: $fa $e5 $e0
    add b                                         ; $73ee: $80
    ld [$00e4], a                                 ; $73ef: $ea $e4 $00
    nop                                           ; $73f2: $00
    rla                                           ; $73f3: $17
    nop                                           ; $73f4: $00
    ld bc, $d612                                  ; $73f5: $01 $12 $d6
    ld [c], a                                     ; $73f8: $e2
    ld d, b                                       ; $73f9: $50
    rst $08                                       ; $73fa: $cf
    ldh [$e6], a                                  ; $73fb: $e0 $e6
    pop hl                                        ; $73fd: $e1
    ld [$e2da], a                                 ; $73fe: $ea $da $e2
    db $fd                                        ; $7401: $fd
    db $e3                                        ; $7402: $e3
    and $e1                                       ; $7403: $e6 $e1
    ld d, a                                       ; $7405: $57
    cpl                                           ; $7406: $2f
    nop                                           ; $7407: $00
    inc bc                                        ; $7408: $03
    ret nz                                        ; $7409: $c0

    ld [c], a                                     ; $740a: $e2
    and b                                         ; $740b: $a0
    xor a                                         ; $740c: $af
    ldh [$64], a                                  ; $740d: $e0 $64
    xor e                                         ; $740f: $ab
    ldh [$c7], a                                  ; $7410: $e0 $c7
    call nc, Call_000_2000                        ; $7412: $d4 $00 $20
    ret nz                                        ; $7415: $c0

    ld [c], a                                     ; $7416: $e2
    jp z, $9ce1                                   ; $7417: $ca $e1 $9c

    pop hl                                        ; $741a: $e1
    ld e, a                                       ; $741b: $5f
    nop                                           ; $741c: $00
    ld d, l                                       ; $741d: $55
    ld b, $96                                     ; $741e: $06 $96
    ld [c], a                                     ; $7420: $e2
    ld b, b                                       ; $7421: $40
    adc a                                         ; $7422: $8f
    ldh [$b2], a                                  ; $7423: $e0 $b2
    adc e                                         ; $7425: $8b
    ldh [$a8], a                                  ; $7426: $e0 $a8
    or $e2                                        ; $7428: $f6 $e2
    sbc h                                         ; $742a: $9c
    and h                                         ; $742b: $a4
    db $e3                                        ; $742c: $e3
    ld a, h                                       ; $742d: $7c
    pop hl                                        ; $742e: $e1
    cp a                                          ; $742f: $bf
    nop                                           ; $7430: $00
    inc c                                         ; $7431: $0c
    add b                                         ; $7432: $80
    ld [c], a                                     ; $7433: $e2
    adc [hl]                                      ; $7434: $8e
    pop hl                                        ; $7435: $e1
    ld e, c                                       ; $7436: $59
    ld a, [$e06b]                                 ; $7437: $fa $6b $e0
    ld d, b                                       ; $743a: $50
    add h                                         ; $743b: $84
    ld [c], a                                     ; $743c: $e2
    add b                                         ; $743d: $80
    nop                                           ; $743e: $00
    db $ec                                        ; $743f: $ec
    rst $38                                       ; $7440: $ff
    ld hl, sp-$01                                 ; $7441: $f8 $ff
    rst $38                                       ; $7443: $ff
    ldh [$fe], a                                  ; $7444: $e0 $fe
    ld b, d                                       ; $7446: $42
    ld hl, sp-$38                                 ; $7447: $f8 $c8
    ldh a, [$80]                                  ; $7449: $f0 $80
    cp a                                          ; $744b: $bf
    ldh [rNR10], a                                ; $744c: $e0 $10
    ldh [rP1], a                                  ; $744e: $e0 $00
    ret nz                                        ; $7450: $c0

    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    ld [c], a                                     ; $7453: $e2
    rst $30                                       ; $7454: $f7
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    cp h                                          ; $7457: $bc
    rst $38                                       ; $7458: $ff
    add sp, -$01                                  ; $7459: $e8 $ff
    add c                                         ; $745b: $81
    cp $08                                        ; $745c: $fe $08
    db $ed                                        ; $745e: $ed
    ldh a, [$f8]                                  ; $745f: $f0 $f8
    push hl                                       ; $7461: $e5
    jr nz, @-$3e                                  ; $7462: $20 $c0

    ld [hl], c                                    ; $7464: $71
    db $e3                                        ; $7465: $e3
    ld a, a                                       ; $7466: $7f
    rst $38                                       ; $7467: $ff
    cpl                                           ; $7468: $2f
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    ccf                                           ; $746b: $3f
    rst $38                                       ; $746c: $ff
    rra                                           ; $746d: $1f
    rst $38                                       ; $746e: $ff
    or a                                          ; $746f: $b7
    ld a, a                                       ; $7470: $7f
    rra                                           ; $7471: $1f
    rst $38                                       ; $7472: $ff
    ld a, a                                       ; $7473: $7f
    rrca                                          ; $7474: $0f
    ld a, a                                       ; $7475: $7f
    ld c, a                                       ; $7476: $4f
    ccf                                           ; $7477: $3f
    rlca                                          ; $7478: $07
    rra                                           ; $7479: $1f
    ld [bc], a                                    ; $747a: $02
    rst $38                                       ; $747b: $ff
    rra                                           ; $747c: $1f
    inc de                                        ; $747d: $13
    rrca                                          ; $747e: $0f
    ld bc, $0b0f                                  ; $747f: $01 $0f $0b
    rlca                                          ; $7482: $07
    ld bc, $07ff                                  ; $7483: $01 $ff $07
    nop                                           ; $7486: $00
    rlca                                          ; $7487: $07
    inc b                                         ; $7488: $04
    inc bc                                        ; $7489: $03
    ld e, h                                       ; $748a: $5c
    rst $38                                       ; $748b: $ff
    nop                                           ; $748c: $00
    rst $28                                       ; $748d: $ef
    rst $38                                       ; $748e: $ff
    add c                                         ; $748f: $81
    inc a                                         ; $7490: $3c
    db $10                                        ; $7491: $10
    ld b, h                                       ; $7492: $44
    and $20                                       ; $7493: $e6 $20
    ret nz                                        ; $7495: $c0

    add b                                         ; $7496: $80
    cp a                                          ; $7497: $bf
    ret nz                                        ; $7498: $c0

    nop                                           ; $7499: $00
    ldh [$90], a                                  ; $749a: $e0 $90
    ldh [$80], a                                  ; $749c: $e0 $80
    cp $e0                                        ; $749e: $fe $e0
    nop                                           ; $74a0: $00
    ei                                            ; $74a1: $fb
    ret nz                                        ; $74a2: $c0

    jr nz, @-$5e                                  ; $74a3: $20 $a0

    ldh [$7d], a                                  ; $74a5: $e0 $7d
    rst $38                                       ; $74a7: $ff
    rst $28                                       ; $74a8: $ef
    rst $38                                       ; $74a9: $ff
    ld a, [hl-]                                   ; $74aa: $3a
    ld a, [$e2da]                                 ; $74ab: $fa $da $e2
    ld [$c0e3], sp                                ; $74ae: $08 $e3 $c0
    and h                                         ; $74b1: $a4
    ld hl, sp-$20                                 ; $74b2: $f8 $e0
    ld hl, sp-$10                                 ; $74b4: $f8 $f0
    rst $38                                       ; $74b6: $ff
    db $fc                                        ; $74b7: $fc
    ret nc                                        ; $74b8: $d0

    db $fc                                        ; $74b9: $fc
    ld a, [c]                                     ; $74ba: $f2
    db $fc                                        ; $74bb: $fc
    ldh [$fc], a                                  ; $74bc: $e0 $fc
    or b                                          ; $74be: $b0
    rst $30                                       ; $74bf: $f7
    ld hl, sp-$1c                                 ; $74c0: $f8 $e4
    ld hl, sp-$80                                 ; $74c2: $f8 $80

Call_02a_74c4:
    push hl                                       ; $74c4: $e5
    cp [hl]                                       ; $74c5: $be
    rst $38                                       ; $74c6: $ff
    db $e3                                        ; $74c7: $e3
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    ld b, b                                       ; $74ca: $40
    rst $38                                       ; $74cb: $ff
    nop                                           ; $74cc: $00
    rst $20                                       ; $74cd: $e7
    db $fc                                        ; $74ce: $fc
    rst $38                                       ; $74cf: $ff
    or $ff                                        ; $74d0: $f6 $ff
    ld a, a                                       ; $74d2: $7f
    db $fc                                        ; $74d3: $fc
    rst $38                                       ; $74d4: $ff
    ld hl, sp-$02                                 ; $74d5: $f8 $fe
    add sp, -$02                                  ; $74d7: $e8 $fe
    ld hl, sp-$08                                 ; $74d9: $f8 $f8
    ldh [$83], a                                  ; $74db: $e0 $83
    db $f4                                        ; $74dd: $f4
    rst $38                                       ; $74de: $ff
    ld a, b                                       ; $74df: $78
    ldh [$cb], a                                  ; $74e0: $e0 $cb
    jp $c5e2                                      ; $74e2: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $74e5: $f0 $e0
    rst $28                                       ; $74e7: $ef
    ld [$f1c0], a                                 ; $74e8: $ea $c0 $f1
    ld b, b                                       ; $74eb: $40
    ldh [$ea], a                                  ; $74ec: $e0 $ea
    ret nc                                        ; $74ee: $d0

    pop hl                                        ; $74ef: $e1
    rst $08                                       ; $74f0: $cf
    jp hl                                         ; $74f1: $e9


    db $ec                                        ; $74f2: $ec
    rst $38                                       ; $74f3: $ff
    ld sp, hl                                     ; $74f4: $f9
    cp $7f                                        ; $74f5: $fe $7f
    and $f8                                       ; $74f7: $e6 $f8
    ld c, b                                       ; $74f9: $48
    ldh a, [$d0]                                  ; $74fa: $f0 $d0
    ldh [$a8], a                                  ; $74fc: $e0 $a8
    ld [hl], d                                    ; $74fe: $72
    ldh [$fb], a                                  ; $74ff: $e0 $fb

jr_02a_7501:
    ld b, b                                       ; $7501: $40
    add b                                         ; $7502: $80
    db $10                                        ; $7503: $10
    rst $20                                       ; $7504: $e7
    jp hl                                         ; $7505: $e9


    cp $8e                                        ; $7506: $fe $8e
    ldh a, [$30]                                  ; $7508: $f0 $30
    pop af                                        ; $750a: $f1
    ret nz                                        ; $750b: $c0

    ld hl, sp-$1b                                 ; $750c: $f8 $e5
    ld h, d                                       ; $750e: $62
    pop bc                                        ; $750f: $c1
    db $10                                        ; $7510: $10
    push hl                                       ; $7511: $e5
    cp a                                          ; $7512: $bf
    ld a, a                                       ; $7513: $7f
    sbc a                                         ; $7514: $9f
    ld a, a                                       ; $7515: $7f
    rst $38                                       ; $7516: $ff
    ld [hl], a                                    ; $7517: $77
    ccf                                           ; $7518: $3f
    ld e, a                                       ; $7519: $5f
    ccf                                           ; $751a: $3f
    ld c, a                                       ; $751b: $4f
    ccf                                           ; $751c: $3f
    cpl                                           ; $751d: $2f
    rra                                           ; $751e: $1f
    rst $30                                       ; $751f: $f7
    rla                                           ; $7520: $17
    rrca                                          ; $7521: $0f
    ld [de], a                                    ; $7522: $12
    inc d                                         ; $7523: $14
    ldh [$09], a                                  ; $7524: $e0 $09
    rlca                                          ; $7526: $07
    rla                                           ; $7527: $17
    inc bc                                        ; $7528: $03
    rst $38                                       ; $7529: $ff
    dec b                                         ; $752a: $05
    inc bc                                        ; $752b: $03
    inc b                                         ; $752c: $04
    inc bc                                        ; $752d: $03
    ld [bc], a                                    ; $752e: $02
    ld bc, $ff5c                                  ; $752f: $01 $5c $ff
    rst $30                                       ; $7532: $f7
    jp Jump_000_3c3c                              ; $7533: $c3 $3c $3c


    sbc d                                         ; $7536: $9a
    add $00                                       ; $7537: $c6 $00
    nop                                           ; $7539: $00
    ld b, b                                       ; $753a: $40
    add b                                         ; $753b: $80
    rst $18                                       ; $753c: $df
    ret nz                                        ; $753d: $c0

    add b                                         ; $753e: $80
    jr nz, jr_02a_7501                            ; $753f: $20 $c0

    and b                                         ; $7541: $a0
    cp $e2                                        ; $7542: $fe $e2
    ld d, b                                       ; $7544: $50
    add b                                         ; $7545: $80
    ldh a, [$a0]                                  ; $7546: $f0 $a0
    pop hl                                        ; $7548: $e1
    db $10                                        ; $7549: $10
    db $e3                                        ; $754a: $e3
    jp c, Jump_02a_64e1                           ; $754b: $da $e1 $64

    pop bc                                        ; $754e: $c1
    xor b                                         ; $754f: $a8
    ldh a, [$ea]                                  ; $7550: $f0 $ea
    ldh a, [$df]                                  ; $7552: $f0 $df
    db $f4                                        ; $7554: $f4
    ld hl, sp-$2c                                 ; $7555: $f8 $d4
    ld hl, sp-$0c                                 ; $7557: $f8 $f4
    inc d                                         ; $7559: $14
    ldh [$b8], a                                  ; $755a: $e0 $b8
    ldh a, [$fb]                                  ; $755c: $f0 $fb
    add sp, -$10                                  ; $755e: $e8 $f0
    db $10                                        ; $7560: $10
    jp hl                                         ; $7561: $e9


    ld e, b                                       ; $7562: $58
    rst $20                                       ; $7563: $e7
    ld h, [hl]                                    ; $7564: $66
    add c                                         ; $7565: $81
    db $fc                                        ; $7566: $fc
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $30                                       ; $7569: $f7
    cp $fd                                        ; $756a: $fe $fd
    cp $fa                                        ; $756c: $fe $fa
    db $fc                                        ; $756e: $fc
    ld [$fc3b], a                                 ; $756f: $ea $3b $fc
    ld sp, hl                                     ; $7572: $f9
    ld hl, sp-$20                                 ; $7573: $f8 $e0
    db $f4                                        ; $7575: $f4
    rst $38                                       ; $7576: $ff

jr_02a_7577:
    ld c, b                                       ; $7577: $48
    ld [hl+], a                                   ; $7578: $22
    db $eb                                        ; $7579: $eb
    and b                                         ; $757a: $a0
    ldh [$f0], a                                  ; $757b: $e0 $f0
    call z, $fba3                                 ; $757d: $cc $a3 $fb
    push bc                                       ; $7580: $c5
    pop af                                        ; $7581: $f1
    call $cbe3                                    ; $7582: $cd $e3 $cb
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    db $ed                                        ; $7587: $ed
    cp $ff                                        ; $7588: $fe $ff
    cp $f8                                        ; $758a: $fe $f8
    add sp, -$10                                  ; $758c: $e8 $f0
    ld d, d                                       ; $758e: $52
    ldh [$e8], a                                  ; $758f: $e0 $e8
    ret nz                                        ; $7591: $c0

    rst $20                                       ; $7592: $e7
    ret nz                                        ; $7593: $c0

    add b                                         ; $7594: $80
    ld d, b                                       ; $7595: $50
    sub $c0                                       ; $7596: $d6 $c0
    jr nz, @-$39                                  ; $7598: $20 $c5

    cp l                                          ; $759a: $bd
    cp $ee                                        ; $759b: $fe $ee
    jp $b1f0                                      ; $759d: $c3 $f0 $b1


    ld a, [de]                                    ; $75a0: $1a
    ldh [$f8], a                                  ; $75a1: $e0 $f8
    push hl                                       ; $75a3: $e5
    or d                                          ; $75a4: $b2
    and c                                         ; $75a5: $a1
    ld d, h                                       ; $75a6: $54
    and c                                         ; $75a7: $a1
    rst $38                                       ; $75a8: $ff
    ld a, a                                       ; $75a9: $7f
    rst $30                                       ; $75aa: $f7
    xor a                                         ; $75ab: $af
    ld a, a                                       ; $75ac: $7f
    ld a, a                                       ; $75ad: $7f
    inc d                                         ; $75ae: $14
    ldh [$b7], a                                  ; $75af: $e0 $b7
    rra                                           ; $75b1: $1f
    ccf                                           ; $75b2: $3f
    rra                                           ; $75b3: $1f
    ld a, a                                       ; $75b4: $7f

jr_02a_75b5:
    cpl                                           ; $75b5: $2f
    rra                                           ; $75b6: $1f
    ld e, a                                       ; $75b7: $5f
    rrca                                          ; $75b8: $0f
    rrca                                          ; $75b9: $0f
    rlca                                          ; $75ba: $07
    ld a, [bc]                                    ; $75bb: $0a
    inc d                                         ; $75bc: $14
    ld [c], a                                     ; $75bd: $e2
    rst $38                                       ; $75be: $ff
    dec bc                                        ; $75bf: $0b
    ld bc, $0103                                  ; $75c0: $01 $03 $01
    ld [bc], a                                    ; $75c3: $02
    ld bc, $0005                                  ; $75c4: $01 $05 $00
    sub l                                         ; $75c7: $95
    rst $18                                       ; $75c8: $df
    ld [de], a                                    ; $75c9: $12
    ldh [rSCY], a                                 ; $75ca: $e0 $42
    sub b                                         ; $75cc: $90
    ld [$0ca0], a                                 ; $75cd: $ea $a0 $0c
    ld [c], a                                     ; $75d0: $e2
    cp $e1                                        ; $75d1: $fe $e1
    and b                                         ; $75d3: $a0
    ld [hl], h                                    ; $75d4: $74
    jr nc, jr_02a_7577                            ; $75d5: $30 $a0

    jr nz, @-$3b                                  ; $75d7: $20 $c3

    ei                                            ; $75d9: $fb
    jp c, $b0e6                                   ; $75da: $da $e6 $b0

    ldh [$f4], a                                  ; $75dd: $e0 $f4
    rra                                           ; $75df: $1f
    ret nz                                        ; $75e0: $c0

    rst $30                                       ; $75e1: $f7
    ret c                                         ; $75e2: $d8

    ldh a, [$f8]                                  ; $75e3: $f0 $f8
    inc d                                         ; $75e5: $14
    ldh [$b4], a                                  ; $75e6: $e0 $b4
    ldh [$f0], a                                  ; $75e8: $e0 $f0
    ldh [$fa], a                                  ; $75ea: $e0 $fa
    jr nz, jr_02a_75b5                            ; $75ec: $20 $c7

    ei                                            ; $75ee: $fb
    ld [de], a                                    ; $75ef: $12
    ldh [$91], a                                  ; $75f0: $e0 $91
    nop                                           ; $75f2: $00
    db $fd                                        ; $75f3: $fd
    cp $f6                                        ; $75f4: $fe $f6
    rst $38                                       ; $75f6: $ff
    db $fc                                        ; $75f7: $fc
    cp $fc                                        ; $75f8: $fe $fc
    db $fd                                        ; $75fa: $fd
    ld hl, sp-$14                                 ; $75fb: $f8 $ec
    ld hl, sp-$06                                 ; $75fd: $f8 $fa
    ld b, $f8                                     ; $75ff: $06 $f8
    ldh [$f5], a                                  ; $7601: $e0 $f5
    cp $78                                        ; $7603: $fe $78
    push hl                                       ; $7605: $e5
    inc l                                         ; $7606: $2c
    push af                                       ; $7607: $f5
    nop                                           ; $7608: $00
    and c                                         ; $7609: $a1
    xor $cc                                       ; $760a: $ee $cc
    pop af                                        ; $760c: $f1
    xor d                                         ; $760d: $aa
    rst $38                                       ; $760e: $ff
    ld [bc], a                                    ; $760f: $02
    add c                                         ; $7610: $81
    and b                                         ; $7611: $a0
    pop bc                                        ; $7612: $c1
    add b                                         ; $7613: $80
    pop bc                                        ; $7614: $c1
    add l                                         ; $7615: $85
    jp $a1ff                                      ; $7616: $c3 $ff $a1


    jp $8300                                      ; $7619: $c3 $00 $83


    dec b                                         ; $761c: $05
    add e                                         ; $761d: $83
    ld b, b                                       ; $761e: $40
    add c                                         ; $761f: $81
    di                                            ; $7620: $f3
    ld b, c                                       ; $7621: $41
    add b                                         ; $7622: $80
    ldh [$a0], a                                  ; $7623: $e0 $a0
    ld [hl], b                                    ; $7625: $70
    ret nz                                        ; $7626: $c0

    ret nz                                        ; $7627: $c0

    ldh [rBCPS], a                                ; $7628: $e0 $68
    ldh a, [rIE]                                  ; $762a: $f0 $ff
    pop af                                        ; $762c: $f1
    db $fc                                        ; $762d: $fc
    call c, Call_000_1eff                         ; $762e: $dc $ff $1e
    rst $38                                       ; $7631: $ff
    add b                                         ; $7632: $80
    ld e, $fd                                     ; $7633: $1e $fd
    ld [de], a                                    ; $7635: $12
    ld [hl], h                                    ; $7636: $74
    add d                                         ; $7637: $82
    ld c, b                                       ; $7638: $48
    nop                                           ; $7639: $00
    ld bc, $5878                                  ; $763a: $01 $78 $58
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    ld b, b                                       ; $763f: $40
    add c                                         ; $7640: $81
    add d                                         ; $7641: $82
    pop bc                                        ; $7642: $c1
    and b                                         ; $7643: $a0
    pop bc                                        ; $7644: $c1
    and c                                         ; $7645: $a1
    jp $85ff                                      ; $7646: $c3 $ff $85


    jp $8304                                      ; $7649: $c3 $04 $83


    ld b, c                                       ; $764c: $41
    add e                                         ; $764d: $83
    ld [bc], a                                    ; $764e: $02
    add c                                         ; $764f: $81
    or $6d                                        ; $7650: $f6 $6d
    add b                                         ; $7652: $80
    add b                                         ; $7653: $80
    and b                                         ; $7654: $a0
    ld c, h                                       ; $7655: $4c
    and b                                         ; $7656: $a0
    ret nc                                        ; $7657: $d0

    ldh [$64], a                                  ; $7658: $e0 $64

jr_02a_765a:
    ldh a, [$ed]                                  ; $765a: $f0 $ed
    ldh a, [$d0]                                  ; $765c: $f0 $d0
    ld [c], a                                     ; $765e: $e2
    ld b, c                                       ; $765f: $41
    ld e, $c6                                     ; $7660: $1e $c6
    add c                                         ; $7662: $81
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    jr nc, jr_02a_765a                            ; $7665: $30 $f3

    nop                                           ; $7667: $00
    add d                                         ; $7668: $82
    ret nc                                        ; $7669: $d0

    ldh [$a0], a                                  ; $766a: $e0 $a0
    xor c                                         ; $766c: $a9
    ld [bc], a                                    ; $766d: $02
    ld bc, $0300                                  ; $766e: $01 $00 $03
    nop                                           ; $7671: $00
    ld [hl], c                                    ; $7672: $71
    xor c                                         ; $7673: $a9
    pop af                                        ; $7674: $f1
    ldh [$60], a                                  ; $7675: $e0 $60
    add sp, $30                                   ; $7677: $e8 $30
    add e                                         ; $7679: $83
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    nop                                           ; $7682: $00
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
    nop                                           ; $7693: $00
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
    nop                                           ; $76a4: $00
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
    nop                                           ; $76b5: $00
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    ccf                                           ; $76ba: $3f
    ld bc, $0000                                  ; $76bb: $01 $00 $00
    nop                                           ; $76be: $00
    push af                                       ; $76bf: $f5
    push bc                                       ; $76c0: $c5
    push de                                       ; $76c1: $d5
    push hl                                       ; $76c2: $e5
    ld [$c32f], a                                 ; $76c3: $ea $2f $c3
    ld c, a                                       ; $76c6: $4f
    ld a, $ff                                     ; $76c7: $3e $ff
    ld b, $01                                     ; $76c9: $06 $01
    ld hl, $c330                                  ; $76cb: $21 $30 $c3
    ld [hl+], a                                   ; $76ce: $22
    ld [hl], b                                    ; $76cf: $70
    inc hl                                        ; $76d0: $23
    ld [hl+], a                                   ; $76d1: $22
    ld [hl], b                                    ; $76d2: $70
    inc hl                                        ; $76d3: $23
    ld [hl+], a                                   ; $76d4: $22
    ld [hl], b                                    ; $76d5: $70
    inc hl                                        ; $76d6: $23
    ld [hl+], a                                   ; $76d7: $22
    ld [hl], b                                    ; $76d8: $70
    inc hl                                        ; $76d9: $23
    ld [hl+], a                                   ; $76da: $22
    ld [hl+], a                                   ; $76db: $22
    ld [hl+], a                                   ; $76dc: $22
    ld [hl+], a                                   ; $76dd: $22
    ld a, c                                       ; $76de: $79
    ld h, $00                                     ; $76df: $26 $00
    ld l, a                                       ; $76e1: $6f
    add hl, hl                                    ; $76e2: $29
    ld bc, $4028                                  ; $76e3: $01 $28 $40
    add hl, bc                                    ; $76e6: $09
    ld a, [hl+]                                   ; $76e7: $2a
    ld h, [hl]                                    ; $76e8: $66
    ld l, a                                       ; $76e9: $6f
    ld a, [hl]                                    ; $76ea: $7e
    cp $fe                                        ; $76eb: $fe $fe
    jr nz, jr_02a_76f1                            ; $76ed: $20 $02

    jr jr_02a_7761                                ; $76ef: $18 $70

jr_02a_76f1:
    add sp, -$02                                  ; $76f1: $e8 $fe
    ld de, $c332                                  ; $76f3: $11 $32 $c3
    push hl                                       ; $76f6: $e5
    ld hl, sp+$02                                 ; $76f7: $f8 $02
    ld [hl], e                                    ; $76f9: $73
    inc hl                                        ; $76fa: $23
    ld [hl], d                                    ; $76fb: $72
    pop hl                                        ; $76fc: $e1
    ld d, h                                       ; $76fd: $54
    ld e, l                                       ; $76fe: $5d
    ld b, $ff                                     ; $76ff: $06 $ff
    ld c, $03                                     ; $7701: $0e $03
    xor a                                         ; $7703: $af
    ld hl, $c330                                  ; $7704: $21 $30 $c3
    ld [hl], a                                    ; $7707: $77
    ld hl, $c338                                  ; $7708: $21 $38 $c3
    ld [hl], a                                    ; $770b: $77
    inc hl                                        ; $770c: $23

jr_02a_770d:
    inc b                                         ; $770d: $04
    ld a, [de]                                    ; $770e: $1a
    inc de                                        ; $770f: $13
    cp $fe                                        ; $7710: $fe $fe
    jr z, jr_02a_7749                             ; $7712: $28 $35

    cp $ff                                        ; $7714: $fe $ff
    jr nz, jr_02a_770d                            ; $7716: $20 $f5

    inc b                                         ; $7718: $04
    ld a, b                                       ; $7719: $78
    inc a                                         ; $771a: $3c
    ld [hl], a                                    ; $771b: $77
    push de                                       ; $771c: $d5
    push hl                                       ; $771d: $e5
    ld hl, sp+$04                                 ; $771e: $f8 $04
    ld e, [hl]                                    ; $7720: $5e
    inc hl                                        ; $7721: $23
    ld d, [hl]                                    ; $7722: $56
    pop hl                                        ; $7723: $e1
    ld [de], a                                    ; $7724: $12
    inc de                                        ; $7725: $13
    inc de                                        ; $7726: $13
    push hl                                       ; $7727: $e5
    ld hl, sp+$04                                 ; $7728: $f8 $04
    ld [hl], e                                    ; $772a: $73
    inc hl                                        ; $772b: $23
    ld [hl], d                                    ; $772c: $72
    pop hl                                        ; $772d: $e1
    pop de                                        ; $772e: $d1
    ld a, [de]                                    ; $772f: $1a
    inc a                                         ; $7730: $3c
    inc de                                        ; $7731: $13
    push hl                                       ; $7732: $e5
    push de                                       ; $7733: $d5
    ld d, a                                       ; $7734: $57
    ld a, $04                                     ; $7735: $3e $04
    sub c                                         ; $7737: $91
    ld hl, $c330                                  ; $7738: $21 $30 $c3
    ld e, a                                       ; $773b: $5f
    ld a, d                                       ; $773c: $7a
    ld d, $00                                     ; $773d: $16 $00
    add hl, de                                    ; $773f: $19
    add hl, de                                    ; $7740: $19
    inc hl                                        ; $7741: $23
    ld [hl], a                                    ; $7742: $77
    pop de                                        ; $7743: $d1
    pop hl                                        ; $7744: $e1
    inc hl                                        ; $7745: $23
    dec c                                         ; $7746: $0d
    jr nz, jr_02a_770d                            ; $7747: $20 $c4

jr_02a_7749:
    ld a, $ff                                     ; $7749: $3e $ff
    dec hl                                        ; $774b: $2b
    ld [hl], a                                    ; $774c: $77
    push hl                                       ; $774d: $e5
    ld hl, sp+$02                                 ; $774e: $f8 $02
    ld e, [hl]                                    ; $7750: $5e
    inc hl                                        ; $7751: $23
    ld d, [hl]                                    ; $7752: $56
    pop hl                                        ; $7753: $e1
    dec de                                        ; $7754: $1b
    dec de                                        ; $7755: $1b
    ld [de], a                                    ; $7756: $12
    ld a, $01                                     ; $7757: $3e $01
    ld hl, $7775                                  ; $7759: $21 $75 $77
    call Call_000_23e8                            ; $775c: $cd $e8 $23
    add sp, $02                                   ; $775f: $e8 $02

jr_02a_7761:
    pop hl                                        ; $7761: $e1
    pop de                                        ; $7762: $d1
    pop bc                                        ; $7763: $c1
    pop af                                        ; $7764: $f1
    ret                                           ; $7765: $c9


    push af                                       ; $7766: $f5
    push bc                                       ; $7767: $c5
    push de                                       ; $7768: $d5
    push hl                                       ; $7769: $e5
    ld hl, $7775                                  ; $776a: $21 $75 $77
    call Call_000_2449                            ; $776d: $cd $49 $24
    pop hl                                        ; $7770: $e1
    pop de                                        ; $7771: $d1
    pop bc                                        ; $7772: $c1
    pop af                                        ; $7773: $f1
    ret                                           ; $7774: $c9


    rst $30                                       ; $7775: $f7
    add b                                         ; $7776: $80
    inc bc                                        ; $7777: $03
    jr nz, jr_02a_777e                            ; $7778: $20 $04

    rst $30                                       ; $777a: $f7
    nop                                           ; $777b: $00
    inc bc                                        ; $777c: $03
    ret nz                                        ; $777d: $c0

jr_02a_777e:
    push af                                       ; $777e: $f5
    push bc                                       ; $777f: $c5
    push de                                       ; $7780: $d5
    push hl                                       ; $7781: $e5
    ldh a, [$96]                                  ; $7782: $f0 $96
    push af                                       ; $7784: $f5
    ld a, $06                                     ; $7785: $3e $06
    ldh [$96], a                                  ; $7787: $e0 $96
    ldh [rSVBK], a                                ; $7789: $e0 $70
    ld c, $00                                     ; $778b: $0e $00
    ld hl, $c338                                  ; $778d: $21 $38 $c3

jr_02a_7790:
    ld a, [hl]                                    ; $7790: $7e
    cp $ff                                        ; $7791: $fe $ff
    jr z, jr_02a_77b2                             ; $7793: $28 $1d

    push hl                                       ; $7795: $e5
    ld l, c                                       ; $7796: $69
    ld h, $00                                     ; $7797: $26 $00
    add hl, hl                                    ; $7799: $29
    ld de, $c330                                  ; $779a: $11 $30 $c3
    add hl, de                                    ; $779d: $19
    inc hl                                        ; $779e: $23
    ld a, [hl]                                    ; $779f: $7e
    dec a                                         ; $77a0: $3d
    ld [hl], a                                    ; $77a1: $77
    pop hl                                        ; $77a2: $e1
    inc hl                                        ; $77a3: $23
    ld b, c                                       ; $77a4: $41
    inc c                                         ; $77a5: $0c
    or a                                          ; $77a6: $b7
    jr nz, jr_02a_7790                            ; $77a7: $20 $e7

    ld a, b                                       ; $77a9: $78
    call Call_02a_77bc                            ; $77aa: $cd $bc $77
    ld a, c                                       ; $77ad: $79
    cp $04                                        ; $77ae: $fe $04
    jr nz, jr_02a_7790                            ; $77b0: $20 $de

jr_02a_77b2:
    pop af                                        ; $77b2: $f1
    ldh [$96], a                                  ; $77b3: $e0 $96
    ldh [rSVBK], a                                ; $77b5: $e0 $70
    pop hl                                        ; $77b7: $e1
    pop de                                        ; $77b8: $d1
    pop bc                                        ; $77b9: $c1
    pop af                                        ; $77ba: $f1
    ret                                           ; $77bb: $c9


Call_02a_77bc:
    push af                                       ; $77bc: $f5
    push bc                                       ; $77bd: $c5
    push de                                       ; $77be: $d5
    push hl                                       ; $77bf: $e5
    push af                                       ; $77c0: $f5
    add sp, -$01                                  ; $77c1: $e8 $ff
    ld hl, sp+$00                                 ; $77c3: $f8 $00
    ld [hl], a                                    ; $77c5: $77
    ld h, $00                                     ; $77c6: $26 $00
    ld l, a                                       ; $77c8: $6f
    add hl, hl                                    ; $77c9: $29
    ld bc, $c330                                  ; $77ca: $01 $30 $c3
    add hl, bc                                    ; $77cd: $09
    ld a, [hl]                                    ; $77ce: $7e
    ld [$c33c], a                                 ; $77cf: $ea $3c $c3

jr_02a_77d2:
    ld a, [$c32f]                                 ; $77d2: $fa $2f $c3
    ld l, a                                       ; $77d5: $6f
    ld h, $00                                     ; $77d6: $26 $00
    add hl, hl                                    ; $77d8: $29
    ld bc, $4028                                  ; $77d9: $01 $28 $40
    add hl, bc                                    ; $77dc: $09
    ld a, [hl+]                                   ; $77dd: $2a
    ld h, [hl]                                    ; $77de: $66
    ld l, a                                       ; $77df: $6f
    ld a, [$c33c]                                 ; $77e0: $fa $3c $c3
    ld c, a                                       ; $77e3: $4f
    ld b, $00                                     ; $77e4: $06 $00
    add hl, bc                                    ; $77e6: $09
    ld a, [hl]                                    ; $77e7: $7e
    cp $ff                                        ; $77e8: $fe $ff
    jr nz, jr_02a_77fb                            ; $77ea: $20 $0f

    ld hl, sp+$00                                 ; $77ec: $f8 $00
    ld c, [hl]                                    ; $77ee: $4e
    ld b, $00                                     ; $77ef: $06 $00
    ld hl, $c338                                  ; $77f1: $21 $38 $c3
    add hl, bc                                    ; $77f4: $09
    ld a, [hl]                                    ; $77f5: $7e
    ld [$c33c], a                                 ; $77f6: $ea $3c $c3
    jr jr_02a_77d2                                ; $77f9: $18 $d7

jr_02a_77fb:
    ld b, a                                       ; $77fb: $47
    inc hl                                        ; $77fc: $23
    ld c, [hl]                                    ; $77fd: $4e
    inc hl                                        ; $77fe: $23
    ld e, [hl]                                    ; $77ff: $5e
    inc hl                                        ; $7800: $23
    ld a, [hl]                                    ; $7801: $7e
    push af                                       ; $7802: $f5
    push bc                                       ; $7803: $c5
    ld l, e                                       ; $7804: $6b
    ld h, $00                                     ; $7805: $26 $00
    add hl, hl                                    ; $7807: $29
    add hl, hl                                    ; $7808: $29
    add hl, hl                                    ; $7809: $29
    add hl, hl                                    ; $780a: $29
    ld de, $b000                                  ; $780b: $11 $00 $b0
    add hl, de                                    ; $780e: $19
    push hl                                       ; $780f: $e5
    ld l, b                                       ; $7810: $68
    ld h, $00                                     ; $7811: $26 $00
    add hl, hl                                    ; $7813: $29
    add hl, hl                                    ; $7814: $29
    add hl, hl                                    ; $7815: $29
    add hl, hl                                    ; $7816: $29
    ld bc, $d800                                  ; $7817: $01 $00 $d8
    add hl, bc                                    ; $781a: $09
    pop de                                        ; $781b: $d1
    pop bc                                        ; $781c: $c1
    call Call_000_0468                            ; $781d: $cd $68 $04
    ld a, [$c33c]                                 ; $7820: $fa $3c $c3
    add $04                                       ; $7823: $c6 $04
    ld [$c33c], a                                 ; $7825: $ea $3c $c3
    pop af                                        ; $7828: $f1
    ld d, a                                       ; $7829: $57
    add sp, $01                                   ; $782a: $e8 $01
    pop af                                        ; $782c: $f1
    ld h, $00                                     ; $782d: $26 $00
    ld l, a                                       ; $782f: $6f
    add hl, hl                                    ; $7830: $29
    ld bc, $c330                                  ; $7831: $01 $30 $c3
    add hl, bc                                    ; $7834: $09
    ld a, [$c33c]                                 ; $7835: $fa $3c $c3
    ld [hl+], a                                   ; $7838: $22
    ld [hl], d                                    ; $7839: $72
    pop hl                                        ; $783a: $e1
    pop de                                        ; $783b: $d1
    pop bc                                        ; $783c: $c1
    pop af                                        ; $783d: $f1
    ret                                           ; $783e: $c9


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

Jump_02a_78a1:
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

Call_02a_7b44:
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

Call_02a_7e22:
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

Jump_02a_7f7c:
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

Jump_02a_7fc1:
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
