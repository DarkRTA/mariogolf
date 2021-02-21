; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    ld a, [bc]                                    ; $4000: $0a
    ld b, b                                       ; $4001: $40
    or e                                          ; $4002: $b3
    ld c, d                                       ; $4003: $4a
    ld h, e                                       ; $4004: $63
    ld d, h                                       ; $4005: $54
    xor b                                         ; $4006: $a8
    ld h, c                                       ; $4007: $61

    db $af, $6d

    ld [de], a                                    ; $400a: $12
    ld b, b                                       ; $400b: $40
    ld d, d                                       ; $400c: $52
    ld b, b                                       ; $400d: $40
    cp h                                          ; $400e: $bc
    ld c, b                                       ; $400f: $48
    ld c, b                                       ; $4010: $48
    ld c, c                                       ; $4011: $49
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    rra                                           ; $4014: $1f
    ld a, [de]                                    ; $4015: $1a
    db $f4                                        ; $4016: $f4
    inc c                                         ; $4017: $0c
    adc h                                         ; $4018: $8c
    nop                                           ; $4019: $00
    sbc a                                         ; $401a: $9f
    ld [bc], a                                    ; $401b: $02
    rra                                           ; $401c: $1f
    ld [bc], a                                    ; $401d: $02
    ld e, a                                       ; $401e: $5f
    ld bc, $00d4                                  ; $401f: $01 $d4 $00
    ld a, a                                       ; $4022: $7f
    ld c, a                                       ; $4023: $4f
    rra                                           ; $4024: $1f
    ld a, [de]                                    ; $4025: $1a
    db $f4                                        ; $4026: $f4
    inc c                                         ; $4027: $0c
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    rra                                           ; $402a: $1f
    ld [bc], a                                    ; $402b: $02
    ld e, a                                       ; $402c: $5f
    ld bc, $00d4                                  ; $402d: $01 $d4 $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    sbc a                                         ; $4032: $9f
    ld [bc], a                                    ; $4033: $02
    rra                                           ; $4034: $1f
    ld [bc], a                                    ; $4035: $02
    ld e, a                                       ; $4036: $5f
    ld bc, $0000                                  ; $4037: $01 $00 $00
    rra                                           ; $403a: $1f
    ld a, [de]                                    ; $403b: $1a
    db $f4                                        ; $403c: $f4
    inc c                                         ; $403d: $0c
    rra                                           ; $403e: $1f
    ld [bc], a                                    ; $403f: $02
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    rra                                           ; $4042: $1f
    ld a, [de]                                    ; $4043: $1a
    db $f4                                        ; $4044: $f4
    inc c                                         ; $4045: $0c
    ld e, a                                       ; $4046: $5f
    ld bc, $0000                                  ; $4047: $01 $00 $00
    ld a, a                                       ; $404a: $7f
    ld c, a                                       ; $404b: $4f
    rra                                           ; $404c: $1f
    ld a, [de]                                    ; $404d: $1a
    ld e, a                                       ; $404e: $5f
    ld bc, $0000                                  ; $404f: $01 $00 $00
    db $dd                                        ; $4052: $dd
    rst $38                                       ; $4053: $ff
    rst $38                                       ; $4054: $ff
    ld sp, hl                                     ; $4055: $f9
    ldh [$e0], a                                  ; $4056: $e0 $e0
    rst $18                                       ; $4058: $df
    ldh [$e8], a                                  ; $4059: $e0 $e8
    db $e3                                        ; $405b: $e3
    db $e3                                        ; $405c: $e3
    rst $10                                       ; $405d: $d7
    ld e, l                                       ; $405e: $5d
    inc bc                                        ; $405f: $03
    db $fd                                        ; $4060: $fd
    ret nc                                        ; $4061: $d0

    db $ec                                        ; $4062: $ec

Call_049_4063:
    cp $fa                                        ; $4063: $fe $fa
    db $e4                                        ; $4065: $e4
    cp $fe                                        ; $4066: $fe $fe
    rst $38                                       ; $4068: $ff
    pop hl                                        ; $4069: $e1
    db $e3                                        ; $406a: $e3
    call c, Call_000_3cc2                         ; $406b: $dc $c2 $3c
    ld c, $f0                                     ; $406e: $0e $f0
    ldh a, [rIE]                                  ; $4070: $f0 $ff
    rst $08                                       ; $4072: $cf
    ret nz                                        ; $4073: $c0

    ccf                                           ; $4074: $3f
    rlca                                          ; $4075: $07
    ld hl, sp+$1f                                 ; $4076: $f8 $1f
    ldh [$30], a                                  ; $4078: $e0 $30
    rst $30                                       ; $407a: $f7
    ret nz                                        ; $407b: $c0

    ldh [rP1], a                                  ; $407c: $e0 $00
    rst $38                                       ; $407e: $ff
    ld [c], a                                     ; $407f: $e2
    rst $38                                       ; $4080: $ff
    nop                                           ; $4081: $00
    rst $38                                       ; $4082: $ff
    ldh a, [rIE]                                  ; $4083: $f0 $ff
    rrca                                          ; $4085: $0f
    db $fc                                        ; $4086: $fc
    inc bc                                        ; $4087: $03
    ld b, $01                                     ; $4088: $06 $01
    inc bc                                        ; $408a: $03
    nop                                           ; $408b: $00
    ld bc, $fedc                                  ; $408c: $01 $dc $fe
    ldh [$90], a                                  ; $408f: $e0 $90
    ld [$fcfc], a                                 ; $4091: $ea $fc $fc
    ei                                            ; $4094: $fb
    or h                                          ; $4095: $b4
    jp hl                                         ; $4096: $e9


    cp $1d                                        ; $4097: $fe $1d
    db $eb                                        ; $4099: $eb
    sbc [hl]                                      ; $409a: $9e
    dec e                                         ; $409b: $1d
    ld hl, sp-$1e                                 ; $409c: $f8 $e2
    db $fd                                        ; $409e: $fd
    cp $e0                                        ; $409f: $fe $e0
    ld bc, $f807                                  ; $40a1: $01 $07 $f8
    rst $38                                       ; $40a4: $ff
    inc c                                         ; $40a5: $0c
    ldh a, [$08]                                  ; $40a6: $f0 $08
    ldh a, [$c0]                                  ; $40a8: $f0 $c0
    ccf                                           ; $40aa: $3f
    nop                                           ; $40ab: $00
    rst $38                                       ; $40ac: $ff
    rst $38                                       ; $40ad: $ff
    inc bc                                        ; $40ae: $03
    db $fc                                        ; $40af: $fc
    ld c, $f0                                     ; $40b0: $0e $f0
    inc e                                         ; $40b2: $1c
    ldh [$f8], a                                  ; $40b3: $e0 $f8
    nop                                           ; $40b5: $00
    rst $38                                       ; $40b6: $ff
    ld [hl], b                                    ; $40b7: $70
    nop                                           ; $40b8: $00
    jr nc, jr_049_40bb                            ; $40b9: $30 $00

jr_049_40bb:
    rrca                                          ; $40bb: $0f
    ldh a, [$78]                                  ; $40bc: $f0 $78
    add b                                         ; $40be: $80

Call_049_40bf:
    ld sp, hl                                     ; $40bf: $f9
    ldh a, [$a6]                                  ; $40c0: $f0 $a6
    db $e3                                        ; $40c2: $e3
    and c                                         ; $40c3: $a1
    db $e3                                        ; $40c4: $e3
    ld a, a                                       ; $40c5: $7f
    ld a, a                                       ; $40c6: $7f
    ccf                                           ; $40c7: $3f
    ccf                                           ; $40c8: $3f
    rra                                           ; $40c9: $1f
    sbc $ff                                       ; $40ca: $de $ff
    db $e3                                        ; $40cc: $e3
    ccf                                           ; $40cd: $3f
    rra                                           ; $40ce: $1f
    ld a, a                                       ; $40cf: $7f
    ccf                                           ; $40d0: $3f
    ld l, h                                       ; $40d1: $6c
    ld [c], a                                     ; $40d2: $e2
    db $fc                                        ; $40d3: $fc
    rst $38                                       ; $40d4: $ff
    ld a, e                                       ; $40d5: $7b
    db $fc                                        ; $40d6: $fc
    cp $fe                                        ; $40d7: $fe $fe
    ldh [$fc], a                                  ; $40d9: $e0 $fc
    ldh a, [rIE]                                  ; $40db: $f0 $ff
    ldh a, [$66]                                  ; $40dd: $f0 $66
    ldh [rIE], a                                  ; $40df: $e0 $ff
    ld bc, $00ff                                  ; $40e1: $01 $ff $00
    rlca                                          ; $40e4: $07
    nop                                           ; $40e5: $00
    dec b                                         ; $40e6: $05
    ld [bc], a                                    ; $40e7: $02
    dec b                                         ; $40e8: $05
    rst $38                                       ; $40e9: $ff
    ld [bc], a                                    ; $40ea: $02
    jr c, jr_049_40f4                             ; $40eb: $38 $07

    ldh [$1f], a                                  ; $40ed: $e0 $1f
    inc a                                         ; $40ef: $3c
    ret nz                                        ; $40f0: $c0

    inc a                                         ; $40f1: $3c
    cpl                                           ; $40f2: $2f
    ret nz                                        ; $40f3: $c0

jr_049_40f4:
    ldh a, [rP1]                                  ; $40f4: $f0 $00
    add b                                         ; $40f6: $80
    cp $e0                                        ; $40f7: $fe $e0
    ret nz                                        ; $40f9: $c0

    cp $e0                                        ; $40fa: $fe $e0
    ld e, h                                       ; $40fc: $5c
    db $e3                                        ; $40fd: $e3
    ld [hl], h                                    ; $40fe: $74
    sbc l                                         ; $40ff: $9d
    ldh [$59], a                                  ; $4100: $e0 $59
    ldh [$7f], a                                  ; $4102: $e0 $7f
    cp $e0                                        ; $4104: $fe $e0
    db $fc                                        ; $4106: $fc
    nop                                           ; $4107: $00
    inc bc                                        ; $4108: $03
    call nc, Call_000_26e0                        ; $4109: $d4 $e0 $26
    ld a, [c]                                     ; $410c: $f2
    pop hl                                        ; $410d: $e1
    ld hl, sp+$00                                 ; $410e: $f8 $00
    sbc d                                         ; $4110: $9a
    db $e3                                        ; $4111: $e3
    ldh [$cb], a                                  ; $4112: $e0 $cb
    db $e3                                        ; $4114: $e3
    ld c, h                                       ; $4115: $4c
    ld [c], a                                     ; $4116: $e2
    cp $e1                                        ; $4117: $fe $e1
    rst $18                                       ; $4119: $df
    ld sp, hl                                     ; $411a: $f9
    or $fa                                        ; $411b: $f6 $fa
    db $f4                                        ; $411d: $f4
    cp $a2                                        ; $411e: $fe $a2
    ldh [$fd], a                                  ; $4120: $e0 $fd
    ld a, d                                       ; $4122: $7a
    rst $38                                       ; $4123: $ff

jr_049_4124:
    ld a, l                                       ; $4124: $7d
    cp d                                          ; $4125: $ba
    add hl, sp                                    ; $4126: $39
    add $f1                                       ; $4127: $c6 $f1
    ld c, $31                                     ; $4129: $0e $31
    ld c, $ff                                     ; $412b: $0e $ff
    rla                                           ; $412d: $17
    ld [$001c], sp                                ; $412e: $08 $1c $00
    jr c, jr_049_4133                             ; $4131: $38 $00

jr_049_4133:
    inc c                                         ; $4133: $0c
    inc bc                                        ; $4134: $03
    sub a                                         ; $4135: $97
    inc c                                         ; $4136: $0c
    inc bc                                        ; $4137: $03
    sbc [hl]                                      ; $4138: $9e
    adc [hl]                                      ; $4139: $8e
    ldh [rIF], a                                  ; $413a: $e0 $0f

jr_049_413c:
    adc h                                         ; $413c: $8c
    ldh [$fe], a                                  ; $413d: $e0 $fe
    ldh [rTAC], a                                 ; $413f: $e0 $07
    rst $30                                       ; $4141: $f7
    jr jr_049_4124                                ; $4142: $18 $e0

    db $10                                        ; $4144: $10
    db $f4                                        ; $4145: $f4
    jp nz, Jump_000_00e0                          ; $4146: $c2 $e0 $00

    ldh a, [$60]                                  ; $4149: $f0 $60
    rst $18                                       ; $414b: $df
    cp $fc                                        ; $414c: $fe $fc
    rst $38                                       ; $414e: $ff
    rst $38                                       ; $414f: $ff
    jr nz, jr_049_413c                            ; $4150: $20 $ea

    jp nz, Jump_000_0001                          ; $4152: $c2 $01 $00

    rst $38                                       ; $4155: $ff
    inc bc                                        ; $4156: $03
    inc bc                                        ; $4157: $03
    rlca                                          ; $4158: $07
    inc bc                                        ; $4159: $03
    rrca                                          ; $415a: $0f
    rlca                                          ; $415b: $07
    rst $38                                       ; $415c: $ff
    rst $38                                       ; $415d: $ff
    or $f2                                        ; $415e: $f6 $f2
    db $e3                                        ; $4160: $e3
    rst $00                                       ; $4161: $c7
    inc bc                                        ; $4162: $03
    ld a, b                                       ; $4163: $78
    push bc                                       ; $4164: $c5
    ld a, a                                       ; $4165: $7f
    ld a, a                                       ; $4166: $7f
    rst $38                                       ; $4167: $ff
    ld a, a                                       ; $4168: $7f
    ld hl, sp+$6c                                 ; $4169: $f8 $6c
    ret c                                         ; $416b: $d8

    cp [hl]                                       ; $416c: $be
    ldh [$c6], a                                  ; $416d: $e0 $c6
    push bc                                       ; $416f: $c5
    ld hl, sp-$09                                 ; $4170: $f8 $f7
    pop af                                        ; $4172: $f1
    ld c, $03                                     ; $4173: $0e $03
    cp $f0                                        ; $4175: $fe $f0
    pop hl                                        ; $4177: $e1
    ret nz                                        ; $4178: $c0

    ret nz                                        ; $4179: $c0

    cp a                                          ; $417a: $bf
    add b                                         ; $417b: $80
    ld a, a                                       ; $417c: $7f
    rra                                           ; $417d: $1f
    ldh [$f3], a                                  ; $417e: $e0 $f3
    ld a, a                                       ; $4180: $7f
    add b                                         ; $4181: $80
    ld a, [hl-]                                   ; $4182: $3a
    pop hl                                        ; $4183: $e1
    jr nc, @-$3c                                  ; $4184: $30 $c2

    ld e, $1f                                     ; $4186: $1e $1f
    xor $1e                                       ; $4188: $ee $1e
    rst $38                                       ; $418a: $ff
    db $ed                                        ; $418b: $ed
    adc h                                         ; $418c: $8c
    ld [hl], e                                    ; $418d: $73
    adc a                                         ; $418e: $8f
    ld [hl], b                                    ; $418f: $70
    rst $38                                       ; $4190: $ff
    nop                                           ; $4191: $00
    di                                            ; $4192: $f3
    cp a                                          ; $4193: $bf
    adc h                                         ; $4194: $8c
    add e                                         ; $4195: $83
    ld a, h                                       ; $4196: $7c
    rlca                                          ; $4197: $07
    ld hl, sp+$3e                                 ; $4198: $f8 $3e
    ld a, [bc]                                    ; $419a: $0a
    ldh [$fc], a                                  ; $419b: $e0 $fc
    jr c, jr_049_41c1                             ; $419d: $38 $22

    ldh [$2a], a                                  ; $419f: $e0 $2a
    ldh [$74], a                                  ; $41a1: $e0 $74
    ret nz                                        ; $41a3: $c0

    call z, Call_000_0703                         ; $41a4: $cc $03 $07
    ld [hl], h                                    ; $41a7: $74
    ret nz                                        ; $41a8: $c0

    ld h, c                                       ; $41a9: $61
    jp Jump_049_7fff                              ; $41aa: $c3 $ff $7f


    add b                                         ; $41ad: $80
    rrca                                          ; $41ae: $0f
    ldh a, [$1f]                                  ; $41af: $f0 $1f
    ldh [$3e], a                                  ; $41b1: $e0 $3e
    ret nz                                        ; $41b3: $c0

    rla                                           ; $41b4: $17
    cp $00                                        ; $41b5: $fe $00
    cp $e0                                        ; $41b7: $fe $e0
    ld [c], a                                     ; $41b9: $e2
    ldh [$e8], a                                  ; $41ba: $e0 $e8
    ret nz                                        ; $41bc: $c0

    rst $38                                       ; $41bd: $ff
    ld sp, hl                                     ; $41be: $f9
    ld [hl], l                                    ; $41bf: $75
    jp hl                                         ; $41c0: $e9


jr_049_41c1:
    rst $30                                       ; $41c1: $f7
    db $fc                                        ; $41c2: $fc
    rst $38                                       ; $41c3: $ff
    ld hl, sp-$3f                                 ; $41c4: $f8 $c1
    and b                                         ; $41c6: $a0
    pop bc                                        ; $41c7: $c1
    rst $38                                       ; $41c8: $ff
    adc [hl]                                      ; $41c9: $8e
    pop af                                        ; $41ca: $f1
    rst $38                                       ; $41cb: $ff
    adc [hl]                                      ; $41cc: $8e
    pop af                                        ; $41cd: $f1
    rrca                                          ; $41ce: $0f
    ldh a, [rTAC]                                 ; $41cf: $f0 $07
    ld hl, sp+$73                                 ; $41d1: $f8 $73
    adc h                                         ; $41d3: $8c
    rst $38                                       ; $41d4: $ff
    ld a, [$8104]                                 ; $41d5: $fa $04 $81
    rst $38                                       ; $41d8: $ff
    dec c                                         ; $41d9: $0d
    di                                            ; $41da: $f3
    dec de                                        ; $41db: $1b
    pop hl                                        ; $41dc: $e1
    ld a, a                                       ; $41dd: $7f
    inc de                                        ; $41de: $13
    pop hl                                        ; $41df: $e1
    ld [hl], l                                    ; $41e0: $75
    add e                                         ; $41e1: $83
    ei                                            ; $41e2: $fb
    rlca                                          ; $41e3: $07
    rst $28                                       ; $41e4: $ef
    ld l, [hl]                                    ; $41e5: $6e
    ret nz                                        ; $41e6: $c0

    cp [hl]                                       ; $41e7: $be
    ld b, $e0                                     ; $41e8: $06 $e0
    add b                                         ; $41ea: $80
    pop af                                        ; $41eb: $f1
    add b                                         ; $41ec: $80
    di                                            ; $41ed: $f3
    pop hl                                        ; $41ee: $e1
    sbc b                                         ; $41ef: $98
    and l                                         ; $41f0: $a5
    rrca                                          ; $41f1: $0f
    rst $10                                       ; $41f2: $d7
    rlca                                          ; $41f3: $07
    rra                                           ; $41f4: $1f
    rrca                                          ; $41f5: $0f
    adc h                                         ; $41f6: $8c
    cp b                                          ; $41f7: $b8
    nop                                           ; $41f8: $00
    and d                                         ; $41f9: $a2
    pop bc                                        ; $41fa: $c1
    ld hl, sp-$09                                 ; $41fb: $f8 $f7
    rst $38                                       ; $41fd: $ff
    ldh a, [$ef]                                  ; $41fe: $f0 $ef
    ldh a, [$ef]                                  ; $4200: $f0 $ef
    pop af                                        ; $4202: $f1
    xor $f9                                       ; $4203: $ee $f9
    or $54                                        ; $4205: $f6 $54
    push bc                                       ; $4207: $c5
    and b                                         ; $4208: $a0
    db $10                                        ; $4209: $10
    jp nz, Jump_049_4ec0                          ; $420a: $c2 $c0 $4e

    jp nz, $ae80                                  ; $420d: $c2 $80 $ae

    and b                                         ; $4210: $a0
    inc bc                                        ; $4211: $03
    ld [hl], b                                    ; $4212: $70
    db $ed                                        ; $4213: $ed
    add d                                         ; $4214: $82
    ld c, b                                       ; $4215: $48
    jp nz, $ee3c                                  ; $4216: $c2 $3c $ee

    and [hl]                                      ; $4219: $a6
    ld b, b                                       ; $421a: $40
    pop hl                                        ; $421b: $e1
    ret c                                         ; $421c: $d8

    pop hl                                        ; $421d: $e1
    db $dd                                        ; $421e: $dd
    and l                                         ; $421f: $a5
    adc h                                         ; $4220: $8c
    and c                                         ; $4221: $a1
    ld b, $a7                                     ; $4222: $06 $a7
    ld bc, $0106                                  ; $4224: $01 $06 $01
    add h                                         ; $4227: $84
    and c                                         ; $4228: $a1
    ld l, a                                       ; $4229: $6f
    and c                                         ; $422a: $a1
    jr c, jr_049_422d                             ; $422b: $38 $00

jr_049_422d:
    ret nz                                        ; $422d: $c0

    inc e                                         ; $422e: $1c
    rst $38                                       ; $422f: $ff
    ldh [rNR32], a                                ; $4230: $e0 $1c
    ldh [rNR34], a                                ; $4232: $e0 $1e
    ldh [rTAC], a                                 ; $4234: $e0 $07
    ld hl, sp-$79                                 ; $4236: $f8 $87
    rst $30                                       ; $4238: $f7
    ld a, b                                       ; $4239: $78
    ld h, [hl]                                    ; $423a: $66
    jr jr_049_4250                                ; $423b: $18 $13

    jp hl                                         ; $423d: $e9


    inc c                                         ; $423e: $0c
    nop                                           ; $423f: $00
    inc bc                                        ; $4240: $03
    inc e                                         ; $4241: $1c
    cp a                                          ; $4242: $bf
    pop bc                                        ; $4243: $c1
    cp $8f                                        ; $4244: $fe $8f
    ldh a, [$ee]                                  ; $4246: $f0 $ee
    pop af                                        ; $4248: $f1
    rra                                           ; $4249: $1f
    xor b                                         ; $424a: $a8
    nop                                           ; $424b: $00
    cp a                                          ; $424c: $bf
    call z, $a700                                 ; $424d: $cc $00 $a7

jr_049_4250:
    ret nz                                        ; $4250: $c0

    db $db                                        ; $4251: $db
    rst $20                                       ; $4252: $e7
    ret c                                         ; $4253: $d8

    add l                                         ; $4254: $85
    ccf                                           ; $4255: $3f
    rst $28                                       ; $4256: $ef
    rra                                           ; $4257: $1f
    ld e, a                                       ; $4258: $5f
    ccf                                           ; $4259: $3f
    cp a                                          ; $425a: $bf
    ld e, [hl]                                    ; $425b: $5e
    push de                                       ; $425c: $d5
    ldh [$e0], a                                  ; $425d: $e0 $e0
    sbc a                                         ; $425f: $9f
    db $fc                                        ; $4260: $fc
    or l                                          ; $4261: $b5
    and d                                         ; $4262: $a2
    db $fc                                        ; $4263: $fc
    push hl                                       ; $4264: $e5
    ld a, a                                       ; $4265: $7f
    add c                                         ; $4266: $81
    rrca                                          ; $4267: $0f
    nop                                           ; $4268: $00
    db $fc                                        ; $4269: $fc
    inc bc                                        ; $426a: $03
    ccf                                           ; $426b: $3f
    ld hl, sp+$03                                 ; $426c: $f8 $03
    ld hl, sp+$0f                                 ; $426e: $f8 $0f
    rst $38                                       ; $4270: $ff
    ccf                                           ; $4271: $3f
    add hl, hl                                    ; $4272: $29
    call nz, $a04f                                ; $4273: $c4 $4f $a0
    cp l                                          ; $4276: $bd
    add b                                         ; $4277: $80
    sbc h                                         ; $4278: $9c
    ret nz                                        ; $4279: $c0

    ret nz                                        ; $427a: $c0

    ldh [$e0], a                                  ; $427b: $e0 $e0
    cp $fe                                        ; $427d: $fe $fe
    ldh [$f8], a                                  ; $427f: $e0 $f8
    rst $38                                       ; $4281: $ff
    ldh [$7f], a                                  ; $4282: $e0 $7f
    cp a                                          ; $4284: $bf
    ld a, a                                       ; $4285: $7f
    cp a                                          ; $4286: $bf
    rst $38                                       ; $4287: $ff
    ccf                                           ; $4288: $3f
    ld a, a                                       ; $4289: $7f
    adc $fe                                       ; $428a: $ce $fe
    ldh [$3d], a                                  ; $428c: $e0 $3d
    rra                                           ; $428e: $1f

jr_049_428f:
    jr nz, jr_049_428f                            ; $428f: $20 $fe

    ldh [rSVBK], a                                ; $4291: $e0 $70
    add e                                         ; $4293: $83
    db $fd                                        ; $4294: $fd
    rst $38                                       ; $4295: $ff
    rst $30                                       ; $4296: $f7
    xor d                                         ; $4297: $aa
    rst $38                                       ; $4298: $ff

jr_049_4299:
    ld d, l                                       ; $4299: $55
    inc sp                                        ; $429a: $33
    pop bc                                        ; $429b: $c1
    nop                                           ; $429c: $00
    cp $f8                                        ; $429d: $fe $f8
    cp $fb                                        ; $429f: $fe $fb
    db $fc                                        ; $42a1: $fc
    db $eb                                        ; $42a2: $eb
    ld e, e                                       ; $42a3: $5b
    add b                                         ; $42a4: $80
    xor d                                         ; $42a5: $aa
    rst $38                                       ; $42a6: $ff
    ld d, h                                       ; $42a7: $54
    rst $38                                       ; $42a8: $ff
    ld a, [hl+]                                   ; $42a9: $2a
    db $fc                                        ; $42aa: $fc
    ld e, c                                       ; $42ab: $59
    and c                                         ; $42ac: $a1
    xor d                                         ; $42ad: $aa
    add b                                         ; $42ae: $80
    ret nz                                        ; $42af: $c0

    add b                                         ; $42b0: $80
    ldh [$c0], a                                  ; $42b1: $e0 $c0
    and c                                         ; $42b3: $a1
    cp $bc                                        ; $42b4: $fe $bc
    sub [hl]                                      ; $42b6: $96
    db $e4                                        ; $42b7: $e4
    db $f4                                        ; $42b8: $f4
    add [hl]                                      ; $42b9: $86
    add b                                         ; $42ba: $80
    nop                                           ; $42bb: $00
    ld hl, $f0c0                                  ; $42bc: $21 $c0 $f0
    jp hl                                         ; $42bf: $e9


    ldh [rIE], a                                  ; $42c0: $e0 $ff
    nop                                           ; $42c2: $00
    ld [de], a                                    ; $42c3: $12
    pop hl                                        ; $42c4: $e1
    nop                                           ; $42c5: $00
    rst $38                                       ; $42c6: $ff
    ld [bc], a                                    ; $42c7: $02
    ld bc, $b708                                  ; $42c8: $01 $08 $b7
    rlca                                          ; $42cb: $07
    jr nz, @+$21                                  ; $42cc: $20 $1f

    inc hl                                        ; $42ce: $23
    and c                                         ; $42cf: $a1
    add b                                         ; $42d0: $80
    ld a, a                                       ; $42d1: $7f
    ld [hl], h                                    ; $42d2: $74
    add c                                         ; $42d3: $81
    ld b, b                                       ; $42d4: $40
    rst $18                                       ; $42d5: $df
    add b                                         ; $42d6: $80
    jr nz, jr_049_4299                            ; $42d7: $20 $c0

    rrca                                          ; $42d9: $0f
    ldh a, [$5a]                                  ; $42da: $f0 $5a
    rst $20                                       ; $42dc: $e7
    ld e, $00                                     ; $42dd: $1e $00

jr_049_42df:
    rst $20                                       ; $42df: $e7
    ld b, d                                       ; $42e0: $42
    inc a                                         ; $42e1: $3c
    ld bc, $e5b4                                  ; $42e2: $01 $b4 $e5
    and b                                         ; $42e5: $a0
    db $e4                                        ; $42e6: $e4
    ld [bc], a                                    ; $42e7: $02
    ld bc, $7744                                  ; $42e8: $01 $44 $77
    add e                                         ; $42eb: $83
    jr c, @-$37                                   ; $42ec: $38 $c7

    ld [hl], $e3                                  ; $42ee: $36 $e3
    jr nz, @+$21                                  ; $42f0: $20 $1f

    ld b, b                                       ; $42f2: $40
    pop hl                                        ; $42f3: $e1
    add e                                         ; $42f4: $83
    ldh [$28], a                                  ; $42f5: $e0 $28
    db $e4                                        ; $42f7: $e4
    ld b, $88                                     ; $42f8: $06 $88
    ld a, [bc]                                    ; $42fa: $0a
    add c                                         ; $42fb: $81
    ldh a, [$65]                                  ; $42fc: $f0 $65
    jr @-$7e                                      ; $42fe: $18 $80

    rrca                                          ; $4300: $0f
    ldh a, [$38]                                  ; $4301: $f0 $38
    rst $30                                       ; $4303: $f7
    ret nz                                        ; $4304: $c0

    ld h, b                                       ; $4305: $60
    add b                                         ; $4306: $80
    ld a, [c]                                     ; $4307: $f2
    ld h, h                                       ; $4308: $64
    pop af                                        ; $4309: $f1
    ldh a, [$6f]                                  ; $430a: $f0 $6f
    rst $20                                       ; $430c: $e7
    rst $38                                       ; $430d: $ff
    jr jr_049_42df                                ; $430e: $18 $cf

    jr nc, @+$01                                  ; $4310: $30 $ff

    nop                                           ; $4312: $00
    add a                                         ; $4313: $87
    ld a, b                                       ; $4314: $78
    inc c                                         ; $4315: $0c
    ld a, e                                       ; $4316: $7b
    ldh a, [$0e]                                  ; $4317: $f0 $0e
    db $e4                                        ; $4319: $e4
    and b                                         ; $431a: $a0
    inc bc                                        ; $431b: $03
    db $fc                                        ; $431c: $fc
    jp Jump_000_323c                              ; $431d: $c3 $3c $32


    ldh [rIE], a                                  ; $4320: $e0 $ff
    nop                                           ; $4322: $00
    adc a                                         ; $4323: $8f
    ld [hl], c                                    ; $4324: $71
    ld a, a                                       ; $4325: $7f
    inc bc                                        ; $4326: $03
    ccf                                           ; $4327: $3f
    inc bc                                        ; $4328: $03
    rst $38                                       ; $4329: $ff
    push af                                       ; $432a: $f5
    rlca                                          ; $432b: $07
    cp $e0                                        ; $432c: $fe $e0
    rrca                                          ; $432e: $0f
    rst $38                                       ; $432f: $ff
    pop hl                                        ; $4330: $e1
    ld hl, sp-$20                                 ; $4331: $f8 $e0
    rst $08                                       ; $4333: $cf
    ldh a, [$fc]                                  ; $4334: $f0 $fc
    ld d, b                                       ; $4336: $50
    add b                                         ; $4337: $80
    cp [hl]                                       ; $4338: $be
    ld h, c                                       ; $4339: $61
    cp $fe                                        ; $433a: $fe $fe
    db $fc                                        ; $433c: $fc
    db $fd                                        ; $433d: $fd
    cp $c3                                        ; $433e: $fe $c3
    ld d, a                                       ; $4340: $57
    inc a                                         ; $4341: $3c
    add a                                         ; $4342: $87
    ld a, b                                       ; $4343: $78
    ld [hl], h                                    ; $4344: $74
    and c                                         ; $4345: $a1
    cp $6a                                        ; $4346: $fe $6a
    add b                                         ; $4348: $80
    rra                                           ; $4349: $1f
    cp [hl]                                       ; $434a: $be
    ld h, b                                       ; $434b: $60
    jp hl                                         ; $434c: $e9


    add c                                         ; $434d: $81
    cp d                                          ; $434e: $ba
    ld h, d                                       ; $434f: $62
    ld l, d                                       ; $4350: $6a
    add c                                         ; $4351: $81
    add a                                         ; $4352: $87
    ld h, [hl]                                    ; $4353: $66
    and d                                         ; $4354: $a2
    ret z                                         ; $4355: $c8

    ccf                                           ; $4356: $3f
    ld b, b                                       ; $4357: $40
    ld hl, $d83f                                  ; $4358: $21 $3f $d8
    jp nz, $805e                                  ; $435b: $c2 $5e $80

    ldh a, [$61]                                  ; $435e: $f0 $61
    sub b                                         ; $4360: $90
    rst $00                                       ; $4361: $c7
    add b                                         ; $4362: $80
    ld e, $e0                                     ; $4363: $1e $e0
    inc e                                         ; $4365: $1c
    db $e3                                        ; $4366: $e3
    db $fc                                        ; $4367: $fc
    ld d, b                                       ; $4368: $50
    ldh a, [$ac]                                  ; $4369: $f0 $ac
    ld h, d                                       ; $436b: $62
    ld a, h                                       ; $436c: $7c
    db $e3                                        ; $436d: $e3
    db $fc                                        ; $436e: $fc
    jp $e3fc                                      ; $436f: $c3 $fc $e3


    rst $08                                       ; $4372: $cf
    ldh a, [$ef]                                  ; $4373: $f0 $ef
    ldh [$df], a                                  ; $4375: $e0 $df
    xor d                                         ; $4377: $aa
    ld h, c                                       ; $4378: $61
    ld d, [hl]                                    ; $4379: $56
    jp $8040                                      ; $437a: $c3 $40 $80


    or a                                          ; $437d: $b7
    rst $00                                       ; $437e: $c7
    nop                                           ; $437f: $00
    rst $00                                       ; $4380: $c7
    ld e, e                                       ; $4381: $5b
    ret nz                                        ; $4382: $c0

    add hl, de                                    ; $4383: $19
    and $fa                                       ; $4384: $e6 $fa
    jp $fffc                                      ; $4386: $c3 $fc $ff


    inc bc                                        ; $4389: $03
    db $fc                                        ; $438a: $fc
    inc bc                                        ; $438b: $03
    ldh [$1f], a                                  ; $438c: $e0 $1f
    pop hl                                        ; $438e: $e1
    ld e, $91                                     ; $438f: $1e $91
    db $db                                        ; $4391: $db
    ld c, $9f                                     ; $4392: $0e $9f
    db $fc                                        ; $4394: $fc
    ld h, b                                       ; $4395: $60
    ld a, c                                       ; $4396: $79
    add c                                         ; $4397: $81
    ld b, b                                       ; $4398: $40
    ld h, c                                       ; $4399: $61
    inc bc                                        ; $439a: $03
    rst $38                                       ; $439b: $ff
    ld a, a                                       ; $439c: $7f
    rrca                                          ; $439d: $0f
    db $fc                                        ; $439e: $fc
    ccf                                           ; $439f: $3f
    ldh a, [$7f]                                  ; $43a0: $f0 $7f
    ret nz                                        ; $43a2: $c0

    rst $38                                       ; $43a3: $ff
    sbc [hl]                                      ; $43a4: $9e
    add b                                         ; $43a5: $80
    jp z, $a243                                   ; $43a6: $ca $43 $a2

    rra                                           ; $43a9: $1f
    cp $e4                                        ; $43aa: $fe $e4
    rrca                                          ; $43ac: $0f
    push hl                                       ; $43ad: $e5
    ldh [$31], a                                  ; $43ae: $e0 $31
    ld l, d                                       ; $43b0: $6a
    rst $38                                       ; $43b1: $ff
    ldh [$f5], a                                  ; $43b2: $e0 $f5
    ld hl, sp-$73                                 ; $43b4: $f8 $8d
    ld h, b                                       ; $43b6: $60
    ldh [$89], a                                  ; $43b7: $e0 $89
    ld h, b                                       ; $43b9: $60
    cp b                                          ; $43ba: $b8
    adc a                                         ; $43bb: $8f
    inc c                                         ; $43bc: $0c
    rlca                                          ; $43bd: $07
    rst $38                                       ; $43be: $ff
    ld b, $03                                     ; $43bf: $06 $03
    inc bc                                        ; $43c1: $03
    ld bc, $8041                                  ; $43c2: $01 $41 $80
    ld [bc], a                                    ; $43c5: $02
    pop bc                                        ; $43c6: $c1
    add e                                         ; $43c7: $83
    inc h                                         ; $43c8: $24
    jp $e85a                                      ; $43c9: $c3 $5a $e8


    ld a, [hl-]                                   ; $43cc: $3a
    and c                                         ; $43cd: $a1
    add c                                         ; $43ce: $81
    ld h, b                                       ; $43cf: $60
    ld a, b                                       ; $43d0: $78
    pop bc                                        ; $43d1: $c1
    db $e4                                        ; $43d2: $e4
    ld b, c                                       ; $43d3: $41
    add hl, sp                                    ; $43d4: $39
    add a                                         ; $43d5: $87
    nop                                           ; $43d6: $00
    db $10                                        ; $43d7: $10
    rrca                                          ; $43d8: $0f
    rla                                           ; $43d9: $17
    ldh [rDIV], a                                 ; $43da: $e0 $04
    ret nz                                        ; $43dc: $c0

    sbc b                                         ; $43dd: $98
    bit 7, c                                      ; $43de: $cb $79
    ldh [$fc], a                                  ; $43e0: $e0 $fc
    ld e, $b8                                     ; $43e2: $1e $b8
    ld b, c                                       ; $43e4: $41
    inc bc                                        ; $43e5: $03
    db $fc                                        ; $43e6: $fc
    rrca                                          ; $43e7: $0f
    ldh a, [rNR52]                                ; $43e8: $f0 $26
    add e                                         ; $43ea: $83
    ld b, b                                       ; $43eb: $40
    add c                                         ; $43ec: $81
    ld c, h                                       ; $43ed: $4c
    ld h, b                                       ; $43ee: $60
    pop hl                                        ; $43ef: $e1
    ccf                                           ; $43f0: $3f
    add hl, bc                                    ; $43f1: $09
    call z, $e406                                 ; $43f2: $cc $06 $e4
    ret c                                         ; $43f5: $d8

    ld b, b                                       ; $43f6: $40
    cp $e0                                        ; $43f7: $fe $e0
    ld b, b                                       ; $43f9: $40
    ccf                                           ; $43fa: $3f
    push af                                       ; $43fb: $f5
    cp [hl]                                       ; $43fc: $be
    ld l, l                                       ; $43fd: $6d
    ld b, b                                       ; $43fe: $40
    push de                                       ; $43ff: $d5
    rst $38                                       ; $4400: $ff
    and b                                         ; $4401: $a0
    rst $38                                       ; $4402: $ff
    ld d, b                                       ; $4403: $50
    ld a, b                                       ; $4404: $78
    and h                                         ; $4405: $a4
    ld [hl], e                                    ; $4406: $73
    rst $38                                       ; $4407: $ff
    ret nz                                        ; $4408: $c0

    and e                                         ; $4409: $a3
    ret nz                                        ; $440a: $c0

    ld h, d                                       ; $440b: $62
    ret nz                                        ; $440c: $c0

    db $10                                        ; $440d: $10
    ldh [rDIV], a                                 ; $440e: $e0 $04
    db $fd                                        ; $4410: $fd
    ld hl, sp+$66                                 ; $4411: $f8 $66
    and l                                         ; $4413: $a5
    ldh a, [rIF]                                  ; $4414: $f0 $0f
    jr c, jr_049_441f                             ; $4416: $38 $07

    jr jr_049_4421                                ; $4418: $18 $07

    di                                            ; $441a: $f3
    ccf                                           ; $441b: $3f
    nop                                           ; $441c: $00
    rra                                           ; $441d: $1f
    ld h, b                                       ; $441e: $60

jr_049_441f:
    and b                                         ; $441f: $a0
    ld b, b                                       ; $4420: $40

jr_049_4421:
    inc bc                                        ; $4421: $03
    db $fc                                        ; $4422: $fc
    ccf                                           ; $4423: $3f
    ret nz                                        ; $4424: $c0

    sbc a                                         ; $4425: $9f
    inc hl                                        ; $4426: $23
    ret nz                                        ; $4427: $c0

    ld b, c                                       ; $4428: $41
    add b                                         ; $4429: $80
    pop bc                                        ; $442a: $c1
    ld b, $62                                     ; $442b: $06 $62
    ld l, b                                       ; $442d: $68
    ld h, b                                       ; $442e: $60
    cp $ff                                        ; $442f: $fe $ff
    rlca                                          ; $4431: $07
    db $fc                                        ; $4432: $fc
    rrca                                          ; $4433: $0f
    ld hl, sp+$0f                                 ; $4434: $f8 $0f
    ld hl, sp+$1f                                 ; $4436: $f8 $1f
    ldh a, [rPCM12]                               ; $4438: $f0 $76
    cp $e1                                        ; $443a: $fe $e1
    ccf                                           ; $443c: $3f
    ldh [$e4], a                                  ; $443d: $e0 $e4
    and l                                         ; $443f: $a5
    inc bc                                        ; $4440: $03
    rst $38                                       ; $4441: $ff
    ld b, $11                                     ; $4442: $06 $11

jr_049_4444:
    ldh [$fe], a                                  ; $4444: $e0 $fe
    ld h, c                                       ; $4446: $61
    and b                                         ; $4447: $a0
    nop                                           ; $4448: $00
    rst $30                                       ; $4449: $f7

jr_049_444a:
    rrca                                          ; $444a: $0f
    dec e                                         ; $444b: $1d
    cp $f7                                        ; $444c: $fe $f7
    ld hl, sp-$43                                 ; $444e: $f8 $bd
    rst $18                                       ; $4450: $df

jr_049_4451:
    sub b                                         ; $4451: $90
    ld h, b                                       ; $4452: $60
    cp a                                          ; $4453: $bf
    ret nz                                        ; $4454: $c0

    rst $28                                       ; $4455: $ef

jr_049_4456:
    ldh a, [rNR51]                                ; $4456: $f0 $25
    ldh [rIE], a                                  ; $4458: $e0 $ff
    rst $38                                       ; $445a: $ff
    rst $18                                       ; $445b: $df
    inc a                                         ; $445c: $3c
    db $fc                                        ; $445d: $fc
    jr jr_049_4456                                ; $445e: $18 $f6

    jr c, jr_049_4451                             ; $4460: $38 $ef

    jr nc, @-$1f                                  ; $4462: $30 $df

    rst $28                                       ; $4464: $ef
    ccf                                           ; $4465: $3f

jr_049_4466:
    reti                                          ; $4466: $d9


    add hl, sp                                    ; $4467: $39
    add b                                         ; $4468: $80
    db $db                                        ; $4469: $db
    ret nz                                        ; $446a: $c0

    ret nz                                        ; $446b: $c0

    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    ret nz                                        ; $446e: $c0

    ld a, a                                       ; $446f: $7f
    ld h, b                                       ; $4470: $60
    ccf                                           ; $4471: $3f
    ld h, b                                       ; $4472: $60
    ccf                                           ; $4473: $3f
    ldh [$3f], a                                  ; $4474: $e0 $3f
    rst $38                                       ; $4476: $ff
    ldh a, [$9f]                                  ; $4477: $f0 $9f
    rra                                           ; $4479: $1f
    ldh [$3f], a                                  ; $447a: $e0 $3f
    ret nz                                        ; $447c: $c0

    ld a, h                                       ; $447d: $7c
    add b                                         ; $447e: $80
    rst $38                                       ; $447f: $ff
    ld a, b                                       ; $4480: $78
    add b                                         ; $4481: $80
    jr c, jr_049_4444                             ; $4482: $38 $c0

    jr jr_049_4466                                ; $4484: $18 $e0

    ld [bc], a                                    ; $4486: $02
    db $fc                                        ; $4487: $fc
    ld a, a                                       ; $4488: $7f
    nop                                           ; $4489: $00
    rst $38                                       ; $448a: $ff
    sbc a                                         ; $448b: $9f
    ld h, b                                       ; $448c: $60
    rst $38                                       ; $448d: $ff
    nop                                           ; $448e: $00
    ld a, b                                       ; $448f: $78
    ret c                                         ; $4490: $d8

    ld b, b                                       ; $4491: $40
    xor a                                         ; $4492: $af
    ld [bc], a                                    ; $4493: $02
    inc c                                         ; $4494: $0c
    ld de, $680e                                  ; $4495: $11 $0e $68
    and b                                         ; $4498: $a0
    rst $38                                       ; $4499: $ff
    sub d                                         ; $449a: $92
    ld h, e                                       ; $449b: $63
    ld de, $0e79                                  ; $449c: $11 $79 $0e
    cp $c1                                        ; $449f: $fe $c1
    jr nc, jr_049_444a                            ; $44a1: $30 $a7

    ld bc, $4400                                  ; $44a3: $01 $00 $44
    add e                                         ; $44a6: $83
    cp h                                          ; $44a7: $bc
    add l                                         ; $44a8: $85
    ld l, h                                       ; $44a9: $6c
    ld b, [hl]                                    ; $44aa: $46
    and l                                         ; $44ab: $a5
    and [hl]                                      ; $44ac: $a6
    add e                                         ; $44ad: $83
    inc b                                         ; $44ae: $04
    ld hl, sp+$52                                 ; $44af: $f8 $52
    xor d                                         ; $44b1: $aa
    rst $38                                       ; $44b2: $ff
    ld bc, $a052                                  ; $44b3: $01 $52 $a0
    ld sp, hl                                     ; $44b6: $f9
    adc b                                         ; $44b7: $88
    ld c, l                                       ; $44b8: $4d
    ld b, e                                       ; $44b9: $43
    ld bc, $2f62                                  ; $44ba: $01 $62 $2f
    ldh [$2f], a                                  ; $44bd: $e0 $2f
    ldh [$6f], a                                  ; $44bf: $e0 $6f
    dec bc                                        ; $44c1: $0b
    ret nz                                        ; $44c2: $c0

    ld c, a                                       ; $44c3: $4f
    cp $e2                                        ; $44c4: $fe $e2
    ld b, a                                       ; $44c6: $47
    cp $e0                                        ; $44c7: $fe $e0
    call c, $fee2                                 ; $44c9: $dc $e2 $fe
    ldh [$8d], a                                  ; $44cc: $e0 $8d
    and c                                         ; $44ce: $a1
    add l                                         ; $44cf: $85
    rrca                                          ; $44d0: $0f
    ld c, a                                       ; $44d1: $4f
    ret nz                                        ; $44d2: $c0

    ld [hl], b                                    ; $44d3: $70
    ld h, d                                       ; $44d4: $62
    ldh [$d7], a                                  ; $44d5: $e0 $d7
    ld b, c                                       ; $44d7: $41
    db $ec                                        ; $44d8: $ec
    pop hl                                        ; $44d9: $e1
    add sp, -$1f                                  ; $44da: $e8 $e1
    ei                                            ; $44dc: $fb
    rst $38                                       ; $44dd: $ff
    db $fc                                        ; $44de: $fc
    ld bc, $71fe                                  ; $44df: $01 $fe $71
    cp $f8                                        ; $44e2: $fe $f8
    rst $38                                       ; $44e4: $ff
    cp h                                          ; $44e5: $bc
    rst $38                                       ; $44e6: $ff
    cp a                                          ; $44e7: $bf
    inc a                                         ; $44e8: $3c
    ccf                                           ; $44e9: $3f
    ld [hl], $3f                                  ; $44ea: $36 $3f
    ld l, $33                                     ; $44ec: $2e $33
    db $fc                                        ; $44ee: $fc
    rst $38                                       ; $44ef: $ff
    inc e                                         ; $44f0: $1c
    cp $1e                                        ; $44f1: $fe $1e
    rst $38                                       ; $44f3: $ff
    rra                                           ; $44f4: $1f
    di                                            ; $44f5: $f3
    rra                                           ; $44f6: $1f
    ld [hl], l                                    ; $44f7: $75
    rst $38                                       ; $44f8: $ff
    sbc e                                         ; $44f9: $9b

jr_049_44fa:
    ld a, l                                       ; $44fa: $7d
    sbc e                                         ; $44fb: $9b
    dec l                                         ; $44fc: $2d
    db $db                                        ; $44fd: $db
    rrca                                          ; $44fe: $0f
    rst $38                                       ; $44ff: $ff
    ldh a, [$f7]                                  ; $4500: $f0 $f7
    sbc a                                         ; $4502: $9f
    ld [hl], b                                    ; $4503: $70
    ld e, a                                       ; $4504: $5f
    cp $e3                                        ; $4505: $fe $e3
    ld a, b                                       ; $4507: $78
    ld e, a                                       ; $4508: $5f
    ld a, b                                       ; $4509: $78
    ld c, a                                       ; $450a: $4f
    rst $18                                       ; $450b: $df
    ld a, b                                       ; $450c: $78
    ld c, a                                       ; $450d: $4f
    ld b, a                                       ; $450e: $47
    ret nz                                        ; $450f: $c0

    ld b, e                                       ; $4510: $43
    cp $e0                                        ; $4511: $fe $e0
    ld b, c                                       ; $4513: $41
    ret nz                                        ; $4514: $c0

jr_049_4515:
    rst $38                                       ; $4515: $ff
    ld h, b                                       ; $4516: $60
    ret nz                                        ; $4517: $c0

    jr nz, jr_049_44fa                            ; $4518: $20 $e0

    ld sp, $11e0                                  ; $451a: $31 $e0 $11
    pop af                                        ; $451d: $f1
    jr c, jr_049_4515                             ; $451e: $38 $f5

    and c                                         ; $4520: $a1
    inc h                                         ; $4521: $24
    add c                                         ; $4522: $81
    ld c, e                                       ; $4523: $4b
    ld b, l                                       ; $4524: $45
    ld bc, $81ff                                  ; $4525: $01 $ff $81
    cp $e2                                        ; $4528: $fe $e2
    ld hl, sp-$3c                                 ; $452a: $f8 $c4
    rst $38                                       ; $452c: $ff
    rst $38                                       ; $452d: $ff
    ld l, $33                                     ; $452e: $2e $33
    ld l, $33                                     ; $4530: $2e $33
    ld [hl-], a                                   ; $4532: $32
    ccf                                           ; $4533: $3f
    sbc [hl]                                      ; $4534: $9e
    rst $38                                       ; $4535: $ff
    sbc a                                         ; $4536: $9f
    sbc [hl]                                      ; $4537: $9e
    sbc a                                         ; $4538: $9f
    ld c, h                                       ; $4539: $4c
    rst $08                                       ; $453a: $cf
    nop                                           ; $453b: $00
    rst $38                                       ; $453c: $ff
    ld [hl], b                                    ; $453d: $70
    rst $38                                       ; $453e: $ff
    adc a                                         ; $453f: $8f
    rla                                           ; $4540: $17
    ei                                            ; $4541: $fb
    ld a, [hl+]                                   ; $4542: $2a
    di                                            ; $4543: $f3
    ld c, e                                       ; $4544: $4b
    ld a, [c]                                     ; $4545: $f2
    dec c                                         ; $4546: $0d
    rst $38                                       ; $4547: $ff

jr_049_4548:
    ld a, [c]                                     ; $4548: $f2
    rlca                                          ; $4549: $07
    ld hl, sp+$07                                 ; $454a: $f8 $07
    ld hl, sp+$02                                 ; $454c: $f8 $02
    db $fd                                        ; $454e: $fd
    nop                                           ; $454f: $00
    rst $38                                       ; $4550: $ff
    rst $38                                       ; $4551: $ff
    ld a, h                                       ; $4552: $7c
    ld c, a                                       ; $4553: $4f
    adc $07                                       ; $4554: $ce $07
    add [hl]                                      ; $4556: $86
    inc bc                                        ; $4557: $03
    add e                                         ; $4558: $83
    rst $08                                       ; $4559: $cf
    inc bc                                        ; $455a: $03
    jp $f301                                      ; $455b: $c3 $01 $f3


    ld e, c                                       ; $455e: $59
    ld [c], a                                     ; $455f: $e2
    ret nz                                        ; $4560: $c0

    ld h, a                                       ; $4561: $67
    db $fc                                        ; $4562: $fc
    rst $38                                       ; $4563: $ff
    jp $83c7                                      ; $4564: $c3 $c7 $83


    ld [bc], a                                    ; $4567: $02
    and b                                         ; $4568: $a0
    jr nc, jr_049_4515                            ; $4569: $30 $aa

    dec e                                         ; $456b: $1d
    ld b, e                                       ; $456c: $43
    sbc h                                         ; $456d: $9c
    ld h, a                                       ; $456e: $67
    jr z, jr_049_4548                             ; $456f: $28 $d7

    cp $90                                        ; $4571: $fe $90
    ld l, c                                       ; $4573: $69
    dec b                                         ; $4574: $05
    ld a, [$ff00]                                 ; $4575: $fa $00 $ff
    dec de                                        ; $4578: $1b
    pop af                                        ; $4579: $f1
    rrca                                          ; $457a: $0f
    db $fd                                        ; $457b: $fd
    ei                                            ; $457c: $fb
    and l                                         ; $457d: $a5
    add b                                         ; $457e: $80
    db $fd                                        ; $457f: $fd
    rra                                           ; $4580: $1f
    ld hl, sp+$1f                                 ; $4581: $f8 $1f
    pop af                                        ; $4583: $f1
    ccf                                           ; $4584: $3f
    cp e                                          ; $4585: $bb
    pop af                                        ; $4586: $f1
    ccf                                           ; $4587: $3f
    adc b                                         ; $4588: $88
    ld b, [hl]                                    ; $4589: $46
    db $db                                        ; $458a: $db
    rst $20                                       ; $458b: $e7
    cp h                                          ; $458c: $bc
    ld a, d                                       ; $458d: $7a
    and b                                         ; $458e: $a0
    inc a                                         ; $458f: $3c
    rst $38                                       ; $4590: $ff
    rst $38                                       ; $4591: $ff
    pop hl                                        ; $4592: $e1
    cp $e3                                        ; $4593: $fe $e3
    db $fc                                        ; $4595: $fc
    di                                            ; $4596: $f3
    db $fc                                        ; $4597: $fc
    ldh [rNR41], a                                ; $4598: $e0 $20
    ld a, [$64c4]                                 ; $459a: $fa $c4 $64
    ld bc, $87f4                                  ; $459d: $01 $f4 $87
    or e                                          ; $45a0: $b3
    nop                                           ; $45a1: $00
    ld a, [de]                                    ; $45a2: $1a
    ret nz                                        ; $45a3: $c0

    ld a, d                                       ; $45a4: $7a
    ld l, d                                       ; $45a5: $6a
    ldh [$cc], a                                  ; $45a6: $e0 $cc
    pop bc                                        ; $45a8: $c1
    rst $38                                       ; $45a9: $ff
    ld e, $ff                                     ; $45aa: $1e $ff
    ld a, [$c8fc]                                 ; $45ac: $fa $fc $c8
    ldh a, [$f7]                                  ; $45af: $f0 $f7
    rrca                                          ; $45b1: $0f
    rst $38                                       ; $45b2: $ff
    ld c, l                                       ; $45b3: $4d
    cp [hl]                                       ; $45b4: $be
    ld a, [de]                                    ; $45b5: $1a
    db $fc                                        ; $45b6: $fc
    db $f4                                        ; $45b7: $f4
    ld hl, sp-$30                                 ; $45b8: $f8 $d0
    ldh [$fe], a                                  ; $45ba: $e0 $fe
    add d                                         ; $45bc: $82
    ld b, c                                       ; $45bd: $41
    rrca                                          ; $45be: $0f
    nop                                           ; $45bf: $00
    reti                                          ; $45c0: $d9


    ldh [$ec], a                                  ; $45c1: $e0 $ec
    jr nc, jr_049_45fc                            ; $45c3: $30 $37

Call_049_45c5:
    rst $30                                       ; $45c5: $f7
    jr jr_049_45e3                                ; $45c6: $18 $1b

    inc c                                         ; $45c8: $0c
    ld [hl+], a                                   ; $45c9: $22
    and e                                         ; $45ca: $a3
    rst $38                                       ; $45cb: $ff
    nop                                           ; $45cc: $00
    ret nz                                        ; $45cd: $c0

    ld a, a                                       ; $45ce: $7f
    ld l, c                                       ; $45cf: $69
    ld b, b                                       ; $45d0: $40
    inc d                                         ; $45d1: $14
    call nz, $e2fe                                ; $45d2: $c4 $fe $e2
    cp a                                          ; $45d5: $bf
    add b                                         ; $45d6: $80
    adc e                                         ; $45d7: $8b
    xor d                                         ; $45d8: $aa
    ld d, l                                       ; $45d9: $55
    db $f4                                        ; $45da: $f4
    jp hl                                         ; $45db: $e9


    ld l, a                                       ; $45dc: $6f
    ld bc, $abfe                                  ; $45dd: $01 $fe $ab
    ld d, h                                       ; $45e0: $54
    ldh [rSCX], a                                 ; $45e1: $e0 $43

jr_049_45e3:
    ld a, [hl+]                                   ; $45e3: $2a
    push de                                       ; $45e4: $d5
    db $e4                                        ; $45e5: $e4
    pop hl                                        ; $45e6: $e1
    di                                            ; $45e7: $f3
    ld d, l                                       ; $45e8: $55
    xor d                                         ; $45e9: $aa
    ret z                                         ; $45ea: $c8

    ld h, c                                       ; $45eb: $61
    db $f4                                        ; $45ec: $f4
    pop hl                                        ; $45ed: $e1
    add b                                         ; $45ee: $80
    ld a, a                                       ; $45ef: $7f
    dec b                                         ; $45f0: $05
    ld a, [$a0f3]                                 ; $45f1: $fa $f3 $a0
    ld e, a                                       ; $45f4: $5f
    ldh a, [$e3]                                  ; $45f5: $f0 $e3
    db $f4                                        ; $45f7: $f4
    pop hl                                        ; $45f8: $e1
    nop                                           ; $45f9: $00
    rst $38                                       ; $45fa: $ff
    ld b, l                                       ; $45fb: $45

jr_049_45fc:
    cp d                                          ; $45fc: $ba
    db $db                                        ; $45fd: $db
    rrca                                          ; $45fe: $0f
    ldh a, [$e0]                                  ; $45ff: $f0 $e0
    db $e3                                        ; $4601: $e3
    ld a, [bc]                                    ; $4602: $0a
    push af                                       ; $4603: $f5
    ld e, b                                       ; $4604: $58
    pop hl                                        ; $4605: $e1
    ld d, l                                       ; $4606: $55
    xor d                                         ; $4607: $aa
    rst $38                                       ; $4608: $ff
    ld [$7f15], a                                 ; $4609: $ea $15 $7f
    add b                                         ; $460c: $80
    push af                                       ; $460d: $f5
    ld a, [bc]                                    ; $460e: $0a
    nop                                           ; $460f: $00
    rst $38                                       ; $4610: $ff
    cp [hl]                                       ; $4611: $be
    ret c                                         ; $4612: $d8

    pop hl                                        ; $4613: $e1
    ld a, [bc]                                    ; $4614: $0a
    push af                                       ; $4615: $f5
    ld d, a                                       ; $4616: $57
    xor b                                         ; $4617: $a8

jr_049_4618:
    xor d                                         ; $4618: $aa
    rst $18                                       ; $4619: $df
    ld b, b                                       ; $461a: $40
    ld d, a                                       ; $461b: $57
    rlca                                          ; $461c: $07
    xor b                                         ; $461d: $a8
    ld d, l                                       ; $461e: $55
    xor d                                         ; $461f: $aa
    db $e4                                        ; $4620: $e4
    pop hl                                        ; $4621: $e1
    db $f4                                        ; $4622: $f4
    pop hl                                        ; $4623: $e1
    ldh a, [$e1]                                  ; $4624: $f0 $e1
    ret nz                                        ; $4626: $c0

    pop hl                                        ; $4627: $e1
    ld [c], a                                     ; $4628: $e2
    xor d                                         ; $4629: $aa
    call z, Call_049_6626                         ; $462a: $cc $26 $66
    sub h                                         ; $462d: $94
    pop bc                                        ; $462e: $c1
    ld a, [bc]                                    ; $462f: $0a
    push af                                       ; $4630: $f5
    jp nc, Jump_049_66e1                          ; $4631: $d2 $e1 $66

    push hl                                       ; $4634: $e5
    dec b                                         ; $4635: $05
    ld a, [$7e7e]                                 ; $4636: $fa $7e $7e
    pop hl                                        ; $4639: $e1
    ld a, a                                       ; $463a: $7f
    pop hl                                        ; $463b: $e1
    ld a, a                                       ; $463c: $7f
    pop bc                                        ; $463d: $c1
    ld a, a                                       ; $463e: $7f
    pop bc                                        ; $463f: $c1
    db $eb                                        ; $4640: $eb
    and d                                         ; $4641: $a2
    and [hl]                                      ; $4642: $a6
    ld b, a                                       ; $4643: $47
    and b                                         ; $4644: $a0
    ld a, a                                       ; $4645: $7f
    db $e3                                        ; $4646: $e3
    ld h, [hl]                                    ; $4647: $66
    ld h, b                                       ; $4648: $60
    sbc c                                         ; $4649: $99
    pop bc                                        ; $464a: $c1
    ret nz                                        ; $464b: $c0

    rst $10                                       ; $464c: $d7
    and b                                         ; $464d: $a0
    ccf                                           ; $464e: $3f
    rst $38                                       ; $464f: $ff
    db $e3                                        ; $4650: $e3
    rst $38                                       ; $4651: $ff
    add a                                         ; $4652: $87
    cp $0e                                        ; $4653: $fe $0e
    cp $1d                                        ; $4655: $fe $1d
    db $fd                                        ; $4657: $fd
    rst $38                                       ; $4658: $ff
    ld [de], a                                    ; $4659: $12
    di                                            ; $465a: $f3
    inc h                                         ; $465b: $24
    rst $20                                       ; $465c: $e7
    ld b, d                                       ; $465d: $42
    jp nz, Jump_000_0101                          ; $465e: $c2 $01 $01

    rst $38                                       ; $4661: $ff
    inc bc                                        ; $4662: $03
    ld [hl], e                                    ; $4663: $73
    push bc                                       ; $4664: $c5
    daa                                           ; $4665: $27
    ld d, c                                       ; $4666: $51
    ld [hl], c                                    ; $4667: $71
    inc c                                         ; $4668: $0c
    rst $08                                       ; $4669: $cf
    sbc a                                         ; $466a: $9f
    jr c, @-$3f                                   ; $466b: $38 $bf

    ld [hl], b                                    ; $466d: $70
    ld a, a                                       ; $466e: $7f
    ldh a, [rNR23]                                ; $466f: $f0 $18

jr_049_4671:
    add b                                         ; $4671: $80
    db $fc                                        ; $4672: $fc
    pop hl                                        ; $4673: $e1
    jr @-$08                                      ; $4674: $18 $f6

    jr nz, jr_049_4618                            ; $4676: $20 $a0

    ccf                                           ; $4678: $3f
    ret nz                                        ; $4679: $c0

    add l                                         ; $467a: $85
    ld h, c                                       ; $467b: $61
    ld [hl], e                                    ; $467c: $73
    adc h                                         ; $467d: $8c
    ld [hl], c                                    ; $467e: $71
    adc [hl]                                      ; $467f: $8e
    db $db                                        ; $4680: $db
    ld h, b                                       ; $4681: $60
    sbc a                                         ; $4682: $9f
    sbc e                                         ; $4683: $9b
    ld b, c                                       ; $4684: $41
    cp $01                                        ; $4685: $fe $01
    ld [hl], h                                    ; $4687: $74
    ld h, c                                       ; $4688: $61
    ldh [$1f], a                                  ; $4689: $e0 $1f
    ld h, e                                       ; $468b: $63
    db $fc                                        ; $468c: $fc
    inc bc                                        ; $468d: $03
    ld bc, $7e20                                  ; $468e: $01 $20 $7e
    jr nz, jr_049_4708                            ; $4691: $20 $75

    db $e4                                        ; $4693: $e4
    inc bc                                        ; $4694: $03
    cp $2d                                        ; $4695: $fe $2d
    add b                                         ; $4697: $80
    ld d, d                                       ; $4698: $52
    add [hl]                                      ; $4699: $86
    ret nz                                        ; $469a: $c0

    ld a, a                                       ; $469b: $7f
    pop de                                        ; $469c: $d1
    ldh [$da], a                                  ; $469d: $e0 $da
    ld h, $d5                                     ; $469f: $26 $d5
    dec hl                                        ; $46a1: $2b
    ld b, b                                       ; $46a2: $40
    cp $b8                                        ; $46a3: $fe $b8
    ret nz                                        ; $46a5: $c0

    jr nz, jr_049_4671                            ; $46a6: $20 $c9

    dec h                                         ; $46a8: $25
    ldh a, [$e1]                                  ; $46a9: $f0 $e1
    ld [hl], $e3                                  ; $46ab: $36 $e3
    or a                                          ; $46ad: $b7
    inc hl                                        ; $46ae: $23
    call c, $afc1                                 ; $46af: $dc $c1 $af
    inc sp                                        ; $46b2: $33
    add l                                         ; $46b3: $85
    ld c, a                                       ; $46b4: $4f
    ret nz                                        ; $46b5: $c0

    dec de                                        ; $46b6: $1b
    push af                                       ; $46b7: $f5
    ld a, [bc]                                    ; $46b8: $0a
    rra                                           ; $46b9: $1f
    ld l, e                                       ; $46ba: $6b
    ld d, a                                       ; $46bb: $57
    xor b                                         ; $46bc: $a8
    rrca                                          ; $46bd: $0f
    ld l, h                                       ; $46be: $6c
    rst $38                                       ; $46bf: $ff
    ld c, h                                       ; $46c0: $4c
    jp nz, $fcc1                                  ; $46c1: $c2 $c1 $fc

    sub [hl]                                      ; $46c4: $96
    jp $c3dc                                      ; $46c5: $c3 $dc $c3


    xor d                                         ; $46c8: $aa
    ld d, l                                       ; $46c9: $55
    dec d                                         ; $46ca: $15
    ld [$40bf], a                                 ; $46cb: $ea $bf $40
    sbc $aa                                       ; $46ce: $de $aa
    push hl                                       ; $46d0: $e5
    rrca                                          ; $46d1: $0f
    ldh a, [$aa]                                  ; $46d2: $f0 $aa
    ld d, l                                       ; $46d4: $55
    ld [hl], e                                    ; $46d5: $73
    pop hl                                        ; $46d6: $e1
    ld e, a                                       ; $46d7: $5f
    and b                                         ; $46d8: $a0
    cp h                                          ; $46d9: $bc
    ld bc, $a446                                  ; $46da: $01 $46 $a4
    adc c                                         ; $46dd: $89
    rst $38                                       ; $46de: $ff
    rlca                                          ; $46df: $07
    cp $3e                                        ; $46e0: $fe $3e
    ld hl, sp-$1c                                 ; $46e2: $f8 $e4
    inc e                                         ; $46e4: $1c
    ld a, a                                       ; $46e5: $7f
    ld hl, sp+$73                                 ; $46e6: $f8 $73
    pop hl                                        ; $46e8: $e1
    adc $87                                       ; $46e9: $ce $87
    jr c, @+$21                                   ; $46eb: $38 $1f

    ld hl, sp-$1b                                 ; $46ed: $f8 $e5
    call z, $8001                                 ; $46ef: $cc $01 $80
    ldh a, [rNR44]                                ; $46f2: $f0 $23
    ld a, b                                       ; $46f4: $78
    adc a                                         ; $46f5: $8f
    jp nc, $fe60                                  ; $46f6: $d2 $60 $fe

    ld [c], a                                     ; $46f9: $e2
    db $fc                                        ; $46fa: $fc
    rlca                                          ; $46fb: $07
    ld c, $fe                                     ; $46fc: $0e $fe
    ldh [$f0], a                                  ; $46fe: $e0 $f0
    rst $38                                       ; $4700: $ff
    ld hl, sp-$02                                 ; $4701: $f8 $fe
    ld [c], a                                     ; $4703: $e2
    dec l                                         ; $4704: $2d
    ld b, c                                       ; $4705: $41
    db $10                                        ; $4706: $10
    inc hl                                        ; $4707: $23

jr_049_4708:
    ld b, d                                       ; $4708: $42
    xor c                                         ; $4709: $a9
    cp l                                          ; $470a: $bd
    ldh [$a2], a                                  ; $470b: $e0 $a2
    ld [$fe02], a                                 ; $470d: $ea $02 $fe
    inc b                                         ; $4710: $04
    db $fd                                        ; $4711: $fd
    sub l                                         ; $4712: $95
    ld h, c                                       ; $4713: $61
    ld hl, sp-$01                                 ; $4714: $f8 $ff
    ccf                                           ; $4716: $3f
    db $ec                                        ; $4717: $ec
    ld h, a                                       ; $4718: $67
    call nz, $c6c7                                ; $4719: $c4 $c7 $c6
    add e                                         ; $471c: $83
    jp nz, $0393                                  ; $471d: $c2 $93 $03

    add e                                         ; $4720: $83
    db $d3                                        ; $4721: $d3
    call nz, Call_049_658c                        ; $4722: $c4 $8c $65
    rlca                                          ; $4725: $07
    ld l, h                                       ; $4726: $6c
    ld b, d                                       ; $4727: $42
    add b                                         ; $4728: $80
    db $e3                                        ; $4729: $e3
    di                                            ; $472a: $f3
    rra                                           ; $472b: $1f
    pop hl                                        ; $472c: $e1
    cp $b7                                        ; $472d: $fe $b7
    ld hl, sp+$1f                                 ; $472f: $f8 $1f
    sbc h                                         ; $4731: $9c
    ldh [$b7], a                                  ; $4732: $e0 $b7
    pop bc                                        ; $4734: $c1
    or e                                          ; $4735: $b3
    pop bc                                        ; $4736: $c1
    ld [$8228], sp                                ; $4737: $08 $28 $82
    halt                                          ; $473a: $76
    ld bc, $8182                                  ; $473b: $01 $82 $81
    ld a, a                                       ; $473e: $7f
    sbc [hl]                                      ; $473f: $9e
    nop                                           ; $4740: $00
    cp $e1                                        ; $4741: $fe $e1
    add d                                         ; $4743: $82
    pop hl                                        ; $4744: $e1
    ld h, h                                       ; $4745: $64
    pop bc                                        ; $4746: $c1
    rst $38                                       ; $4747: $ff
    db $e4                                        ; $4748: $e4
    rst $38                                       ; $4749: $ff
    jp hl                                         ; $474a: $e9


    rst $38                                       ; $474b: $ff
    di                                            ; $474c: $f3
    rst $38                                       ; $474d: $ff
    rst $20                                       ; $474e: $e7
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    inc c                                         ; $4751: $0c
    rst $38                                       ; $4752: $ff
    jr @+$01                                      ; $4753: $18 $ff

    jr c, @+$01                                   ; $4755: $38 $ff

    jr nc, @+$01                                  ; $4757: $30 $ff

    db $fd                                        ; $4759: $fd
    ld h, b                                       ; $475a: $60
    dec e                                         ; $475b: $1d
    call nz, $817f                                ; $475c: $c4 $7f $81
    db $fc                                        ; $475f: $fc
    ld bc, $00f9                                  ; $4760: $01 $f9 $00
    rst $38                                       ; $4763: $ff
    ld a, b                                       ; $4764: $78
    add b                                         ; $4765: $80
    ld [hl], c                                    ; $4766: $71
    add b                                         ; $4767: $80
    inc sp                                        ; $4768: $33
    ret nz                                        ; $4769: $c0

    daa                                           ; $476a: $27
    ret nz                                        ; $476b: $c0

    db $e3                                        ; $476c: $e3
    ld c, a                                       ; $476d: $4f
    add b                                         ; $476e: $80
    xor h                                         ; $476f: $ac
    add c                                         ; $4770: $81
    rlca                                          ; $4771: $07
    pop bc                                        ; $4772: $c1
    ld a, [hl-]                                   ; $4773: $3a
    and c                                         ; $4774: $a1

jr_049_4775:
    jr nz, jr_049_47b6                            ; $4775: $20 $3f

    jr nc, jr_049_4775                            ; $4777: $30 $fc

    ld a, h                                       ; $4779: $7c
    ld h, e                                       ; $477a: $63
    ret nc                                        ; $477b: $d0

    ld h, e                                       ; $477c: $63
    cp $0f                                        ; $477d: $fe $0f
    db $fd                                        ; $477f: $fd
    rrca                                          ; $4780: $0f
    ei                                            ; $4781: $fb
    rra                                           ; $4782: $1f
    db $dd                                        ; $4783: $dd
    cp $48                                        ; $4784: $fe $48
    nop                                           ; $4786: $00
    rst $08                                       ; $4787: $cf
    rst $38                                       ; $4788: $ff
    cp a                                          ; $4789: $bf
    rra                                           ; $478a: $1f
    add b                                         ; $478b: $80
    db $fc                                        ; $478c: $fc
    cp $03                                        ; $478d: $fe $03
    ld hl, sp-$04                                 ; $478f: $f8 $fc
    ld c, a                                       ; $4791: $4f
    nop                                           ; $4792: $00
    ld e, $61                                     ; $4793: $1e $61
    inc e                                         ; $4795: $1c
    ld h, e                                       ; $4796: $63
    inc b                                         ; $4797: $04
    and c                                         ; $4798: $a1
    and h                                         ; $4799: $a4
    ld h, c                                       ; $479a: $61
    ld l, a                                       ; $479b: $6f
    ret                                           ; $479c: $c9


    cp $e5                                        ; $479d: $fe $e5
    jr nz, @+$81                                  ; $479f: $20 $7f

    rrca                                          ; $47a1: $0f
    ld a, a                                       ; $47a2: $7f
    dec bc                                        ; $47a3: $0b
    ld a, a                                       ; $47a4: $7f
    rlca                                          ; $47a5: $07
    ccf                                           ; $47a6: $3f
    ld [hl], a                                    ; $47a7: $77
    rlca                                          ; $47a8: $07
    ccf                                           ; $47a9: $3f
    rrca                                          ; $47aa: $0f
    cp $e0                                        ; $47ab: $fe $e0
    rst $28                                       ; $47ad: $ef
    rst $38                                       ; $47ae: $ff
    sbc $36                                       ; $47af: $de $36
    add b                                         ; $47b1: $80
    rst $30                                       ; $47b2: $f7
    ld sp, hl                                     ; $47b3: $f9
    rst $38                                       ; $47b4: $ff
    rst $30                                       ; $47b5: $f7

jr_049_47b6:
    ret c                                         ; $47b6: $d8

    inc h                                         ; $47b7: $24
    inc c                                         ; $47b8: $0c
    rst $38                                       ; $47b9: $ff
    add hl, sp                                    ; $47ba: $39
    cp $af                                        ; $47bb: $fe $af
    ld [hl], e                                    ; $47bd: $73
    db $fc                                        ; $47be: $fc
    and $f9                                       ; $47bf: $e6 $f9
    db $e4                                        ; $47c1: $e4
    ld h, c                                       ; $47c2: $61
    add b                                         ; $47c3: $80
    ld sp, hl                                     ; $47c4: $f9
    nop                                           ; $47c5: $00
    di                                            ; $47c6: $f3
    rst $18                                       ; $47c7: $df

Call_049_47c8:
    inc c                                         ; $47c8: $0c

Call_049_47c9:
    db $e3                                        ; $47c9: $e3
    inc e                                         ; $47ca: $1c
    add e                                         ; $47cb: $83
    ld a, h                                       ; $47cc: $7c
    ld [de], a                                    ; $47cd: $12
    ld b, e                                       ; $47ce: $43
    rlca                                          ; $47cf: $07
    ld hl, sp+$7f                                 ; $47d0: $f8 $7f
    rst $08                                       ; $47d2: $cf
    ldh a, [rNR10]                                ; $47d3: $f0 $10
    rra                                           ; $47d5: $1f
    jr jr_049_47e7                                ; $47d6: $18 $0f

    ld [$e0fe], sp                                ; $47d8: $08 $fe $e0
    rst $30                                       ; $47db: $f7
    inc c                                         ; $47dc: $0c
    rlca                                          ; $47dd: $07
    inc b                                         ; $47de: $04
    cp $e0                                        ; $47df: $fe $e0
    ld d, $03                                     ; $47e1: $16 $03
    rra                                           ; $47e3: $1f
    ei                                            ; $47e4: $fb
    di                                            ; $47e5: $f3
    rra                                           ; $47e6: $1f

jr_049_47e7:
    rst $30                                       ; $47e7: $f7
    cp $e2                                        ; $47e8: $fe $e2
    adc e                                         ; $47ea: $8b
    inc h                                         ; $47eb: $24
    ld a, [$fafc]                                 ; $47ec: $fa $fc $fa
    db $fc                                        ; $47ef: $fc
    cp c                                          ; $47f0: $b9
    ei                                            ; $47f1: $fb
    cp $e0                                        ; $47f2: $fe $e0
    sbc d                                         ; $47f4: $9a
    jp $fff9                                      ; $47f5: $c3 $f9 $ff


    ld b, b                                       ; $47f8: $40
    add b                                         ; $47f9: $80
    add b                                         ; $47fa: $80
    ld b, b                                       ; $47fb: $40
    ret nz                                        ; $47fc: $c0

    xor [hl]                                      ; $47fd: $ae
    and b                                         ; $47fe: $a0
    xor d                                         ; $47ff: $aa
    and b                                         ; $4800: $a0
    adc h                                         ; $4801: $8c
    ld h, d                                       ; $4802: $62
    ld [de], a                                    ; $4803: $12
    ld h, l                                       ; $4804: $65
    jr c, @+$42                                   ; $4805: $38 $40

    ld [hl], $40                                  ; $4807: $36 $40
    rlca                                          ; $4809: $07
    cp $8f                                        ; $480a: $fe $8f
    rra                                           ; $480c: $1f
    ld a, a                                       ; $480d: $7f
    rra                                           ; $480e: $1f
    ld a, a                                       ; $480f: $7f
    and $c1                                       ; $4810: $e6 $c1
    call c, Call_049_45c5                         ; $4812: $dc $c5 $45
    inc bc                                        ; $4815: $03
    db $fc                                        ; $4816: $fc
    cp $da                                        ; $4817: $fe $da
    call nz, $ffe0                                ; $4819: $c4 $e0 $ff
    adc a                                         ; $481c: $8f
    ldh a, [$1f]                                  ; $481d: $f0 $1f
    ldh [$38], a                                  ; $481f: $e0 $38
    rst $30                                       ; $4821: $f7
    rst $00                                       ; $4822: $c7
    ld h, b                                       ; $4823: $60
    sbc a                                         ; $4824: $9f
    xor e                                         ; $4825: $ab
    and l                                         ; $4826: $a5
    ld [hl-], a                                   ; $4827: $32
    inc bc                                        ; $4828: $03
    ld [c], a                                     ; $4829: $e2
    inc bc                                        ; $482a: $03
    db $fd                                        ; $482b: $fd
    jp Jump_049_6072                              ; $482c: $c3 $72 $60


    add e                                         ; $482f: $83
    ld bc, $0387                                  ; $4830: $01 $87 $03
    ld c, $07                                     ; $4833: $0e $07
    db $eb                                        ; $4835: $eb
    ld a, $1f                                     ; $4836: $3e $1f
    call z, Call_000_0341                         ; $4838: $cc $41 $03
    or b                                          ; $483b: $b0
    add hl, bc                                    ; $483c: $09
    di                                            ; $483d: $f3
    cp $87                                        ; $483e: $fe $87
    pop af                                        ; $4840: $f1
    db $fc                                        ; $4841: $fc
    ld e, h                                       ; $4842: $5c
    jp z, $eb00                                   ; $4843: $ca $00 $eb

    call c, $f000                                 ; $4846: $dc $00 $f0
    ld a, a                                       ; $4849: $7f
    rst $38                                       ; $484a: $ff
    rrca                                          ; $484b: $0f
    sbc c                                         ; $484c: $99
    ld sp, hl                                     ; $484d: $f9
    cp $e1                                        ; $484e: $fe $e1
    ld b, h                                       ; $4850: $44
    ldh [$f3], a                                  ; $4851: $e0 $f3
    rst $38                                       ; $4853: $ff
    db $db                                        ; $4854: $db
    nop                                           ; $4855: $00
    ld d, e                                       ; $4856: $53
    daa                                           ; $4857: $27
    nop                                           ; $4858: $00
    add hl, sp                                    ; $4859: $39
    ld bc, $02bb                                  ; $485a: $01 $bb $02
    dec e                                         ; $485d: $1d
    ld b, e                                       ; $485e: $43
    ld a, l                                       ; $485f: $7d
    nop                                           ; $4860: $00
    ei                                            ; $4861: $fb
    cp $e0                                        ; $4862: $fe $e0
    cp e                                          ; $4864: $bb
    nop                                           ; $4865: $00
    db $fc                                        ; $4866: $fc
    cp l                                          ; $4867: $bd
    ld bc, $41bc                                  ; $4868: $01 $bc $41
    ld c, a                                       ; $486b: $4f
    rst $38                                       ; $486c: $ff
    sbc a                                         ; $486d: $9f
    rst $38                                       ; $486e: $ff
    cp $e3                                        ; $486f: $fe $e3
    rst $38                                       ; $4871: $ff
    ld a, [$e283]                                 ; $4872: $fa $83 $e2
    inc bc                                        ; $4875: $03
    db $e3                                        ; $4876: $e3
    inc bc                                        ; $4877: $03
    db $e3                                        ; $4878: $e3
    ld bc, $e3f7                                  ; $4879: $01 $f7 $e3
    ld bc, $fee1                                  ; $487c: $01 $e1 $fe
    ldh [$3f], a                                  ; $487f: $e0 $3f
    di                                            ; $4881: $f3
    ccf                                           ; $4882: $3f
    db $e3                                        ; $4883: $e3
    xor a                                         ; $4884: $af
    ld a, a                                       ; $4885: $7f
    rst $20                                       ; $4886: $e7
    ld a, a                                       ; $4887: $7f
    rst $00                                       ; $4888: $c7
    ld a, h                                       ; $4889: $7c
    ret nz                                        ; $488a: $c0

    xor a                                         ; $488b: $af
    pop hl                                        ; $488c: $e1
    ldh [rIF], a                                  ; $488d: $e0 $0f
    pop af                                        ; $488f: $f1
    db $fc                                        ; $4890: $fc
    ld b, h                                       ; $4891: $44
    ld [c], a                                     ; $4892: $e2
    sbc h                                         ; $4893: $9c
    and e                                         ; $4894: $a3
    ld a, h                                       ; $4895: $7c
    add c                                         ; $4896: $81
    dec [hl]                                      ; $4897: $35
    rst $08                                       ; $4898: $cf
    ld [hl], l                                    ; $4899: $75
    adc a                                         ; $489a: $8f
    rla                                           ; $489b: $17
    ld a, e                                       ; $489c: $7b
    adc a                                         ; $489d: $8f
    ld a, a                                       ; $489e: $7f
    cp $e0                                        ; $489f: $fe $e0
    rst $28                                       ; $48a1: $ef
    ld l, d                                       ; $48a2: $6a
    ld [bc], a                                    ; $48a3: $02
    ld a, b                                       ; $48a4: $78

Call_049_48a5:
    ld b, l                                       ; $48a5: $45
    ld l, c                                       ; $48a6: $69
    dec b                                         ; $48a7: $05
    db $eb                                        ; $48a8: $eb
    adc a                                         ; $48a9: $8f
    pop af                                        ; $48aa: $f1
    cp $e3                                        ; $48ab: $fe $e3
    adc [hl]                                      ; $48ad: $8e
    cp $e0                                        ; $48ae: $fe $e0
    adc a                                         ; $48b0: $8f
    ldh a, [$8f]                                  ; $48b1: $f0 $8f
    ld bc, $b8f0                                  ; $48b3: $01 $f0 $b8
    ld b, l                                       ; $48b6: $45
    cp $e5                                        ; $48b7: $fe $e5
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    ld [hl], c                                    ; $48bc: $71
    add hl, bc                                    ; $48bd: $09
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    rst $38                                       ; $48c0: $ff
    rst $38                                       ; $48c1: $ff
    rst $38                                       ; $48c2: $ff
    rst $38                                       ; $48c3: $ff
    add hl, bc                                    ; $48c4: $09
    add hl, bc                                    ; $48c5: $09
    add hl, hl                                    ; $48c6: $29
    db $dd                                        ; $48c7: $dd
    ld sp, hl                                     ; $48c8: $f9
    or a                                          ; $48c9: $b7
    dec bc                                        ; $48ca: $0b
    dec bc                                        ; $48cb: $0b
    inc c                                         ; $48cc: $0c
    cp [hl]                                       ; $48cd: $be
    ld a, [$0a0c]                                 ; $48ce: $fa $0c $0a
    ldh [$f9], a                                  ; $48d1: $e0 $f9
    inc c                                         ; $48d3: $0c
    ld l, a                                       ; $48d4: $6f
    dec c                                         ; $48d5: $0d
    dec c                                         ; $48d6: $0d
    ld a, [bc]                                    ; $48d7: $0a
    rrca                                          ; $48d8: $0f
    ld a, [hl]                                    ; $48d9: $7e
    ld hl, sp+$0d                                 ; $48da: $f8 $0d
    ld a, [bc]                                    ; $48dc: $0a
    rst $38                                       ; $48dd: $ff
    ldh [$92], a                                  ; $48de: $e0 $92
    rst $18                                       ; $48e0: $df
    ld hl, sp+$0e                                 ; $48e1: $f8 $0e
    ldh [rIE], a                                  ; $48e3: $e0 $ff
    ldh [$e0], a                                  ; $48e5: $e0 $e0
    ld c, $5d                                     ; $48e7: $0e $5d
    or $c0                                        ; $48e9: $f6 $c0
    ld [c], a                                     ; $48eb: $e2
    ld a, [bc]                                    ; $48ec: $0a
    ei                                            ; $48ed: $fb
    ld a, [bc]                                    ; $48ee: $0a
    ld c, $a0                                     ; $48ef: $0e $a0
    or $0e                                        ; $48f1: $f6 $0e
    ld [$0a08], sp                                ; $48f3: $08 $08 $0a
    ld a, [bc]                                    ; $48f6: $0a
    ld [hl], e                                    ; $48f7: $73
    dec c                                         ; $48f8: $0d
    dec c                                         ; $48f9: $0d
    ld h, c                                       ; $48fa: $61
    push af                                       ; $48fb: $f5
    rst $38                                       ; $48fc: $ff
    ldh [$08], a                                  ; $48fd: $e0 $08
    ld [$e108], sp                                ; $48ff: $08 $08 $e1
    db $f4                                        ; $4902: $f4
    ld d, $e2                                     ; $4903: $16 $e2
    ldh [$6d], a                                  ; $4905: $e0 $6d
    add hl, bc                                    ; $4907: $09
    ldh [$e1], a                                  ; $4908: $e0 $e1
    ld a, [bc]                                    ; $490a: $0a
    ret nz                                        ; $490b: $c0

    ld a, [c]                                     ; $490c: $f2
    jp $1ee0                                      ; $490d: $c3 $e0 $1e


    pop hl                                        ; $4910: $e1
    inc b                                         ; $4911: $04
    ret nz                                        ; $4912: $c0

    ldh [$bf], a                                  ; $4913: $e0 $bf
    di                                            ; $4915: $f3
    dec c                                         ; $4916: $0d
    ret                                           ; $4917: $c9


    ld [c], a                                     ; $4918: $e2
    ldh [$f8], a                                  ; $4919: $e0 $f8
    ld l, d                                       ; $491b: $6a
    ld [c], a                                     ; $491c: $e2
    ld a, a                                       ; $491d: $7f
    pop hl                                        ; $491e: $e1
    and b                                         ; $491f: $a0
    di                                            ; $4920: $f3
    ld [bc], a                                    ; $4921: $02
    daa                                           ; $4922: $27
    jp $bd4d                                      ; $4923: $c3 $4d $bd


    jp nz, $f8df                                  ; $4926: $c2 $df $f8

    rst $38                                       ; $4929: $ff
    rst $38                                       ; $492a: $ff
    rst $38                                       ; $492b: $ff
    rst $38                                       ; $492c: $ff
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    rst $38                                       ; $4930: $ff
    nop                                           ; $4931: $00
    rst $38                                       ; $4932: $ff
    rst $38                                       ; $4933: $ff
    rst $38                                       ; $4934: $ff
    rst $38                                       ; $4935: $ff
    rst $38                                       ; $4936: $ff

jr_049_4937:
    rst $38                                       ; $4937: $ff
    rst $38                                       ; $4938: $ff
    rst $38                                       ; $4939: $ff
    rst $38                                       ; $493a: $ff
    rst $38                                       ; $493b: $ff
    rst $38                                       ; $493c: $ff
    rst $38                                       ; $493d: $ff
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    nop                                           ; $4942: $00
    rst $38                                       ; $4943: $ff
    cp $00                                        ; $4944: $fe $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    db $ed                                        ; $4948: $ed
    nop                                           ; $4949: $00
    rst $38                                       ; $494a: $ff
    db $e4                                        ; $494b: $e4
    ld bc, $f602                                  ; $494c: $01 $02 $f6
    db $e3                                        ; $494f: $e3
    inc bc                                        ; $4950: $03
    inc b                                         ; $4951: $04
    dec b                                         ; $4952: $05
    ld sp, hl                                     ; $4953: $f9
    ld b, $ec                                     ; $4954: $06 $ec
    push hl                                       ; $4956: $e5
    ld hl, sp-$1a                                 ; $4957: $f8 $e6
    rlca                                          ; $4959: $07
    ld [$0a09], sp                                ; $495a: $08 $09 $0a
    dec bc                                        ; $495d: $0b
    ld a, l                                       ; $495e: $7d
    inc c                                         ; $495f: $0c
    push de                                       ; $4960: $d5
    pop hl                                        ; $4961: $e1
    dec c                                         ; $4962: $0d
    ld c, $0f                                     ; $4963: $0e $0f
    db $10                                        ; $4965: $10
    ld de, $ebe0                                  ; $4966: $11 $e0 $eb
    rst $38                                       ; $4969: $ff
    ld [de], a                                    ; $496a: $12
    nop                                           ; $496b: $00
    inc de                                        ; $496c: $13
    inc d                                         ; $496d: $14
    dec d                                         ; $496e: $15
    ld d, $17                                     ; $496f: $16 $17
    jr @+$01                                      ; $4971: $18 $ff

    add hl, de                                    ; $4973: $19
    ld a, [de]                                    ; $4974: $1a
    dec de                                        ; $4975: $1b
    inc e                                         ; $4976: $1c

jr_049_4977:
    dec e                                         ; $4977: $1d
    ld e, $1f                                     ; $4978: $1e $1f
    jr nz, jr_049_4977                            ; $497a: $20 $fb

    ld hl, $c022                                  ; $497c: $21 $22 $c0
    jp hl                                         ; $497f: $e9


    inc hl                                        ; $4980: $23
    inc h                                         ; $4981: $24
    dec h                                         ; $4982: $25
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    rst $38                                       ; $4985: $ff
    ld h, $27                                     ; $4986: $26 $27
    nop                                           ; $4988: $00
    jr z, jr_049_498e                             ; $4989: $28 $03

    nop                                           ; $498b: $00
    add hl, hl                                    ; $498c: $29
    ld a, [hl+]                                   ; $498d: $2a

jr_049_498e:
    ld a, a                                       ; $498e: $7f
    dec hl                                        ; $498f: $2b
    inc l                                         ; $4990: $2c
    dec l                                         ; $4991: $2d
    ld l, $2f                                     ; $4992: $2e $2f
    ld [hl+], a                                   ; $4994: $22
    jr nc, jr_049_4937                            ; $4995: $30 $a0

    jp hl                                         ; $4997: $e9


    rst $38                                       ; $4998: $ff
    ld sp, $3332                                  ; $4999: $31 $32 $33
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    inc [hl]                                      ; $499e: $34
    dec [hl]                                      ; $499f: $35
    ld [hl], $ff                                  ; $49a0: $36 $ff
    scf                                           ; $49a2: $37
    jr c, jr_049_49de                             ; $49a3: $38 $39

    ld a, [hl-]                                   ; $49a5: $3a
    dec sp                                        ; $49a6: $3b
    inc a                                         ; $49a7: $3c
    dec a                                         ; $49a8: $3d
    ld a, $ef                                     ; $49a9: $3e $ef
    ccf                                           ; $49ab: $3f
    ld b, b                                       ; $49ac: $40
    ld b, c                                       ; $49ad: $41
    ld b, d                                       ; $49ae: $42
    add b                                         ; $49af: $80
    db $eb                                        ; $49b0: $eb
    ld b, e                                       ; $49b1: $43
    ld b, h                                       ; $49b2: $44
    ld b, l                                       ; $49b3: $45
    rst $38                                       ; $49b4: $ff
    ld b, [hl]                                    ; $49b5: $46
    ld b, a                                       ; $49b6: $47
    nop                                           ; $49b7: $00
    ld c, b                                       ; $49b8: $48
    ld c, c                                       ; $49b9: $49
    ld c, d                                       ; $49ba: $4a
    ld c, e                                       ; $49bb: $4b
    ld c, h                                       ; $49bc: $4c
    ld sp, hl                                     ; $49bd: $f9
    ld c, l                                       ; $49be: $4d
    rst $38                                       ; $49bf: $ff
    db $e3                                        ; $49c0: $e3
    ld h, b                                       ; $49c1: $60
    ld [$4f4e], a                                 ; $49c2: $ea $4e $4f
    ld d, b                                       ; $49c5: $50
    ld d, c                                       ; $49c6: $51
    ld d, d                                       ; $49c7: $52
    cp a                                          ; $49c8: $bf
    ld d, e                                       ; $49c9: $53
    ld d, h                                       ; $49ca: $54
    ld d, l                                       ; $49cb: $55
    ld d, [hl]                                    ; $49cc: $56
    ld d, a                                       ; $49cd: $57
    ld e, b                                       ; $49ce: $58
    pop hl                                        ; $49cf: $e1
    pop hl                                        ; $49d0: $e1
    ld e, c                                       ; $49d1: $59
    rst $30                                       ; $49d2: $f7
    ld e, d                                       ; $49d3: $5a
    ld e, e                                       ; $49d4: $5b
    ld e, h                                       ; $49d5: $5c

jr_049_49d6:
    ld b, b                                       ; $49d6: $40
    jp hl                                         ; $49d7: $e9


    ld e, l                                       ; $49d8: $5d
    ld e, [hl]                                    ; $49d9: $5e
    ld e, a                                       ; $49da: $5f
    ld h, b                                       ; $49db: $60
    cp a                                          ; $49dc: $bf
    ld h, c                                       ; $49dd: $61

jr_049_49de:
    ld c, l                                       ; $49de: $4d
    ld h, d                                       ; $49df: $62
    ld h, e                                       ; $49e0: $63
    ld h, h                                       ; $49e1: $64
    ld h, l                                       ; $49e2: $65
    jp $66e2                                      ; $49e3: $c3 $e2 $66


    rst $28                                       ; $49e6: $ef
    ld h, a                                       ; $49e7: $67
    ld l, b                                       ; $49e8: $68
    ld l, c                                       ; $49e9: $69
    ld l, d                                       ; $49ea: $6a
    jr nz, jr_049_49d6                            ; $49eb: $20 $e9

    ld c, l                                       ; $49ed: $4d
    ld c, l                                       ; $49ee: $4d
    ld l, e                                       ; $49ef: $6b
    ld a, a                                       ; $49f0: $7f
    ld l, h                                       ; $49f1: $6c
    ld l, l                                       ; $49f2: $6d
    ld l, [hl]                                    ; $49f3: $6e
    ld l, a                                       ; $49f4: $6f
    ld [hl], b                                    ; $49f5: $70
    ld [hl], c                                    ; $49f6: $71
    ld [hl], d                                    ; $49f7: $72
    and e                                         ; $49f8: $a3
    db $e4                                        ; $49f9: $e4
    db $fc                                        ; $49fa: $fc
    and b                                         ; $49fb: $a0
    db $ec                                        ; $49fc: $ec
    adc l                                         ; $49fd: $8d
    pop hl                                        ; $49fe: $e1
    ld [hl], e                                    ; $49ff: $73
    ld [hl], h                                    ; $4a00: $74

Jump_049_4a01:
    ld [hl], l                                    ; $4a01: $75
    halt                                          ; $4a02: $76
    ld [hl], a                                    ; $4a03: $77
    ld a, b                                       ; $4a04: $78
    db $db                                        ; $4a05: $db
    ld a, c                                       ; $4a06: $79
    ld a, d                                       ; $4a07: $7a
    add c                                         ; $4a08: $81
    db $e3                                        ; $4a09: $e3
    ld a, e                                       ; $4a0a: $7b
    ld a, h                                       ; $4a0b: $7c
    ldh [$ed], a                                  ; $4a0c: $e0 $ed
    ld a, l                                       ; $4a0e: $7d
    ld a, [hl]                                    ; $4a0f: $7e
    rst $38                                       ; $4a10: $ff
    ld a, a                                       ; $4a11: $7f
    add b                                         ; $4a12: $80
    add c                                         ; $4a13: $81
    add d                                         ; $4a14: $82
    add e                                         ; $4a15: $83
    add h                                         ; $4a16: $84
    add l                                         ; $4a17: $85
    add [hl]                                      ; $4a18: $86
    cp a                                          ; $4a19: $bf
    add a                                         ; $4a1a: $87
    adc b                                         ; $4a1b: $88
    adc c                                         ; $4a1c: $89
    adc d                                         ; $4a1d: $8a
    adc e                                         ; $4a1e: $8b
    adc h                                         ; $4a1f: $8c
    and b                                         ; $4a20: $a0
    ld [$ff8d], a                                 ; $4a21: $ea $8d $ff
    adc [hl]                                      ; $4a24: $8e
    adc a                                         ; $4a25: $8f
    sub b                                         ; $4a26: $90
    sub c                                         ; $4a27: $91
    sub d                                         ; $4a28: $92
    sub e                                         ; $4a29: $93
    sub h                                         ; $4a2a: $94
    sub l                                         ; $4a2b: $95
    rst $38                                       ; $4a2c: $ff
    sub [hl]                                      ; $4a2d: $96
    sub a                                         ; $4a2e: $97
    sbc b                                         ; $4a2f: $98
    sbc c                                         ; $4a30: $99
    sbc d                                         ; $4a31: $9a
    sbc e                                         ; $4a32: $9b
    sbc h                                         ; $4a33: $9c
    sbc l                                         ; $4a34: $9d
    ei                                            ; $4a35: $fb
    sbc l                                         ; $4a36: $9d
    sbc l                                         ; $4a37: $9d
    and b                                         ; $4a38: $a0
    ret                                           ; $4a39: $c9


    sbc [hl]                                      ; $4a3a: $9e
    sbc a                                         ; $4a3b: $9f
    and b                                         ; $4a3c: $a0
    and c                                         ; $4a3d: $a1
    and d                                         ; $4a3e: $a2
    ccf                                           ; $4a3f: $3f
    and e                                         ; $4a40: $a3
    and h                                         ; $4a41: $a4
    and l                                         ; $4a42: $a5
    and [hl]                                      ; $4a43: $a6
    and a                                         ; $4a44: $a7
    xor b                                         ; $4a45: $a8
    and $e0                                       ; $4a46: $e6 $e0
    db $fd                                        ; $4a48: $fd
    db $e3                                        ; $4a49: $e3
    cp $80                                        ; $4a4a: $fe $80
    ret                                           ; $4a4c: $c9


    sbc l                                         ; $4a4d: $9d
    xor c                                         ; $4a4e: $a9
    xor d                                         ; $4a4f: $aa
    and e                                         ; $4a50: $a3
    and c                                         ; $4a51: $a1
    sbc l                                         ; $4a52: $9d
    xor e                                         ; $4a53: $ab
    rst $18                                       ; $4a54: $df
    xor h                                         ; $4a55: $ac
    xor l                                         ; $4a56: $ad
    xor [hl]                                      ; $4a57: $ae
    xor a                                         ; $4a58: $af
    or b                                          ; $4a59: $b0
    ldh [$f1], a                                  ; $4a5a: $e0 $f1
    or c                                          ; $4a5c: $b1
    or d                                          ; $4a5d: $b2
    db $fd                                        ; $4a5e: $fd
    or e                                          ; $4a5f: $b3
    xor [hl]                                      ; $4a60: $ae
    ldh [$b4], a                                  ; $4a61: $e0 $b4
    or l                                          ; $4a63: $b5
    or [hl]                                       ; $4a64: $b6
    or a                                          ; $4a65: $b7
    cp b                                          ; $4a66: $b8
    cp c                                          ; $4a67: $b9
    xor $c0                                       ; $4a68: $ee $c0
    pop af                                        ; $4a6a: $f1
    cp d                                          ; $4a6b: $ba
    cp e                                          ; $4a6c: $bb
    cp h                                          ; $4a6d: $bc
    adc [hl]                                      ; $4a6e: $8e
    ldh [$bd], a                                  ; $4a6f: $e0 $bd
    cp [hl]                                       ; $4a71: $be
    nop                                           ; $4a72: $00
    or a                                          ; $4a73: $b7
    cp a                                          ; $4a74: $bf
    ret nz                                        ; $4a75: $c0

    pop bc                                        ; $4a76: $c1
    and b                                         ; $4a77: $a0
    pop af                                        ; $4a78: $f1
    jp nz, $89c3                                  ; $4a79: $c2 $c3 $89

    pop hl                                        ; $4a7c: $e1
    call nz, $c59f                                ; $4a7d: $c4 $9f $c5
    add $c7                                       ; $4a80: $c6 $c7
    ret z                                         ; $4a82: $c8

    ret                                           ; $4a83: $c9


    add b                                         ; $4a84: $80
    ld a, [c]                                     ; $4a85: $f2
    ld l, d                                       ; $4a86: $6a
    ld [c], a                                     ; $4a87: $e2
    call nz, $ca3f                                ; $4a88: $c4 $3f $ca
    set 1, h                                      ; $4a8b: $cb $cc
    call $cfce                                    ; $4a8d: $cd $ce $cf
    ld h, b                                       ; $4a90: $60
    ldh a, [rIE]                                  ; $4a91: $f0 $ff
    rst $38                                       ; $4a93: $ff
    nop                                           ; $4a94: $00
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
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    rst $38                                       ; $4aa3: $ff
    rst $38                                       ; $4aa4: $ff
    nop                                           ; $4aa5: $00
    rst $38                                       ; $4aa6: $ff
    rst $38                                       ; $4aa7: $ff
    rst $38                                       ; $4aa8: $ff
    rst $38                                       ; $4aa9: $ff
    rst $38                                       ; $4aaa: $ff
    rst $38                                       ; $4aab: $ff
    rst $38                                       ; $4aac: $ff
    rst $38                                       ; $4aad: $ff
    rst $38                                       ; $4aae: $ff
    db $e3                                        ; $4aaf: $e3
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    cp e                                          ; $4ab3: $bb
    ld c, d                                       ; $4ab4: $4a
    ei                                            ; $4ab5: $fb
    ld c, d                                       ; $4ab6: $4a
    ld [hl], l                                    ; $4ab7: $75
    ld d, d                                       ; $4ab8: $52
    inc b                                         ; $4ab9: $04
    ld d, e                                       ; $4aba: $53
    nop                                           ; $4abb: $00
    nop                                           ; $4abc: $00
    ld b, l                                       ; $4abd: $45
    ld bc, $061f                                  ; $4abe: $01 $1f $06
    or c                                          ; $4ac1: $b1
    dec c                                         ; $4ac2: $0d
    sbc b                                         ; $4ac3: $98
    ld b, c                                       ; $4ac4: $41
    adc a                                         ; $4ac5: $8f
    ld a, c                                       ; $4ac6: $79
    or e                                          ; $4ac7: $b3
    ld l, c                                       ; $4ac8: $69
    sbc h                                         ; $4ac9: $9c
    add hl, hl                                    ; $4aca: $29
    nop                                           ; $4acb: $00
    nop                                           ; $4acc: $00
    ld d, h                                       ; $4acd: $54
    nop                                           ; $4ace: $00
    ld e, [hl]                                    ; $4acf: $5e
    ld [bc], a                                    ; $4ad0: $02
    sbc h                                         ; $4ad1: $9c
    add hl, hl                                    ; $4ad2: $29
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00
    ld d, h                                       ; $4ad5: $54
    nop                                           ; $4ad6: $00
    dec bc                                        ; $4ad7: $0b
    nop                                           ; $4ad8: $00
    or c                                          ; $4ad9: $b1
    dec c                                         ; $4ada: $0d
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    ld d, h                                       ; $4add: $54
    nop                                           ; $4ade: $00
    ld e, [hl]                                    ; $4adf: $5e
    ld [bc], a                                    ; $4ae0: $02
    or c                                          ; $4ae1: $b1
    dec c                                         ; $4ae2: $0d
    db $10                                        ; $4ae3: $10
    ld b, d                                       ; $4ae4: $42
    rl b                                          ; $4ae5: $cb $10
    rrca                                          ; $4ae7: $0f
    dec e                                         ; $4ae8: $1d
    sbc h                                         ; $4ae9: $9c
    add hl, hl                                    ; $4aea: $29
    sbc a                                         ; $4aeb: $9f
    ld c, e                                       ; $4aec: $4b
    sub h                                         ; $4aed: $94
    ld hl, $3a5c                                  ; $4aee: $21 $5c $3a
    sbc h                                         ; $4af1: $9c
    add hl, hl                                    ; $4af2: $29
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    dec bc                                        ; $4af5: $0b
    nop                                           ; $4af6: $00
    ld d, h                                       ; $4af7: $54
    nop                                           ; $4af8: $00
    ld e, [hl]                                    ; $4af9: $5e
    ld [bc], a                                    ; $4afa: $02
    ei                                            ; $4afb: $fb
    rst $38                                       ; $4afc: $ff
    nop                                           ; $4afd: $00
    cp $ed                                        ; $4afe: $fe $ed
    xor d                                         ; $4b00: $aa
    ld d, l                                       ; $4b01: $55
    ld d, l                                       ; $4b02: $55
    xor d                                         ; $4b03: $aa
    xor d                                         ; $4b04: $aa
    ld h, a                                       ; $4b05: $67
    ld d, l                                       ; $4b06: $55
    nop                                           ; $4b07: $00
    rst $38                                       ; $4b08: $ff
    db $fc                                        ; $4b09: $fc
    push hl                                       ; $4b0a: $e5
    rst $20                                       ; $4b0b: $e7
    rst $20                                       ; $4b0c: $e7
    nop                                           ; $4b0d: $00
    ld d, l                                       ; $4b0e: $55
    db $fc                                        ; $4b0f: $fc
    ld [c], a                                     ; $4b10: $e2
    ld h, c                                       ; $4b11: $61
    nop                                           ; $4b12: $00
    db $fc                                        ; $4b13: $fc
    and $f5                                       ; $4b14: $e6 $f5
    pop hl                                        ; $4b16: $e1
    db $d3                                        ; $4b17: $d3
    pop hl                                        ; $4b18: $e1
    rst $08                                       ; $4b19: $cf
    ldh [rIE], a                                  ; $4b1a: $e0 $ff
    rst $38                                       ; $4b1c: $ff
    db $fc                                        ; $4b1d: $fc
    push hl                                       ; $4b1e: $e5
    and $fe                                       ; $4b1f: $e6 $fe
    push hl                                       ; $4b21: $e5
    db $fd                                        ; $4b22: $fd
    add e                                         ; $4b23: $83
    and h                                         ; $4b24: $a4
    ld [c], a                                     ; $4b25: $e2
    rst $38                                       ; $4b26: $ff
    add sp, -$21                                  ; $4b27: $e8 $df
    ccf                                           ; $4b29: $3f
    rst $38                                       ; $4b2a: $ff
    ld sp, hl                                     ; $4b2b: $f9
    rra                                           ; $4b2c: $1f
    ldh a, [$e9]                                  ; $4b2d: $f0 $e9
    call nc, $c0e7                                ; $4b2f: $d4 $e7 $c0
    ret nz                                        ; $4b32: $c0

    ldh [$ef], a                                  ; $4b33: $e0 $ef
    add sp, -$01                                  ; $4b35: $e8 $ff
    rst $20                                       ; $4b37: $e7
    or $f1                                        ; $4b38: $f6 $f1
    rst $30                                       ; $4b3a: $f7
    ldh a, [$df]                                  ; $4b3b: $f0 $df
    rst $18                                       ; $4b3d: $df
    rst $08                                       ; $4b3e: $cf
    rst $38                                       ; $4b3f: $ff
    rst $08                                       ; $4b40: $cf
    rst $00                                       ; $4b41: $c7
    rst $10                                       ; $4b42: $d7
    jp Jump_000_11db                              ; $4b43: $c3 $db $11


    dec c                                         ; $4b46: $0d
    add hl, sp                                    ; $4b47: $39
    rst $18                                       ; $4b48: $df

jr_049_4b49:
    push bc                                       ; $4b49: $c5
    ld [$84f6], sp                                ; $4b4a: $08 $f6 $84
    ld a, d                                       ; $4b4d: $7a
    or b                                          ; $4b4e: $b0
    rst $20                                       ; $4b4f: $e7
    db $fc                                        ; $4b50: $fc
    rst $38                                       ; $4b51: $ff
    rst $28                                       ; $4b52: $ef
    rst $30                                       ; $4b53: $f7
    ld hl, sp-$02                                 ; $4b54: $f8 $fe
    db $fd                                        ; $4b56: $fd
    and b                                         ; $4b57: $a0
    db $e4                                        ; $4b58: $e4
    cp $cf                                        ; $4b59: $fe $cf
    ldh a, [$bf]                                  ; $4b5b: $f0 $bf
    rst $38                                       ; $4b5d: $ff
    nop                                           ; $4b5e: $00
    rst $30                                       ; $4b5f: $f7
    ld [$f609], sp                                ; $4b60: $08 $09 $f6
    ld b, b                                       ; $4b63: $40
    pop hl                                        ; $4b64: $e1
    jp nc, Jump_000_2ddd                          ; $4b65: $d2 $dd $2d

    dec sp                                        ; $4b68: $3b
    ldh [$c0], a                                  ; $4b69: $e0 $c0
    ld bc, $e979                                  ; $4b6b: $01 $79 $e9
    ldh [rIE], a                                  ; $4b6e: $e0 $ff
    cp $ff                                        ; $4b70: $fe $ff
    rlca                                          ; $4b72: $07
    ld e, a                                       ; $4b73: $5f
    and b                                         ; $4b74: $a0
    add a                                         ; $4b75: $87
    ld e, b                                       ; $4b76: $58
    nop                                           ; $4b77: $00
    inc l                                         ; $4b78: $2c
    rlca                                          ; $4b79: $07
    rst $38                                       ; $4b7a: $ff
    rst $10                                       ; $4b7b: $d7
    rst $38                                       ; $4b7c: $ff
    rst $38                                       ; $4b7d: $ff
    sbc a                                         ; $4b7e: $9f
    ldh [$7f], a                                  ; $4b7f: $e0 $7f
    add b                                         ; $4b81: $80
    rst $08                                       ; $4b82: $cf
    rst $18                                       ; $4b83: $df
    cpl                                           ; $4b84: $2f
    ldh a, [$0e]                                  ; $4b85: $f0 $0e
    rlca                                          ; $4b87: $07
    rst $00                                       ; $4b88: $c7
    ld l, d                                       ; $4b89: $6a
    db $e3                                        ; $4b8a: $e3
    ld a, a                                       ; $4b8b: $7f
    rst $38                                       ; $4b8c: $ff
    ei                                            ; $4b8d: $fb
    db $fc                                        ; $4b8e: $fc
    inc bc                                        ; $4b8f: $03
    add b                                         ; $4b90: $80
    db $eb                                        ; $4b91: $eb
    ld a, a                                       ; $4b92: $7f
    rst $38                                       ; $4b93: $ff
    ei                                            ; $4b94: $fb
    ld hl, sp-$07                                 ; $4b95: $f8 $f9
    rst $38                                       ; $4b97: $ff
    ld a, [$f7f0]                                 ; $4b98: $fa $f0 $f7
    ldh [$ef], a                                  ; $4b9b: $e0 $ef
    rst $18                                       ; $4b9d: $df
    ret nz                                        ; $4b9e: $c0

    adc a                                         ; $4b9f: $8f
    rst $38                                       ; $4ba0: $ff
    add b                                         ; $4ba1: $80
    ldh a, [$f0]                                  ; $4ba2: $f0 $f0
    rst $38                                       ; $4ba4: $ff
    rst $38                                       ; $4ba5: $ff
    ldh [$1f], a                                  ; $4ba6: $e0 $1f
    ld hl, sp-$01                                 ; $4ba8: $f8 $ff
    rlca                                          ; $4baa: $07
    db $ec                                        ; $4bab: $ec
    inc bc                                        ; $4bac: $03
    inc sp                                        ; $4bad: $33
    ret nz                                        ; $4bae: $c0

    sbc b                                         ; $4baf: $98
    ld h, b                                       ; $4bb0: $60
    db $fd                                        ; $4bb1: $fd
    rst $38                                       ; $4bb2: $ff

jr_049_4bb3:
    nop                                           ; $4bb3: $00
    db $fc                                        ; $4bb4: $fc
    nop                                           ; $4bb5: $00
    inc bc                                        ; $4bb6: $03
    nop                                           ; $4bb7: $00
    ld a, b                                       ; $4bb8: $78
    ld a, b                                       ; $4bb9: $78
    ld h, h                                       ; $4bba: $64
    rst $38                                       ; $4bbb: $ff
    ld h, e                                       ; $4bbc: $63
    db $10                                        ; $4bbd: $10
    rrca                                          ; $4bbe: $0f

jr_049_4bbf:
    ld e, a                                       ; $4bbf: $5f
    jr nz, jr_049_4b49                            ; $4bc0: $20 $87

    ld a, b                                       ; $4bc2: $78
    ld sp, hl                                     ; $4bc3: $f9
    rst $38                                       ; $4bc4: $ff
    ld b, $f9                                     ; $4bc5: $06 $f9
    nop                                           ; $4bc7: $00
    cp $00                                        ; $4bc8: $fe $00
    rrca                                          ; $4bca: $0f
    rrca                                          ; $4bcb: $0f
    inc de                                        ; $4bcc: $13
    rst $38                                       ; $4bcd: $ff
    db $e3                                        ; $4bce: $e3
    ldh [rNR23], a                                ; $4bcf: $e0 $18
    ld [hl], $c1                                  ; $4bd1: $36 $c1
    rst $28                                       ; $4bd3: $ef
    nop                                           ; $4bd4: $00
    call c, $03ef                                 ; $4bd5: $dc $ef $03
    rst $18                                       ; $4bd8: $df
    nop                                           ; $4bd9: $00
    cp a                                          ; $4bda: $bf
    jr nz, jr_049_4bbf                            ; $4bdb: $20 $e2

    ccf                                           ; $4bdd: $3f
    ccf                                           ; $4bde: $3f
    rrca                                          ; $4bdf: $0f
    rst $38                                       ; $4be0: $ff
    rst $08                                       ; $4be1: $cf
    rlca                                          ; $4be2: $07
    rst $30                                       ; $4be3: $f7
    add e                                         ; $4be4: $83
    ld a, e                                       ; $4be5: $7b
    ld bc, $c1fd                                  ; $4be6: $01 $fd $c1

jr_049_4be9:
    ld a, l                                       ; $4be9: $7d
    dec a                                         ; $4bea: $3d
    ld d, d                                       ; $4beb: $52
    and $e1                                       ; $4bec: $e6 $e1
    nop                                           ; $4bee: $00
    ccf                                           ; $4bef: $3f
    ld hl, sp-$08                                 ; $4bf0: $f8 $f8
    ld a, [c]                                     ; $4bf2: $f2
    pop bc                                        ; $4bf3: $c1
    rst $38                                       ; $4bf4: $ff
    pop af                                        ; $4bf5: $f1
    or $c7                                        ; $4bf6: $f6 $c7
    ld hl, sp+$1e                                 ; $4bf8: $f8 $1e
    ld hl, $827d                                  ; $4bfa: $21 $7d $82
    rst $38                                       ; $4bfd: $ff
    nop                                           ; $4bfe: $00
    jp $f000                                      ; $4bff: $c3 $00 $f0


    ldh a, [$f1]                                  ; $4c02: $f0 $f1
    ld a, l                                       ; $4c04: $7d
    add d                                         ; $4c05: $82
    rst $38                                       ; $4c06: $ff
    rst $38                                       ; $4c07: $ff
    nop                                           ; $4c08: $00
    rst $18                                       ; $4c09: $df
    jr nz, jr_049_4bb3                            ; $4c0a: $20 $a7

    ld e, b                                       ; $4c0c: $58
    dec e                                         ; $4c0d: $1d
    ld [c], a                                     ; $4c0e: $e2
    rst $38                                       ; $4c0f: $ff
    ld l, d                                       ; $4c10: $6a
    sub l                                         ; $4c11: $95
    inc b                                         ; $4c12: $04
    ld a, e                                       ; $4c13: $7b
    nop                                           ; $4c14: $00
    cp $3f                                        ; $4c15: $fe $3f
    ret nz                                        ; $4c17: $c0

    cp $7e                                        ; $4c18: $fe $7e
    pop bc                                        ; $4c1a: $c1
    ei                                            ; $4c1b: $fb
    inc b                                         ; $4c1c: $04
    ld e, a                                       ; $4c1d: $5f
    and b                                         ; $4c1e: $a0
    adc a                                         ; $4c1f: $8f
    ld [hl], b                                    ; $4c20: $70
    nop                                           ; $4c21: $00
    rst $38                                       ; $4c22: $ff
    rst $10                                       ; $4c23: $d7
    nop                                           ; $4c24: $00
    add hl, hl                                    ; $4c25: $29
    rst $38                                       ; $4c26: $ff
    ld hl, sp-$01                                 ; $4c27: $f8 $ff
    jr nc, jr_049_4c5b                            ; $4c29: $30 $30

    rst $38                                       ; $4c2b: $ff
    ld c, a                                       ; $4c2c: $4f
    sub h                                         ; $4c2d: $94
    sub h                                         ; $4c2e: $94
    rst $38                                       ; $4c2f: $ff
    rst $38                                       ; $4c30: $ff
    sbc $e1                                       ; $4c31: $de $e1
    ret nz                                        ; $4c33: $c0

    ld sp, hl                                     ; $4c34: $f9
    jr z, jr_049_4be9                             ; $4c35: $28 $b2

    ret nz                                        ; $4c37: $c0

    ld [hl], b                                    ; $4c38: $70
    ret nz                                        ; $4c39: $c0

    ld bc, $00f6                                  ; $4c3a: $01 $f6 $00
    dec bc                                        ; $4c3d: $0b
    ld hl, sp-$09                                 ; $4c3e: $f8 $f7
    ld hl, sp+$0f                                 ; $4c40: $f8 $0f
    rst $28                                       ; $4c42: $ef
    rlca                                          ; $4c43: $07
    ld [c], a                                     ; $4c44: $e2
    ld bc, $7f80                                  ; $4c45: $01 $80 $7f
    nop                                           ; $4c48: $00
    rst $18                                       ; $4c49: $df
    db $e3                                        ; $4c4a: $e3
    nop                                           ; $4c4b: $00
    add b                                         ; $4c4c: $80
    add hl, bc                                    ; $4c4d: $09
    rrca                                          ; $4c4e: $0f
    sub [hl]                                      ; $4c4f: $96
    jp $fb03                                      ; $4c50: $c3 $03 $fb


    cp a                                          ; $4c53: $bf
    nop                                           ; $4c54: $00
    rst $38                                       ; $4c55: $ff
    inc bc                                        ; $4c56: $03
    rlca                                          ; $4c57: $07
    rra                                           ; $4c58: $1f
    ccf                                           ; $4c59: $3f
    adc b                                         ; $4c5a: $88

jr_049_4c5b:
    rst $00                                       ; $4c5b: $c7
    rra                                           ; $4c5c: $1f
    db $fd                                        ; $4c5d: $fd
    cp a                                          ; $4c5e: $bf
    adc h                                         ; $4c5f: $8c
    ret                                           ; $4c60: $c9


    ei                                            ; $4c61: $fb
    ld hl, sp-$3b                                 ; $4c62: $f8 $c5
    ret nz                                        ; $4c64: $c0

    add a                                         ; $4c65: $87
    or b                                          ; $4c66: $b0
    rst $38                                       ; $4c67: $ff
    and a                                         ; $4c68: $a7
    sub b                                         ; $4c69: $90
    or a                                          ; $4c6a: $b7
    add b                                         ; $4c6b: $80
    db $d3                                        ; $4c6c: $d3
    ret nz                                        ; $4c6d: $c0

    db $d3                                        ; $4c6e: $d3
    ret nz                                        ; $4c6f: $c0

    rst $38                                       ; $4c70: $ff
    push hl                                       ; $4c71: $e5
    ldh [rIE], a                                  ; $4c72: $e0 $ff
    nop                                           ; $4c74: $00
    pop bc                                        ; $4c75: $c1
    ld a, $70                                     ; $4c76: $3e $70
    adc a                                         ; $4c78: $8f
    cp a                                          ; $4c79: $bf
    sbc b                                         ; $4c7a: $98
    ld h, a                                       ; $4c7b: $67
    add b                                         ; $4c7c: $80
    ld a, [hl]                                    ; $4c7d: $7e
    ld b, b                                       ; $4c7e: $40
    cp [hl]                                       ; $4c7f: $be
    ld sp, $fee0                                  ; $4c80: $31 $e0 $fe
    rst $38                                       ; $4c83: $ff
    daa                                           ; $4c84: $27
    jr jr_049_4c8a                                ; $4c85: $18 $03

    ld a, h                                       ; $4c87: $7c
    dec b                                         ; $4c88: $05
    ld a, d                                       ; $4c89: $7a

jr_049_4c8a:
    inc bc                                        ; $4c8a: $03
    ld a, h                                       ; $4c8b: $7c
    rst $38                                       ; $4c8c: $ff
    ld bc, $07fe                                  ; $4c8d: $01 $fe $07
    ld hl, sp+$1f                                 ; $4c90: $f8 $1f
    ldh [rP1], a                                  ; $4c92: $e0 $00
    rst $38                                       ; $4c94: $ff
    rst $38                                       ; $4c95: $ff
    ldh [rNR34], a                                ; $4c96: $e0 $1e
    ldh a, [$0e]                                  ; $4c98: $f0 $0e
    ldh a, [rIF]                                  ; $4c9a: $f0 $0f
    sbc b                                         ; $4c9c: $98
    ld h, a                                       ; $4c9d: $67
    rst $38                                       ; $4c9e: $ff
    ldh [rNR34], a                                ; $4c9f: $e0 $1e
    ld hl, sp+$05                                 ; $4ca1: $f8 $05
    ldh a, [$0d]                                  ; $4ca3: $f0 $0d
    ldh [rNR32], a                                ; $4ca5: $e0 $1c
    rst $38                                       ; $4ca7: $ff
    db $fc                                        ; $4ca8: $fc
    db $fc                                        ; $4ca9: $fc
    ldh [$e3], a                                  ; $4caa: $e0 $e3
    ld b, b                                       ; $4cac: $40
    ld e, a                                       ; $4cad: $5f
    dec bc                                        ; $4cae: $0b
    inc [hl]                                      ; $4caf: $34
    rst $20                                       ; $4cb0: $e7
    rla                                           ; $4cb1: $17
    add sp, $00                                   ; $4cb2: $e8 $00
    jp nz, Jump_000_00c1                          ; $4cb4: $c2 $c1 $00

    ldh [$1f], a                                  ; $4cb7: $e0 $1f
    rst $18                                       ; $4cb9: $df
    ccf                                           ; $4cba: $3f
    ld [hl], a                                    ; $4cbb: $77
    cp a                                          ; $4cbc: $bf
    cp a                                          ; $4cbd: $bf
    ccf                                           ; $4cbe: $3f
    inc c                                         ; $4cbf: $0c
    pop hl                                        ; $4cc0: $e1
    inc bc                                        ; $4cc1: $03
    di                                            ; $4cc2: $f3
    ld bc, $c570                                  ; $4cc3: $01 $70 $c5
    ld h, [hl]                                    ; $4cc6: $66
    add hl, bc                                    ; $4cc7: $09
    call nz, $fcf3                                ; $4cc8: $c4 $f3 $fc
    jr nz, @-$34                                  ; $4ccb: $20 $ca

    ret nc                                        ; $4ccd: $d0

    ldh [$c0], a                                  ; $4cce: $e0 $c0
    ret nz                                        ; $4cd0: $c0

    ld a, [$5cc3]                                 ; $4cd1: $fa $c3 $5c

jr_049_4cd4:
    add sp, -$5b                                  ; $4cd4: $e8 $a5
    jp nz, Jump_000_17a0                          ; $4cd6: $c2 $a0 $17

    add b                                         ; $4cd9: $80
    add b                                         ; $4cda: $80
    ld [$bfa9], a                                 ; $4cdb: $ea $a9 $bf
    db $eb                                        ; $4cde: $eb
    and b                                         ; $4cdf: $a0
    rst $38                                       ; $4ce0: $ff
    rrca                                          ; $4ce1: $0f
    rst $38                                       ; $4ce2: $ff
    dec b                                         ; $4ce3: $05
    rst $38                                       ; $4ce4: $ff
    add c                                         ; $4ce5: $81
    ld a, a                                       ; $4ce6: $7f
    db $10                                        ; $4ce7: $10
    rst $28                                       ; $4ce8: $ef
    cp [hl]                                       ; $4ce9: $be
    pop de                                        ; $4cea: $d1
    xor c                                         ; $4ceb: $a9
    ld a, a                                       ; $4cec: $7f
    rst $38                                       ; $4ced: $ff
    ccf                                           ; $4cee: $3f
    rst $38                                       ; $4cef: $ff
    scf                                           ; $4cf0: $37
    or c                                          ; $4cf1: $b1
    and b                                         ; $4cf2: $a0
    rst $20                                       ; $4cf3: $e7
    rst $30                                       ; $4cf4: $f7
    rst $38                                       ; $4cf5: $ff
    add e                                         ; $4cf6: $83
    db $eb                                        ; $4cf7: $eb
    ld a, [$fca8]                                 ; $4cf8: $fa $a8 $fc
    ld a, [de]                                    ; $4cfb: $1a
    add hl, de                                    ; $4cfc: $19
    dec b                                         ; $4cfd: $05
    rst $18                                       ; $4cfe: $df
    ld [bc], a                                    ; $4cff: $02
    rst $20                                       ; $4d00: $e7
    ldh [$f7], a                                  ; $4d01: $e0 $f7
    ldh a, [rDMA]                                 ; $4d03: $f0 $46
    ret nz                                        ; $4d05: $c0

    ld hl, sp-$06                                 ; $4d06: $f8 $fa
    rst $38                                       ; $4d08: $ff
    ld hl, sp+$7f                                 ; $4d09: $f8 $7f
    ld a, a                                       ; $4d0b: $7f
    sub e                                         ; $4d0c: $93
    inc de                                        ; $4d0d: $13
    jr z, jr_049_4cd4                             ; $4d0e: $28 $c4

    call Call_000_00ff                            ; $4d10: $cd $ff $00
    and d                                         ; $4d13: $a2
    ld de, $20db                                  ; $4d14: $11 $db $20
    ei                                            ; $4d17: $fb
    nop                                           ; $4d18: $00
    ld [hl], c                                    ; $4d19: $71
    rst $38                                       ; $4d1a: $ff
    nop                                           ; $4d1b: $00
    rst $30                                       ; $4d1c: $f7
    ldh a, [$f7]                                  ; $4d1d: $f0 $f7
    ldh a, [$03]                                  ; $4d1f: $f0 $03
    nop                                           ; $4d21: $00
    ld h, e                                       ; $4d22: $63

jr_049_4d23:
    rst $38                                       ; $4d23: $ff
    sub b                                         ; $4d24: $90
    ret                                           ; $4d25: $c9


    inc h                                         ; $4d26: $24
    push de                                       ; $4d27: $d5
    ld [$00d8], sp                                ; $4d28: $08 $d8 $00
    ret nz                                        ; $4d2b: $c0

    rst $38                                       ; $4d2c: $ff
    nop                                           ; $4d2d: $00
    add b                                         ; $4d2e: $80
    halt                                          ; $4d2f: $76
    add b                                         ; $4d30: $80
    ld a, b                                       ; $4d31: $78
    ret nz                                        ; $4d32: $c0

    inc l                                         ; $4d33: $2c
    ld b, b                                       ; $4d34: $40
    rst $38                                       ; $4d35: $ff
    or l                                          ; $4d36: $b5
    and b                                         ; $4d37: $a0
    ld e, c                                       ; $4d38: $59
    add b                                         ; $4d39: $80
    ld a, l                                       ; $4d3a: $7d
    ld b, b                                       ; $4d3b: $40
    cp h                                          ; $4d3c: $bc
    nop                                           ; $4d3d: $00
    rst $38                                       ; $4d3e: $ff
    ld a, l                                       ; $4d3f: $7d
    ld bc, $03ce                                  ; $4d40: $01 $ce $03
    inc a                                         ; $4d43: $3c
    inc c                                         ; $4d44: $0c
    di                                            ; $4d45: $f3
    jr nz, @+$01                                  ; $4d46: $20 $ff

    rst $18                                       ; $4d48: $df
    ld bc, $03e6                                  ; $4d49: $01 $e6 $03
    sbc h                                         ; $4d4c: $9c
    dec c                                         ; $4d4d: $0d
    ld [hl], d                                    ; $4d4e: $72
    inc bc                                        ; $4d4f: $03
    rst $38                                       ; $4d50: $ff
    db $fc                                        ; $4d51: $fc
    jp c, $f024                                   ; $4d52: $da $24 $f0

    ld c, $e0                                     ; $4d55: $0e $e0
    ld e, $89                                     ; $4d57: $1e $89
    rst $38                                       ; $4d59: $ff
    ld [hl], l                                    ; $4d5a: $75
    ld [hl], c                                    ; $4d5b: $71
    adc c                                         ; $4d5c: $89
    db $e4                                        ; $4d5d: $e4
    ld [de], a                                    ; $4d5e: $12
    call z, $8c22                                 ; $4d5f: $cc $22 $8c
    rst $28                                       ; $4d62: $ef
    ld h, d                                       ; $4d63: $62
    ccf                                           ; $4d64: $3f
    nop                                           ; $4d65: $00
    rst $08                                       ; $4d66: $cf
    ld [hl], d                                    ; $4d67: $72
    ret nz                                        ; $4d68: $c0

    ld a, h                                       ; $4d69: $7c
    ld [bc], a                                    ; $4d6a: $02
    cp [hl]                                       ; $4d6b: $be
    rst $38                                       ; $4d6c: $ff
    add c                                         ; $4d6d: $81
    rst $18                                       ; $4d6e: $df

jr_049_4d6f:
    ret nz                                        ; $4d6f: $c0

    rst $20                                       ; $4d70: $e7
    ldh [$f8], a                                  ; $4d71: $e0 $f8
    ld hl, sp-$20                                 ; $4d73: $f8 $e0
    rst $38                                       ; $4d75: $ff
    jr jr_049_4d6f                                ; $4d76: $18 $f7

    rlca                                          ; $4d78: $07
    rst $08                                       ; $4d79: $cf
    rrca                                          ; $4d7a: $0f
    ccf                                           ; $4d7b: $3f
    ccf                                           ; $4d7c: $3f
    ld a, a                                       ; $4d7d: $7f
    call c, $e4ff                                 ; $4d7e: $dc $ff $e4
    jr nz, jr_049_4d23                            ; $4d81: $20 $a0

    ld hl, sp+$00                                 ; $4d83: $f8 $00
    or $42                                        ; $4d85: $f6 $42
    add sp, -$40                                  ; $4d87: $e8 $c0
    ret nz                                        ; $4d89: $c0

    rst $18                                       ; $4d8a: $df
    ccf                                           ; $4d8b: $3f
    nop                                           ; $4d8c: $00
    ld a, h                                       ; $4d8d: $7c
    ldh [$e0], a                                  ; $4d8e: $e0 $e0
    ld [$83a5], sp                                ; $4d90: $08 $a5 $83
    ld a, h                                       ; $4d93: $7c
    ld a, a                                       ; $4d94: $7f
    nop                                           ; $4d95: $00
    rst $38                                       ; $4d96: $ff
    ld bc, $3f11                                  ; $4d97: $01 $11 $3f
    ccf                                           ; $4d9a: $3f
    cp $f7                                        ; $4d9b: $fe $f7
    add l                                         ; $4d9d: $85
    db $db                                        ; $4d9e: $db
    rrca                                          ; $4d9f: $0f
    ccf                                           ; $4da0: $3f
    db $fc                                        ; $4da1: $fc
    add d                                         ; $4da2: $82
    rst $00                                       ; $4da3: $c7
    daa                                           ; $4da4: $27
    ld b, $ab                                     ; $4da5: $06 $ab
    cp $ff                                        ; $4da7: $fe $ff
    ld sp, hl                                     ; $4da9: $f9
    db $fd                                        ; $4daa: $fd
    ld d, d                                       ; $4dab: $52
    and b                                         ; $4dac: $a0
    push hl                                       ; $4dad: $e5
    jp $fffd                                      ; $4dae: $c3 $fd $ff


    call nc, $e0ff                                ; $4db1: $d4 $ff $e0
    ei                                            ; $4db4: $fb
    rst $38                                       ; $4db5: $ff
    ld b, b                                       ; $4db6: $40
    ld [hl], l                                    ; $4db7: $75
    add d                                         ; $4db8: $82
    ld d, b                                       ; $4db9: $50
    xor a                                         ; $4dba: $af
    ld l, b                                       ; $4dbb: $68
    sub a                                         ; $4dbc: $97
    cp l                                          ; $4dbd: $bd
    rst $30                                       ; $4dbe: $f7
    ld b, d                                       ; $4dbf: $42
    cp $01                                        ; $4dc0: $fe $01
    ld l, b                                       ; $4dc2: $68
    add e                                         ; $4dc3: $83
    cp $01                                        ; $4dc4: $fe $01
    daa                                           ; $4dc6: $27
    rst $38                                       ; $4dc7: $ff
    rst $38                                       ; $4dc8: $ff
    ld b, e                                       ; $4dc9: $43
    cp a                                          ; $4dca: $bf
    ld [bc], a                                    ; $4dcb: $02
    rst $38                                       ; $4dcc: $ff
    sub b                                         ; $4dcd: $90
    ld l, a                                       ; $4dce: $6f
    ret z                                         ; $4dcf: $c8

    scf                                           ; $4dd0: $37
    ccf                                           ; $4dd1: $3f
    ld e, h                                       ; $4dd2: $5c
    and e                                         ; $4dd3: $a3
    db $ec                                        ; $4dd4: $ec
    inc de                                        ; $4dd5: $13
    rst $30                                       ; $4dd6: $f7
    ld [$a536], sp                                ; $4dd7: $08 $36 $a5
    ld [hl-], a                                   ; $4dda: $32
    and c                                         ; $4ddb: $a1
    sbc $de                                       ; $4ddc: $de $de
    pop bc                                        ; $4dde: $c1
    push af                                       ; $4ddf: $f5
    ld a, [c]                                     ; $4de0: $f2
    di                                            ; $4de1: $f3
    db $f4                                        ; $4de2: $f4
    inc c                                         ; $4de3: $0c
    pop hl                                        ; $4de4: $e1
    ei                                            ; $4de5: $fb
    ld hl, sp-$03                                 ; $4de6: $f8 $fd
    db $fc                                        ; $4de8: $fc
    add h                                         ; $4de9: $84
    jp nz, Jump_000_0c8c                          ; $4dea: $c2 $8c $0c

    ret nz                                        ; $4ded: $c0

    inc de                                        ; $4dee: $13
    pop de                                        ; $4def: $d1
    ld b, $ff                                     ; $4df0: $06 $ff
    db $d3                                        ; $4df2: $d3
    inc b                                         ; $4df3: $04
    and [hl]                                      ; $4df4: $a6
    add hl, bc                                    ; $4df5: $09
    rst $28                                       ; $4df6: $ef
    nop                                           ; $4df7: $00
    rra                                           ; $4df8: $1f
    nop                                           ; $4df9: $00
    rst $38                                       ; $4dfa: $ff
    rst $18                                       ; $4dfb: $df
    ret nz                                        ; $4dfc: $c0

    inc c                                         ; $4dfd: $0c
    nop                                           ; $4dfe: $00
    jr nc, @-$3e                                  ; $4dff: $30 $c0

    dec de                                        ; $4e01: $1b
    ldh [rIE], a                                  ; $4e02: $e0 $ff
    ld e, e                                       ; $4e04: $5b
    and b                                         ; $4e05: $a0
    ld sp, hl                                     ; $4e06: $f9
    ld [bc], a                                    ; $4e07: $02
    ld hl, sp+$03                                 ; $4e08: $f8 $03
    ld hl, sp+$03                                 ; $4e0a: $f8 $03
    rst $28                                       ; $4e0c: $ef
    push af                                       ; $4e0d: $f5
    ld [bc], a                                    ; $4e0e: $02
    add b                                         ; $4e0f: $80
    dec c                                         ; $4e10: $0d
    ld c, b                                       ; $4e11: $48
    add c                                         ; $4e12: $81
    add b                                         ; $4e13: $80
    ld h, b                                       ; $4e14: $60
    add b                                         ; $4e15: $80
    rst $38                                       ; $4e16: $ff
    ld a, h                                       ; $4e17: $7c
    ret nz                                        ; $4e18: $c0

    ccf                                           ; $4e19: $3f
    ret nz                                        ; $4e1a: $c0

    ccf                                           ; $4e1b: $3f
    add b                                         ; $4e1c: $80
    ld a, a                                       ; $4e1d: $7f
    rrca                                          ; $4e1e: $0f
    rst $18                                       ; $4e1f: $df
    ldh a, [rNR34]                                ; $4e20: $f0 $1e
    pop hl                                        ; $4e22: $e1
    nop                                           ; $4e23: $00
    ld a, b                                       ; $4e24: $78
    inc l                                         ; $4e25: $2c
    add b                                         ; $4e26: $80
    jr nc, jr_049_4e2f                            ; $4e27: $30 $06

    rst $38                                       ; $4e29: $ff
    add b                                         ; $4e2a: $80
    nop                                           ; $4e2b: $00
    ldh a, [$3e]                                  ; $4e2c: $f0 $3e
    ret nz                                        ; $4e2e: $c0

jr_049_4e2f:
    dec e                                         ; $4e2f: $1d
    pop bc                                        ; $4e30: $c1
    inc hl                                        ; $4e31: $23
    cp c                                          ; $4e32: $b9
    inc hl                                        ; $4e33: $23
    ld a, [de]                                    ; $4e34: $1a
    pop hl                                        ; $4e35: $e1
    db $10                                        ; $4e36: $10
    pop hl                                        ; $4e37: $e1
    ccf                                           ; $4e38: $3f
    rst $38                                       ; $4e39: $ff
    rlca                                          ; $4e3a: $07
    ld d, b                                       ; $4e3b: $50
    adc b                                         ; $4e3c: $88
    ld sp, hl                                     ; $4e3d: $f9
    xor a                                         ; $4e3e: $af
    rst $38                                       ; $4e3f: $ff
    ldh a, [rIE]                                  ; $4e40: $f0 $ff
    ret nc                                        ; $4e42: $d0

    ld b, h                                       ; $4e43: $44
    db $e4                                        ; $4e44: $e4
    db $fc                                        ; $4e45: $fc
    db $f4                                        ; $4e46: $f4
    ld [c], a                                     ; $4e47: $e2
    and c                                         ; $4e48: $a1
    ei                                            ; $4e49: $fb
    cp $03                                        ; $4e4a: $fe $03
    db $10                                        ; $4e4c: $10
    ret nz                                        ; $4e4d: $c0

    db $fd                                        ; $4e4e: $fd
    rst $38                                       ; $4e4f: $ff
    ld a, b                                       ; $4e50: $78
    rst $38                                       ; $4e51: $ff
    jr nc, @+$01                                  ; $4e52: $30 $ff

    rst $38                                       ; $4e54: $ff
    jr @+$01                                      ; $4e55: $18 $ff

    ld bc, $02fe                                  ; $4e57: $01 $fe $02
    db $fd                                        ; $4e5a: $fd
    sub h                                         ; $4e5b: $94
    db $eb                                        ; $4e5c: $eb
    ld l, e                                       ; $4e5d: $6b
    sub b                                         ; $4e5e: $90
    xor a                                         ; $4e5f: $af
    ld h, b                                       ; $4e60: $60
    inc b                                         ; $4e61: $04
    xor e                                         ; $4e62: $ab
    ld h, b                                       ; $4e63: $60
    adc b                                         ; $4e64: $88
    ld [hl], a                                    ; $4e65: $77
    ld [hl-], a                                   ; $4e66: $32
    rst $38                                       ; $4e67: $ff
    call Call_049_40bf                            ; $4e68: $cd $bf $40
    ld a, a                                       ; $4e6b: $7f
    add b                                         ; $4e6c: $80
    ld [bc], a                                    ; $4e6d: $02
    db $fd                                        ; $4e6e: $fd
    dec hl                                        ; $4e6f: $2b
    ld h, a                                       ; $4e70: $67
    call nc, $8877                                ; $4e71: $d4 $77 $88
    or $e1                                        ; $4e74: $f6 $e1
    sub [hl]                                      ; $4e76: $96
    ld l, c                                       ; $4e77: $69
    db $fd                                        ; $4e78: $fd
    ld [bc], a                                    ; $4e79: $02
    ld e, $e5                                     ; $4e7a: $1e $e5
    ccf                                           ; $4e7c: $3f
    ld [c], a                                     ; $4e7d: $e2
    dec e                                         ; $4e7e: $1d
    ld [hl], c                                    ; $4e7f: $71
    adc [hl]                                      ; $4e80: $8e
    ld [$a615], a                                 ; $4e81: $ea $15 $a6
    and c                                         ; $4e84: $a1
    ld [de], a                                    ; $4e85: $12
    pop hl                                        ; $4e86: $e1
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    nop                                           ; $4e89: $00
    rra                                           ; $4e8a: $1f
    rst $38                                       ; $4e8b: $ff
    adc a                                         ; $4e8c: $8f
    ld a, a                                       ; $4e8d: $7f
    rla                                           ; $4e8e: $17
    rst $38                                       ; $4e8f: $ff
    rst $38                                       ; $4e90: $ff
    add d                                         ; $4e91: $82
    ld a, a                                       ; $4e92: $7f
    sub l                                         ; $4e93: $95
    ld l, a                                       ; $4e94: $6f
    ld d, b                                       ; $4e95: $50
    xor a                                         ; $4e96: $af
    cp d                                          ; $4e97: $ba
    ld b, l                                       ; $4e98: $45
    ei                                            ; $4e99: $fb
    push af                                       ; $4e9a: $f5
    ld a, [bc]                                    ; $4e9b: $0a
    call nz, $ff66                                ; $4e9c: $c4 $66 $ff
    xor a                                         ; $4e9f: $af
    rst $38                                       ; $4ea0: $ff
    push de                                       ; $4ea1: $d5
    ccf                                           ; $4ea2: $3f
    rst $18                                       ; $4ea3: $df
    ld a, [$df0f]                                 ; $4ea4: $fa $0f $df
    ret nz                                        ; $4ea7: $c0

    rst $00                                       ; $4ea8: $c7
    xor [hl]                                      ; $4ea9: $ae
    xor d                                         ; $4eaa: $aa
    di                                            ; $4eab: $f3
    inc b                                         ; $4eac: $04
    rst $38                                       ; $4ead: $ff
    rst $28                                       ; $4eae: $ef
    nop                                           ; $4eaf: $00
    sbc $00                                       ; $4eb0: $de $00
    scf                                           ; $4eb2: $37
    nop                                           ; $4eb3: $00
    cp a                                          ; $4eb4: $bf
    add b                                         ; $4eb5: $80
    rst $38                                       ; $4eb6: $ff
    sbc a                                         ; $4eb7: $9f
    and b                                         ; $4eb8: $a0
    ld e, a                                       ; $4eb9: $5f
    jr nz, jr_049_4efb                            ; $4eba: $20 $3f

    ld b, b                                       ; $4ebc: $40
    and b                                         ; $4ebd: $a0
    ld e, a                                       ; $4ebe: $5f
    di                                            ; $4ebf: $f3

Jump_049_4ec0:
    ld h, b                                       ; $4ec0: $60
    sbc a                                         ; $4ec1: $9f
    ld h, $e1                                     ; $4ec2: $26 $e1
    inc h                                         ; $4ec4: $24
    pop hl                                        ; $4ec5: $e1
    sub c                                         ; $4ec6: $91
    ld l, [hl]                                    ; $4ec7: $6e
    inc hl                                        ; $4ec8: $23
    call c, $a2ff                                 ; $4ec9: $dc $ff $a2
    ld e, a                                       ; $4ecc: $5f
    ld b, a                                       ; $4ecd: $47
    cp a                                          ; $4ece: $bf
    rst $00                                       ; $4ecf: $c7
    ccf                                           ; $4ed0: $3f
    adc a                                         ; $4ed1: $8f
    ld a, a                                       ; $4ed2: $7f
    rst $18                                       ; $4ed3: $df
    adc a                                         ; $4ed4: $8f
    ld a, a                                       ; $4ed5: $7f
    dec de                                        ; $4ed6: $1b
    rst $38                                       ; $4ed7: $ff
    inc de                                        ; $4ed8: $13
    ld l, a                                       ; $4ed9: $6f
    and b                                         ; $4eda: $a0
    ld b, b                                       ; $4edb: $40
    ld b, e                                       ; $4edc: $43
    cp e                                          ; $4edd: $bb
    ld a, b                                       ; $4ede: $78
    ld a, b                                       ; $4edf: $78
    inc [hl]                                      ; $4ee0: $34
    push bc                                       ; $4ee1: $c5
    ld a, a                                       ; $4ee2: $7f
    ld a, a                                       ; $4ee3: $7f
    cp a                                          ; $4ee4: $bf
    ret z                                         ; $4ee5: $c8

    add b                                         ; $4ee6: $80
    rra                                           ; $4ee7: $1f
    sbc a                                         ; $4ee8: $9f
    ld a, a                                       ; $4ee9: $7f
    inc bc                                        ; $4eea: $03
    rrca                                          ; $4eeb: $0f
    ldh [$e1], a                                  ; $4eec: $e0 $e1
    jp nz, $e8c3                                  ; $4eee: $c2 $c3 $e8

    ld h, a                                       ; $4ef1: $67
    rrca                                          ; $4ef2: $0f
    ccf                                           ; $4ef3: $3f
    ccf                                           ; $4ef4: $3f
    add c                                         ; $4ef5: $81
    add a                                         ; $4ef6: $87
    ldh a, [$f0]                                  ; $4ef7: $f0 $f0
    cp $39                                        ; $4ef9: $fe $39

jr_049_4efb:
    add $a6                                       ; $4efb: $c6 $a6
    add d                                         ; $4efd: $82
    ei                                            ; $4efe: $fb
    rst $38                                       ; $4eff: $ff
    rlca                                          ; $4f00: $07
    sbc b                                         ; $4f01: $98
    adc b                                         ; $4f02: $88
    rst $38                                       ; $4f03: $ff
    ei                                            ; $4f04: $fb
    rst $38                                       ; $4f05: $ff
    push af                                       ; $4f06: $f5
    rst $38                                       ; $4f07: $ff
    cp $10                                        ; $4f08: $fe $10
    ld h, [hl]                                    ; $4f0a: $66
    ei                                            ; $4f0b: $fb
    rst $38                                       ; $4f0c: $ff
    or h                                          ; $4f0d: $b4
    rst $38                                       ; $4f0e: $ff
    ld [$14f7], sp                                ; $4f0f: $08 $f7 $14
    ld a, [$a056]                                 ; $4f12: $fa $56 $a0
    db $fd                                        ; $4f15: $fd
    ret c                                         ; $4f16: $d8

    ret nz                                        ; $4f17: $c0

    ldh [rIE], a                                  ; $4f18: $e0 $ff
    xor c                                         ; $4f1a: $a9
    or $04                                        ; $4f1b: $f6 $04
    rst $38                                       ; $4f1d: $ff

jr_049_4f1e:
    ei                                            ; $4f1e: $fb
    ld l, e                                       ; $4f1f: $6b
    sub h                                         ; $4f20: $94
    cp a                                          ; $4f21: $bf
    ld b, b                                       ; $4f22: $40
    add b                                         ; $4f23: $80
    rst $38                                       ; $4f24: $ff
    ld [de], a                                    ; $4f25: $12
    rst $18                                       ; $4f26: $df
    db $ed                                        ; $4f27: $ed
    ld e, a                                       ; $4f28: $5f
    and b                                         ; $4f29: $a0
    cp $01                                        ; $4f2a: $fe $01
    nop                                           ; $4f2c: $00
    push hl                                       ; $4f2d: $e5
    rlca                                          ; $4f2e: $07
    ld hl, sp-$01                                 ; $4f2f: $f8 $ff
    daa                                           ; $4f31: $27
    ret c                                         ; $4f32: $d8

    ld c, e                                       ; $4f33: $4b
    or h                                          ; $4f34: $b4
    ld l, a                                       ; $4f35: $6f
    sub b                                         ; $4f36: $90
    rst $30                                       ; $4f37: $f7
    ld [$7fff], sp                                ; $4f38: $08 $ff $7f
    add b                                         ; $4f3b: $80
    rst $18                                       ; $4f3c: $df
    jr nz, @+$01                                  ; $4f3d: $20 $ff

    nop                                           ; $4f3f: $00
    ld a, [hl]                                    ; $4f40: $7e
    add c                                         ; $4f41: $81
    jr z, @-$04                                   ; $4f42: $28 $fa

    pop hl                                        ; $4f44: $e1
    ld [c], a                                     ; $4f45: $e2
    rst $00                                       ; $4f46: $c7
    sub $cd                                       ; $4f47: $d6 $cd
    ld d, l                                       ; $4f49: $55
    sbc l                                         ; $4f4a: $9d
    ldh [rHDMA5], a                               ; $4f4b: $e0 $55
    xor e                                         ; $4f4d: $ab
    ld b, b                                       ; $4f4e: $40
    db $fc                                        ; $4f4f: $fc
    pop hl                                        ; $4f50: $e1
    ld [de], a                                    ; $4f51: $12
    and h                                         ; $4f52: $a4
    ld b, c                                       ; $4f53: $41
    ld d, l                                       ; $4f54: $55
    ret nc                                        ; $4f55: $d0

    add b                                         ; $4f56: $80
    ldh a, [$e1]                                  ; $4f57: $f0 $e1
    ld e, a                                       ; $4f59: $5f
    ldh a, [$e6]                                  ; $4f5a: $f0 $e6
    ld a, [c]                                     ; $4f5c: $f2
    and e                                         ; $4f5d: $a3
    cp b                                          ; $4f5e: $b8
    and e                                         ; $4f5f: $a3
    db $f4                                        ; $4f60: $f4
    add sp, -$19                                  ; $4f61: $e8 $e7
    ld a, b                                       ; $4f63: $78
    ld b, c                                       ; $4f64: $41
    ld d, a                                       ; $4f65: $57
    ld h, h                                       ; $4f66: $64
    ld h, c                                       ; $4f67: $61
    ld b, b                                       ; $4f68: $40
    ccf                                           ; $4f69: $3f
    ld b, b                                       ; $4f6a: $40
    ld e, a                                       ; $4f6b: $5f
    rst $38                                       ; $4f6c: $ff
    jr nz, jr_049_4f1e                            ; $4f6d: $20 $af

    sub b                                         ; $4f6f: $90
    sbc [hl]                                      ; $4f70: $9e
    add b                                         ; $4f71: $80
    xor a                                         ; $4f72: $af
    add b                                         ; $4f73: $80
    ld [hl], a                                    ; $4f74: $77
    rst $38                                       ; $4f75: $ff
    nop                                           ; $4f76: $00
    ld l, b                                       ; $4f77: $68
    nop                                           ; $4f78: $00
    ld a, [de]                                    ; $4f79: $1a
    push hl                                       ; $4f7a: $e5
    inc a                                         ; $4f7b: $3c
    jp $e778                                      ; $4f7c: $c3 $78 $e7


    add a                                         ; $4f7f: $87
    ldh a, [rIF]                                  ; $4f80: $f0 $0f
    cp d                                          ; $4f82: $ba
    ld h, b                                       ; $4f83: $60
    dec b                                         ; $4f84: $05
    ld b, b                                       ; $4f85: $40
    ld [bc], a                                    ; $4f86: $02
    ld a, a                                       ; $4f87: $7f
    db $fc                                        ; $4f88: $fc
    rst $30                                       ; $4f89: $f7
    inc bc                                        ; $4f8a: $03
    cp $01                                        ; $4f8b: $fe $01
    cp $e1                                        ; $4f8d: $fe $e1
    db $fc                                        ; $4f8f: $fc
    inc bc                                        ; $4f90: $03
    ld hl, sp+$07                                 ; $4f91: $f8 $07
    rst $38                                       ; $4f93: $ff
    pop hl                                        ; $4f94: $e1
    ld e, $10                                     ; $4f95: $1e $10
    ldh [$3f], a                                  ; $4f97: $e0 $3f
    cp a                                          ; $4f99: $bf
    ccf                                           ; $4f9a: $3f
    cp a                                          ; $4f9b: $bf
    dec sp                                        ; $4f9c: $3b
    rra                                           ; $4f9d: $1f
    rst $18                                       ; $4f9e: $df
    cp $e1                                        ; $4f9f: $fe $e1
    ld e, a                                       ; $4fa1: $5f
    sbc a                                         ; $4fa2: $9f
    ccf                                           ; $4fa3: $3f
    xor d                                         ; $4fa4: $aa
    ld h, b                                       ; $4fa5: $60
    cp h                                          ; $4fa6: $bc
    pop hl                                        ; $4fa7: $e1
    cp $48                                        ; $4fa8: $fe $48
    xor d                                         ; $4faa: $aa
    cp $fd                                        ; $4fab: $fe $fd
    db $fc                                        ; $4fad: $fc
    db $fd                                        ; $4fae: $fd
    db $fc                                        ; $4faf: $fc
    ei                                            ; $4fb0: $fb
    ld hl, sp-$05                                 ; $4fb1: $f8 $fb
    ei                                            ; $4fb3: $fb
    ld hl, sp-$01                                 ; $4fb4: $f8 $ff
    db $e3                                        ; $4fb6: $e3
    jp $a33b                                      ; $4fb7: $c3 $3b $a3


    ld e, e                                       ; $4fba: $5b

jr_049_4fbb:
    pop de                                        ; $4fbb: $d1
    rst $30                                       ; $4fbc: $f7
    dec l                                         ; $4fbd: $2d
    pop af                                        ; $4fbe: $f1
    dec c                                         ; $4fbf: $0d
    cp $e1                                        ; $4fc0: $fe $e1
    add hl, bc                                    ; $4fc2: $09
    dec b                                         ; $4fc3: $05
    dec b                                         ; $4fc4: $05
    ld bc, $5850                                  ; $4fc5: $01 $50 $58
    push hl                                       ; $4fc8: $e5
    ld hl, sp+$25                                 ; $4fc9: $f8 $25
    ld b, h                                       ; $4fcb: $44
    jp hl                                         ; $4fcc: $e9


    ld b, b                                       ; $4fcd: $40
    db $e3                                        ; $4fce: $e3
    ld a, [$e230]                                 ; $4fcf: $fa $30 $e2
    ld [hl], l                                    ; $4fd2: $75
    jr nc, jr_049_4fbb                            ; $4fd3: $30 $e6

    nop                                           ; $4fd5: $00
    jr nz, jr_049_4fbb                            ; $4fd6: $20 $e3

    jr nc, jr_049_4fbb                            ; $4fd8: $30 $e1

    inc hl                                        ; $4fda: $23
    ld b, c                                       ; $4fdb: $41
    db $10                                        ; $4fdc: $10
    db $e3                                        ; $4fdd: $e3
    call c, $08e3                                 ; $4fde: $dc $e3 $08
    db $e3                                        ; $4fe1: $e3
    nop                                           ; $4fe2: $00
    pop hl                                        ; $4fe3: $e1
    db $fc                                        ; $4fe4: $fc
    rst $00                                       ; $4fe5: $c7
    ld d, b                                       ; $4fe6: $50
    ldh a, [$e7]                                  ; $4fe7: $f0 $e7
    cp b                                          ; $4fe9: $b8
    db $e3                                        ; $4fea: $e3
    and b                                         ; $4feb: $a0
    add hl, hl                                    ; $4fec: $29
    ld d, h                                       ; $4fed: $54
    and $fa                                       ; $4fee: $e6 $fa
    sbc d                                         ; $4ff0: $9a
    inc l                                         ; $4ff1: $2c
    xor a                                         ; $4ff2: $af
    adc d                                         ; $4ff3: $8a
    inc sp                                        ; $4ff4: $33
    ldh a, [$cf]                                  ; $4ff5: $f0 $cf
    jp nz, $e02e                                  ; $4ff7: $c2 $2e $e0

    cp $e1                                        ; $4ffa: $fe $e1
    or e                                          ; $4ffc: $b3
    push bc                                       ; $4ffd: $c5
    ld h, b                                       ; $4ffe: $60
    rra                                           ; $4fff: $1f
    ldh [$1f], a                                  ; $5000: $e0 $1f
    rst $28                                       ; $5002: $ef
    ret nz                                        ; $5003: $c0

    ccf                                           ; $5004: $3f
    and b                                         ; $5005: $a0
    ld e, a                                       ; $5006: $5f
    ret                                           ; $5007: $c9


    ret nz                                        ; $5008: $c0

    ld a, $a0                                     ; $5009: $3e $a0
    sbc a                                         ; $500b: $9f
    rst $28                                       ; $500c: $ef
    ret c                                         ; $500d: $d8

    rst $00                                       ; $500e: $c7
    nop                                           ; $500f: $00
    add b                                         ; $5010: $80
    rst $18                                       ; $5011: $df
    inc bc                                        ; $5012: $03
    ld b, b                                       ; $5013: $40
    cp a                                          ; $5014: $bf
    rra                                           ; $5015: $1f
    rst $38                                       ; $5016: $ff
    ld h, b                                       ; $5017: $60
    nop                                           ; $5018: $00
    add c                                         ; $5019: $81
    nop                                           ; $501a: $00
    rst $18                                       ; $501b: $df
    ld b, $08                                     ; $501c: $06 $08
    ld b, $df                                     ; $501e: $06 $df
    ld hl, sp+$06                                 ; $5020: $f8 $06
    ld hl, sp+$0e                                 ; $5022: $f8 $0e
    ldh a, [$fa]                                  ; $5024: $f0 $fa
    db $e3                                        ; $5026: $e3
    ld a, $c0                                     ; $5027: $3e $c0
    jp nc, $2110                                  ; $5029: $d2 $10 $21

    xor e                                         ; $502c: $ab
    dec de                                        ; $502d: $1b
    jr z, jr_049_50aa                             ; $502e: $28 $7a

    add e                                         ; $5030: $83
    rst $28                                       ; $5031: $ef
    ret z                                         ; $5032: $c8

    add $05                                       ; $5033: $c6 $05
    ld bc, $0311                                  ; $5035: $01 $11 $03
    adc h                                         ; $5038: $8c
    inc l                                         ; $5039: $2c
    ld h, e                                       ; $503a: $63
    pop hl                                        ; $503b: $e1
    reti                                          ; $503c: $d9


    ld bc, $d5ea                                  ; $503d: $01 $ea $d5
    inc b                                         ; $5040: $04
    call $c901                                    ; $5041: $cd $01 $c9
    ld [$b238], sp                                ; $5044: $08 $38 $b2
    ld [c], a                                     ; $5047: $e2
    cp c                                          ; $5048: $b9
    ld b, $a0                                     ; $5049: $06 $a0
    ld c, h                                       ; $504b: $4c
    rst $38                                       ; $504c: $ff
    ld d, l                                       ; $504d: $55
    push af                                       ; $504e: $f5
    and b                                         ; $504f: $a0
    ret nc                                        ; $5050: $d0

    sub h                                         ; $5051: $94
    call $d589                                    ; $5052: $cd $89 $d5
    add h                                         ; $5055: $84
    rst $08                                       ; $5056: $cf
    cp l                                          ; $5057: $bd
    and c                                         ; $5058: $a1
    ld d, a                                       ; $5059: $57
    or l                                          ; $505a: $b5
    and c                                         ; $505b: $a1
    cp b                                          ; $505c: $b8
    and h                                         ; $505d: $a4
    pop bc                                        ; $505e: $c1
    and e                                         ; $505f: $a3
    xor e                                         ; $5060: $ab
    inc bc                                        ; $5061: $03
    rst $38                                       ; $5062: $ff
    ld d, l                                       ; $5063: $55
    call nz, Call_049_48a5                        ; $5064: $c4 $a5 $48
    inc b                                         ; $5067: $04
    pop bc                                        ; $5068: $c1
    and [hl]                                      ; $5069: $a6
    ld l, [hl]                                    ; $506a: $6e
    jp hl                                         ; $506b: $e9


    inc e                                         ; $506c: $1c
    push hl                                       ; $506d: $e5
    cp c                                          ; $506e: $b9
    pop bc                                        ; $506f: $c1
    rst $38                                       ; $5070: $ff
    rst $20                                       ; $5071: $e7
    ldh [$e8], a                                  ; $5072: $e0 $e8
    ldh [$ec], a                                  ; $5074: $e0 $ec
    db $e3                                        ; $5076: $e3
    db $ec                                        ; $5077: $ec
    db $e3                                        ; $5078: $e3
    rst $38                                       ; $5079: $ff
    and $e9                                       ; $507a: $e6 $e9
    or $f9                                        ; $507c: $f6 $f9
    or $f1                                        ; $507e: $f6 $f1
    ld a, [c]                                     ; $5080: $f2
    push af                                       ; $5081: $f5
    rst $38                                       ; $5082: $ff
    add b                                         ; $5083: $80
    ld e, a                                       ; $5084: $5f
    inc bc                                        ; $5085: $03
    inc e                                         ; $5086: $1c
    rrca                                          ; $5087: $0f
    ret nc                                        ; $5088: $d0

    nop                                           ; $5089: $00
    ldh [rIE], a                                  ; $508a: $e0 $ff
    nop                                           ; $508c: $00
    rst $30                                       ; $508d: $f7
    nop                                           ; $508e: $00
    rst $30                                       ; $508f: $f7
    ld bc, $01ee                                  ; $5090: $01 $ee $01
    xor [hl]                                      ; $5093: $ae
    rst $30                                       ; $5094: $f7
    cp $00                                        ; $5095: $fe $00
    db $fd                                        ; $5097: $fd
    ld c, $e0                                     ; $5098: $0e $e0
    db $eb                                        ; $509a: $eb
    inc de                                        ; $509b: $13
    swap e                                        ; $509c: $cb $33
    ccf                                           ; $509e: $3f
    swap e                                        ; $509f: $cb $33
    rst $20                                       ; $50a1: $e7
    rla                                           ; $50a2: $17
    rst $20                                       ; $50a3: $e7
    rla                                           ; $50a4: $17
    adc b                                         ; $50a5: $88
    jp z, Jump_000_006c                           ; $50a6: $ca $6c $00

    nop                                           ; $50a9: $00

jr_049_50aa:
    jr nc, jr_049_50af                            ; $50aa: $30 $03

    ld e, [hl]                                    ; $50ac: $5e
    pop hl                                        ; $50ad: $e1
    push bc                                       ; $50ae: $c5

jr_049_50af:
    add hl, hl                                    ; $50af: $29
    ld d, [hl]                                    ; $50b0: $56
    and c                                         ; $50b1: $a1
    halt                                          ; $50b2: $76
    db $ec                                        ; $50b3: $ec
    add hl, sp                                    ; $50b4: $39
    db $e3                                        ; $50b5: $e3
    or c                                          ; $50b6: $b1
    xor c                                         ; $50b7: $a9
    dec c                                         ; $50b8: $0d
    and c                                         ; $50b9: $a1
    inc b                                         ; $50ba: $04
    ld sp, hl                                     ; $50bb: $f9
    add d                                         ; $50bc: $82
    adc e                                         ; $50bd: $8b
    jr z, jr_049_513f                             ; $50be: $28 $7f

    db $db                                        ; $50c0: $db
    db $ed                                        ; $50c1: $ed
    and b                                         ; $50c2: $a0
    and c                                         ; $50c3: $a1
    cp [hl]                                       ; $50c4: $be
    jp hl                                         ; $50c5: $e9


    ret nz                                        ; $50c6: $c0

    add c                                         ; $50c7: $81
    ld [hl], e                                    ; $50c8: $73
    xor b                                         ; $50c9: $a8
    sub c                                         ; $50ca: $91
    xor d                                         ; $50cb: $aa
    ldh a, [$e6]                                  ; $50cc: $f0 $e6
    xor e                                         ; $50ce: $ab
    add a                                         ; $50cf: $87
    ld c, l                                       ; $50d0: $4d
    xor l                                         ; $50d1: $ad
    ld a, l                                       ; $50d2: $7d
    xor c                                         ; $50d3: $a9
    or l                                          ; $50d4: $b5
    ld a, [de]                                    ; $50d5: $1a
    pop bc                                        ; $50d6: $c1
    ld a, [c]                                     ; $50d7: $f2
    ld a, a                                       ; $50d8: $7f
    push af                                       ; $50d9: $f5
    rst $20                                       ; $50da: $e7
    add sp, -$19                                  ; $50db: $e8 $e7
    add sp, -$1a                                  ; $50dd: $e8 $e6
    jp hl                                         ; $50df: $e9


    nop                                           ; $50e0: $00
    ldh [$fe], a                                  ; $50e1: $e0 $fe
    ld [bc], a                                    ; $50e3: $02
    ldh [$f0], a                                  ; $50e4: $e0 $f0
    ldh a, [$ed]                                  ; $50e6: $f0 $ed
    nop                                           ; $50e8: $00
    xor $01                                       ; $50e9: $ee $01
    db $ec                                        ; $50eb: $ec
    rst $38                                       ; $50ec: $ff
    inc bc                                        ; $50ed: $03
    ret nc                                        ; $50ee: $d0

    nop                                           ; $50ef: $00
    ret                                           ; $50f0: $c9


    rlca                                          ; $50f1: $07
    db $d3                                        ; $50f2: $d3
    rrca                                          ; $50f3: $0f
    db $d3                                        ; $50f4: $d3
    rst $38                                       ; $50f5: $ff
    rrca                                          ; $50f6: $0f
    daa                                           ; $50f7: $27
    rra                                           ; $50f8: $1f
    ld b, a                                       ; $50f9: $47
    scf                                           ; $50fa: $37
    rst $00                                       ; $50fb: $c7
    scf                                           ; $50fc: $37
    adc a                                         ; $50fd: $8f
    ld a, a                                       ; $50fe: $7f
    ld l, a                                       ; $50ff: $6f
    ld c, a                                       ; $5100: $4f
    cpl                                           ; $5101: $2f
    cpl                                           ; $5102: $2f
    adc a                                         ; $5103: $8f
    rrca                                          ; $5104: $0f
    rst $08                                       ; $5105: $cf
    cp b                                          ; $5106: $b8
    add c                                         ; $5107: $81
    nop                                           ; $5108: $00

jr_049_5109:
    ld d, a                                       ; $5109: $57
    add [hl]                                      ; $510a: $86
    sub h                                         ; $510b: $94
    and d                                         ; $510c: $a2
    inc c                                         ; $510d: $0c
    push bc                                       ; $510e: $c5
    cpl                                           ; $510f: $2f
    add l                                         ; $5110: $85
    ld d, l                                       ; $5111: $55
    inc bc                                        ; $5112: $03
    ld [$51e8], a                                 ; $5113: $ea $e8 $51
    cp c                                          ; $5116: $b9
    jp Jump_000_00e7                              ; $5117: $c3 $e7 $00


    adc d                                         ; $511a: $8a
    inc bc                                        ; $511b: $03
    ld a, [hl+]                                   ; $511c: $2a
    and c                                         ; $511d: $a1
    add l                                         ; $511e: $85
    and e                                         ; $511f: $a3
    ei                                            ; $5120: $fb
    xor l                                         ; $5121: $ad
    db $e3                                        ; $5122: $e3
    ld h, h                                       ; $5123: $64
    ld hl, $6fa2                                  ; $5124: $21 $a2 $6f
    adc b                                         ; $5127: $88
    cp h                                          ; $5128: $bc
    ld h, d                                       ; $5129: $62
    db $10                                        ; $512a: $10
    rst $00                                       ; $512b: $c7
    adc l                                         ; $512c: $8d
    sbc a                                         ; $512d: $9f
    ld l, c                                       ; $512e: $69
    adc [hl]                                      ; $512f: $8e
    push bc                                       ; $5130: $c5
    adc e                                         ; $5131: $8b
    ld h, c                                       ; $5132: $61
    nop                                           ; $5133: $00
    ld b, d                                       ; $5134: $42
    nop                                           ; $5135: $00
    adc $a1                                       ; $5136: $ce $a1
    adc e                                         ; $5138: $8b
    ld l, c                                       ; $5139: $69
    ld hl, sp+$65                                 ; $513a: $f8 $65
    rlca                                          ; $513c: $07
    dec hl                                        ; $513d: $2b
    adc c                                         ; $513e: $89

jr_049_513f:
    ld l, l                                       ; $513f: $6d
    xor d                                         ; $5140: $aa
    pop af                                        ; $5141: $f1
    or $f3                                        ; $5142: $f6 $f3
    db $f4                                        ; $5144: $f4
    di                                            ; $5145: $f3
    rst $38                                       ; $5146: $ff
    db $f4                                        ; $5147: $f4
    ld sp, hl                                     ; $5148: $f9
    ld a, [$f8f8]                                 ; $5149: $fa $f8 $f8
    ld sp, hl                                     ; $514c: $f9
    ld a, [$fffb]                                 ; $514d: $fa $fb $ff
    ld hl, sp-$0d                                 ; $5150: $f8 $f3
    ldh a, [$a0]                                  ; $5152: $f0 $a0
    db $10                                        ; $5154: $10
    rrca                                          ; $5155: $0f
    and b                                         ; $5156: $a0
    rra                                           ; $5157: $1f
    ld a, a                                       ; $5158: $7f
    add b                                         ; $5159: $80
    ld hl, $0080                                  ; $515a: $21 $80 $00
    ld e, $00                                     ; $515d: $1e $00
    cp a                                          ; $515f: $bf
    cp $e1                                        ; $5160: $fe $e1
    cp a                                          ; $5162: $bf
    rra                                           ; $5163: $1f
    ld e, a                                       ; $5164: $5f
    sbc a                                         ; $5165: $9f
    rra                                           ; $5166: $1f
    sbc a                                         ; $5167: $9f
    ld e, a                                       ; $5168: $5f
    cp $e1                                        ; $5169: $fe $e1
    rra                                           ; $516b: $1f
    ld b, a                                       ; $516c: $47
    ld e, a                                       ; $516d: $5f
    ld e, a                                       ; $516e: $5f
    rra                                           ; $516f: $1f
    sbc [hl]                                      ; $5170: $9e
    ld h, c                                       ; $5171: $61
    ld [hl], d                                    ; $5172: $72
    adc b                                         ; $5173: $88
    ld sp, hl                                     ; $5174: $f9
    adc c                                         ; $5175: $89
    cp $45                                        ; $5176: $fe $45
    res 0, d                                      ; $5178: $cb $82
    sub [hl]                                      ; $517a: $96
    ld b, b                                       ; $517b: $40
    ld a, a                                       ; $517c: $7f
    jr c, jr_049_5109                             ; $517d: $38 $8a

    push bc                                       ; $517f: $c5
    jp nz, $a516                                  ; $5180: $c2 $16 $a5

    and e                                         ; $5183: $a3
    adc b                                         ; $5184: $88
    ld a, a                                       ; $5185: $7f
    ld l, e                                       ; $5186: $6b
    xor a                                         ; $5187: $af
    ld a, [hl+]                                   ; $5188: $2a
    rst $38                                       ; $5189: $ff
    and l                                         ; $518a: $a5
    cp $59                                        ; $518b: $fe $59
    push hl                                       ; $518d: $e5
    ld d, l                                       ; $518e: $55
    ld a, [c]                                     ; $518f: $f2
    ld h, e                                       ; $5190: $63
    cp a                                          ; $5191: $bf
    cp [hl]                                       ; $5192: $be
    ld b, l                                       ; $5193: $45
    or a                                          ; $5194: $b7
    ld b, l                                       ; $5195: $45
    add d                                         ; $5196: $82
    res 0, e                                      ; $5197: $cb $83
    ld a, [$e432]                                 ; $5199: $fa $32 $e4
    ld e, e                                       ; $519c: $5b
    ld h, c                                       ; $519d: $61
    ld e, a                                       ; $519e: $5f
    add c                                         ; $519f: $81
    sbc $80                                       ; $51a0: $de $80
    add e                                         ; $51a2: $83
    ld b, d                                       ; $51a3: $42
    add b                                         ; $51a4: $80
    ld c, b                                       ; $51a5: $48
    ld a, e                                       ; $51a6: $7b
    ld b, b                                       ; $51a7: $40
    add hl, de                                    ; $51a8: $19
    add e                                         ; $51a9: $83
    sub e                                         ; $51aa: $93
    ld b, e                                       ; $51ab: $43
    xor d                                         ; $51ac: $aa
    ld a, a                                       ; $51ad: $7f
    ld b, d                                       ; $51ae: $42
    dec a                                         ; $51af: $3d
    add e                                         ; $51b0: $83
    xor a                                         ; $51b1: $af
    ld [hl], l                                    ; $51b2: $75
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    ld h, d                                       ; $51b5: $62
    pop hl                                        ; $51b6: $e1
    ld d, a                                       ; $51b7: $57
    ld h, e                                       ; $51b8: $63
    dec hl                                        ; $51b9: $2b
    adc e                                         ; $51ba: $8b
    scf                                           ; $51bb: $37
    add l                                         ; $51bc: $85
    rla                                           ; $51bd: $17
    pop bc                                        ; $51be: $c1
    call c, Call_000_2ee3                         ; $51bf: $dc $e3 $2e
    jp hl                                         ; $51c2: $e9


    rlca                                          ; $51c3: $07
    adc b                                         ; $51c4: $88
    rst $38                                       ; $51c5: $ff
    cp $fe                                        ; $51c6: $fe $fe
    db $fc                                        ; $51c8: $fc
    xor b                                         ; $51c9: $a8
    ldh a, [$f0]                                  ; $51ca: $f0 $f0
    ldh [$a0], a                                  ; $51cc: $e0 $a0
    ccf                                           ; $51ce: $3f
    ldh [$e0], a                                  ; $51cf: $e0 $e0
    ret nz                                        ; $51d1: $c0

    ret nz                                        ; $51d2: $c0

    add b                                         ; $51d3: $80
    add b                                         ; $51d4: $80
    ld e, h                                       ; $51d5: $5c
    ld bc, $e4fc                                  ; $51d6: $01 $fc $e4
    sub a                                         ; $51d9: $97
    rrca                                          ; $51da: $0f
    nop                                           ; $51db: $00
    rlca                                          ; $51dc: $07
    scf                                           ; $51dd: $37
    nop                                           ; $51de: $00
    ccf                                           ; $51df: $3f
    inc sp                                        ; $51e0: $33
    nop                                           ; $51e1: $00
    db $eb                                        ; $51e2: $eb
    ld [c], a                                     ; $51e3: $e2
    ccf                                           ; $51e4: $3f
    add hl, bc                                    ; $51e5: $09
    ccf                                           ; $51e6: $3f
    ld e, [hl]                                    ; $51e7: $5e
    ld b, c                                       ; $51e8: $41
    ld e, d                                       ; $51e9: $5a
    ld b, b                                       ; $51ea: $40
    ccf                                           ; $51eb: $3f
    inc a                                         ; $51ec: $3c
    inc hl                                        ; $51ed: $23
    and a                                         ; $51ee: $a7
    adc h                                         ; $51ef: $8c
    ld b, $69                                     ; $51f0: $06 $69
    sbc a                                         ; $51f2: $9f
    ld h, c                                       ; $51f3: $61
    db $10                                        ; $51f4: $10
    ld a, b                                       ; $51f5: $78
    jp hl                                         ; $51f6: $e9


    sub a                                         ; $51f7: $97
    ld h, l                                       ; $51f8: $65
    inc d                                         ; $51f9: $14
    ld h, c                                       ; $51fa: $61
    adc e                                         ; $51fb: $8b
    ld h, e                                       ; $51fc: $63
    ld e, a                                       ; $51fd: $5f
    ld [hl], a                                    ; $51fe: $77
    ld h, [hl]                                    ; $51ff: $66
    ld a, e                                       ; $5200: $7b
    ld h, e                                       ; $5201: $63
    jr nc, jr_049_5227                            ; $5202: $30 $23

    jp nc, $e744                                  ; $5204: $d2 $44 $e7

    push de                                       ; $5207: $d5
    ret nz                                        ; $5208: $c0

    db $ec                                        ; $5209: $ec
    ld [hl], e                                    ; $520a: $73
    ld b, l                                       ; $520b: $45
    nop                                           ; $520c: $00
    db $fc                                        ; $520d: $fc
    and $00                                       ; $520e: $e6 $00
    rst $38                                       ; $5210: $ff
    push de                                       ; $5211: $d5
    ld d, c                                       ; $5212: $51
    ldh a, [$e6]                                  ; $5213: $f0 $e6
    adc d                                         ; $5215: $8a
    ld c, b                                       ; $5216: $48
    ld [hl+], a                                   ; $5217: $22
    dec d                                         ; $5218: $15
    ldh [$e9], a                                  ; $5219: $e0 $e9
    cp $00                                        ; $521b: $fe $00
    rst $38                                       ; $521d: $ff
    rst $38                                       ; $521e: $ff
    ld d, l                                       ; $521f: $55
    cp $aa                                        ; $5220: $fe $aa
    push af                                       ; $5222: $f5
    ld bc, $a8e8                                  ; $5223: $01 $e8 $a8
    rst $18                                       ; $5226: $df

jr_049_5227:
    ret nc                                        ; $5227: $d0

    nop                                           ; $5228: $00
    and b                                         ; $5229: $a0
    and b                                         ; $522a: $a0
    ld b, b                                       ; $522b: $40
    or e                                          ; $522c: $b3
    ld b, b                                       ; $522d: $40
    ld b, b                                       ; $522e: $40
    ld b, b                                       ; $522f: $40
    db $f4                                        ; $5230: $f4
    ld [hl+], a                                   ; $5231: $22
    ld [$f4f5], a                                 ; $5232: $ea $f5 $f4
    ld bc, $e1ff                                  ; $5235: $01 $ff $e1
    nop                                           ; $5238: $00
    inc bc                                        ; $5239: $03
    ld bc, $9103                                  ; $523a: $01 $03 $91
    nop                                           ; $523d: $00
    ld e, $e2                                     ; $523e: $1e $e2
    or $63                                        ; $5240: $f6 $63
    rst $10                                       ; $5242: $d7
    ld hl, $8800                                  ; $5243: $21 $00 $88
    ld [bc], a                                    ; $5246: $02
    ld h, h                                       ; $5247: $64
    pop bc                                        ; $5248: $c1
    ld d, h                                       ; $5249: $54
    ld [hl], b                                    ; $524a: $70
    add b                                         ; $524b: $80
    db $e4                                        ; $524c: $e4
    or e                                          ; $524d: $b3
    ld b, c                                       ; $524e: $41
    db $f4                                        ; $524f: $f4
    db $e3                                        ; $5250: $e3
    ld [hl], b                                    ; $5251: $70
    db $e3                                        ; $5252: $e3
    ld d, l                                       ; $5253: $55
    rst $38                                       ; $5254: $ff
    add d                                         ; $5255: $82
    db $e4                                        ; $5256: $e4
    db $e4                                        ; $5257: $e4
    ld d, c                                       ; $5258: $51
    xor b                                         ; $5259: $a8
    ldh a, [$e4]                                  ; $525a: $f0 $e4
    ld hl, sp-$1f                                 ; $525c: $f8 $e1
    ldh [$e9], a                                  ; $525e: $e0 $e9
    ld a, [hl+]                                   ; $5260: $2a
    ld b, b                                       ; $5261: $40
    db $e4                                        ; $5262: $e4
    and d                                         ; $5263: $a2
    ret nc                                        ; $5264: $d0

    db $e4                                        ; $5265: $e4
    ld [$e530], sp                                ; $5266: $08 $30 $e5
    add sp, -$1f                                  ; $5269: $e8 $e1
    ldh a, [$e9]                                  ; $526b: $f0 $e9
    add d                                         ; $526d: $82
    ld a, b                                       ; $526e: $78
    inc b                                         ; $526f: $04
    db $10                                        ; $5270: $10
    ld [$0000], a                                 ; $5271: $ea $00 $00
    nop                                           ; $5274: $00
    ld b, c                                       ; $5275: $41
    add hl, bc                                    ; $5276: $09
    rst $38                                       ; $5277: $ff
    rst $38                                       ; $5278: $ff
    rst $38                                       ; $5279: $ff
    rst $38                                       ; $527a: $ff
    rst $38                                       ; $527b: $ff
    rst $38                                       ; $527c: $ff
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    push af                                       ; $527f: $f5
    db $f4                                        ; $5280: $f4

Jump_049_5281:
    ld c, $ff                                     ; $5281: $0e $ff
    ldh [$83], a                                  ; $5283: $e0 $83
    ld a, [bc]                                    ; $5285: $0a
    ld a, [bc]                                    ; $5286: $0a
    ld a, [$fce1]                                 ; $5287: $fa $e1 $fc
    rst $20                                       ; $528a: $e7
    ldh [$ef], a                                  ; $528b: $e0 $ef
    cp $e0                                        ; $528d: $fe $e0
    ldh [$f8], a                                  ; $528f: $e0 $f8
    ld c, $67                                     ; $5291: $0e $67
    ld a, [bc]                                    ; $5293: $0a
    dec bc                                        ; $5294: $0b
    dec bc                                        ; $5295: $0b
    sbc $e9                                       ; $5296: $de $e9
    adc d                                         ; $5298: $8a
    jp hl                                         ; $5299: $e9


    dec c                                         ; $529a: $0d
    dec c                                         ; $529b: $0d
    pop bc                                        ; $529c: $c1
    pop hl                                        ; $529d: $e1
    ld d, $e0                                     ; $529e: $16 $e0
    jp hl                                         ; $52a0: $e9


    dec c                                         ; $52a1: $0d
    dec c                                         ; $52a2: $0d
    ldh [$eb], a                                  ; $52a3: $e0 $eb
    dec c                                         ; $52a5: $0d
    ldh [$e3], a                                  ; $52a6: $e0 $e3
    db $e3                                        ; $52a8: $e3
    push hl                                       ; $52a9: $e5
    rst $28                                       ; $52aa: $ef
    ldh [$8c], a                                  ; $52ab: $e0 $8c
    ldh [$ec], a                                  ; $52ad: $e0 $ec
    rst $18                                       ; $52af: $df
    ldh [$0b], a                                  ; $52b0: $e0 $0b
    rrca                                          ; $52b2: $0f
    ld a, l                                       ; $52b3: $7d
    ld [c], a                                     ; $52b4: $e2
    ld [c], a                                     ; $52b5: $e2
    ld [c], a                                     ; $52b6: $e2
    ret nz                                        ; $52b7: $c0

    db $eb                                        ; $52b8: $eb
    ld [$ff3e], sp                                ; $52b9: $08 $3e $ff
    pop hl                                        ; $52bc: $e1
    inc c                                         ; $52bd: $0c
    rrca                                          ; $52be: $0f
    inc c                                         ; $52bf: $0c
    inc c                                         ; $52c0: $0c
    ld [$e0fd], sp                                ; $52c1: $08 $fd $e0
    rst $38                                       ; $52c4: $ff
    db $e4                                        ; $52c5: $e4
    ld c, $e0                                     ; $52c6: $0e $e0
    xor $0b                                       ; $52c8: $ee $0b
    dec bc                                        ; $52ca: $0b
    dec bc                                        ; $52cb: $0b
    jp c, $e0e1                                   ; $52cc: $da $e1 $e0

    ld hl, sp-$3c                                 ; $52cf: $f8 $c4
    and $c0                                       ; $52d1: $e6 $c0
    di                                            ; $52d3: $f3
    rla                                           ; $52d4: $17
    rrca                                          ; $52d5: $0f
    inc c                                         ; $52d6: $0c
    ld c, b                                       ; $52d7: $48
    ldh [$f9], a                                  ; $52d8: $e0 $f9
    inc c                                         ; $52da: $0c
    ret nz                                        ; $52db: $c0

    db $fc                                        ; $52dc: $fc
    ld a, a                                       ; $52dd: $7f
    ldh [$e0], a                                  ; $52de: $e0 $e0
    ei                                            ; $52e0: $fb
    nop                                           ; $52e1: $00
    ld a, [$4aeb]                                 ; $52e2: $fa $eb $4a
    rst $18                                       ; $52e5: $df
    rst $38                                       ; $52e6: $ff
    rst $38                                       ; $52e7: $ff
    rst $38                                       ; $52e8: $ff
    rst $38                                       ; $52e9: $ff
    rst $38                                       ; $52ea: $ff
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    rst $38                                       ; $52ee: $ff
    rst $38                                       ; $52ef: $ff
    rst $38                                       ; $52f0: $ff
    rst $38                                       ; $52f1: $ff
    nop                                           ; $52f2: $00
    rst $38                                       ; $52f3: $ff
    rst $38                                       ; $52f4: $ff
    rst $38                                       ; $52f5: $ff
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    rst $38                                       ; $52f8: $ff
    rst $38                                       ; $52f9: $ff
    rst $38                                       ; $52fa: $ff
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    ldh a, [$ef]                                  ; $52ff: $f0 $ef
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    dec h                                         ; $5304: $25
    nop                                           ; $5305: $00
    rst $38                                       ; $5306: $ff
    db $fc                                        ; $5307: $fc
    ld bc, $f0ff                                  ; $5308: $01 $ff $f0
    call z, $02e9                                 ; $530b: $cc $e9 $02
    rst $38                                       ; $530e: $ff
    ldh a, [$ac]                                  ; $530f: $f0 $ac
    jp hl                                         ; $5311: $e9


    ret                                           ; $5312: $c9


    inc bc                                        ; $5313: $03
    rst $38                                       ; $5314: $ff
    ldh a, [$8c]                                  ; $5315: $f0 $8c
    jp hl                                         ; $5317: $e9


    inc b                                         ; $5318: $04
    rst $38                                       ; $5319: $ff
    ldh a, [$6c]                                  ; $531a: $f0 $6c
    jp hl                                         ; $531c: $e9


    dec b                                         ; $531d: $05
    ld b, $df                                     ; $531e: $06 $df
    rlca                                          ; $5320: $07
    rlca                                          ; $5321: $07
    ld [$0709], sp                                ; $5322: $08 $09 $07
    rst $38                                       ; $5325: $ff
    add sp, $0a                                   ; $5326: $e8 $0a
    dec bc                                        ; $5328: $0b
    cp $4c                                        ; $5329: $fe $4c
    jp hl                                         ; $532b: $e9


    inc c                                         ; $532c: $0c
    dec c                                         ; $532d: $0d
    ld c, $0f                                     ; $532e: $0e $0f
    db $10                                        ; $5330: $10
    ld de, $7b12                                  ; $5331: $11 $12 $7b
    inc de                                        ; $5334: $13
    inc d                                         ; $5335: $14
    db $dd                                        ; $5336: $dd
    db $e4                                        ; $5337: $e4
    dec d                                         ; $5338: $15
    ld d, $17                                     ; $5339: $16 $17
    jr jr_049_5369                                ; $533b: $18 $2c

    jp hl                                         ; $533d: $e9


    rst $38                                       ; $533e: $ff

jr_049_533f:
    add hl, de                                    ; $533f: $19
    ld a, [de]                                    ; $5340: $1a
    dec de                                        ; $5341: $1b
    inc e                                         ; $5342: $1c
    dec e                                         ; $5343: $1d
    ld e, $1f                                     ; $5344: $1e $1f
    jr nz, jr_049_533f                            ; $5346: $20 $f7

    ld hl, $2322                                  ; $5348: $21 $22 $23
    cp e                                          ; $534b: $bb
    pop hl                                        ; $534c: $e1
    inc h                                         ; $534d: $24
    dec h                                         ; $534e: $25
    rlca                                          ; $534f: $07
    ld h, $fd                                     ; $5350: $26 $fd
    daa                                           ; $5352: $27
    inc c                                         ; $5353: $0c
    jp hl                                         ; $5354: $e9


    jr z, @+$2b                                   ; $5355: $28 $29

jr_049_5357:
    ld a, [hl+]                                   ; $5357: $2a
    dec hl                                        ; $5358: $2b
    inc l                                         ; $5359: $2c
    dec l                                         ; $535a: $2d
    rst $18                                       ; $535b: $df
    ld l, $2f                                     ; $535c: $2e $2f
    jr nc, jr_049_5391                            ; $535e: $30 $31

    ld [hl-], a                                   ; $5360: $32
    sbc e                                         ; $5361: $9b
    ldh [$33], a                                  ; $5362: $e0 $33
    inc [hl]                                      ; $5364: $34
    rst $28                                       ; $5365: $ef
    dec [hl]                                      ; $5366: $35
    ld [hl], $37                                  ; $5367: $36 $37

jr_049_5369:
    jr c, jr_049_5357                             ; $5369: $38 $ec

    ret                                           ; $536b: $c9


    add hl, sp                                    ; $536c: $39
    ld a, [hl-]                                   ; $536d: $3a
    dec sp                                        ; $536e: $3b
    cp a                                          ; $536f: $bf
    inc a                                         ; $5370: $3c
    dec a                                         ; $5371: $3d
    ld a, $3f                                     ; $5372: $3e $3f
    ld b, b                                       ; $5374: $40
    ld b, c                                       ; $5375: $41
    ld a, l                                       ; $5376: $7d
    db $e3                                        ; $5377: $e3
    ld b, d                                       ; $5378: $42
    rst $28                                       ; $5379: $ef
    ld b, e                                       ; $537a: $43
    ld b, h                                       ; $537b: $44
    ld b, l                                       ; $537c: $45
    ld b, [hl]                                    ; $537d: $46
    call z, Call_049_47c9                         ; $537e: $cc $c9 $47
    ld c, b                                       ; $5381: $48
    ld c, c                                       ; $5382: $49
    rst $38                                       ; $5383: $ff
    ld c, d                                       ; $5384: $4a
    ld c, e                                       ; $5385: $4b
    ld c, h                                       ; $5386: $4c
    ld c, l                                       ; $5387: $4d
    ld c, [hl]                                    ; $5388: $4e
    ld c, a                                       ; $5389: $4f
    ld d, b                                       ; $538a: $50
    ld d, c                                       ; $538b: $51
    rst $38                                       ; $538c: $ff
    ld d, d                                       ; $538d: $52
    ld d, e                                       ; $538e: $53
    ld d, h                                       ; $538f: $54
    ld d, l                                       ; $5390: $55

jr_049_5391:
    ld d, [hl]                                    ; $5391: $56
    ld d, a                                       ; $5392: $57
    ld e, b                                       ; $5393: $58
    ld e, c                                       ; $5394: $59
    cp $ad                                        ; $5395: $fe $ad
    jp z, Jump_049_5a5a                           ; $5397: $ca $5a $5a

    ld e, e                                       ; $539a: $5b
    ld e, h                                       ; $539b: $5c
    ld e, l                                       ; $539c: $5d
    ld e, [hl]                                    ; $539d: $5e
    ld e, a                                       ; $539e: $5f
    rst $38                                       ; $539f: $ff
    ld h, b                                       ; $53a0: $60
    ld h, c                                       ; $53a1: $61
    ld h, d                                       ; $53a2: $62
    ld h, e                                       ; $53a3: $63
    ld h, h                                       ; $53a4: $64
    ld h, l                                       ; $53a5: $65
    ld h, [hl]                                    ; $53a6: $66
    ld h, a                                       ; $53a7: $67
    rst $18                                       ; $53a8: $df
    ld l, b                                       ; $53a9: $68
    ld l, c                                       ; $53aa: $69
    ld l, d                                       ; $53ab: $6a
    ld l, d                                       ; $53ac: $6a
    ld l, e                                       ; $53ad: $6b
    adc h                                         ; $53ae: $8c
    ret                                           ; $53af: $c9


    ld l, h                                       ; $53b0: $6c
    ld l, l                                       ; $53b1: $6d
    rst $38                                       ; $53b2: $ff
    ld l, [hl]                                    ; $53b3: $6e
    ld l, a                                       ; $53b4: $6f
    ld [hl], b                                    ; $53b5: $70
    ld [hl], c                                    ; $53b6: $71
    ld [hl], d                                    ; $53b7: $72
    ld [hl], e                                    ; $53b8: $73
    ld [hl], h                                    ; $53b9: $74
    rlca                                          ; $53ba: $07
    rst $38                                       ; $53bb: $ff
    ld [hl], l                                    ; $53bc: $75
    halt                                          ; $53bd: $76
    ld [hl], a                                    ; $53be: $77
    ld a, b                                       ; $53bf: $78
    ld a, c                                       ; $53c0: $79
    ld a, d                                       ; $53c1: $7a
    ld a, e                                       ; $53c2: $7b
    ld h, l                                       ; $53c3: $65
    ei                                            ; $53c4: $fb
    ld a, h                                       ; $53c5: $7c
    ld a, l                                       ; $53c6: $7d
    ld l, h                                       ; $53c7: $6c
    ret                                           ; $53c8: $c9


    ld a, [hl]                                    ; $53c9: $7e
    ld a, a                                       ; $53ca: $7f
    add b                                         ; $53cb: $80
    add c                                         ; $53cc: $81
    add d                                         ; $53cd: $82
    rst $38                                       ; $53ce: $ff
    add e                                         ; $53cf: $83
    add h                                         ; $53d0: $84
    add l                                         ; $53d1: $85
    add [hl]                                      ; $53d2: $86
    add a                                         ; $53d3: $87
    adc b                                         ; $53d4: $88
    rlca                                          ; $53d5: $07
    adc c                                         ; $53d6: $89
    ld a, a                                       ; $53d7: $7f
    adc d                                         ; $53d8: $8a
    ld a, d                                       ; $53d9: $7a
    adc e                                         ; $53da: $8b
    adc h                                         ; $53db: $8c
    adc l                                         ; $53dc: $8d
    adc [hl]                                      ; $53dd: $8e
    adc a                                         ; $53de: $8f
    ld c, h                                       ; $53df: $4c
    ret                                           ; $53e0: $c9


    rst $38                                       ; $53e1: $ff
    sub b                                         ; $53e2: $90
    sub c                                         ; $53e3: $91
    sub b                                         ; $53e4: $90
    sub d                                         ; $53e5: $92
    rlca                                          ; $53e6: $07
    sub e                                         ; $53e7: $93
    sub h                                         ; $53e8: $94
    sub l                                         ; $53e9: $95
    rst $38                                       ; $53ea: $ff
    ld a, d                                       ; $53eb: $7a
    sub [hl]                                      ; $53ec: $96
    sub a                                         ; $53ed: $97
    sbc b                                         ; $53ee: $98
    sbc c                                         ; $53ef: $99
    sbc d                                         ; $53f0: $9a
    sbc e                                         ; $53f1: $9b
    sbc h                                         ; $53f2: $9c
    rst $28                                       ; $53f3: $ef
    sbc l                                         ; $53f4: $9d
    sbc [hl]                                      ; $53f5: $9e
    sbc a                                         ; $53f6: $9f
    and b                                         ; $53f7: $a0
    inc l                                         ; $53f8: $2c
    ret                                           ; $53f9: $c9


    and c                                         ; $53fa: $a1
    and d                                         ; $53fb: $a2
    and e                                         ; $53fc: $a3
    rst $38                                       ; $53fd: $ff
    and h                                         ; $53fe: $a4
    sub b                                         ; $53ff: $90
    and l                                         ; $5400: $a5
    and [hl]                                      ; $5401: $a6
    and a                                         ; $5402: $a7
    xor b                                         ; $5403: $a8
    xor c                                         ; $5404: $a9
    xor d                                         ; $5405: $aa
    rst $38                                       ; $5406: $ff
    xor e                                         ; $5407: $ab
    xor h                                         ; $5408: $ac
    xor l                                         ; $5409: $ad
    xor [hl]                                      ; $540a: $ae
    xor a                                         ; $540b: $af
    or b                                          ; $540c: $b0
    or c                                          ; $540d: $b1
    or d                                          ; $540e: $b2
    db $fd                                        ; $540f: $fd
    or e                                          ; $5410: $b3
    inc c                                         ; $5411: $0c
    ret                                           ; $5412: $c9


    or h                                          ; $5413: $b4
    or l                                          ; $5414: $b5
    or [hl]                                       ; $5415: $b6
    or a                                          ; $5416: $b7
    cp b                                          ; $5417: $b8
    cp c                                          ; $5418: $b9
    rst $38                                       ; $5419: $ff
    cp d                                          ; $541a: $ba
    cp e                                          ; $541b: $bb
    cp h                                          ; $541c: $bc
    cp l                                          ; $541d: $bd
    or l                                          ; $541e: $b5
    or l                                          ; $541f: $b5
    cp [hl]                                       ; $5420: $be
    cp a                                          ; $5421: $bf
    cp a                                          ; $5422: $bf
    cp [hl]                                       ; $5423: $be
    cp [hl]                                       ; $5424: $be
    or l                                          ; $5425: $b5
    ret nz                                        ; $5426: $c0

    pop bc                                        ; $5427: $c1
    jp nz, $a9ec                                  ; $5428: $c2 $ec $a9

    jp $c4ff                                      ; $542b: $c3 $ff $c4


    push bc                                       ; $542e: $c5
    add $c7                                       ; $542f: $c6 $c7
    ret z                                         ; $5431: $c8

    ret                                           ; $5432: $c9


    jp z, $ffcb                                   ; $5433: $ca $cb $ff

    call z, $c3c3                                 ; $5436: $cc $c3 $c3
    call $cec3                                    ; $5439: $cd $c3 $ce
    rst $08                                       ; $543c: $cf
    ret nc                                        ; $543d: $d0

    rlca                                          ; $543e: $07
    pop de                                        ; $543f: $d1
    jp nc, $ccd2                                  ; $5440: $d2 $d2 $cc

    cp l                                          ; $5443: $bd
    rst $38                                       ; $5444: $ff
    rst $38                                       ; $5445: $ff
    rst $38                                       ; $5446: $ff
    rst $38                                       ; $5447: $ff
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    rst $38                                       ; $544a: $ff
    rst $38                                       ; $544b: $ff
    nop                                           ; $544c: $00
    rst $38                                       ; $544d: $ff
    rst $38                                       ; $544e: $ff
    rst $38                                       ; $544f: $ff
    rst $38                                       ; $5450: $ff
    rst $38                                       ; $5451: $ff
    rst $38                                       ; $5452: $ff
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff
    rst $38                                       ; $5455: $ff
    rst $38                                       ; $5456: $ff
    rst $38                                       ; $5457: $ff
    rst $38                                       ; $5458: $ff
    rst $38                                       ; $5459: $ff
    rst $38                                       ; $545a: $ff
    rst $38                                       ; $545b: $ff
    rst $38                                       ; $545c: $ff
    nop                                           ; $545d: $00
    rst $38                                       ; $545e: $ff
    pop af                                        ; $545f: $f1
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    ld l, e                                       ; $5463: $6b
    ld d, h                                       ; $5464: $54
    xor e                                         ; $5465: $ab
    ld d, h                                       ; $5466: $54
    or c                                          ; $5467: $b1
    ld e, a                                       ; $5468: $5f
    rla                                           ; $5469: $17
    ld h, b                                       ; $546a: $60
    sbc [hl]                                      ; $546b: $9e
    ld bc, $0024                                  ; $546c: $01 $24 $00
    ld e, [hl]                                    ; $546f: $5e
    ld h, $f9                                     ; $5470: $26 $f9
    nop                                           ; $5472: $00
    ldh [$7f], a                                  ; $5473: $e0 $7f
    ldh [$7f], a                                  ; $5475: $e0 $7f
    ldh [$7f], a                                  ; $5477: $e0 $7f
    ldh [$7f], a                                  ; $5479: $e0 $7f
    sbc [hl]                                      ; $547b: $9e
    ld bc, $265e                                  ; $547c: $01 $5e $26
    ld sp, hl                                     ; $547f: $f9
    nop                                           ; $5480: $00
    adc [hl]                                      ; $5481: $8e
    nop                                           ; $5482: $00
    xor $2c                                       ; $5483: $ee $2c
    inc h                                         ; $5485: $24
    nop                                           ; $5486: $00
    ld a, $3f                                     ; $5487: $3e $3f
    sbc [hl]                                      ; $5489: $9e
    ld bc, $2cee                                  ; $548a: $01 $ee $2c
    inc h                                         ; $548d: $24
    nop                                           ; $548e: $00
    ld a, $3f                                     ; $548f: $3e $3f

jr_049_5491:
    ld sp, hl                                     ; $5491: $f9
    nop                                           ; $5492: $00
    ld e, [hl]                                    ; $5493: $5e
    ld h, $f9                                     ; $5494: $26 $f9
    nop                                           ; $5496: $00
    inc h                                         ; $5497: $24
    nop                                           ; $5498: $00
    sub c                                         ; $5499: $91
    nop                                           ; $549a: $00
    ldh [$7f], a                                  ; $549b: $e0 $7f
    ldh [$7f], a                                  ; $549d: $e0 $7f
    ldh [$7f], a                                  ; $549f: $e0 $7f
    ldh [$7f], a                                  ; $54a1: $e0 $7f
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    db $fd                                        ; $54ab: $fd
    rst $38                                       ; $54ac: $ff
    rst $38                                       ; $54ad: $ff
    xor $fe                                       ; $54ae: $ee $fe
    cp $f5                                        ; $54b0: $fe $f5
    push af                                       ; $54b2: $f5
    ld a, [$fffa]                                 ; $54b3: $fa $fa $ff
    ret nc                                        ; $54b6: $d0

    ret nc                                        ; $54b7: $d0

    and h                                         ; $54b8: $a4
    and h                                         ; $54b9: $a4
    ld c, b                                       ; $54ba: $48
    ld c, b                                       ; $54bb: $48
    and b                                         ; $54bc: $a0
    and b                                         ; $54bd: $a0
    rst $18                                       ; $54be: $df
    ld b, b                                       ; $54bf: $40
    ld b, b                                       ; $54c0: $40
    add b                                         ; $54c1: $80
    add b                                         ; $54c2: $80
    nop                                           ; $54c3: $00
    rst $38                                       ; $54c4: $ff
    add sp, $01                                   ; $54c5: $e8 $01
    ld bc, $02ff                                  ; $54c7: $01 $ff $02
    inc bc                                        ; $54ca: $03
    inc c                                         ; $54cb: $0c
    ld c, $10                                     ; $54cc: $0e $10
    jr jr_049_54f0                                ; $54ce: $18 $20

    jr nc, jr_049_5491                            ; $54d0: $30 $bf

    ld b, b                                       ; $54d2: $40
    ld h, e                                       ; $54d3: $63
    add b                                         ; $54d4: $80
    db $fc                                        ; $54d5: $fc
    jr nc, jr_049_5510                            ; $54d6: $30 $38

    ld [c], a                                     ; $54d8: $e2
    db $e4                                        ; $54d9: $e4
    ld bc, $00ff                                  ; $54da: $01 $ff $00
    rrca                                          ; $54dd: $0f
    nop                                           ; $54de: $00

jr_049_54df:
    ld a, a                                       ; $54df: $7f
    nop                                           ; $54e0: $00
    ld c, $00                                     ; $54e1: $0e $00
    jr @+$01                                      ; $54e3: $18 $ff

    nop                                           ; $54e5: $00
    inc b                                         ; $54e6: $04
    nop                                           ; $54e7: $00
    inc d                                         ; $54e8: $14
    nop                                           ; $54e9: $00
    ldh a, [rP1]                                  ; $54ea: $f0 $00
    ldh [$e7], a                                  ; $54ec: $e0 $e7
    nop                                           ; $54ee: $00
    ret nz                                        ; $54ef: $c0

jr_049_54f0:
    nop                                           ; $54f0: $00
    ret z                                         ; $54f1: $c8

    ld [$eef4], a                                 ; $54f2: $ea $f4 $ee
    inc bc                                        ; $54f5: $03
    nop                                           ; $54f6: $00
    rrca                                          ; $54f7: $0f
    cp a                                          ; $54f8: $bf
    ld bc, $031d                                  ; $54f9: $01 $1d $03
    ld [hl], e                                    ; $54fc: $73
    nop                                           ; $54fd: $00
    rra                                           ; $54fe: $1f
    cp $e0                                        ; $54ff: $fe $e0
    ccf                                           ; $5501: $3f
    rst $38                                       ; $5502: $ff
    nop                                           ; $5503: $00
    rst $38                                       ; $5504: $ff
    jr jr_049_54df                                ; $5505: $18 $d8

    ld [hl], b                                    ; $5507: $70
    ld [hl], b                                    ; $5508: $70
    ret nz                                        ; $5509: $c0

    ret nz                                        ; $550a: $c0

    ld [$e0ba], a                                 ; $550b: $ea $ba $e0
    ld hl, sp-$3e                                 ; $550e: $f8 $c2

jr_049_5510:
    ldh [$c0], a                                  ; $5510: $e0 $c0
    adc [hl]                                      ; $5512: $8e
    db $e4                                        ; $5513: $e4
    ld h, c                                       ; $5514: $61
    nop                                           ; $5515: $00
    rst $38                                       ; $5516: $ff
    call nc, $e5d4                                ; $5517: $d4 $d4 $e5
    ret c                                         ; $551a: $d8

    ldh [$7f], a                                  ; $551b: $e0 $7f
    ld a, [c]                                     ; $551d: $f2
    ldh [rIE], a                                  ; $551e: $e0 $ff
    call nc, Call_000_00e1                        ; $5520: $d4 $e1 $00
    cp $ff                                        ; $5523: $fe $ff
    ld bc, $03fd                                  ; $5525: $01 $fd $03
    ei                                            ; $5528: $fb
    inc c                                         ; $5529: $0c
    call z, Call_000_3838                         ; $552a: $cc $38 $38
    di                                            ; $552d: $f3
    ldh [$e0], a                                  ; $552e: $e0 $e0
    ld b, [hl]                                    ; $5530: $46
    db $eb                                        ; $5531: $eb
    ld b, d                                       ; $5532: $42
    pop hl                                        ; $5533: $e1
    db $fc                                        ; $5534: $fc
    db $fc                                        ; $5535: $fc
    ld hl, sp-$08                                 ; $5536: $f8 $f8
    rst $38                                       ; $5538: $ff
    ld a, [$f4fa]                                 ; $5539: $fa $fa $f4
    db $f4                                        ; $553c: $f4
    ld l, b                                       ; $553d: $68
    ld l, b                                       ; $553e: $68
    ret nc                                        ; $553f: $d0

    ret nc                                        ; $5540: $d0

    ei                                            ; $5541: $fb
    and b                                         ; $5542: $a0
    and b                                         ; $5543: $a0
    sub a                                         ; $5544: $97
    ldh [$03], a                                  ; $5545: $e0 $03
    ld b, $07                                     ; $5547: $06 $07
    jr @+$20                                      ; $5549: $18 $1e

    rst $38                                       ; $554b: $ff
    inc hl                                        ; $554c: $23
    jr c, jr_049_555b                             ; $554d: $38 $0c

    ld hl, $1f01                                  ; $554f: $21 $01 $1f
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    rst $38                                       ; $5554: $ff
    ret nz                                        ; $5555: $c0

    ldh [rP1], a                                  ; $5556: $e0 $00
    pop bc                                        ; $5558: $c1
    jr c, jr_049_555e                             ; $5559: $38 $03

jr_049_555b:
    ldh [$0e], a                                  ; $555b: $e0 $0e
    rst $38                                       ; $555d: $ff

jr_049_555e:
    nop                                           ; $555e: $00
    ld a, h                                       ; $555f: $7c
    jr nz, @-$06                                  ; $5560: $20 $f8

    ld b, b                                       ; $5562: $40
    ld [hl], b                                    ; $5563: $70
    add b                                         ; $5564: $80
    ldh [rHDMA4], a                               ; $5565: $e0 $54
    inc h                                         ; $5567: $24
    ldh [$58], a                                  ; $5568: $e0 $58
    db $eb                                        ; $556a: $eb
    ld [$e462], sp                                ; $556b: $08 $62 $e4
    rlca                                          ; $556e: $07
    adc h                                         ; $556f: $8c
    ld [c], a                                     ; $5570: $e2
    ccf                                           ; $5571: $3f
    ld h, b                                       ; $5572: $60
    ldh [$7f], a                                  ; $5573: $e0 $7f
    ld a, [hl]                                    ; $5575: $7e
    ld bc, $00fd                                  ; $5576: $01 $fd $00
    or $00                                        ; $5579: $f6 $00
    rst $30                                       ; $557b: $f7
    add d                                         ; $557c: $82

jr_049_557d:
    ld [c], a                                     ; $557d: $e2
    ld a, a                                       ; $557e: $7f
    rst $38                                       ; $557f: $ff
    inc a                                         ; $5580: $3c
    cp h                                          ; $5581: $bc
    ret nz                                        ; $5582: $c0

    jp $9f80                                      ; $5583: $c3 $80 $9f


    ld a, d                                       ; $5586: $7a
    ld [c], a                                     ; $5587: $e2
    ld a, [c]                                     ; $5588: $f2
    ld [hl], d                                    ; $5589: $72
    pop hl                                        ; $558a: $e1
    ld a, $f6                                     ; $558b: $3e $f6
    and $6a                                       ; $558d: $e6 $6a
    ldh [$7b], a                                  ; $558f: $e0 $7b
    ld a, e                                       ; $5591: $7b
    adc $ce                                       ; $5592: $ce $ce
    cp $f6                                        ; $5594: $fe $f6
    db $e3                                        ; $5596: $e3
    ld bc, $73fd                                  ; $5597: $01 $fd $73
    ld a, e                                       ; $559a: $7b
    sub $d6                                       ; $559b: $d6 $d6
    sbc h                                         ; $559d: $9c
    ld a, l                                       ; $559e: $7d
    sbc h                                         ; $559f: $9c
    ret nc                                        ; $55a0: $d0

    ret nz                                        ; $55a1: $c0

    ld sp, hl                                     ; $55a2: $f9
    rra                                           ; $55a3: $1f
    rst $18                                       ; $55a4: $df
    jr nc, jr_049_55d7                            ; $55a5: $30 $30

    ld h, $e0                                     ; $55a7: $26 $e0
    cp $bb                                        ; $55a9: $fe $bb
    call nz, $8280                                ; $55ab: $c4 $80 $82
    nop                                           ; $55ae: $00
    dec b                                         ; $55af: $05
    nop                                           ; $55b0: $00
    ld a, [bc]                                    ; $55b1: $0a
    nop                                           ; $55b2: $00
    rst $38                                       ; $55b3: $ff
    dec d                                         ; $55b4: $15
    nop                                           ; $55b5: $00
    xor d                                         ; $55b6: $aa

jr_049_55b7:
    nop                                           ; $55b7: $00
    ld d, l                                       ; $55b8: $55
    nop                                           ; $55b9: $00
    xor e                                         ; $55ba: $ab
    nop                                           ; $55bb: $00
    jp hl                                         ; $55bc: $e9


    ld e, a                                       ; $55bd: $5f
    jp nz, $b0e6                                  ; $55be: $c2 $e6 $b0

    db $e3                                        ; $55c1: $e3
    rst $20                                       ; $55c2: $e7
    ld [hl-], a                                   ; $55c3: $32
    db $ed                                        ; $55c4: $ed
    db $fd                                        ; $55c5: $fd
    db $fd                                        ; $55c6: $fd
    ld a, [$faff]                                 ; $55c7: $fa $ff $fa
    push af                                       ; $55ca: $f5
    push af                                       ; $55cb: $f5
    xor d                                         ; $55cc: $aa
    xor d                                         ; $55cd: $aa
    ld d, h                                       ; $55ce: $54
    ld d, h                                       ; $55cf: $54
    and b                                         ; $55d0: $a0
    rst $30                                       ; $55d1: $f7
    and b                                         ; $55d2: $a0
    ld d, b                                       ; $55d3: $50
    ld d, b                                       ; $55d4: $50
    jr nc, jr_049_55b7                            ; $55d5: $30 $e0

jr_049_55d7:
    ld d, b                                       ; $55d7: $50
    nop                                           ; $55d8: $00
    and b                                         ; $55d9: $a0
    nop                                           ; $55da: $00
    rst $38                                       ; $55db: $ff
    ld b, b                                       ; $55dc: $40
    inc bc                                        ; $55dd: $03
    add e                                         ; $55de: $83
    inc b                                         ; $55df: $04
    ld b, $09                                     ; $55e0: $06 $09
    inc c                                         ; $55e2: $0c
    db $10                                        ; $55e3: $10
    rst $38                                       ; $55e4: $ff
    jr jr_049_55ef                                ; $55e5: $18 $08

    rrca                                          ; $55e7: $0f
    nop                                           ; $55e8: $00

jr_049_55e9:
    nop                                           ; $55e9: $00
    jr nc, @+$3e                                  ; $55ea: $30 $3c

    ret nz                                        ; $55ec: $c0

    rst $38                                       ; $55ed: $ff
    ld [c], a                                     ; $55ee: $e2

jr_049_55ef:
    jr nz, jr_049_557d                            ; $55ef: $20 $8c

    ret nz                                        ; $55f1: $c0

    jr jr_049_55f4                                ; $55f2: $18 $00

jr_049_55f4:
    ld h, b                                       ; $55f4: $60
    nop                                           ; $55f5: $00
    rst $10                                       ; $55f6: $d7
    ret nz                                        ; $55f7: $c0

    inc bc                                        ; $55f8: $03
    inc bc                                        ; $55f9: $03
    ld h, b                                       ; $55fa: $60
    pop bc                                        ; $55fb: $c1
    ld [$c360], sp                                ; $55fc: $08 $60 $c3
    ld h, b                                       ; $55ff: $60
    add b                                         ; $5600: $80
    rla                                           ; $5601: $17
    ret nz                                        ; $5602: $c0

    ld bc, $7a80                                  ; $5603: $01 $80 $7a
    push bc                                       ; $5606: $c5
    inc bc                                        ; $5607: $03
    cp a                                          ; $5608: $bf
    jp nz, $e008                                  ; $5609: $c2 $08 $e0

    ld d, h                                       ; $560c: $54
    pop bc                                        ; $560d: $c1
    cp $24                                        ; $560e: $fe $24
    pop hl                                        ; $5610: $e1
    ld a, $00                                     ; $5611: $3e $00
    di                                            ; $5613: $f3
    nop                                           ; $5614: $00
    rst $00                                       ; $5615: $c7
    ld bc, $fe1d                                  ; $5616: $01 $1d $fe
    ld b, a                                       ; $5619: $47
    ld [c], a                                     ; $561a: $e2
    nop                                           ; $561b: $00
    ld hl, sp+$03                                 ; $561c: $f8 $03
    ldh a, [rTAC]                                 ; $561e: $f0 $07
    call nz, $ff1e                                ; $5620: $c4 $1e $ff
    ld [$116c], sp                                ; $5623: $08 $6c $11
    sbc b                                         ; $5626: $98
    ld [$30e8], sp                                ; $5627: $08 $e8 $30
    or e                                          ; $562a: $b3
    rst $38                                       ; $562b: $ff
    ldh [$e7], a                                  ; $562c: $e0 $e7
    add b                                         ; $562e: $80
    adc a                                         ; $562f: $8f
    ld bc, $023d                                  ; $5630: $01 $3d $02
    ld a, d                                       ; $5633: $7a
    rst $38                                       ; $5634: $ff
    inc c                                         ; $5635: $0c
    db $ec                                        ; $5636: $ec
    jr nc, jr_049_55e9                            ; $5637: $30 $b0

    ld a, b                                       ; $5639: $78
    inc bc                                        ; $563a: $03
    ldh [$0c], a                                  ; $563b: $e0 $0c
    rst $38                                       ; $563d: $ff
    add b                                         ; $563e: $80
    jr nc, jr_049_5641                            ; $563f: $30 $00

jr_049_5641:
    ld b, b                                       ; $5641: $40
    nop                                           ; $5642: $00
    add b                                         ; $5643: $80
    ld [bc], a                                    ; $5644: $02
    inc bc                                        ; $5645: $03
    rst $28                                       ; $5646: $ef
    inc b                                         ; $5647: $04
    ld b, $08                                     ; $5648: $06 $08
    inc c                                         ; $564a: $0c

jr_049_564b:
    db $f4                                        ; $564b: $f4
    and l                                         ; $564c: $a5
    ret nz                                        ; $564d: $c0

    ret nz                                        ; $564e: $c0

    jr nz, jr_049_55ef                            ; $564f: $20 $9e

    rst $38                                       ; $5651: $ff
    ldh [rLCDC], a                                ; $5652: $e0 $40
    ret nz                                        ; $5654: $c0

    nop                                           ; $5655: $00
    ld [bc], a                                    ; $5656: $02
    jr nc, @-$04                                  ; $5657: $30 $fa

    ld [hl+], a                                   ; $5659: $22
    and $07                                       ; $565a: $e6 $07

jr_049_565c:
    ld a, a                                       ; $565c: $7f
    rst $38                                       ; $565d: $ff
    inc a                                         ; $565e: $3c
    cp $e0                                        ; $565f: $fe $e0
    ldh a, [$83]                                  ; $5661: $f0 $83
    ret nz                                        ; $5663: $c0

    inc a                                         ; $5664: $3c
    pop bc                                        ; $5665: $c1
    rst $38                                       ; $5666: $ff
    jr nz, jr_049_565c                            ; $5667: $20 $f3

    add b                                         ; $5669: $80
    pop bc                                        ; $566a: $c1
    inc bc                                        ; $566b: $03
    rlca                                          ; $566c: $07
    inc l                                         ; $566d: $2c
    ld c, $fd                                     ; $566e: $0e $fd
    add b                                         ; $5670: $80
    sbc e                                         ; $5671: $9b
    ret nz                                        ; $5672: $c0

    inc bc                                        ; $5673: $03
    rst $38                                       ; $5674: $ff
    inc c                                         ; $5675: $0c
    cp $30                                        ; $5676: $fe $30
    db $fc                                        ; $5678: $fc
    sbc a                                         ; $5679: $9f
    jp nz, Jump_000_0ee0                          ; $567a: $c2 $e0 $0e

    add b                                         ; $567d: $80
    jr c, jr_049_564b                             ; $567e: $38 $cb

    and b                                         ; $5680: $a0
    sub l                                         ; $5681: $95
    and b                                         ; $5682: $a0
    rrca                                          ; $5683: $0f
    rst $38                                       ; $5684: $ff
    inc bc                                        ; $5685: $03
    rra                                           ; $5686: $1f
    inc e                                         ; $5687: $1c
    ld a, a                                       ; $5688: $7f
    ld h, b                                       ; $5689: $60
    ld a, b                                       ; $568a: $78
    ld bc, $fec0                                  ; $568b: $01 $c0 $fe
    dec bc                                        ; $568e: $0b
    pop bc                                        ; $568f: $c1
    ld a, $00                                     ; $5690: $3e $00
    jr nc, @+$01                                  ; $5692: $30 $ff

    nop                                           ; $5694: $00
    rst $00                                       ; $5695: $c7
    nop                                           ; $5696: $00
    ld a, a                                       ; $5697: $7f
    rrca                                          ; $5698: $0f
    ld h, b                                       ; $5699: $60
    rrca                                          ; $569a: $0f
    ret nz                                        ; $569b: $c0

    rra                                           ; $569c: $1f
    add b                                         ; $569d: $80
    ccf                                           ; $569e: $3f
    cp $a1                                        ; $569f: $fe $a1
    or $58                                        ; $56a1: $f6 $58
    xor c                                         ; $56a3: $a9
    db $fd                                        ; $56a4: $fd
    db $fd                                        ; $56a5: $fd
    ldh [$c7], a                                  ; $56a6: $e0 $c7
    ld d, l                                       ; $56a8: $55
    ld d, l                                       ; $56a9: $55
    xor d                                         ; $56aa: $aa
    xor d                                         ; $56ab: $aa
    ldh [$e0], a                                  ; $56ac: $e0 $e0
    pop bc                                        ; $56ae: $c1
    ld d, b                                       ; $56af: $50
    and c                                         ; $56b0: $a1
    ld c, h                                       ; $56b1: $4c
    xor l                                         ; $56b2: $ad
    ld b, b                                       ; $56b3: $40
    and c                                         ; $56b4: $a1
    ld b, d                                       ; $56b5: $42
    ldh [rTAC], a                                 ; $56b6: $e0 $07
    db $10                                        ; $56b8: $10
    ld e, $3f                                     ; $56b9: $1e $3f
    ld b, b                                       ; $56bb: $40
    ld a, h                                       ; $56bc: $7c
    ld [$200f], sp                                ; $56bd: $08 $0f $20
    inc a                                         ; $56c0: $3c
    ld [$a0c1], sp                                ; $56c1: $08 $c1 $a0
    pop hl                                        ; $56c4: $e1
    rst $30                                       ; $56c5: $f7
    ld b, $00                                     ; $56c6: $06 $00
    jr @+$1a                                      ; $56c8: $18 $18

    pop bc                                        ; $56ca: $c1
    ld c, $01                                     ; $56cb: $0e $01
    dec a                                         ; $56cd: $3d
    ld b, $f5                                     ; $56ce: $06 $f5
    halt                                          ; $56d0: $76
    ld [$b0e0], sp                                ; $56d1: $08 $e0 $b0
    ld e, d                                       ; $56d4: $5a
    pop bc                                        ; $56d5: $c1
    add b                                         ; $56d6: $80
    inc a                                         ; $56d7: $3c
    db $10                                        ; $56d8: $10
    ret c                                         ; $56d9: $d8

    rst $38                                       ; $56da: $ff
    ld hl, $43b0                                  ; $56db: $21 $b0 $43
    ld h, b                                       ; $56de: $60
    ld b, h                                       ; $56df: $44
    ld b, c                                       ; $56e0: $41
    jr jr_049_5729                                ; $56e1: $18 $46

    rst $38                                       ; $56e3: $ff
    nop                                           ; $56e4: $00
    jr c, jr_049_56e7                             ; $56e5: $38 $00

jr_049_56e7:
    nop                                           ; $56e7: $00
    ld b, $36                                     ; $56e8: $06 $36
    ld [$efe8], sp                                ; $56ea: $08 $e8 $ef
    db $10                                        ; $56ed: $10
    ret nc                                        ; $56ee: $d0

    ld h, b                                       ; $56ef: $60
    ld h, b                                       ; $56f0: $60
    ld a, [$1185]                                 ; $56f1: $fa $85 $11
    ld de, $e80e                                  ; $56f4: $11 $0e $e8
    cp h                                          ; $56f7: $bc
    pop bc                                        ; $56f8: $c1
    db $ed                                        ; $56f9: $ed
    add a                                         ; $56fa: $87
    ld d, h                                       ; $56fb: $54
    and d                                         ; $56fc: $a2
    inc bc                                        ; $56fd: $03
    and d                                         ; $56fe: $a2

jr_049_56ff:
    pop hl                                        ; $56ff: $e1
    inc e                                         ; $5700: $1c
    ld h, c                                       ; $5701: $61
    ld [hl], b                                    ; $5702: $70
    rst $38                                       ; $5703: $ff
    rrca                                          ; $5704: $0f
    ldh [rNR42], a                                ; $5705: $e0 $21
    jr nc, jr_049_574f                            ; $5707: $30 $46

    ld h, b                                       ; $5709: $60
    adc h                                         ; $570a: $8c
    pop bc                                        ; $570b: $c1
    rst $38                                       ; $570c: $ff
    jr @-$7c                                      ; $570d: $18 $82

    jr nc, jr_049_5715                            ; $570f: $30 $04

    ld h, b                                       ; $5711: $60
    ld [$16c0], sp                                ; $5712: $08 $c0 $16

jr_049_5715:
    ld c, e                                       ; $5715: $4b
    cp b                                          ; $5716: $b8
    ld [bc], a                                    ; $5717: $02
    ret nz                                        ; $5718: $c0

    adc b                                         ; $5719: $88
    ld bc, $c2d4                                  ; $571a: $01 $d4 $c2
    db $f4                                        ; $571d: $f4
    push hl                                       ; $571e: $e5
    ld b, $aa                                     ; $571f: $06 $aa
    add h                                         ; $5721: $84
    adc $cc                                       ; $5722: $ce $cc
    add c                                         ; $5724: $81
    ld [hl], b                                    ; $5725: $70
    nop                                           ; $5726: $00
    add c                                         ; $5727: $81
    ld [c], a                                     ; $5728: $e2

jr_049_5729:
    ld [c], a                                     ; $5729: $e2
    sub a                                         ; $572a: $97
    add c                                         ; $572b: $81
    ld a, [bc]                                    ; $572c: $0a
    nop                                           ; $572d: $00
    rst $30                                       ; $572e: $f7
    rla                                           ; $572f: $17
    nop                                           ; $5730: $00
    cp a                                          ; $5731: $bf
    ld [$dea0], sp                                ; $5732: $08 $a0 $de
    ld bc, $033d                                  ; $5735: $01 $3d $03
    rst $30                                       ; $5738: $f7
    ld [hl], e                                    ; $5739: $73
    rrca                                          ; $573a: $0f
    rst $08                                       ; $573b: $cf
    ld d, $a0                                     ; $573c: $16 $a0
    di                                            ; $573e: $f3
    rra                                           ; $573f: $1f
    rst $18                                       ; $5740: $df
    ld a, a                                       ; $5741: $7f
    db $ed                                        ; $5742: $ed
    ld a, a                                       ; $5743: $7f
    ld e, h                                       ; $5744: $5c
    adc a                                         ; $5745: $8f
    ld [$e8ea], a                                 ; $5746: $ea $ea $e8
    and c                                         ; $5749: $a1
    db $fd                                        ; $574a: $fd
    db $fd                                        ; $574b: $fd
    ld [$eac7], a                                 ; $574c: $ea $c7 $ea

jr_049_574f:
    push de                                       ; $574f: $d5
    push de                                       ; $5750: $d5
    ldh [$a3], a                                  ; $5751: $e0 $a3
    ld d, h                                       ; $5753: $54
    add e                                         ; $5754: $83
    ld e, [hl]                                    ; $5755: $5e
    add c                                         ; $5756: $81
    dec b                                         ; $5757: $05
    ld b, $ff                                     ; $5758: $06 $ff
    nop                                           ; $575a: $00
    inc b                                         ; $575b: $04
    ld h, b                                       ; $575c: $60
    ld h, e                                       ; $575d: $63
    add b                                         ; $575e: $80
    ldh a, [rP1]                                  ; $575f: $f0 $00
    and b                                         ; $5761: $a0
    cp [hl]                                       ; $5762: $be
    db $fc                                        ; $5763: $fc
    ldh [$c0], a                                  ; $5764: $e0 $c0
    nop                                           ; $5766: $00
    add e                                         ; $5767: $83
    add b                                         ; $5768: $80
    inc a                                         ; $5769: $3c
    xor h                                         ; $576a: $ac
    add l                                         ; $576b: $85
    inc c                                         ; $576c: $0c
    ld h, a                                       ; $576d: $67
    ld l, h                                       ; $576e: $6c
    ld [hl], b                                    ; $576f: $70
    ld [hl], b                                    ; $5770: $70
    ld l, $89                                     ; $5771: $2e $89
    jp nc, Jump_000_00a1                          ; $5773: $d2 $a1 $00

    ld c, $24                                     ; $5776: $0e $24
    jp Jump_000_11bf                              ; $5778: $c3 $bf $11


    jr jr_049_57a3                                ; $577b: $18 $26

    jr nc, jr_049_56ff                            ; $577d: $30 $80

    sub c                                         ; $577f: $91
    ld b, $a0                                     ; $5780: $06 $a0
    inc e                                         ; $5782: $1c
    cp a                                          ; $5783: $bf
    ld bc, $0631                                  ; $5784: $01 $31 $06
    or $1c                                        ; $5787: $f6 $1c
    db $fc                                        ; $5789: $fc
    ld c, b                                       ; $578a: $48
    and c                                         ; $578b: $a1
    inc b                                         ; $578c: $04
    ld e, a                                       ; $578d: $5f
    db $e4                                        ; $578e: $e4
    jr jr_049_5729                                ; $578f: $18 $98

    ldh [$e0], a                                  ; $5791: $e0 $e0
    ld b, h                                       ; $5793: $44
    db $e4                                        ; $5794: $e4
    ld a, [bc]                                    ; $5795: $0a
    ld c, h                                       ; $5796: $4c
    and b                                         ; $5797: $a0
    cp [hl]                                       ; $5798: $be
    ld b, h                                       ; $5799: $44
    and c                                         ; $579a: $a1

jr_049_579b:
    ld a, [hl+]                                   ; $579b: $2a
    nop                                           ; $579c: $00
    ld d, a                                       ; $579d: $57
    nop                                           ; $579e: $00
    xor a                                         ; $579f: $af
    ld b, h                                       ; $57a0: $44
    and b                                         ; $57a1: $a0
    cp a                                          ; $57a2: $bf

jr_049_57a3:
    ld d, b                                       ; $57a3: $50
    inc c                                         ; $57a4: $0c
    add b                                         ; $57a5: $80
    db $fc                                        ; $57a6: $fc
    pop hl                                        ; $57a7: $e1
    inc a                                         ; $57a8: $3c
    xor c                                         ; $57a9: $a9
    jr nz, @-$77                                  ; $57aa: $20 $87

    rlca                                          ; $57ac: $07
    inc h                                         ; $57ad: $24
    add b                                         ; $57ae: $80
    scf                                           ; $57af: $37
    ld a, [$f7e2]                                 ; $57b0: $fa $e2 $f7
    jr c, jr_049_57b6                             ; $57b3: $38 $01

    ld sp, hl                                     ; $57b5: $f9

jr_049_57b6:
    db $ec                                        ; $57b6: $ec
    ld h, b                                       ; $57b7: $60
    pop hl                                        ; $57b8: $e1
    nop                                           ; $57b9: $00
    pop bc                                        ; $57ba: $c1
    nop                                           ; $57bb: $00
    ld a, a                                       ; $57bc: $7f
    add a                                         ; $57bd: $87
    rra                                           ; $57be: $1f
    sbc a                                         ; $57bf: $9f
    ld a, c                                       ; $57c0: $79
    ld a, c                                       ; $57c1: $79
    ldh [$e4], a                                  ; $57c2: $e0 $e4
    ld b, $81                                     ; $57c4: $06 $81
    rst $08                                       ; $57c6: $cf
    rrca                                          ; $57c7: $0f
    adc a                                         ; $57c8: $8f
    rra                                           ; $57c9: $1f
    rra                                           ; $57ca: $1f
    jr z, @-$19                                   ; $57cb: $28 $e5

    jr @-$59                                      ; $57cd: $18 $a5

    ld [$0fea], a                                 ; $57cf: $ea $ea $0f
    ld d, h                                       ; $57d2: $54
    ld d, h                                       ; $57d3: $54
    xor b                                         ; $57d4: $a8
    xor b                                         ; $57d5: $a8
    jr c, jr_049_579b                             ; $57d6: $38 $c3

    add h                                         ; $57d8: $84
    ld l, a                                       ; $57d9: $6f
    bit 4, b                                      ; $57da: $cb $60
    call c, $fec3                                 ; $57dc: $dc $c3 $fe
    ld hl, sp-$20                                 ; $57df: $f8 $e0
    rrca                                          ; $57e1: $0f
    add hl, bc                                    ; $57e2: $09
    rra                                           ; $57e3: $1f
    rla                                           ; $57e4: $17
    rst $38                                       ; $57e5: $ff
    add b                                         ; $57e6: $80
    cp $ff                                        ; $57e7: $fe $ff
    ld b, [hl]                                    ; $57e9: $46
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    rra                                           ; $57ec: $1f
    db $10                                        ; $57ed: $10
    rst $38                                       ; $57ee: $ff
    adc a                                         ; $57ef: $8f
    ld hl, sp-$01                                 ; $57f0: $f8 $ff
    ld a, b                                       ; $57f2: $78
    ret nz                                        ; $57f3: $c0

    push bc                                       ; $57f4: $c5
    nop                                           ; $57f5: $00
    dec hl                                        ; $57f6: $2b
    rst $38                                       ; $57f7: $ff
    nop                                           ; $57f8: $00
    rlca                                          ; $57f9: $07
    rst $38                                       ; $57fa: $ff
    rlca                                          ; $57fb: $07
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00

Call_049_57fe:
    ldh a, [rNR10]                                ; $57fe: $f0 $10
    rst $38                                       ; $5800: $ff
    pop hl                                        ; $5801: $e1
    rlca                                          ; $5802: $07
    dec a                                         ; $5803: $3d
    ld b, $7c                                     ; $5804: $06 $7c
    ld h, b                                       ; $5806: $60
    cp $00                                        ; $5807: $fe $00
    ld a, a                                       ; $5809: $7f
    ret nz                                        ; $580a: $c0

    ldh [$80], a                                  ; $580b: $e0 $80
    ld d, d                                       ; $580d: $52
    and d                                         ; $580e: $a2
    rst $38                                       ; $580f: $ff
    ld b, b                                       ; $5810: $40
    ldh [$a0], a                                  ; $5811: $e0 $a0
    ld [hl], b                                    ; $5813: $70
    ld d, b                                       ; $5814: $50
    jr c, jr_049_583f                             ; $5815: $38 $28

    inc e                                         ; $5817: $1c
    adc a                                         ; $5818: $8f
    sub h                                         ; $5819: $94
    daa                                           ; $581a: $27
    cpl                                           ; $581b: $2f
    jr c, jr_049_5848                             ; $581c: $38 $2a

    ret nz                                        ; $581e: $c0

    db $eb                                        ; $581f: $eb
    and l                                         ; $5820: $a5
    ld [hl], b                                    ; $5821: $70
    jp nz, Jump_049_4a01                          ; $5822: $c2 $01 $4a

    inc l                                         ; $5825: $2c
    db $e4                                        ; $5826: $e4
    ld d, l                                       ; $5827: $55
    inc l                                         ; $5828: $2c
    ld [c], a                                     ; $5829: $e2
    xor e                                         ; $582a: $ab
    inc h                                         ; $582b: $24
    ld [c], a                                     ; $582c: $e2
    inc l                                         ; $582d: $2c
    rst $20                                       ; $582e: $e7
    ld [bc], a                                    ; $582f: $02
    ld e, $a0                                     ; $5830: $1e $a0
    rst $30                                       ; $5832: $f7
    inc b                                         ; $5833: $04
    nop                                           ; $5834: $00
    add hl, bc                                    ; $5835: $09
    add b                                         ; $5836: $80
    ld h, d                                       ; $5837: $62
    ld hl, sp+$03                                 ; $5838: $f8 $03
    db $e3                                        ; $583a: $e3
    nop                                           ; $583b: $00
    rst $38                                       ; $583c: $ff
    ld a, $01                                     ; $583d: $3e $01

jr_049_583f:
    add hl, sp                                    ; $583f: $39
    inc bc                                        ; $5840: $03
    ld [hl], e                                    ; $5841: $73
    rlca                                          ; $5842: $07
    rst $20                                       ; $5843: $e7
    rra                                           ; $5844: $1f
    db $fd                                        ; $5845: $fd
    sbc a                                         ; $5846: $9f
    ld l, h                                       ; $5847: $6c

jr_049_5848:
    push bc                                       ; $5848: $c5
    ei                                            ; $5849: $fb
    ei                                            ; $584a: $fb
    rst $30                                       ; $584b: $f7
    rst $30                                       ; $584c: $f7
    xor $ee                                       ; $584d: $ee $ee
    cp h                                          ; $584f: $bc
    ld a, h                                       ; $5850: $7c
    pop bc                                        ; $5851: $c1

jr_049_5852:
    db $fc                                        ; $5852: $fc
    db $e3                                        ; $5853: $e3
    ld [$d4ea], a                                 ; $5854: $ea $ea $d4
    call nc, Call_049_47c8                        ; $5857: $d4 $c8 $47
    rlca                                          ; $585a: $07
    rst $38                                       ; $585b: $ff
    dec b                                         ; $585c: $05
    rrca                                          ; $585d: $0f
    ld [$111f], sp                                ; $585e: $08 $1f $11
    ld a, $26                                     ; $5861: $3e $26
    jr c, @+$01                                   ; $5863: $38 $ff

    ld [$5070], sp                                ; $5865: $08 $70 $50
    ld [hl], e                                    ; $5868: $73
    jr nc, jr_049_5852                            ; $5869: $30 $e7

    and e                                         ; $586b: $a3
    ldh a, [$fd]                                  ; $586c: $f0 $fd

jr_049_586e:
    jr nc, jr_049_586e                            ; $586e: $30 $fe

    ld h, d                                       ; $5870: $62
    ld [bc], a                                    ; $5871: $02
    jr nc, jr_049_5875                            ; $5872: $30 $01

    ld c, b                                       ; $5874: $48

jr_049_5875:
    db $10                                        ; $5875: $10
    ld c, b                                       ; $5876: $48
    rst $00                                       ; $5877: $c7
    db $10                                        ; $5878: $10
    add sp, $20                                   ; $5879: $e8 $20
    db $10                                        ; $587b: $10
    ld h, b                                       ; $587c: $60
    or [hl]                                       ; $587d: $b6
    ld h, e                                       ; $587e: $63
    ld [hl+], a                                   ; $587f: $22
    ld h, c                                       ; $5880: $61
    ld a, a                                       ; $5881: $7f
    nop                                           ; $5882: $00
    rst $38                                       ; $5883: $ff
    ccf                                           ; $5884: $3f
    ld [hl], b                                    ; $5885: $70
    ld b, e                                       ; $5886: $43
    jr jr_049_589c                                ; $5887: $18 $13

    inc c                                         ; $5889: $0c
    ret z                                         ; $588a: $c8

    ld b, $ff                                     ; $588b: $06 $ff
    db $e4                                        ; $588d: $e4
    rlca                                          ; $588e: $07
    push af                                       ; $588f: $f5
    inc bc                                        ; $5890: $03
    ld a, [$fc01]                                 ; $5891: $fa $01 $fc
    ld bc, $fff7                                  ; $5894: $01 $f7 $ff
    ld c, $ca                                     ; $5897: $0e $ca
    db $f4                                        ; $5899: $f4
    ldh [$d5], a                                  ; $589a: $e0 $d5

jr_049_589c:
    inc bc                                        ; $589c: $03
    ld h, d                                       ; $589d: $62
    rlca                                          ; $589e: $07
    ld a, a                                       ; $589f: $7f
    ld [hl], $83                                  ; $58a0: $36 $83
    sbc e                                         ; $58a2: $9b
    rst $38                                       ; $58a3: $ff
    ld [$5cc0], sp                                ; $58a4: $08 $c0 $5c
    ld c, b                                       ; $58a7: $48
    push hl                                       ; $58a8: $e5
    rst $38                                       ; $58a9: $ff
    add b                                         ; $58aa: $80
    adc d                                         ; $58ab: $8a
    add b                                         ; $58ac: $80
    dec d                                         ; $58ad: $15
    ret nz                                        ; $58ae: $c0

    ld l, d                                       ; $58af: $6a
    ret nz                                        ; $58b0: $c0

    ld d, l                                       ; $58b1: $55
    ld hl, sp+$48                                 ; $58b2: $f8 $48
    ld [c], a                                     ; $58b4: $e2
    ld c, h                                       ; $58b5: $4c
    jp hl                                         ; $58b6: $e9


    ld [hl], b                                    ; $58b7: $70
    add $01                                       ; $58b8: $c6 $01
    cp $03                                        ; $58ba: $fe $03
    db $fc                                        ; $58bc: $fc
    ld b, $f9                                     ; $58bd: $06 $f9
    ld sp, hl                                     ; $58bf: $f9
    ld c, d                                       ; $58c0: $4a
    ld h, e                                       ; $58c1: $63
    or $e0                                        ; $58c2: $f6 $e0
    ld hl, sp-$04                                 ; $58c4: $f8 $fc
    ld bc, $c318                                  ; $58c6: $01 $18 $c3
    cp $54                                        ; $58c9: $fe $54
    ld h, l                                       ; $58cb: $65
    ldh a, [rIF]                                  ; $58cc: $f0 $0f
    ld e, $d1                                     ; $58ce: $1e $d1
    add hl, sp                                    ; $58d0: $39
    and b                                         ; $58d1: $a0
    add hl, sp                                    ; $58d2: $39
    ld a, a                                       ; $58d3: $7f
    ld [$4e7f], sp                                ; $58d4: $08 $7f $4e
    rrca                                          ; $58d7: $0f
    rrca                                          ; $58d8: $0f
    ccf                                           ; $58d9: $3f
    ccf                                           ; $58da: $3f
    db $fc                                        ; $58db: $fc
    ld hl, $b8e6                                  ; $58dc: $21 $e6 $b8
    and e                                         ; $58df: $a3
    ld [$90ea], a                                 ; $58e0: $ea $ea $90
    ld h, c                                       ; $58e3: $61
    or b                                          ; $58e4: $b0
    and c                                         ; $58e5: $a1
    dec d                                         ; $58e6: $15
    dec d                                         ; $58e7: $15
    ld a, [hl+]                                   ; $58e8: $2a
    pop af                                        ; $58e9: $f1
    ld a, [hl+]                                   ; $58ea: $2a
    ld a, h                                       ; $58eb: $7c
    pop bc                                        ; $58ec: $c1
    adc b                                         ; $58ed: $88
    ld h, [hl]                                    ; $58ee: $66
    ei                                            ; $58ef: $fb
    ld [hl+], a                                   ; $58f0: $22
    jr nz, jr_049_58f3                            ; $58f1: $20 $00

jr_049_58f3:
    rst $20                                       ; $58f3: $e7
    ld h, e                                       ; $58f4: $63
    rst $38                                       ; $58f5: $ff
    rst $30                                       ; $58f6: $f7
    ld [hl], e                                    ; $58f7: $73
    ei                                            ; $58f8: $fb
    ld a, c                                       ; $58f9: $79
    rst $30                                       ; $58fa: $f7
    ld [hl], l                                    ; $58fb: $75
    ei                                            ; $58fc: $fb
    ld a, d                                       ; $58fd: $7a
    rst $38                                       ; $58fe: $ff
    push af                                       ; $58ff: $f5
    ld [hl], h                                    ; $5900: $74
    ei                                            ; $5901: $fb
    ld a, d                                       ; $5902: $7a
    cp $b8                                        ; $5903: $fe $b8
    ld h, h                                       ; $5905: $64
    ld [$24ff], sp                                ; $5906: $08 $ff $24
    nop                                           ; $5909: $00
    jp nz, $ffc0                                  ; $590a: $c2 $c0 $ff

    cp h                                          ; $590d: $bc
    cp $c0                                        ; $590e: $fe $c0
    rst $38                                       ; $5910: $ff
    ldh a, [$87]                                  ; $5911: $f0 $87
    add e                                         ; $5913: $83
    ld a, [hl-]                                   ; $5914: $3a
    rra                                           ; $5915: $1f
    pop de                                        ; $5916: $d1
    nop                                           ; $5917: $00
    ld e, a                                       ; $5918: $5f
    rst $38                                       ; $5919: $ff
    inc bc                                        ; $591a: $03
    jr z, jr_049_595b                             ; $591b: $28 $3e

    inc hl                                        ; $591d: $23
    ldh a, [rNR21]                                ; $591e: $f0 $16
    inc bc                                        ; $5920: $03
    ld a, [c]                                     ; $5921: $f2
    rst $38                                       ; $5922: $ff
    ld a, a                                       ; $5923: $7f
    ld b, b                                       ; $5924: $40
    rst $38                                       ; $5925: $ff
    dec a                                         ; $5926: $3d
    rst $38                                       ; $5927: $ff
    ei                                            ; $5928: $fb
    ccf                                           ; $5929: $3f
    add b                                         ; $592a: $80
    rst $38                                       ; $592b: $ff
    ldh [$3e], a                                  ; $592c: $e0 $3e
    nop                                           ; $592e: $00
    ret nz                                        ; $592f: $c0

    ccf                                           ; $5930: $3f
    jr nz, @+$01                                  ; $5931: $20 $ff

    dec e                                         ; $5933: $1d
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    ld c, $f9                                     ; $5936: $0e $f9
    ld sp, hl                                     ; $5938: $f9
    ldh [$e0], a                                  ; $5939: $e0 $e0
    ldh [rNR52], a                                ; $593b: $e0 $26
    rst $38                                       ; $593d: $ff
    ldh a, [$90]                                  ; $593e: $f0 $90
    ld a, a                                       ; $5940: $7f
    ld b, c                                       ; $5941: $41
    ld hl, sp+$19                                 ; $5942: $f8 $19
    ret nz                                        ; $5944: $c0

    add $ff                                       ; $5945: $c6 $ff
    nop                                           ; $5947: $00
    inc bc                                        ; $5948: $03
    pop bc                                        ; $5949: $c1
    ld b, b                                       ; $594a: $40
    rst $30                                       ; $594b: $f7
    sub l                                         ; $594c: $95
    ld b, b                                       ; $594d: $40
    dec bc                                        ; $594e: $0b
    rst $38                                       ; $594f: $ff
    ldh [$b7], a                                  ; $5950: $e0 $b7
    ldh a, [$1f]                                  ; $5952: $f0 $1f
    inc e                                         ; $5954: $1c
    add a                                         ; $5955: $87
    rrca                                          ; $5956: $0f
    add sp, -$41                                  ; $5957: $e8 $bf
    ld b, $75                                     ; $5959: $06 $75

jr_049_595b:
    jp nz, Jump_000_2239                          ; $595b: $c2 $39 $22

    add b                                         ; $595e: $80
    ld d, d                                       ; $595f: $52
    ld [c], a                                     ; $5960: $e2
    cp $ff                                        ; $5961: $fe $ff
    or $1c                                        ; $5963: $f6 $1c
    ld e, $c1                                     ; $5965: $1e $c1
    ld [hl], $8b                                  ; $5967: $36 $8b
    inc h                                         ; $5969: $24
    sub c                                         ; $596a: $91
    rst $38                                       ; $596b: $ff
    inc h                                         ; $596c: $24
    sub c                                         ; $596d: $91
    ld c, $f9                                     ; $596e: $0e $f9
    db $fc                                        ; $5970: $fc
    nop                                           ; $5971: $00
    inc c                                         ; $5972: $0c
    ld b, b                                       ; $5973: $40
    rst $38                                       ; $5974: $ff
    dec e                                         ; $5975: $1d
    pop de                                        ; $5976: $d1
    ccf                                           ; $5977: $3f
    and c                                         ; $5978: $a1
    ld a, a                                       ; $5979: $7f
    ld c, b                                       ; $597a: $48
    ld a, h                                       ; $597b: $7c
    ld c, b                                       ; $597c: $48
    rst $38                                       ; $597d: $ff
    inc a                                         ; $597e: $3c
    jr nz, jr_049_5981                            ; $597f: $20 $00

jr_049_5981:
    ld sp, $0000                                  ; $5981: $31 $00 $00
    db $fc                                        ; $5984: $fc
    ret nz                                        ; $5985: $c0

    rst $38                                       ; $5986: $ff
    db $e3                                        ; $5987: $e3
    xor c                                         ; $5988: $a9
    jp $877a                                      ; $5989: $c3 $7a $87


    and h                                         ; $598c: $a4
    rra                                           ; $598d: $1f
    db $10                                        ; $598e: $10
    rst $38                                       ; $598f: $ff
    ld a, $20                                     ; $5990: $3e $20
    ld a, a                                       ; $5992: $7f
    ld c, b                                       ; $5993: $48
    ccf                                           ; $5994: $3f
    jr nz, jr_049_59b6                            ; $5995: $20 $1f

    ld d, $ff                                     ; $5997: $16 $ff
    call $e9c4                                    ; $5999: $cd $c4 $e9
    ldh [$f9], a                                  ; $599c: $e0 $f9
    ldh [$f9], a                                  ; $599e: $e0 $f9
    ld [$f1cf], sp                                ; $59a0: $08 $cf $f1
    ldh a, [$d5]                                  ; $59a3: $f0 $d5
    push de                                       ; $59a5: $d5
    ret nz                                        ; $59a6: $c0

    and l                                         ; $59a7: $a5
    ld c, b                                       ; $59a8: $48
    inc hl                                        ; $59a9: $23
    jr jr_049_59ac                                ; $59aa: $18 $00

jr_049_59ac:
    rst $38                                       ; $59ac: $ff
    inc d                                         ; $59ad: $14
    ld [$0412], sp                                ; $59ae: $08 $12 $04
    ld a, [de]                                    ; $59b1: $1a
    ld [$1834], sp                                ; $59b2: $08 $34 $18
    rst $18                                       ; $59b5: $df

jr_049_59b6:
    jr c, jr_049_59c8                             ; $59b6: $38 $10

    jr nc, jr_049_59ba                            ; $59b8: $30 $00

jr_049_59ba:
    db $10                                        ; $59ba: $10
    inc a                                         ; $59bb: $3c
    inc h                                         ; $59bc: $24
    inc bc                                        ; $59bd: $03
    ld [bc], a                                    ; $59be: $02
    rst $38                                       ; $59bf: $ff
    ld b, $04                                     ; $59c0: $06 $04
    dec c                                         ; $59c2: $0d
    add hl, bc                                    ; $59c3: $09
    dec de                                        ; $59c4: $1b
    ld [de], a                                    ; $59c5: $12
    scf                                           ; $59c6: $37
    dec h                                         ; $59c7: $25

jr_049_59c8:
    rst $38                                       ; $59c8: $ff
    ld sp, hl                                     ; $59c9: $f9
    and c                                         ; $59ca: $a1
    rst $20                                       ; $59cb: $e7
    add h                                         ; $59cc: $84
    sbc a                                         ; $59cd: $9f
    inc de                                        ; $59ce: $13
    ccf                                           ; $59cf: $3f
    ld l, $ff                                     ; $59d0: $2e $ff
    rst $38                                       ; $59d2: $ff
    sbc l                                         ; $59d3: $9d
    rst $38                                       ; $59d4: $ff
    ld a, e                                       ; $59d5: $7b
    rst $38                                       ; $59d6: $ff
    di                                            ; $59d7: $f3
    rst $38                                       ; $59d8: $ff
    call Call_049_57fe                            ; $59d9: $cd $fe $57
    ld h, b                                       ; $59dc: $60
    rst $18                                       ; $59dd: $df
    rst $38                                       ; $59de: $ff
    ccf                                           ; $59df: $3f
    rst $38                                       ; $59e0: $ff
    sbc a                                         ; $59e1: $9f
    rst $38                                       ; $59e2: $ff
    ld a, a                                       ; $59e3: $7f
    rst $38                                       ; $59e4: $ff
    rst $38                                       ; $59e5: $ff
    ld h, e                                       ; $59e6: $63
    rst $38                                       ; $59e7: $ff
    pop bc                                        ; $59e8: $c1
    db $ed                                        ; $59e9: $ed
    sub d                                         ; $59ea: $92
    rst $38                                       ; $59eb: $ff
    cp $ff                                        ; $59ec: $fe $ff
    rst $38                                       ; $59ee: $ff
    db $fc                                        ; $59ef: $fc
    ld a, [$e2f9]                                 ; $59f0: $fa $f9 $e2
    pop hl                                        ; $59f3: $e1
    add e                                         ; $59f4: $83
    add b                                         ; $59f5: $80
    db $fd                                        ; $59f6: $fd
    add c                                         ; $59f7: $81
    cp $e0                                        ; $59f8: $fe $e0
    ret nz                                        ; $59fa: $c0

    ret nz                                        ; $59fb: $c0

    rst $38                                       ; $59fc: $ff
    rrca                                          ; $59fd: $0f
    rst $28                                       ; $59fe: $ef
    inc de                                        ; $59ff: $13
    rst $38                                       ; $5a00: $ff
    ld d, a                                       ; $5a01: $57
    adc c                                         ; $5a02: $89
    ld d, e                                       ; $5a03: $53
    adc h                                         ; $5a04: $8c
    db $eb                                        ; $5a05: $eb
    inc b                                         ; $5a06: $04
    jp hl                                         ; $5a07: $e9


    ld b, $ff                                     ; $5a08: $06 $ff
    adc c                                         ; $5a0a: $89
    ld b, $f1                                     ; $5a0b: $06 $f1
    rrca                                          ; $5a0d: $0f
    ld [hl], $23                                  ; $5a0e: $36 $23
    inc e                                         ; $5a10: $1c
    db $10                                        ; $5a11: $10
    rst $38                                       ; $5a12: $ff
    ld c, l                                       ; $5a13: $4d
    ld [$0687], sp                                ; $5a14: $08 $87 $06
    inc bc                                        ; $5a17: $03
    nop                                           ; $5a18: $00
    jp $ff11                                      ; $5a19: $c3 $11 $ff


    inc bc                                        ; $5a1c: $03
    ld sp, $7303                                  ; $5a1d: $31 $03 $73
    inc hl                                        ; $5a20: $23
    ld b, c                                       ; $5a21: $41
    di                                            ; $5a22: $f3
    ld h, c                                       ; $5a23: $61
    rst $38                                       ; $5a24: $ff
    di                                            ; $5a25: $f3
    pop hl                                        ; $5a26: $e1
    di                                            ; $5a27: $f3
    ld [c], a                                     ; $5a28: $e2
    pop af                                        ; $5a29: $f1
    ld h, b                                       ; $5a2a: $60
    pop af                                        ; $5a2b: $f1
    pop hl                                        ; $5a2c: $e1
    rst $38                                       ; $5a2d: $ff
    ldh a, [$e0]                                  ; $5a2e: $f0 $e0
    ldh [$c0], a                                  ; $5a30: $e0 $c0
    inc h                                         ; $5a32: $24
    inc b                                         ; $5a33: $04
    jr nz, @+$22                                  ; $5a34: $20 $20

    cp l                                          ; $5a36: $bd
    add b                                         ; $5a37: $80
    ret z                                         ; $5a38: $c8

    ldh [$c0], a                                  ; $5a39: $e0 $c0
    ret nz                                        ; $5a3b: $c0

    ldh [$60], a                                  ; $5a3c: $e0 $60
    cp $e1                                        ; $5a3e: $fe $e1
    ld e, $ff                                     ; $5a40: $1e $ff
    db $10                                        ; $5a42: $10
    ld e, $10                                     ; $5a43: $1e $10
    rrca                                          ; $5a45: $0f
    ld a, [bc]                                    ; $5a46: $0a
    dec c                                         ; $5a47: $0d
    dec bc                                        ; $5a48: $0b
    inc c                                         ; $5a49: $0c

jr_049_5a4a:
    rst $38                                       ; $5a4a: $ff
    dec bc                                        ; $5a4b: $0b
    inc c                                         ; $5a4c: $0c
    rlca                                          ; $5a4d: $07
    jr jr_049_5a63                                ; $5a4e: $18 $13

    jr jr_049_5a69                                ; $5a50: $18 $17

    ld c, $ff                                     ; $5a52: $0e $ff
    ld [$7273], sp                                ; $5a54: $08 $73 $72
    db $fc                                        ; $5a57: $fc
    db $fc                                        ; $5a58: $fc
    rst $38                                       ; $5a59: $ff

Jump_049_5a5a:
    ccf                                           ; $5a5a: $3f
    ld a, h                                       ; $5a5b: $7c
    rst $38                                       ; $5a5c: $ff
    call z, $e31f                                 ; $5a5d: $cc $1f $e3
    jr jr_049_5a4a                                ; $5a60: $18 $e8

    rra                                           ; $5a62: $1f

jr_049_5a63:
    add sp, $73                                   ; $5a63: $e8 $73
    rst $38                                       ; $5a65: $ff
    ld [hl], d                                    ; $5a66: $72
    ld h, e                                       ; $5a67: $63
    ld h, c                                       ; $5a68: $61

jr_049_5a69:
    ld b, [hl]                                    ; $5a69: $46
    ld b, l                                       ; $5a6a: $45
    ld e, $11                                     ; $5a6b: $1e $11

jr_049_5a6d:
    ld c, $7f                                     ; $5a6d: $0e $7f
    add hl, bc                                    ; $5a6f: $09
    rlca                                          ; $5a70: $07
    ld b, $ff                                     ; $5a71: $06 $ff
    add [hl]                                      ; $5a73: $86
    cp $79                                        ; $5a74: $fe $79
    ld [hl], c                                    ; $5a76: $71
    inc hl                                        ; $5a77: $23
    cp $7e                                        ; $5a78: $fe $7e
    rlca                                          ; $5a7a: $07
    cpl                                           ; $5a7b: $2f
    dec bc                                        ; $5a7c: $0b
    ld a, a                                       ; $5a7d: $7f
    ld d, [hl]                                    ; $5a7e: $56
    ld a, a                                       ; $5a7f: $7f
    add hl, hl                                    ; $5a80: $29
    ld a, h                                       ; $5a81: $7c
    db $fd                                        ; $5a82: $fd
    ld b, h                                       ; $5a83: $44
    ld l, h                                       ; $5a84: $6c
    dec b                                         ; $5a85: $05
    rst $38                                       ; $5a86: $ff
    dec [hl]                                      ; $5a87: $35
    adc a                                         ; $5a88: $8f
    add [hl]                                      ; $5a89: $86
    rrca                                          ; $5a8a: $0f
    ld a, [bc]                                    ; $5a8b: $0a
    ei                                            ; $5a8c: $fb
    rlca                                          ; $5a8d: $07
    ld [bc], a                                    ; $5a8e: $02
    cp $e0                                        ; $5a8f: $fe $e0
    inc b                                         ; $5a91: $04
    inc bc                                        ; $5a92: $03
    inc d                                         ; $5a93: $14
    inc bc                                        ; $5a94: $03
    add hl, hl                                    ; $5a95: $29
    rst $38                                       ; $5a96: $ff
    db $ed                                        ; $5a97: $ed
    sub d                                         ; $5a98: $92
    ld a, [$fa81]                                 ; $5a99: $fa $81 $fa
    ld bc, $41f2                                  ; $5a9c: $01 $f2 $41
    rst $38                                       ; $5a9f: $ff
    db $fc                                        ; $5aa0: $fc
    add e                                         ; $5aa1: $83
    di                                            ; $5aa2: $f3
    xor h                                         ; $5aa3: $ac
    rst $38                                       ; $5aa4: $ff
    db $d3                                        ; $5aa5: $d3
    rst $38                                       ; $5aa6: $ff
    ld e, a                                       ; $5aa7: $5f
    cp $86                                        ; $5aa8: $fe $86
    ldh [rLCDC], a                                ; $5aaa: $e0 $40
    ldh [$60], a                                  ; $5aac: $e0 $60
    ld h, b                                       ; $5aae: $60
    ret c                                         ; $5aaf: $d8

    ldh [$78], a                                  ; $5ab0: $e0 $78
    rst $38                                       ; $5ab2: $ff
    ld [hl], b                                    ; $5ab3: $70
    ld e, h                                       ; $5ab4: $5c
    ld a, b                                       ; $5ab5: $78
    ld l, b                                       ; $5ab6: $68
    ld hl, sp-$08                                 ; $5ab7: $f8 $f8
    add a                                         ; $5ab9: $87
    ld sp, hl                                     ; $5aba: $f9
    ei                                            ; $5abb: $fb
    rst $38                                       ; $5abc: $ff
    add a                                         ; $5abd: $87
    or l                                          ; $5abe: $b5
    ld h, [hl]                                    ; $5abf: $66
    cp a                                          ; $5ac0: $bf
    rst $38                                       ; $5ac1: $ff
    ld a, a                                       ; $5ac2: $7f
    inc bc                                        ; $5ac3: $03
    ld [hl], e                                    ; $5ac4: $73
    cp $05                                        ; $5ac5: $fe $05
    ld b, b                                       ; $5ac7: $40
    push af                                       ; $5ac8: $f5
    rlca                                          ; $5ac9: $07
    push hl                                       ; $5aca: $e5
    rlca                                          ; $5acb: $07
    db $e3                                        ; $5acc: $e3
    rrca                                          ; $5acd: $0f
    set 3, a                                      ; $5ace: $cb $df
    rrca                                          ; $5ad0: $0f
    rr a                                          ; $5ad1: $cb $1f
    sub a                                         ; $5ad3: $97
    ret nz                                        ; $5ad4: $c0

    ld h, $40                                     ; $5ad5: $26 $40
    pop af                                        ; $5ad7: $f1
    pop af                                        ; $5ad8: $f1
    cp $99                                        ; $5ad9: $fe $99
    ld h, l                                       ; $5adb: $65
    rst $38                                       ; $5adc: $ff
    cp $e0                                        ; $5add: $fe $e0
    and b                                         ; $5adf: $a0
    ret nz                                        ; $5ae0: $c0

    adc b                                         ; $5ae1: $88
    ret nz                                        ; $5ae2: $c0

    rst $38                                       ; $5ae3: $ff
    sbc h                                         ; $5ae4: $9c
    ret nz                                        ; $5ae5: $c0

    ld e, h                                       ; $5ae6: $5c
    add b                                         ; $5ae7: $80
    inc a                                         ; $5ae8: $3c
    add b                                         ; $5ae9: $80
    jr c, jr_049_5a6d                             ; $5aea: $38 $81

    rst $38                                       ; $5aec: $ff
    cp c                                          ; $5aed: $b9
    ld bc, $3879                                  ; $5aee: $01 $79 $38
    cpl                                           ; $5af1: $2f
    jr nc, @+$19                                  ; $5af2: $30 $17

    ld h, b                                       ; $5af4: $60
    rst $38                                       ; $5af5: $ff
    ld c, a                                       ; $5af6: $4f
    ld h, b                                       ; $5af7: $60
    ccf                                           ; $5af8: $3f
    ret nz                                        ; $5af9: $c0

    sbc a                                         ; $5afa: $9f
    ret nz                                        ; $5afb: $c0

    ld a, a                                       ; $5afc: $7f
    add b                                         ; $5afd: $80
    ld a, a                                       ; $5afe: $7f
    ccf                                           ; $5aff: $3f
    add b                                         ; $5b00: $80
    ld a, a                                       ; $5b01: $7f
    dec de                                        ; $5b02: $1b
    db $e3                                        ; $5b03: $e3
    dec bc                                        ; $5b04: $0b
    di                                            ; $5b05: $f3
    cp $e9                                        ; $5b06: $fe $e9
    ccf                                           ; $5b08: $3f
    call z, $cccb                                 ; $5b09: $cc $cb $cc
    set 0, h                                      ; $5b0c: $cb $c4
    jp $e7fe                                      ; $5b0e: $c3 $fe $e7


    call nc, $f44a                                ; $5b11: $d4 $4a $f4
    sub [hl]                                      ; $5b14: $96
    add c                                         ; $5b15: $81
    ld a, [$1541]                                 ; $5b16: $fa $41 $15
    cp $05                                        ; $5b19: $fe $05
    inc bc                                        ; $5b1b: $03
    xor b                                         ; $5b1c: $a8
    inc bc                                        ; $5b1d: $03
    ld d, l                                       ; $5b1e: $55
    ei                                            ; $5b1f: $fb
    inc bc                                        ; $5b20: $03
    xor c                                         ; $5b21: $a9
    db $fc                                        ; $5b22: $fc
    pop hl                                        ; $5b23: $e1
    rrca                                          ; $5b24: $0f
    ld d, c                                       ; $5b25: $51
    scf                                           ; $5b26: $37
    add c                                         ; $5b27: $81
    rst $08                                       ; $5b28: $cf
    rst $38                                       ; $5b29: $ff
    inc bc                                        ; $5b2a: $03
    scf                                           ; $5b2b: $37
    dec bc                                        ; $5b2c: $0b
    rst $38                                       ; $5b2d: $ff
    xor a                                         ; $5b2e: $af
    rst $38                                       ; $5b2f: $ff
    rst $08                                       ; $5b30: $cf
    rst $38                                       ; $5b31: $ff
    ld h, a                                       ; $5b32: $67
    rst $30                                       ; $5b33: $f7
    rst $38                                       ; $5b34: $ff
    ld sp, hl                                     ; $5b35: $f9
    adc b                                         ; $5b36: $88
    ret nz                                        ; $5b37: $c0

    ld c, $63                                     ; $5b38: $0e $63
    ld sp, hl                                     ; $5b3a: $f9
    cp $ff                                        ; $5b3b: $fe $ff
    ldh [$ba], a                                  ; $5b3d: $e0 $ba
    inc bc                                        ; $5b3f: $03
    ld h, b                                       ; $5b40: $60
    ld a, a                                       ; $5b41: $7f
    ld l, h                                       ; $5b42: $6c
    ret nz                                        ; $5b43: $c0

    db $e3                                        ; $5b44: $e3
    rst $38                                       ; $5b45: $ff
    db $fc                                        ; $5b46: $fc
    pop bc                                        ; $5b47: $c1
    ld b, h                                       ; $5b48: $44
    ld bc, $87ef                                  ; $5b49: $01 $ef $87
    add [hl]                                      ; $5b4c: $86
    rst $18                                       ; $5b4d: $df
    db $dd                                        ; $5b4e: $dd
    ld d, b                                       ; $5b4f: $50
    ret nz                                        ; $5b50: $c0

    rlca                                          ; $5b51: $07
    ccf                                           ; $5b52: $3f
    scf                                           ; $5b53: $37
    ei                                            ; $5b54: $fb
    ld a, a                                       ; $5b55: $7f
    ld l, e                                       ; $5b56: $6b
    jp nc, $fce0                                  ; $5b57: $d2 $e0 $fc

    rst $38                                       ; $5b5a: $ff
    db $fd                                        ; $5b5b: $fd
    rst $38                                       ; $5b5c: $ff
    ei                                            ; $5b5d: $fb
    ld a, [$e0fe]                                 ; $5b5e: $fa $fe $e0
    pop hl                                        ; $5b61: $e1
    ld d, b                                       ; $5b62: $50
    ret nz                                        ; $5b63: $c0

    db $fd                                        ; $5b64: $fd
    cp $fc                                        ; $5b65: $fe $fc
    cp $7a                                        ; $5b67: $fe $7a
    rst $38                                       ; $5b69: $ff
    db $fc                                        ; $5b6a: $fc
    sub l                                         ; $5b6b: $95
    ld hl, sp-$1d                                 ; $5b6c: $f8 $e3
    ld hl, sp-$15                                 ; $5b6e: $f8 $eb
    ldh a, [$d7]                                  ; $5b70: $f0 $d7
    cp a                                          ; $5b72: $bf
    ld bc, $0171                                  ; $5b73: $01 $71 $01
    ld [hl], b                                    ; $5b76: $70
    inc bc                                        ; $5b77: $03
    ld [c], a                                     ; $5b78: $e2
    cp $e0                                        ; $5b79: $fe $e0
    pop bc                                        ; $5b7b: $c1
    rst $38                                       ; $5b7c: $ff
    rlca                                          ; $5b7d: $07
    add l                                         ; $5b7e: $85
    rrca                                          ; $5b7f: $0f
    adc l                                         ; $5b80: $8d
    rrca                                          ; $5b81: $0f
    ld [$7f80], sp                                ; $5b82: $08 $80 $7f
    ld sp, hl                                     ; $5b85: $f9
    add b                                         ; $5b86: $80
    sub h                                         ; $5b87: $94
    add e                                         ; $5b88: $83
    ld b, d                                       ; $5b89: $42
    nop                                           ; $5b8a: $00
    ld a, a                                       ; $5b8b: $7f
    ret nz                                        ; $5b8c: $c0

    db $e3                                        ; $5b8d: $e3
    ld [hl+], a                                   ; $5b8e: $22
    dec bc                                        ; $5b8f: $0b
    rst $38                                       ; $5b90: $ff
    db $e3                                        ; $5b91: $e3
    dec bc                                        ; $5b92: $0b
    db $e3                                        ; $5b93: $e3
    dec de                                        ; $5b94: $1b
    di                                            ; $5b95: $f3
    dec de                                        ; $5b96: $1b
    db $eb                                        ; $5b97: $eb
    dec de                                        ; $5b98: $1b
    ld a, a                                       ; $5b99: $7f
    swap a                                        ; $5b9a: $cb $37
    rst $20                                       ; $5b9c: $e7
    rst $30                                       ; $5b9d: $f7
    rlca                                          ; $5b9e: $07
    rst $30                                       ; $5b9f: $f7
    ld h, a                                       ; $5ba0: $67
    ld b, h                                       ; $5ba1: $44
    pop hl                                        ; $5ba2: $e1
    inc de                                        ; $5ba3: $13
    db $e4                                        ; $5ba4: $e4
    db $e3                                        ; $5ba5: $e3
    cp $e7                                        ; $5ba6: $fe $e7
    ld h, b                                       ; $5ba8: $60
    add hl, bc                                    ; $5ba9: $09
    ld bc, $e0fe                                  ; $5baa: $01 $fe $e0
    add $68                                       ; $5bad: $c6 $68

jr_049_5baf:
    or $43                                        ; $5baf: $f6 $43
    cp $38                                        ; $5bb1: $fe $38
    db $e4                                        ; $5bb3: $e4
    rrca                                          ; $5bb4: $0f
    ld d, e                                       ; $5bb5: $53
    ccf                                           ; $5bb6: $3f
    adc h                                         ; $5bb7: $8c
    ld a, h                                       ; $5bb8: $7c
    inc bc                                        ; $5bb9: $03
    ldh a, [rIE]                                  ; $5bba: $f0 $ff
    rrca                                          ; $5bbc: $0f
    inc c                                         ; $5bbd: $0c
    ld d, b                                       ; $5bbe: $50
    dec sp                                        ; $5bbf: $3b
    adc b                                         ; $5bc0: $88
    db $ec                                        ; $5bc1: $ec
    inc hl                                        ; $5bc2: $23
    ldh a, [rIE]                                  ; $5bc3: $f0 $ff
    rst $08                                       ; $5bc5: $cf
    ret nz                                        ; $5bc6: $c0

    ccf                                           ; $5bc7: $3f
    inc bc                                        ; $5bc8: $03
    cp $0f                                        ; $5bc9: $fe $0f
    ld hl, sp+$01                                 ; $5bcb: $f8 $01
    rst $38                                       ; $5bcd: $ff
    rst $38                                       ; $5bce: $ff
    rlca                                          ; $5bcf: $07
    jp z, Jump_000_150f                           ; $5bd0: $ca $0f $15

    rra                                           ; $5bd3: $1f
    cpl                                           ; $5bd4: $2f
    ccf                                           ; $5bd5: $3f
    or a                                          ; $5bd6: $b7
    ld e, a                                       ; $5bd7: $5f
    ld a, a                                       ; $5bd8: $7f
    cp a                                          ; $5bd9: $bf
    ccf                                           ; $5bda: $3f
    ld b, c                                       ; $5bdb: $41
    ld e, $ff                                     ; $5bdc: $1e $ff
    xor l                                         ; $5bde: $ad
    ld h, b                                       ; $5bdf: $60
    ld b, b                                       ; $5be0: $40
    rst $38                                       ; $5be1: $ff
    rst $38                                       ; $5be2: $ff
    add sp, -$01                                  ; $5be3: $e8 $ff
    or $fb                                        ; $5be5: $f6 $fb
    db $ed                                        ; $5be7: $ed
    rst $20                                       ; $5be8: $e7
    ld a, [$d0ef]                                 ; $5be9: $fa $ef $d0
    rst $38                                       ; $5bec: $ff
    ld h, $c3                                     ; $5bed: $26 $c3
    ld c, b                                       ; $5bef: $48
    ldh [$fa], a                                  ; $5bf0: $e0 $fa
    rst $38                                       ; $5bf2: $ff
    push af                                       ; $5bf3: $f5
    cp $ee                                        ; $5bf4: $fe $ee
    ldh [$c3], a                                  ; $5bf6: $e0 $c3
    cp $3e                                        ; $5bf8: $fe $3e
    add sp, $68                                   ; $5bfa: $e8 $68

jr_049_5bfc:
    ret nc                                        ; $5bfc: $d0

    rst $10                                       ; $5bfd: $d7
    cp [hl]                                       ; $5bfe: $be
    rst $10                                       ; $5bff: $d7
    nop                                           ; $5c00: $00
    ld [hl], b                                    ; $5c01: $70
    db $fc                                        ; $5c02: $fc
    inc b                                         ; $5c03: $04
    ldh [rNR41], a                                ; $5c04: $e0 $20
    ld e, d                                       ; $5c06: $5a
    nop                                           ; $5c07: $00
    rrca                                          ; $5c08: $0f
    cp $b2                                        ; $5c09: $fe $b2
    ld b, b                                       ; $5c0b: $40
    rst $28                                       ; $5c0c: $ef
    rst $30                                       ; $5c0d: $f7
    inc d                                         ; $5c0e: $14
    rst $08                                       ; $5c0f: $cf
    ret z                                         ; $5c10: $c8

    inc e                                         ; $5c11: $1c
    inc d                                         ; $5c12: $14
    rst $38                                       ; $5c13: $ff
    jr jr_049_5c81                                ; $5c14: $18 $6b

    db $10                                        ; $5c16: $10
    rst $00                                       ; $5c17: $c7
    jr nc, jr_049_5bfc                            ; $5c18: $30 $e2

    jr nc, @-$29                                  ; $5c1a: $30 $d5

    cp a                                          ; $5c1c: $bf
    jr nc, jr_049_5baf                            ; $5c1d: $30 $90

    ldh [$3f], a                                  ; $5c1f: $e0 $3f
    add b                                         ; $5c21: $80
    sbc [hl]                                      ; $5c22: $9e
    jp hl                                         ; $5c23: $e9


    nop                                           ; $5c24: $00
    db $fc                                        ; $5c25: $fc
    cp $c8                                        ; $5c26: $fe $c8
    ld h, b                                       ; $5c28: $60
    or b                                          ; $5c29: $b0
    nop                                           ; $5c2a: $00
    ld b, b                                       ; $5c2b: $40
    inc bc                                        ; $5c2c: $03
    inc bc                                        ; $5c2d: $03
    rrca                                          ; $5c2e: $0f
    dec bc                                        ; $5c2f: $0b
    rst $38                                       ; $5c30: $ff
    rra                                           ; $5c31: $1f

jr_049_5c32:
    dec de                                        ; $5c32: $1b
    ld e, $16                                     ; $5c33: $1e $16
    ld a, $36                                     ; $5c35: $3e $36
    ld a, $2e                                     ; $5c37: $3e $2e
    ei                                            ; $5c39: $fb
    ld a, a                                       ; $5c3a: $7f
    ld l, a                                       ; $5c3b: $6f
    ld b, [hl]                                    ; $5c3c: $46
    and b                                         ; $5c3d: $a0

jr_049_5c3e:
    sbc a                                         ; $5c3e: $9f
    add e                                         ; $5c3f: $83
    sbc l                                         ; $5c40: $9d
    ld [bc], a                                    ; $5c41: $02
    inc a                                         ; $5c42: $3c
    rst $38                                       ; $5c43: $ff
    ld [bc], a                                    ; $5c44: $02
    ld a, b                                       ; $5c45: $78
    ld [bc], a                                    ; $5c46: $02
    ld hl, sp+$03                                 ; $5c47: $f8 $03
    ld h, c                                       ; $5c49: $61
    inc bc                                        ; $5c4a: $03
    ld bc, $c7ff                                  ; $5c4b: $01 $ff $c7
    add $f3                                       ; $5c4e: $c6 $f3
    ld a, [c]                                     ; $5c50: $f2
    rst $20                                       ; $5c51: $e7
    rst $20                                       ; $5c52: $e7
    daa                                           ; $5c53: $27
    daa                                           ; $5c54: $27
    rst $08                                       ; $5c55: $cf
    rrca                                          ; $5c56: $0f
    rrca                                          ; $5c57: $0f
    rra                                           ; $5c58: $1f
    rra                                           ; $5c59: $1f
    pop bc                                        ; $5c5a: $c1
    dec h                                         ; $5c5b: $25
    inc h                                         ; $5c5c: $24
    db $e3                                        ; $5c5d: $e3
    db $ec                                        ; $5c5e: $ec
    db $eb                                        ; $5c5f: $eb
    rst $38                                       ; $5c60: $ff
    call z, $b8c7                                 ; $5c61: $cc $c7 $b8
    or a                                          ; $5c64: $b7
    ld hl, sp-$11                                 ; $5c65: $f8 $ef
    ldh a, [$df]                                  ; $5c67: $f0 $df
    ld a, [c]                                     ; $5c69: $f2
    inc l                                         ; $5c6a: $2c
    pop hl                                        ; $5c6b: $e1
    inc bc                                        ; $5c6c: $03
    ld h, d                                       ; $5c6d: $62
    nop                                           ; $5c6e: $00
    db $fc                                        ; $5c6f: $fc
    pop hl                                        ; $5c70: $e1
    dec bc                                        ; $5c71: $0b
    rst $38                                       ; $5c72: $ff
    rla                                           ; $5c73: $17
    db $fd                                        ; $5c74: $fd
    db $ec                                        ; $5c75: $ec
    ld d, [hl]                                    ; $5c76: $56
    ld h, $ee                                     ; $5c77: $26 $ee
    ld b, e                                       ; $5c79: $43
    xor d                                         ; $5c7a: $aa
    ld bc, $a0ac                                  ; $5c7b: $01 $ac $a0
    ld b, $52                                     ; $5c7e: $06 $52
    inc c                                         ; $5c80: $0c

jr_049_5c81:
    rst $38                                       ; $5c81: $ff
    and l                                         ; $5c82: $a5
    jr jr_049_5cd0                                ; $5c83: $18 $4b

    jr jr_049_5c32                                ; $5c85: $18 $ab

    jr nc, jr_049_5cd9                            ; $5c87: $30 $50

    add hl, sp                                    ; $5c89: $39
    rst $38                                       ; $5c8a: $ff
    reti                                          ; $5c8b: $d9


    ldh [$1f], a                                  ; $5c8c: $e0 $1f
    ldh a, [$cf]                                  ; $5c8e: $f0 $cf
    ld [hl], b                                    ; $5c90: $70
    ld l, a                                       ; $5c91: $6f
    jr c, @+$01                                   ; $5c92: $38 $ff

    and a                                         ; $5c94: $a7
    jr c, jr_049_5c3e                             ; $5c95: $38 $a7

    ld a, b                                       ; $5c97: $78
    ld b, a                                       ; $5c98: $47
    ld hl, sp-$39                                 ; $5c99: $f8 $c7
    ld hl, sp+$67                                 ; $5c9b: $f8 $67
    add a                                         ; $5c9d: $87
    ccf                                           ; $5c9e: $3f
    pop hl                                        ; $5c9f: $e1
    ld [bc], a                                    ; $5ca0: $02
    ld c, d                                       ; $5ca1: $4a
    ld b, h                                       ; $5ca2: $44
    add b                                         ; $5ca3: $80
    inc bc                                        ; $5ca4: $03
    db $fd                                        ; $5ca5: $fd
    cp $e6                                        ; $5ca6: $fe $e6
    rst $38                                       ; $5ca8: $ff
    cp $01                                        ; $5ca9: $fe $01
    cp $e0                                        ; $5cab: $fe $e0
    rst $28                                       ; $5cad: $ef
    ret nz                                        ; $5cae: $c0

    jp c, Jump_049_7fc0                           ; $5caf: $da $c0 $7f

    call nz, $f8f0                                ; $5cb2: $c4 $f0 $f8
    db $e3                                        ; $5cb5: $e3
    db $e3                                        ; $5cb6: $e3
    rst $20                                       ; $5cb7: $e7
    rst $20                                       ; $5cb8: $e7
    dec a                                         ; $5cb9: $3d
    ld hl, $00f7                                  ; $5cba: $21 $f7 $00
    call c, Call_000_2820                         ; $5cbd: $dc $20 $28
    ld b, b                                       ; $5cc0: $40
    ret nz                                        ; $5cc1: $c0

    ret nz                                        ; $5cc2: $c0

    sbc a                                         ; $5cc3: $9f
    sbc a                                         ; $5cc4: $9f
    cp $2f                                        ; $5cc5: $fe $2f
    inc hl                                        ; $5cc7: $23
    jr nc, jr_049_5cda                            ; $5cc8: $30 $10

    ld de, $1f01                                  ; $5cca: $11 $01 $1f
    rrca                                          ; $5ccd: $0f
    rst $18                                       ; $5cce: $df
    rst $38                                       ; $5ccf: $ff

jr_049_5cd0:
    rst $10                                       ; $5cd0: $d7
    rst $28                                       ; $5cd1: $ef
    ldh [$f7], a                                  ; $5cd2: $e0 $f7
    ldh a, [$fb]                                  ; $5cd4: $f0 $fb
    ld a, [$fdff]                                 ; $5cd6: $fa $ff $fd

jr_049_5cd9:
    rst $38                                       ; $5cd9: $ff

jr_049_5cda:
    ld d, [hl]                                    ; $5cda: $56
    ldh [$fc], a                                  ; $5cdb: $e0 $fc
    cp $e2                                        ; $5cdd: $fe $e2
    db $fc                                        ; $5cdf: $fc
    inc c                                         ; $5ce0: $0c
    ld hl, sp-$01                                 ; $5ce1: $f8 $ff
    ld l, e                                       ; $5ce3: $6b
    ldh a, [$e0]                                  ; $5ce4: $f0 $e0
    ldh a, [rNR41]                                ; $5ce6: $f0 $20
    rst $30                                       ; $5ce8: $f7
    rst $20                                       ; $5ce9: $e7
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    ld e, a                                       ; $5cec: $5f
    rst $38                                       ; $5ced: $ff
    rst $28                                       ; $5cee: $ef
    cp a                                          ; $5cef: $bf
    or a                                          ; $5cf0: $b7
    rra                                           ; $5cf1: $1f
    rst $10                                       ; $5cf2: $d7
    rrca                                          ; $5cf3: $0f
    rst $38                                       ; $5cf4: $ff
    adc d                                         ; $5cf5: $8a
    rra                                           ; $5cf6: $1f
    add hl, de                                    ; $5cf7: $19
    ld a, a                                       ; $5cf8: $7f
    ld a, b                                       ; $5cf9: $78
    db $fc                                        ; $5cfa: $fc
    ei                                            ; $5cfb: $fb
    cp $dc                                        ; $5cfc: $fe $dc
    ld a, l                                       ; $5cfe: $7d
    ret nz                                        ; $5cff: $c0

    ld l, c                                       ; $5d00: $69
    ld b, b                                       ; $5d01: $40
    ret nz                                        ; $5d02: $c0

    rst $38                                       ; $5d03: $ff
    ld a, b                                       ; $5d04: $78
    call nc, $ffe0                                ; $5d05: $d4 $e0 $ff
    nop                                           ; $5d08: $00
    rst $38                                       ; $5d09: $ff
    rra                                           ; $5d0a: $1f
    ld a, a                                       ; $5d0b: $7f
    add b                                         ; $5d0c: $80
    jr nc, @-$2f                                  ; $5d0d: $30 $cf

    adc h                                         ; $5d0f: $8c
    ld a, [hl]                                    ; $5d10: $7e
    call z, Call_000_3eff                         ; $5d11: $cc $ff $3e
    db $e4                                        ; $5d14: $e4
    ld e, $f4                                     ; $5d15: $1e $f4
    ld a, [bc]                                    ; $5d17: $0a
    ld hl, sp-$0c                                 ; $5d18: $f8 $f4
    nop                                           ; $5d1a: $00
    rst $20                                       ; $5d1b: $e7
    ld hl, sp-$40                                 ; $5d1c: $f8 $c0
    ccf                                           ; $5d1e: $3f
    ld [hl], b                                    ; $5d1f: $70
    db $eb                                        ; $5d20: $eb
    ld h, d                                       ; $5d21: $62
    db $eb                                        ; $5d22: $eb
    add b                                         ; $5d23: $80
    rst $38                                       ; $5d24: $ff
    rrca                                          ; $5d25: $0f
    rst $38                                       ; $5d26: $ff
    cp $0f                                        ; $5d27: $fe $0f
    db $fd                                        ; $5d29: $fd
    rra                                           ; $5d2a: $1f
    ld a, [$f03f]                                 ; $5d2b: $fa $3f $f0
    ld e, a                                       ; $5d2e: $5f
    ld a, a                                       ; $5d2f: $7f
    ld hl, sp-$41                                 ; $5d30: $f8 $bf
    ldh a, [$7f]                                  ; $5d32: $f0 $7f
    add sp, -$01                                  ; $5d34: $e8 $ff
    ret nc                                        ; $5d36: $d0

    ld h, b                                       ; $5d37: $60
    xor h                                         ; $5d38: $ac
    pop bc                                        ; $5d39: $c1
    ld [bc], a                                    ; $5d3a: $02
    inc b                                         ; $5d3b: $04
    and $ee                                       ; $5d3c: $e6 $ee
    dec h                                         ; $5d3e: $25
    ld [$6e23], a                                 ; $5d3f: $ea $23 $6e
    ld bc, $a3cc                                  ; $5d42: $01 $cc $a3
    sbc a                                         ; $5d45: $9f
    ld a, a                                       ; $5d46: $7f
    ei                                            ; $5d47: $fb
    adc [hl]                                      ; $5d48: $8e
    ld a, a                                       ; $5d49: $7f
    cp e                                          ; $5d4a: $bb
    and b                                         ; $5d4b: $a0
    ccf                                           ; $5d4c: $3f
    ret nz                                        ; $5d4d: $c0

    ccf                                           ; $5d4e: $3f
    ret nz                                        ; $5d4f: $c0

    rra                                           ; $5d50: $1f
    rst $18                                       ; $5d51: $df
    ldh [rTAC], a                                 ; $5d52: $e0 $07
    ld hl, sp-$08                                 ; $5d54: $f8 $f8
    rlca                                          ; $5d56: $07
    cp $e5                                        ; $5d57: $fe $e5
    ldh a, [rIF]                                  ; $5d59: $f0 $0f
    rst $08                                       ; $5d5b: $cf
    ldh a, [rIF]                                  ; $5d5c: $f0 $0f
    ldh [$1f], a                                  ; $5d5e: $e0 $1f
    add c                                         ; $5d60: $81
    nop                                           ; $5d61: $00
    ld d, b                                       ; $5d62: $50
    adc d                                         ; $5d63: $8a
    rst $38                                       ; $5d64: $ff
    add b                                         ; $5d65: $80
    rst $38                                       ; $5d66: $ff
    ld a, a                                       ; $5d67: $7f
    pop bc                                        ; $5d68: $c1
    ld a, a                                       ; $5d69: $7f
    rst $38                                       ; $5d6a: $ff
    cp h                                          ; $5d6b: $bc
    ld a, a                                       ; $5d6c: $7f
    ld d, e                                       ; $5d6d: $53
    cpl                                           ; $5d6e: $2f
    rst $38                                       ; $5d6f: $ff
    cpl                                           ; $5d70: $2f
    rla                                           ; $5d71: $17
    inc d                                         ; $5d72: $14
    rrca                                          ; $5d73: $0f
    add hl, bc                                    ; $5d74: $09
    rlca                                          ; $5d75: $07
    di                                            ; $5d76: $f3
    ld a, a                                       ; $5d77: $7f
    db $fd                                        ; $5d78: $fd
    rst $08                                       ; $5d79: $cf
    xor d                                         ; $5d7a: $aa
    jr nz, jr_049_5db0                            ; $5d7b: $20 $33

    cp $77                                        ; $5d7d: $fe $77
    cp $7f                                        ; $5d7f: $fe $7f
    db $fd                                        ; $5d81: $fd
    and $1c                                       ; $5d82: $e6 $1c
    and e                                         ; $5d84: $a3
    nop                                           ; $5d85: $00
    rst $38                                       ; $5d86: $ff
    ld l, c                                       ; $5d87: $69
    ldh [$91], a                                  ; $5d88: $e0 $91
    ld h, $9f                                     ; $5d8a: $26 $9f
    ldh a, [$7f]                                  ; $5d8c: $f0 $7f
    ld a, l                                       ; $5d8e: $7d
    ret nz                                        ; $5d8f: $c0

    sub a                                         ; $5d90: $97
    and b                                         ; $5d91: $a0
    ld a, [bc]                                    ; $5d92: $0a
    rst $38                                       ; $5d93: $ff

jr_049_5d94:
    dec d                                         ; $5d94: $15
    rst $38                                       ; $5d95: $ff
    jr z, @-$7d                                   ; $5d96: $28 $81

    ld hl, $f8ff                                  ; $5d98: $21 $ff $f8
    inc d                                         ; $5d9b: $14
    ld hl, sp+$2c                                 ; $5d9c: $f8 $2c
    ld hl, sp+$5c                                 ; $5d9e: $f8 $5c
    db $f4                                        ; $5da0: $f4
    cp b                                          ; $5da1: $b8
    set 6, b                                      ; $5da2: $cb $f0
    ld a, b                                       ; $5da4: $78
    cp $e1                                        ; $5da5: $fe $e1
    db $f4                                        ; $5da7: $f4
    xor [hl]                                      ; $5da8: $ae
    and b                                         ; $5da9: $a0
    ld d, b                                       ; $5daa: $50
    pop bc                                        ; $5dab: $c1

jr_049_5dac:
    inc bc                                        ; $5dac: $03
    rst $38                                       ; $5dad: $ff
    db $fd                                        ; $5dae: $fd
    ld [bc], a                                    ; $5daf: $02

jr_049_5db0:
    ld d, b                                       ; $5db0: $50
    ret nz                                        ; $5db1: $c0

    rlca                                          ; $5db2: $07
    db $fd                                        ; $5db3: $fd
    rlca                                          ; $5db4: $07
    cp $81                                        ; $5db5: $fe $81
    rst $38                                       ; $5db7: $ff
    ld [hl], a                                    ; $5db8: $77
    ld b, e                                       ; $5db9: $43
    rst $38                                       ; $5dba: $ff
    add $ad                                       ; $5dbb: $c6 $ad
    and b                                         ; $5dbd: $a0
    ld h, c                                       ; $5dbe: $61
    rst $38                                       ; $5dbf: $ff
    inc hl                                        ; $5dc0: $23
    xor d                                         ; $5dc1: $aa
    ldh [$57], a                                  ; $5dc2: $e0 $57
    rla                                           ; $5dc4: $17
    db $fd                                        ; $5dc5: $fd
    rst $38                                       ; $5dc6: $ff
    jr z, jr_049_5dac                             ; $5dc7: $28 $e3

    ret nz                                        ; $5dc9: $c0

    dec d                                         ; $5dca: $15
    ldh [rLCDC], a                                ; $5dcb: $e0 $40
    xor b                                         ; $5dcd: $a8
    pop hl                                        ; $5dce: $e1
    ld [$aa50], sp                                ; $5dcf: $08 $50 $aa

jr_049_5dd2:
    jr nc, jr_049_5d94                            ; $5dd2: $30 $c0

    ld d, $24                                     ; $5dd4: $16 $24
    xor e                                         ; $5dd6: $ab
    jp z, Jump_000_3e22                           ; $5dd7: $ca $22 $3e

    ld bc, $e824                                  ; $5dda: $01 $24 $e8
    add $cf                                       ; $5ddd: $c6 $cf
    rst $30                                       ; $5ddf: $f7
    ld b, b                                       ; $5de0: $40
    cp a                                          ; $5de1: $bf
    ld [bc], a                                    ; $5de2: $02
    jr nc, jr_049_5dd2                            ; $5de3: $30 $ed

    cp $7f                                        ; $5de5: $fe $7f
    rst $38                                       ; $5de7: $ff
    cp a                                          ; $5de8: $bf
    rst $38                                       ; $5de9: $ff
    ld a, a                                       ; $5dea: $7f
    ld e, a                                       ; $5deb: $5f
    ccf                                           ; $5dec: $3f
    rra                                           ; $5ded: $1f
    ccf                                           ; $5dee: $3f
    cpl                                           ; $5def: $2f
    rra                                           ; $5df0: $1f
    rla                                           ; $5df1: $17
    ld [hl], a                                    ; $5df2: $77
    rrca                                          ; $5df3: $0f
    rla                                           ; $5df4: $17
    rrca                                          ; $5df5: $0f
    sbc b                                         ; $5df6: $98
    ld [c], a                                     ; $5df7: $e2
    xor b                                         ; $5df8: $a8
    rst $38                                       ; $5df9: $ff
    call nc, $a02c                                ; $5dfa: $d4 $2c $a0
    ld [$e1fc], a                                 ; $5dfd: $ea $fc $e1
    ret nz                                        ; $5e00: $c0

    reti                                          ; $5e01: $d9


    add d                                         ; $5e02: $82
    dec b                                         ; $5e03: $05
    or l                                          ; $5e04: $b5
    and c                                         ; $5e05: $a1
    rst $38                                       ; $5e06: $ff
    nop                                           ; $5e07: $00
    db $fc                                        ; $5e08: $fc
    rst $38                                       ; $5e09: $ff
    rlca                                          ; $5e0a: $07
    add e                                         ; $5e0b: $83
    cp $f8                                        ; $5e0c: $fe $f8
    db $fc                                        ; $5e0e: $fc
    ld a, [$fcfc]                                 ; $5e0f: $fa $fc $fc
    rst $38                                       ; $5e12: $ff
    or $fd                                        ; $5e13: $f6 $fd
    jp nz, Jump_000_03fe                          ; $5e15: $c2 $fe $03

    ldh [$3f], a                                  ; $5e18: $e0 $3f
    ld e, $a1                                     ; $5e1a: $1e $a1
    di                                            ; $5e1c: $f3
    pop bc                                        ; $5e1d: $c1
    add b                                         ; $5e1e: $80
    jp nc, $b7a9                                  ; $5e1f: $d2 $a9 $b7

    ret nz                                        ; $5e22: $c0

    and b                                         ; $5e23: $a0
    adc c                                         ; $5e24: $89
    ld [$e0fe], sp                                ; $5e25: $08 $fe $e0
    rrca                                          ; $5e28: $0f
    rst $38                                       ; $5e29: $ff
    db $fd                                        ; $5e2a: $fd
    rrca                                          ; $5e2b: $0f
    ei                                            ; $5e2c: $fb
    rra                                           ; $5e2d: $1f
    or $3f                                        ; $5e2e: $f6 $3f
    ld [c], a                                     ; $5e30: $e2
    ld a, a                                       ; $5e31: $7f
    rst $38                                       ; $5e32: $ff
    pop bc                                        ; $5e33: $c1
    cp a                                          ; $5e34: $bf
    ld [c], a                                     ; $5e35: $e2
    ccf                                           ; $5e36: $3f
    ldh [$7f], a                                  ; $5e37: $e0 $7f
    ret z                                         ; $5e39: $c8

    rra                                           ; $5e3a: $1f
    cp $50                                        ; $5e3b: $fe $50
    ret nz                                        ; $5e3d: $c0

    sub a                                         ; $5e3e: $97
    cp $ef                                        ; $5e3f: $fe $ef
    db $fc                                        ; $5e41: $fc
    rst $38                                       ; $5e42: $ff
    ld hl, sp-$01                                 ; $5e43: $f8 $ff
    ld e, a                                       ; $5e45: $5f
    or c                                          ; $5e46: $b1
    cp $63                                        ; $5e47: $fe $63
    db $fd                                        ; $5e49: $fd
    ld [hl], a                                    ; $5e4a: $77
    sub $c6                                       ; $5e4b: $d6 $c6
    and b                                         ; $5e4d: $a0
    ret c                                         ; $5e4e: $d8

    ret nz                                        ; $5e4f: $c0

    ld [$e120], sp                                ; $5e50: $08 $20 $e1
    jr c, @-$1b                                   ; $5e53: $38 $e3

    ld c, [hl]                                    ; $5e55: $4e
    ld [$8a01], sp                                ; $5e56: $08 $01 $8a
    and b                                         ; $5e59: $a0
    ld c, d                                       ; $5e5a: $4a
    add a                                         ; $5e5b: $87
    ld e, c                                       ; $5e5c: $59
    ret nz                                        ; $5e5d: $c0

    ld e, d                                       ; $5e5e: $5a
    ld h, b                                       ; $5e5f: $60
    cp $98                                        ; $5e60: $fe $98
    rst $20                                       ; $5e62: $e7
    rla                                           ; $5e63: $17
    rrca                                          ; $5e64: $0f
    rlca                                          ; $5e65: $07
    ld c, $07                                     ; $5e66: $0e $07
    inc c                                         ; $5e68: $0c
    ld a, [bc]                                    ; $5e69: $0a
    rst $38                                       ; $5e6a: $ff
    rlca                                          ; $5e6b: $07
    ld [$0907], sp                                ; $5e6c: $08 $07 $09
    ld b, $07                                     ; $5e6f: $06 $07
    dec c                                         ; $5e71: $0d
    rlca                                          ; $5e72: $07
    rst $38                                       ; $5e73: $ff
    add hl, bc                                    ; $5e74: $09
    db $fc                                        ; $5e75: $fc
    rlca                                          ; $5e76: $07
    di                                            ; $5e77: $f3
    ld e, $cf                                     ; $5e78: $1e $cf
    ld a, [hl]                                    ; $5e7a: $7e
    ccf                                           ; $5e7b: $3f
    rst $30                                       ; $5e7c: $f7
    db $fc                                        ; $5e7d: $fc
    ld a, a                                       ; $5e7e: $7f
    cp h                                          ; $5e7f: $bc
    sbc [hl]                                      ; $5e80: $9e
    ldh [$f8], a                                  ; $5e81: $e0 $f8
    rst $38                                       ; $5e83: $ff
    ld a, [c]                                     ; $5e84: $f2
    rst $38                                       ; $5e85: $ff
    db $fd                                        ; $5e86: $fd
    ld a, a                                       ; $5e87: $7f
    cp $01                                        ; $5e88: $fe $01
    db $f4                                        ; $5e8a: $f4
    db $f4                                        ; $5e8b: $f4
    add sp, -$18                                  ; $5e8c: $e8 $e8
    ret nz                                        ; $5e8e: $c0

    ret nz                                        ; $5e8f: $c0

    ccf                                           ; $5e90: $3f
    pop bc                                        ; $5e91: $c1
    pop bc                                        ; $5e92: $c1
    add [hl]                                      ; $5e93: $86
    add [hl]                                      ; $5e94: $86
    add c                                         ; $5e95: $81
    add c                                         ; $5e96: $81
    ld a, a                                       ; $5e97: $7f
    ld c, e                                       ; $5e98: $4b
    rlca                                          ; $5e99: $07
    ret nz                                        ; $5e9a: $c0

    rst $38                                       ; $5e9b: $ff
    sbc a                                         ; $5e9c: $9f
    ld h, b                                       ; $5e9d: $60
    ld e, a                                       ; $5e9e: $5f
    jr nz, jr_049_5eb0                            ; $5e9f: $20 $0f

    db $10                                        ; $5ea1: $10
    rrca                                          ; $5ea2: $0f
    db $10                                        ; $5ea3: $10
    and $bc                                       ; $5ea4: $e6 $bc
    ldh [$08], a                                  ; $5ea6: $e0 $08
    inc bc                                        ; $5ea8: $03
    ld [c], a                                     ; $5ea9: $e2
    ld l, c                                       ; $5eaa: $69
    sbc $61                                       ; $5eab: $de $61
    inc e                                         ; $5ead: $1c
    rst $38                                       ; $5eae: $ff
    inc d                                         ; $5eaf: $14

jr_049_5eb0:
    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    ld [hl-], a                                   ; $5eb2: $32
    rst $38                                       ; $5eb3: $ff
    ld a, c                                       ; $5eb4: $79
    rst $28                                       ; $5eb5: $ef
    ld sp, hl                                     ; $5eb6: $f9
    rst $18                                       ; $5eb7: $df
    db $fc                                        ; $5eb8: $fc
    rst $38                                       ; $5eb9: $ff
    adc a                                         ; $5eba: $8f
    rst $38                                       ; $5ebb: $ff
    ld e, a                                       ; $5ebc: $5f
    ei                                            ; $5ebd: $fb
    rra                                           ; $5ebe: $1f
    rst $38                                       ; $5ebf: $ff
    and d                                         ; $5ec0: $a2
    ld a, a                                       ; $5ec1: $7f
    rst $20                                       ; $5ec2: $e7
    call nz, $887f                                ; $5ec3: $c4 $7f $88
    ld d, b                                       ; $5ec6: $50
    pop hl                                        ; $5ec7: $e1
    ld l, h                                       ; $5ec8: $6c
    jp nz, $ff00                                  ; $5ec9: $c2 $00 $ff

    sbc [hl]                                      ; $5ecc: $9e
    db $d3                                        ; $5ecd: $d3
    rst $38                                       ; $5ece: $ff
    inc [hl]                                      ; $5ecf: $34
    ld h, $c3                                     ; $5ed0: $26 $c3
    ld h, a                                       ; $5ed2: $67
    ld [bc], a                                    ; $5ed3: $02
    ld [bc], a                                    ; $5ed4: $02
    jp Jump_000_208a                              ; $5ed5: $c3 $8a $20


    rst $38                                       ; $5ed8: $ff
    rst $30                                       ; $5ed9: $f7
    add b                                         ; $5eda: $80
    rlca                                          ; $5edb: $07
    dec bc                                        ; $5edc: $0b
    cp $e1                                        ; $5edd: $fe $e1
    rla                                           ; $5edf: $17
    dec bc                                        ; $5ee0: $0b
    rrca                                          ; $5ee1: $0f
    dec de                                        ; $5ee2: $1b
    db $fc                                        ; $5ee3: $fc
    and e                                         ; $5ee4: $a3
    ret nz                                        ; $5ee5: $c0

    sbc a                                         ; $5ee6: $9f
    ret nz                                        ; $5ee7: $c0

    rst $38                                       ; $5ee8: $ff
    db $f4                                        ; $5ee9: $f4
    rst $38                                       ; $5eea: $ff
    ld [$dcff], a                                 ; $5eeb: $ea $ff $dc
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    ld a, [$fdfe]                                 ; $5ef0: $fa $fe $fd
    cp $f9                                        ; $5ef3: $fe $f9
    db $fd                                        ; $5ef5: $fd
    ld a, [$fcff]                                 ; $5ef6: $fa $ff $fc
    ei                                            ; $5ef9: $fb
    adc h                                         ; $5efa: $8c
    adc h                                         ; $5efb: $8c
    sbc b                                         ; $5efc: $98
    sbc b                                         ; $5efd: $98
    or b                                          ; $5efe: $b0
    or b                                          ; $5eff: $b0
    adc a                                         ; $5f00: $8f
    ldh a, [$f0]                                  ; $5f01: $f0 $f0
    ldh [$e1], a                                  ; $5f03: $e0 $e1
    and e                                         ; $5f05: $a3
    jr nz, jr_049_5f65                            ; $5f06: $20 $5d

    ldh [$e3], a                                  ; $5f08: $e0 $e3
    jr nz, jr_049_5f1b                            ; $5f0a: $20 $0f

    db $fc                                        ; $5f0c: $fc
    jr c, @-$3c                                   ; $5f0d: $38 $c2

    inc l                                         ; $5f0f: $2c
    ld h, h                                       ; $5f10: $64
    inc b                                         ; $5f11: $04
    inc bc                                        ; $5f12: $03
    inc b                                         ; $5f13: $04
    ld bc, $4102                                  ; $5f14: $01 $02 $41
    rst $38                                       ; $5f17: $ff
    ld [bc], a                                    ; $5f18: $02
    pop bc                                        ; $5f19: $c1
    ld [bc], a                                    ; $5f1a: $02

jr_049_5f1b:
    ldh [rSC], a                                  ; $5f1b: $e0 $02
    ret nc                                        ; $5f1d: $d0

    ld bc, $ffe0                                  ; $5f1e: $01 $e0 $ff
    ld bc, $03d0                                  ; $5f21: $01 $d0 $03
    cp $07                                        ; $5f24: $fe $07
    db $fc                                        ; $5f26: $fc
    rrca                                          ; $5f27: $0f
    ld a, [$1fb9]                                 ; $5f28: $fa $b9 $1f
    sub $a0                                       ; $5f2b: $d6 $a0
    and [hl]                                      ; $5f2d: $a6
    ret nz                                        ; $5f2e: $c0

    ld a, [$f41f]                                 ; $5f2f: $fa $1f $f4
    and [hl]                                      ; $5f32: $a6
    and b                                         ; $5f33: $a0
    sub e                                         ; $5f34: $93
    ret nc                                        ; $5f35: $d0

    scf                                           ; $5f36: $37
    ld h, e                                       ; $5f37: $63
    cp b                                          ; $5f38: $b8
    push bc                                       ; $5f39: $c5
    ret c                                         ; $5f3a: $d8

    and e                                         ; $5f3b: $a3
    ld [hl], d                                    ; $5f3c: $72
    db $e4                                        ; $5f3d: $e4
    add h                                         ; $5f3e: $84
    ld b, h                                       ; $5f3f: $44
    ret nz                                        ; $5f40: $c0

    ld a, [bc]                                    ; $5f41: $0a
    rst $38                                       ; $5f42: $ff
    db $fd                                        ; $5f43: $fd
    db $10                                        ; $5f44: $10
    cp l                                          ; $5f45: $bd
    sub a                                         ; $5f46: $97
    rrca                                          ; $5f47: $0f
    rla                                           ; $5f48: $17
    cpl                                           ; $5f49: $2f
    rla                                           ; $5f4a: $17
    rra                                           ; $5f4b: $1f
    cpl                                           ; $5f4c: $2f
    rst $38                                       ; $5f4d: $ff
    rra                                           ; $5f4e: $1f
    cpl                                           ; $5f4f: $2f
    ld e, a                                       ; $5f50: $5f
    cpl                                           ; $5f51: $2f
    ccf                                           ; $5f52: $3f
    ld l, a                                       ; $5f53: $6f
    ccf                                           ; $5f54: $3f
    ld e, a                                       ; $5f55: $5f
    rst $38                                       ; $5f56: $ff
    ccf                                           ; $5f57: $3f
    ld e, a                                       ; $5f58: $5f
    ld hl, sp-$09                                 ; $5f59: $f8 $f7
    ld hl, sp-$09                                 ; $5f5b: $f8 $f7
    ld sp, hl                                     ; $5f5d: $f9
    or $ff                                        ; $5f5e: $f6 $ff
    pop af                                        ; $5f60: $f1
    xor $f3                                       ; $5f61: $ee $f3
    db $ec                                        ; $5f63: $ec
    ld a, [c]                                     ; $5f64: $f2

jr_049_5f65:
    db $dd                                        ; $5f65: $dd
    pop af                                        ; $5f66: $f1
    xor [hl]                                      ; $5f67: $ae
    rst $38                                       ; $5f68: $ff
    db $e3                                        ; $5f69: $e3
    ld e, h                                       ; $5f6a: $5c
    ret nz                                        ; $5f6b: $c0

    jp nz, $8580                                  ; $5f6c: $c2 $80 $85

    add b                                         ; $5f6f: $80
    add b                                         ; $5f70: $80
    rst $38                                       ; $5f71: $ff
    rrca                                          ; $5f72: $0f
    ld [$85fc], sp                                ; $5f73: $08 $fc $85
    ret nz                                        ; $5f76: $c0

    ld b, a                                       ; $5f77: $47
    add b                                         ; $5f78: $80
    adc a                                         ; $5f79: $8f
    di                                            ; $5f7a: $f3
    nop                                           ; $5f7b: $00
    rra                                           ; $5f7c: $1f
    add hl, de                                    ; $5f7d: $19
    ld [c], a                                     ; $5f7e: $e2
    ld l, e                                       ; $5f7f: $6b
    ret nz                                        ; $5f80: $c0

    ld bc, $00fc                                  ; $5f81: $01 $fc $00
    cp $ef                                        ; $5f84: $fe $ef
    nop                                           ; $5f86: $00
    db $fd                                        ; $5f87: $fd
    nop                                           ; $5f88: $00
    cp $6c                                        ; $5f89: $fe $6c
    pop hl                                        ; $5f8b: $e1
    ld bc, $03a0                                  ; $5f8c: $01 $a0 $03
    rst $38                                       ; $5f8f: $ff
    ld [bc], a                                    ; $5f90: $02
    db $e3                                        ; $5f91: $e3
    ld hl, $893b                                  ; $5f92: $21 $3b $89
    rra                                           ; $5f95: $1f
    dec d                                         ; $5f96: $15
    rrca                                          ; $5f97: $0f
    ld e, a                                       ; $5f98: $5f
    adc c                                         ; $5f99: $89
    ccf                                           ; $5f9a: $3f
    ld hl, sp+$7f                                 ; $5f9b: $f8 $7f
    ldh a, [$f0]                                  ; $5f9d: $f0 $f0
    ld b, b                                       ; $5f9f: $40
    ret nc                                        ; $5fa0: $d0

    ldh [$c2], a                                  ; $5fa1: $e0 $c2
    ld a, [bc]                                    ; $5fa3: $0a
    ld c, d                                       ; $5fa4: $4a
    and c                                         ; $5fa5: $a1
    ld bc, $a025                                  ; $5fa6: $01 $25 $a0
    inc b                                         ; $5fa9: $04
    db $eb                                        ; $5faa: $eb
    xor d                                         ; $5fab: $aa
    sbc a                                         ; $5fac: $9f
    ld l, d                                       ; $5fad: $6a
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    dec h                                         ; $5fb1: $25
    ld [$e7ff], sp                                ; $5fb2: $08 $ff $e7
    ld a, [bc]                                    ; $5fb5: $0a
    db $f4                                        ; $5fb6: $f4
    add sp, -$0b                                  ; $5fb7: $e8 $f5
    ldh a, [$0a]                                  ; $5fb9: $f0 $0a
    ldh [$f5], a                                  ; $5fbb: $e0 $f5
    ret z                                         ; $5fbd: $c8

    ld [c], a                                     ; $5fbe: $e2
    ld bc, $ff0a                                  ; $5fbf: $01 $0a $ff
    ldh [$be], a                                  ; $5fc2: $e0 $be
    ldh [$bc], a                                  ; $5fc4: $e0 $bc
    xor $e8                                       ; $5fc6: $ee $e8
    pop hl                                        ; $5fc8: $e1
    and a                                         ; $5fc9: $a7
    pop hl                                        ; $5fca: $e1
    ld [c], a                                     ; $5fcb: $e2
    ld [c], a                                     ; $5fcc: $e2
    cp h                                          ; $5fcd: $bc
    ld hl, sp-$20                                 ; $5fce: $f8 $e0
    cp e                                          ; $5fd0: $bb
    db $e3                                        ; $5fd1: $e3
    ld a, [hl]                                    ; $5fd2: $7e
    ei                                            ; $5fd3: $fb
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    inc e                                         ; $5fd8: $1c
    push af                                       ; $5fd9: $f5
    inc c                                         ; $5fda: $0c
    ld [$980b], sp                                ; $5fdb: $08 $0b $98
    ldh [rIE], a                                  ; $5fde: $e0 $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    cp l                                          ; $5fe2: $bd
    push de                                       ; $5fe3: $d5
    dec c                                         ; $5fe4: $0d
    dec c                                         ; $5fe5: $0d
    call c, $d9ff                                 ; $5fe6: $dc $ff $d9
    ld a, [$000d]                                 ; $5fe9: $fa $0d $00
    rst $38                                       ; $5fec: $ff
    ld [c], a                                     ; $5fed: $e2
    push bc                                       ; $5fee: $c5
    ld a, [$fbe0]                                 ; $5fef: $fa $e0 $fb
    ld a, l                                       ; $5ff2: $7d
    cp $e0                                        ; $5ff3: $fe $e0
    rst $38                                       ; $5ff5: $ff
    ld b, b                                       ; $5ff6: $40
    rst $38                                       ; $5ff7: $ff
    rst $38                                       ; $5ff8: $ff
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    nop                                           ; $5ffc: $00
    rst $38                                       ; $5ffd: $ff
    rst $38                                       ; $5ffe: $ff
    rst $38                                       ; $5fff: $ff
    rst $38                                       ; $6000: $ff
    rst $38                                       ; $6001: $ff
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff
    rst $38                                       ; $6006: $ff
    rst $38                                       ; $6007: $ff

jr_049_6008:
    rst $38                                       ; $6008: $ff
    rst $38                                       ; $6009: $ff
    rst $38                                       ; $600a: $ff
    rst $38                                       ; $600b: $ff
    rst $38                                       ; $600c: $ff
    nop                                           ; $600d: $00
    rst $38                                       ; $600e: $ff
    rst $38                                       ; $600f: $ff
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    ld h, $97                                     ; $6012: $26 $97
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    db $fd                                        ; $6017: $fd
    nop                                           ; $6018: $00
    rst $38                                       ; $6019: $ff
    push hl                                       ; $601a: $e5
    ld bc, $0302                                  ; $601b: $01 $02 $03
    inc b                                         ; $601e: $04
    dec b                                         ; $601f: $05
    ld b, $9f                                     ; $6020: $06 $9f
    rlca                                          ; $6022: $07
    ld [$0a09], sp                                ; $6023: $08 $09 $0a
    dec bc                                        ; $6026: $0b
    db $ec                                        ; $6027: $ec
    and $f7                                       ; $6028: $e6 $f7
    rst $20                                       ; $602a: $e7
    inc c                                         ; $602b: $0c
    rst $38                                       ; $602c: $ff
    dec c                                         ; $602d: $0d
    ld [bc], a                                    ; $602e: $02
    ld c, $0f                                     ; $602f: $0e $0f
    db $10                                        ; $6031: $10
    ld de, $1312                                  ; $6032: $11 $12 $13
    rst $28                                       ; $6035: $ef
    inc d                                         ; $6036: $14
    dec d                                         ; $6037: $15
    ld d, $17                                     ; $6038: $16 $17
    ldh [$ec], a                                  ; $603a: $e0 $ec
    jr jr_049_603e                                ; $603c: $18 $00

jr_049_603e:
    nop                                           ; $603e: $00
    rst $38                                       ; $603f: $ff
    add hl, de                                    ; $6040: $19
    ld a, [de]                                    ; $6041: $1a
    dec de                                        ; $6042: $1b
    inc e                                         ; $6043: $1c
    dec e                                         ; $6044: $1d
    ld e, $1f                                     ; $6045: $1e $1f
    jr nz, jr_049_6008                            ; $6047: $20 $bf

    ld hl, $2322                                  ; $6049: $21 $22 $23
    ld b, $24                                     ; $604c: $06 $24
    dec h                                         ; $604e: $25
    ret nz                                        ; $604f: $c0

    jp hl                                         ; $6050: $e9


    ld h, $ff                                     ; $6051: $26 $ff
    daa                                           ; $6053: $27
    jr z, jr_049_607f                             ; $6054: $28 $29

    ld a, [hl+]                                   ; $6056: $2a
    dec hl                                        ; $6057: $2b
    inc l                                         ; $6058: $2c
    dec l                                         ; $6059: $2d
    ld l, $ff                                     ; $605a: $2e $ff
    cpl                                           ; $605c: $2f
    jr nc, jr_049_6090                            ; $605d: $30 $31

    ld [hl-], a                                   ; $605f: $32
    inc sp                                        ; $6060: $33
    inc [hl]                                      ; $6061: $34
    dec [hl]                                      ; $6062: $35
    ld [hl], $fb                                  ; $6063: $36 $fb
    inc h                                         ; $6065: $24
    dec h                                         ; $6066: $25
    ldh [$ea], a                                  ; $6067: $e0 $ea
    scf                                           ; $6069: $37
    jr c, jr_049_60a5                             ; $606a: $38 $39

    ld a, [hl-]                                   ; $606c: $3a
    dec sp                                        ; $606d: $3b
    rst $38                                       ; $606e: $ff
    inc a                                         ; $606f: $3c
    ld b, $3d                                     ; $6070: $06 $3d

Jump_049_6072:
    ld a, $3f                                     ; $6072: $3e $3f
    ld b, $06                                     ; $6074: $06 $06
    ld b, $df                                     ; $6076: $06 $df
    ld b, b                                       ; $6078: $40
    ld b, c                                       ; $6079: $41
    ld b, d                                       ; $607a: $42
    ld b, e                                       ; $607b: $43
    ld b, h                                       ; $607c: $44
    ldh [$eb], a                                  ; $607d: $e0 $eb

jr_049_607f:
    ld b, l                                       ; $607f: $45
    ld b, [hl]                                    ; $6080: $46
    rst $38                                       ; $6081: $ff
    ld b, a                                       ; $6082: $47
    ld c, b                                       ; $6083: $48
    ld c, c                                       ; $6084: $49
    ld b, $06                                     ; $6085: $06 $06
    ld c, d                                       ; $6087: $4a
    ld c, e                                       ; $6088: $4b
    ld c, h                                       ; $6089: $4c
    ld a, a                                       ; $608a: $7f
    ld c, l                                       ; $608b: $4d
    ld c, [hl]                                    ; $608c: $4e
    ld b, $4f                                     ; $608d: $06 $4f
    ld d, b                                       ; $608f: $50

jr_049_6090:
    ld d, c                                       ; $6090: $51
    dec h                                         ; $6091: $25
    rst $38                                       ; $6092: $ff
    ldh [$fe], a                                  ; $6093: $e0 $fe
    ld h, b                                       ; $6095: $60
    jp hl                                         ; $6096: $e9


    ld d, d                                       ; $6097: $52
    ld d, e                                       ; $6098: $53
    ld d, h                                       ; $6099: $54
    ld d, l                                       ; $609a: $55
    ld [bc], a                                    ; $609b: $02
    ld b, $06                                     ; $609c: $06 $06
    rst $38                                       ; $609e: $ff
    ld d, [hl]                                    ; $609f: $56
    ld d, a                                       ; $60a0: $57
    ld e, b                                       ; $60a1: $58
    ld e, c                                       ; $60a2: $59
    ld e, d                                       ; $60a3: $5a
    ld e, e                                       ; $60a4: $5b

jr_049_60a5:
    ld e, h                                       ; $60a5: $5c
    ld e, l                                       ; $60a6: $5d
    cp e                                          ; $60a7: $bb
    ld e, [hl]                                    ; $60a8: $5e
    ld e, a                                       ; $60a9: $5f
    ldh [$ec], a                                  ; $60aa: $e0 $ec
    ld h, b                                       ; $60ac: $60
    ld h, c                                       ; $60ad: $61
    ld h, d                                       ; $60ae: $62
    and a                                         ; $60af: $a7
    ldh [rTMA], a                                 ; $60b0: $e0 $06
    rst $38                                       ; $60b2: $ff
    ld h, e                                       ; $60b3: $63
    ld h, h                                       ; $60b4: $64
    ld h, l                                       ; $60b5: $65
    ld h, [hl]                                    ; $60b6: $66
    ld h, a                                       ; $60b7: $67
    ld l, b                                       ; $60b8: $68
    ld l, c                                       ; $60b9: $69
    ld l, d                                       ; $60ba: $6a
    cp e                                          ; $60bb: $bb
    ld l, e                                       ; $60bc: $6b
    ld l, h                                       ; $60bd: $6c
    ret nz                                        ; $60be: $c0

    db $ec                                        ; $60bf: $ec
    ld l, l                                       ; $60c0: $6d
    ld b, $6e                                     ; $60c1: $06 $6e
    add a                                         ; $60c3: $87
    ldh [$6f], a                                  ; $60c4: $e0 $6f
    rst $38                                       ; $60c6: $ff
    ld [hl], b                                    ; $60c7: $70
    ld [hl], c                                    ; $60c8: $71
    ld [hl], d                                    ; $60c9: $72
    ld [hl], e                                    ; $60ca: $73
    ld [hl], h                                    ; $60cb: $74
    ld [hl], l                                    ; $60cc: $75
    halt                                          ; $60cd: $76
    ld [hl], a                                    ; $60ce: $77
    cp e                                          ; $60cf: $bb
    ld a, b                                       ; $60d0: $78
    ld a, c                                       ; $60d1: $79
    and b                                         ; $60d2: $a0
    db $ec                                        ; $60d3: $ec
    ld b, $06                                     ; $60d4: $06 $06
    ld a, d                                       ; $60d6: $7a
    ld h, a                                       ; $60d7: $67
    ldh [$7b], a                                  ; $60d8: $e0 $7b
    rst $38                                       ; $60da: $ff
    ld a, h                                       ; $60db: $7c
    ld a, l                                       ; $60dc: $7d
    ld a, [hl]                                    ; $60dd: $7e
    ld a, a                                       ; $60de: $7f
    add b                                         ; $60df: $80
    add c                                         ; $60e0: $81
    add d                                         ; $60e1: $82
    add e                                         ; $60e2: $83
    di                                            ; $60e3: $f3
    add h                                         ; $60e4: $84
    add l                                         ; $60e5: $85
    ldh [$ee], a                                  ; $60e6: $e0 $ee
    ld c, b                                       ; $60e8: $48
    ldh [$86], a                                  ; $60e9: $e0 $86
    add a                                         ; $60eb: $87
    adc b                                         ; $60ec: $88
    adc c                                         ; $60ed: $89
    rst $38                                       ; $60ee: $ff
    adc d                                         ; $60ef: $8a
    adc e                                         ; $60f0: $8b
    adc h                                         ; $60f1: $8c
    adc l                                         ; $60f2: $8d
    adc [hl]                                      ; $60f3: $8e
    adc a                                         ; $60f4: $8f
    sub b                                         ; $60f5: $90
    sub c                                         ; $60f6: $91
    rst $30                                       ; $60f7: $f7
    dec h                                         ; $60f8: $25
    dec h                                         ; $60f9: $25
    sub d                                         ; $60fa: $92
    ldh [$ed], a                                  ; $60fb: $e0 $ed
    sub e                                         ; $60fd: $93
    sub h                                         ; $60fe: $94
    sub l                                         ; $60ff: $95
    sub [hl]                                      ; $6100: $96
    rst $38                                       ; $6101: $ff
    sub a                                         ; $6102: $97
    sbc b                                         ; $6103: $98
    sbc c                                         ; $6104: $99
    sbc d                                         ; $6105: $9a
    sbc e                                         ; $6106: $9b
    sbc h                                         ; $6107: $9c
    sbc l                                         ; $6108: $9d
    sbc [hl]                                      ; $6109: $9e
    rst $28                                       ; $610a: $ef
    sbc a                                         ; $610b: $9f
    dec h                                         ; $610c: $25
    dec h                                         ; $610d: $25
    and b                                         ; $610e: $a0
    ret nz                                        ; $610f: $c0

    db $ec                                        ; $6110: $ec
    and c                                         ; $6111: $a1
    and d                                         ; $6112: $a2
    and e                                         ; $6113: $a3
    rst $38                                       ; $6114: $ff
    dec h                                         ; $6115: $25
    and h                                         ; $6116: $a4
    and l                                         ; $6117: $a5
    and [hl]                                      ; $6118: $a6
    and a                                         ; $6119: $a7
    xor b                                         ; $611a: $a8
    xor c                                         ; $611b: $a9
    xor d                                         ; $611c: $aa
    cp a                                          ; $611d: $bf
    xor e                                         ; $611e: $ab
    xor h                                         ; $611f: $ac
    xor l                                         ; $6120: $ad
    sub d                                         ; $6121: $92
    xor [hl]                                      ; $6122: $ae
    xor a                                         ; $6123: $af
    add b                                         ; $6124: $80
    ld [$ffb0], a                                 ; $6125: $ea $b0 $ff
    or c                                          ; $6128: $b1
    or d                                          ; $6129: $b2
    or e                                          ; $612a: $b3
    or h                                          ; $612b: $b4
    dec h                                         ; $612c: $25
    dec h                                         ; $612d: $25
    or l                                          ; $612e: $b5
    or [hl]                                       ; $612f: $b6
    rst $28                                       ; $6130: $ef
    or a                                          ; $6131: $b7

jr_049_6132:
    cp b                                          ; $6132: $b8
    cp c                                          ; $6133: $b9
    cp d                                          ; $6134: $ba
    ld [bc], a                                    ; $6135: $02
    ldh [$bb], a                                  ; $6136: $e0 $bb
    cp h                                          ; $6138: $bc
    cp l                                          ; $6139: $bd
    cp [hl]                                       ; $613a: $be
    ld h, b                                       ; $613b: $60
    ret                                           ; $613c: $c9


    cp [hl]                                       ; $613d: $be
    cp a                                          ; $613e: $bf
    ret nz                                        ; $613f: $c0

    dec h                                         ; $6140: $25
    pop bc                                        ; $6141: $c1
    db $eb                                        ; $6142: $eb
    pop bc                                        ; $6143: $c1
    jp nz, $c3ff                                  ; $6144: $c2 $ff $c3

    call nz, $c6c5                                ; $6147: $c4 $c5 $c6
    rst $00                                       ; $614a: $c7
    dec h                                         ; $614b: $25
    ret z                                         ; $614c: $c8

    ret                                           ; $614d: $c9


    ei                                            ; $614e: $fb
    jp z, $40cb                                   ; $614f: $ca $cb $40

    ret                                           ; $6152: $c9


    call z, $2525                                 ; $6153: $cc $25 $25
    call $fece                                    ; $6156: $cd $ce $fe
    set 0, c                                      ; $6159: $cb $c1
    dec h                                         ; $615b: $25
    rst $08                                       ; $615c: $cf
    ret nc                                        ; $615d: $d0

    pop de                                        ; $615e: $d1
    jp nc, $d4d3                                  ; $615f: $d2 $d3 $d4

    adc a                                         ; $6162: $8f
    push de                                       ; $6163: $d5
    sub $d7                                       ; $6164: $d6 $d7
    ret c                                         ; $6166: $d8

    jr nz, jr_049_6132                            ; $6167: $20 $c9

    push hl                                       ; $6169: $e5
    ld [c], a                                     ; $616a: $e2
    ldh [$e2], a                                  ; $616b: $e0 $e2
    reti                                          ; $616d: $d9


    rst $38                                       ; $616e: $ff
    jp c, $dcdb                                   ; $616f: $da $db $dc

    db $dd                                        ; $6172: $dd
    sbc $df                                       ; $6173: $de $df
    ldh [$e1], a                                  ; $6175: $e0 $e1
    db $fd                                        ; $6177: $fd
    ld [c], a                                     ; $6178: $e2
    ldh [$f3], a                                  ; $6179: $e0 $f3
    db $e3                                        ; $617b: $e3
    db $e4                                        ; $617c: $e4
    push hl                                       ; $617d: $e5
    and $e7                                       ; $617e: $e6 $e7
    add sp, $07                                   ; $6180: $e8 $07
    jp hl                                         ; $6182: $e9


    ld [$e0e2], a                                 ; $6183: $ea $e2 $e0
    ld [$ffff], a                                 ; $6186: $ea $ff $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    nop                                           ; $618f: $00
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    nop                                           ; $61a0: $00
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    db $e3                                        ; $61a4: $e3
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    or b                                          ; $61a8: $b0
    ld h, c                                       ; $61a9: $61
    ldh a, [$61]                                  ; $61aa: $f0 $61
    add e                                         ; $61ac: $83
    ld l, e                                       ; $61ad: $6b
    add hl, de                                    ; $61ae: $19
    ld l, h                                       ; $61af: $6c
    rra                                           ; $61b0: $1f
    ld bc, $0000                                  ; $61b1: $01 $00 $00
    add hl, de                                    ; $61b4: $19
    nop                                           ; $61b5: $00
    ld [hl], b                                    ; $61b6: $70
    nop                                           ; $61b7: $00
    nop                                           ; $61b8: $00
    nop                                           ; $61b9: $00
    rst $38                                       ; $61ba: $ff
    ld e, a                                       ; $61bb: $5f
    ld [hl], b                                    ; $61bc: $70
    nop                                           ; $61bd: $00
    ccf                                           ; $61be: $3f
    inc bc                                        ; $61bf: $03
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    ccf                                           ; $61c2: $3f
    inc bc                                        ; $61c3: $03
    sbc a                                         ; $61c4: $9f
    ld l, $1f                                     ; $61c5: $2e $1f
    ld bc, $011f                                  ; $61c7: $01 $1f $01
    ccf                                           ; $61ca: $3f
    inc bc                                        ; $61cb: $03
    ccf                                           ; $61cc: $3f
    ld [bc], a                                    ; $61cd: $02
    ld [hl], b                                    ; $61ce: $70
    nop                                           ; $61cf: $00
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    sbc a                                         ; $61d2: $9f
    ld a, [hl+]                                   ; $61d3: $2a
    rra                                           ; $61d4: $1f
    ld bc, $001a                                  ; $61d5: $01 $1a $00
    nop                                           ; $61d8: $00
    nop                                           ; $61d9: $00
    sbc a                                         ; $61da: $9f
    ld a, [hl+]                                   ; $61db: $2a
    ld [hl], b                                    ; $61dc: $70
    nop                                           ; $61dd: $00
    add hl, de                                    ; $61de: $19
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    sbc a                                         ; $61e2: $9f
    ld a, [hl+]                                   ; $61e3: $2a
    ld [hl], b                                    ; $61e4: $70
    nop                                           ; $61e5: $00
    rra                                           ; $61e6: $1f
    ld bc, $0000                                  ; $61e7: $01 $00 $00
    rst $38                                       ; $61ea: $ff
    ld e, a                                       ; $61eb: $5f
    ld [hl], b                                    ; $61ec: $70
    nop                                           ; $61ed: $00
    rra                                           ; $61ee: $1f
    ld bc, $00ab                                  ; $61ef: $01 $ab $00
    rst $38                                       ; $61f2: $ff
    cp $fa                                        ; $61f3: $fe $fa
    rst $28                                       ; $61f5: $ef
    ldh [$ec], a                                  ; $61f6: $e0 $ec
    db $fd                                        ; $61f8: $fd
    ret nc                                        ; $61f9: $d0

    ld [c], a                                     ; $61fa: $e2
    cp $be                                        ; $61fb: $fe $be
    ld hl, sp-$20                                 ; $61fd: $f8 $e0
    ld [$5500], a                                 ; $61ff: $ea $00 $55
    nop                                           ; $6202: $00
    xor d                                         ; $6203: $aa
    db $fc                                        ; $6204: $fc
    ldh [$fa], a                                  ; $6205: $e0 $fa
    ld [hl], e                                    ; $6207: $73
    nop                                           ; $6208: $00
    push de                                       ; $6209: $d5
    ld hl, sp-$1e                                 ; $620a: $f8 $e2
    db $f4                                        ; $620c: $f4
    pop hl                                        ; $620d: $e1
    cp a                                          ; $620e: $bf
    nop                                           ; $620f: $00
    ld e, a                                       ; $6210: $5f
    db $ec                                        ; $6211: $ec
    ldh [rIE], a                                  ; $6212: $e0 $ff
    ld d, a                                       ; $6214: $57
    nop                                           ; $6215: $00
    xor a                                         ; $6216: $af
    nop                                           ; $6217: $00
    ld a, a                                       ; $6218: $7f
    nop                                           ; $6219: $00
    cp [hl]                                       ; $621a: $be
    nop                                           ; $621b: $00
    xor c                                         ; $621c: $a9
    push af                                       ; $621d: $f5
    call c, $a0e2                                 ; $621e: $dc $e2 $a0
    db $eb                                        ; $6221: $eb
    cp $c2                                        ; $6222: $fe $c2
    db $e4                                        ; $6224: $e4
    ei                                            ; $6225: $fb
    jp z, $abe0                                   ; $6226: $ca $e0 $ab

    ld l, $d2                                     ; $6229: $2e $d2
    ldh [$bf], a                                  ; $622b: $e0 $bf
    nop                                           ; $622d: $00
    rst $18                                       ; $622e: $df
    jp z, Jump_049_7fe0                           ; $622f: $ca $e0 $7f

    ldh [$ea], a                                  ; $6232: $e0 $ea
    ld l, [hl]                                    ; $6234: $6e
    db $e3                                        ; $6235: $e3
    sub l                                         ; $6236: $95
    ld a, [$e094]                                 ; $6237: $fa $94 $e0
    xor d                                         ; $623a: $aa
    and h                                         ; $623b: $a4
    ldh [$ea], a                                  ; $623c: $e0 $ea
    cp b                                          ; $623e: $b8
    ldh [$98], a                                  ; $623f: $e0 $98
    pop hl                                        ; $6241: $e1
    xor e                                         ; $6242: $ab
    xor a                                         ; $6243: $af
    nop                                           ; $6244: $00
    ld e, [hl]                                    ; $6245: $5e
    nop                                           ; $6246: $00
    or a                                          ; $6247: $b7
    and b                                         ; $6248: $a0
    ld [c], a                                     ; $6249: $e2
    ld d, l                                       ; $624a: $55
    and b                                         ; $624b: $a0
    ldh [$5f], a                                  ; $624c: $e0 $5f
    ld hl, sp-$78                                 ; $624e: $f8 $88
    ldh [$e8], a                                  ; $6250: $e0 $e8
    db $e3                                        ; $6252: $e3
    db $fc                                        ; $6253: $fc
    rst $20                                       ; $6254: $e7

jr_049_6255:
    ld d, h                                       ; $6255: $54
    nop                                           ; $6256: $00
    xor b                                         ; $6257: $a8
    nop                                           ; $6258: $00
    ld b, b                                       ; $6259: $40
    cp $74                                        ; $625a: $fe $74
    db $e4                                        ; $625c: $e4
    ld d, b                                       ; $625d: $50
    nop                                           ; $625e: $00
    and b                                         ; $625f: $a0
    nop                                           ; $6260: $00
    ld bc, $0200                                  ; $6261: $01 $00 $02
    adc e                                         ; $6264: $8b
    nop                                           ; $6265: $00
    dec d                                         ; $6266: $15
    jr nz, jr_049_6255                            ; $6267: $20 $ec

    ld a, [$e836]                                 ; $6269: $fa $36 $e8
    ld a, $e3                                     ; $626c: $3e $e3
    inc l                                         ; $626e: $2c
    pop hl                                        ; $626f: $e1
    rst $30                                       ; $6270: $f7
    cp $74                                        ; $6271: $fe $74
    ldh [$57], a                                  ; $6273: $e0 $57
    nop                                           ; $6275: $00
    xor [hl]                                      ; $6276: $ae
    nop                                           ; $6277: $00
    ld e, l                                       ; $6278: $5d
    nop                                           ; $6279: $00
    cp d                                          ; $627a: $ba
    ld b, b                                       ; $627b: $40
    ld h, $e2                                     ; $627c: $26 $e2
    ld h, h                                       ; $627e: $64
    pop hl                                        ; $627f: $e1
    ld a, [hl-]                                   ; $6280: $3a
    pop hl                                        ; $6281: $e1
    ld h, b                                       ; $6282: $60
    pop hl                                        ; $6283: $e1
    ld h, h                                       ; $6284: $64
    rst $20                                       ; $6285: $e7
    ld l, h                                       ; $6286: $6c
    pop hl                                        ; $6287: $e1
    rst $30                                       ; $6288: $f7
    add $e4                                       ; $6289: $c6 $e4
    sub c                                         ; $628b: $91
    push de                                       ; $628c: $d5
    ld a, h                                       ; $628d: $7c
    ld [c], a                                     ; $628e: $e2
    call nz, $70c1                                ; $628f: $c4 $c1 $70
    db $e3                                        ; $6292: $e3
    ld a, a                                       ; $6293: $7f
    ld [hl], b                                    ; $6294: $70
    and $68                                       ; $6295: $e6 $68
    rst $20                                       ; $6297: $e7
    ld d, b                                       ; $6298: $50
    dec sp                                        ; $6299: $3b
    nop                                           ; $629a: $00
    and d                                         ; $629b: $a2
    ld l, b                                       ; $629c: $68
    db $e4                                        ; $629d: $e4
    and b                                         ; $629e: $a0
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    ld [hl], h                                    ; $62a1: $74
    ldh [$d0], a                                  ; $62a2: $e0 $d0
    jp $80c5                                      ; $62a4: $c3 $c5 $80


    ld l, b                                       ; $62a7: $68
    ldh [$0a], a                                  ; $62a8: $e0 $0a
    ld c, b                                       ; $62aa: $48

jr_049_62ab:
    ld [$ebf4], a                                 ; $62ab: $ea $f4 $eb
    ld [hl], b                                    ; $62ae: $70
    add $03                                       ; $62af: $c6 $03
    db $fc                                        ; $62b1: $fc
    ld sp, hl                                     ; $62b2: $f9
    ld bc, $c0d2                                  ; $62b3: $01 $d2 $c0
    ld a, [$00e3]                                 ; $62b6: $fa $e3 $00
    rst $38                                       ; $62b9: $ff
    rlca                                          ; $62ba: $07
    ld hl, sp-$01                                 ; $62bb: $f8 $ff
    rst $18                                       ; $62bd: $df
    rlca                                          ; $62be: $07
    rst $38                                       ; $62bf: $ff
    ld a, a                                       ; $62c0: $7f
    ld a, a                                       ; $62c1: $7f
    sbc a                                         ; $62c2: $9f
    ld d, c                                       ; $62c3: $51
    ret nz                                        ; $62c4: $c0

    rst $38                                       ; $62c5: $ff
    ld hl, sp-$41                                 ; $62c6: $f8 $bf
    ld a, b                                       ; $62c8: $78
    cp $7e                                        ; $62c9: $fe $7e
    rst $38                                       ; $62cb: $ff
    ccf                                           ; $62cc: $3f
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    ld [c], a                                     ; $62cf: $e2
    nop                                           ; $62d0: $00
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    ldh [$1f], a                                  ; $62d3: $e0 $1f
    ld hl, sp-$19                                 ; $62d5: $f8 $e7
    ld e, $19                                     ; $62d7: $1e $19
    rlca                                          ; $62d9: $07
    ld a, a                                       ; $62da: $7f
    ld b, $83                                     ; $62db: $06 $83
    add e                                         ; $62dd: $83
    pop bc                                        ; $62de: $c1
    pop bc                                        ; $62df: $c1
    ldh a, [$f0]                                  ; $62e0: $f0 $f0
    jr nc, jr_049_62ab                            ; $62e2: $30 $c7

    ccf                                           ; $62e4: $3f
    add b                                         ; $62e5: $80
    ld a, a                                       ; $62e6: $7f
    ret nz                                        ; $62e7: $c0

    cp a                                          ; $62e8: $bf
    ldh [$df], a                                  ; $62e9: $e0 $df
    inc b                                         ; $62eb: $04
    ld [$c1b6], a                                 ; $62ec: $ea $b6 $c1
    sub b                                         ; $62ef: $90
    ld b, d                                       ; $62f0: $42
    pop bc                                        ; $62f1: $c1
    ld h, [hl]                                    ; $62f2: $66
    jp $e366                                      ; $62f3: $c3 $66 $e3


    ld b, d                                       ; $62f6: $42
    jp $cea8                                      ; $62f7: $c3 $a8 $ce


    ret nz                                        ; $62fa: $c0

    ld h, [hl]                                    ; $62fb: $66
    pop hl                                        ; $62fc: $e1
    ld [bc], a                                    ; $62fd: $02
    dec hl                                        ; $62fe: $2b
    nop                                           ; $62ff: $00
    ld d, c                                       ; $6300: $51
    ld c, d                                       ; $6301: $4a
    ldh [rTIMA], a                                ; $6302: $e0 $05
    ld e, [hl]                                    ; $6304: $5e
    ldh [$15], a                                  ; $6305: $e0 $15
    sub [hl]                                      ; $6307: $96
    call nz, $c186                                ; $6308: $c4 $86 $c1
    ld bc, $f857                                  ; $630b: $01 $57 $f8
    call z, $e7b2                                 ; $630e: $cc $b2 $e7
    db $10                                        ; $6311: $10
    jp hl                                         ; $6312: $e9


jr_049_6313:
    inc l                                         ; $6313: $2c
    db $ed                                        ; $6314: $ed
    jp z, $e0e3                                   ; $6315: $ca $e3 $e0

    push bc                                       ; $6318: $c5
    adc d                                         ; $6319: $8a
    db $e3                                        ; $631a: $e3
    ld sp, hl                                     ; $631b: $f9
    push de                                       ; $631c: $d5
    sbc [hl]                                      ; $631d: $9e
    ret nz                                        ; $631e: $c0

    ld c, b                                       ; $631f: $48
    rst $00                                       ; $6320: $c7
    xor e                                         ; $6321: $ab
    nop                                           ; $6322: $00
    ld a, a                                       ; $6323: $7f
    rra                                           ; $6324: $1f
    db $e3                                        ; $6325: $e3
    cpl                                           ; $6326: $2f
    rlca                                          ; $6327: $07
    ld sp, hl                                     ; $6328: $f9
    rra                                           ; $6329: $1f
    rst $20                                       ; $632a: $e7
    jr z, @-$1e                                   ; $632b: $28 $e0

    ld a, a                                       ; $632d: $7f
    jr nc, jr_049_6313                            ; $632e: $30 $e3

    ld a, [hl+]                                   ; $6330: $2a
    db $e3                                        ; $6331: $e3
    rst $38                                       ; $6332: $ff
    db $e3                                        ; $6333: $e3

jr_049_6334:
    db $e3                                        ; $6334: $e3
    add hl, sp                                    ; $6335: $39
    add hl, sp                                    ; $6336: $39
    adc [hl]                                      ; $6337: $8e
    adc [hl]                                      ; $6338: $8e

jr_049_6339:
    jp $f7c3                                      ; $6339: $c3 $c3 $f7


    pop af                                        ; $633c: $f1
    pop af                                        ; $633d: $f1
    ld bc, $a8c4                                  ; $633e: $01 $c4 $a8
    ld bc, $03fc                                  ; $6341: $01 $fc $03
    ldh a, [rIE]                                  ; $6344: $f0 $ff
    rra                                           ; $6346: $1f
    rst $18                                       ; $6347: $df
    rrca                                          ; $6348: $0f
    rst $28                                       ; $6349: $ef
    rlca                                          ; $634a: $07
    rst $20                                       ; $634b: $e7
    dec bc                                        ; $634c: $0b
    db $e3                                        ; $634d: $e3
    rst $00                                       ; $634e: $c7
    dec e                                         ; $634f: $1d
    add c                                         ; $6350: $81
    ld a, [hl]                                    ; $6351: $7e
    ld b, l                                       ; $6352: $45
    and d                                         ; $6353: $a2
    sub $a2                                       ; $6354: $d6 $a2
    ld a, [hl]                                    ; $6356: $7e
    and h                                         ; $6357: $a4
    add b                                         ; $6358: $80
    ld d, b                                       ; $6359: $50
    inc de                                        ; $635a: $13
    ret nz                                        ; $635b: $c0

    and b                                         ; $635c: $a0
    adc [hl]                                      ; $635d: $8e
    ret z                                         ; $635e: $c8

    db $fd                                        ; $635f: $fd
    db $e3                                        ; $6360: $e3
    ld b, b                                       ; $6361: $40
    adc [hl]                                      ; $6362: $8e

jr_049_6363:
    ret nz                                        ; $6363: $c0

    di                                            ; $6364: $f3
    push hl                                       ; $6365: $e5
    xor $a1                                       ; $6366: $ee $a1
    ld [bc], a                                    ; $6368: $02
    inc h                                         ; $6369: $24
    db $e3                                        ; $636a: $e3
    ld a, [hl+]                                   ; $636b: $2a
    jr nz, jr_049_6334                            ; $636c: $20 $c6

    inc e                                         ; $636e: $1c
    call $a534                                    ; $636f: $cd $34 $a5
    jr nz, jr_049_6339                            ; $6372: $20 $c5

    ld e, d                                       ; $6374: $5a
    and e                                         ; $6375: $a3
    ld a, $a9                                     ; $6376: $3e $a9
    add b                                         ; $6378: $80
    ld b, d                                       ; $6379: $42
    and c                                         ; $637a: $a1
    ld e, h                                       ; $637b: $5c
    and l                                         ; $637c: $a5
    ld a, [hl-]                                   ; $637d: $3a
    and c                                         ; $637e: $a1
    inc h                                         ; $637f: $24
    pop hl                                        ; $6380: $e1
    ldh a, [$89]                                  ; $6381: $f0 $89
    ld d, b                                       ; $6383: $50
    and e                                         ; $6384: $a3
    xor [hl]                                      ; $6385: $ae
    jp $f800                                      ; $6386: $c3 $00 $f8


    ld [hl], h                                    ; $6389: $74
    and d                                         ; $638a: $a2
    ld a, [hl]                                    ; $638b: $7e
    db $e3                                        ; $638c: $e3
    add d                                         ; $638d: $82
    ld [c], a                                     ; $638e: $e2
    rrca                                          ; $638f: $0f
    rst $30                                       ; $6390: $f7
    rrca                                          ; $6391: $0f
    rst $30                                       ; $6392: $f7
    rra                                           ; $6393: $1f
    ld c, l                                       ; $6394: $4d
    rst $28                                       ; $6395: $ef
    cp $e1                                        ; $6396: $fe $e1
    ccf                                           ; $6398: $3f
    rst $18                                       ; $6399: $df
    cp $e1                                        ; $639a: $fe $e1

jr_049_639c:
    add b                                         ; $639c: $80
    adc b                                         ; $639d: $88
    db $fc                                        ; $639e: $fc
    ld [bc], a                                    ; $639f: $02
    and [hl]                                      ; $63a0: $a6
    rst $38                                       ; $63a1: $ff
    cp $01                                        ; $63a2: $fe $01
    ld hl, sp+$07                                 ; $63a4: $f8 $07
    ret nz                                        ; $63a6: $c0

    ccf                                           ; $63a7: $3f
    jr c, @+$01                                   ; $63a8: $38 $ff

    cp a                                          ; $63aa: $bf
    ld hl, sp+$7f                                 ; $63ab: $f8 $7f
    ld a, b                                       ; $63ad: $78
    rrca                                          ; $63ae: $0f
    ret nz                                        ; $63af: $c0

    ccf                                           ; $63b0: $3f
    ld e, l                                       ; $63b1: $5d
    add h                                         ; $63b2: $84
    ld sp, hl                                     ; $63b3: $f9
    ei                                            ; $63b4: $fb
    ld b, $f0                                     ; $63b5: $06 $f0
    ld [hl], c                                    ; $63b7: $71
    adc [hl]                                      ; $63b8: $8e
    ldh [rP1], a                                  ; $63b9: $e0 $00
    nop                                           ; $63bb: $00
    rra                                           ; $63bc: $1f
    ld b, b                                       ; $63bd: $40
    rst $38                                       ; $63be: $ff
    rra                                           ; $63bf: $1f
    ldh [$03], a                                  ; $63c0: $e0 $03
    db $ec                                        ; $63c2: $ec
    dec c                                         ; $63c3: $0d
    call c, $9e1d                                 ; $63c4: $dc $1d $9e
    sbc a                                         ; $63c7: $9f
    ld e, $0c                                     ; $63c8: $1e $0c
    ld c, $08                                     ; $63ca: $0e $08
    ld c, $14                                     ; $63cc: $0e $14
    add sp, $3c                                   ; $63ce: $e8 $3c
    pop bc                                        ; $63d0: $c1
    dec hl                                        ; $63d1: $2b
    ld [bc], a                                    ; $63d2: $02
    inc [hl]                                      ; $63d3: $34
    ret nz                                        ; $63d4: $c0

    dec hl                                        ; $63d5: $2b
    inc [hl]                                      ; $63d6: $34
    and h                                         ; $63d7: $a4
    ld d, $83                                     ; $63d8: $16 $83
    sub h                                         ; $63da: $94
    add l                                         ; $63db: $85
    ld c, b                                       ; $63dc: $48
    adc c                                         ; $63dd: $89
    ld d, b                                       ; $63de: $50
    db $eb                                        ; $63df: $eb
    jr z, jr_049_6363                             ; $63e0: $28 $81

    ld [de], a                                    ; $63e2: $12
    call nz, Call_000_2a83                        ; $63e3: $c4 $83 $2a
    sub h                                         ; $63e6: $94
    add h                                         ; $63e7: $84
    ld e, [hl]                                    ; $63e8: $5e
    add c                                         ; $63e9: $81
    db $eb                                        ; $63ea: $eb
    db $10                                        ; $63eb: $10
    and d                                         ; $63ec: $a2
    nop                                           ; $63ed: $00
    add e                                         ; $63ee: $83
    db $fc                                        ; $63ef: $fc
    ld h, e                                       ; $63f0: $63
    ld [hl+], a                                   ; $63f1: $22
    ld l, b                                       ; $63f2: $68
    add c                                         ; $63f3: $81
    ld d, h                                       ; $63f4: $54
    or [hl]                                       ; $63f5: $b6
    adc b                                         ; $63f6: $88
    jr jr_049_639c                                ; $63f7: $18 $a3

    or d                                          ; $63f9: $b2
    and e                                         ; $63fa: $a3
    ld b, b                                       ; $63fb: $40
    add b                                         ; $63fc: $80
    add $76                                       ; $63fd: $c6 $76
    jp $b010                                      ; $63ff: $c3 $10 $b0


    rst $20                                       ; $6402: $e7
    ld a, d                                       ; $6403: $7a
    pop bc                                        ; $6404: $c1
    xor b                                         ; $6405: $a8
    pop hl                                        ; $6406: $e1
    call z, Call_049_4063                         ; $6407: $cc $63 $40
    db $f4                                        ; $640a: $f4
    and $cc                                       ; $640b: $e6 $cc
    db $e4                                        ; $640d: $e4
    ld a, [$ffa5]                                 ; $640e: $fa $a5 $ff
    cp $ff                                        ; $6411: $fe $ff
    push af                                       ; $6413: $f5
    rst $38                                       ; $6414: $ff
    xor b                                         ; $6415: $a8
    db $fc                                        ; $6416: $fc
    ld b, e                                       ; $6417: $43
    ld hl, sp-$05                                 ; $6418: $f8 $fb
    ret nz                                        ; $641a: $c0

    rst $18                                       ; $641b: $df
    cp $e7                                        ; $641c: $fe $e7
    ld b, b                                       ; $641e: $40
    ld e, a                                       ; $641f: $5f
    nop                                           ; $6420: $00
    rra                                           ; $6421: $1f
    ld a, a                                       ; $6422: $7f
    ld a, a                                       ; $6423: $7f
    ld a, b                                       ; $6424: $78
    ccf                                           ; $6425: $3f
    cp b                                          ; $6426: $b8
    ccf                                           ; $6427: $3f
    cp h                                          ; $6428: $bc
    rra                                           ; $6429: $1f
    call c, $e2fe                                 ; $642a: $dc $fe $e2
    rst $30                                       ; $642d: $f7
    sbc $1f                                       ; $642e: $de $1f
    rst $18                                       ; $6430: $df
    ld [hl], e                                    ; $6431: $73
    ld h, c                                       ; $6432: $61
    ld hl, sp+$00                                 ; $6433: $f8 $00
    di                                            ; $6435: $f3
    inc bc                                        ; $6436: $03
    rst $30                                       ; $6437: $f7
    pop hl                                        ; $6438: $e1
    ld bc, $17c0                                  ; $6439: $01 $c0 $17
    jp nz, Jump_000_0c8c                          ; $643c: $c2 $8c $0c

    ld a, [hl]                                    ; $643f: $7e
    ld a, [hl]                                    ; $6440: $7e
    rst $38                                       ; $6441: $ff
    cp $fe                                        ; $6442: $fe $fe
    ld a, h                                       ; $6444: $7c
    ld a, [hl]                                    ; $6445: $7e
    or b                                          ; $6446: $b0
    cp [hl]                                       ; $6447: $be
    add d                                         ; $6448: $82
    cp h                                          ; $6449: $bc
    rst $38                                       ; $644a: $ff
    add l                                         ; $644b: $85
    ret c                                         ; $644c: $d8

    inc bc                                        ; $644d: $03
    ld e, b                                       ; $644e: $58
    inc b                                         ; $644f: $04
    ld b, $00                                     ; $6450: $06 $00
    jr nz, @+$01                                  ; $6452: $20 $ff

    ld b, $30                                     ; $6454: $06 $30
    cpl                                           ; $6456: $2f
    ld b, b                                       ; $6457: $40
    rst $38                                       ; $6458: $ff
    nop                                           ; $6459: $00
    xor $11                                       ; $645a: $ee $11

jr_049_645c:
    ld a, a                                       ; $645c: $7f
    ldh [rNR34], a                                ; $645d: $e0 $1e
    pop af                                        ; $645f: $f1
    ld [$ff5f], sp                                ; $6460: $08 $5f $ff
    cp a                                          ; $6463: $bf
    rst $00                                       ; $6464: $c7
    add b                                         ; $6465: $80
    rst $38                                       ; $6466: $ff
    dec e                                         ; $6467: $1d
    rra                                           ; $6468: $1f
    ld h, d                                       ; $6469: $62
    rlca                                          ; $646a: $07
    ld a, c                                       ; $646b: $79
    inc bc                                        ; $646c: $03
    ld a, h                                       ; $646d: $7c
    ld bc, $7dc3                                  ; $646e: $01 $c3 $7d
    ld bc, $6a40                                  ; $6471: $01 $40 $6a
    ret nz                                        ; $6474: $c0

    ld h, a                                       ; $6475: $67
    cp [hl]                                       ; $6476: $be
    and a                                         ; $6477: $a7
    ld b, b                                       ; $6478: $40
    ret                                           ; $6479: $c9


    ld a, [bc]                                    ; $647a: $0a
    nop                                           ; $647b: $00
    add hl, hl                                    ; $647c: $29
    db $10                                        ; $647d: $10
    inc [hl]                                      ; $647e: $34
    and $ca                                       ; $647f: $e6 $ca
    add e                                         ; $6481: $83
    nop                                           ; $6482: $00
    sbc [hl]                                      ; $6483: $9e
    ret nz                                        ; $6484: $c0

    ld e, a                                       ; $6485: $5f
    inc d                                         ; $6486: $14
    ld h, d                                       ; $6487: $62
    adc h                                         ; $6488: $8c
    ld h, c                                       ; $6489: $61
    jr nz, jr_049_645c                            ; $648a: $20 $d0

    db $e3                                        ; $648c: $e3
    ld [hl], h                                    ; $648d: $74
    ld h, e                                       ; $648e: $63
    adc d                                         ; $648f: $8a
    and l                                         ; $6490: $a5
    ld hl, sp-$5b                                 ; $6491: $f8 $a5
    db $fd                                        ; $6493: $fd
    push af                                       ; $6494: $f5
    ld a, [bc]                                    ; $6495: $0a
    ld c, b                                       ; $6496: $48
    ld h, b                                       ; $6497: $60
    pop hl                                        ; $6498: $e1
    jp hl                                         ; $6499: $e9


    db $fd                                        ; $649a: $fd
    xor d                                         ; $649b: $aa
    call nc, $f4eb                                ; $649c: $d4 $eb $f4
    ldh a, [$f3]                                  ; $649f: $f0 $f3
    ldh a, [$f7]                                  ; $64a1: $f0 $f7
    ldh a, [$df]                                  ; $64a3: $f0 $df
    or $f0                                        ; $64a5: $f6 $f0
    ld sp, hl                                     ; $64a7: $f9
    ld hl, sp-$05                                 ; $64a8: $f8 $fb
    cp $e0                                        ; $64aa: $fe $e0
    db $fc                                        ; $64ac: $fc
    db $fc                                        ; $64ad: $fc
    ld a, a                                       ; $64ae: $7f
    ret nz                                        ; $64af: $c0

    rra                                           ; $64b0: $1f
    add b                                         ; $64b1: $80
    rra                                           ; $64b2: $1f
    ld h, b                                       ; $64b3: $60
    rrca                                          ; $64b4: $0f
    ldh [$fe], a                                  ; $64b5: $e0 $fe
    ldh [$c7], a                                  ; $64b7: $e0 $c7
    add b                                         ; $64b9: $80
    rlca                                          ; $64ba: $07
    ld a, b                                       ; $64bb: $78
    db $dd                                        ; $64bc: $dd
    ld h, b                                       ; $64bd: $60
    jp z, $ee89                                   ; $64be: $ca $89 $ee

    ld h, c                                       ; $64c1: $61
    ld e, $de                                     ; $64c2: $1e $de
    rst $38                                       ; $64c4: $ff
    ld c, $ee                                     ; $64c5: $0e $ee
    inc c                                         ; $64c7: $0c
    db $ec                                        ; $64c8: $ec
    ld [$00e8], sp                                ; $64c9: $08 $e8 $00
    ldh a, [$3f]                                  ; $64cc: $f0 $3f
    ld bc, $03f1                                  ; $64ce: $01 $f1 $03
    db $e3                                        ; $64d1: $e3
    ld bc, $f8c1                                  ; $64d2: $01 $c1 $f8
    add e                                         ; $64d5: $83
    sbc a                                         ; $64d6: $9f
    ld b, c                                       ; $64d7: $41
    rst $38                                       ; $64d8: $ff
    ld a, a                                       ; $64d9: $7f
    add b                                         ; $64da: $80
    ld a, a                                       ; $64db: $7f
    add b                                         ; $64dc: $80
    ccf                                           ; $64dd: $3f
    ret nz                                        ; $64de: $c0

    ld d, a                                       ; $64df: $57
    ld d, b                                       ; $64e0: $50
    ld a, e                                       ; $64e1: $7b
    rrca                                          ; $64e2: $0f
    nop                                           ; $64e3: $00
    xor [hl]                                      ; $64e4: $ae
    and l                                         ; $64e5: $a5
    rst $38                                       ; $64e6: $ff
    nop                                           ; $64e7: $00
    ldh a, [$08]                                  ; $64e8: $f0 $08
    dec d                                         ; $64ea: $15
    ld c, b                                       ; $64eb: $48
    rst $38                                       ; $64ec: $ff
    db $10                                        ; $64ed: $10
    sbc [hl]                                      ; $64ee: $9e
    ld bc, $403e                                  ; $64ef: $01 $3e $40
    ld a, [hl]                                    ; $64f2: $7e
    nop                                           ; $64f3: $00
    ld a, [hl]                                    ; $64f4: $7e
    or $43                                        ; $64f5: $f6 $43
    ld b, b                                       ; $64f7: $40
    ccf                                           ; $64f8: $3f
    ld b, b                                       ; $64f9: $40
    sbc e                                         ; $64fa: $9b
    ldh [rSVBK], a                                ; $64fb: $e0 $70
    ld bc, $7e00                                  ; $64fd: $01 $00 $7e
    di                                            ; $6500: $f3
    ld a, [hl]                                    ; $6501: $7e
    add b                                         ; $6502: $80
    call z, $fea3                                 ; $6503: $cc $a3 $fe
    ldh [$80], a                                  ; $6506: $e0 $80
    ccf                                           ; $6508: $3f
    add b                                         ; $6509: $80
    ccf                                           ; $650a: $3f
    cp $c5                                        ; $650b: $fe $c5
    ldh [$fd], a                                  ; $650d: $e0 $fd
    inc b                                         ; $650f: $04
    db $fd                                        ; $6510: $fd
    ld [$14fd], sp                                ; $6511: $08 $fd $14
    cp $ff                                        ; $6514: $fe $ff
    xor d                                         ; $6516: $aa
    cp $54                                        ; $6517: $fe $54
    cp $ab                                        ; $6519: $fe $ab
    rst $38                                       ; $651b: $ff
    ld e, a                                       ; $651c: $5f
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    db $fc                                        ; $651f: $fc
    and c                                         ; $6520: $a1
    ld a, [hl]                                    ; $6521: $7e
    ld b, b                                       ; $6522: $40
    ld a, a                                       ; $6523: $7f
    ld d, b                                       ; $6524: $50
    rst $38                                       ; $6525: $ff
    ldh [rIE], a                                  ; $6526: $e0 $ff
    cp a                                          ; $6528: $bf
    and b                                         ; $6529: $a0
    cp a                                          ; $652a: $bf
    cp b                                          ; $652b: $b8
    ld l, a                                       ; $652c: $6f
    ld h, b                                       ; $652d: $60
    ld l, a                                       ; $652e: $6f
    ld h, b                                       ; $652f: $60
    cp $5a                                        ; $6530: $fe $5a
    add b                                         ; $6532: $80
    ld sp, hl                                     ; $6533: $f9
    rlca                                          ; $6534: $07
    scf                                           ; $6535: $37
    rst $00                                       ; $6536: $c7
    ld d, a                                       ; $6537: $57
    rst $20                                       ; $6538: $e7
    daa                                           ; $6539: $27
    rst $38                                       ; $653a: $ff
    rst $30                                       ; $653b: $f7
    rla                                           ; $653c: $17
    ei                                            ; $653d: $fb
    dec bc                                        ; $653e: $0b
    db $fd                                        ; $653f: $fd
    dec b                                         ; $6540: $05
    nop                                           ; $6541: $00
    ld b, $ff                                     ; $6542: $06 $ff
    ret nz                                        ; $6544: $c0

    rst $08                                       ; $6545: $cf
    ldh a, [$f7]                                  ; $6546: $f0 $f7
    ld hl, sp-$05                                 ; $6548: $f8 $fb
    inc e                                         ; $654a: $1c
    inc e                                         ; $654b: $1c
    rst $38                                       ; $654c: $ff
    rst $28                                       ; $654d: $ef
    rst $28                                       ; $654e: $ef
    rst $30                                       ; $654f: $f7
    rst $30                                       ; $6550: $f7
    sbc l                                         ; $6551: $9d
    sbc l                                         ; $6552: $9d
    ccf                                           ; $6553: $3f
    ret nz                                        ; $6554: $c0

    sbc e                                         ; $6555: $9b
    rra                                           ; $6556: $1f
    ld h, b                                       ; $6557: $60
    and h                                         ; $6558: $a4
    pop hl                                        ; $6559: $e1
    rlca                                          ; $655a: $07
    ld hl, sp+$20                                 ; $655b: $f8 $20
    ld h, e                                       ; $655d: $63
    add c                                         ; $655e: $81
    dec l                                         ; $655f: $2d
    ld [bc], a                                    ; $6560: $02
    rst $38                                       ; $6561: $ff
    cp $00                                        ; $6562: $fe $00
    db $fc                                        ; $6564: $fc
    dec b                                         ; $6565: $05
    db $fd                                        ; $6566: $fd
    inc bc                                        ; $6567: $03
    ei                                            ; $6568: $fb
    rlca                                          ; $6569: $07
    rst $38                                       ; $656a: $ff
    or $07                                        ; $656b: $f6 $07
    db $f4                                        ; $656d: $f4
    rrca                                          ; $656e: $0f
    add sp, $1f                                   ; $656f: $e8 $1f
    ret nc                                        ; $6571: $d0

    add e                                         ; $6572: $83
    rst $38                                       ; $6573: $ff
    add e                                         ; $6574: $83
    ld a, h                                       ; $6575: $7c
    ld c, h                                       ; $6576: $4c
    rst $38                                       ; $6577: $ff
    rst $20                                       ; $6578: $e7
    rst $38                                       ; $6579: $ff
    inc de                                        ; $657a: $13
    rst $38                                       ; $657b: $ff
    ei                                            ; $657c: $fb
    add hl, bc                                    ; $657d: $09
    rst $38                                       ; $657e: $ff
    push af                                       ; $657f: $f5
    ld h, d                                       ; $6580: $62
    cp a                                          ; $6581: $bf
    cp a                                          ; $6582: $bf
    rst $18                                       ; $6583: $df
    rst $18                                       ; $6584: $df
    ld e, a                                       ; $6585: $5f
    rst $38                                       ; $6586: $ff
    ld e, a                                       ; $6587: $5f
    xor a                                         ; $6588: $af
    xor a                                         ; $6589: $af
    rst $08                                       ; $658a: $cf
    ld c, a                                       ; $658b: $4f

Call_049_658c:
    rst $08                                       ; $658c: $cf
    adc a                                         ; $658d: $8f
    rst $28                                       ; $658e: $ef
    and a                                         ; $658f: $a7
    xor a                                         ; $6590: $af
    rst $28                                       ; $6591: $ef
    adc a                                         ; $6592: $8f
    and [hl]                                      ; $6593: $a6
    ret z                                         ; $6594: $c8

    xor b                                         ; $6595: $a8
    and d                                         ; $6596: $a2
    ld bc, $e0ff                                  ; $6597: $01 $ff $e0
    rlca                                          ; $659a: $07
    rst $38                                       ; $659b: $ff
    rlca                                          ; $659c: $07
    rrca                                          ; $659d: $0f
    rrca                                          ; $659e: $0f
    rlca                                          ; $659f: $07
    rrca                                          ; $65a0: $0f
    ld b, $56                                     ; $65a1: $06 $56
    inc c                                         ; $65a3: $0c
    rst $38                                       ; $65a4: $ff
    xor h                                         ; $65a5: $ac
    add hl, de                                    ; $65a6: $19
    ld a, c                                       ; $65a7: $79
    rlca                                          ; $65a8: $07
    ld e, b                                       ; $65a9: $58
    add b                                         ; $65aa: $80
    sbc h                                         ; $65ab: $9c
    ret nz                                        ; $65ac: $c0

    ld a, a                                       ; $65ad: $7f
    jp c, $ebe0                                   ; $65ae: $da $e0 $eb

    ldh a, [$f3]                                  ; $65b1: $f0 $f3
    db $fc                                        ; $65b3: $fc
    db $fd                                        ; $65b4: $fd
    cp $e2                                        ; $65b5: $fe $e2
    rst $38                                       ; $65b7: $ff
    nop                                           ; $65b8: $00
    db $fd                                        ; $65b9: $fd
    ld bc, $433b                                  ; $65ba: $01 $3b $43

jr_049_65bd:
    rlca                                          ; $65bd: $07
    ld [hl], a                                    ; $65be: $77
    ld c, $ff                                     ; $65bf: $0e $ff
    ld l, [hl]                                    ; $65c1: $6e
    ld a, [de]                                    ; $65c2: $1a
    sbc [hl]                                      ; $65c3: $9e
    inc d                                         ; $65c4: $14
    cp [hl]                                       ; $65c5: $be
    add hl, hl                                    ; $65c6: $29
    cp l                                          ; $65c7: $bd
    ld h, b                                       ; $65c8: $60
    ld e, a                                       ; $65c9: $5f
    nop                                           ; $65ca: $00
    ld h, b                                       ; $65cb: $60
    ld c, h                                       ; $65cc: $4c
    nop                                           ; $65cd: $00
    ld e, $0b                                     ; $65ce: $1e $0b
    ldh [$fe], a                                  ; $65d0: $e0 $fe
    cp $e2                                        ; $65d2: $fe $e2
    ei                                            ; $65d4: $fb
    sbc $00                                       ; $65d5: $de $00
    ld e, a                                       ; $65d7: $5f
    ld b, b                                       ; $65d8: $40
    rst $00                                       ; $65d9: $c7
    inc c                                         ; $65da: $0c
    db $fc                                        ; $65db: $fc
    inc bc                                        ; $65dc: $03
    add b                                         ; $65dd: $80
    rst $38                                       ; $65de: $ff
    ld a, a                                       ; $65df: $7f
    ld a, $ff                                     ; $65e0: $3e $ff
    ld a, a                                       ; $65e2: $7f
    cp $7f                                        ; $65e3: $fe $7f
    pop af                                        ; $65e5: $f1
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    ret nz                                        ; $65e8: $c0

    db $fc                                        ; $65e9: $fc
    db $fc                                        ; $65ea: $fc
    nop                                           ; $65eb: $00
    ld [bc], a                                    ; $65ec: $02
    pop hl                                        ; $65ed: $e1
    db $ed                                        ; $65ee: $ed
    ret                                           ; $65ef: $c9


    rst $38                                       ; $65f0: $ff
    db $db                                        ; $65f1: $db
    dec de                                        ; $65f2: $1b
    ccf                                           ; $65f3: $3f
    scf                                           ; $65f4: $37
    ld a, a                                       ; $65f5: $7f
    ld c, l                                       ; $65f6: $4d
    rst $38                                       ; $65f7: $ff
    ccf                                           ; $65f8: $3f
    ld a, a                                       ; $65f9: $7f
    jr nc, jr_049_663b                            ; $65fa: $30 $3f

    jr nz, jr_049_65bd                            ; $65fc: $20 $bf

    and b                                         ; $65fe: $a0
    rst $38                                       ; $65ff: $ff
    ldh [$fe], a                                  ; $6600: $e0 $fe
    ld [c], a                                     ; $6602: $e2
    rst $30                                       ; $6603: $f7
    ldh a, [rIE]                                  ; $6604: $f0 $ff
    ld hl, sp-$3f                                 ; $6606: $f8 $c1
    ld a, [bc]                                    ; $6608: $0a
    ld bc, $01ff                                  ; $6609: $01 $ff $01
    rst $28                                       ; $660c: $ef
    ld e, l                                       ; $660d: $5d
    rrca                                          ; $660e: $0f
    cp $e4                                        ; $660f: $fe $e4
    xor a                                         ; $6611: $af
    rst $18                                       ; $6612: $df
    sbc a                                         ; $6613: $9f
    cp $e0                                        ; $6614: $fe $e0
    rra                                           ; $6616: $1f
    ld h, b                                       ; $6617: $60
    ld [$0a21], a                                 ; $6618: $ea $21 $0a
    call c, $c0a4                                 ; $661b: $dc $a4 $c0
    and e                                         ; $661e: $a3
    ldh [$63], a                                  ; $661f: $e0 $63
    nop                                           ; $6621: $00
    pop bc                                        ; $6622: $c1
    and b                                         ; $6623: $a0
    ret nc                                        ; $6624: $d0

    adc b                                         ; $6625: $88

Call_049_6626:
    ldh [$e7], a                                  ; $6626: $e0 $e7
    ret nz                                        ; $6628: $c0

    adc d                                         ; $6629: $8a
    ld b, c                                       ; $662a: $41
    rst $28                                       ; $662b: $ef
    ret nz                                        ; $662c: $c0

    or h                                          ; $662d: $b4
    ld b, h                                       ; $662e: $44
    adc b                                         ; $662f: $88
    inc bc                                        ; $6630: $03
    jp z, $f503                                   ; $6631: $ca $03 $f5

    ret nz                                        ; $6634: $c0

    inc bc                                        ; $6635: $03
    rst $38                                       ; $6636: $ff
    ld a, [hl]                                    ; $6637: $7e
    adc b                                         ; $6638: $88
    inc bc                                        ; $6639: $03
    add hl, de                                    ; $663a: $19

jr_049_663b:
    ld sp, hl                                     ; $663b: $f9
    dec sp                                        ; $663c: $3b
    ei                                            ; $663d: $fb
    rst $30                                       ; $663e: $f7
    rst $30                                       ; $663f: $f7
    db $f4                                        ; $6640: $f4
    ld hl, $df3f                                  ; $6641: $21 $3f $df
    rst $18                                       ; $6644: $df
    ccf                                           ; $6645: $3f
    cp a                                          ; $6646: $bf
    ld a, c                                       ; $6647: $79
    ld a, c                                       ; $6648: $79
    sub h                                         ; $6649: $94
    ld a, [bc]                                    ; $664a: $0a
    add $00                                       ; $664b: $c6 $00
    sub a                                         ; $664d: $97
    ld bc, $01fe                                  ; $664e: $01 $fe $01
    sub $01                                       ; $6651: $d6 $01
    ld [$02e2], a                                 ; $6653: $ea $e2 $02
    inc e                                         ; $6656: $1c
    ld b, b                                       ; $6657: $40
    cp h                                          ; $6658: $bc
    rst $38                                       ; $6659: $ff
    inc a                                         ; $665a: $3c
    db $dd                                        ; $665b: $dd
    dec e                                         ; $665c: $1d
    ld e, a                                       ; $665d: $5f
    rra                                           ; $665e: $1f
    ld l, a                                       ; $665f: $6f
    rrca                                          ; $6660: $0f
    ld l, a                                       ; $6661: $6f
    rst $38                                       ; $6662: $ff
    rrca                                          ; $6663: $0f
    xor a                                         ; $6664: $af
    adc a                                         ; $6665: $8f
    or a                                          ; $6666: $b7
    add a                                         ; $6667: $87
    or a                                          ; $6668: $b7
    add a                                         ; $6669: $87
    nop                                           ; $666a: $00
    rst $30                                       ; $666b: $f7
    ld e, $c0                                     ; $666c: $1e $c0
    db $dd                                        ; $666e: $dd
    cp $e0                                        ; $666f: $fe $e0
    db $db                                        ; $6671: $db
    add d                                         ; $6672: $82
    and e                                         ; $6673: $a3
    sbc e                                         ; $6674: $9b
    ld a, a                                       ; $6675: $7f
    sbc e                                         ; $6676: $9b
    ld a, l                                       ; $6677: $7d
    ld a, l                                       ; $6678: $7d
    cp $fe                                        ; $6679: $fe $fe
    nop                                           ; $667b: $00
    rrca                                          ; $667c: $0f
    ld c, [hl]                                    ; $667d: $4e
    ld bc, $40fd                                  ; $667e: $01 $fd $40
    cp $e0                                        ; $6681: $fe $e0
    jr nz, @+$01                                  ; $6683: $20 $ff

    and b                                         ; $6685: $a0
    rst $38                                       ; $6686: $ff
    ret nc                                        ; $6687: $d0

    rst $38                                       ; $6688: $ff
    ld sp, hl                                     ; $6689: $f9
    sub d                                         ; $668a: $92
    adc c                                         ; $668b: $89
    jp $e71d                                      ; $668c: $c3 $1d $e7


    nop                                           ; $668f: $00
    add b                                         ; $6690: $80
    add b                                         ; $6691: $80
    ld d, b                                       ; $6692: $50
    ld d, b                                       ; $6693: $50
    rst $38                                       ; $6694: $ff
    xor b                                         ; $6695: $a8
    xor b                                         ; $6696: $a8
    db $f4                                        ; $6697: $f4
    db $f4                                        ; $6698: $f4
    ld a, [$fcfa]                                 ; $6699: $fa $fa $fc
    db $fc                                        ; $669c: $fc
    ei                                            ; $669d: $fb
    ld a, [$77fa]                                 ; $669e: $fa $fa $77
    ldh [$e2], a                                  ; $66a1: $e0 $e2
    rst $38                                       ; $66a3: $ff
    add $ff                                       ; $66a4: $c6 $ff
    call z, $ffef                                 ; $66a6: $cc $ef $ff
    sbc h                                         ; $66a9: $9c
    rst $38                                       ; $66aa: $ff
    cp b                                          ; $66ab: $b8
    ld a, [c]                                     ; $66ac: $f2
    ret nz                                        ; $66ad: $c0

    ldh a, [$df]                                  ; $66ae: $f0 $df
    ld e, a                                       ; $66b0: $5f
    rst $38                                       ; $66b1: $ff
    rst $08                                       ; $66b2: $cf
    ld c, a                                       ; $66b3: $4f
    xor a                                         ; $66b4: $af
    cpl                                           ; $66b5: $2f
    or a                                          ; $66b6: $b7
    or a                                          ; $66b7: $b7
    or a                                          ; $66b8: $b7
    sub a                                         ; $66b9: $97
    cp a                                          ; $66ba: $bf
    ld a, e                                       ; $66bb: $7b
    ld e, e                                       ; $66bc: $5b
    ld a, e                                       ; $66bd: $7b
    ld c, e                                       ; $66be: $4b
    ei                                            ; $66bf: $fb
    adc e                                         ; $66c0: $8b
    ld [hl], d                                    ; $66c1: $72
    ld l, b                                       ; $66c2: $68
    inc d                                         ; $66c3: $14
    add d                                         ; $66c4: $82
    inc b                                         ; $66c5: $04
    db $e4                                        ; $66c6: $e4
    dec b                                         ; $66c7: $05
    sbc h                                         ; $66c8: $9c
    ldh [$9c], a                                  ; $66c9: $e0 $9c
    ld b, c                                       ; $66cb: $41
    ld e, l                                       ; $66cc: $5d
    ld b, e                                       ; $66cd: $43
    and h                                         ; $66ce: $a4
    ld b, c                                       ; $66cf: $41
    ld [hl], d                                    ; $66d0: $72
    inc hl                                        ; $66d1: $23
    dec b                                         ; $66d2: $05
    ld [bc], a                                    ; $66d3: $02
    ld l, d                                       ; $66d4: $6a
    ld b, b                                       ; $66d5: $40
    rla                                           ; $66d6: $17
    ld l, b                                       ; $66d7: $68
    ld h, b                                       ; $66d8: $60
    db $e4                                        ; $66d9: $e4
    dec h                                         ; $66da: $25
    and b                                         ; $66db: $a0
    ld bc, $635c                                  ; $66dc: $01 $5c $63
    sbc h                                         ; $66df: $9c
    ld b, l                                       ; $66e0: $45

Jump_049_66e1:
    ld [$ffe1], sp                                ; $66e1: $08 $e1 $ff
    xor e                                         ; $66e4: $ab
    ld bc, $0755                                  ; $66e5: $01 $55 $07
    rst $38                                       ; $66e8: $ff
    rrca                                          ; $66e9: $0f
    rst $18                                       ; $66ea: $df
    rra                                           ; $66eb: $1f

jr_049_66ec:
    rst $38                                       ; $66ec: $ff
    cp a                                          ; $66ed: $bf
    rrca                                          ; $66ee: $0f
    ld e, a                                       ; $66ef: $5f
    ld a, [hl]                                    ; $66f0: $7e
    cp $ff                                        ; $66f1: $fe $ff
    rst $38                                       ; $66f3: $ff
    di                                            ; $66f4: $f3
    rst $38                                       ; $66f5: $ff
    di                                            ; $66f6: $f3
    rst $20                                       ; $66f7: $e7
    rst $20                                       ; $66f8: $e7
    rst $28                                       ; $66f9: $ef
    rst $28                                       ; $66fa: $ef
    jp $87c3                                      ; $66fb: $c3 $c3 $87


    rra                                           ; $66fe: $1f
    add a                                         ; $66ff: $87
    adc a                                         ; $6700: $8f
    adc a                                         ; $6701: $8f
    rra                                           ; $6702: $1f
    rra                                           ; $6703: $1f
    ldh a, [rP1]                                  ; $6704: $f0 $00
    jr jr_049_66ec                                ; $6706: $18 $e4

    nop                                           ; $6708: $00
    ld b, l                                       ; $6709: $45
    rst $38                                       ; $670a: $ff
    rst $10                                       ; $670b: $d7
    rst $00                                       ; $670c: $c7
    db $db                                        ; $670d: $db
    jp $c3db                                      ; $670e: $c3 $db $c3


    db $eb                                        ; $6711: $eb
    db $e3                                        ; $6712: $e3
    rst $38                                       ; $6713: $ff
    db $ed                                        ; $6714: $ed
    pop hl                                        ; $6715: $e1
    db $ed                                        ; $6716: $ed
    pop hl                                        ; $6717: $e1
    push af                                       ; $6718: $f5
    pop af                                        ; $6719: $f1
    or $f0                                        ; $671a: $f6 $f0
    rst $38                                       ; $671c: $ff
    add a                                         ; $671d: $87
    rlca                                          ; $671e: $07
    ld h, e                                       ; $671f: $63
    inc bc                                        ; $6720: $03
    ld de, $0901                                  ; $6721: $11 $01 $09
    ld bc, $04a5                                  ; $6724: $01 $a5 $04
    sbc e                                         ; $6727: $9b
    ret nz                                        ; $6728: $c0

    ld bc, $8035                                  ; $6729: $01 $35 $80
    adc d                                         ; $672c: $8a
    daa                                           ; $672d: $27
    ld a, a                                       ; $672e: $7f
    rst $38                                       ; $672f: $ff
    ldh [$3f], a                                  ; $6730: $e0 $3f
    rst $38                                       ; $6732: $ff
    ccf                                           ; $6733: $3f
    db $f4                                        ; $6734: $f4
    db $f4                                        ; $6735: $f4
    ld hl, sp-$08                                 ; $6736: $f8 $f8
    db $f4                                        ; $6738: $f4
    db $f4                                        ; $6739: $f4
    add sp, -$05                                  ; $673a: $e8 $fb
    add sp, -$10                                  ; $673c: $e8 $f0
    rst $38                                       ; $673e: $ff
    ldh [$e4], a                                  ; $673f: $e0 $e4
    db $e4                                        ; $6741: $e4
    add sp, -$18                                  ; $6742: $e8 $e8
    rst $38                                       ; $6744: $ff
    rst $30                                       ; $6745: $f7
    pop af                                        ; $6746: $f1
    rst $38                                       ; $6747: $ff
    pop hl                                        ; $6748: $e1
    ld e, $e0                                     ; $6749: $1e $e0
    jp nz, $c4ff                                  ; $674b: $c2 $ff $c4

    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    add h                                         ; $6750: $84

jr_049_6751:
    rst $38                                       ; $6751: $ff

jr_049_6752:
    adc b                                         ; $6752: $88
    rst $38                                       ; $6753: $ff
    db $10                                        ; $6754: $10
    db $fd                                        ; $6755: $fd
    add l                                         ; $6756: $85
    db $fd                                        ; $6757: $fd
    db $ed                                        ; $6758: $ed
    dec b                                         ; $6759: $05
    cp $e1                                        ; $675a: $fe $e1
    cp $06                                        ; $675c: $fe $06
    cp $e0                                        ; $675e: $fe $e0
    inc c                                         ; $6760: $0c
    cp $08                                        ; $6761: $fe $08
    jp nz, $8c26                                  ; $6763: $c2 $26 $8c

    ld bc, $ca3c                                  ; $6766: $01 $3c $ca
    db $e4                                        ; $6769: $e4
    ld h, c                                       ; $676a: $61
    halt                                          ; $676b: $76
    ld b, e                                       ; $676c: $43
    jr nc, jr_049_6752                            ; $676d: $30 $e3

    db $fd                                        ; $676f: $fd
    nop                                           ; $6770: $00
    jp hl                                         ; $6771: $e9


    rst $10                                       ; $6772: $d7
    inc h                                         ; $6773: $24
    add sp, $05                                   ; $6774: $e8 $05
    and e                                         ; $6776: $a3
    xor a                                         ; $6777: $af
    xor b                                         ; $6778: $a8
    dec b                                         ; $6779: $05
    dec d                                         ; $677a: $15
    ld [$efaa], a                                 ; $677b: $ea $aa $ef
    ld d, l                                       ; $677e: $55
    ld bc, $07fe                                  ; $677f: $01 $fe $07
    add hl, de                                    ; $6782: $19
    and b                                         ; $6783: $a0
    ld [bc], a                                    ; $6784: $02
    db $fd                                        ; $6785: $fd
    dec b                                         ; $6786: $05
    sbc a                                         ; $6787: $9f
    ld a, [$55aa]                                 ; $6788: $fa $aa $55
    ld d, l                                       ; $678b: $55
    xor d                                         ; $678c: $aa
    db $fc                                        ; $678d: $fc
    pop hl                                        ; $678e: $e1
    jr z, jr_049_6751                             ; $678f: $28 $c0

    rst $38                                       ; $6791: $ff
    ld a, a                                       ; $6792: $7f
    sbc a                                         ; $6793: $9f
    ld l, a                                       ; $6794: $6f
    ld c, a                                       ; $6795: $4f
    cp a                                          ; $6796: $bf
    cp a                                          ; $6797: $bf
    ld e, a                                       ; $6798: $5f
    ld e, a                                       ; $6799: $5f
    db $fc                                        ; $679a: $fc
    ldh [rIE], a                                  ; $679b: $e0 $ff
    ld a, h                                       ; $679d: $7c
    cp h                                          ; $679e: $bc
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    db $db                                        ; $67a1: $db
    db $db                                        ; $67a2: $db
    sub a                                         ; $67a3: $97
    sub a                                         ; $67a4: $97
    rst $38                                       ; $67a5: $ff
    cpl                                           ; $67a6: $2f
    cpl                                           ; $67a7: $2f
    pop bc                                        ; $67a8: $c1
    pop bc                                        ; $67a9: $c1
    add a                                         ; $67aa: $87
    add a                                         ; $67ab: $87
    rrca                                          ; $67ac: $0f
    rrca                                          ; $67ad: $0f
    sbc a                                         ; $67ae: $9f
    ccf                                           ; $67af: $3f

jr_049_67b0:
    ccf                                           ; $67b0: $3f
    or $f0                                        ; $67b1: $f6 $f0
    ld a, [$62e6]                                 ; $67b3: $fa $e6 $62
    inc hl                                        ; $67b6: $23
    and e                                         ; $67b7: $a3
    cp $bc                                        ; $67b8: $fe $bc
    xor $c0                                       ; $67ba: $ee $c0
    ld [hl], $e3                                  ; $67bc: $36 $e3
    ld a, a                                       ; $67be: $7f
    ld a, a                                       ; $67bf: $7f
    cp a                                          ; $67c0: $bf
    ccf                                           ; $67c1: $3f
    cp $e3                                        ; $67c2: $fe $e3
    sbc a                                         ; $67c4: $9f
    cp e                                          ; $67c5: $bb
    rra                                           ; $67c6: $1f
    ld e, a                                       ; $67c7: $5f
    cp $e0                                        ; $67c8: $fe $e0
    ld c, a                                       ; $67ca: $4f
    rrca                                          ; $67cb: $0f
    cpl                                           ; $67cc: $2f
    cp $e2                                        ; $67cd: $fe $e2
    ret c                                         ; $67cf: $d8

    rst $38                                       ; $67d0: $ff
    ret c                                         ; $67d1: $d8

    ld sp, hl                                     ; $67d2: $f9
    ld hl, sp-$0f                                 ; $67d3: $f8 $f1
    ldh a, [$f2]                                  ; $67d5: $f0 $f2
    ldh a, [$f4]                                  ; $67d7: $f0 $f4
    rst $38                                       ; $67d9: $ff
    ldh a, [$e0]                                  ; $67da: $f0 $e0
    ldh [$e5], a                                  ; $67dc: $e0 $e5
    db $e4                                        ; $67de: $e4
    ret z                                         ; $67df: $c8

    ret z                                         ; $67e0: $c8

    rst $18                                       ; $67e1: $df
    cp $25                                        ; $67e2: $fe $25
    nop                                           ; $67e4: $00
    ccf                                           ; $67e5: $3f
    nop                                           ; $67e6: $00
    ld l, a                                       ; $67e7: $6f
    nop                                           ; $67e8: $00
    rst $08                                       ; $67e9: $cf
    nop                                           ; $67ea: $00
    adc a                                         ; $67eb: $8f
    dec bc                                        ; $67ec: $0b
    nop                                           ; $67ed: $00
    rra                                           ; $67ee: $1f
    cp $e0                                        ; $67ef: $fe $e0
    xor $fd                                       ; $67f1: $ee $fd
    add b                                         ; $67f3: $80
    push af                                       ; $67f4: $f5
    add c                                         ; $67f5: $81
    ret c                                         ; $67f6: $d8

    add b                                         ; $67f7: $80
    rla                                           ; $67f8: $17
    ld [hl+], a                                   ; $67f9: $22
    jr nz, jr_049_67b0                            ; $67fa: $20 $b4

    db $e3                                        ; $67fc: $e3
    ld a, [$90e7]                                 ; $67fd: $fa $e7 $90
    adc d                                         ; $6800: $8a
    ld e, b                                       ; $6801: $58
    and c                                         ; $6802: $a1
    inc h                                         ; $6803: $24
    pop hl                                        ; $6804: $e1
    ld a, [hl+]                                   ; $6805: $2a
    ld b, h                                       ; $6806: $44
    jp nz, $0130                                  ; $6807: $c2 $30 $01

    ret z                                         ; $680a: $c8

jr_049_680b:
    or b                                          ; $680b: $b0
    daa                                           ; $680c: $27
    call z, $f803                                 ; $680d: $cc $03 $f8
    pop hl                                        ; $6810: $e1
    ld a, a                                       ; $6811: $7f
    ret nz                                        ; $6812: $c0

    rlca                                          ; $6813: $07
    ld c, $81                                     ; $6814: $0e $81
    ld bc, $fffe                                  ; $6816: $01 $fe $ff
    ld a, [bc]                                    ; $6819: $0a
    push af                                       ; $681a: $f5
    ld d, l                                       ; $681b: $55
    xor d                                         ; $681c: $aa
    ld a, [hl+]                                   ; $681d: $2a
    push de                                       ; $681e: $d5
    dec d                                         ; $681f: $15

jr_049_6820:
    ld [$2fbf], a                                 ; $6820: $ea $bf $2f
    ret nc                                        ; $6823: $d0

    ld e, a                                       ; $6824: $5f
    and b                                         ; $6825: $a0
    ld a, [hl+]                                   ; $6826: $2a
    push de                                       ; $6827: $d5
    jr jr_049_680b                                ; $6828: $18 $e1

jr_049_682a:
    ld b, a                                       ; $682a: $47
    rst $38                                       ; $682b: $ff

jr_049_682c:
    cp h                                          ; $682c: $bc
    cp a                                          ; $682d: $bf
    ld b, h                                       ; $682e: $44
    rst $38                                       ; $682f: $ff
    inc b                                         ; $6830: $04
    rst $38                                       ; $6831: $ff
    ld c, $ff                                     ; $6832: $0e $ff
    rst $28                                       ; $6834: $ef
    ld c, $aa                                     ; $6835: $0e $aa
    ld d, l                                       ; $6837: $55
    ld a, a                                       ; $6838: $7f
    adc l                                         ; $6839: $8d
    ld h, c                                       ; $683a: $61
    inc bc                                        ; $683b: $03
    rst $38                                       ; $683c: $ff
    rlca                                          ; $683d: $07
    xor $ae                                       ; $683e: $ee $ae
    add e                                         ; $6840: $83
    ld hl, sp+$58                                 ; $6841: $f8 $58
    ld a, a                                       ; $6843: $7f
    ldh a, [rNR42]                                ; $6844: $f0 $21
    ei                                            ; $6846: $fb
    rst $38                                       ; $6847: $ff
    rst $00                                       ; $6848: $c7
    cp a                                          ; $6849: $bf
    rst $38                                       ; $684a: $ff
    rrca                                          ; $684b: $0f
    cp $7e                                        ; $684c: $fe $7e
    db $fc                                        ; $684e: $fc
    inc e                                         ; $684f: $1c
    db $e3                                        ; $6850: $e3
    ld hl, $fff7                                  ; $6851: $21 $f7 $ff
    rst $30                                       ; $6854: $f7
    rst $28                                       ; $6855: $ef
    rst $28                                       ; $6856: $ef
    rst $08                                       ; $6857: $cf
    rst $08                                       ; $6858: $cf
    rra                                           ; $6859: $1f
    rra                                           ; $685a: $1f
    ccf                                           ; $685b: $3f
    inc bc                                        ; $685c: $03
    ccf                                           ; $685d: $3f
    ld e, a                                       ; $685e: $5f
    and b                                         ; $685f: $a0
    pop bc                                        ; $6860: $c1
    and e                                         ; $6861: $a3
    ld b, a                                       ; $6862: $47
    cp [hl]                                       ; $6863: $be
    and c                                         ; $6864: $a1
    cp [hl]                                       ; $6865: $be
    adc c                                         ; $6866: $89
    ld a, [hl-]                                   ; $6867: $3a
    nop                                           ; $6868: $00
    inc e                                         ; $6869: $1c
    ret nz                                        ; $686a: $c0

    db $fd                                        ; $686b: $fd
    ld [$a404], sp                                ; $686c: $08 $04 $a4
    add sp, $00                                   ; $686f: $e8 $00
    ret nc                                        ; $6871: $d0

    nop                                           ; $6872: $00
    and b                                         ; $6873: $a0
    rst $18                                       ; $6874: $df
    di                                            ; $6875: $f3
    rra                                           ; $6876: $1f
    rst $18                                       ; $6877: $df
    ldh a, [$c0]                                  ; $6878: $f0 $c0
    nop                                           ; $687a: $00
    and a                                         ; $687b: $a7
    ret c                                         ; $687c: $d8

    rst $18                                       ; $687d: $df
    add sp, -$11                                  ; $687e: $e8 $ef
    ccf                                           ; $6880: $3f
    add sp, -$11                                  ; $6881: $e8 $ef
    db $f4                                        ; $6883: $f4
    or $f8                                        ; $6884: $f6 $f8
    ld hl, sp-$65                                 ; $6886: $f8 $9b
    ld b, b                                       ; $6888: $40
    cp $e0                                        ; $6889: $fe $e0
    rst $38                                       ; $688b: $ff
    daa                                           ; $688c: $27
    rst $38                                       ; $688d: $ff
    ld b, b                                       ; $688e: $40
    cp $00                                        ; $688f: $fe $00
    pop hl                                        ; $6891: $e1
    nop                                           ; $6892: $00
    rra                                           ; $6893: $1f
    cp $12                                        ; $6894: $fe $12
    ld h, b                                       ; $6896: $60
    jr c, jr_049_6820                             ; $6897: $38 $87

    inc b                                         ; $6899: $04
    rra                                           ; $689a: $1f
    ld [hl], b                                    ; $689b: $70
    nop                                           ; $689c: $00
    ret nz                                        ; $689d: $c0

    ld a, a                                       ; $689e: $7f
    jr nc, jr_049_68a8                            ; $689f: $30 $07

    jr nc, jr_049_682a                            ; $68a1: $30 $87

    jr nc, jr_049_682c                            ; $68a3: $30 $87

    nop                                           ; $68a5: $00
    add h                                         ; $68a6: $84
    nop                                           ; $68a7: $00

jr_049_68a8:
    cp $fe                                        ; $68a8: $fe $fe
    pop hl                                        ; $68aa: $e1
    ld bc, $0401                                  ; $68ab: $01 $01 $04
    ldh a, [rDIV]                                 ; $68ae: $f0 $04
    pop af                                        ; $68b0: $f1
    inc b                                         ; $68b1: $04
    inc bc                                        ; $68b2: $03
    pop af                                        ; $68b3: $f1
    nop                                           ; $68b4: $00
    ld b, e                                       ; $68b5: $43
    ld h, b                                       ; $68b6: $60
    call $cc61                                    ; $68b7: $cd $61 $cc
    and c                                         ; $68ba: $a1
    and b                                         ; $68bb: $a0
    pop bc                                        ; $68bc: $c1
    sbc h                                         ; $68bd: $9c
    ret nz                                        ; $68be: $c0

    rst $38                                       ; $68bf: $ff
    ldh [rNR13], a                                ; $68c0: $e0 $13
    sbc a                                         ; $68c2: $9f
    rra                                           ; $68c3: $1f
    ld a, [hl]                                    ; $68c4: $7e
    db $e4                                        ; $68c5: $e4
    add d                                         ; $68c6: $82
    inc bc                                        ; $68c7: $03
    ld a, [hl+]                                   ; $68c8: $2a
    ld c, b                                       ; $68c9: $48
    add b                                         ; $68ca: $80
    ld b, b                                       ; $68cb: $40
    and c                                         ; $68cc: $a1
    db $e4                                        ; $68cd: $e4
    jp Jump_049_7ef8                              ; $68ce: $c3 $f8 $7e


    inc bc                                        ; $68d1: $03
    db $e4                                        ; $68d2: $e4
    jp $0272                                      ; $68d3: $c3 $72 $02


    ld [bc], a                                    ; $68d6: $02
    db $fd                                        ; $68d7: $fd
    dec d                                         ; $68d8: $15
    ld [$ed00], a                                 ; $68d9: $ea $00 $ed
    cp a                                          ; $68dc: $bf
    ldh a, [$c1]                                  ; $68dd: $f0 $c1
    dec d                                         ; $68df: $15
    ld [$c1f8], a                                 ; $68e0: $ea $f8 $c1
    xor a                                         ; $68e3: $af
    ld d, b                                       ; $68e4: $50
    ld a, a                                       ; $68e5: $7f
    rst $38                                       ; $68e6: $ff
    add b                                         ; $68e7: $80
    xor e                                         ; $68e8: $ab
    ld d, h                                       ; $68e9: $54
    ld d, a                                       ; $68ea: $57
    xor b                                         ; $68eb: $a8
    xor e                                         ; $68ec: $ab
    ld d, h                                       ; $68ed: $54
    ld e, a                                       ; $68ee: $5f
    rst $30                                       ; $68ef: $f7
    and b                                         ; $68f0: $a0
    cp a                                          ; $68f1: $bf
    ld b, b                                       ; $68f2: $40
    ld hl, sp-$3e                                 ; $68f3: $f8 $c2
    nop                                           ; $68f5: $00
    rst $38                                       ; $68f6: $ff
    rra                                           ; $68f7: $1f
    rst $38                                       ; $68f8: $ff
    and l                                         ; $68f9: $a5
    rrca                                          ; $68fa: $0f
    db $fc                                        ; $68fb: $fc
    ldh [$3f], a                                  ; $68fc: $e0 $3f
    ld hl, sp-$20                                 ; $68fe: $f8 $e0
    rst $30                                       ; $6900: $f7
    pop bc                                        ; $6901: $c1
    rra                                           ; $6902: $1f
    sub b                                         ; $6903: $90
    add b                                         ; $6904: $80
    rla                                           ; $6905: $17
    cp a                                          ; $6906: $bf
    rst $38                                       ; $6907: $ff
    cp e                                          ; $6908: $bb
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    db $fc                                        ; $690b: $fc
    db $fc                                        ; $690c: $fc
    jp c, $fe02                                   ; $690d: $da $02 $fe

    rst $38                                       ; $6910: $ff
    ld hl, sp-$48                                 ; $6911: $f8 $b8
    ldh a, [$f0]                                  ; $6913: $f0 $f0
    ret nz                                        ; $6915: $c0

    ret nz                                        ; $6916: $c0

    ld [$df08], sp                                ; $6917: $08 $08 $df
    ld [hl], e                                    ; $691a: $73
    ld [hl], e                                    ; $691b: $73
    rst $00                                       ; $691c: $c7
    rst $00                                       ; $691d: $c7
    rrca                                          ; $691e: $0f
    rst $38                                       ; $691f: $ff
    ldh [$bf], a                                  ; $6920: $e0 $bf
    cp a                                          ; $6922: $bf
    rst $30                                       ; $6923: $f7
    ccf                                           ; $6924: $3f
    ccf                                           ; $6925: $3f
    ld a, a                                       ; $6926: $7f
    call $f7c2                                    ; $6927: $cd $c2 $f7
    rst $30                                       ; $692a: $f7
    rst $08                                       ; $692b: $cf
    rst $08                                       ; $692c: $cf
    db $e3                                        ; $692d: $e3
    ccf                                           ; $692e: $3f
    ccf                                           ; $692f: $3f
    ld a, $02                                     ; $6930: $3e $02
    jp nz, Jump_049_5281                          ; $6932: $c2 $81 $52

    inc bc                                        ; $6935: $03
    and b                                         ; $6936: $a0
    nop                                           ; $6937: $00
    ld a, l                                       ; $6938: $7d
    ld h, h                                       ; $6939: $64
    ld c, $20                                     ; $693a: $0e $20
    db $f4                                        ; $693c: $f4
    ld h, c                                       ; $693d: $61
    ld b, b                                       ; $693e: $40
    ld l, d                                       ; $693f: $6a
    inc hl                                        ; $6940: $23
    ldh [$81], a                                  ; $6941: $e0 $81
    db $eb                                        ; $6943: $eb
    db $e3                                        ; $6944: $e3
    ldh [$81], a                                  ; $6945: $e0 $81
    cp $e2                                        ; $6947: $fe $e2
    add c                                         ; $6949: $81
    or $f0                                        ; $694a: $f6 $f0
    ldh a, [$f1]                                  ; $694c: $f0 $f1
    pop af                                        ; $694e: $f1
    rst $30                                       ; $694f: $f7
    db $f4                                        ; $6950: $f4
    cp e                                          ; $6951: $bb
    rst $30                                       ; $6952: $f7
    db $e4                                        ; $6953: $e4
    db $ec                                        ; $6954: $ec
    ret nz                                        ; $6955: $c0

    add sp, -$11                                  ; $6956: $e8 $ef
    pop hl                                        ; $6958: $e1
    cp $e0                                        ; $6959: $fe $e0
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    db $e4                                        ; $695d: $e4
    rst $38                                       ; $695e: $ff
    ret c                                         ; $695f: $d8

    rst $38                                       ; $6960: $ff
    ld hl, sp-$41                                 ; $6961: $f8 $bf
    ldh a, [$7f]                                  ; $6963: $f0 $7f
    ld d, c                                       ; $6965: $51
    ldh a, [rNR12]                                ; $6966: $f0 $12
    ld h, b                                       ; $6968: $60
    ld a, [bc]                                    ; $6969: $0a
    ld h, b                                       ; $696a: $60
    ld a, [$dfc1]                                 ; $696b: $fa $c1 $df
    cp $e2                                        ; $696e: $fe $e2
    cp a                                          ; $6970: $bf
    dec e                                         ; $6971: $1d
    jp nz, $c920                                  ; $6972: $c2 $20 $c9

    ld b, e                                       ; $6975: $43
    ld a, [$8ae7]                                 ; $6976: $fa $e7 $8a
    and l                                         ; $6979: $a5
    add d                                         ; $697a: $82
    and l                                         ; $697b: $a5
    ld hl, sp-$3e                                 ; $697c: $f8 $c2
    ld [bc], a                                    ; $697e: $02
    ldh [$88], a                                  ; $697f: $e0 $88
    db $ec                                        ; $6981: $ec
    and c                                         ; $6982: $a1
    rst $38                                       ; $6983: $ff
    xor d                                         ; $6984: $aa
    inc b                                         ; $6985: $04
    dec d                                         ; $6986: $15
    inc c                                         ; $6987: $0c
    xor [hl]                                      ; $6988: $ae
    ld e, $5f                                     ; $6989: $1e $5f
    ld e, $db                                     ; $698b: $1e $db
    cp [hl]                                       ; $698d: $be
    ld e, $1c                                     ; $698e: $1e $1c
    add b                                         ; $6990: $80
    dec b                                         ; $6991: $05
    ld a, [$24fd]                                 ; $6992: $fa $fd $24

jr_049_6995:
    ld d, a                                       ; $6995: $57
    nop                                           ; $6996: $00
    rra                                           ; $6997: $1f
    xor e                                         ; $6998: $ab
    ld bc, $ab5e                                  ; $6999: $01 $5e $ab
    ld d, h                                       ; $699c: $54
    ld [$e8a3], sp                                ; $699d: $08 $a3 $e8
    pop hl                                        ; $69a0: $e1
    nop                                           ; $69a1: $00
    and d                                         ; $69a2: $a2
    ld c, $dd                                     ; $69a3: $0e $dd
    add c                                         ; $69a5: $81
    ld d, b                                       ; $69a6: $50
    ld d, l                                       ; $69a7: $55
    xor d                                         ; $69a8: $aa
    call nc, $eca1                                ; $69a9: $d4 $a1 $ec
    add $94                                       ; $69ac: $c6 $94
    ld b, e                                       ; $69ae: $43
    db $fd                                        ; $69af: $fd
    ld b, b                                       ; $69b0: $40
    ld [c], a                                     ; $69b1: $e2
    jp c, Jump_000_3fa0                           ; $69b2: $da $a0 $3f

    ld a, e                                       ; $69b5: $7b
    jr nz, jr_049_6995                            ; $69b6: $20 $dd

    and d                                         ; $69b8: $a2
    daa                                           ; $69b9: $27
    ld [bc], a                                    ; $69ba: $02
    rst $38                                       ; $69bb: $ff
    ld hl, sp-$08                                 ; $69bc: $f8 $f8
    cp $ee                                        ; $69be: $fe $ee
    dec bc                                        ; $69c0: $0b
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    add c                                         ; $69c3: $81
    add c                                         ; $69c4: $81
    rlca                                          ; $69c5: $07
    rlca                                          ; $69c6: $07
    ld [c], a                                     ; $69c7: $e2
    rst $38                                       ; $69c8: $ff
    ld [c], a                                     ; $69c9: $e2
    ld hl, sp-$08                                 ; $69ca: $f8 $f8
    ld sp, hl                                     ; $69cc: $f9
    ld sp, hl                                     ; $69cd: $f9
    jp Jump_000_07c3                              ; $69ce: $c3 $c3 $07


    or c                                          ; $69d1: $b1
    rlca                                          ; $69d2: $07
    inc d                                         ; $69d3: $14
    add l                                         ; $69d4: $85
    ldh [$e6], a                                  ; $69d5: $e0 $e6
    add [hl]                                      ; $69d7: $86
    ld c, e                                       ; $69d8: $4b
    nop                                           ; $69d9: $00
    rlca                                          ; $69da: $07
    rst $38                                       ; $69db: $ff
    ld b, b                                       ; $69dc: $40
    inc e                                         ; $69dd: $1c
    di                                            ; $69de: $f3
    inc bc                                        ; $69df: $03
    ccf                                           ; $69e0: $3f
    dec c                                         ; $69e1: $0d
    ld [hl+], a                                   ; $69e2: $22
    ld h, h                                       ; $69e3: $64
    ld hl, $00c0                                  ; $69e4: $21 $c0 $00
    ldh a, [rP1]                                  ; $69e7: $f0 $00
    rst $38                                       ; $69e9: $ff
    jr jr_049_69ec                                ; $69ea: $18 $00

jr_049_69ec:
    inc c                                         ; $69ec: $0c
    add b                                         ; $69ed: $80
    add [hl]                                      ; $69ee: $86
    ld h, b                                       ; $69ef: $60
    and $10                                       ; $69f0: $e6 $10
    ld c, c                                       ; $69f2: $49

jr_049_69f3:
    rst $30                                       ; $69f3: $f7
    jp nc, $ec00                                  ; $69f4: $d2 $00 $ec

    ret nz                                        ; $69f7: $c0

    db $eb                                        ; $69f8: $eb
    cp $e1                                        ; $69f9: $fe $e1
    xor [hl]                                      ; $69fb: $ae
    jr nz, jr_049_69f3                            ; $69fc: $20 $f5

    cp $e1                                        ; $69fe: $fe $e1
    ld a, [$24f6]                                 ; $6a00: $fa $f6 $24
    ldh [$d8], a                                  ; $6a03: $e0 $d8
    ld h, b                                       ; $6a05: $60
    rst $30                                       ; $6a06: $f7
    ld a, a                                       ; $6a07: $7f
    db $fc                                        ; $6a08: $fc
    ccf                                           ; $6a09: $3f
    ei                                            ; $6a0a: $fb
    cp $30                                        ; $6a0b: $fe $30
    ld [hl+], a                                   ; $6a0d: $22
    ld [$60ff], sp                                ; $6a0e: $08 $ff $60

jr_049_6a11:
    rst $38                                       ; $6a11: $ff
    add c                                         ; $6a12: $81
    rst $38                                       ; $6a13: $ff
    ld [bc], a                                    ; $6a14: $02
    add [hl]                                      ; $6a15: $86
    ld [$9840], a                                 ; $6a16: $ea $40 $98
    cp a                                          ; $6a19: $bf
    ld [hl], d                                    ; $6a1a: $72
    ret nz                                        ; $6a1b: $c0

    and [hl]                                      ; $6a1c: $a6
    ld h, c                                       ; $6a1d: $61
    ld [hl], b                                    ; $6a1e: $70
    and $f0                                       ; $6a1f: $e6 $f0
    call nz, $ff01                                ; $6a21: $c4 $01 $ff
    inc bc                                        ; $6a24: $03
    ld bc, $0215                                  ; $6a25: $01 $15 $02
    dec bc                                        ; $6a28: $0b
    inc bc                                        ; $6a29: $03
    ld d, a                                       ; $6a2a: $57
    ld a, [hl-]                                   ; $6a2b: $3a
    rst $38                                       ; $6a2c: $ff
    cp e                                          ; $6a2d: $bb
    add hl, sp                                    ; $6a2e: $39
    ld a, c                                       ; $6a2f: $79
    ld a, c                                       ; $6a30: $79
    ld a, c                                       ; $6a31: $79
    cp b                                          ; $6a32: $b8
    cp b                                          ; $6a33: $b8
    db $fc                                        ; $6a34: $fc
    ldh a, [rLY]                                  ; $6a35: $f0 $44
    add b                                         ; $6a37: $80
    ld b, d                                       ; $6a38: $42
    add c                                         ; $6a39: $81
    inc b                                         ; $6a3a: $04
    add c                                         ; $6a3b: $81
    nop                                           ; $6a3c: $00
    add b                                         ; $6a3d: $80
    ei                                            ; $6a3e: $fb
    set 6, a                                      ; $6a3f: $cb $f7
    rst $10                                       ; $6a41: $d7
    rst $38                                       ; $6a42: $ff
    db $eb                                        ; $6a43: $eb
    db $eb                                        ; $6a44: $eb
    rst $30                                       ; $6a45: $f7
    or $ee                                        ; $6a46: $f6 $ee
    sbc a                                         ; $6a48: $9f
    ld h, b                                       ; $6a49: $60
    ld a, a                                       ; $6a4a: $7f
    rst $18                                       ; $6a4b: $df
    add b                                         ; $6a4c: $80
    xor d                                         ; $6a4d: $aa
    ld d, l                                       ; $6a4e: $55
    dec d                                         ; $6a4f: $15
    ld [$a1e4], a                                 ; $6a50: $ea $e4 $a1
    rst $38                                       ; $6a53: $ff
    jr c, jr_049_6a11                             ; $6a54: $38 $bb

    rst $38                                       ; $6a56: $ff
    cp l                                          ; $6a57: $bd
    reti                                          ; $6a58: $d9


    ret nz                                        ; $6a59: $c0

    xor b                                         ; $6a5a: $a8
    cp a                                          ; $6a5b: $bf
    ld b, b                                       ; $6a5c: $40
    adc h                                         ; $6a5d: $8c
    ld a, [hl+]                                   ; $6a5e: $2a
    rrca                                          ; $6a5f: $0f
    cp $d2                                        ; $6a60: $fe $d2
    add d                                         ; $6a62: $82
    rra                                           ; $6a63: $1f
    rst $38                                       ; $6a64: $ff
    ld c, a                                       ; $6a65: $4f
    rst $38                                       ; $6a66: $ff
    ld b, a                                       ; $6a67: $47
    rst $38                                       ; $6a68: $ff
    rst $28                                       ; $6a69: $ef
    cp $35                                        ; $6a6a: $fe $35
    ld h, c                                       ; $6a6c: $61
    db $ed                                        ; $6a6d: $ed
    db $ed                                        ; $6a6e: $ed
    set 1, e                                      ; $6a6f: $cb $cb
    add e                                         ; $6a71: $83
    add e                                         ; $6a72: $83
    nop                                           ; $6a73: $00
    cp a                                          ; $6a74: $bf
    nop                                           ; $6a75: $00
    pop bc                                        ; $6a76: $c1
    pop bc                                        ; $6a77: $c1
    add e                                         ; $6a78: $83
    add e                                         ; $6a79: $83
    rst $28                                       ; $6a7a: $ef
    xor $e0                                       ; $6a7b: $ee $e0
    di                                            ; $6a7d: $f3
    adc l                                         ; $6a7e: $8d
    di                                            ; $6a7f: $f3
    db $e4                                        ; $6a80: $e4
    and c                                         ; $6a81: $a1
    ld bc, $d401                                  ; $6a82: $01 $01 $d4
    ld b, c                                       ; $6a85: $41
    sub b                                         ; $6a86: $90
    rlca                                          ; $6a87: $07
    dec hl                                        ; $6a88: $2b
    ld bc, $fe3f                                  ; $6a89: $01 $3f $fe
    pop de                                        ; $6a8c: $d1
    ld a, [hl+]                                   ; $6a8d: $2a
    db $fc                                        ; $6a8e: $fc
    nop                                           ; $6a8f: $00
    ld hl, sp+$00                                 ; $6a90: $f8 $00
    ld [hl], b                                    ; $6a92: $70
    halt                                          ; $6a93: $76
    ld a, b                                       ; $6a94: $78
    rst $18                                       ; $6a95: $df
    ld a, d                                       ; $6a96: $7a
    ld a, h                                       ; $6a97: $7c
    ld a, h                                       ; $6a98: $7c
    ld a, h                                       ; $6a99: $7c
    ld a, l                                       ; $6a9a: $7d
    jp nc, $fd01                                  ; $6a9b: $d2 $01 $fd

    db $fd                                        ; $6a9e: $fd
    rst $38                                       ; $6a9f: $ff
    ld sp, hl                                     ; $6aa0: $f9
    ei                                            ; $6aa1: $fb
    ld a, a                                       ; $6aa2: $7f
    rst $38                                       ; $6aa3: $ff
    ld e, a                                       ; $6aa4: $5f
    cp $3f                                        ; $6aa5: $fe $3f
    db $fc                                        ; $6aa7: $fc
    ld e, e                                       ; $6aa8: $5b
    ld a, a                                       ; $6aa9: $7f
    ei                                            ; $6aaa: $fb
    sub e                                         ; $6aab: $93
    and c                                         ; $6aac: $a1
    rst $38                                       ; $6aad: $ff
    db $fc                                        ; $6aae: $fc
    db $10                                        ; $6aaf: $10
    jr nz, jr_049_6ae2                            ; $6ab0: $20 $30

    db $e3                                        ; $6ab2: $e3
    jr nz, @-$16                                  ; $6ab3: $20 $e8

    ld a, d                                       ; $6ab5: $7a
    rst $00                                       ; $6ab6: $c7
    or d                                          ; $6ab7: $b2
    nop                                           ; $6ab8: $00
    cp $e1                                        ; $6ab9: $fe $e1
    ld sp, hl                                     ; $6abb: $f9
    cp $e2                                        ; $6abc: $fe $e2
    push af                                       ; $6abe: $f5
    dec b                                         ; $6abf: $05
    push af                                       ; $6ac0: $f5
    ld sp, hl                                     ; $6ac1: $f9
    dec b                                         ; $6ac2: $05
    jr nc, jr_049_6ae5                            ; $6ac3: $30 $20

    db $fc                                        ; $6ac5: $fc
    pop hl                                        ; $6ac6: $e1
    dec d                                         ; $6ac7: $15
    nop                                           ; $6ac8: $00
    cpl                                           ; $6ac9: $2f
    nop                                           ; $6aca: $00
    rra                                           ; $6acb: $1f
    cp a                                          ; $6acc: $bf
    inc b                                         ; $6acd: $04
    ccf                                           ; $6ace: $3f
    inc c                                         ; $6acf: $0c
    ld a, l                                       ; $6ad0: $7d
    ld bc, $35ab                                  ; $6ad1: $01 $ab $35
    add c                                         ; $6ad4: $81
    inc bc                                        ; $6ad5: $03
    db $fc                                        ; $6ad6: $fc
    reti                                          ; $6ad7: $d9


    jr nz, jr_049_6b13                            ; $6ad8: $20 $39

    and e                                         ; $6ada: $a3
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    ld h, c                                       ; $6add: $61
    pop hl                                        ; $6ade: $e1
    ldh a, [$f0]                                  ; $6adf: $f0 $f0
    di                                            ; $6ae1: $f3

jr_049_6ae2:
    ld hl, sp-$08                                 ; $6ae2: $f8 $f8
    db $10                                        ; $6ae4: $10

jr_049_6ae5:
    pop hl                                        ; $6ae5: $e1
    add h                                         ; $6ae6: $84
    ld c, c                                       ; $6ae7: $49
    ccf                                           ; $6ae8: $3f
    ccf                                           ; $6ae9: $3f
    rra                                           ; $6aea: $1f
    rra                                           ; $6aeb: $1f
    rst $38                                       ; $6aec: $ff
    adc a                                         ; $6aed: $8f
    adc a                                         ; $6aee: $8f
    rst $20                                       ; $6aef: $e7
    rst $20                                       ; $6af0: $e7
    ld a, a                                       ; $6af1: $7f
    ld a, l                                       ; $6af2: $7d
    rst $38                                       ; $6af3: $ff
    ld a, [$ffef]                                 ; $6af4: $fa $ef $ff
    rst $38                                       ; $6af7: $ff
    inc sp                                        ; $6af8: $33
    inc sp                                        ; $6af9: $33
    jr c, @-$3d                                   ; $6afa: $38 $c1

    sbc a                                         ; $6afc: $9f
    sbc a                                         ; $6afd: $9f
    rst $08                                       ; $6afe: $cf
    rlca                                          ; $6aff: $07
    rst $08                                       ; $6b00: $cf
    rst $38                                       ; $6b01: $ff
    pop bc                                        ; $6b02: $c1
    ldh a, [$e0]                                  ; $6b03: $f0 $e0
    jr nz, jr_049_6b29                            ; $6b05: $20 $22

    ld c, h                                       ; $6b07: $4c
    push bc                                       ; $6b08: $c5
    inc c                                         ; $6b09: $0c
    and b                                         ; $6b0a: $a0
    inc e                                         ; $6b0b: $1c
    ret z                                         ; $6b0c: $c8

    ret nc                                        ; $6b0d: $d0

    ld a, [$1061]                                 ; $6b0e: $fa $61 $10
    res 7, d                                      ; $6b11: $cb $ba

jr_049_6b13:
    inc c                                         ; $6b13: $0c
    ld h, $c5                                     ; $6b14: $26 $c5
    ld d, b                                       ; $6b16: $50
    sbc d                                         ; $6b17: $9a
    ld [bc], a                                    ; $6b18: $02
    add b                                         ; $6b19: $80
    rra                                           ; $6b1a: $1f
    db $fc                                        ; $6b1b: $fc
    ld e, $c0                                     ; $6b1c: $1e $c0
    ld c, h                                       ; $6b1e: $4c
    ld c, c                                       ; $6b1f: $49
    ld sp, hl                                     ; $6b20: $f9
    ei                                            ; $6b21: $fb
    ld sp, hl                                     ; $6b22: $f9
    ei                                            ; $6b23: $fb
    di                                            ; $6b24: $f3
    rst $30                                       ; $6b25: $f7
    ld a, [hl]                                    ; $6b26: $7e
    cp $e1                                        ; $6b27: $fe $e1

jr_049_6b29:
    rst $30                                       ; $6b29: $f7
    rst $30                                       ; $6b2a: $f7
    rst $20                                       ; $6b2b: $e7
    rst $28                                       ; $6b2c: $ef
    rst $20                                       ; $6b2d: $e7
    rst $28                                       ; $6b2e: $ef
    ld a, [de]                                    ; $6b2f: $1a
    and e                                         ; $6b30: $a3
    xor $12                                       ; $6b31: $ee $12
    ld b, b                                       ; $6b33: $40
    ret z                                         ; $6b34: $c8

    rst $38                                       ; $6b35: $ff
    or b                                          ; $6b36: $b0
    db $f4                                        ; $6b37: $f4
    pop hl                                        ; $6b38: $e1
    push af                                       ; $6b39: $f5
    ld bc, $7fed                                  ; $6b3a: $01 $ed $7f
    add hl, bc                                    ; $6b3d: $09
    xor $0a                                       ; $6b3e: $ee $0a
    xor $02                                       ; $6b40: $ee $02
    sbc $10                                       ; $6b42: $de $10
    cp $e0                                        ; $6b44: $fe $e0
    rst $38                                       ; $6b46: $ff
    nop                                           ; $6b47: $00
    cp [hl]                                       ; $6b48: $be
    jr nz, jr_049_6b67                            ; $6b49: $20 $1c

    dec a                                         ; $6b4b: $3d
    inc e                                         ; $6b4c: $1c
    ld e, h                                       ; $6b4d: $5c
    inc a                                         ; $6b4e: $3c
    rra                                           ; $6b4f: $1f
    inc a                                         ; $6b50: $3c
    jr c, @+$7a                                   ; $6b51: $38 $78

    ld a, h                                       ; $6b53: $7c
    ld a, h                                       ; $6b54: $7c
    sub h                                         ; $6b55: $94
    ld b, h                                       ; $6b56: $44
    or h                                          ; $6b57: $b4
    xor b                                         ; $6b58: $a8
    cp c                                          ; $6b59: $b9
    ld hl, $f1c3                                  ; $6b5a: $21 $c3 $f1
    pop af                                        ; $6b5d: $f1
    ld [hl+], a                                   ; $6b5e: $22
    pop hl                                        ; $6b5f: $e1
    ld h, h                                       ; $6b60: $64
    add e                                         ; $6b61: $83
    ld b, a                                       ; $6b62: $47
    ld h, d                                       ; $6b63: $62
    add $c0                                       ; $6b64: $c6 $c0
    rra                                           ; $6b66: $1f

jr_049_6b67:
    rra                                           ; $6b67: $1f
    ei                                            ; $6b68: $fb
    ld bc, $9d01                                  ; $6b69: $01 $01 $9d
    ld hl, $1111                                  ; $6b6c: $21 $11 $11
    adc a                                         ; $6b6f: $8f
    adc a                                         ; $6b70: $8f
    db $e4                                        ; $6b71: $e4
    ld sp, $5ce4                                  ; $6b72: $31 $e4 $5c
    ld b, e                                       ; $6b75: $43
    nop                                           ; $6b76: $00
    push hl                                       ; $6b77: $e5
    ld [$0fe1], sp                                ; $6b78: $08 $e1 $0f
    rrca                                          ; $6b7b: $0f
    cp $c3                                        ; $6b7c: $fe $c3
    ld l, d                                       ; $6b7e: $6a
    and c                                         ; $6b7f: $a1
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    pop hl                                        ; $6b83: $e1
    ld [$ffff], sp                                ; $6b84: $08 $ff $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    ld hl, sp-$09                                 ; $6b8b: $f8 $f7
    jr z, jr_049_6b97                             ; $6b8d: $28 $08

    ld [$0efb], sp                                ; $6b8f: $08 $fb $0e
    dec c                                         ; $6b92: $0d
    reti                                          ; $6b93: $d9


    ld sp, hl                                     ; $6b94: $f9
    ld c, $0e                                     ; $6b95: $0e $0e

jr_049_6b97:
    ld c, $0c                                     ; $6b97: $0e $0c
    inc c                                         ; $6b99: $0c
    and $b8                                       ; $6b9a: $e6 $b8
    or $0c                                        ; $6b9c: $f6 $0c
    dec c                                         ; $6b9e: $0d
    pop hl                                        ; $6b9f: $e1
    pop hl                                        ; $6ba0: $e1
    rst $18                                       ; $6ba1: $df
    rst $30                                       ; $6ba2: $f7
    ld c, $0e                                     ; $6ba3: $0e $0e
    ld [$e074], sp                                ; $6ba5: $08 $74 $e0
    ld [c], a                                     ; $6ba8: $e2
    cp [hl]                                       ; $6ba9: $be
    push af                                       ; $6baa: $f5
    inc c                                         ; $6bab: $0c
    and c                                         ; $6bac: $a1
    ld [c], a                                     ; $6bad: $e2
    ld a, [bc]                                    ; $6bae: $0a
    ld a, [bc]                                    ; $6baf: $0a
    ld a, [bc]                                    ; $6bb0: $0a
    ld d, [hl]                                    ; $6bb1: $56
    ld [c], a                                     ; $6bb2: $e2
    ld a, c                                       ; $6bb3: $79
    dec bc                                        ; $6bb4: $0b
    rst $38                                       ; $6bb5: $ff
    ld [c], a                                     ; $6bb6: $e2
    sbc a                                         ; $6bb7: $9f
    db $eb                                        ; $6bb8: $eb
    inc c                                         ; $6bb9: $0c
    rrca                                          ; $6bba: $0f
    ld [$e00e], sp                                ; $6bbb: $08 $0e $e0
    ld [c], a                                     ; $6bbe: $e2
    inc l                                         ; $6bbf: $2c
    db $e3                                        ; $6bc0: $e3
    db $e3                                        ; $6bc1: $e3
    ldh [$ed], a                                  ; $6bc2: $e0 $ed
    ld [$5f0a], sp                                ; $6bc4: $08 $0a $5f
    ldh [$0b], a                                  ; $6bc7: $e0 $0b
    ret nz                                        ; $6bc9: $c0

    ldh [$e1], a                                  ; $6bca: $e0 $e1
    and $50                                       ; $6bcc: $e6 $50
    ldh [$ed], a                                  ; $6bce: $e0 $ed
    xor b                                         ; $6bd0: $a8
    pop hl                                        ; $6bd1: $e1
    and b                                         ; $6bd2: $a0
    ld [c], a                                     ; $6bd3: $e2
    ret nz                                        ; $6bd4: $c0

    db $f4                                        ; $6bd5: $f4
    rrca                                          ; $6bd6: $0f
    adc b                                         ; $6bd7: $88
    ld [c], a                                     ; $6bd8: $e2
    rrca                                          ; $6bd9: $0f
    ret nz                                        ; $6bda: $c0

    push af                                       ; $6bdb: $f5
    ld e, l                                       ; $6bdc: $5d
    ld [$e080], sp                                ; $6bdd: $08 $80 $e0
    rrca                                          ; $6be0: $0f
    add hl, bc                                    ; $6be1: $09
    rrca                                          ; $6be2: $0f
    ldh [$f9], a                                  ; $6be3: $e0 $f9
    rrca                                          ; $6be5: $0f
    ldh [$fa], a                                  ; $6be6: $e0 $fa
    ld b, b                                       ; $6be8: $40
    cp [hl]                                       ; $6be9: $be
    ldh [rIE], a                                  ; $6bea: $e0 $ff

jr_049_6bec:
    pop hl                                        ; $6bec: $e1
    ldh [$fc], a                                  ; $6bed: $e0 $fc
    ld b, c                                       ; $6bef: $41
    rst $20                                       ; $6bf0: $e7
    nop                                           ; $6bf1: $00
    ld [$c1f1], a                                 ; $6bf2: $ea $f1 $c1
    cpl                                           ; $6bf5: $2f
    ldh [$f8], a                                  ; $6bf6: $e0 $f8
    nop                                           ; $6bf8: $00
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
    nop                                           ; $6c09: $00
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
    db $e4                                        ; $6c14: $e4
    db $e3                                        ; $6c15: $e3
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    db $fd                                        ; $6c19: $fd
    nop                                           ; $6c1a: $00
    rst $38                                       ; $6c1b: $ff
    ld [$0001], a                                 ; $6c1c: $ea $01 $00
    ld [bc], a                                    ; $6c1f: $02
    inc bc                                        ; $6c20: $03
    inc b                                         ; $6c21: $04
    dec b                                         ; $6c22: $05
    db $fc                                        ; $6c23: $fc
    db $ec                                        ; $6c24: $ec
    db $eb                                        ; $6c25: $eb
    sbc $e7                                       ; $6c26: $de $e7
    ld b, $07                                     ; $6c28: $06 $07
    ld [$0a09], sp                                ; $6c2a: $08 $09 $0a
    dec bc                                        ; $6c2d: $0b
    ei                                            ; $6c2e: $fb
    inc c                                         ; $6c2f: $0c
    dec c                                         ; $6c30: $0d
    ldh [$f2], a                                  ; $6c31: $e0 $f2
    ld c, $0f                                     ; $6c33: $0e $0f
    db $10                                        ; $6c35: $10
    ld de, $bf12                                  ; $6c36: $11 $12 $bf
    inc de                                        ; $6c39: $13
    inc d                                         ; $6c3a: $14
    dec d                                         ; $6c3b: $15
    ld d, $17                                     ; $6c3c: $16 $17
    jr jr_049_6bec                                ; $6c3e: $18 $ac

    ld [$ff19], a                                 ; $6c40: $ea $19 $ff
    ld a, [de]                                    ; $6c43: $1a
    dec de                                        ; $6c44: $1b
    inc e                                         ; $6c45: $1c

jr_049_6c46:
    dec e                                         ; $6c46: $1d
    nop                                           ; $6c47: $00
    ld e, $1f                                     ; $6c48: $1e $1f
    jr nz, @+$01                                  ; $6c4a: $20 $ff

    ld hl, $0022                                  ; $6c4c: $21 $22 $00
    inc hl                                        ; $6c4f: $23
    inc h                                         ; $6c50: $24
    jr jr_049_6c78                                ; $6c51: $18 $25

    ld h, $fd                                     ; $6c53: $26 $fd
    daa                                           ; $6c55: $27
    ldh [$eb], a                                  ; $6c56: $e0 $eb
    dec e                                         ; $6c58: $1d
    jr z, jr_049_6c84                             ; $6c59: $28 $29

    ld a, [hl+]                                   ; $6c5b: $2a
    dec hl                                        ; $6c5c: $2b
    inc l                                         ; $6c5d: $2c
    rst $28                                       ; $6c5e: $ef
    dec l                                         ; $6c5f: $2d
    ld l, $2f                                     ; $6c60: $2e $2f
    jr nc, jr_049_6c46                            ; $6c62: $30 $e2

    ldh [$31], a                                  ; $6c64: $e0 $31
    ld [hl-], a                                   ; $6c66: $32
    inc sp                                        ; $6c67: $33
    rst $30                                       ; $6c68: $f7
    inc [hl]                                      ; $6c69: $34
    dec [hl]                                      ; $6c6a: $35
    ld [hl], $6c                                  ; $6c6b: $36 $6c
    ld [$3837], a                                 ; $6c6d: $ea $37 $38
    add hl, sp                                    ; $6c70: $39
    ld a, [hl-]                                   ; $6c71: $3a
    rst $38                                       ; $6c72: $ff
    dec sp                                        ; $6c73: $3b
    inc a                                         ; $6c74: $3c
    dec a                                         ; $6c75: $3d
    ld a, $3f                                     ; $6c76: $3e $3f

jr_049_6c78:
    inc h                                         ; $6c78: $24
    ld b, b                                       ; $6c79: $40
    ld b, c                                       ; $6c7a: $41
    ld a, a                                       ; $6c7b: $7f
    ld b, d                                       ; $6c7c: $42
    ld b, e                                       ; $6c7d: $43
    ld b, h                                       ; $6c7e: $44
    ld b, l                                       ; $6c7f: $45
    ld b, [hl]                                    ; $6c80: $46
    ld b, a                                       ; $6c81: $47
    ld c, b                                       ; $6c82: $48
    ld c, h                                       ; $6c83: $4c

jr_049_6c84:
    jp hl                                         ; $6c84: $e9


    rst $38                                       ; $6c85: $ff
    ld c, c                                       ; $6c86: $49
    ld c, d                                       ; $6c87: $4a
    nop                                           ; $6c88: $00
    ld c, e                                       ; $6c89: $4b
    ld c, h                                       ; $6c8a: $4c
    ld c, l                                       ; $6c8b: $4d
    ld c, [hl]                                    ; $6c8c: $4e
    ld c, a                                       ; $6c8d: $4f
    rst $38                                       ; $6c8e: $ff
    ld d, b                                       ; $6c8f: $50
    ld d, c                                       ; $6c90: $51
    ld d, d                                       ; $6c91: $52
    ld d, e                                       ; $6c92: $53
    ld d, h                                       ; $6c93: $54
    ld d, l                                       ; $6c94: $55
    ld d, [hl]                                    ; $6c95: $56
    ld d, a                                       ; $6c96: $57
    rst $28                                       ; $6c97: $ef
    ld e, b                                       ; $6c98: $58
    ld e, c                                       ; $6c99: $59
    ld d, a                                       ; $6c9a: $57
    ld d, a                                       ; $6c9b: $57
    inc l                                         ; $6c9c: $2c
    jp hl                                         ; $6c9d: $e9


    ld e, d                                       ; $6c9e: $5a
    ld e, e                                       ; $6c9f: $5b
    ld e, h                                       ; $6ca0: $5c
    ld a, a                                       ; $6ca1: $7f
    ld e, l                                       ; $6ca2: $5d
    ld e, [hl]                                    ; $6ca3: $5e
    ld e, a                                       ; $6ca4: $5f
    ld h, b                                       ; $6ca5: $60
    ld h, c                                       ; $6ca6: $61
    ld h, d                                       ; $6ca7: $62
    ld d, a                                       ; $6ca8: $57
    rst $38                                       ; $6ca9: $ff
    rst $20                                       ; $6caa: $e7
    cp $0c                                        ; $6cab: $fe $0c
    jp hl                                         ; $6cad: $e9


    ld h, e                                       ; $6cae: $63
    ld h, h                                       ; $6caf: $64
    ld h, l                                       ; $6cb0: $65
    ld h, [hl]                                    ; $6cb1: $66
    ld h, a                                       ; $6cb2: $67
    ld l, b                                       ; $6cb3: $68
    ld l, c                                       ; $6cb4: $69
    db $db                                        ; $6cb5: $db
    ld l, d                                       ; $6cb6: $6a
    ld l, e                                       ; $6cb7: $6b
    ldh [$e6], a                                  ; $6cb8: $e0 $e6
    ld l, h                                       ; $6cba: $6c
    ld l, l                                       ; $6cbb: $6d
    db $ec                                        ; $6cbc: $ec
    jp z, $6f6e                                   ; $6cbd: $ca $6e $6f

    cp a                                          ; $6cc0: $bf
    ld [hl], b                                    ; $6cc1: $70
    ld [hl], c                                    ; $6cc2: $71
    ld [hl], d                                    ; $6cc3: $72
    ld [hl], e                                    ; $6cc4: $73
    ld [hl], h                                    ; $6cc5: $74
    ld [hl], l                                    ; $6cc6: $75
    ret nz                                        ; $6cc7: $c0

    ldh [rPCM12], a                               ; $6cc8: $e0 $76
    ld a, a                                       ; $6cca: $7f
    ld [hl], a                                    ; $6ccb: $77
    ld a, b                                       ; $6ccc: $78
    ld l, h                                       ; $6ccd: $6c
    ld a, c                                       ; $6cce: $79
    ld a, d                                       ; $6ccf: $7a
    ld a, e                                       ; $6cd0: $7b
    ld a, h                                       ; $6cd1: $7c
    call z, $ffc9                                 ; $6cd2: $cc $c9 $ff
    ld a, l                                       ; $6cd5: $7d
    ld a, [hl]                                    ; $6cd6: $7e
    ld a, a                                       ; $6cd7: $7f
    add b                                         ; $6cd8: $80
    add c                                         ; $6cd9: $81
    add d                                         ; $6cda: $82
    add e                                         ; $6cdb: $83
    add h                                         ; $6cdc: $84
    db $fd                                        ; $6cdd: $fd
    add l                                         ; $6cde: $85
    and b                                         ; $6cdf: $a0
    pop hl                                        ; $6ce0: $e1
    add [hl]                                      ; $6ce1: $86
    add a                                         ; $6ce2: $87
    adc b                                         ; $6ce3: $88
    adc c                                         ; $6ce4: $89
    adc d                                         ; $6ce5: $8a
    adc e                                         ; $6ce6: $8b
    db $fd                                        ; $6ce7: $fd
    adc h                                         ; $6ce8: $8c
    xor h                                         ; $6ce9: $ac
    ret                                           ; $6cea: $c9


    adc l                                         ; $6ceb: $8d
    ld d, a                                       ; $6cec: $57
    adc [hl]                                      ; $6ced: $8e
    ld d, a                                       ; $6cee: $57
    adc a                                         ; $6cef: $8f
    sub b                                         ; $6cf0: $90
    rst $30                                       ; $6cf1: $f7
    sub c                                         ; $6cf2: $91
    sub d                                         ; $6cf3: $92
    sub e                                         ; $6cf4: $93
    add b                                         ; $6cf5: $80
    ldh [$94], a                                  ; $6cf6: $e0 $94
    sub l                                         ; $6cf8: $95
    sub [hl]                                      ; $6cf9: $96
    sub a                                         ; $6cfa: $97
    rst $28                                       ; $6cfb: $ef
    sbc b                                         ; $6cfc: $98
    sbc c                                         ; $6cfd: $99
    sbc d                                         ; $6cfe: $9a
    sbc e                                         ; $6cff: $9b
    adc h                                         ; $6d00: $8c
    ret                                           ; $6d01: $c9


    ld d, a                                       ; $6d02: $57
    ld d, a                                       ; $6d03: $57
    sbc h                                         ; $6d04: $9c
    rst $38                                       ; $6d05: $ff
    sbc l                                         ; $6d06: $9d
    ld d, a                                       ; $6d07: $57
    sbc [hl]                                      ; $6d08: $9e
    sbc a                                         ; $6d09: $9f
    and b                                         ; $6d0a: $a0
    and c                                         ; $6d0b: $a1
    and d                                         ; $6d0c: $a2
    ld d, a                                       ; $6d0d: $57
    rst $38                                       ; $6d0e: $ff
    and e                                         ; $6d0f: $a3
    and h                                         ; $6d10: $a4
    and l                                         ; $6d11: $a5
    and [hl]                                      ; $6d12: $a6
    and a                                         ; $6d13: $a7
    xor b                                         ; $6d14: $a8
    xor c                                         ; $6d15: $a9
    xor d                                         ; $6d16: $aa
    db $fd                                        ; $6d17: $fd
    xor e                                         ; $6d18: $ab
    ld l, h                                       ; $6d19: $6c
    ret                                           ; $6d1a: $c9


    xor h                                         ; $6d1b: $ac
    xor l                                         ; $6d1c: $ad
    xor [hl]                                      ; $6d1d: $ae
    xor a                                         ; $6d1e: $af
    ld d, a                                       ; $6d1f: $57
    or b                                          ; $6d20: $b0
    rst $38                                       ; $6d21: $ff
    or c                                          ; $6d22: $b1
    or d                                          ; $6d23: $b2
    or e                                          ; $6d24: $b3
    or h                                          ; $6d25: $b4
    sub h                                         ; $6d26: $94
    or l                                          ; $6d27: $b5
    or [hl]                                       ; $6d28: $b6
    or a                                          ; $6d29: $b7
    cp a                                          ; $6d2a: $bf
    cp b                                          ; $6d2b: $b8
    cp c                                          ; $6d2c: $b9
    cp d                                          ; $6d2d: $ba
    cp e                                          ; $6d2e: $bb
    cp h                                          ; $6d2f: $bc
    cp l                                          ; $6d30: $bd
    ld c, h                                       ; $6d31: $4c
    ret                                           ; $6d32: $c9


    cp [hl]                                       ; $6d33: $be
    rst $38                                       ; $6d34: $ff
    cp a                                          ; $6d35: $bf
    ld d, a                                       ; $6d36: $57
    ret nz                                        ; $6d37: $c0

    ld d, a                                       ; $6d38: $57
    pop bc                                        ; $6d39: $c1
    jp nz, $c4c3                                  ; $6d3a: $c2 $c3 $c4

    rst $38                                       ; $6d3d: $ff
    push bc                                       ; $6d3e: $c5
    add $c7                                       ; $6d3f: $c6 $c7
    ret z                                         ; $6d41: $c8

    ret                                           ; $6d42: $c9


    jp z, $cccb                                   ; $6d43: $ca $cb $cc

    rst $30                                       ; $6d46: $f7
    call $cfce                                    ; $6d47: $cd $ce $cf
    inc l                                         ; $6d4a: $2c
    ret                                           ; $6d4b: $c9


    ret nc                                        ; $6d4c: $d0

    ld d, a                                       ; $6d4d: $57
    ld d, a                                       ; $6d4e: $57
    pop de                                        ; $6d4f: $d1
    rst $38                                       ; $6d50: $ff
    jp nc, $d4d3                                  ; $6d51: $d2 $d3 $d4

    push de                                       ; $6d54: $d5
    call nz, $d7d6                                ; $6d55: $c4 $d6 $d7
    ret c                                         ; $6d58: $d8

    rst $38                                       ; $6d59: $ff
    reti                                          ; $6d5a: $d9


    jp c, $dcdb                                   ; $6d5b: $da $db $dc

    ld e, h                                       ; $6d5e: $5c
    db $dd                                        ; $6d5f: $dd
    sbc $5c                                       ; $6d60: $de $5c
    cp $80                                        ; $6d62: $fe $80
    db $eb                                        ; $6d64: $eb
    ld d, a                                       ; $6d65: $57
    rst $18                                       ; $6d66: $df
    ldh [$e1], a                                  ; $6d67: $e0 $e1
    ld [c], a                                     ; $6d69: $e2
    db $e3                                        ; $6d6a: $e3
    db $e4                                        ; $6d6b: $e4
    rst $38                                       ; $6d6c: $ff
    push hl                                       ; $6d6d: $e5
    and $e7                                       ; $6d6e: $e6 $e7
    add sp, -$17                                  ; $6d70: $e8 $e9
    ld [$eb5c], a                                 ; $6d72: $ea $5c $eb
    ei                                            ; $6d75: $fb
    db $ec                                        ; $6d76: $ec
    ld e, h                                       ; $6d77: $5c
    ldh [$ea], a                                  ; $6d78: $e0 $ea
    db $ed                                        ; $6d7a: $ed
    xor $57                                       ; $6d7b: $ee $57
    rst $28                                       ; $6d7d: $ef
    call $f0ff                                    ; $6d7e: $cd $ff $f0
    pop af                                        ; $6d81: $f1
    ld l, b                                       ; $6d82: $68
    ld a, [c]                                     ; $6d83: $f2
    di                                            ; $6d84: $f3
    db $f4                                        ; $6d85: $f4
    push af                                       ; $6d86: $f5
    or $07                                        ; $6d87: $f6 $07
    rst $30                                       ; $6d89: $f7
    ld hl, sp+$5c                                 ; $6d8a: $f8 $5c
    rst $38                                       ; $6d8c: $ff
    pop hl                                        ; $6d8d: $e1
    ldh [$b5], a                                  ; $6d8e: $e0 $b5
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    nop                                           ; $6d96: $00
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
    nop                                           ; $6da7: $00
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    ld sp, hl                                     ; $6dab: $f9
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00

    db $b7, $6d, $f7, $6d, $40, $74, $aa, $74, $00, $00, $ff, $7f, $28, $35, $5e, $03
    db $00, $00, $ff, $7f, $6b, $39, $f6, $62, $00, $00, $4a, $29, $94, $52, $ff, $7f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $bd, $00, $ff, $f8, $04, $03, $2f, $1f
    db $e0, $e7, $7f, $d3, $00, $ff, $ff, $e0, $d0, $e7, $ff, $f0, $e5, $01, $01, $ff
    db $03, $03, $07, $07, $0f, $0f, $1f, $3f, $ff, $1f, $1e, $3f, $bf, $7f, $ff, $ff
    db $fe, $ff, $ff, $f4, $f8, $d0, $e0, $80, $c0, $00, $5b, $80, $03, $cc, $e2, $7f
    db $80, $9a, $e5, $f0, $bc, $e2, $aa, $bb, $e7, $1f, $f0, $ec, $0f, $e0, $ec, $c0
    db $8c, $e2, $fe, $ed, $01, $5a, $e7, $fd, $fe, $b0, $e0, $ff, $2f, $1f, $ff, $0b
    db $07, $01, $03, $70, $71, $a8, $a8, $ff, $7c, $3e, $3e, $7c, $f8, $7c, $fc, $78
    db $b7, $78, $f8, $70, $fe, $e2, $01, $03, $fe, $eb, $f8, $ff, $f0, $f0, $f8, $fc
    db $f8, $fe, $fc, $fc, $ff, $fe, $ef, $fe, $ee, $f7, $e3, $f7, $1f, $0e, $ff, $eb
    db $9f, $0e, $1f, $fe, $e1, $19, $e2, $f6, $e2, $f0, $c7, $e7, $01, $1e, $1e, $d3
    db $e0, $e0, $c7, $3a, $7c, $ff, $ff, $fe, $6f, $9f, $00, $00, $10, $0f, $1f, $bf
    db $0f, $7f, $0f, $3f, $7f, $7f, $f8, $e0, $9f, $ff, $0f, $00, $00, $40, $80, $c0
    db $80, $f0, $ff, $80, $e0, $f0, $f2, $81, $c3, $87, $c7, $fd, $8f, $b0, $c5, $f8
    db $00, $fa, $fc, $fe, $8f, $e1, $07, $f0, $e6, $c8, $e1, $cf, $e1, $90, $c5, $3c
    db $00, $bd, $df, $7e, $7f, $ff, $b7, $cf, $80, $c7, $02, $01, $bf, $87, $03, $cf
    db $87, $0f, $07, $fe, $e3, $ff, $7f, $07, $ff, $f7, $cf, $ff, $c7, $8f, $a3, $e0
    db $fe, $fe, $e4, $83, $c1, $83, $c7, $87, $cf, $01, $fe, $ff, $e2, $00, $00, $88
    db $70, $fe, $fc, $de, $fe, $a0, $e0, $54, $54, $64, $64, $54, $54, $88, $f7, $88
    db $70, $70, $36, $c2, $80, $e3, $f3, $e3, $bf, $f1, $e0, $f1, $e1, $f0, $e0, $fe
    db $e4, $df, $cf, $9f, $9f, $df, $df, $7c, $c1, $79, $c0, $7f, $3f, $53, $1f, $3f
    db $10, $e3, $fa, $e7, $1e, $fe, $ec, $97, $7f, $e5, $ee, $77, $e4, $1f, $8f, $9f
    db $fe, $ea, $df, $8f, $cf, $fd, $9f, $fe, $e3, $df, $8f, $c7, $8f, $c3, $87, $f7
    db $8f, $07, $07, $e9, $a2, $80, $00, $8f, $07, $e7, $0f, $87, $f6, $e2, $e0, $dd
    db $e0, $df, $cf, $1f, $ef, $0f, $1f, $cf, $9f, $e1, $c0, $1f, $0f, $87, $eb, $83
    db $07, $fe, $e9, $87, $c1, $e5, $cf, $87, $cf, $7f, $8f, $c7, $87, $c3, $8f, $87
    db $0f, $fe, $e6, $3f, $87, $cf, $cf, $ff, $9f, $cf, $c0, $e1, $bc, $e1, $e6, $de
    db $e1, $83, $c7, $bd, $c0, $fe, $e6, $07, $8f, $ae, $b7, $df, $c0, $80, $ee, $c5
    db $c0, $80, $8b, $e0, $00, $f7, $00, $03, $00, $ee, $e0, $d0, $e0, $f4, $f8, $4e
    db $e7, $a0, $ff, $bf, $7f, $9d, $a0, $50, $a5, $80, $50, $a1, $41, $20, $3e, $a6
    db $50, $a4, $f0, $ed, $3e, $c0, $30, $a9, $10, $3e, $c6, $36, $20, $a3, $42, $81
    db $10, $ab, $fa, $fc, $d0, $ec, $c0, $ec, $db, $80, $07, $e0, $8b, $02, $c1, $d0
    db $8b, $f8, $f7, $da, $b0, $ed, $f8, $7d, $84, $fe, $01, $b0, $87, $0b, $07, $bb
    db $2f, $1f, $b7, $80, $ff, $fd, $fe, $73, $a5, $03, $7f, $04, $06, $09, $0d, $13
    db $1b, $27, $50, $82, $fd, $3f, $90, $c0, $7f, $7f, $ff, $f0, $ff, $ef, $fe, $12
    db $e3, $70, $f0, $08, $c8, $30, $28, $f4, $f7, $ec, $f0, $74, $b3, $e3, $07, $07
    db $08, $0c, $de, $d4, $e0, $17, $2f, $37, $4f, $b9, $83, $c0, $20, $ff, $60, $90
    db $a0, $d0, $b0, $c8, $d0, $e8, $ee, $99, $83, $0f, $10, $18, $e2, $e0, $1b, $27
    db $0b, $fd, $17, $00, $82, $f1, $f1, $0a, $1b, $e0, $ea, $df, $f1, $db, $e0, $d1
    db $ea, $75, $e3, $fe, $01, $ff, $03, $fc, $fd, $fe, $7b, $fc, $7a, $fd, $fe, $90
    db $e3, $3f, $40, $60, $9f, $6f, $9f, $67, $fb, $9f, $37, $50, $a1, $07, $03, $fc
    db $fc, $03, $dd, $03, $f3, $60, $81, $ff, $be, $22, $e1, $80, $80, $ff, $4f, $cf
    db $30, $78, $87, $b7, $cf, $bb, $f7, $c7, $dd, $e3, $03, $a3, $f8, $04, $0c, $f2
    db $bf, $f4, $fa, $ec, $f2, $d8, $e4, $a0, $68, $01, $ef, $01, $02, $02, $05, $60
    db $e3, $1f, $20, $60, $bf, $9f, $9f, $7f, $78, $ff, $f7, $03, $e3, $c0, $ff, $f0
    db $08, $1c, $e2, $e6, $f9, $7b, $fc, $f3, $bd, $7e, $e3, $83, $90, $e1, $df, $3f
    db $bc, $7f, $e3, $b3, $7c, $75, $83, $89, $60, $83, $60, $f9, $ff, $76, $fd, $f9
    db $50, $62, $e0, $e0, $10, $30, $c8, $d8, $df, $e0, $e8, $f4, $6c, $f0, $1c, $e0
    db $0f, $2f, $fd, $5f, $fe, $e7, $d9, $e6, $b0, $c0, $a0, $d0, $fb, $a0, $c0, $fe
    db $e4, $d0, $b4, $78, $d4, $38, $ff, $64, $18, $38, $45, $00, $19, $01, $02, $ff
    db $01, $02, $03, $3c, $2f, $5f, $6d, $9f, $ff, $58, $bf, $da, $3d, $b6, $79, $b7
    db $78, $fd, $70, $b6, $60, $d8, $e4, $d8, $e4, $e8, $f4, $fd, $ec, $52, $e0, $76
    db $f9, $76, $f9, $fb, $fc, $fe, $ca, $c1, $17, $2f, $16, $2f, $36, $4f, $2d, $ff
    db $5e, $2d, $5e, $6d, $9e, $db, $e4, $ee, $ff, $f1, $ee, $f1, $f5, $fb, $f5, $fb
    db $7b, $eb, $ff, $7b, $a0, $a0, $7b, $e8, $c0, $fd, $fe, $dd, $ff, $fe, $9e, $ff
    db $9e, $ff, $5e, $bf, $5e, $ff, $bf, $17, $af, $17, $8f, $17, $8f, $97, $fd, $4f
    db $fe, $e3, $d7, $2f, $bf, $c0, $b3, $cc, $ff, $8d, $fe, $fe, $ff, $86, $ff, $bb
    db $c7, $ff, $a4, $cb, $a3, $c4, $5d, $e3, $b5, $4b, $ff, $65, $9b, $85, $4b, $85
    db $4b, $45, $8b, $bf, $c5, $3b, $bd, $43, $d8, $e0, $fe, $ea, $e1, $fe, $2a, $c0
    db $03, $0d, $13, $0b, $17, $1b, $07, $fe, $fe, $e0, $27, $3b, $c7, $ec, $f3, $e8
    db $f4, $6f, $e8, $f0, $d0, $e8, $fe, $e5, $dd, $3e, $9a, $e0, $fd, $3f, $1e, $e7
    db $6f, $f0, $99, $66, $f1, $0a, $fb, $61, $92, $fe, $e5, $77, $f8, $74, $fb, $74
    db $fd, $fa, $fe, $e7, $b4, $7a, $cc, $32, $78, $84, $db, $30, $48, $28, $45, $37
    db $0f, $18, $c1, $0d, $13, $ef, $06, $09, $03, $04, $0a, $c1, $b0, $c0, $d8, $ef
    db $e5, $ef, $f0, $f0, $bc, $40, $80, $7f, $ff, $ff, $00, $38, $c7, $3a, $c5, $ce
    db $31, $35, $7f, $fb, $e3, $ff, $cf, $ff, $30, $cf, $f0, $e1, $ff, $c0, $ff, $df
    db $e0, $b0, $c0, $d9, $e0, $ff, $e9, $f0, $19, $e0, $ff, $00, $10, $ef, $ce, $6c
    db $c1, $bd, $7e, $be, $92, $a0, $d0, $e1, $26, $d9, $ff, $5b, $bc, $da, $3d, $da
    db $3d, $bb, $7c, $ff, $7d, $fe, $83, $7c, $ff, $00, $31, $ce, $ff, $be, $7f, $de
    db $3f, $5d, $be, $6d, $1e, $ff, $2a, $5d, $36, $08, $ff, $00, $8e, $71, $ff, $ef
    db $1f, $af, $5f, $2f, $df, $6f, $1f, $ff, $5f, $3f, $60, $9f, $ff, $00, $03, $fc
    db $7f, $57, $af, $57, $af, $77, $8f, $af, $7c, $60, $7b, $20, $df, $f0, $e1, $a0
    db $c0, $bf, $c0, $67, $82, $fc, $c1, $21, $a0, $e0, $6d, $93, $d5, $3b, $35, $fb
    db $ff, $eb, $f7, $e7, $ff, $d8, $e7, $3f, $c0, $ff, $62, $9d, $d9, $e6, $df, $e0
    db $dc, $e3, $fd, $e3, $e0, $e4, $18, $e7, $e3, $1f, $95, $7b, $ff, $75, $fb, $ee
    db $f1, $eb, $f4, $11, $ea, $ef, $fe, $01, $d1, $2e, $54, $c0, $f3, $f7, $f8, $df
    db $f8, $ff, $3f, $ff, $c0, $fa, $80, $88, $77, $ff, $5f, $bf, $de, $3f, $be, $7f
    db $7d, $fe, $ff, $f3, $fc, $0e, $f1, $ff, $00, $c4, $3a, $ff, $61, $92, $c1, $22
    db $c3, $24, $86, $49, $ff, $05, $8b, $06, $09, $ff, $00, $46, $39, $3c, $e4, $c1
    db $28, $c1, $fd, $fe, $03, $fc, $10, $e1, $10, $24, $fe, $c4, $61, $f0, $f0, $08
    db $18, $e4, $30, $08, $ff, $31, $02, $30, $28, $18, $26, $36, $0f, $ff, $30, $00
    db $1f, $20, $0f, $1f, $30, $08, $ff, $e1, $12, $63, $50, $23, $32, $20, $31, $ff
    db $30, $48, $ff, $20, $87, $df, $18, $28, $ff, $09, $99, $88, $18, $88, $99, $09
    db $18, $ff, $19, $28, $ff, $10, $86, $ef, $00, $10, $ff, $fc, $00, $3c, $28, $34
    db $e8, $e4, $18, $ff, $04, $e8, $07, $88, $03, $07, $06, $25, $ff, $c2, $26, $e0
    db $12, $f0, $50, $b0, $49, $ff, $b9, $69, $9f, $60, $0e, $9f, $31, $52, $ff, $21
    db $32, $02, $a5, $86, $86, $84, $4a, $ff, $cc, $4c, $ff, $00, $7f, $ff, $06, $89
    db $ff, $06, $25, $22, $55, $02, $03, $00, $73, $ff, $70, $89, $8f, $50, $07, $8f
    db $01, $02, $ff, $31, $12, $03, $04, $03, $20, $31, $10, $fd, $31, $d0, $c0, $c6
    db $ef, $02, $05, $3e, $21, $fe, $fc, $e1, $03, $3d, $03, $01, $fe, $03, $7c, $7f
    db $fe, $10, $20, $13, $21, $10, $23, $fa, $e0, $fe, $fe, $e0, $1e, $21, $0c, $1e
    db $22, $51, $22, $ff, $31, $22, $31, $63, $d0, $e0, $13, $20, $ff, $d0, $3f, $40
    db $1f, $3f, $10, $28, $30, $ff, $02, $22, $55, $e0, $00, $40, $a7, $07, $ff, $48
    db $f8, $05, $f0, $f8, $70, $81, $70, $df, $00, $30, $42, $32, $01, $d0, $e0, $80
    db $fe, $ff, $01, $6c, $fe, $88, $40, $08, $c0, $08, $bf, $41, $09, $00, $09, $80
    db $89, $5e, $00, $7e, $ff, $ff, $44, $a2, $04, $62, $04, $22, $04, $ff, $82, $84
    db $42, $c4, $02, $7f, $80, $3f, $ff, $7f, $42, $05, $40, $03, $40, $09, $48, $ff
    db $04, $4c, $02, $4e, $00, $fb, $04, $b1, $ff, $fb, $20, $10, $21, $02, $23, $04
    db $23, $ff, $06, $20, $11, $30, $08, $ef, $10, $c3, $ff, $e7, $18, $04, $f8, $04
    db $18, $04, $98, $ff, $04, $18, $84, $18, $24, $f0, $08, $c0, $f5, $f0, $a0, $ac
    db $fb, $a0, $ab, $f0, $00, $75, $fa, $ef, $77, $f8, $77, $f8, $a0, $c7, $88, $00
    db $74, $af, $00, $54, $00, $64, $fc, $e0, $88, $e2, $e0, $18, $01, $e0, $00, $00

    nop                                           ; $743f: $00

    db $11, $08, $ff, $ff, $ff, $ff, $f9, $f8, $0a, $e0, $ff, $e0, $ff, $e0, $f9, $4e
    db $ff, $ec, $2a, $2a, $0a, $ad, $ea, $e0, $e3, $4a, $ff, $e4, $40, $de, $e2, $e0
    db $f0, $be, $ea, $c0, $eb, $cc, $e2, $9a, $e9, $6a, $e0, $ff, $18, $60, $ea, $84
    db $e5, $7c, $e3, $6a, $6a, $60, $eb, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $50, $ff, $ff, $ff
    db $ff, $ff, $ff, $eb, $ea, $09, $fa, $e3, $09, $f8, $e3, $20, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $08, $00, $00

    nop                                           ; $74a9: $00

    db $81, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f5, $f4, $01, $db
    db $02, $03, $ff, $e8, $02, $01, $ce, $ec, $04, $05, $f7, $06, $07, $07, $de, $e5
    db $08, $09, $0a, $0b, $fd, $04, $ad, $eb, $0c, $0d, $0e, $0f, $10, $11, $ff, $12
    db $13, $14, $15, $16, $17, $18, $19, $ef, $1a, $1b, $1c, $0c, $e0, $ed, $1d, $1e
    db $1f, $ff, $20, $21, $22, $23, $24, $25, $26, $27, $ef, $28, $29, $2a, $2b, $e0
    db $ec, $04, $2c, $2d, $ff, $2e, $2f, $2f, $30, $31, $32, $33, $34, $3f, $35, $36
    db $37, $32, $38, $39, $a0, $ec, $60, $fd, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $ea, $e9
    db $3a, $3b, $3c, $3d, $3e, $ff, $3f, $40, $41, $42, $43, $44, $45, $46, $df, $47
    db $48, $49, $4a, $4b, $cc, $eb, $4c, $4d, $ff, $4e, $4f, $50, $51, $52, $53, $54
    db $55, $ff, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $fe, $ac, $eb, $5e, $5f, $60
    db $61, $62, $63, $64, $ff, $65, $66, $67, $68, $69, $6a, $6b, $6c, $f7, $6d, $6e
    db $6f, $8c, $eb, $70, $71, $72, $73, $ff, $74, $75, $76, $77, $78, $79, $7a, $7b
    db $3f, $7c, $7d, $7e, $7f, $80, $81, $6c, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e0, $00, $00

    nop                                           ; $7590: $00
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

Jump_049_7ef8:
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

Jump_049_7fc0:
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

Jump_049_7fe0:
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

Jump_049_7fff:
    rst $38                                       ; $7fff: $ff
