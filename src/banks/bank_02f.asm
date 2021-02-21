; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

Jump_02f_4000:
    jr nz, @+$7f                                  ; $4000: $20 $7d

    rst $00                                       ; $4002: $c7
    ld a, l                                       ; $4003: $7d
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40

Jump_02f_4008:
    ld c, h                                       ; $4008: $4c
    ld c, c                                       ; $4009: $49
    cp d                                          ; $400a: $ba
    ld c, e                                       ; $400b: $4b
    ld d, a                                       ; $400c: $57
    ld c, l                                       ; $400d: $4d
    cp c                                          ; $400e: $b9
    ld c, l                                       ; $400f: $4d
    ld de, $464e                                  ; $4010: $11 $4e $46
    ld c, [hl]                                    ; $4013: $4e
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40
    sbc $4f                                       ; $4016: $de $4f
    and $4f                                       ; $4018: $e6 $4f
    di                                            ; $401a: $f3
    ld e, d                                       ; $401b: $5a
    rst $00                                       ; $401c: $c7
    ld e, [hl]                                    ; $401d: $5e
    ld e, c                                       ; $401e: $59
    ld h, d                                       ; $401f: $62
    add $62                                       ; $4020: $c6 $62
    ld de, $6263                                  ; $4022: $11 $63 $62
    ld h, e                                       ; $4025: $63
    ld h, $50                                     ; $4026: $26 $50
    ld c, l                                       ; $4028: $4d
    ld h, [hl]                                    ; $4029: $66
    ld d, l                                       ; $402a: $55
    ld h, [hl]                                    ; $402b: $66
    and a                                         ; $402c: $a7
    ld [hl], c                                    ; $402d: $71
    sub $75                                       ; $402e: $d6 $75
    ld a, c                                       ; $4030: $79
    ld a, c                                       ; $4031: $79
    sbc $79                                       ; $4032: $de $79
    inc [hl]                                      ; $4034: $34
    ld a, d                                       ; $4035: $7a
    dec [hl]                                      ; $4036: $35
    ld a, d                                       ; $4037: $7a
    sub l                                         ; $4038: $95
    ld h, [hl]                                    ; $4039: $66
    ld de, $114e                                  ; $403a: $11 $4e $11
    ld h, e                                       ; $403d: $63
    inc [hl]                                      ; $403e: $34
    ld a, d                                       ; $403f: $7a
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    ld bc, $3f00                                  ; $4042: $01 $00 $3f
    ld [de], a                                    ; $4045: $12
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    ld [bc], a                                    ; $4049: $02
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    xor l                                         ; $404c: $ad
    dec [hl]                                      ; $404d: $35
    sub h                                         ; $404e: $94
    ld c, [hl]                                    ; $404f: $4e
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ld [$0825], sp                                ; $4054: $08 $25 $08
    dec h                                         ; $4057: $25
    rst $38                                       ; $4058: $ff
    inc bc                                        ; $4059: $03
    ld a, c                                       ; $405a: $79
    ld [bc], a                                    ; $405b: $02
    ld d, c                                       ; $405c: $51
    ld bc, $00aa                                  ; $405d: $01 $aa $00
    cp a                                          ; $4060: $bf
    dec sp                                        ; $4061: $3b
    inc a                                         ; $4062: $3c
    ld [bc], a                                    ; $4063: $02
    halt                                          ; $4064: $76
    ld bc, $0130                                  ; $4065: $01 $30 $01
    ld e, a                                       ; $4068: $5f
    ld bc, $7f5f                                  ; $4069: $01 $5f $7f
    scf                                           ; $406c: $37
    ld d, [hl]                                    ; $406d: $56
    cpl                                           ; $406e: $2f
    ld sp, $7fff                                  ; $406f: $31 $ff $7f
    sbc a                                         ; $4072: $9f
    ld [bc], a                                    ; $4073: $02
    inc e                                         ; $4074: $1c
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    ld a, [hl]                                    ; $4077: $7e
    ld h, b                                       ; $4078: $60
    inc bc                                        ; $4079: $03
    ld a, c                                       ; $407a: $79
    ld [bc], a                                    ; $407b: $02
    ld d, c                                       ; $407c: $51
    ld bc, $00aa                                  ; $407d: $01 $aa $00

Call_02f_4080:
    ld [$0825], sp                                ; $4080: $08 $25 $08
    dec h                                         ; $4083: $25
    ld [$0825], sp                                ; $4084: $08 $25 $08
    dec h                                         ; $4087: $25
    rst $38                                       ; $4088: $ff
    ld c, h                                       ; $4089: $4c
    xor b                                         ; $408a: $a8
    or a                                          ; $408b: $b7
    ld b, a                                       ; $408c: $47
    ld [hl], b                                    ; $408d: $70
    xor b                                         ; $408e: $a8
    cp d                                          ; $408f: $ba
    ld [hl], l                                    ; $4090: $75
    rst $38                                       ; $4091: $ff
    ld a, a                                       ; $4092: $7f
    cp a                                          ; $4093: $bf
    ld sp, hl                                     ; $4094: $f9
    ccf                                           ; $4095: $3f
    inc sp                                        ; $4096: $33
    and e                                         ; $4097: $a3
    pop hl                                        ; $4098: $e1
    ld bc, $7fff                                  ; $4099: $01 $ff $7f
    ld hl, $c1ff                                  ; $409c: $21 $ff $c1
    rst $18                                       ; $409f: $df
    add hl, hl                                    ; $40a0: $29
    cp a                                          ; $40a1: $bf
    ld e, c                                       ; $40a2: $59
    rst $38                                       ; $40a3: $ff
    rst $38                                       ; $40a4: $ff
    ld sp, hl                                     ; $40a5: $f9
    ei                                            ; $40a6: $fb
    db $fd                                        ; $40a7: $fd
    xor a                                         ; $40a8: $af
    ld sp, hl                                     ; $40a9: $f9
    dec bc                                        ; $40aa: $0b
    db $fd                                        ; $40ab: $fd
    rst $38                                       ; $40ac: $ff
    ld hl, $9181                                  ; $40ad: $21 $81 $91
    inc hl                                        ; $40b0: $23
    ld [hl+], a                                   ; $40b1: $22
    cp a                                          ; $40b2: $bf
    sbc l                                         ; $40b3: $9d
    ld e, [hl]                                    ; $40b4: $5e
    rst $38                                       ; $40b5: $ff
    ld c, a                                       ; $40b6: $4f
    xor a                                         ; $40b7: $af
    and c                                         ; $40b8: $a1
    ld d, b                                       ; $40b9: $50
    nop                                           ; $40ba: $00
    rst $38                                       ; $40bb: $ff
    ccf                                           ; $40bc: $3f
    rst $38                                       ; $40bd: $ff
    rst $38                                       ; $40be: $ff
    xor l                                         ; $40bf: $ad

Call_02f_40c0:
    ld e, e                                       ; $40c0: $5b
    ld c, e                                       ; $40c1: $4b
    cp l                                          ; $40c2: $bd
    db $ed                                        ; $40c3: $ed
    dec de                                        ; $40c4: $1b
    db $db                                        ; $40c5: $db
    dec [hl]                                      ; $40c6: $35
    rst $38                                       ; $40c7: $ff
    pop af                                        ; $40c8: $f1
    rst $28                                       ; $40c9: $ef
    ld h, e                                       ; $40ca: $63
    dec e                                         ; $40cb: $1d
    ld bc, $f9ff                                  ; $40cc: $01 $ff $f9
    rst $38                                       ; $40cf: $ff
    rst $38                                       ; $40d0: $ff
    jp c, $e1f8                                   ; $40d1: $da $f8 $e1

    jr nz, @-$3a                                  ; $40d4: $20 $c4

    ld b, b                                       ; $40d6: $40
    and b                                         ; $40d7: $a0
    and b                                         ; $40d8: $a0
    rst $38                                       ; $40d9: $ff
    ret nc                                        ; $40da: $d0

    ret nc                                        ; $40db: $d0

    xor d                                         ; $40dc: $aa
    xor d                                         ; $40dd: $aa
    push af                                       ; $40de: $f5
    push af                                       ; $40df: $f5
    rst $38                                       ; $40e0: $ff
    rst $38                                       ; $40e1: $ff
    rst $38                                       ; $40e2: $ff
    or l                                          ; $40e3: $b5
    ccf                                           ; $40e4: $3f
    ld a, [bc]                                    ; $40e5: $0a
    dec c                                         ; $40e6: $0d
    ld b, l                                       ; $40e7: $45
    ld b, $0a                                     ; $40e8: $06 $0a
    dec bc                                        ; $40ea: $0b
    rst $38                                       ; $40eb: $ff
    rla                                           ; $40ec: $17
    rla                                           ; $40ed: $17
    xor e                                         ; $40ee: $ab
    xor e                                         ; $40ef: $ab
    ld e, a                                       ; $40f0: $5f
    ld e, a                                       ; $40f1: $5f
    rst $38                                       ; $40f2: $ff
    rst $38                                       ; $40f3: $ff
    ld a, a                                       ; $40f4: $7f
    rst $38                                       ; $40f5: $ff
    nop                                           ; $40f6: $00
    add c                                         ; $40f7: $81
    nop                                           ; $40f8: $00
    cp l                                          ; $40f9: $bd
    nop                                           ; $40fa: $00
    and l                                         ; $40fb: $a5
    cp $e0                                        ; $40fc: $fe $e0
    dec b                                         ; $40fe: $05
    cp l                                          ; $40ff: $bd
    or $e0                                        ; $4100: $f6 $e0
    rst $38                                       ; $4102: $ff
    cp $e0                                        ; $4103: $fe $e0
    ldh a, [rIE]                                  ; $4105: $f0 $ff
    ldh a, [rIE]                                  ; $4107: $f0 $ff
    ldh a, [rIE]                                  ; $4109: $f0 $ff
    ldh a, [rIE]                                  ; $410b: $f0 $ff
    nop                                           ; $410d: $00
    ldh a, [rIE]                                  ; $410e: $f0 $ff
    ldh a, [rIE]                                  ; $4110: $f0 $ff
    ldh a, [rIE]                                  ; $4112: $f0 $ff
    ldh a, [rIE]                                  ; $4114: $f0 $ff
    ldh a, [rIE]                                  ; $4116: $f0 $ff
    ldh a, [rIE]                                  ; $4118: $f0 $ff
    ldh a, [rIE]                                  ; $411a: $f0 $ff
    ldh a, [$f6]                                  ; $411c: $f0 $f6
    cp $ff                                        ; $411e: $fe $ff
    db $ec                                        ; $4120: $ec
    xor d                                         ; $4121: $aa
    rst $38                                       ; $4122: $ff
    dec b                                         ; $4123: $05
    rst $38                                       ; $4124: $ff
    jr z, @+$01                                   ; $4125: $28 $ff

    ld d, l                                       ; $4127: $55
    rst $08                                       ; $4128: $cf
    rst $38                                       ; $4129: $ff
    ld a, [$5fff]                                 ; $412a: $fa $ff $5f
    db $f4                                        ; $412d: $f4
    ldh [$e1], a                                  ; $412e: $e0 $e1
    db $ed                                        ; $4130: $ed
    nop                                           ; $4131: $00
    rst $38                                       ; $4132: $ff
    ld [hl], a                                    ; $4133: $77
    db $fd                                        ; $4134: $fd
    rst $38                                       ; $4135: $ff
    db $fc                                        ; $4136: $fc
    db $fc                                        ; $4137: $fc
    ld [$ff15], a                                 ; $4138: $ea $15 $ff
    add hl, sp                                    ; $413b: $39
    jp nc, Jump_02f_7fe0                          ; $413c: $d2 $e0 $7f

    add hl, sp                                    ; $413f: $39
    rst $38                                       ; $4140: $ff
    ld e, l                                       ; $4141: $5d
    rst $38                                       ; $4142: $ff
    xor c                                         ; $4143: $a9
    rst $38                                       ; $4144: $ff
    dec e                                         ; $4145: $1d
    db $fc                                        ; $4146: $fc
    ldh [rIE], a                                  ; $4147: $e0 $ff
    xor a                                         ; $4149: $af
    rst $38                                       ; $414a: $ff
    sub l                                         ; $414b: $95
    rst $38                                       ; $414c: $ff
    xor e                                         ; $414d: $ab
    rst $38                                       ; $414e: $ff
    add l                                         ; $414f: $85
    rst $38                                       ; $4150: $ff
    rst $18                                       ; $4151: $df
    jp nc, $c5ff                                  ; $4152: $d2 $ff $c5

    rst $38                                       ; $4155: $ff
    ldh a, [$a3]                                  ; $4156: $f0 $a3
    ld [c], a                                     ; $4158: $e2
    ld e, a                                       ; $4159: $5f
    rst $38                                       ; $415a: $ff
    push af                                       ; $415b: $f5
    cp a                                          ; $415c: $bf
    db $fc                                        ; $415d: $fc
    ld [c], a                                     ; $415e: $e2
    ccf                                           ; $415f: $3f
    sub l                                         ; $4160: $95
    db $ec                                        ; $4161: $ec
    push af                                       ; $4162: $f5
    rst $38                                       ; $4163: $ff
    set 7, a                                      ; $4164: $cb $ff
    rst $38                                       ; $4166: $ff
    push de                                       ; $4167: $d5
    rst $38                                       ; $4168: $ff
    ei                                            ; $4169: $fb
    db $fc                                        ; $416a: $fc
    adc a                                         ; $416b: $8f
    cp $a2                                        ; $416c: $fe $a2
    rst $38                                       ; $416e: $ff
    ld d, a                                       ; $416f: $57
    adc e                                         ; $4170: $8b
    rst $38                                       ; $4171: $ff
    and c                                         ; $4172: $a1
    db $f4                                        ; $4173: $f4
    ldh [$a9], a                                  ; $4174: $e0 $a9
    db $ec                                        ; $4176: $ec
    ldh [rHDMA5], a                               ; $4177: $e0 $55
    adc e                                         ; $4179: $8b
    ldh [$dd], a                                  ; $417a: $e0 $dd
    xor d                                         ; $417c: $aa
    ld c, b                                       ; $417d: $48
    ldh [$aa], a                                  ; $417e: $e0 $aa
    ld d, l                                       ; $4180: $55
    nop                                           ; $4181: $00
    ld [hl], h                                    ; $4182: $74
    ldh [rIE], a                                  ; $4183: $e0 $ff
    rst $38                                       ; $4185: $ff
    rst $38                                       ; $4186: $ff
    ld a, [bc]                                    ; $4187: $0a
    nop                                           ; $4188: $00
    ld l, e                                       ; $4189: $6b
    inc d                                         ; $418a: $14
    jr z, jr_02f_418d                             ; $418b: $28 $00

jr_02f_418d:
    nop                                           ; $418d: $00
    rst $38                                       ; $418e: $ff
    ld a, a                                       ; $418f: $7f
    and b                                         ; $4190: $a0
    ld bc, $01d4                                  ; $4191: $01 $d4 $01
    nop                                           ; $4194: $00
    ld bc, $f801                                  ; $4195: $01 $01 $f8
    and $7e                                       ; $4198: $e6 $7e
    add sp, -$1b                                  ; $419a: $e8 $e5
    push af                                       ; $419c: $f5
    ld a, [bc]                                    ; $419d: $0a
    sub h                                         ; $419e: $94
    ld a, a                                       ; $419f: $7f
    rst $10                                       ; $41a0: $d7
    jr z, @-$64                                   ; $41a1: $28 $9a

    ldh [$9f], a                                  ; $41a3: $e0 $9f
    and c                                         ; $41a5: $a1
    dec hl                                        ; $41a6: $2b
    push de                                       ; $41a7: $d5
    rst $38                                       ; $41a8: $ff
    ld bc, $e7f8                                  ; $41a9: $01 $f8 $e7
    add sp, -$1b                                  ; $41ac: $e8 $e5
    push af                                       ; $41ae: $f5
    rst $38                                       ; $41af: $ff
    ld a, [bc]                                    ; $41b0: $0a
    ld d, h                                       ; $41b1: $54

jr_02f_41b2:
    ccf                                           ; $41b2: $3f
    scf                                           ; $41b3: $37
    ld [$ff1f], sp                                ; $41b4: $08 $1f $ff
    xor a                                         ; $41b7: $af
    rst $28                                       ; $41b8: $ef
    ld bc, $01d7                                  ; $41b9: $01 $d7 $01
    inc bc                                        ; $41bc: $03
    ret nz                                        ; $41bd: $c0

    ldh [$df], a                                  ; $41be: $e0 $df
    ld hl, $ff8b                                  ; $41c0: $21 $8b $ff
    ld [hl], l                                    ; $41c3: $75
    ccf                                           ; $41c4: $3f
    ld bc, $ff1f                                  ; $41c5: $01 $1f $ff
    dec c                                         ; $41c8: $0d
    ld [bc], a                                    ; $41c9: $02
    ld h, h                                       ; $41ca: $64
    ei                                            ; $41cb: $fb
    rra                                           ; $41cc: $1f
    ld a, [hl+]                                   ; $41cd: $2a
    ret nc                                        ; $41ce: $d0

    ldh [$8a], a                                  ; $41cf: $e0 $8a
    nop                                           ; $41d1: $00
    xor e                                         ; $41d2: $ab
    ld d, h                                       ; $41d3: $54
    add sp, -$01                                  ; $41d4: $e8 $ff
    nop                                           ; $41d6: $00
    ldh a, [rIE]                                  ; $41d7: $f0 $ff
    ld e, b                                       ; $41d9: $58
    and c                                         ; $41da: $a1
    jr z, jr_02f_41b2                             ; $41db: $28 $d5

    cp $fa                                        ; $41dd: $fe $fa
    ret nz                                        ; $41df: $c0

    ldh [rIE], a                                  ; $41e0: $e0 $ff
    inc b                                         ; $41e2: $04
    ldh [$bf], a                                  ; $41e3: $e0 $bf
    rst $38                                       ; $41e5: $ff
    ld a, a                                       ; $41e6: $7f
    rst $38                                       ; $41e7: $ff
    cp [hl]                                       ; $41e8: $be
    cp $fc                                        ; $41e9: $fe $fc
    ret nz                                        ; $41eb: $c0

    ld a, [hl+]                                   ; $41ec: $2a
    rst $38                                       ; $41ed: $ff
    add b                                         ; $41ee: $80
    ld a, a                                       ; $41ef: $7f
    rst $38                                       ; $41f0: $ff
    rst $38                                       ; $41f1: $ff
    ld b, e                                       ; $41f2: $43
    rst $38                                       ; $41f3: $ff
    db $fd                                        ; $41f4: $fd
    xor c                                         ; $41f5: $a9
    rst $38                                       ; $41f6: $ff
    pop de                                        ; $41f7: $d1
    rst $38                                       ; $41f8: $ff
    and e                                         ; $41f9: $a3
    db $fd                                        ; $41fa: $fd
    ld b, l                                       ; $41fb: $45
    rst $38                                       ; $41fc: $ff
    ei                                            ; $41fd: $fb
    dec bc                                        ; $41fe: $0b
    push af                                       ; $41ff: $f5
    ld d, a                                       ; $4200: $57
    xor c                                         ; $4201: $a9
    ld [$7f15], a                                 ; $4202: $ea $15 $7f
    rst $38                                       ; $4205: $ff
    rst $38                                       ; $4206: $ff
    ld a, e                                       ; $4207: $7b
    push bc                                       ; $4208: $c5
    ld h, c                                       ; $4209: $61
    rst $18                                       ; $420a: $df
    ld c, e                                       ; $420b: $4b
    db $fd                                        ; $420c: $fd
    pop hl                                        ; $420d: $e1
    rst $38                                       ; $420e: $ff
    ld e, a                                       ; $420f: $5f
    ld c, e                                       ; $4210: $4b
    db $fd                                        ; $4211: $fd
    db $d3                                        ; $4212: $d3
    ld a, l                                       ; $4213: $7d
    cp h                                          ; $4214: $bc
    ld b, c                                       ; $4215: $41
    db $fd                                        ; $4216: $fd
    rst $38                                       ; $4217: $ff
    rst $38                                       ; $4218: $ff
    db $ed                                        ; $4219: $ed
    rla                                           ; $421a: $17
    add a                                         ; $421b: $87
    ld a, l                                       ; $421c: $7d
    dec l                                         ; $421d: $2d
    rst $30                                       ; $421e: $f7
    add a                                         ; $421f: $87
    rst $38                                       ; $4220: $ff
    ld a, l                                       ; $4221: $7d
    rrca                                          ; $4222: $0f
    push af                                       ; $4223: $f5
    rla                                           ; $4224: $17
    db $ed                                        ; $4225: $ed
    ret z                                         ; $4226: $c8

    ld a, c                                       ; $4227: $79
    db $dd                                        ; $4228: $dd
    rst $38                                       ; $4229: $ff
    ld a, c                                       ; $422a: $79
    call $ed79                                    ; $422b: $cd $79 $ed
    ld e, a                                       ; $422e: $5f
    jp $f77d                                      ; $422f: $c3 $7d $f7


    rst $38                                       ; $4232: $ff
    ld c, c                                       ; $4233: $49
    call c, $dd41                                 ; $4234: $dc $41 $dd
    ld a, a                                       ; $4237: $7f
    rrca                                          ; $4238: $0f
    dec [hl]                                      ; $4239: $35
    sub a                                         ; $423a: $97
    rst $38                                       ; $423b: $ff
    dec l                                         ; $423c: $2d
    adc l                                         ; $423d: $8d
    dec [hl]                                      ; $423e: $35
    sbc a                                         ; $423f: $9f
    push hl                                       ; $4240: $e5
    dec l                                         ; $4241: $2d
    push de                                       ; $4242: $d5
    rst $18                                       ; $4243: $df
    rst $38                                       ; $4244: $ff
    dec h                                         ; $4245: $25
    ld [hl], c                                    ; $4246: $71
    dec b                                         ; $4247: $05
    ld [hl], c                                    ; $4248: $71
    db $fd                                        ; $4249: $fd
    cp a                                          ; $424a: $bf
    ld b, b                                       ; $424b: $40
    rst $38                                       ; $424c: $ff
    rst $38                                       ; $424d: $ff
    ld a, a                                       ; $424e: $7f
    sbc $40                                       ; $424f: $de $40
    ret nz                                        ; $4251: $c0

    ld a, a                                       ; $4252: $7f
    push hl                                       ; $4253: $e5
    ld e, d                                       ; $4254: $5a
    rst $38                                       ; $4255: $ff
    rst $38                                       ; $4256: $ff
    ld a, a                                       ; $4257: $7f
    ld a, d                                       ; $4258: $7a
    dec b                                         ; $4259: $05
    dec hl                                        ; $425a: $2b
    rst $38                                       ; $425b: $ff
    ld d, c                                       ; $425c: $51
    ld bc, $fff1                                  ; $425d: $01 $f1 $ff
    db $fd                                        ; $4260: $fd
    and c                                         ; $4261: $a1
    dec b                                         ; $4262: $05
    cpl                                           ; $4263: $2f
    push de                                       ; $4264: $d5
    ld d, l                                       ; $4265: $55
    and l                                         ; $4266: $a5
    rst $38                                       ; $4267: $ff
    rst $38                                       ; $4268: $ff
    db $fd                                        ; $4269: $fd
    cp a                                          ; $426a: $bf
    ld b, c                                       ; $426b: $41
    xor c                                         ; $426c: $a9
    rst $38                                       ; $426d: $ff
    ld a, l                                       ; $426e: $7d
    ld [bc], a                                    ; $426f: $02
    ld [$15ff], a                                 ; $4270: $ea $ff $15
    call nc, $a02b                                ; $4273: $d4 $2b $a0
    ld e, a                                       ; $4276: $5f
    ret nz                                        ; $4277: $c0

    ccf                                           ; $4278: $3f
    and l                                         ; $4279: $a5
    ei                                            ; $427a: $fb
    ld e, a                                       ; $427b: $5f
    jp nz, $e0fc                                  ; $427c: $c2 $fc $e0

    ld e, a                                       ; $427f: $5f
    and c                                         ; $4280: $a1
    xor e                                         ; $4281: $ab
    ld d, l                                       ; $4282: $55
    dec d                                         ; $4283: $15
    rst $38                                       ; $4284: $ff
    db $eb                                        ; $4285: $eb
    inc bc                                        ; $4286: $03
    db $fd                                        ; $4287: $fd
    add c                                         ; $4288: $81
    rst $38                                       ; $4289: $ff

jr_02f_428a:
    ld d, e                                       ; $428a: $53
    db $fd                                        ; $428b: $fd
    and c                                         ; $428c: $a1
    rst $38                                       ; $428d: $ff
    rst $38                                       ; $428e: $ff
    db $d3                                        ; $428f: $d3
    db $fd                                        ; $4290: $fd
    jp $853f                                      ; $4291: $c3 $3f $85


    ld a, a                                       ; $4294: $7f
    set 5, e                                      ; $4295: $cb $eb
    ccf                                           ; $4297: $3f
    add a                                         ; $4298: $87

Jump_02f_4299:
    db $fc                                        ; $4299: $fc
    and $61                                       ; $429a: $e6 $61
    ld h, h                                       ; $429c: $64
    ldh [$e9], a                                  ; $429d: $e0 $e9
    rst $38                                       ; $429f: $ff
    pop af                                        ; $42a0: $f1
    and b                                         ; $42a1: $a0
    db $fc                                        ; $42a2: $fc
    and $e4                                       ; $42a3: $e6 $e4
    jp hl                                         ; $42a5: $e9


    ret c                                         ; $42a6: $d8

    pop hl                                        ; $42a7: $e1
    db $e4                                        ; $42a8: $e4
    jp hl                                         ; $42a9: $e9


    ldh [$ef], a                                  ; $42aa: $e0 $ef
    add l                                         ; $42ac: $85
    ldh [$e8], a                                  ; $42ad: $e0 $e8
    push af                                       ; $42af: $f5
    xor $32                                       ; $42b0: $ee $32
    add b                                         ; $42b2: $80
    push af                                       ; $42b3: $f5
    rst $38                                       ; $42b4: $ff
    jp $e288                                      ; $42b5: $c3 $88 $e2


    and c                                         ; $42b8: $a1
    ld e, a                                       ; $42b9: $5f
    ret z                                         ; $42ba: $c8

    rst $38                                       ; $42bb: $ff
    scf                                           ; $42bc: $37
    and b                                         ; $42bd: $a0
    ld e, a                                       ; $42be: $5f
    call nc, $ea2b                                ; $42bf: $d4 $2b $ea
    dec d                                         ; $42c2: $15
    ld a, [$dfba]                                 ; $42c3: $fa $ba $df
    and d                                         ; $42c6: $a2
    ld a, a                                       ; $42c7: $7f
    jr z, jr_02f_428a                             ; $42c8: $28 $c0

    ld d, l                                       ; $42ca: $55
    rst $38                                       ; $42cb: $ff
    ld a, [bc]                                    ; $42cc: $0a
    ldh a, [$c0]                                  ; $42cd: $f0 $c0
    xor d                                         ; $42cf: $aa
    sub h                                         ; $42d0: $94
    ld c, b                                       ; $42d1: $48
    ret nz                                        ; $42d2: $c0

    call z, Call_02f_55a3                         ; $42d3: $cc $a3 $55
    ldh [$a2], a                                  ; $42d6: $e0 $a2
    xor b                                         ; $42d8: $a8
    call nc, $dca2                                ; $42d9: $d4 $a2 $dc
    push hl                                       ; $42dc: $e5
    ld d, a                                       ; $42dd: $57
    cp a                                          ; $42de: $bf
    rst $38                                       ; $42df: $ff

Call_02f_42e0:
    cpl                                           ; $42e0: $2f
    pop de                                        ; $42e1: $d1
    rla                                           ; $42e2: $17
    jp hl                                         ; $42e3: $e9


    add e                                         ; $42e4: $83
    call nc, $a3c0                                ; $42e5: $d4 $c0 $a3
    rst $28                                       ; $42e8: $ef
    db $fd                                        ; $42e9: $fd
    pop de                                        ; $42ea: $d1
    rst $38                                       ; $42eb: $ff
    db $e3                                        ; $42ec: $e3
    db $fc                                        ; $42ed: $fc
    ldh [rIF], a                                  ; $42ee: $e0 $0f
    rst $38                                       ; $42f0: $ff
    sub a                                         ; $42f1: $97
    cp [hl]                                       ; $42f2: $be
    ld d, b                                       ; $42f3: $50
    ld [$027d], a                                 ; $42f4: $ea $7d $02
    rla                                           ; $42f7: $17
    nop                                           ; $42f8: $00
    cp a                                          ; $42f9: $bf
    jp hl                                         ; $42fa: $e9


    ld h, b                                       ; $42fb: $60
    rst $18                                       ; $42fc: $df
    ld l, a                                       ; $42fd: $6f
    rst $38                                       ; $42fe: $ff
    ld a, [$dfc5]                                 ; $42ff: $fa $c5 $df
    pop hl                                        ; $4302: $e1
    ld h, b                                       ; $4303: $60
    ld d, b                                       ; $4304: $50
    xor a                                         ; $4305: $af
    ld a, h                                       ; $4306: $7c
    and l                                         ; $4307: $a5
    ld d, c                                       ; $4308: $51
    ld b, b                                       ; $4309: $40
    jp hl                                         ; $430a: $e9


    pop hl                                        ; $430b: $e1
    ld l, a                                       ; $430c: $6f
    and c                                         ; $430d: $a1
    ld l, h                                       ; $430e: $6c
    and h                                         ; $430f: $a4
    ld d, l                                       ; $4310: $55
    ld h, l                                       ; $4311: $65
    xor d                                         ; $4312: $aa
    cp $6c                                        ; $4313: $fe $6c
    and b                                         ; $4315: $a0
    call nc, $c019                                ; $4316: $d4 $19 $c0
    xor a                                         ; $4319: $af
    ld h, b                                       ; $431a: $60
    ld d, c                                       ; $431b: $51
    db $10                                        ; $431c: $10
    ldh [$d1], a                                  ; $431d: $e0 $d1
    ret nc                                        ; $431f: $d0

    and b                                         ; $4320: $a0
    dec b                                         ; $4321: $05
    ei                                            ; $4322: $fb
    rst $30                                       ; $4323: $f7
    cpl                                           ; $4324: $2f
    pop de                                        ; $4325: $d1
    db $fd                                        ; $4326: $fd
    and b                                         ; $4327: $a0
    ld h, b                                       ; $4328: $60
    xor b                                         ; $4329: $a8
    ld d, a                                       ; $432a: $57
    db $dd                                        ; $432b: $dd
    jr z, @+$01                                   ; $432c: $28 $ff

    cp b                                          ; $432e: $b8
    ld d, c                                       ; $432f: $51
    ld [hl], c                                    ; $4330: $71
    sub c                                         ; $4331: $91
    sub b                                         ; $4332: $90
    ld d, c                                       ; $4333: $51
    ld d, c                                       ; $4334: $51
    sub b                                         ; $4335: $90
    rst $38                                       ; $4336: $ff
    sbc b                                         ; $4337: $98
    ld d, b                                       ; $4338: $50
    jp hl                                         ; $4339: $e9


    ld bc, $c13d                                  ; $433a: $01 $3d $c1
    ld a, l                                       ; $433d: $7d
    ld hl, $3dff                                  ; $433e: $21 $ff $3d
    ld de, $111f                                  ; $4341: $11 $1f $11
    cp l                                          ; $4344: $bd

Jump_02f_4345:
    pop de                                        ; $4345: $d1
    rst $18                                       ; $4346: $df
    ld de, $3dcb                                  ; $4347: $11 $cb $3d
    ld de, $a13c                                  ; $434a: $11 $3c $a1
    ld d, l                                       ; $434d: $55
    xor a                                         ; $434e: $af
    and b                                         ; $434f: $a0
    or d                                          ; $4350: $b2
    push hl                                       ; $4351: $e5
    ld d, l                                       ; $4352: $55
    xor d                                         ; $4353: $aa
    rst $38                                       ; $4354: $ff
    cp $01                                        ; $4355: $fe $01
    xor [hl]                                      ; $4357: $ae
    ld bc, $0bf5                                  ; $4358: $01 $f5 $0b
    and e                                         ; $435b: $a3
    ld e, a                                       ; $435c: $5f
    ld sp, hl                                     ; $435d: $f9
    rla                                           ; $435e: $17
    ld l, b                                       ; $435f: $68

jr_02f_4360:
    and b                                         ; $4360: $a0
    db $10                                        ; $4361: $10
    jp $ff3f                                      ; $4362: $c3 $3f $ff


    dec a                                         ; $4365: $3d
    rst $38                                       ; $4366: $ff
    cp a                                          ; $4367: $bf
    rst $38                                       ; $4368: $ff
    ld a, a                                       ; $4369: $7f
    ld a, l                                       ; $436a: $7d
    cp a                                          ; $436b: $bf
    xor c                                         ; $436c: $a9
    ld d, a                                       ; $436d: $57
    db $f4                                        ; $436e: $f4
    dec bc                                        ; $436f: $0b
    ld a, [hl+]                                   ; $4370: $2a
    rst $38                                       ; $4371: $ff
    rst $38                                       ; $4372: $ff
    add l                                         ; $4373: $85
    ld a, a                                       ; $4374: $7f
    ld b, b                                       ; $4375: $40
    cp a                                          ; $4376: $bf
    xor b                                         ; $4377: $a8
    ld d, a                                       ; $4378: $57
    pop de                                        ; $4379: $d1
    sbc a                                         ; $437a: $9f
    ld l, $aa                                     ; $437b: $2e $aa
    ld d, l                                       ; $437d: $55
    push af                                       ; $437e: $f5
    ld a, [bc]                                    ; $437f: $0a
    ld [hl], h                                    ; $4380: $74
    and b                                         ; $4381: $a0
    xor e                                         ; $4382: $ab
    and b                                         ; $4383: $a0
    nop                                           ; $4384: $00
    ld a, a                                       ; $4385: $7f
    rst $38                                       ; $4386: $ff
    jr z, jr_02f_4360                             ; $4387: $28 $d7

    ld d, l                                       ; $4389: $55
    xor d                                         ; $438a: $aa
    xor d                                         ; $438b: $aa
    ld d, l                                       ; $438c: $55
    or d                                          ; $438d: $b2
    add c                                         ; $438e: $81
    db $fc                                        ; $438f: $fc
    ldh [$81], a                                  ; $4390: $e0 $81
    xor c                                         ; $4392: $a9
    add c                                         ; $4393: $81
    inc d                                         ; $4394: $14
    db $eb                                        ; $4395: $eb
    xor d                                         ; $4396: $aa
    ld d, l                                       ; $4397: $55
    ld e, l                                       ; $4398: $5d
    and d                                         ; $4399: $a2
    db $fd                                        ; $439a: $fd
    rst $38                                       ; $439b: $ff
    inc [hl]                                      ; $439c: $34
    ldh [$57], a                                  ; $439d: $e0 $57
    rst $38                                       ; $439f: $ff
    dec hl                                        ; $43a0: $2b
    rst $38                                       ; $43a1: $ff
    rlca                                          ; $43a2: $07
    rst $38                                       ; $43a3: $ff
    rst $38                                       ; $43a4: $ff
    dec bc                                        ; $43a5: $0b
    rst $38                                       ; $43a6: $ff
    and l                                         ; $43a7: $a5
    ld e, a                                       ; $43a8: $5f
    ld d, e                                       ; $43a9: $53
    xor a                                         ; $43aa: $af
    jp hl                                         ; $43ab: $e9


    rla                                           ; $43ac: $17
    rst $38                                       ; $43ad: $ff
    rla                                           ; $43ae: $17
    rst $38                                       ; $43af: $ff
    db $eb                                        ; $43b0: $eb
    rla                                           ; $43b1: $17
    ld d, a                                       ; $43b2: $57
    cp a                                          ; $43b3: $bf
    or a                                          ; $43b4: $b7
    ld e, a                                       ; $43b5: $5f
    sbc a                                         ; $43b6: $9f
    rst $18                                       ; $43b7: $df
    rst $38                                       ; $43b8: $ff
    and c                                         ; $43b9: $a1
    ld e, a                                       ; $43ba: $5f
    dec hl                                        ; $43bb: $2b

Jump_02f_43bc:
    inc b                                         ; $43bc: $04
    ldh [$e2], a                                  ; $43bd: $e0 $e2
    pop hl                                        ; $43bf: $e1
    add a                                         ; $43c0: $87
    rst $38                                       ; $43c1: $ff
    ld a, a                                       ; $43c2: $7f
    ld c, e                                       ; $43c3: $4b
    cp a                                          ; $43c4: $bf
    add l                                         ; $43c5: $85

jr_02f_43c6:
    ld a, a                                       ; $43c6: $7f
    ld d, e                                       ; $43c7: $53
    xor a                                         ; $43c8: $af
    xor c                                         ; $43c9: $a9
    rst $38                                       ; $43ca: $ff
    ld d, a                                       ; $43cb: $57
    push af                                       ; $43cc: $f5
    dec bc                                        ; $43cd: $0b
    ld d, [hl]                                    ; $43ce: $56
    rst $38                                       ; $43cf: $ff
    ld [$7115], a                                 ; $43d0: $ea $15 $71
    rst $38                                       ; $43d3: $ff
    sbc [hl]                                      ; $43d4: $9e
    cp b                                          ; $43d5: $b8
    ld d, a                                       ; $43d6: $57
    ld e, l                                       ; $43d7: $5d
    rst $38                                       ; $43d8: $ff
    xor [hl]                                      ; $43d9: $ae
    ld d, c                                       ; $43da: $51
    rla                                           ; $43db: $17
    xor a                                         ; $43dc: $af
    jp hl                                         ; $43dd: $e9


    adc e                                         ; $43de: $8b
    ld [hl], l                                    ; $43df: $75
    sub [hl]                                      ; $43e0: $96
    ldh a, [$e4]                                  ; $43e1: $f0 $e4
    db $dd                                        ; $43e3: $dd
    ldh a, [$e0]                                  ; $43e4: $f0 $e0
    ld d, $f7                                     ; $43e6: $16 $f7
    jp hl                                         ; $43e8: $e9


    add a                                         ; $43e9: $87
    ld a, a                                       ; $43ea: $7f
    ldh a, [$e9]                                  ; $43eb: $f0 $e9
    rla                                           ; $43ed: $17
    jp hl                                         ; $43ee: $e9


    set 6, l                                      ; $43ef: $cb $f5
    db $fd                                        ; $43f1: $fd
    sub a                                         ; $43f2: $97
    ret nc                                        ; $43f3: $d0

    ldh [rSVBK], a                                ; $43f4: $e0 $70
    sbc a                                         ; $43f6: $9f
    cp c                                          ; $43f7: $b9
    ld d, a                                       ; $43f8: $57
    rst $18                                       ; $43f9: $df

jr_02f_43fa:
    rst $38                                       ; $43fa: $ff
    rst $18                                       ; $43fb: $df
    xor c                                         ; $43fc: $a9
    ld d, a                                       ; $43fd: $57
    ld de, $85ef                                  ; $43fe: $11 $ef $85
    ld [hl], b                                    ; $4401: $70
    and b                                         ; $4402: $a0
    inc de                                        ; $4403: $13
    rst $38                                       ; $4404: $ff
    ld a, l                                       ; $4405: $7d
    sub a                                         ; $4406: $97
    sbc b                                         ; $4407: $98
    ret nz                                        ; $4408: $c0

    rst $38                                       ; $4409: $ff
    rst $38                                       ; $440a: $ff
    add c                                         ; $440b: $81
    ld a, a                                       ; $440c: $7f
    dec hl                                        ; $440d: $2b
    ld e, h                                       ; $440e: $5c
    add b                                         ; $440f: $80
    ld e, l                                       ; $4410: $5d
    rla                                           ; $4411: $17
    or b                                          ; $4412: $b0
    ld [$ff51], a                                 ; $4413: $ea $51 $ff
    db $dd                                        ; $4416: $dd
    or b                                          ; $4417: $b0
    and $af                                       ; $4418: $e6 $af
    ldh a, [$e2]                                  ; $441a: $f0 $e2
    ld a, a                                       ; $441c: $7f
    rst $18                                       ; $441d: $df
    rst $38                                       ; $441e: $ff
    add sp, $17                                   ; $441f: $e8 $17
    ld d, d                                       ; $4421: $52
    cp a                                          ; $4422: $bf
    sub l                                         ; $4423: $95
    jr c, jr_02f_43c6                             ; $4424: $38 $a0

    ld sp, hl                                     ; $4426: $f9
    add l                                         ; $4427: $85
    ret nc                                        ; $4428: $d0

    ldh [rNR12], a                                ; $4429: $e0 $12
    add c                                         ; $442b: $81
    inc de                                        ; $442c: $13
    rst $38                                       ; $442d: $ff
    or a                                          ; $442e: $b7
    rst $38                                       ; $442f: $ff
    rst $30                                       ; $4430: $f7
    ld hl, sp+$67                                 ; $4431: $f8 $67
    ld b, b                                       ; $4433: $40
    jp nz, Jump_000_2ee1                          ; $4434: $c2 $e1 $2e

    add c                                         ; $4437: $81
    rst $10                                       ; $4438: $d7
    jr z, jr_02f_43fa                             ; $4439: $28 $bf

    ld a, a                                       ; $443b: $7f
    ld l, [hl]                                    ; $443c: $6e
    rst $38                                       ; $443d: $ff
    cp a                                          ; $443e: $bf
    cp e                                          ; $443f: $bb
    ld a, a                                       ; $4440: $7f
    xor $3f                                       ; $4441: $ee $3f
    cp a                                          ; $4443: $bf
    ld a, a                                       ; $4444: $7f
    rst $28                                       ; $4445: $ef
    rst $38                                       ; $4446: $ff
    db $10                                        ; $4447: $10
    ld bc, $d7ff                                  ; $4448: $01 $ff $d7
    add hl, hl                                    ; $444b: $29
    ei                                            ; $444c: $fb
    db $fd                                        ; $444d: $fd
    db $ed                                        ; $444e: $ed
    rst $28                                       ; $444f: $ef
    ei                                            ; $4450: $fb
    cp e                                          ; $4451: $bb
    db $fd                                        ; $4452: $fd
    rst $28                                       ; $4453: $ef
    cp $20                                        ; $4454: $fe $20
    rst $28                                       ; $4456: $ef
    ld de, $fdff                                  ; $4457: $11 $ff $fd
    nop                                           ; $445a: $00
    ld hl, sp-$5f                                 ; $445b: $f8 $a1
    ld d, a                                       ; $445d: $57
    rst $38                                       ; $445e: $ff
    jp z, $a83f                                   ; $445f: $ca $3f $a8

    ld d, a                                       ; $4462: $57
    cp a                                          ; $4463: $bf
    ld d, l                                       ; $4464: $55
    xor d                                         ; $4465: $aa
    dec d                                         ; $4466: $15
    rst $38                                       ; $4467: $ff
    rst $38                                       ; $4468: $ff
    ld bc, $81fa                                  ; $4469: $01 $fa $81
    push de                                       ; $446c: $d5
    rst $38                                       ; $446d: $ff
    rst $38                                       ; $446e: $ff
    and a                                         ; $446f: $a7
    ld sp, hl                                     ; $4470: $f9
    dec hl                                        ; $4471: $2b
    push de                                       ; $4472: $d5
    ld d, l                                       ; $4473: $55
    xor e                                         ; $4474: $ab
    ld d, c                                       ; $4475: $51
    rst $38                                       ; $4476: $ff
    rst $38                                       ; $4477: $ff
    db $eb                                        ; $4478: $eb
    add e                                         ; $4479: $83
    xor l                                         ; $447a: $ad
    ld d, c                                       ; $447b: $51
    dec e                                         ; $447c: $1d
    pop hl                                        ; $447d: $e1
    xor e                                         ; $447e: $ab
    rst $38                                       ; $447f: $ff
    ld d, c                                       ; $4480: $51
    db $dd                                        ; $4481: $dd
    ld hl, $413b                                  ; $4482: $21 $3b $41
    push af                                       ; $4485: $f5
    ld bc, $ff69                                  ; $4486: $01 $69 $ff
    ld bc, $8183                                  ; $4489: $01 $83 $81
    ld c, e                                       ; $448c: $4b
    push af                                       ; $448d: $f5
    and a                                         ; $448e: $a7
    ei                                            ; $448f: $fb
    rst $38                                       ; $4490: $ff
    rst $38                                       ; $4491: $ff
    rst $38                                       ; $4492: $ff
    ld a, e                                       ; $4493: $7b
    rst $38                                       ; $4494: $ff
    cp l                                          ; $4495: $bd
    ld a, e                                       ; $4496: $7b
    xor l                                         ; $4497: $ad
    ld a, e                                       ; $4498: $7b
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    rst $38                                       ; $449b: $ff
    db $fd                                        ; $449c: $fd
    add d                                         ; $449d: $82
    ld [$d315], a                                 ; $449e: $ea $15 $d3
    cpl                                           ; $44a1: $2f
    and e                                         ; $44a2: $a3
    rst $38                                       ; $44a3: $ff

jr_02f_44a4:
    ld e, a                                       ; $44a4: $5f
    ret                                           ; $44a5: $c9


    scf                                           ; $44a6: $37
    and e                                         ; $44a7: $a3
    ld e, h                                       ; $44a8: $5c
    rst $00                                       ; $44a9: $c7
    add hl, sp                                    ; $44aa: $39
    adc a                                         ; $44ab: $8f
    db $fd                                        ; $44ac: $fd
    ld [hl], e                                    ; $44ad: $73
    ld e, b                                       ; $44ae: $58
    add b                                         ; $44af: $80
    call nc, $7a85                                ; $44b0: $d4 $85 $7a
    sub e                                         ; $44b3: $93
    db $ec                                        ; $44b4: $ec
    add l                                         ; $44b5: $85
    rst $38                                       ; $44b6: $ff
    ld a, [$fc83]                                 ; $44b7: $fa $83 $fc
    adc c                                         ; $44ba: $89
    or $03                                        ; $44bb: $f6 $03
    db $fc                                        ; $44bd: $fc
    ld e, [hl]                                    ; $44be: $5e
    rst $38                                       ; $44bf: $ff
    and a                                         ; $44c0: $a7
    cp h                                          ; $44c1: $bc
    ld c, a                                       ; $44c2: $4f
    jr c, jr_02f_44a4                             ; $44c3: $38 $df

    sub b                                         ; $44c5: $90
    ld a, a                                       ; $44c6: $7f
    nop                                           ; $44c7: $00
    rst $38                                       ; $44c8: $ff
    rst $38                                       ; $44c9: $ff
    and d                                         ; $44ca: $a2
    ld e, l                                       ; $44cb: $5d
    ld b, b                                       ; $44cc: $40
    cp a                                          ; $44cd: $bf
    adc b                                         ; $44ce: $88
    ld [hl], a                                    ; $44cf: $77
    dec h                                         ; $44d0: $25
    rst $38                                       ; $44d1: $ff
    jp c, $fd02                                   ; $44d2: $da $02 $fd

    add hl, de                                    ; $44d5: $19
    and $1c                                       ; $44d6: $e6 $1c
    rst $28                                       ; $44d8: $ef
    add hl, sp                                    ; $44d9: $39
    rst $38                                       ; $44da: $ff
    adc $3a                                       ; $44db: $ce $3a
    db $dd                                        ; $44dd: $dd
    ld [hl], c                                    ; $44de: $71
    sbc [hl]                                      ; $44df: $9e
    ld [hl], e                                    ; $44e0: $73
    cp h                                          ; $44e1: $bc
    ld d, b                                       ; $44e2: $50
    rst $38                                       ; $44e3: $ff
    xor a                                         ; $44e4: $af
    xor b                                         ; $44e5: $a8
    ld d, a                                       ; $44e6: $57
    ld b, b                                       ; $44e7: $40
    cp a                                          ; $44e8: $bf
    and b                                         ; $44e9: $a0
    ld e, a                                       ; $44ea: $5f
    jp nz, Jump_000_3dff                          ; $44eb: $c2 $ff $3d

    xor b                                         ; $44ee: $a8
    ld d, a                                       ; $44ef: $57
    push de                                       ; $44f0: $d5
    ld a, [hl+]                                   ; $44f1: $2a
    ld a, d                                       ; $44f2: $7a
    add l                                         ; $44f3: $85
    push hl                                       ; $44f4: $e5
    rst $38                                       ; $44f5: $ff
    ld a, [hl-]                                   ; $44f6: $3a
    db $e3                                        ; $44f7: $e3
    db $fc                                        ; $44f8: $fc
    push af                                       ; $44f9: $f5
    ld a, [$fc63]                                 ; $44fa: $fa $63 $fc

Call_02f_44fd:
    rlca                                          ; $44fd: $07
    sbc a                                         ; $44fe: $9f
    ld hl, sp-$55                                 ; $44ff: $f8 $ab
    ld d, h                                       ; $4501: $54
    ld e, a                                       ; $4502: $5f
    and b                                         ; $4503: $a0
    inc [hl]                                      ; $4504: $34
    ret nz                                        ; $4505: $c0

    ld d, h                                       ; $4506: $54
    ld h, b                                       ; $4507: $60
    adc d                                         ; $4508: $8a
    or $3b                                        ; $4509: $f6 $3b
    ld h, d                                       ; $450b: $62
    and c                                         ; $450c: $a1
    cp $b0                                        ; $450d: $fe $b0
    and c                                         ; $450f: $a1
    xor c                                         ; $4510: $a9
    cp $43                                        ; $4511: $fe $43
    db $fc                                        ; $4513: $fc
    or a                                          ; $4514: $b7
    rla                                           ; $4515: $17
    jp hl                                         ; $4516: $e9


    jp hl                                         ; $4517: $e9


    jp nc, $5d80                                  ; $4518: $d2 $80 $5d

    and e                                         ; $451b: $a3
    ld h, d                                       ; $451c: $62
    ldh [rIE], a                                  ; $451d: $e0 $ff
    rst $38                                       ; $451f: $ff
    sbc $3f                                       ; $4520: $de $3f
    rst $38                                       ; $4522: $ff
    ld de, $ddf3                                  ; $4523: $11 $f3 $dd
    rst $30                                       ; $4526: $f7
    rst $18                                       ; $4527: $df
    rst $38                                       ; $4528: $ff
    db $fd                                        ; $4529: $fd
    rst $10                                       ; $452a: $d7
    sbc $f7                                       ; $452b: $de $f7
    ld e, a                                       ; $452d: $5f
    or $77                                        ; $452e: $f6 $77
    cp $ff                                        ; $4530: $fe $ff
    ld a, l                                       ; $4532: $7d
    cp h                                          ; $4533: $bc
    ret nz                                        ; $4534: $c0

    add c                                         ; $4535: $81
    push de                                       ; $4536: $d5
    db $e3                                        ; $4537: $e3
    di                                            ; $4538: $f3
    rst $38                                       ; $4539: $ff
    ld a, a                                       ; $453a: $7f
    push hl                                       ; $453b: $e5
    rst $38                                       ; $453c: $ff
    cp e                                          ; $453d: $bb
    db $fd                                        ; $453e: $fd
    reti                                          ; $453f: $d9


    db $e3                                        ; $4540: $e3
    ei                                            ; $4541: $fb
    ld h, h                                       ; $4542: $64
    ld h, b                                       ; $4543: $60
    rst $38                                       ; $4544: $ff
    ld h, b                                       ; $4545: $60
    cp a                                          ; $4546: $bf
    ld [$3a35], a                                 ; $4547: $ea $35 $3a
    and c                                         ; $454a: $a1
    sub $21                                       ; $454b: $d6 $21
    rst $38                                       ; $454d: $ff
    ld [$a6a3], sp                                ; $454e: $08 $a3 $a6
    ld bc, $a30c                                  ; $4551: $01 $0c $a3
    rst $30                                       ; $4554: $f7
    ld hl, sp-$01                                 ; $4555: $f8 $ff
    ld e, a                                       ; $4557: $5f
    ldh [$dd], a                                  ; $4558: $e0 $dd
    ld h, d                                       ; $455a: $62
    or a                                          ; $455b: $b7
    ld a, b                                       ; $455c: $78
    db $dd                                        ; $455d: $dd
    ccf                                           ; $455e: $3f
    rst $28                                       ; $455f: $ef
    xor a                                         ; $4560: $af
    ld e, a                                       ; $4561: $5f
    db $f4                                        ; $4562: $f4
    dec bc                                        ; $4563: $0b
    ld bc, $0780                                  ; $4564: $01 $80 $07
    xor l                                         ; $4567: $ad
    ld d, a                                       ; $4568: $57
    rst $38                                       ; $4569: $ff
    ld c, a                                       ; $456a: $4f
    or l                                          ; $456b: $b5
    rst $38                                       ; $456c: $ff
    dec b                                         ; $456d: $05
    rst $28                                       ; $456e: $ef
    db $fd                                        ; $456f: $fd
    ld sp, hl                                     ; $4570: $f9
    rst $38                                       ; $4571: $ff
    db $fd                                        ; $4572: $fd
    dec bc                                        ; $4573: $0b
    dec b                                         ; $4574: $05
    and d                                         ; $4575: $a2
    dec d                                         ; $4576: $15
    rst $38                                       ; $4577: $ff
    ld c, h                                       ; $4578: $4c
    cp a                                          ; $4579: $bf
    scf                                           ; $457a: $37
    db $dd                                        ; $457b: $dd
    rst $38                                       ; $457c: $ff
    ld c, h                                       ; $457d: $4c
    cp a                                          ; $457e: $bf
    daa                                           ; $457f: $27
    db $dd                                        ; $4580: $dd
    sbc h                                         ; $4581: $9c
    rst $28                                       ; $4582: $ef
    daa                                           ; $4583: $27
    db $dd                                        ; $4584: $dd
    rst $38                                       ; $4585: $ff
    or d                                          ; $4586: $b2
    dec b                                         ; $4587: $05
    inc l                                         ; $4588: $2c
    add e                                         ; $4589: $83
    cp d                                          ; $458a: $ba
    dec b                                         ; $458b: $05
    dec c                                         ; $458c: $0d
    and d                                         ; $458d: $a2
    ld a, a                                       ; $458e: $7f
    xor c                                         ; $458f: $a9
    rla                                           ; $4590: $17
    ld c, d                                       ; $4591: $4a
    add b                                         ; $4592: $80
    add b                                         ; $4593: $80
    ld a, a                                       ; $4594: $7f
    sub l                                         ; $4595: $95
    sub $82                                       ; $4596: $d6 $82
    dec e                                         ; $4598: $1d
    ld e, a                                       ; $4599: $5f
    and h                                         ; $459a: $a4

jr_02f_459b:
    jp nz, Jump_000_15ea                          ; $459b: $c2 $ea $15

    ld [bc], a                                    ; $459e: $02
    cp b                                          ; $459f: $b8
    ld h, b                                       ; $45a0: $60
    cp $c0                                        ; $45a1: $fe $c0
    ld b, h                                       ; $45a3: $44
    and b                                         ; $45a4: $a0
    ld a, [$81cc]                                 ; $45a5: $fa $cc $81
    nop                                           ; $45a8: $00
    db $e4                                        ; $45a9: $e4
    ld b, b                                       ; $45aa: $40
    rst $38                                       ; $45ab: $ff
    rst $38                                       ; $45ac: $ff
    sub h                                         ; $45ad: $94
    rst $28                                       ; $45ae: $ef
    cpl                                           ; $45af: $2f
    rst $38                                       ; $45b0: $ff
    push de                                       ; $45b1: $d5
    ld d, h                                       ; $45b2: $54
    xor a                                         ; $45b3: $af
    rlca                                          ; $45b4: $07
    db $fd                                        ; $45b5: $fd
    ei                                            ; $45b6: $fb
    db $fd                                        ; $45b7: $fd
    inc b                                         ; $45b8: $04
    db $fd                                        ; $45b9: $fd
    ei                                            ; $45ba: $fb
    or [hl]                                       ; $45bb: $b6
    add c                                         ; $45bc: $81
    ld [$b580], a                                 ; $45bd: $ea $80 $b5
    ld a, a                                       ; $45c0: $7f
    ld l, d                                       ; $45c1: $6a
    rst $38                                       ; $45c2: $ff
    rst $38                                       ; $45c3: $ff
    ld [hl], e                                    ; $45c4: $73
    ld hl, sp+$78                                 ; $45c5: $f8 $78
    ldh a, [$58]                                  ; $45c7: $f0 $58
    jr nc, jr_02f_459b                            ; $45c9: $30 $d0

    jr nc, @+$01                                  ; $45cb: $30 $ff

    cp e                                          ; $45cd: $bb
    ld [hl], b                                    ; $45ce: $70
    ld bc, $5201                                  ; $45cf: $01 $01 $52
    db $fc                                        ; $45d2: $fc
    ld bc, $fffe                                  ; $45d3: $01 $fe $ff
    ret                                           ; $45d6: $c9


    ld e, $1e                                     ; $45d7: $1e $1e
    rrca                                          ; $45d9: $0f
    inc d                                         ; $45da: $14
    ld [$0804], sp                                ; $45db: $08 $04 $08
    rst $38                                       ; $45de: $ff
    jp c, $d70c                                   ; $45df: $da $0c $d7

    xor b                                         ; $45e2: $a8
    ccf                                           ; $45e3: $3f
    ret nz                                        ; $45e4: $c0

    ld b, c                                       ; $45e5: $41
    cp [hl]                                       ; $45e6: $be
    rst $38                                       ; $45e7: $ff
    ld c, d                                       ; $45e8: $4a
    push af                                       ; $45e9: $f5
    sub a                                         ; $45ea: $97
    add sp, $2f                                   ; $45eb: $e8 $2f
    ret nc                                        ; $45ed: $d0

    sbc a                                         ; $45ee: $9f
    ldh [rIE], a                                  ; $45ef: $e0 $ff
    cpl                                           ; $45f1: $2f
    ret nc                                        ; $45f2: $d0

    db $fd                                        ; $45f3: $fd
    ld [bc], a                                    ; $45f4: $02
    cp $01                                        ; $45f5: $fe $01
    ld d, a                                       ; $45f7: $57
    xor b                                         ; $45f8: $a8
    jp Jump_000_15ea                              ; $45f9: $c3 $ea $15


    ld hl, sp-$1f                                 ; $45fc: $f8 $e1
    db $f4                                        ; $45fe: $f4
    pop hl                                        ; $45ff: $e1
    db $ec                                        ; $4600: $ec
    pop hl                                        ; $4601: $e1
    db $fc                                        ; $4602: $fc
    rst $20                                       ; $4603: $e7
    ld a, [hl+]                                   ; $4604: $2a
    push de                                       ; $4605: $d5
    db $ec                                        ; $4606: $ec
    add sp, -$1b                                  ; $4607: $e8 $e5
    ldh [$e3], a                                  ; $4609: $e0 $e3
    xor d                                         ; $460b: $aa
    ld d, l                                       ; $460c: $55
    and b                                         ; $460d: $a0
    db $e3                                        ; $460e: $e3
    ld d, b                                       ; $460f: $50
    rst $38                                       ; $4610: $ff
    ld [bc], a                                    ; $4611: $02
    rst $28                                       ; $4612: $ef
    db $fd                                        ; $4613: $fd
    rst $18                                       ; $4614: $df
    rst $38                                       ; $4615: $ff
    cp a                                          ; $4616: $bf
    adc a                                         ; $4617: $8f
    add b                                         ; $4618: $80
    add b                                         ; $4619: $80
    ld bc, $ff42                                  ; $461a: $01 $42 $ff
    db $fc                                        ; $461d: $fc
    add hl, bc                                    ; $461e: $09
    or $55                                        ; $461f: $f6 $55
    xor d                                         ; $4621: $aa
    xor a                                         ; $4622: $af
    ld d, b                                       ; $4623: $50
    db $fd                                        ; $4624: $fd
    ei                                            ; $4625: $fb
    rst $38                                       ; $4626: $ff
    ei                                            ; $4627: $fb
    pop bc                                        ; $4628: $c1
    add b                                         ; $4629: $80
    ld [bc], a                                    ; $462a: $02
    add b                                         ; $462b: $80
    dec d                                         ; $462c: $15
    nop                                           ; $462d: $00
    dec hl                                        ; $462e: $2b
    rst $38                                       ; $462f: $ff
    nop                                           ; $4630: $00
    ld e, [hl]                                    ; $4631: $5e
    nop                                           ; $4632: $00
    scf                                           ; $4633: $37
    nop                                           ; $4634: $00
    ld e, a                                       ; $4635: $5f
    nop                                           ; $4636: $00
    cp a                                          ; $4637: $bf
    rst $38                                       ; $4638: $ff
    nop                                           ; $4639: $00
    ld l, [hl]                                    ; $463a: $6e
    ld bc, $00ab                                  ; $463b: $01 $ab $00
    ld a, [hl]                                    ; $463e: $7e
    ld bc, $ffd8                                  ; $463f: $01 $d8 $ff
    ld b, $f4                                     ; $4642: $06 $f4
    ld [$11e0], sp                                ; $4644: $08 $e0 $11
    add c                                         ; $4647: $81
    ld h, e                                       ; $4648: $63
    ld b, b                                       ; $4649: $40
    rst $38                                       ; $464a: $ff
    add h                                         ; $464b: $84
    nop                                           ; $464c: $00
    nop                                           ; $464d: $00
    ld [$7f00], a                                 ; $464e: $ea $00 $7f
    add b                                         ; $4651: $80
    rra                                           ; $4652: $1f
    rst $38                                       ; $4653: $ff
    ld h, b                                       ; $4654: $60
    cpl                                           ; $4655: $2f
    db $10                                        ; $4656: $10
    add a                                         ; $4657: $87
    adc b                                         ; $4658: $88
    pop bc                                        ; $4659: $c1
    add $02                                       ; $465a: $c6 $02
    rst $38                                       ; $465c: $ff
    ld hl, $0000                                  ; $465d: $21 $00 $00
    and e                                         ; $4660: $a3
    inc bc                                        ; $4661: $03
    ld d, l                                       ; $4662: $55
    ld bc, $fff9                                  ; $4663: $01 $f9 $ff

jr_02f_4666:
    ld bc, $01ed                                  ; $4666: $01 $ed $01
    ei                                            ; $4669: $fb
    ld bc, $01fd                                  ; $466a: $01 $fd $01
    rst $38                                       ; $466d: $ff
    rst $38                                       ; $466e: $ff
    ld bc, $817d                                  ; $466f: $01 $7d $81
    cp b                                          ; $4672: $b8
    ld b, $74                                     ; $4673: $06 $74
    ld [$ffc0], sp                                ; $4675: $08 $c0 $ff
    ld de, $2341                                  ; $4678: $11 $41 $23
    jp Jump_02f_6123                              ; $467b: $c3 $23 $61


    ld de, $fff4                                  ; $467e: $11 $f4 $ff
    ld [$06f8], sp                                ; $4681: $08 $f8 $06
    inc bc                                        ; $4684: $03
    rlca                                          ; $4685: $07
    ld [$109c], sp                                ; $4686: $08 $9c $10
    ei                                            ; $4689: $fb
    jr nc, jr_02f_46ac                            ; $468a: $30 $20

    rst $38                                       ; $468c: $ff
    ldh [rNR10], a                                ; $468d: $e0 $10
    jr nc, @+$0a                                  ; $468f: $30 $08

    sbc h                                         ; $4691: $9c
    inc bc                                        ; $4692: $03
    rst $38                                       ; $4693: $ff
    rlca                                          ; $4694: $07
    rra                                           ; $4695: $1f
    ld h, c                                       ; $4696: $61
    cpl                                           ; $4697: $2f
    ld de, $8907                                  ; $4698: $11 $07 $89
    add e                                         ; $469b: $83
    rst $38                                       ; $469c: $ff
    push bc                                       ; $469d: $c5
    jp $87c5                                      ; $469e: $c3 $c5 $87


    adc c                                         ; $46a1: $89
    cpl                                           ; $46a2: $2f

jr_02f_46a3:
    ld de, $f71f                                  ; $46a3: $11 $1f $f7
    ld h, c                                       ; $46a6: $61
    cp [hl]                                       ; $46a7: $be
    ld b, c                                       ; $46a8: $41
    call z, Call_02f_4080                         ; $46a9: $cc $80 $40

jr_02f_46ac:
    rst $18                                       ; $46ac: $df
    jr nz, jr_02f_4666                            ; $46ad: $20 $b7

    rst $38                                       ; $46af: $ff
    ld c, b                                       ; $46b0: $48
    sbc a                                         ; $46b1: $9f
    ld h, b                                       ; $46b2: $60
    xor d                                         ; $46b3: $aa
    ld d, l                                       ; $46b4: $55
    dec b                                         ; $46b5: $05
    ld a, d                                       ; $46b6: $7a
    nop                                           ; $46b7: $00
    ccf                                           ; $46b8: $3f
    nop                                           ; $46b9: $00
    ld b, b                                       ; $46ba: $40
    add h                                         ; $46bb: $84
    add c                                         ; $46bc: $81
    ld h, e                                       ; $46bd: $63
    ldh [$c4], a                                  ; $46be: $e0 $c4
    ld [c], a                                     ; $46c0: $e2
    ld h, $e1                                     ; $46c1: $26 $e1
    rst $38                                       ; $46c3: $ff
    nop                                           ; $46c4: $00
    nop                                           ; $46c5: $00
    ld [bc], a                                    ; $46c6: $02
    ld hl, $c6c1                                  ; $46c7: $21 $c1 $c6
    add a                                         ; $46ca: $87
    adc b                                         ; $46cb: $88
    rst $38                                       ; $46cc: $ff
    cpl                                           ; $46cd: $2f
    db $10                                        ; $46ce: $10
    rra                                           ; $46cf: $1f
    ld h, b                                       ; $46d0: $60
    ld a, [hl]                                    ; $46d1: $7e
    add c                                         ; $46d2: $81
    push de                                       ; $46d3: $d5
    ld a, [hl+]                                   ; $46d4: $2a
    rst $38                                       ; $46d5: $ff
    ld a, e                                       ; $46d6: $7b
    add l                                         ; $46d7: $85
    rst $38                                       ; $46d8: $ff
    ld bc, $05fb                                  ; $46d9: $01 $fb $05
    rst $30                                       ; $46dc: $f7
    add hl, bc                                    ; $46dd: $09
    rst $38                                       ; $46de: $ff
    db $db                                        ; $46df: $db
    dec h                                         ; $46e0: $25
    di                                            ; $46e1: $f3
    dec c                                         ; $46e2: $0d
    xor e                                         ; $46e3: $ab
    ld d, l                                       ; $46e4: $55
    ld b, c                                       ; $46e5: $41
    cp l                                          ; $46e6: $bd
    rst $38                                       ; $46e7: $ff
    dec d                                         ; $46e8: $15
    add b                                         ; $46e9: $80
    inc [hl]                                      ; $46ea: $34
    res 7, a                                      ; $46eb: $cb $bf
    ret nz                                        ; $46ed: $c0

    rst $30                                       ; $46ee: $f7
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    adc a                                         ; $46f1: $8f
    rst $30                                       ; $46f2: $f7
    or a                                          ; $46f3: $b7
    rst $00                                       ; $46f4: $c7
    or a                                          ; $46f5: $b7
    rst $00                                       ; $46f6: $c7
    rst $08                                       ; $46f7: $cf
    rst $30                                       ; $46f8: $f7
    db $ed                                        ; $46f9: $ed
    push de                                       ; $46fa: $d5
    db $e4                                        ; $46fb: $e4
    jr nz, jr_02f_46a3                            ; $46fc: $20 $a5

    ld e, d                                       ; $46fe: $5a
    ld a, [hl-]                                   ; $46ff: $3a
    ld hl, $fffa                                  ; $4700: $21 $fa $ff
    ld d, h                                       ; $4703: $54
    cp [hl]                                       ; $4704: $be
    ld e, [hl]                                    ; $4705: $5e
    ld hl, $2a00                                  ; $4706: $21 $00 $2a
    push de                                       ; $4709: $d5
    ld e, a                                       ; $470a: $5f
    and b                                         ; $470b: $a0
    ld a, [hl+]                                   ; $470c: $2a
    ld hl, $febf                                  ; $470d: $21 $bf $fe
    cp [hl]                                       ; $4710: $be
    ld h, d                                       ; $4711: $62
    ld bc, $e901                                  ; $4712: $01 $01 $e9
    ld de, $03fa                                  ; $4715: $11 $fa $03
    ei                                            ; $4718: $fb
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    add $fb                                       ; $471b: $c6 $fb
    jp c, $dbe3                                   ; $471d: $da $e3 $db

    ld [c], a                                     ; $4720: $e2
    rst $20                                       ; $4721: $e7
    rst $38                                       ; $4722: $ff
    ei                                            ; $4723: $fb
    and d                                         ; $4724: $a2
    ld [hl], b                                    ; $4725: $70
    dec b                                         ; $4726: $05
    ret nz                                        ; $4727: $c0

    dec hl                                        ; $4728: $2b
    add b                                         ; $4729: $80
    push de                                       ; $472a: $d5
    ld a, [$e014]                                 ; $472b: $fa $14 $e0
    ld e, [hl]                                    ; $472e: $5e
    ld [c], a                                     ; $472f: $e2
    nop                                           ; $4730: $00
    dec [hl]                                      ; $4731: $35
    add b                                         ; $4732: $80
    xor l                                         ; $4733: $ad
    rra                                           ; $4734: $1f
    ld l, e                                       ; $4735: $6b
    rst $38                                       ; $4736: $ff
    rlca                                          ; $4737: $07
    ld sp, hl                                     ; $4738: $f9
    inc bc                                        ; $4739: $03
    rst $38                                       ; $473a: $ff
    ld bc, $01ea                                  ; $473b: $01 $ea $01
    db $f4                                        ; $473e: $f4
    rst $38                                       ; $473f: $ff
    ld bc, $01a9                                  ; $4740: $01 $a9 $01
    ld d, e                                       ; $4743: $53
    ld bc, $c0aa                                  ; $4744: $01 $aa $c0
    ld c, b                                       ; $4747: $48
    rst $38                                       ; $4748: $ff
    ldh a, [$81]                                  ; $4749: $f0 $81
    cp $ea                                        ; $474b: $fe $ea
    push af                                       ; $474d: $f5
    cp a                                          ; $474e: $bf
    rst $38                                       ; $474f: $ff
    rst $28                                       ; $4750: $ef
    rst $38                                       ; $4751: $ff
    sbc a                                         ; $4752: $9f
    db $dd                                        ; $4753: $dd
    adc a                                         ; $4754: $8f
    xor a                                         ; $4755: $af
    rst $18                                       ; $4756: $df
    add l                                         ; $4757: $85
    inc bc                                        ; $4758: $03
    dec e                                         ; $4759: $1d
    rst $38                                       ; $475a: $ff
    inc bc                                        ; $475b: $03
    ld a, e                                       ; $475c: $7b
    add a                                         ; $475d: $87
    rst $28                                       ; $475e: $ef
    rra                                           ; $475f: $1f
    ei                                            ; $4760: $fb
    rst $38                                       ; $4761: $ff
    rst $28                                       ; $4762: $ef
    rst $38                                       ; $4763: $ff
    di                                            ; $4764: $f3
    ld [hl], a                                    ; $4765: $77

jr_02f_4766:
    db $e3                                        ; $4766: $e3
    db $eb                                        ; $4767: $eb
    rst $30                                       ; $4768: $f7
    and a                                         ; $4769: $a7
    add hl, de                                    ; $476a: $19
    ld l, l                                       ; $476b: $6d
    ld a, [$e2d0]                                 ; $476c: $fa $d0 $e2
    db $eb                                        ; $476f: $eb
    ret nc                                        ; $4770: $d0

    db $e4                                        ; $4771: $e4
    or l                                          ; $4772: $b5
    jp z, $80ff                                   ; $4773: $ca $ff $80

    cpl                                           ; $4776: $2f
    ei                                            ; $4777: $fb
    ret nc                                        ; $4778: $d0

    push de                                       ; $4779: $d5
    ld c, l                                       ; $477a: $4d
    jr nz, @-$74                                  ; $477b: $20 $8a

    rst $38                                       ; $477d: $ff
    ld a, [hl+]                                   ; $477e: $2a
    push de                                       ; $477f: $d5
    push af                                       ; $4780: $f5
    ld l, l                                       ; $4781: $6d
    adc d                                         ; $4782: $8a
    call z, $af61                                 ; $4783: $cc $61 $af
    ld d, b                                       ; $4786: $50
    adc [hl]                                      ; $4787: $8e
    ld h, c                                       ; $4788: $61
    ld a, [bc]                                    ; $4789: $0a
    rst $38                                       ; $478a: $ff
    cp [hl]                                       ; $478b: $be
    ld h, c                                       ; $478c: $61
    db $fc                                        ; $478d: $fc
    ldh a, [$e9]                                  ; $478e: $f0 $e9
    and b                                         ; $4790: $a0
    ld h, c                                       ; $4791: $61
    jp hl                                         ; $4792: $e9


    rla                                           ; $4793: $17
    rst $30                                       ; $4794: $f7
    dec bc                                        ; $4795: $0b
    cp c                                          ; $4796: $b9
    ld b, a                                       ; $4797: $47
    rst $38                                       ; $4798: $ff
    ld d, [hl]                                    ; $4799: $56
    xor e                                         ; $479a: $ab
    add hl, hl                                    ; $479b: $29
    rst $10                                       ; $479c: $d7
    sbc a                                         ; $479d: $9f
    db $e3                                        ; $479e: $e3
    ld c, c                                       ; $479f: $49
    rst $30                                       ; $47a0: $f7
    rst $38                                       ; $47a1: $ff
    rst $30                                       ; $47a2: $f7
    db $eb                                        ; $47a3: $eb
    cpl                                           ; $47a4: $2f
    ret nc                                        ; $47a5: $d0

    rst $38                                       ; $47a6: $ff
    add b                                         ; $47a7: $80
    ccf                                           ; $47a8: $3f
    ret nz                                        ; $47a9: $c0

    rst $18                                       ; $47aa: $df
    rst $38                                       ; $47ab: $ff
    add b                                         ; $47ac: $80
    ld a, [hl+]                                   ; $47ad: $2a
    push de                                       ; $47ae: $d5
    add b                                         ; $47af: $80
    ld a, [c]                                     ; $47b0: $f2
    nop                                           ; $47b1: $00
    xor d                                         ; $47b2: $aa
    rst $38                                       ; $47b3: $ff
    db $d3                                        ; $47b4: $d3
    ld l, a                                       ; $47b5: $6f
    sub b                                         ; $47b6: $90
    and c                                         ; $47b7: $a1
    ld h, d                                       ; $47b8: $62
    nop                                           ; $47b9: $00
    jr nz, jr_02f_4766                            ; $47ba: $20 $aa

    cp $42                                        ; $47bc: $fe $42
    ld l, d                                       ; $47be: $6a
    sub l                                         ; $47bf: $95
    rst $38                                       ; $47c0: $ff
    db $fd                                        ; $47c1: $fd
    ld [bc], a                                    ; $47c2: $02
    or $09                                        ; $47c3: $f6 $09
    db $fd                                        ; $47c5: $fd
    ld [bc], a                                    ; $47c6: $02
    cp [hl]                                       ; $47c7: $be
    ld b, c                                       ; $47c8: $41
    rst $38                                       ; $47c9: $ff
    ld a, e                                       ; $47ca: $7b
    add h                                         ; $47cb: $84
    ld a, $c1                                     ; $47cc: $3e $c1
    db $fd                                        ; $47ce: $fd
    add d                                         ; $47cf: $82
    ld c, c                                       ; $47d0: $49
    rst $30                                       ; $47d1: $f7
    rst $38                                       ; $47d2: $ff
    ld [hl], d                                    ; $47d3: $72
    rst $28                                       ; $47d4: $ef
    ld c, c                                       ; $47d5: $49
    rst $30                                       ; $47d6: $f7
    scf                                           ; $47d7: $37
    db $eb                                        ; $47d8: $eb
    ld c, c                                       ; $47d9: $49
    rst $30                                       ; $47da: $f7
    rst $38                                       ; $47db: $ff
    inc sp                                        ; $47dc: $33
    rst $28                                       ; $47dd: $ef
    add hl, bc                                    ; $47de: $09
    rst $30                                       ; $47df: $f7
    ld [hl], $eb                                  ; $47e0: $36 $eb
    ld a, $c1                                     ; $47e2: $3e $c1
    pop hl                                        ; $47e4: $e1
    ei                                            ; $47e5: $fb
    add sp, -$1e                                  ; $47e6: $e8 $e2
    ld hl, sp-$1b                                 ; $47e8: $f8 $e5
    add sp, -$1f                                  ; $47ea: $e8 $e1
    ldh [$e1], a                                  ; $47ec: $e0 $e1
    add hl, bc                                    ; $47ee: $09
    rst $30                                       ; $47ef: $f7
    ld a, $aa                                     ; $47f0: $3e $aa
    and b                                         ; $47f2: $a0
    ldh [$37], a                                  ; $47f3: $e0 $37
    ldh [$e4], a                                  ; $47f5: $e0 $e4
    push de                                       ; $47f7: $d5
    ld b, [hl]                                    ; $47f8: $46
    add b                                         ; $47f9: $80
    xor d                                         ; $47fa: $aa
    db $10                                        ; $47fb: $10

jr_02f_47fc:
    add d                                         ; $47fc: $82
    ld b, c                                       ; $47fd: $41
    adc $52                                       ; $47fe: $ce $52
    ld h, b                                       ; $4800: $60
    ld a, a                                       ; $4801: $7f
    rst $38                                       ; $4802: $ff
    cpl                                           ; $4803: $2f
    ld e, $20                                     ; $4804: $1e $20
    ld [bc], a                                    ; $4806: $02
    ld h, e                                       ; $4807: $63
    ld d, e                                       ; $4808: $53
    xor a                                         ; $4809: $af
    rst $38                                       ; $480a: $ff
    xor l                                         ; $480b: $ad
    ld e, [hl]                                    ; $480c: $5e
    rst $10                                       ; $480d: $d7
    jr c, jr_02f_47fc                             ; $480e: $38 $ec

    inc sp                                        ; $4810: $33
    cp b                                          ; $4811: $b8
    ld h, h                                       ; $4812: $64
    rst $38                                       ; $4813: $ff
    ld d, b                                       ; $4814: $50
    add sp, -$10                                  ; $4815: $e8 $f0
    ret z                                         ; $4817: $c8

    rst $28                                       ; $4818: $ef
    ret nc                                        ; $4819: $d0

    sub l                                         ; $481a: $95
    ld [$aaff], a                                 ; $481b: $ea $ff $aa
    ld [hl], l                                    ; $481e: $75
    rst $20                                       ; $481f: $e7
    jr jr_02f_4855                                ; $4820: $18 $33

jr_02f_4822:
    call z, Call_000_251e                         ; $4822: $cc $1e $25
    rst $38                                       ; $4825: $ff
    ld [$0e17], sp                                ; $4826: $08 $17 $0e
    inc de                                        ; $4829: $13
    rst $30                                       ; $482a: $f7
    dec bc                                        ; $482b: $0b
    ld a, b                                       ; $482c: $78
    rst $18                                       ; $482d: $df
    rst $38                                       ; $482e: $ff
    ldh [$50], a                                  ; $482f: $e0 $50
    ldh [$50], a                                  ; $4831: $e0 $50
    rst $28                                       ; $4833: $ef
    ld d, b                                       ; $4834: $50
    rst $18                                       ; $4835: $df

Jump_02f_4836:
    ld [hl], b                                    ; $4836: $70
    rst $38                                       ; $4837: $ff
    ld a, a                                       ; $4838: $7f
    add b                                         ; $4839: $80
    ret nz                                        ; $483a: $c0

    cp a                                          ; $483b: $bf
    cp a                                          ; $483c: $bf
    rst $38                                       ; $483d: $ff
    rra                                           ; $483e: $1f
    ld a, [$07ff]                                 ; $483f: $fa $ff $07
    ld a, [bc]                                    ; $4842: $0a
    rlca                                          ; $4843: $07
    ld a, [bc]                                    ; $4844: $0a
    rst $30                                       ; $4845: $f7
    ld a, [bc]                                    ; $4846: $0a
    ld a, [$df0f]                                 ; $4847: $fa $0f $df
    cp $01                                        ; $484a: $fe $01
    inc bc                                        ; $484c: $03
    db $fd                                        ; $484d: $fd
    db $fd                                        ; $484e: $fd
    ld d, e                                       ; $484f: $53
    ld b, b                                       ; $4850: $40
    jr nc, jr_02f_4822                            ; $4851: $30 $cf

    rst $38                                       ; $4853: $ff
    ld a, c                                       ; $4854: $79

jr_02f_4855:
    add h                                         ; $4855: $84
    ld [hl], e                                    ; $4856: $73
    add h                                         ; $4857: $84
    inc hl                                        ; $4858: $23
    call z, $f807                                 ; $4859: $cc $07 $f8
    rst $38                                       ; $485c: $ff
    ld e, $c1                                     ; $485d: $1e $c1
    inc a                                         ; $485f: $3c
    jp $ff00                                      ; $4860: $c3 $00 $ff


    ld e, d                                       ; $4863: $5a
    and l                                         ; $4864: $a5
    rst $38                                       ; $4865: $ff
    rst $38                                       ; $4866: $ff
    nop                                           ; $4867: $00
    db $db                                        ; $4868: $db
    inc h                                         ; $4869: $24
    nop                                           ; $486a: $00
    rst $38                                       ; $486b: $ff
    ld a, [hl]                                    ; $486c: $7e
    add c                                         ; $486d: $81
    rst $38                                       ; $486e: $ff
    ld b, d                                       ; $486f: $42
    cp l                                          ; $4870: $bd
    swap h                                        ; $4871: $cb $34
    ld [hl], c                                    ; $4873: $71
    adc [hl]                                      ; $4874: $8e
    scf                                           ; $4875: $37
    ret z                                         ; $4876: $c8

    rst $38                                       ; $4877: $ff
    ld [hl], h                                    ; $4878: $74
    adc e                                         ; $4879: $8b
    jr nz, @-$1f                                  ; $487a: $20 $df

    ld [hl], h                                    ; $487c: $74
    adc e                                         ; $487d: $8b
    scf                                           ; $487e: $37
    ret z                                         ; $487f: $c8

    rst $38                                       ; $4880: $ff
    ld [hl], e                                    ; $4881: $73
    adc h                                         ; $4882: $8c
    dec sp                                        ; $4883: $3b
    call nz, $7a85                                ; $4884: $c4 $85 $7a
    ld c, d                                       ; $4887: $4a
    or l                                          ; $4888: $b5
    rst $38                                       ; $4889: $ff
    dec b                                         ; $488a: $05
    ld a, [$ff00]                                 ; $488b: $fa $00 $ff
    db $eb                                        ; $488e: $eb
    inc d                                         ; $488f: $14
    add b                                         ; $4890: $80
    ld a, a                                       ; $4891: $7f
    rst $38                                       ; $4892: $ff
    ld a, $c1                                     ; $4893: $3e $c1
    ld l, d                                       ; $4895: $6a
    sub l                                         ; $4896: $95
    adc [hl]                                      ; $4897: $8e
    ld [hl], c                                    ; $4898: $71
    db $ec                                        ; $4899: $ec
    inc de                                        ; $489a: $13
    rst $38                                       ; $489b: $ff
    ld l, $d1                                     ; $489c: $2e $d1
    ld h, h                                       ; $489e: $64
    sbc e                                         ; $489f: $9b
    adc $31                                       ; $48a0: $ce $31
    inc c                                         ; $48a2: $0c
    di                                            ; $48a3: $f3
    rst $38                                       ; $48a4: $ff
    ld c, $f1                                     ; $48a5: $0e $f1
    sbc h                                         ; $48a7: $9c
    inc hl                                        ; $48a8: $23
    inc sp                                        ; $48a9: $33
    call z, $c43b                                 ; $48aa: $cc $3b $c4
    or $fc                                        ; $48ad: $f6 $fc
    pop hl                                        ; $48af: $e1
    ld [hl-], a                                   ; $48b0: $32
    call $e1fc                                    ; $48b1: $cd $fc $e1
    inc sp                                        ; $48b4: $33
    call z, $a956                                 ; $48b5: $cc $56 $a9
    rst $38                                       ; $48b8: $ff
    ld l, d                                       ; $48b9: $6a
    sub l                                         ; $48ba: $95
    ld d, d                                       ; $48bb: $52
    xor l                                         ; $48bc: $ad
    ld l, d                                       ; $48bd: $6a
    sub l                                         ; $48be: $95
    ld b, d                                       ; $48bf: $42
    cp l                                          ; $48c0: $bd
    ld a, [hl]                                    ; $48c1: $7e

Call_02f_48c2:
    db $fc                                        ; $48c2: $fc
    pop hl                                        ; $48c3: $e1
    ld h, d                                       ; $48c4: $62
    sbc l                                         ; $48c5: $9d
    call z, $dc33                                 ; $48c6: $cc $33 $dc
    inc hl                                        ; $48c9: $23
    db $fc                                        ; $48ca: $fc
    pop hl                                        ; $48cb: $e1
    ei                                            ; $48cc: $fb
    adc h                                         ; $48cd: $8c
    ld [hl], e                                    ; $48ce: $73
    db $fc                                        ; $48cf: $fc
    pop hl                                        ; $48d0: $e1
    call z, Call_000_3233                         ; $48d1: $cc $33 $32
    call $bd71                                    ; $48d4: $cd $71 $bd
    adc [hl]                                      ; $48d7: $8e
    db $fc                                        ; $48d8: $fc
    pop hl                                        ; $48d9: $e1
    ld [hl], d                                    ; $48da: $72
    adc l                                         ; $48db: $8d
    ld sp, $fcce                                  ; $48dc: $31 $ce $fc
    pop hl                                        ; $48df: $e1
    ld b, b                                       ; $48e0: $40
    rst $38                                       ; $48e1: $ff
    cp a                                          ; $48e2: $bf
    ld h, d                                       ; $48e3: $62
    sbc l                                         ; $48e4: $9d
    ld b, b                                       ; $48e5: $40
    cp a                                          ; $48e6: $bf
    ld b, d                                       ; $48e7: $42
    cp l                                          ; $48e8: $bd
    ld b, d                                       ; $48e9: $42
    cp a                                          ; $48ea: $bf
    cp l                                          ; $48eb: $bd
    ld [bc], a                                    ; $48ec: $02

jr_02f_48ed:
    db $fd                                        ; $48ed: $fd
    ld b, [hl]                                    ; $48ee: $46
    cp c                                          ; $48ef: $b9
    ld [bc], a                                    ; $48f0: $02
    rst $18                                       ; $48f1: $df
    jr nz, @+$01                                  ; $48f2: $20 $ff

    rst $38                                       ; $48f4: $ff
    and $ff                                       ; $48f5: $e6 $ff
    jp $c3fb                                      ; $48f7: $c3 $fb $c3


    rst $30                                       ; $48fa: $f7
    and $ff                                       ; $48fb: $e6 $ff
    rst $30                                       ; $48fd: $f7
    db $fc                                        ; $48fe: $fc
    cp $d8                                        ; $48ff: $fe $d8
    push de                                       ; $4901: $d5
    nop                                           ; $4902: $00
    rst $38                                       ; $4903: $ff
    rst $38                                       ; $4904: $ff
    and b                                         ; $4905: $a0
    db $fd                                        ; $4906: $fd
    pop af                                        ; $4907: $f1
    ld d, b                                       ; $4908: $50
    ld bc, $3362                                  ; $4909: $01 $62 $33
    ld h, b                                       ; $490c: $60
    ld b, c                                       ; $490d: $41
    jr nz, jr_02f_48ed                            ; $490e: $20 $dd

    rst $38                                       ; $4910: $ff
    set 7, a                                      ; $4911: $cb $ff
    rst $38                                       ; $4913: $ff
    call $cfef                                    ; $4914: $cd $ef $cf
    rst $38                                       ; $4917: $ff
    rst $08                                       ; $4918: $cf
    rst $38                                       ; $4919: $ff
    call $f7ff                                    ; $491a: $cd $ff $f7
    db $db                                        ; $491d: $db
    rst $38                                       ; $491e: $ff
    db $ed                                        ; $491f: $ed
    cp e                                          ; $4920: $bb
    and b                                         ; $4921: $a0
    ccf                                           ; $4922: $3f
    rst $38                                       ; $4923: $ff
    ld a, [hl-]                                   ; $4924: $3a
    cp a                                          ; $4925: $bf
    ld [hl], a                                    ; $4926: $77
    inc [hl]                                      ; $4927: $34
    rst $38                                       ; $4928: $ff
    ld a, [hl-]                                   ; $4929: $3a
    jp hl                                         ; $492a: $e9


    jr nz, jr_02f_4981                            ; $492b: $20 $54

    rst $38                                       ; $492d: $ff
    xor b                                         ; $492e: $a8
    call z, Call_02f_7fe0                         ; $492f: $cc $e0 $7f
    db $fc                                        ; $4932: $fc
    rst $30                                       ; $4933: $f7
    and $fb                                       ; $4934: $e6 $fb
    jp $c3ff                                      ; $4936: $c3 $ff $c3


    cp b                                          ; $4939: $b8
    ldh [rWY], a                                  ; $493a: $e0 $4a
    ld l, a                                       ; $493c: $6f
    inc hl                                        ; $493d: $23
    dec d                                         ; $493e: $15
    rrca                                          ; $493f: $0f
    ld b, b                                       ; $4940: $40
    rst $38                                       ; $4941: $ff
    cp h                                          ; $4942: $bc
    ldh [$9a], a                                  ; $4943: $e0 $9a
    and d                                         ; $4945: $a2
    nop                                           ; $4946: $00
    rst $38                                       ; $4947: $ff
    db $ec                                        ; $4948: $ec
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    scf                                           ; $494c: $37
    jr nz, jr_02f_4976                            ; $494d: $20 $27

    ld [hl+], a                                   ; $494f: $22
    rst $38                                       ; $4950: $ff
    xor $27                                       ; $4951: $ee $27
    jr nz, @+$01                                  ; $4953: $20 $ff

    ld [c], a                                     ; $4955: $e2
    and $f7                                       ; $4956: $e6 $f7
    ld l, [hl]                                    ; $4958: $6e
    ld a, [$26e8]                                 ; $4959: $fa $e8 $26
    dec h                                         ; $495c: $25
    ld hl, $eeff                                  ; $495d: $21 $ff $ee
    dec h                                         ; $4960: $25
    ld h, $e6                                     ; $4961: $26 $e6
    ei                                            ; $4963: $fb
    cp $bb                                        ; $4964: $fe $bb
    jp hl                                         ; $4966: $e9


    inc hl                                        ; $4967: $23
    inc h                                         ; $4968: $24
    ld sp, $3132                                  ; $4969: $31 $32 $31
    ld [hl-], a                                   ; $496c: $32
    add hl, hl                                    ; $496d: $29
    rst $20                                       ; $496e: $e7
    and b                                         ; $496f: $a0
    and c                                         ; $4970: $a1
    add hl, hl                                    ; $4971: $29
    db $fc                                        ; $4972: $fc
    ld [c], a                                     ; $4973: $e2
    cp $e0                                        ; $4974: $fe $e0

jr_02f_4976:
    ld c, [hl]                                    ; $4976: $4e
    ld d, b                                       ; $4977: $50
    inc h                                         ; $4978: $24
    ld sp, hl                                     ; $4979: $f9
    inc hl                                        ; $497a: $23
    and $e3                                       ; $497b: $e6 $e3
    ld [$a0e6], a                                 ; $497d: $ea $e6 $a0
    and c                                         ; $4980: $a1

jr_02f_4981:
    ld c, [hl]                                    ; $4981: $4e
    ld c, d                                       ; $4982: $4a
    ld c, e                                       ; $4983: $4b
    ld hl, sp-$28                                 ; $4984: $f8 $d8
    pop hl                                        ; $4986: $e1
    and $e3                                       ; $4987: $e6 $e3
    ret nz                                        ; $4989: $c0

    db $eb                                        ; $498a: $eb
    inc sp                                        ; $498b: $33
    inc [hl]                                      ; $498c: $34
    inc sp                                        ; $498d: $33
    inc [hl]                                      ; $498e: $34
    add hl, hl                                    ; $498f: $29
    rst $30                                       ; $4990: $f7
    and d                                         ; $4991: $a2
    and e                                         ; $4992: $a3
    add hl, hl                                    ; $4993: $29
    db $fc                                        ; $4994: $fc
    pop hl                                        ; $4995: $e1
    ld c, a                                       ; $4996: $4f
    ld d, c                                       ; $4997: $51
    ld d, d                                       ; $4998: $52
    ld d, e                                       ; $4999: $53
    db $e3                                        ; $499a: $e3
    ld d, h                                       ; $499b: $54
    ld d, l                                       ; $499c: $55
    ret nz                                        ; $499d: $c0

    and $ea                                       ; $499e: $e6 $ea
    db $e4                                        ; $49a0: $e4
    ld [c], a                                     ; $49a1: $e2
    ldh [$4e], a                                  ; $49a2: $e0 $4e
    ld c, h                                       ; $49a4: $4c
    ld c, l                                       ; $49a5: $4d
    db $fc                                        ; $49a6: $fc
    ret c                                         ; $49a7: $d8

    pop hl                                        ; $49a8: $e1
    ret nz                                        ; $49a9: $c0

    pop af                                        ; $49aa: $f1
    dec [hl]                                      ; $49ab: $35
    ld [hl], $35                                  ; $49ac: $36 $35
    ld [hl], $29                                  ; $49ae: $36 $29
    ld c, a                                       ; $49b0: $4f
    rst $38                                       ; $49b1: $ff
    add hl, sp                                    ; $49b2: $39
    ld a, [hl-]                                   ; $49b3: $3a
    ld c, a                                       ; $49b4: $4f
    ld h, b                                       ; $49b5: $60
    ld h, c                                       ; $49b6: $61
    ld c, a                                       ; $49b7: $4f
    ld d, [hl]                                    ; $49b8: $56
    ld d, a                                       ; $49b9: $57
    rst $08                                       ; $49ba: $cf
    ld e, b                                       ; $49bb: $58
    ld e, c                                       ; $49bc: $59
    ld e, d                                       ; $49bd: $5a
    ld e, e                                       ; $49be: $5b
    add b                                         ; $49bf: $80
    and $ff                                       ; $49c0: $e6 $ff
    rst $20                                       ; $49c2: $e7
    ld c, [hl]                                    ; $49c3: $4e
    nop                                           ; $49c4: $00
    ld sp, hl                                     ; $49c5: $f9
    ld bc, $e1d8                                  ; $49c6: $01 $d8 $e1
    add b                                         ; $49c9: $80
    pop af                                        ; $49ca: $f1
    scf                                           ; $49cb: $37
    jr c, @+$39                                   ; $49cc: $38 $37

    jr c, jr_02f_49fa                             ; $49ce: $38 $2a

    rst $38                                       ; $49d0: $ff
    dec l                                         ; $49d1: $2d
    dec sp                                        ; $49d2: $3b
    inc a                                         ; $49d3: $3c
    ld l, $62                                     ; $49d4: $2e $62
    ld h, e                                       ; $49d6: $63
    cpl                                           ; $49d7: $2f
    ld e, h                                       ; $49d8: $5c
    rst $18                                       ; $49d9: $df
    ld e, l                                       ; $49da: $5d
    inc b                                         ; $49db: $04
    dec b                                         ; $49dc: $05
    ld e, [hl]                                    ; $49dd: $5e
    ld e, a                                       ; $49de: $5f
    ld b, b                                       ; $49df: $40
    push hl                                       ; $49e0: $e5
    ld a, [hl+]                                   ; $49e1: $2a
    dec hl                                        ; $49e2: $2b
    adc [hl]                                      ; $49e3: $8e
    cp $e6                                        ; $49e4: $fe $e6
    cpl                                           ; $49e6: $2f
    ld [bc], a                                    ; $49e7: $02
    inc bc                                        ; $49e8: $03
    ret c                                         ; $49e9: $d8

    pop hl                                        ; $49ea: $e1
    ld b, b                                       ; $49eb: $40
    pop af                                        ; $49ec: $f1
    jp c, $2de2                                   ; $49ed: $da $e2 $2d

    ei                                            ; $49f0: $fb
    dec a                                         ; $49f1: $3d
    ld a, $d2                                     ; $49f2: $3e $d2
    ld [c], a                                     ; $49f4: $e2
    ld [hl], b                                    ; $49f5: $70
    ld [hl], c                                    ; $49f6: $71
    ld [hl], d                                    ; $49f7: $72
    ld [hl], e                                    ; $49f8: $73
    dec l                                         ; $49f9: $2d

jr_02f_49fa:
    ld h, $00                                     ; $49fa: $26 $00
    push hl                                       ; $49fc: $e5
    ld a, b                                       ; $49fd: $78
    ld a, c                                       ; $49fe: $79
    cp [hl]                                       ; $49ff: $be
    add sp, -$4c                                  ; $4a00: $e8 $b4
    ldh [$2d], a                                  ; $4a02: $e0 $2d
    and $e4                                       ; $4a04: $e6 $e4
    ret nz                                        ; $4a06: $c0

    db $ed                                        ; $4a07: $ed
    rst $30                                       ; $4a08: $f7
    and h                                         ; $4a09: $a4
    and l                                         ; $4a0a: $a5
    and h                                         ; $4a0b: $a4
    ret nz                                        ; $4a0c: $c0

    push hl                                       ; $4a0d: $e5
    ld [hl], h                                    ; $4a0e: $74
    ld [hl], l                                    ; $4a0f: $75
    halt                                          ; $4a10: $76
    ld [hl], a                                    ; $4a11: $77
    and $c0                                       ; $4a12: $e6 $c0
    and $7a                                       ; $4a14: $e6 $7a
    ld a, e                                       ; $4a16: $7b
    ret nz                                        ; $4a17: $c0

    rst $38                                       ; $4a18: $ff
    ld e, d                                       ; $4a19: $5a
    pop hl                                        ; $4a1a: $e1
    and [hl]                                      ; $4a1b: $a6
    and a                                         ; $4a1c: $a7
    xor b                                         ; $4a1d: $a8
    db $fc                                        ; $4a1e: $fc
    add b                                         ; $4a1f: $80
    push hl                                       ; $4a20: $e5
    sbc d                                         ; $4a21: $9a
    add sp, $23                                   ; $4a22: $e8 $23
    inc h                                         ; $4a24: $24
    ld a, h                                       ; $4a25: $7c
    ld a, l                                       ; $4a26: $7d
    ld a, [hl+]                                   ; $4a27: $2a
    dec l                                         ; $4a28: $2d
    cp a                                          ; $4a29: $bf
    add b                                         ; $4a2a: $80
    add c                                         ; $4a2b: $81
    add d                                         ; $4a2c: $82
    add e                                         ; $4a2d: $83
    adc a                                         ; $4a2e: $8f
    sub e                                         ; $4a2f: $93
    ld e, [hl]                                    ; $4a30: $5e
    pop hl                                        ; $4a31: $e1
    sub h                                         ; $4a32: $94
    rst $30                                       ; $4a33: $f7
    sub l                                         ; $4a34: $95
    sub [hl]                                      ; $4a35: $96
    sub a                                         ; $4a36: $97
    ld b, b                                       ; $4a37: $40
    di                                            ; $4a38: $f3
    xor c                                         ; $4a39: $a9
    xor d                                         ; $4a3a: $aa
    xor e                                         ; $4a3b: $ab
    dec l                                         ; $4a3c: $2d
    ld a, e                                       ; $4a3d: $7b
    ccf                                           ; $4a3e: $3f
    ld b, b                                       ; $4a3f: $40
    ld [de], a                                    ; $4a40: $12
    pop hl                                        ; $4a41: $e1
    inc l                                         ; $4a42: $2c
    ld h, h                                       ; $4a43: $64
    ld h, [hl]                                    ; $4a44: $66
    ld h, a                                       ; $4a45: $67
    ret nz                                        ; $4a46: $c0

    rst $20                                       ; $4a47: $e7
    rst $38                                       ; $4a48: $ff
    ld a, [hl]                                    ; $4a49: $7e
    ld a, a                                       ; $4a4a: $7f
    ld a, [hl+]                                   ; $4a4b: $2a
    dec l                                         ; $4a4c: $2d
    add h                                         ; $4a4d: $84
    add l                                         ; $4a4e: $85
    add l                                         ; $4a4f: $85
    add [hl]                                      ; $4a50: $86
    ld a, e                                       ; $4a51: $7b
    sub c                                         ; $4a52: $91
    sub d                                         ; $4a53: $92
    cp $c1                                        ; $4a54: $fe $c1
    sbc b                                         ; $4a56: $98
    sbc c                                         ; $4a57: $99
    sbc d                                         ; $4a58: $9a
    sbc e                                         ; $4a59: $9b
    nop                                           ; $4a5a: $00

jr_02f_4a5b:
    di                                            ; $4a5b: $f3
    rst $38                                       ; $4a5c: $ff
    xor h                                         ; $4a5d: $ac
    xor l                                         ; $4a5e: $ad
    xor h                                         ; $4a5f: $ac
    dec l                                         ; $4a60: $2d
    ld b, c                                       ; $4a61: $41
    ld b, d                                       ; $4a62: $42
    ld b, e                                       ; $4a63: $43
    ld b, e                                       ; $4a64: $43
    ld a, a                                       ; $4a65: $7f
    ld b, h                                       ; $4a66: $44
    ld b, l                                       ; $4a67: $45
    ld l, $65                                     ; $4a68: $2e $65
    ld l, b                                       ; $4a6a: $68
    ld l, c                                       ; $4a6b: $69
    ld h, h                                       ; $4a6c: $64
    nop                                           ; $4a6d: $00
    and $ff                                       ; $4a6e: $e6 $ff
    ld a, [hl+]                                   ; $4a70: $2a
    dec l                                         ; $4a71: $2d

jr_02f_4a72:
    adc a                                         ; $4a72: $8f
    sub b                                         ; $4a73: $90
    add a                                         ; $4a74: $87
    adc b                                         ; $4a75: $88
    adc c                                         ; $4a76: $89
    adc d                                         ; $4a77: $8a
    xor $b8                                       ; $4a78: $ee $b8
    call nz, $9c2d                                ; $4a7a: $c4 $2d $9c
    sbc l                                         ; $4a7d: $9d
    ret nz                                        ; $4a7e: $c0

    db $d3                                        ; $4a7f: $d3
    xor e                                         ; $4a80: $ab
    xor d                                         ; $4a81: $aa
    xor c                                         ; $4a82: $a9
    rst $38                                       ; $4a83: $ff
    cpl                                           ; $4a84: $2f
    ld b, a                                       ; $4a85: $47
    ld c, b                                       ; $4a86: $48
    ld c, c                                       ; $4a87: $49
    ld c, c                                       ; $4a88: $49
    ld b, [hl]                                    ; $4a89: $46
    ld a, $2a                                     ; $4a8a: $3e $2a
    rst $28                                       ; $4a8c: $ef
    dec l                                         ; $4a8d: $2d
    ld l, d                                       ; $4a8e: $6a
    ld l, e                                       ; $4a8f: $6b
    ld h, l                                       ; $4a90: $65
    ret nz                                        ; $4a91: $c0

    rst $20                                       ; $4a92: $e7
    cpl                                           ; $4a93: $2f
    sub c                                         ; $4a94: $91
    sub d                                         ; $4a95: $92
    rst $28                                       ; $4a96: $ef
    adc e                                         ; $4a97: $8b
    adc h                                         ; $4a98: $8c
    adc l                                         ; $4a99: $8d
    adc [hl]                                      ; $4a9a: $8e
    ld a, b                                       ; $4a9b: $78
    ret nz                                        ; $4a9c: $c0

    xor [hl]                                      ; $4a9d: $ae
    xor a                                         ; $4a9e: $af
    xor a                                         ; $4a9f: $af
    rst $28                                       ; $4aa0: $ef
    xor [hl]                                      ; $4aa1: $ae
    cpl                                           ; $4aa2: $2f
    sbc [hl]                                      ; $4aa3: $9e
    sbc a                                         ; $4aa4: $9f
    add b                                         ; $4aa5: $80
    db $d3                                        ; $4aa6: $d3
    xor b                                         ; $4aa7: $a8
    and a                                         ; $4aa8: $a7
    and [hl]                                      ; $4aa9: $a6
    adc $7c                                       ; $4aaa: $ce $7c
    push bc                                       ; $4aac: $c5
    cpl                                           ; $4aad: $2f
    ld l, h                                       ; $4aae: $6c
    ld l, l                                       ; $4aaf: $6d
    nop                                           ; $4ab0: $00
    rst $20                                       ; $4ab1: $e7
    ld b, b                                       ; $4ab2: $40
    ret z                                         ; $4ab3: $c8

    or b                                          ; $4ab4: $b0
    or c                                          ; $4ab5: $b1
    inc sp                                        ; $4ab6: $33
    or c                                          ; $4ab7: $b1
    or b                                          ; $4ab8: $b0
    add b                                         ; $4ab9: $80
    reti                                          ; $4aba: $d9


    inc a                                         ; $4abb: $3c
    call nz, Call_02f_6e6e                        ; $4abc: $c4 $6e $6e
    ret nz                                        ; $4abf: $c0

    ret                                           ; $4ac0: $c9


    nop                                           ; $4ac1: $00
    ret z                                         ; $4ac2: $c8

    rst $08                                       ; $4ac3: $cf
    or d                                          ; $4ac4: $b2
    or e                                          ; $4ac5: $b3
    or e                                          ; $4ac6: $b3
    or d                                          ; $4ac7: $b2
    ld b, b                                       ; $4ac8: $40
    sub $20                                       ; $4ac9: $d6 $20
    push hl                                       ; $4acb: $e5
    dec a                                         ; $4acc: $3d
    ld a, $b3                                     ; $4acd: $3e $b3
    ld l, a                                       ; $4acf: $6f
    ld l, a                                       ; $4ad0: $6f
    ret nz                                        ; $4ad1: $c0

    db $f4                                        ; $4ad2: $f4
    nop                                           ; $4ad3: $00
    ret c                                         ; $4ad4: $d8

    inc l                                         ; $4ad5: $2c
    dec l                                         ; $4ad6: $2d
    cp $e1                                        ; $4ad7: $fe $e1
    jr nc, jr_02f_4a5b                            ; $4ad9: $30 $80

    cp h                                          ; $4adb: $bc
    and d                                         ; $4adc: $a2
    db $f4                                        ; $4add: $f4
    db $e3                                        ; $4ade: $e3
    ret nz                                        ; $4adf: $c0

    add l                                         ; $4ae0: $85
    and $e7                                       ; $4ae1: $e6 $e7
    call c, $e6e3                                 ; $4ae3: $dc $e3 $e6
    push hl                                       ; $4ae6: $e5
    ld b, b                                       ; $4ae7: $40
    sub d                                         ; $4ae8: $92
    jr z, jr_02f_4a72                             ; $4ae9: $28 $87

    ld a, [hl+]                                   ; $4aeb: $2a
    dec l                                         ; $4aec: $2d
    jr z, jr_02f_4b2f                             ; $4aed: $28 $40

    sub e                                         ; $4aef: $93
    and $ee                                       ; $4af0: $e6 $ee
    ei                                            ; $4af2: $fb
    ld l, d                                       ; $4af3: $6a
    ret nz                                        ; $4af4: $c0

    ld h, l                                       ; $4af5: $65
    daa                                           ; $4af6: $27
    inc bc                                        ; $4af7: $03
    ld a, [hl+]                                   ; $4af8: $2a
    dec l                                         ; $4af9: $2d
    push af                                       ; $4afa: $f5
    and $e6                                       ; $4afb: $e6 $e6
    db $fd                                        ; $4afd: $fd
    rst $38                                       ; $4afe: $ff
    rst $38                                       ; $4aff: $ff
    rst $38                                       ; $4b00: $ff
    rst $38                                       ; $4b01: $ff
    rst $38                                       ; $4b02: $ff
    rst $38                                       ; $4b03: $ff
    rst $38                                       ; $4b04: $ff
    rst $38                                       ; $4b05: $ff
    nop                                           ; $4b06: $00
    rst $38                                       ; $4b07: $ff
    rst $38                                       ; $4b08: $ff
    rst $38                                       ; $4b09: $ff
    rst $38                                       ; $4b0a: $ff
    rst $38                                       ; $4b0b: $ff
    rst $38                                       ; $4b0c: $ff
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    rst $38                                       ; $4b0f: $ff
    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    rst $38                                       ; $4b12: $ff
    rst $38                                       ; $4b13: $ff
    rst $38                                       ; $4b14: $ff
    rst $38                                       ; $4b15: $ff
    rst $38                                       ; $4b16: $ff
    nop                                           ; $4b17: $00
    rst $38                                       ; $4b18: $ff
    rst $38                                       ; $4b19: $ff
    rst $38                                       ; $4b1a: $ff
    rst $38                                       ; $4b1b: $ff
    rst $38                                       ; $4b1c: $ff
    rst $38                                       ; $4b1d: $ff
    rst $38                                       ; $4b1e: $ff
    rst $38                                       ; $4b1f: $ff
    rst $38                                       ; $4b20: $ff
    rst $38                                       ; $4b21: $ff
    rst $38                                       ; $4b22: $ff
    rst $38                                       ; $4b23: $ff
    rst $38                                       ; $4b24: $ff
    rst $38                                       ; $4b25: $ff
    rst $38                                       ; $4b26: $ff
    rst $38                                       ; $4b27: $ff
    nop                                           ; $4b28: $00
    rst $38                                       ; $4b29: $ff
    rst $38                                       ; $4b2a: $ff
    rst $38                                       ; $4b2b: $ff
    rst $38                                       ; $4b2c: $ff
    rst $38                                       ; $4b2d: $ff
    rst $38                                       ; $4b2e: $ff

jr_02f_4b2f:
    rst $38                                       ; $4b2f: $ff
    rst $38                                       ; $4b30: $ff
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    rst $38                                       ; $4b34: $ff
    rst $38                                       ; $4b35: $ff
    rst $38                                       ; $4b36: $ff
    rst $38                                       ; $4b37: $ff
    rst $38                                       ; $4b38: $ff
    nop                                           ; $4b39: $00
    rst $38                                       ; $4b3a: $ff
    rst $38                                       ; $4b3b: $ff
    rst $38                                       ; $4b3c: $ff
    rst $38                                       ; $4b3d: $ff
    rst $38                                       ; $4b3e: $ff
    rst $38                                       ; $4b3f: $ff
    rst $38                                       ; $4b40: $ff
    rst $38                                       ; $4b41: $ff
    rst $38                                       ; $4b42: $ff
    rst $38                                       ; $4b43: $ff
    rst $38                                       ; $4b44: $ff
    rst $38                                       ; $4b45: $ff
    rst $38                                       ; $4b46: $ff
    rst $38                                       ; $4b47: $ff
    rst $38                                       ; $4b48: $ff
    rst $38                                       ; $4b49: $ff
    nop                                           ; $4b4a: $00
    rst $38                                       ; $4b4b: $ff
    rst $38                                       ; $4b4c: $ff
    rst $38                                       ; $4b4d: $ff
    rst $38                                       ; $4b4e: $ff
    rst $38                                       ; $4b4f: $ff
    rst $38                                       ; $4b50: $ff
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    rst $38                                       ; $4b53: $ff
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    rst $38                                       ; $4b56: $ff
    rst $38                                       ; $4b57: $ff
    rst $38                                       ; $4b58: $ff
    rst $38                                       ; $4b59: $ff
    rst $38                                       ; $4b5a: $ff
    nop                                           ; $4b5b: $00
    rst $38                                       ; $4b5c: $ff
    rst $38                                       ; $4b5d: $ff
    rst $38                                       ; $4b5e: $ff
    rst $38                                       ; $4b5f: $ff
    rst $38                                       ; $4b60: $ff
    rst $38                                       ; $4b61: $ff
    rst $38                                       ; $4b62: $ff
    rst $38                                       ; $4b63: $ff
    rst $38                                       ; $4b64: $ff
    rst $38                                       ; $4b65: $ff
    rst $38                                       ; $4b66: $ff
    rst $38                                       ; $4b67: $ff
    rst $38                                       ; $4b68: $ff
    rst $38                                       ; $4b69: $ff
    rst $38                                       ; $4b6a: $ff
    rst $38                                       ; $4b6b: $ff
    nop                                           ; $4b6c: $00
    rst $38                                       ; $4b6d: $ff
    rst $38                                       ; $4b6e: $ff
    rst $38                                       ; $4b6f: $ff
    rst $38                                       ; $4b70: $ff
    rst $38                                       ; $4b71: $ff
    rst $38                                       ; $4b72: $ff
    rst $38                                       ; $4b73: $ff
    rst $38                                       ; $4b74: $ff
    rst $38                                       ; $4b75: $ff
    rst $38                                       ; $4b76: $ff
    rst $38                                       ; $4b77: $ff
    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    rst $38                                       ; $4b7a: $ff
    rst $38                                       ; $4b7b: $ff
    rst $38                                       ; $4b7c: $ff
    nop                                           ; $4b7d: $00
    rst $38                                       ; $4b7e: $ff
    rst $38                                       ; $4b7f: $ff
    rst $38                                       ; $4b80: $ff
    rst $38                                       ; $4b81: $ff
    rst $38                                       ; $4b82: $ff
    rst $38                                       ; $4b83: $ff
    rst $38                                       ; $4b84: $ff
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    rst $38                                       ; $4b88: $ff
    rst $38                                       ; $4b89: $ff
    rst $38                                       ; $4b8a: $ff
    rst $38                                       ; $4b8b: $ff
    rst $38                                       ; $4b8c: $ff
    rst $38                                       ; $4b8d: $ff
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    rst $38                                       ; $4b90: $ff
    rst $38                                       ; $4b91: $ff
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    rst $38                                       ; $4b94: $ff
    rst $38                                       ; $4b95: $ff
    rst $38                                       ; $4b96: $ff
    rst $38                                       ; $4b97: $ff
    rst $38                                       ; $4b98: $ff
    rst $38                                       ; $4b99: $ff
    rst $38                                       ; $4b9a: $ff
    rst $38                                       ; $4b9b: $ff
    rst $38                                       ; $4b9c: $ff
    rst $38                                       ; $4b9d: $ff
    rst $38                                       ; $4b9e: $ff
    nop                                           ; $4b9f: $00
    rst $38                                       ; $4ba0: $ff
    rst $38                                       ; $4ba1: $ff
    rst $38                                       ; $4ba2: $ff
    rst $38                                       ; $4ba3: $ff
    rst $38                                       ; $4ba4: $ff
    rst $38                                       ; $4ba5: $ff
    rst $38                                       ; $4ba6: $ff
    rst $38                                       ; $4ba7: $ff
    rst $38                                       ; $4ba8: $ff
    rst $38                                       ; $4ba9: $ff
    rst $38                                       ; $4baa: $ff

Jump_02f_4bab:
    rst $38                                       ; $4bab: $ff
    rst $38                                       ; $4bac: $ff
    rst $38                                       ; $4bad: $ff
    rst $38                                       ; $4bae: $ff
    rst $38                                       ; $4baf: $ff
    nop                                           ; $4bb0: $00
    rst $38                                       ; $4bb1: $ff
    rst $38                                       ; $4bb2: $ff
    rst $38                                       ; $4bb3: $ff
    rst $38                                       ; $4bb4: $ff
    rst $38                                       ; $4bb5: $ff
    db $fc                                        ; $4bb6: $fc
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    nop                                           ; $4bb9: $00
    daa                                           ; $4bba: $27
    ld a, [bc]                                    ; $4bbb: $0a
    ld a, [hl+]                                   ; $4bbc: $2a
    ld a, [bc]                                    ; $4bbd: $0a
    rst $38                                       ; $4bbe: $ff
    push af                                       ; $4bbf: $f5
    and $f6                                       ; $4bc0: $e6 $f6
    ld a, [hl+]                                   ; $4bc2: $2a
    rst $38                                       ; $4bc3: $ff
    ld [$f7da], a                                 ; $4bc4: $ea $da $f7
    db $f4                                        ; $4bc7: $f4
    ret nz                                        ; $4bc8: $c0

    rst $38                                       ; $4bc9: $ff
    jp nz, Jump_000_0be1                          ; $4bca: $c2 $e1 $0b

    rst $38                                       ; $4bcd: $ff
    ldh [$0a], a                                  ; $4bce: $e0 $0a
    ld c, $0e                                     ; $4bd0: $0e $0e
    ld a, [bc]                                    ; $4bd2: $0a
    add h                                         ; $4bd3: $84
    db $fc                                        ; $4bd4: $fc
    ld [c], a                                     ; $4bd5: $e2
    ld [hl], e                                    ; $4bd6: $73
    pop hl                                        ; $4bd7: $e1
    inc c                                         ; $4bd8: $0c
    xor h                                         ; $4bd9: $ac
    and $ea                                       ; $4bda: $e6 $ea
    push hl                                       ; $4bdc: $e5
    ld [c], a                                     ; $4bdd: $e2
    ldh [$da], a                                  ; $4bde: $e0 $da
    pop hl                                        ; $4be0: $e1
    dec bc                                        ; $4be1: $0b

Jump_02f_4be2:
    add hl, bc                                    ; $4be2: $09
    dec bc                                        ; $4be3: $0b
    sub d                                         ; $4be4: $92
    db $e3                                        ; $4be5: $e3
    ret nz                                        ; $4be6: $c0

    ld hl, sp+$0c                                 ; $4be7: $f8 $0c
    rst $38                                       ; $4be9: $ff
    pop hl                                        ; $4bea: $e1
    ret nz                                        ; $4beb: $c0

    rst $38                                       ; $4bec: $ff
    add b                                         ; $4bed: $80
    xor $7a                                       ; $4bee: $ee $7a
    ldh [rP1], a                                  ; $4bf0: $e0 $00
    call nz, $c1e0                                ; $4bf2: $c4 $e0 $c1
    db $e3                                        ; $4bf5: $e3
    ret nz                                        ; $4bf6: $c0

    rst $20                                       ; $4bf7: $e7
    push hl                                       ; $4bf8: $e5
    ret z                                         ; $4bf9: $c8

    ret nz                                        ; $4bfa: $c0

    rst $38                                       ; $4bfb: $ff
    ret nz                                        ; $4bfc: $c0

    rst $38                                       ; $4bfd: $ff
    ld b, b                                       ; $4bfe: $40
    di                                            ; $4bff: $f3
    and b                                         ; $4c00: $a0
    push hl                                       ; $4c01: $e5
    ld c, $99                                     ; $4c02: $0e $99
    db $e3                                        ; $4c04: $e3
    inc c                                         ; $4c05: $0c
    inc c                                         ; $4c06: $0c
    dec bc                                        ; $4c07: $0b
    add $c6                                       ; $4c08: $c6 $c6
    db $ec                                        ; $4c0a: $ec
    db $e4                                        ; $4c0b: $e4
    xor h                                         ; $4c0c: $ac
    adc $82                                       ; $4c0d: $ce $82
    call Call_000_0d07                            ; $4c0f: $cd $07 $0d
    dec c                                         ; $4c12: $0d
    dec l                                         ; $4c13: $2d
    ret nz                                        ; $4c14: $c0

    and $b3                                       ; $4c15: $e6 $b3
    pop bc                                        ; $4c17: $c1
    ld l, h                                       ; $4c18: $6c
    push bc                                       ; $4c19: $c5
    ld l, a                                       ; $4c1a: $6f
    ldh [$c0], a                                  ; $4c1b: $e0 $c0
    rst $38                                       ; $4c1d: $ff
    ld [bc], a                                    ; $4c1e: $02
    ret nz                                        ; $4c1f: $c0

Jump_02f_4c20:
    ld [c], a                                     ; $4c20: $e2
    dec c                                         ; $4c21: $0d
    sub h                                         ; $4c22: $94
    ld [$e9c0], a                                 ; $4c23: $ea $c0 $e9
    adc b                                         ; $4c26: $88
    jp $e3b2                                      ; $4c27: $c3 $b2 $e3


    and [hl]                                      ; $4c2a: $a6
    push bc                                       ; $4c2b: $c5
    ret nz                                        ; $4c2c: $c0

    ld hl, sp+$68                                 ; $4c2d: $f8 $68
    ld b, b                                       ; $4c2f: $40
    ldh [rTMA], a                                 ; $4c30: $e0 $06
    rst $00                                       ; $4c32: $c7
    add sp, -$3d                                  ; $4c33: $e8 $c3
    dec hl                                        ; $4c35: $2b
    ret nz                                        ; $4c36: $c0

    rst $38                                       ; $4c37: $ff
    dec c                                         ; $4c38: $0d
    ld l, l                                       ; $4c39: $6d
    sbc b                                         ; $4c3a: $98
    push hl                                       ; $4c3b: $e5
    jp nz, $e000                                  ; $4c3c: $c2 $00 $e0

    dec hl                                        ; $4c3f: $2b
    add $a8                                       ; $4c40: $c6 $a8
    add d                                         ; $4c42: $82
    rst $20                                       ; $4c43: $e7
    jr nc, @-$1b                                  ; $4c44: $30 $e3

    ret nz                                        ; $4c46: $c0

    db $d3                                        ; $4c47: $d3
    ld l, l                                       ; $4c48: $6d
    ld l, l                                       ; $4c49: $6d
    db $10                                        ; $4c4a: $10
    ret nz                                        ; $4c4b: $c0

    and $ff                                       ; $4c4c: $e6 $ff
    and b                                         ; $4c4e: $a0
    ret nz                                        ; $4c4f: $c0

    ld a, [c]                                     ; $4c50: $f2
    db $dd                                        ; $4c51: $dd
    ret nz                                        ; $4c52: $c0

    dec l                                         ; $4c53: $2d
    ret nz                                        ; $4c54: $c0

    ld a, [$c57c]                                 ; $4c55: $fa $7c $c5
    ld b, b                                       ; $4c58: $40
    jp hl                                         ; $4c59: $e9


    ld [$88e6], sp                                ; $4c5a: $08 $e6 $88
    ret nz                                        ; $4c5d: $c0

    ld [c], a                                     ; $4c5e: $e2
    add b                                         ; $4c5f: $80
    push de                                       ; $4c60: $d5
    ld c, l                                       ; $4c61: $4d
    ret nz                                        ; $4c62: $c0

    and $8e                                       ; $4c63: $e6 $8e
    jp $ffc0                                      ; $4c65: $c3 $c0 $ff


    jp nz, $e093                                  ; $4c68: $c2 $93 $e0

    sub [hl]                                      ; $4c6b: $96
    push bc                                       ; $4c6c: $c5
    xor h                                         ; $4c6d: $ac
    sbc l                                         ; $4c6e: $9d
    ret nz                                        ; $4c6f: $c0

    rst $30                                       ; $4c70: $f7
    add [hl]                                      ; $4c71: $86
    sbc a                                         ; $4c72: $9f
    ccf                                           ; $4c73: $3f
    adc l                                         ; $4c74: $8d
    ld l, d                                       ; $4c75: $6a
    ld l, d                                       ; $4c76: $6a
    ld c, d                                       ; $4c77: $4a
    sub b                                         ; $4c78: $90
    rst $38                                       ; $4c79: $ff
    db $e3                                        ; $4c7a: $e3

jr_02f_4c7b:
    rrca                                          ; $4c7b: $0f
    add c                                         ; $4c7c: $81
    push af                                       ; $4c7d: $f5
    db $e4                                        ; $4c7e: $e4
    di                                            ; $4c7f: $f3
    ld [c], a                                     ; $4c80: $e2
    ld a, [bc]                                    ; $4c81: $0a
    and $f7                                       ; $4c82: $e6 $f7
    rst $38                                       ; $4c84: $ff
    ld l, c                                       ; $4c85: $69
    ld a, [bc]                                    ; $4c86: $0a
    ld c, $c0                                     ; $4c87: $0e $c0
    push hl                                       ; $4c89: $e5
    ld l, d                                       ; $4c8a: $6a
    ld a, [bc]                                    ; $4c8b: $0a
    ld a, [bc]                                    ; $4c8c: $0a
    db $db                                        ; $4c8d: $db
    db $eb                                        ; $4c8e: $eb
    and $f8                                       ; $4c8f: $e6 $f8
    jp nz, $fb7f                                  ; $4c91: $c2 $7f $fb

    ld a, [$8200]                                 ; $4c94: $fa $00 $82
    ld a, a                                       ; $4c97: $7f
    ld b, d                                       ; $4c98: $42
    ld a, c                                       ; $4c99: $79
    ret nz                                        ; $4c9a: $c0

    rst $38                                       ; $4c9b: $ff
    ret nz                                        ; $4c9c: $c0

    rst $38                                       ; $4c9d: $ff
    ret nz                                        ; $4c9e: $c0

    db $fc                                        ; $4c9f: $fc
    sbc a                                         ; $4ca0: $9f
    rst $28                                       ; $4ca1: $ef
    call $804b                                    ; $4ca2: $cd $4b $80
    db $fc                                        ; $4ca5: $fc
    jr nz, jr_02f_4c7b                            ; $4ca6: $20 $d3

    or $c0                                        ; $4ca8: $f6 $c0
    rst $38                                       ; $4caa: $ff

Jump_02f_4cab:
    ret nz                                        ; $4cab: $c0

    rst $38                                       ; $4cac: $ff
    ret nz                                        ; $4cad: $c0

    rst $38                                       ; $4cae: $ff
    ret nz                                        ; $4caf: $c0

    ld hl, sp+$6a                                 ; $4cb0: $f8 $6a
    rst $38                                       ; $4cb2: $ff
    jp hl                                         ; $4cb3: $e9


    ret nz                                        ; $4cb4: $c0

    rst $38                                       ; $4cb5: $ff
    nop                                           ; $4cb6: $00
    db $fc                                        ; $4cb7: $fc
    ei                                            ; $4cb8: $fb
    or e                                          ; $4cb9: $b3
    ld [c], a                                     ; $4cba: $e2
    ret nz                                        ; $4cbb: $c0

    rst $38                                       ; $4cbc: $ff
    ld b, b                                       ; $4cbd: $40
    rst $38                                       ; $4cbe: $ff
    ret nz                                        ; $4cbf: $c0

    rst $38                                       ; $4cc0: $ff
    ret nz                                        ; $4cc1: $c0

    rst $38                                       ; $4cc2: $ff
    ret nz                                        ; $4cc3: $c0

    rst $38                                       ; $4cc4: $ff
    ret nz                                        ; $4cc5: $c0

    rst $38                                       ; $4cc6: $ff
    nop                                           ; $4cc7: $00
    ret nz                                        ; $4cc8: $c0

    rst $38                                       ; $4cc9: $ff
    ret nz                                        ; $4cca: $c0

    rst $38                                       ; $4ccb: $ff
    ret nz                                        ; $4ccc: $c0

    rst $38                                       ; $4ccd: $ff
    ret nz                                        ; $4cce: $c0

    rst $38                                       ; $4ccf: $ff
    cp c                                          ; $4cd0: $b9
    rst $38                                       ; $4cd1: $ff
    ret nz                                        ; $4cd2: $c0

    rst $38                                       ; $4cd3: $ff
    ret nz                                        ; $4cd4: $c0

    rst $38                                       ; $4cd5: $ff
    ret nz                                        ; $4cd6: $c0

    rst $38                                       ; $4cd7: $ff
    nop                                           ; $4cd8: $00
    rst $38                                       ; $4cd9: $ff
    rst $38                                       ; $4cda: $ff
    ret nz                                        ; $4cdb: $c0

    rst $38                                       ; $4cdc: $ff
    ret nz                                        ; $4cdd: $c0

    rst $38                                       ; $4cde: $ff
    ret nz                                        ; $4cdf: $c0

    rst $38                                       ; $4ce0: $ff
    ret nz                                        ; $4ce1: $c0

    rst $38                                       ; $4ce2: $ff
    ret nz                                        ; $4ce3: $c0

    rst $38                                       ; $4ce4: $ff
    ret nz                                        ; $4ce5: $c0

    rst $38                                       ; $4ce6: $ff
    ret nz                                        ; $4ce7: $c0

    rst $38                                       ; $4ce8: $ff
    nop                                           ; $4ce9: $00
    ret nz                                        ; $4cea: $c0

    rst $38                                       ; $4ceb: $ff
    ret nz                                        ; $4cec: $c0

    rst $38                                       ; $4ced: $ff
    ret nz                                        ; $4cee: $c0

    rst $38                                       ; $4cef: $ff
    ret nz                                        ; $4cf0: $c0

    rst $38                                       ; $4cf1: $ff
    ret nz                                        ; $4cf2: $c0

    rst $38                                       ; $4cf3: $ff
    ret nz                                        ; $4cf4: $c0

    rst $38                                       ; $4cf5: $ff
    ret nz                                        ; $4cf6: $c0

    rst $38                                       ; $4cf7: $ff
    ret nz                                        ; $4cf8: $c0

    rst $38                                       ; $4cf9: $ff
    nop                                           ; $4cfa: $00
    add b                                         ; $4cfb: $80
    ld d, e                                       ; $4cfc: $53
    call z, $c0ff                                 ; $4cfd: $cc $ff $c0
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    ret nz                                        ; $4d03: $c0

    rst $38                                       ; $4d04: $ff
    rst $38                                       ; $4d05: $ff
    rst $38                                       ; $4d06: $ff
    ret nz                                        ; $4d07: $c0

    rst $38                                       ; $4d08: $ff
    rst $38                                       ; $4d09: $ff
    rst $38                                       ; $4d0a: $ff
    nop                                           ; $4d0b: $00
    ret nz                                        ; $4d0c: $c0

    rst $38                                       ; $4d0d: $ff
    ret nz                                        ; $4d0e: $c0

    rst $38                                       ; $4d0f: $ff
    ret nz                                        ; $4d10: $c0

    rst $38                                       ; $4d11: $ff
    ret nz                                        ; $4d12: $c0

    rst $38                                       ; $4d13: $ff
    ret nz                                        ; $4d14: $c0

    rst $38                                       ; $4d15: $ff
    ret nz                                        ; $4d16: $c0

    rst $38                                       ; $4d17: $ff
    ret nz                                        ; $4d18: $c0

    rst $38                                       ; $4d19: $ff
    ret nz                                        ; $4d1a: $c0

    rst $38                                       ; $4d1b: $ff
    nop                                           ; $4d1c: $00
    ret nz                                        ; $4d1d: $c0

    rst $38                                       ; $4d1e: $ff
    ret nz                                        ; $4d1f: $c0

    rst $38                                       ; $4d20: $ff
    rst $38                                       ; $4d21: $ff
    rst $38                                       ; $4d22: $ff
    ret nz                                        ; $4d23: $c0

    rst $38                                       ; $4d24: $ff
    rst $38                                       ; $4d25: $ff
    rst $38                                       ; $4d26: $ff
    ret nz                                        ; $4d27: $c0

    rst $38                                       ; $4d28: $ff
    rst $38                                       ; $4d29: $ff
    rst $38                                       ; $4d2a: $ff
    ret nz                                        ; $4d2b: $c0

    rst $38                                       ; $4d2c: $ff
    nop                                           ; $4d2d: $00
    ret nz                                        ; $4d2e: $c0

    rst $38                                       ; $4d2f: $ff
    ret nz                                        ; $4d30: $c0

    rst $38                                       ; $4d31: $ff
    ret nz                                        ; $4d32: $c0

    rst $38                                       ; $4d33: $ff
    ret nz                                        ; $4d34: $c0

    rst $38                                       ; $4d35: $ff
    ret nz                                        ; $4d36: $c0

    rst $38                                       ; $4d37: $ff
    ret nz                                        ; $4d38: $c0

    rst $38                                       ; $4d39: $ff
    ret nz                                        ; $4d3a: $c0

    rst $38                                       ; $4d3b: $ff
    ret nz                                        ; $4d3c: $c0

    rst $38                                       ; $4d3d: $ff
    nop                                           ; $4d3e: $00
    ret nz                                        ; $4d3f: $c0

    rst $38                                       ; $4d40: $ff
    call z, $c0ff                                 ; $4d41: $cc $ff $c0
    rst $38                                       ; $4d44: $ff
    rst $38                                       ; $4d45: $ff
    rst $38                                       ; $4d46: $ff
    ret nz                                        ; $4d47: $c0

    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    rst $38                                       ; $4d4a: $ff
    ret nz                                        ; $4d4b: $c0

    rst $38                                       ; $4d4c: $ff
    rst $38                                       ; $4d4d: $ff
    rst $38                                       ; $4d4e: $ff
    nop                                           ; $4d4f: $00
    ret nz                                        ; $4d50: $c0

    rst $38                                       ; $4d51: $ff
    ret nz                                        ; $4d52: $c0

    ei                                            ; $4d53: $fb
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    dec c                                         ; $4d57: $0d
    rrca                                          ; $4d58: $0f
    rst $38                                       ; $4d59: $ff
    rst $20                                       ; $4d5a: $e7
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    di                                            ; $4d5d: $f3
    ld [$e3fe], a                                 ; $4d5e: $ea $fe $e3
    ldh [rIE], a                                  ; $4d61: $e0 $ff
    ldh [$fc], a                                  ; $4d63: $e0 $fc
    nop                                           ; $4d65: $00
    db $fc                                        ; $4d66: $fc
    push hl                                       ; $4d67: $e5
    ret nz                                        ; $4d68: $c0

    db $e3                                        ; $4d69: $e3
    jp hl                                         ; $4d6a: $e9


    jp hl                                         ; $4d6b: $e9


    ldh [$e9], a                                  ; $4d6c: $e0 $e9

jr_02f_4d6e:
    and b                                         ; $4d6e: $a0
    push hl                                       ; $4d6f: $e5
    ret c                                         ; $4d70: $d8

    push hl                                       ; $4d71: $e5
    ret nz                                        ; $4d72: $c0

    db $eb                                        ; $4d73: $eb
    add b                                         ; $4d74: $80
    and $00                                       ; $4d75: $e6 $00
    and $e5                                       ; $4d77: $e6 $e5
    or a                                          ; $4d79: $b7
    db $ed                                        ; $4d7a: $ed
    ldh [$e6], a                                  ; $4d7b: $e0 $e6
    and b                                         ; $4d7d: $a0
    ld a, [c]                                     ; $4d7e: $f2
    ldh [$fa], a                                  ; $4d7f: $e0 $fa
    ld h, $e2                                     ; $4d81: $26 $e2
    jr nz, jr_02f_4d6e                            ; $4d83: $20 $e9

    or e                                          ; $4d85: $b3
    push hl                                       ; $4d86: $e5
    nop                                           ; $4d87: $00
    rst $38                                       ; $4d88: $ff
    rst $38                                       ; $4d89: $ff
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    rst $38                                       ; $4d8c: $ff
    rst $38                                       ; $4d8d: $ff
    rst $38                                       ; $4d8e: $ff
    rst $38                                       ; $4d8f: $ff
    rst $38                                       ; $4d90: $ff
    rst $38                                       ; $4d91: $ff
    rst $38                                       ; $4d92: $ff
    rst $38                                       ; $4d93: $ff
    rst $38                                       ; $4d94: $ff
    rst $38                                       ; $4d95: $ff
    rst $38                                       ; $4d96: $ff
    rst $38                                       ; $4d97: $ff
    nop                                           ; $4d98: $00
    rst $38                                       ; $4d99: $ff
    rst $38                                       ; $4d9a: $ff
    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff

jr_02f_4d9e:
    rst $38                                       ; $4d9e: $ff
    rst $38                                       ; $4d9f: $ff
    rst $38                                       ; $4da0: $ff
    rst $38                                       ; $4da1: $ff
    rst $38                                       ; $4da2: $ff
    rst $38                                       ; $4da3: $ff
    rst $38                                       ; $4da4: $ff
    rst $38                                       ; $4da5: $ff
    rst $38                                       ; $4da6: $ff
    rst $38                                       ; $4da7: $ff
    rst $38                                       ; $4da8: $ff
    nop                                           ; $4da9: $00
    rst $38                                       ; $4daa: $ff
    rst $38                                       ; $4dab: $ff
    rst $38                                       ; $4dac: $ff
    rst $38                                       ; $4dad: $ff
    rst $38                                       ; $4dae: $ff
    rst $38                                       ; $4daf: $ff
    rst $38                                       ; $4db0: $ff
    rst $38                                       ; $4db1: $ff
    rst $38                                       ; $4db2: $ff
    rst $38                                       ; $4db3: $ff
    rst $38                                       ; $4db4: $ff
    ld sp, hl                                     ; $4db5: $f9
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    xor c                                         ; $4db9: $a9
    nop                                           ; $4dba: $00
    rst $38                                       ; $4dbb: $ff
    rst $38                                       ; $4dbc: $ff
    db $fd                                        ; $4dbd: $fd
    db $fc                                        ; $4dbe: $fc
    jr jr_02f_4d9e                                ; $4dbf: $18 $dd

    ld [c], a                                     ; $4dc1: $e2
    db $10                                        ; $4dc2: $10
    rst $10                                       ; $4dc3: $d7
    ld hl, sp+$1c                                 ; $4dc4: $f8 $1c
    ld hl, sp-$1d                                 ; $4dc6: $f8 $e3
    ld sp, hl                                     ; $4dc8: $f9
    ldh [$e1], a                                  ; $4dc9: $e0 $e1
    sbc e                                         ; $4dcb: $9b
    ld a, [$0010]                                 ; $4dcc: $fa $10 $00
    inc e                                         ; $4dcf: $1c
    inc e                                         ; $4dd0: $1c
    inc e                                         ; $4dd1: $1c
    ld d, b                                       ; $4dd2: $50
    and b                                         ; $4dd3: $a0
    ld a, [$ffff]                                 ; $4dd4: $fa $ff $ff
    rst $38                                       ; $4dd7: $ff
    rst $38                                       ; $4dd8: $ff
    ei                                            ; $4dd9: $fb
    ld a, [$dd11]                                 ; $4dda: $fa $11 $dd
    jp hl                                         ; $4ddd: $e9


    ld hl, $ffd0                                  ; $4dde: $21 $d0 $ff
    nop                                           ; $4de1: $00
    rst $38                                       ; $4de2: $ff
    rst $38                                       ; $4de3: $ff
    rst $38                                       ; $4de4: $ff
    rst $38                                       ; $4de5: $ff
    rst $38                                       ; $4de6: $ff
    rst $38                                       ; $4de7: $ff
    rst $38                                       ; $4de8: $ff
    rst $38                                       ; $4de9: $ff
    rst $38                                       ; $4dea: $ff
    rst $38                                       ; $4deb: $ff
    rst $38                                       ; $4dec: $ff
    rst $38                                       ; $4ded: $ff
    rst $38                                       ; $4dee: $ff
    rst $38                                       ; $4def: $ff
    rst $38                                       ; $4df0: $ff
    rst $38                                       ; $4df1: $ff
    nop                                           ; $4df2: $00
    rst $38                                       ; $4df3: $ff
    rst $38                                       ; $4df4: $ff
    rst $38                                       ; $4df5: $ff
    rst $38                                       ; $4df6: $ff
    rst $38                                       ; $4df7: $ff
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
    nop                                           ; $4e03: $00
    rst $38                                       ; $4e04: $ff
    rst $38                                       ; $4e05: $ff
    rst $38                                       ; $4e06: $ff
    rst $38                                       ; $4e07: $ff
    rst $38                                       ; $4e08: $ff
    rst $38                                       ; $4e09: $ff
    rst $38                                       ; $4e0a: $ff
    rst $38                                       ; $4e0b: $ff
    rst $38                                       ; $4e0c: $ff
    ldh [rP1], a                                  ; $4e0d: $e0 $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    inc b                                         ; $4e12: $04
    nop                                           ; $4e13: $00
    db $10                                        ; $4e14: $10
    inc b                                         ; $4e15: $04
    inc b                                         ; $4e16: $04
    nop                                           ; $4e17: $00
    db $10                                        ; $4e18: $10
    ld [$0004], sp                                ; $4e19: $08 $04 $00
    db $10                                        ; $4e1c: $10
    inc c                                         ; $4e1d: $0c
    inc b                                         ; $4e1e: $04
    nop                                           ; $4e1f: $00
    db $10                                        ; $4e20: $10
    db $10                                        ; $4e21: $10
    inc b                                         ; $4e22: $04
    nop                                           ; $4e23: $00
    db $10                                        ; $4e24: $10
    inc c                                         ; $4e25: $0c
    inc b                                         ; $4e26: $04
    nop                                           ; $4e27: $00
    db $10                                        ; $4e28: $10
    ld [$0004], sp                                ; $4e29: $08 $04 $00
    db $10                                        ; $4e2c: $10
    inc b                                         ; $4e2d: $04
    inc b                                         ; $4e2e: $04
    nop                                           ; $4e2f: $00
    db $10                                        ; $4e30: $10
    rst $38                                       ; $4e31: $ff
    nop                                           ; $4e32: $00
    inc d                                         ; $4e33: $14
    ld [bc], a                                    ; $4e34: $02
    inc b                                         ; $4e35: $04
    rrca                                          ; $4e36: $0f
    ld d, $02                                     ; $4e37: $16 $02
    inc b                                         ; $4e39: $04
    rrca                                          ; $4e3a: $0f
    jr jr_02f_4e3f                                ; $4e3b: $18 $02

    inc b                                         ; $4e3d: $04
    rrca                                          ; $4e3e: $0f

jr_02f_4e3f:
    ld a, [de]                                    ; $4e3f: $1a
    ld [bc], a                                    ; $4e40: $02
    inc b                                         ; $4e41: $04
    rrca                                          ; $4e42: $0f
    rst $38                                       ; $4e43: $ff
    ld bc, $fffe                                  ; $4e44: $01 $fe $ff
    ld c, h                                       ; $4e47: $4c
    xor b                                         ; $4e48: $a8
    or a                                          ; $4e49: $b7
    ld b, a                                       ; $4e4a: $47
    ld [hl], b                                    ; $4e4b: $70
    xor b                                         ; $4e4c: $a8
    cp d                                          ; $4e4d: $ba
    ld [hl], l                                    ; $4e4e: $75
    rst $38                                       ; $4e4f: $ff
    ld a, a                                       ; $4e50: $7f
    cp a                                          ; $4e51: $bf
    ld sp, hl                                     ; $4e52: $f9
    ccf                                           ; $4e53: $3f
    inc sp                                        ; $4e54: $33
    and e                                         ; $4e55: $a3
    pop hl                                        ; $4e56: $e1
    ld bc, $7fff                                  ; $4e57: $01 $ff $7f
    ld hl, $c1ff                                  ; $4e5a: $21 $ff $c1
    rst $18                                       ; $4e5d: $df
    add hl, hl                                    ; $4e5e: $29
    cp a                                          ; $4e5f: $bf
    ld e, c                                       ; $4e60: $59
    rst $38                                       ; $4e61: $ff
    rst $38                                       ; $4e62: $ff
    ld sp, hl                                     ; $4e63: $f9
    ei                                            ; $4e64: $fb
    db $fd                                        ; $4e65: $fd
    xor a                                         ; $4e66: $af
    ld sp, hl                                     ; $4e67: $f9
    dec bc                                        ; $4e68: $0b
    db $fd                                        ; $4e69: $fd
    rst $38                                       ; $4e6a: $ff
    ld hl, $9181                                  ; $4e6b: $21 $81 $91
    inc hl                                        ; $4e6e: $23
    ld [hl+], a                                   ; $4e6f: $22
    cp a                                          ; $4e70: $bf
    sbc l                                         ; $4e71: $9d
    ld e, [hl]                                    ; $4e72: $5e
    rst $38                                       ; $4e73: $ff
    ld c, a                                       ; $4e74: $4f
    xor a                                         ; $4e75: $af
    and c                                         ; $4e76: $a1
    ld d, b                                       ; $4e77: $50
    nop                                           ; $4e78: $00
    rst $38                                       ; $4e79: $ff
    ccf                                           ; $4e7a: $3f
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    xor l                                         ; $4e7d: $ad
    ld e, e                                       ; $4e7e: $5b
    ld c, e                                       ; $4e7f: $4b
    cp l                                          ; $4e80: $bd
    db $ed                                        ; $4e81: $ed
    dec de                                        ; $4e82: $1b
    db $db                                        ; $4e83: $db
    dec [hl]                                      ; $4e84: $35
    rst $38                                       ; $4e85: $ff
    pop af                                        ; $4e86: $f1
    rst $28                                       ; $4e87: $ef
    ld h, e                                       ; $4e88: $63
    dec e                                         ; $4e89: $1d
    ld bc, $f9ff                                  ; $4e8a: $01 $ff $f9
    rst $38                                       ; $4e8d: $ff
    ld a, [hl]                                    ; $4e8e: $7e
    ret nz                                        ; $4e8f: $c0

    rst $20                                       ; $4e90: $e7
    cp $3d                                        ; $4e91: $fe $3d
    dec l                                         ; $4e93: $2d
    cp a                                          ; $4e94: $bf
    ld sp, hl                                     ; $4e95: $f9
    ld sp, $edc0                                  ; $4e96: $31 $c0 $ed
    rst $38                                       ; $4e99: $ff
    jr nc, @-$5e                                  ; $4e9a: $30 $a0

    or b                                          ; $4e9c: $b0
    jr nz, jr_02f_4ec7                            ; $4e9d: $20 $28

    or c                                          ; $4e9f: $b1
    sub c                                         ; $4ea0: $91
    ld e, a                                       ; $4ea1: $5f
    cp $c0                                        ; $4ea2: $fe $c0
    and $db                                       ; $4ea4: $e6 $db
    res 7, l                                      ; $4ea6: $cb $bd
    db $ed                                        ; $4ea8: $ed
    sbc e                                         ; $4ea9: $9b
    ld e, e                                       ; $4eaa: $5b
    or l                                          ; $4eab: $b5
    ld a, [hl]                                    ; $4eac: $7e
    ret nz                                        ; $4ead: $c0

    rst $28                                       ; $4eae: $ef
    rst $38                                       ; $4eaf: $ff
    ld a, $2a                                     ; $4eb0: $3e $2a
    cp a                                          ; $4eb2: $bf
    and $3c                                       ; $4eb3: $e6 $3c
    add b                                         ; $4eb5: $80
    db $eb                                        ; $4eb6: $eb
    rst $38                                       ; $4eb7: $ff
    ld c, e                                       ; $4eb8: $4b
    ld a, l                                       ; $4eb9: $7d
    inc l                                         ; $4eba: $2c
    cp b                                          ; $4ebb: $b8
    xor h                                         ; $4ebc: $ac
    jr c, jr_02f_4ee9                             ; $4ebd: $38 $2a

    cp h                                          ; $4ebf: $bc
    db $fd                                        ; $4ec0: $fd
    sbc h                                         ; $4ec1: $9c
    ret nz                                        ; $4ec2: $c0

    and $2d                                       ; $4ec3: $e6 $2d
    dec sp                                        ; $4ec5: $3b
    dec hl                                        ; $4ec6: $2b

jr_02f_4ec7:
    dec a                                         ; $4ec7: $3d
    dec l                                         ; $4ec8: $2d
    ld a, e                                       ; $4ec9: $7b
    ei                                            ; $4eca: $fb
    ld e, e                                       ; $4ecb: $5b
    push af                                       ; $4ecc: $f5
    add b                                         ; $4ecd: $80
    ldh a, [$3f]                                  ; $4ece: $f0 $3f
    dec hl                                        ; $4ed0: $2b
    cp a                                          ; $4ed1: $bf
    pop hl                                        ; $4ed2: $e1
    ccf                                           ; $4ed3: $3f
    cp $40                                        ; $4ed4: $fe $40
    add sp, $7d                                   ; $4ed6: $e8 $7d
    ld l, a                                       ; $4ed8: $6f
    ld sp, hl                                     ; $4ed9: $f9

jr_02f_4eda:
    sbc e                                         ; $4eda: $9b
    dec e                                         ; $4edb: $1d
    inc sp                                        ; $4edc: $33
    xor [hl]                                      ; $4edd: $ae
    cp a                                          ; $4ede: $bf
    xor e                                         ; $4edf: $ab
    ld [hl], $3a                                  ; $4ee0: $36 $3a
    and a                                         ; $4ee2: $a7
    sbc e                                         ; $4ee3: $9b
    ld d, a                                       ; $4ee4: $57
    ld b, b                                       ; $4ee5: $40
    push hl                                       ; $4ee6: $e5
    dec c                                         ; $4ee7: $0d
    cp a                                          ; $4ee8: $bf

jr_02f_4ee9:
    dec bc                                        ; $4ee9: $0b
    dec bc                                        ; $4eea: $0b
    dec c                                         ; $4eeb: $0d
    adc l                                         ; $4eec: $8d
    dec de                                        ; $4eed: $1b
    dec de                                        ; $4eee: $1b
    ret nz                                        ; $4eef: $c0

    ldh a, [rIE]                                  ; $4ef0: $f0 $ff
    cp $c0                                        ; $4ef2: $fe $c0
    db $ec                                        ; $4ef4: $ec
    dec sp                                        ; $4ef5: $3b
    db $fd                                        ; $4ef6: $fd
    rst $08                                       ; $4ef7: $cf
    adc c                                         ; $4ef8: $89
    add e                                         ; $4ef9: $83
    dec b                                         ; $4efa: $05
    dec [hl]                                      ; $4efb: $35
    ld a, a                                       ; $4efc: $7f
    xor e                                         ; $4efd: $ab
    xor c                                         ; $4efe: $a9
    scf                                           ; $4eff: $37
    dec a                                         ; $4f00: $3d
    and e                                         ; $4f01: $a3
    sbc [hl]                                      ; $4f02: $9e
    ld d, c                                       ; $4f03: $51
    nop                                           ; $4f04: $00
    push hl                                       ; $4f05: $e5
    ld a, a                                       ; $4f06: $7f
    add l                                         ; $4f07: $85
    inc bc                                        ; $4f08: $03
    ld b, e                                       ; $4f09: $43
    adc l                                         ; $4f0a: $8d
    adc l                                         ; $4f0b: $8d
    ei                                            ; $4f0c: $fb
    ei                                            ; $4f0d: $fb
    add b                                         ; $4f0e: $80

jr_02f_4f0f:
    and $ff                                       ; $4f0f: $e6 $ff
    jp c, $e1f8                                   ; $4f11: $da $f8 $e1

    jr nz, jr_02f_4eda                            ; $4f14: $20 $c4

    ld b, b                                       ; $4f16: $40
    and b                                         ; $4f17: $a0
    and b                                         ; $4f18: $a0
    rst $38                                       ; $4f19: $ff
    ret nc                                        ; $4f1a: $d0

    ret nc                                        ; $4f1b: $d0

    xor d                                         ; $4f1c: $aa
    xor d                                         ; $4f1d: $aa
    push af                                       ; $4f1e: $f5
    push af                                       ; $4f1f: $f5
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    or l                                          ; $4f23: $b5
    ccf                                           ; $4f24: $3f
    ld a, [bc]                                    ; $4f25: $0a
    dec c                                         ; $4f26: $0d
    ld b, l                                       ; $4f27: $45
    ld b, $0a                                     ; $4f28: $06 $0a
    dec bc                                        ; $4f2a: $0b
    rst $38                                       ; $4f2b: $ff
    rla                                           ; $4f2c: $17
    rla                                           ; $4f2d: $17
    xor e                                         ; $4f2e: $ab
    xor e                                         ; $4f2f: $ab
    ld e, a                                       ; $4f30: $5f
    ld e, a                                       ; $4f31: $5f
    rst $38                                       ; $4f32: $ff
    rst $38                                       ; $4f33: $ff

jr_02f_4f34:
    rst $38                                       ; $4f34: $ff
    db $db                                        ; $4f35: $db
    ld hl, sp-$11                                 ; $4f36: $f8 $ef
    jr nz, jr_02f_4f0f                            ; $4f38: $20 $d5

    ld b, b                                       ; $4f3a: $40
    add d                                         ; $4f3b: $82
    add b                                         ; $4f3c: $80
    rst $38                                       ; $4f3d: $ff
    ld b, b                                       ; $4f3e: $40
    ld b, b                                       ; $4f3f: $40
    xor b                                         ; $4f40: $a8
    xor b                                         ; $4f41: $a8
    push de                                       ; $4f42: $d5
    push de                                       ; $4f43: $d5
    ld a, [$fffa]                                 ; $4f44: $fa $fa $ff
    or l                                          ; $4f47: $b5
    ccf                                           ; $4f48: $3f
    ld [$550d], a                                 ; $4f49: $ea $0d $55
    ld b, $82                                     ; $4f4c: $06 $82
    inc bc                                        ; $4f4e: $03
    rst $38                                       ; $4f4f: $ff
    dec b                                         ; $4f50: $05
    dec b                                         ; $4f51: $05
    dec hl                                        ; $4f52: $2b
    dec hl                                        ; $4f53: $2b
    ld d, a                                       ; $4f54: $57
    ld d, a                                       ; $4f55: $57
    cp a                                          ; $4f56: $bf
    cp a                                          ; $4f57: $bf
    cp $c0                                        ; $4f58: $fe $c0
    db $fd                                        ; $4f5a: $fd
    ret c                                         ; $4f5b: $d8

    ld hl, sp-$20                                 ; $4f5c: $f8 $e0
    jr nz, jr_02f_4f34                            ; $4f5e: $20 $d4

    ld d, h                                       ; $4f60: $54
    ld [$eaaf], a                                 ; $4f61: $ea $af $ea
    db $fd                                        ; $4f64: $fd
    db $fd                                        ; $4f65: $fd
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    ld [c], a                                     ; $4f68: $e2
    dec [hl]                                      ; $4f69: $35
    and b                                         ; $4f6a: $a0
    ldh [rHDMA5], a                               ; $4f6b: $e0 $55
    ld e, a                                       ; $4f6d: $5f
    ld d, [hl]                                    ; $4f6e: $56
    xor [hl]                                      ; $4f6f: $ae
    xor a                                         ; $4f70: $af
    ld a, a                                       ; $4f71: $7f
    ld a, a                                       ; $4f72: $7f
    ldh a, [$e3]                                  ; $4f73: $f0 $e3
    nop                                           ; $4f75: $00
    rst $38                                       ; $4f76: $ff
    rst $38                                       ; $4f77: $ff
    nop                                           ; $4f78: $00
    rst $38                                       ; $4f79: $ff
    rst $38                                       ; $4f7a: $ff
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    rst $38                                       ; $4f7e: $ff
    rst $38                                       ; $4f7f: $ff
    rst $38                                       ; $4f80: $ff
    rst $38                                       ; $4f81: $ff
    rst $38                                       ; $4f82: $ff
    rst $38                                       ; $4f83: $ff
    rst $38                                       ; $4f84: $ff
    rst $38                                       ; $4f85: $ff
    rst $38                                       ; $4f86: $ff
    rst $38                                       ; $4f87: $ff
    rst $38                                       ; $4f88: $ff
    nop                                           ; $4f89: $00
    rst $38                                       ; $4f8a: $ff
    rst $38                                       ; $4f8b: $ff
    rst $38                                       ; $4f8c: $ff
    rst $38                                       ; $4f8d: $ff
    rst $38                                       ; $4f8e: $ff
    rst $38                                       ; $4f8f: $ff
    rst $38                                       ; $4f90: $ff
    rst $38                                       ; $4f91: $ff
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    rst $38                                       ; $4f94: $ff
    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    rst $38                                       ; $4f99: $ff
    nop                                           ; $4f9a: $00
    rst $38                                       ; $4f9b: $ff
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    rst $38                                       ; $4f9e: $ff
    rst $38                                       ; $4f9f: $ff
    rst $38                                       ; $4fa0: $ff
    rst $38                                       ; $4fa1: $ff
    rst $38                                       ; $4fa2: $ff
    rst $38                                       ; $4fa3: $ff
    rst $38                                       ; $4fa4: $ff
    rst $38                                       ; $4fa5: $ff
    rst $38                                       ; $4fa6: $ff
    rst $38                                       ; $4fa7: $ff
    rst $38                                       ; $4fa8: $ff
    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    nop                                           ; $4fab: $00
    rst $38                                       ; $4fac: $ff
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    rst $38                                       ; $4faf: $ff
    rst $38                                       ; $4fb0: $ff
    rst $38                                       ; $4fb1: $ff
    rst $38                                       ; $4fb2: $ff
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    rst $38                                       ; $4fb6: $ff
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    nop                                           ; $4fbc: $00
    rst $38                                       ; $4fbd: $ff
    rst $38                                       ; $4fbe: $ff
    rst $38                                       ; $4fbf: $ff
    rst $38                                       ; $4fc0: $ff
    rst $38                                       ; $4fc1: $ff
    rst $38                                       ; $4fc2: $ff
    rst $38                                       ; $4fc3: $ff
    rst $38                                       ; $4fc4: $ff
    rst $38                                       ; $4fc5: $ff
    rst $38                                       ; $4fc6: $ff
    rst $38                                       ; $4fc7: $ff
    rst $38                                       ; $4fc8: $ff
    rst $38                                       ; $4fc9: $ff
    rst $38                                       ; $4fca: $ff
    rst $38                                       ; $4fcb: $ff
    rst $38                                       ; $4fcc: $ff
    ld b, b                                       ; $4fcd: $40
    rst $38                                       ; $4fce: $ff
    rst $38                                       ; $4fcf: $ff
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    rst $38                                       ; $4fd2: $ff
    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    rst $38                                       ; $4fd5: $ff
    rst $38                                       ; $4fd6: $ff
    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    rst $38                                       ; $4fd9: $ff
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    ccf                                           ; $4fe2: $3f
    ccf                                           ; $4fe3: $3f
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    jr nz, jr_02f_5009                            ; $4fe7: $20 $20

    ld d, l                                       ; $4fe9: $55
    and b                                         ; $4fea: $a0
    ld a, [hl]                                    ; $4feb: $7e
    rst $38                                       ; $4fec: $ff
    ld a, a                                       ; $4fed: $7f
    ld [$0825], sp                                ; $4fee: $08 $25 $08
    dec h                                         ; $4ff1: $25
    ld [$0825], sp                                ; $4ff2: $08 $25 $08
    dec h                                         ; $4ff5: $25
    inc sp                                        ; $4ff6: $33
    ld bc, $023f                                  ; $4ff7: $01 $3f $02
    ld [$4403], a                                 ; $4ffa: $ea $03 $44
    ld [bc], a                                    ; $4ffd: $02
    rst $38                                       ; $4ffe: $ff
    ld h, e                                       ; $4fff: $63
    ldh a, [$03]                                  ; $5000: $f0 $03
    ld [$4403], a                                 ; $5002: $ea $03 $44
    ld [bc], a                                    ; $5005: $02
    ld b, b                                       ; $5006: $40
    ld [hl], c                                    ; $5007: $71
    ret nz                                        ; $5008: $c0

jr_02f_5009:
    ld a, [hl]                                    ; $5009: $7e
    call nc, $4400                                ; $500a: $d4 $00 $44
    ld [bc], a                                    ; $500d: $02
    rst $38                                       ; $500e: $ff
    ld a, a                                       ; $500f: $7f
    ld [$4403], a                                 ; $5010: $ea $03 $44
    ld [bc], a                                    ; $5013: $02
    ld b, b                                       ; $5014: $40
    dec d                                         ; $5015: $15
    cp a                                          ; $5016: $bf
    nop                                           ; $5017: $00
    add [hl]                                      ; $5018: $86
    ccf                                           ; $5019: $3f
    inc h                                         ; $501a: $24
    ld l, $40                                     ; $501b: $2e $40
    dec d                                         ; $501d: $15
    ld [$0825], sp                                ; $501e: $08 $25 $08
    dec h                                         ; $5021: $25
    ld [$0825], sp                                ; $5022: $08 $25 $08

jr_02f_5025:
    dec h                                         ; $5025: $25
    push de                                       ; $5026: $d5

jr_02f_5027:
    nop                                           ; $5027: $00
    rst $38                                       ; $5028: $ff
    ldh [rTIMA], a                                ; $5029: $e0 $05
    ei                                            ; $502b: $fb
    ldh [$0b], a                                  ; $502c: $e0 $0b
    rst $30                                       ; $502e: $f7
    pop hl                                        ; $502f: $e1
    nop                                           ; $5030: $00
    ld [bc], a                                    ; $5031: $02
    db $eb                                        ; $5032: $eb
    nop                                           ; $5033: $00
    jr z, jr_02f_5025                             ; $5034: $28 $ef

    ldh [$90], a                                  ; $5036: $e0 $90
    db $eb                                        ; $5038: $eb
    ldh [$f5], a                                  ; $5039: $e0 $f5
    nop                                           ; $503b: $00
    ret z                                         ; $503c: $c8

    cp $e5                                        ; $503d: $fe $e5
    ldh [$80], a                                  ; $503f: $e0 $80
    nop                                           ; $5041: $00
    db $ec                                        ; $5042: $ec
    rst $38                                       ; $5043: $ff
    ld hl, sp-$01                                 ; $5044: $f8 $ff
    ldh [rIE], a                                  ; $5046: $e0 $ff
    cp $42                                        ; $5048: $fe $42
    ld hl, sp-$38                                 ; $504a: $f8 $c8
    ldh a, [$80]                                  ; $504c: $f0 $80
    ldh [rNR10], a                                ; $504e: $e0 $10
    rst $28                                       ; $5050: $ef
    ldh [rP1], a                                  ; $5051: $e0 $00
    ret nz                                        ; $5053: $c0

    rst $38                                       ; $5054: $ff
    rst $38                                       ; $5055: $ff
    ld [c], a                                     ; $5056: $e2
    rst $30                                       ; $5057: $f7
    rst $38                                       ; $5058: $ff
    cp h                                          ; $5059: $bc
    ld a, a                                       ; $505a: $7f
    rst $38                                       ; $505b: $ff
    add sp, -$01                                  ; $505c: $e8 $ff
    add c                                         ; $505e: $81
    cp $08                                        ; $505f: $fe $08
    ldh a, [$f8]                                  ; $5061: $f0 $f8
    push hl                                       ; $5063: $e5
    ei                                            ; $5064: $fb
    jr nz, jr_02f_5027                            ; $5065: $20 $c0

    cp a                                          ; $5067: $bf
    ld [c], a                                     ; $5068: $e2
    nop                                           ; $5069: $00
    ld a, a                                       ; $506a: $7f
    rst $38                                       ; $506b: $ff
    cpl                                           ; $506c: $2f
    rst $38                                       ; $506d: $ff
    rst $38                                       ; $506e: $ff
    ccf                                           ; $506f: $3f
    rst $38                                       ; $5070: $ff
    rra                                           ; $5071: $1f
    rst $38                                       ; $5072: $ff
    or a                                          ; $5073: $b7
    ld a, a                                       ; $5074: $7f
    rra                                           ; $5075: $1f
    ld a, a                                       ; $5076: $7f
    rst $38                                       ; $5077: $ff
    rrca                                          ; $5078: $0f
    ld a, a                                       ; $5079: $7f
    ld c, a                                       ; $507a: $4f
    ccf                                           ; $507b: $3f
    rlca                                          ; $507c: $07
    rra                                           ; $507d: $1f
    ld [bc], a                                    ; $507e: $02
    rra                                           ; $507f: $1f
    rst $38                                       ; $5080: $ff
    inc de                                        ; $5081: $13
    rrca                                          ; $5082: $0f
    ld bc, $0b0f                                  ; $5083: $01 $0f $0b
    rlca                                          ; $5086: $07
    ld bc, $ff07                                  ; $5087: $01 $07 $ff
    nop                                           ; $508a: $00
    rlca                                          ; $508b: $07
    inc b                                         ; $508c: $04
    inc bc                                        ; $508d: $03
    ld e, h                                       ; $508e: $5c
    rst $38                                       ; $508f: $ff
    nop                                           ; $5090: $00
    rst $38                                       ; $5091: $ff
    rst $20                                       ; $5092: $e7
    add c                                         ; $5093: $81
    inc a                                         ; $5094: $3c
    db $10                                        ; $5095: $10
    db $d3                                        ; $5096: $d3
    db $e3                                        ; $5097: $e3
    add e                                         ; $5098: $83
    ldh [rNR41], a                                ; $5099: $e0 $20
    ret nz                                        ; $509b: $c0

    add b                                         ; $509c: $80
    cp a                                          ; $509d: $bf
    ret nz                                        ; $509e: $c0

    nop                                           ; $509f: $00
    ldh [$90], a                                  ; $50a0: $e0 $90
    ldh [$80], a                                  ; $50a2: $e0 $80
    cp $e0                                        ; $50a4: $fe $e0
    nop                                           ; $50a6: $00
    ei                                            ; $50a7: $fb
    ret nz                                        ; $50a8: $c0

    jr nz, @-$5e                                  ; $50a9: $20 $a0

    ldh [$7d], a                                  ; $50ab: $e0 $7d
    rst $38                                       ; $50ad: $ff
    rst $28                                       ; $50ae: $ef
    rst $38                                       ; $50af: $ff
    ld a, [hl-]                                   ; $50b0: $3a
    ld a, [$e2da]                                 ; $50b1: $fa $da $e2
    ld [$e063], sp                                ; $50b4: $08 $63 $e0
    and h                                         ; $50b7: $a4
    ld hl, sp-$20                                 ; $50b8: $f8 $e0
    ld hl, sp-$10                                 ; $50ba: $f8 $f0
    rst $38                                       ; $50bc: $ff
    db $fc                                        ; $50bd: $fc
    ret nc                                        ; $50be: $d0

    db $fc                                        ; $50bf: $fc
    ld a, [c]                                     ; $50c0: $f2
    db $fc                                        ; $50c1: $fc
    ldh [$fc], a                                  ; $50c2: $e0 $fc
    or b                                          ; $50c4: $b0
    rst $30                                       ; $50c5: $f7
    ld hl, sp-$1c                                 ; $50c6: $f8 $e4
    ld hl, sp-$80                                 ; $50c8: $f8 $80
    push hl                                       ; $50ca: $e5
    cp [hl]                                       ; $50cb: $be
    rst $38                                       ; $50cc: $ff
    db $e3                                        ; $50cd: $e3
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    ld b, b                                       ; $50d0: $40
    rst $38                                       ; $50d1: $ff
    nop                                           ; $50d2: $00
    rst $20                                       ; $50d3: $e7
    db $fc                                        ; $50d4: $fc
    rst $38                                       ; $50d5: $ff
    or $ff                                        ; $50d6: $f6 $ff
    ld a, a                                       ; $50d8: $7f
    db $fc                                        ; $50d9: $fc
    rst $38                                       ; $50da: $ff
    ld hl, sp-$02                                 ; $50db: $f8 $fe
    add sp, -$02                                  ; $50dd: $e8 $fe
    ld hl, sp-$08                                 ; $50df: $f8 $f8
    ldh [$0b], a                                  ; $50e1: $e0 $0b
    db $f4                                        ; $50e3: $f4
    rst $38                                       ; $50e4: $ff
    ld a, b                                       ; $50e5: $78
    ldh [$80], a                                  ; $50e6: $e0 $80
    and e                                         ; $50e8: $a3
    and $23                                       ; $50e9: $e6 $23
    pop hl                                        ; $50eb: $e1
    ldh a, [$e0]                                  ; $50ec: $f0 $e0
    rst $28                                       ; $50ee: $ef
    ld [$c0e3], a                                 ; $50ef: $ea $e3 $c0
    ld b, b                                       ; $50f2: $40
    ldh [$ea], a                                  ; $50f3: $e0 $ea
    ret nc                                        ; $50f5: $d0

    pop hl                                        ; $50f6: $e1
    rst $08                                       ; $50f7: $cf
    jp hl                                         ; $50f8: $e9


    ld [bc], a                                    ; $50f9: $02
    add c                                         ; $50fa: $81
    and b                                         ; $50fb: $a0
    rst $38                                       ; $50fc: $ff
    pop bc                                        ; $50fd: $c1
    add b                                         ; $50fe: $80
    pop bc                                        ; $50ff: $c1
    add l                                         ; $5100: $85
    jp $c3a1                                      ; $5101: $c3 $a1 $c3


    nop                                           ; $5104: $00
    ld a, a                                       ; $5105: $7f
    add e                                         ; $5106: $83
    dec b                                         ; $5107: $05
    add e                                         ; $5108: $83
    ld b, b                                       ; $5109: $40
    add c                                         ; $510a: $81
    ld b, c                                       ; $510b: $41
    add b                                         ; $510c: $80
    ret nz                                        ; $510d: $c0

    ldh [rIE], a                                  ; $510e: $e0 $ff
    ret nz                                        ; $5110: $c0

    and b                                         ; $5111: $a0
    ret nz                                        ; $5112: $c0

    ret nz                                        ; $5113: $c0

    ldh [rBCPS], a                                ; $5114: $e0 $68
    ldh a, [$f1]                                  ; $5116: $f0 $f1
    rst $38                                       ; $5118: $ff
    db $fc                                        ; $5119: $fc
    call c, Call_000_1eff                         ; $511a: $dc $ff $1e
    rst $38                                       ; $511d: $ff
    add b                                         ; $511e: $80
    ld e, $12                                     ; $511f: $1e $12
    ld a, [hl]                                    ; $5121: $7e
    call nc, Call_02f_48c2                        ; $5122: $d4 $c2 $48
    nop                                           ; $5125: $00
    ld bc, $5878                                  ; $5126: $01 $78 $58
    rst $38                                       ; $5129: $ff
    or b                                          ; $512a: $b0
    jp hl                                         ; $512b: $e9


    rst $38                                       ; $512c: $ff
    ld [bc], a                                    ; $512d: $02
    ld bc, $0300                                  ; $512e: $01 $00 $03
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    ld b, b                                       ; $5133: $40
    ld b, b                                       ; $5134: $40
    ld a, a                                       ; $5135: $7f
    nop                                           ; $5136: $00
    jr nz, jr_02f_5139                            ; $5137: $20 $00

jr_02f_5139:
    db $10                                        ; $5139: $10
    ld [$0400], sp                                ; $513a: $08 $00 $04
    or d                                          ; $513d: $b2
    ret nz                                        ; $513e: $c0

    ret nz                                        ; $513f: $c0

    and d                                         ; $5140: $a2
    pop bc                                        ; $5141: $c1
    ldh a, [rIE]                                  ; $5142: $f0 $ff
    ldh a, [rIE]                                  ; $5144: $f0 $ff
    ldh a, [rIE]                                  ; $5146: $f0 $ff
    ldh a, [rIE]                                  ; $5148: $f0 $ff
    ldh a, [$f3]                                  ; $514a: $f0 $f3
    jp $e33c                                      ; $514c: $c3 $3c $e3


    jp $fd3c                                      ; $514f: $c3 $3c $fd


    ldh [$fe], a                                  ; $5152: $e0 $fe
    ld [c], a                                     ; $5154: $e2
    db $f4                                        ; $5155: $f4
    pop hl                                        ; $5156: $e1
    dec de                                        ; $5157: $1b
    rst $20                                       ; $5158: $e7
    cpl                                           ; $5159: $2f
    rst $38                                       ; $515a: $ff
    call c, $f11e                                 ; $515b: $dc $1e $f1
    inc a                                         ; $515e: $3c
    db $e3                                        ; $515f: $e3
    ld a, h                                       ; $5160: $7c
    jp Jump_02f_7f7c                              ; $5161: $c3 $7c $7f


    jp $9ce3                                      ; $5164: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $5167: $c3 $bc $18


    rst $20                                       ; $516a: $e7
    ld [c], a                                     ; $516b: $e2
    pop hl                                        ; $516c: $e1
    rst $38                                       ; $516d: $ff
    ld a, [de]                                    ; $516e: $1a
    push hl                                       ; $516f: $e5
    ld [de], a                                    ; $5170: $12
    rst $28                                       ; $5171: $ef
    ld e, a                                       ; $5172: $5f
    cp b                                          ; $5173: $b8
    ld a, a                                       ; $5174: $7f
    ldh [rIE], a                                  ; $5175: $e0 $ff
    di                                            ; $5177: $f3
    adc h                                         ; $5178: $8c
    inc de                                        ; $5179: $13
    rst $28                                       ; $517a: $ef
    rra                                           ; $517b: $1f
    ld hl, sp-$04                                 ; $517c: $f8 $fc
    ld h, e                                       ; $517e: $63
    cp a                                          ; $517f: $bf
    db $fc                                        ; $5180: $fc
    add e                                         ; $5181: $83
    db $fc                                        ; $5182: $fc
    inc bc                                        ; $5183: $03
    cp h                                          ; $5184: $bc
    ld b, e                                       ; $5185: $43
    call nz, $98e1                                ; $5186: $c4 $e1 $98
    rst $38                                       ; $5189: $ff
    rst $20                                       ; $518a: $e7
    db $fc                                        ; $518b: $fc
    ld b, e                                       ; $518c: $43
    call c, $f863                                 ; $518d: $dc $63 $f8
    daa                                           ; $5190: $27
    ld l, b                                       ; $5191: $68
    rst $38                                       ; $5192: $ff
    or a                                          ; $5193: $b7
    ld l, h                                       ; $5194: $6c
    sub e                                         ; $5195: $93
    db $fc                                        ; $5196: $fc
    inc de                                        ; $5197: $13
    add sp, $17                                   ; $5198: $e8 $17
    ld hl, sp-$01                                 ; $519a: $f8 $ff
    rrca                                          ; $519c: $0f
    sbc $25                                       ; $519d: $de $25
    inc a                                         ; $519f: $3c
    rst $00                                       ; $51a0: $c7
    ld a, $c3                                     ; $51a1: $3e $c3
    ccf                                           ; $51a3: $3f
    rst $38                                       ; $51a4: $ff
    jp nz, $c13e                                  ; $51a5: $c2 $3e $c1

    jp $c33d                                      ; $51a8: $c3 $3d $c3


    dec a                                         ; $51ab: $3d
    cp e                                          ; $51ac: $bb
    rst $30                                       ; $51ad: $f7
    rst $10                                       ; $51ae: $d7
    rst $38                                       ; $51af: $ff
    nop                                           ; $51b0: $00
    and b                                         ; $51b1: $a0
    jp hl                                         ; $51b2: $e9


    jp $c3bc                                      ; $51b3: $c3 $bc $c3


    cp h                                          ; $51b6: $bc
    ret                                           ; $51b7: $c9


    ld a, h                                       ; $51b8: $7c
    jp nz, $bee0                                  ; $51b9: $c2 $e0 $be

    pop hl                                        ; $51bc: $e1
    ld b, e                                       ; $51bd: $43
    db $f4                                        ; $51be: $f4
    ldh [$a0], a                                  ; $51bf: $e0 $a0
    pop hl                                        ; $51c1: $e1
    nop                                           ; $51c2: $00
    rst $38                                       ; $51c3: $ff
    cp a                                          ; $51c4: $bf
    db $dd                                        ; $51c5: $dd
    db $eb                                        ; $51c6: $eb
    rst $38                                       ; $51c7: $ff
    nop                                           ; $51c8: $00
    ld a, [hl]                                    ; $51c9: $7e
    add c                                         ; $51ca: $81
    add b                                         ; $51cb: $80
    ld [c], a                                     ; $51cc: $e2
    db $f4                                        ; $51cd: $f4
    rst $38                                       ; $51ce: $ff
    rrca                                          ; $51cf: $0f
    ldh a, [rNR32]                                ; $51d0: $f0 $1c
    db $e3                                        ; $51d2: $e3
    inc e                                         ; $51d3: $1c
    di                                            ; $51d4: $f3
    inc e                                         ; $51d5: $1c
    db $e3                                        ; $51d6: $e3
    rst $38                                       ; $51d7: $ff
    inc c                                         ; $51d8: $0c
    di                                            ; $51d9: $f3
    ccf                                           ; $51da: $3f
    ret nc                                        ; $51db: $d0

    dec de                                        ; $51dc: $1b
    db $f4                                        ; $51dd: $f4
    ld d, a                                       ; $51de: $57
    rst $38                                       ; $51df: $ff
    ld e, a                                       ; $51e0: $5f
    xor a                                         ; $51e1: $af
    db $fc                                        ; $51e2: $fc
    ld a, [hl]                                    ; $51e3: $7e
    pop af                                        ; $51e4: $f1
    cp h                                          ; $51e5: $bc
    ld [hl], b                                    ; $51e6: $70
    ldh [$fc], a                                  ; $51e7: $e0 $fc
    ld [hl], b                                    ; $51e9: $70
    ld [c], a                                     ; $51ea: $e2
    rst $38                                       ; $51eb: $ff
    ei                                            ; $51ec: $fb
    rst $38                                       ; $51ed: $ff
    sbc $ff                                       ; $51ee: $de $ff
    push af                                       ; $51f0: $f5
    rst $38                                       ; $51f1: $ff
    xor d                                         ; $51f2: $aa
    rst $38                                       ; $51f3: $ff
    or a                                          ; $51f4: $b7
    ld d, a                                       ; $51f5: $57
    rst $38                                       ; $51f6: $ff
    cp a                                          ; $51f7: $bf
    ld h, a                                       ; $51f8: $67
    and b                                         ; $51f9: $a0
    di                                            ; $51fa: $f3
    adc h                                         ; $51fb: $8c
    ld hl, sp-$1f                                 ; $51fc: $f8 $e1
    ld a, h                                       ; $51fe: $7c
    db $fd                                        ; $51ff: $fd
    db $e3                                        ; $5200: $e3
    ld [hl], b                                    ; $5201: $70
    rst $20                                       ; $5202: $e7
    rst $28                                       ; $5203: $ef
    rst $38                                       ; $5204: $ff
    rst $10                                       ; $5205: $d7
    ld a, a                                       ; $5206: $7f
    db $ed                                        ; $5207: $ed
    ld a, a                                       ; $5208: $7f
    rst $38                                       ; $5209: $ff
    rst $30                                       ; $520a: $f7
    ccf                                           ; $520b: $3f
    ld l, e                                       ; $520c: $6b
    cp a                                          ; $520d: $bf
    halt                                          ; $520e: $76
    sbc a                                         ; $520f: $9f
    ei                                            ; $5210: $fb
    rra                                           ; $5211: $1f
    rst $38                                       ; $5212: $ff
    push af                                       ; $5213: $f5
    rra                                           ; $5214: $1f
    ld a, [$dd0f]                                 ; $5215: $fa $0f $dd
    daa                                           ; $5218: $27
    ld a, $c7                                     ; $5219: $3e $c7
    di                                            ; $521b: $f3
    ccf                                           ; $521c: $3f
    jp $e06e                                      ; $521d: $c3 $6e $e0


    ld [hl], b                                    ; $5220: $70
    ld [c], a                                     ; $5221: $e2
    db $ed                                        ; $5222: $ed
    rst $38                                       ; $5223: $ff
    db $d3                                        ; $5224: $d3
    inc a                                         ; $5225: $3c
    dec sp                                        ; $5226: $3b
    ld a, [hl]                                    ; $5227: $7e
    add c                                         ; $5228: $81
    ld [hl], b                                    ; $5229: $70
    jp hl                                         ; $522a: $e9


    db $e3                                        ; $522b: $e3
    sbc h                                         ; $522c: $9c
    cp h                                          ; $522d: $bc
    inc d                                         ; $522e: $14
    ldh [rBCPD], a                                ; $522f: $e0 $69
    ldh [$eb], a                                  ; $5231: $e0 $eb
    jp $1063                                      ; $5233: $c3 $63 $10


    ldh [$57], a                                  ; $5236: $e0 $57
    and h                                         ; $5238: $a4
    ldh [$7d], a                                  ; $5239: $e0 $7d
    rst $38                                       ; $523b: $ff
    db $d3                                        ; $523c: $d3
    ld sp, hl                                     ; $523d: $f9
    rst $28                                       ; $523e: $ef
    ld c, d                                       ; $523f: $4a
    pop hl                                        ; $5240: $e1
    db $e4                                        ; $5241: $e4
    pop bc                                        ; $5242: $c1
    cp e                                          ; $5243: $bb
    db $f4                                        ; $5244: $f4
    ld e, e                                       ; $5245: $5b
    db $f4                                        ; $5246: $f4
    xor h                                         ; $5247: $ac
    rst $38                                       ; $5248: $ff
    di                                            ; $5249: $f3
    ld l, h                                       ; $524a: $6c
    di                                            ; $524b: $f3
    cp h                                          ; $524c: $bc
    db $e3                                        ; $524d: $e3
    ld l, h                                       ; $524e: $6c
    di                                            ; $524f: $f3
    cp e                                          ; $5250: $bb
    rst $38                                       ; $5251: $ff
    db $f4                                        ; $5252: $f4
    db $db                                        ; $5253: $db
    db $f4                                        ; $5254: $f4
    cp l                                          ; $5255: $bd
    jp $ffe7                                      ; $5256: $c3 $e7 $ff


    cp d                                          ; $5259: $ba
    cp a                                          ; $525a: $bf
    rst $38                                       ; $525b: $ff
    ld d, l                                       ; $525c: $55
    rst $38                                       ; $525d: $ff
    xor e                                         ; $525e: $ab
    rst $38                                       ; $525f: $ff
    cp $58                                        ; $5260: $fe $58
    and b                                         ; $5262: $a0
    rst $38                                       ; $5263: $ff
    rst $28                                       ; $5264: $ef
    rst $38                                       ; $5265: $ff
    db $db                                        ; $5266: $db
    rst $38                                       ; $5267: $ff
    ld l, a                                       ; $5268: $6f
    adc [hl]                                      ; $5269: $8e
    ldh [$af], a                                  ; $526a: $e0 $af
    ld a, a                                       ; $526c: $7f
    or l                                          ; $526d: $b5
    rst $08                                       ; $526e: $cf
    ld a, a                                       ; $526f: $7f
    rst $28                                       ; $5270: $ef
    ld a, a                                       ; $5271: $7f
    ld d, a                                       ; $5272: $57
    ld b, [hl]                                    ; $5273: $46
    and b                                         ; $5274: $a0
    ret nc                                        ; $5275: $d0

    jp $e718                                      ; $5276: $c3 $18 $e7


    cp $f8                                        ; $5279: $fe $f8
    push hl                                       ; $527b: $e5
    ld d, a                                       ; $527c: $57
    rst $38                                       ; $527d: $ff
    xor h                                         ; $527e: $ac
    rst $38                                       ; $527f: $ff
    ld [hl], h                                    ; $5280: $74
    ei                                            ; $5281: $fb
    cp b                                          ; $5282: $b8
    ld l, a                                       ; $5283: $6f
    rst $20                                       ; $5284: $e7
    ld e, b                                       ; $5285: $58
    rst $20                                       ; $5286: $e7
    db $fc                                        ; $5287: $fc
    dec b                                         ; $5288: $05
    ldh [$98], a                                  ; $5289: $e0 $98
    rst $20                                       ; $528b: $e7
    ld b, b                                       ; $528c: $40
    rst $20                                       ; $528d: $e7
    rst $18                                       ; $528e: $df
    cp d                                          ; $528f: $ba
    rst $38                                       ; $5290: $ff
    db $ec                                        ; $5291: $ec
    di                                            ; $5292: $f3
    sbc b                                         ; $5293: $98
    ldh [$e0], a                                  ; $5294: $e0 $e0
    cp d                                          ; $5296: $ba
    rst $38                                       ; $5297: $ff
    jp hl                                         ; $5298: $e9


    ld l, h                                       ; $5299: $6c
    ld hl, sp-$20                                 ; $529a: $f8 $e0
    ret z                                         ; $529c: $c8

    push hl                                       ; $529d: $e5
    rst $28                                       ; $529e: $ef
    ld h, $e0                                     ; $529f: $26 $e0
    ld l, l                                       ; $52a1: $6d
    rst $38                                       ; $52a2: $ff
    scf                                           ; $52a3: $37
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    dec hl                                        ; $52a6: $2b
    rst $38                                       ; $52a7: $ff
    ld d, $ff                                     ; $52a8: $16 $ff
    dec sp                                        ; $52aa: $3b
    rst $38                                       ; $52ab: $ff
    dec d                                         ; $52ac: $15
    rst $38                                       ; $52ad: $ff
    rst $38                                       ; $52ae: $ff
    ld a, [de]                                    ; $52af: $1a
    rst $28                                       ; $52b0: $ef
    dec [hl]                                      ; $52b1: $35
    rst $08                                       ; $52b2: $cf
    ld a, $c7                                     ; $52b3: $3e $c7
    dec de                                        ; $52b5: $1b
    rst $38                                       ; $52b6: $ff
    rst $20                                       ; $52b7: $e7
    ld a, [de]                                    ; $52b8: $1a
    rst $20                                       ; $52b9: $e7
    dec a                                         ; $52ba: $3d
    jp $c33f                                      ; $52bb: $c3 $3f $c3


    add hl, de                                    ; $52be: $19
    db $db                                        ; $52bf: $db
    rst $20                                       ; $52c0: $e7
    rst $10                                       ; $52c1: $d7
    db $e4                                        ; $52c2: $e4
    add b                                         ; $52c3: $80
    inc l                                         ; $52c4: $2c
    db $d3                                        ; $52c5: $d3
    and b                                         ; $52c6: $a0
    rst $20                                       ; $52c7: $e7
    sbc b                                         ; $52c8: $98
    rst $20                                       ; $52c9: $e7
    adc d                                         ; $52ca: $8a
    ld b, d                                       ; $52cb: $42
    pop hl                                        ; $52cc: $e1
    ret c                                         ; $52cd: $d8

    and b                                         ; $52ce: $a0
    ldh [$bc], a                                  ; $52cf: $e0 $bc
    sbc $c0                                       ; $52d1: $de $c0
    or b                                          ; $52d3: $b0
    pop hl                                        ; $52d4: $e1
    ld b, b                                       ; $52d5: $40
    pop hl                                        ; $52d6: $e1
    set 7, [hl]                                   ; $52d7: $cb $fe
    ld a, b                                       ; $52d9: $78
    and $b0                                       ; $52da: $e6 $b0
    rst $38                                       ; $52dc: $ff
    ld d, h                                       ; $52dd: $54
    ei                                            ; $52de: $fb
    and h                                         ; $52df: $a4
    ei                                            ; $52e0: $fb
    ld a, b                                       ; $52e1: $78
    rst $38                                       ; $52e2: $ff
    rst $30                                       ; $52e3: $f7
    xor b                                         ; $52e4: $a8
    rst $30                                       ; $52e5: $f7
    ld h, h                                       ; $52e6: $64
    ei                                            ; $52e7: $fb
    or h                                          ; $52e8: $b4
    ei                                            ; $52e9: $fb
    ret nc                                        ; $52ea: $d0

    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    pop bc                                        ; $52ed: $c1
    rst $38                                       ; $52ee: $ff
    or a                                          ; $52ef: $b7
    rst $38                                       ; $52f0: $ff
    ld e, l                                       ; $52f1: $5d
    rst $38                                       ; $52f2: $ff
    ld [$3e54], a                                 ; $52f3: $ea $54 $3e
    ldh [$3a], a                                  ; $52f6: $e0 $3a
    add c                                         ; $52f8: $81
    rst $38                                       ; $52f9: $ff
    sub h                                         ; $52fa: $94
    add b                                         ; $52fb: $80
    ld d, a                                       ; $52fc: $57
    ld a, $e0                                     ; $52fd: $3e $e0
    dec [hl]                                      ; $52ff: $35
    ld a, [hl-]                                   ; $5300: $3a
    ldh [$f6], a                                  ; $5301: $e0 $f6
    xor [hl]                                      ; $5303: $ae
    ret nz                                        ; $5304: $c0

    rst $38                                       ; $5305: $ff
    rst $10                                       ; $5306: $d7
    ld hl, $ff83                                  ; $5307: $21 $83 $ff
    db $dd                                        ; $530a: $dd
    rst $38                                       ; $530b: $ff
    ld [hl], a                                    ; $530c: $77
    ld e, h                                       ; $530d: $5c
    sbc h                                         ; $530e: $9c
    ret nz                                        ; $530f: $c0

    call c, $afe1                                 ; $5310: $dc $e1 $af
    rst $38                                       ; $5313: $ff
    rst $18                                       ; $5314: $df
    adc $e0                                       ; $5315: $ce $e0
    rst $18                                       ; $5317: $df
    ld hl, sp-$1a                                 ; $5318: $f8 $e6
    inc d                                         ; $531a: $14
    rst $38                                       ; $531b: $ff
    push hl                                       ; $531c: $e5
    sbc $e5                                       ; $531d: $de $e5
    ld e, a                                       ; $531f: $5f
    jp z, $6fe0                                   ; $5320: $ca $e0 $6f

    add $e0                                       ; $5323: $c6 $e0
    ld hl, sp-$1b                                 ; $5325: $f8 $e5
    ldh [$63], a                                  ; $5327: $e0 $63
    jp z, $e1f8                                   ; $5329: $ca $f8 $e1

    ld e, a                                       ; $532c: $5f
    sub [hl]                                      ; $532d: $96
    ldh [$5f], a                                  ; $532e: $e0 $5f
    ret nc                                        ; $5330: $d0

    and $c7                                       ; $5331: $e6 $c7
    push hl                                       ; $5333: $e5
    ld l, c                                       ; $5334: $69
    rst $38                                       ; $5335: $ff
    rst $38                                       ; $5336: $ff
    call nc, $81fc                                ; $5337: $d4 $fc $81
    ldh a, [rDMA]                                 ; $533a: $f0 $46
    ldh [$8b], a                                  ; $533c: $e0 $8b
    ret nz                                        ; $533e: $c0

    ld a, a                                       ; $533f: $7f
    ld d, a                                       ; $5340: $57
    ret nz                                        ; $5341: $c0

    dec e                                         ; $5342: $1d
    add b                                         ; $5343: $80
    xor a                                         ; $5344: $af
    add b                                         ; $5345: $80
    db $fd                                        ; $5346: $fd
    xor a                                         ; $5347: $af
    ld h, b                                       ; $5348: $60
    db $fd                                        ; $5349: $fd
    jp c, $8048                                   ; $534a: $da $48 $80

    and b                                         ; $534d: $a0
    db $fc                                        ; $534e: $fc
    ld b, c                                       ; $534f: $41
    ldh a, [$0b]                                  ; $5350: $f0 $0b
    ret nz                                        ; $5352: $c0

    ei                                            ; $5353: $fb
    ld d, $00                                     ; $5354: $16 $00
    ld hl, sp-$1f                                 ; $5356: $f8 $e1
    ld a, [bc]                                    ; $5358: $0a
    ret nz                                        ; $5359: $c0

    rla                                           ; $535a: $17
    nop                                           ; $535b: $00
    cp l                                          ; $535c: $bd
    rst $30                                       ; $535d: $f7
    nop                                           ; $535e: $00
    ld l, a                                       ; $535f: $6f
    nop                                           ; $5360: $00
    push de                                       ; $5361: $d5
    ld h, b                                       ; $5362: $60
    nop                                           ; $5363: $00
    ld hl, sp-$02                                 ; $5364: $f8 $fe
    db $f4                                        ; $5366: $f4
    rst $38                                       ; $5367: $ff
    cp $d8                                        ; $5368: $fe $d8
    db $fc                                        ; $536a: $fc
    pop af                                        ; $536b: $f1
    db $fc                                        ; $536c: $fc
    ld [c], a                                     ; $536d: $e2
    ld hl, sp-$2f                                 ; $536e: $f8 $d1
    rst $38                                       ; $5370: $ff
    ld hl, sp+$63                                 ; $5371: $f8 $63
    ldh a, [$c6]                                  ; $5373: $f0 $c6
    ldh a, [$8b]                                  ; $5375: $f0 $8b
    ldh [rBGP], a                                 ; $5377: $e0 $47
    rst $38                                       ; $5379: $ff
    ldh [$8f], a                                  ; $537a: $e0 $8f
    ret nz                                        ; $537c: $c0

    dec de                                        ; $537d: $1b
    ret nz                                        ; $537e: $c0

Jump_02f_537f:
    cpl                                           ; $537f: $2f
    add b                                         ; $5380: $80
    rra                                           ; $5381: $1f
    rst $38                                       ; $5382: $ff
    add b                                         ; $5383: $80
    scf                                           ; $5384: $37
    nop                                           ; $5385: $00
    ld e, a                                       ; $5386: $5f
    nop                                           ; $5387: $00
    inc h                                         ; $5388: $24
    inc a                                         ; $5389: $3c
    ld b, d                                       ; $538a: $42
    cp a                                          ; $538b: $bf
    nop                                           ; $538c: $00
    xor l                                         ; $538d: $ad
    nop                                           ; $538e: $00
    rst $30                                       ; $538f: $f7
    nop                                           ; $5390: $00
    ld a, l                                       ; $5391: $7d
    jp nc, $ffe2                                  ; $5392: $d2 $e2 $ff

    push af                                       ; $5395: $f5
    nop                                           ; $5396: $00
    db $ec                                        ; $5397: $ec
    pop hl                                        ; $5398: $e1
    cp a                                          ; $5399: $bf
    db $e4                                        ; $539a: $e4
    ldh [$2f], a                                  ; $539b: $e0 $2f
    add b                                         ; $539d: $80
    cp a                                          ; $539e: $bf
    add b                                         ; $539f: $80
    rst $18                                       ; $53a0: $df
    ld d, a                                       ; $53a1: $57
    nop                                           ; $53a2: $00
    ccf                                           ; $53a3: $3f
    nop                                           ; $53a4: $00
    push af                                       ; $53a5: $f5
    ld a, $e0                                     ; $53a6: $3e $e0
    ld b, l                                       ; $53a8: $45
    rst $38                                       ; $53a9: $ff
    rst $38                                       ; $53aa: $ff
    nop                                           ; $53ab: $00
    rst $00                                       ; $53ac: $c7
    stop                                          ; $53ad: $10 $00
    ld l, l                                       ; $53af: $6d
    nop                                           ; $53b0: $00
    cp e                                          ; $53b1: $bb
    nop                                           ; $53b2: $00
    rst $38                                       ; $53b3: $ff
    rst $28                                       ; $53b4: $ef
    nop                                           ; $53b5: $00
    rst $20                                       ; $53b6: $e7
    ldh a, [rSCX]                                 ; $53b7: $f0 $43
    ldh a, [$e5]                                  ; $53b9: $f0 $e5
    ldh a, [rIE]                                  ; $53bb: $f0 $ff
    ld b, a                                       ; $53bd: $47
    ldh [$8a], a                                  ; $53be: $e0 $8a
    ldh [$c7], a                                  ; $53c0: $e0 $c7
    ldh [$a5], a                                  ; $53c2: $e0 $a5
    ldh a, [$eb]                                  ; $53c4: $f0 $eb
    jp $30f0                                      ; $53c6: $c3 $f0 $30


    ld h, e                                       ; $53c9: $63
    rst $18                                       ; $53ca: $df
    ld l, $60                                     ; $53cb: $2e $60
    xor l                                         ; $53cd: $ad
    rst $38                                       ; $53ce: $ff
    ld b, d                                       ; $53cf: $42
    rst $38                                       ; $53d0: $ff
    rst $38                                       ; $53d1: $ff
    nop                                           ; $53d2: $00
    jp $fffc                                      ; $53d3: $c3 $fc $ff


    ld a, [$fcff]                                 ; $53d6: $fa $ff $fc
    sbc $8c                                       ; $53d9: $de $8c
    ldh [$f8], a                                  ; $53db: $e0 $f8
    cp $ec                                        ; $53dd: $fe $ec
    cp $f6                                        ; $53df: $fe $f6
    ldh [rIE], a                                  ; $53e1: $e0 $ff
    rst $38                                       ; $53e3: $ff
    rst $38                                       ; $53e4: $ff
    add b                                         ; $53e5: $80
    ccf                                           ; $53e6: $3f
    add b                                         ; $53e7: $80
    ld a, a                                       ; $53e8: $7f
    ret nz                                        ; $53e9: $c0

    sbc a                                         ; $53ea: $9f
    ret nz                                        ; $53eb: $c0

    ld c, a                                       ; $53ec: $4f
    rst $38                                       ; $53ed: $ff
    ldh [$87], a                                  ; $53ee: $e0 $87
    ldh a, [$d5]                                  ; $53f0: $f0 $d5
    db $fc                                        ; $53f2: $fc
    ld l, c                                       ; $53f3: $69
    rst $38                                       ; $53f4: $ff
    ccf                                           ; $53f5: $3f
    rst $38                                       ; $53f6: $ff
    nop                                           ; $53f7: $00
    rrca                                          ; $53f8: $0f
    ret nz                                        ; $53f9: $c0

    ld b, e                                       ; $53fa: $43
    ldh a, [$a0]                                  ; $53fb: $f0 $a0
    db $fc                                        ; $53fd: $fc
    db $f4                                        ; $53fe: $f4
    add $4a                                       ; $53ff: $c6 $4a
    ldh [rIE], a                                  ; $5401: $e0 $ff
    rst $38                                       ; $5403: $ff
    ld b, d                                       ; $5404: $42
    ldh [$88], a                                  ; $5405: $e0 $88
    db $e4                                        ; $5407: $e4
    add sp, -$1b                                  ; $5408: $e8 $e5
    db $e3                                        ; $540a: $e3
    rrca                                          ; $540b: $0f
    rst $38                                       ; $540c: $ff
    and $0f                                       ; $540d: $e6 $0f
    rr a                                          ; $540f: $cb $1f
    rst $00                                       ; $5411: $c7
    rra                                           ; $5412: $1f
    adc a                                         ; $5413: $8f
    ccf                                           ; $5414: $3f
    rst $30                                       ; $5415: $f7
    sbc e                                         ; $5416: $9b
    ccf                                           ; $5417: $3f
    cpl                                           ; $5418: $2f
    db $fc                                        ; $5419: $fc
    ld b, b                                       ; $541a: $40
    cp $00                                        ; $541b: $fe $00
    cp $00                                        ; $541d: $fe $00
    rst $38                                       ; $541f: $ff
    db $fc                                        ; $5420: $fc
    ld bc, $01fc                                  ; $5421: $01 $fc $01
    ld hl, sp+$03                                 ; $5424: $f8 $03

jr_02f_5426:
    ld sp, hl                                     ; $5426: $f9
    inc bc                                        ; $5427: $03
    rst $08                                       ; $5428: $cf
    ld a, [c]                                     ; $5429: $f2
    rlca                                          ; $542a: $07
    pop af                                        ; $542b: $f1
    rlca                                          ; $542c: $07
    ret nc                                        ; $542d: $d0

    push hl                                       ; $542e: $e5
    inc h                                         ; $542f: $24
    pop hl                                        ; $5430: $e1
    db $d3                                        ; $5431: $d3
    nop                                           ; $5432: $00
    ld e, a                                       ; $5433: $5f
    ld b, d                                       ; $5434: $42
    ld a, [hl]                                    ; $5435: $7e
    cp $00                                        ; $5436: $fe $00
    rst $38                                       ; $5438: $ff
    ld [c], a                                     ; $5439: $e2
    ldh [$fe], a                                  ; $543a: $e0 $fe
    sbc $e0                                       ; $543c: $de $e0
    rst $08                                       ; $543e: $cf
    db $fc                                        ; $543f: $fc
    ld bc, $01ff                                  ; $5440: $01 $ff $01
    ld a, [c]                                     ; $5443: $f2
    ldh [$0a], a                                  ; $5444: $e0 $0a
    ld [c], a                                     ; $5446: $e2
    inc a                                         ; $5447: $3c
    nop                                           ; $5448: $00
    rst $30                                       ; $5449: $f7
    nop                                           ; $544a: $00
    rst $00                                       ; $544b: $c7
    ld b, l                                       ; $544c: $45
    add h                                         ; $544d: $84
    ret nz                                        ; $544e: $c0

    push af                                       ; $544f: $f5
    rst $38                                       ; $5450: $ff
    rst $20                                       ; $5451: $e7
    rrca                                          ; $5452: $0f
    rst $28                                       ; $5453: $ef
    ld [c], a                                     ; $5454: $e2
    rrca                                          ; $5455: $0f
    rst $30                                       ; $5456: $f7
    rrca                                          ; $5457: $0f
    add $e1                                       ; $5458: $c6 $e1
    di                                            ; $545a: $f3
    rlca                                          ; $545b: $07
    push hl                                       ; $545c: $e5
    cp a                                          ; $545d: $bf
    rrca                                          ; $545e: $0f
    db $e3                                        ; $545f: $e3
    rrca                                          ; $5460: $0f
    jr jr_02f_5426                                ; $5461: $18 $c3

    ld b, d                                       ; $5463: $42
    ld d, [hl]                                    ; $5464: $56
    ldh [$f7], a                                  ; $5465: $e0 $f7
    ld [$c676], a                                 ; $5467: $ea $76 $c6
    ccf                                           ; $546a: $3f
    ld a, [hl]                                    ; $546b: $7e
    ret nz                                        ; $546c: $c0

    ccf                                           ; $546d: $3f
    add b                                         ; $546e: $80
    and b                                         ; $546f: $a0
    sbc a                                         ; $5470: $9f
    ld a, a                                       ; $5471: $7f
    scf                                           ; $5472: $37
    db $fd                                        ; $5473: $fd
    ld a, a                                       ; $5474: $7f
    or $e0                                        ; $5475: $f6 $e0
    rst $38                                       ; $5477: $ff
    ld [$5500], sp                                ; $5478: $08 $00 $55
    nop                                           ; $547b: $00
    cp [hl]                                       ; $547c: $be
    ld [hl], h                                    ; $547d: $74
    ldh a, [$c0]                                  ; $547e: $f0 $c0
    ld l, b                                       ; $5480: $68
    push hl                                       ; $5481: $e5
    ld e, a                                       ; $5482: $5f
    db $fc                                        ; $5483: $fc
    ret nz                                        ; $5484: $c0

    ld a, a                                       ; $5485: $7f
    nop                                           ; $5486: $00
    xor a                                         ; $5487: $af
    db $fc                                        ; $5488: $fc
    ldh [$9d], a                                  ; $5489: $e0 $9d
    ccf                                           ; $548b: $3f
    db $f4                                        ; $548c: $f4
    ld [c], a                                     ; $548d: $e2
    ld de, $2a80                                  ; $548e: $11 $80 $2a
    call nc, $f0c0                                ; $5491: $d4 $c0 $f0
    push hl                                       ; $5494: $e5
    cp a                                          ; $5495: $bf
    ldh a, [$fa]                                  ; $5496: $f0 $fa
    db $e4                                        ; $5498: $e4
    ld l, d                                       ; $5499: $6a
    jp hl                                         ; $549a: $e9


    db $f4                                        ; $549b: $f4
    db $eb                                        ; $549c: $eb
    nop                                           ; $549d: $00
    add e                                         ; $549e: $83
    dec de                                        ; $549f: $1b
    db $e4                                        ; $54a0: $e4
    dec d                                         ; $54a1: $15
    xor $ff                                       ; $54a2: $ee $ff
    dec l                                         ; $54a4: $2d
    ret nc                                        ; $54a5: $d0

    dec b                                         ; $54a6: $05
    ld a, [$c034]                                 ; $54a7: $fa $34 $c0
    ld d, a                                       ; $54aa: $57
    xor d                                         ; $54ab: $aa
    rst $18                                       ; $54ac: $df
    and h                                         ; $54ad: $a4
    ld a, [bc]                                    ; $54ae: $0a
    ld c, e                                       ; $54af: $4b
    add b                                         ; $54b0: $80
    ld b, d                                       ; $54b1: $42
    ldh [rNR41], a                                ; $54b2: $e0 $20
    dec e                                         ; $54b4: $1d
    ld [bc], a                                    ; $54b5: $02
    rst $38                                       ; $54b6: $ff
    cp h                                          ; $54b7: $bc
    inc bc                                        ; $54b8: $03
    sbc b                                         ; $54b9: $98
    ld h, a                                       ; $54ba: $67
    rla                                           ; $54bb: $17
    xor d                                         ; $54bc: $aa
    db $e4                                        ; $54bd: $e4
    ld a, [bc]                                    ; $54be: $0a
    rst $38                                       ; $54bf: $ff
    adc e                                         ; $54c0: $8b
    jr nz, @+$24                                  ; $54c1: $20 $22

    nop                                           ; $54c3: $00
    db $dd                                        ; $54c4: $dd
    nop                                           ; $54c5: $00
    cp l                                          ; $54c6: $bd
    ld b, d                                       ; $54c7: $42
    cp $08                                        ; $54c8: $fe $08
    and c                                         ; $54ca: $a1
    ld d, $a9                                     ; $54cb: $16 $a9
    add sp, $03                                   ; $54cd: $e8 $03
    add l                                         ; $54cf: $85
    ld [hl+], a                                   ; $54d0: $22
    ld a, [hl+]                                   ; $54d1: $2a
    rst $38                                       ; $54d2: $ff
    rlca                                          ; $54d3: $07
    db $db                                        ; $54d4: $db
    nop                                           ; $54d5: $00
    cp h                                          ; $54d6: $bc
    ld b, e                                       ; $54d7: $43
    ccf                                           ; $54d8: $3f
    ret nz                                        ; $54d9: $c0

    add hl, de                                    ; $54da: $19
    ei                                            ; $54db: $fb

jr_02f_54dc:
    and $18                                       ; $54dc: $e6 $18
    ld h, b                                       ; $54de: $60
    and b                                         ; $54df: $a0
    inc a                                         ; $54e0: $3c
    jp $e7b8                                      ; $54e1: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $54e4: $08 $ff $f7
    call z, $90fb                                 ; $54e7: $cc $fb $90
    ld l, a                                       ; $54ea: $6f
    ld a, [hl+]                                   ; $54eb: $2a
    rst $38                                       ; $54ec: $ff
    rra                                           ; $54ed: $1f
    rst $38                                       ; $54ee: $ff
    ldh [$d0], a                                  ; $54ef: $e0 $d0
    ld bc, $a15a                                  ; $54f1: $01 $5a $a1
    ld c, b                                       ; $54f4: $48
    rlca                                          ; $54f5: $07
    ld hl, sp-$09                                 ; $54f6: $f8 $f7
    rlca                                          ; $54f8: $07
    inc e                                         ; $54f9: $1c
    inc bc                                        ; $54fa: $03
    ret nz                                        ; $54fb: $c0

    pop hl                                        ; $54fc: $e1
    or b                                          ; $54fd: $b0
    rrca                                          ; $54fe: $0f
    call z, $ff3f                                 ; $54ff: $cc $3f $ff
    ld a, c                                       ; $5502: $79
    add [hl]                                      ; $5503: $86
    ld [de], a                                    ; $5504: $12
    rst $28                                       ; $5505: $ef
    dec de                                        ; $5506: $1b
    ldh [$3c], a                                  ; $5507: $e0 $3c
    jp $d0fe                                      ; $5509: $c3 $fe $d0


    pop hl                                        ; $550c: $e1
    dec a                                         ; $550d: $3d
    ret nz                                        ; $550e: $c0

    ld c, a                                       ; $550f: $4f
    and b                                         ; $5510: $a0
    jr nc, jr_02f_54dc                            ; $5511: $30 $c9

    ld d, d                                       ; $5513: $52
    rst $38                                       ; $5514: $ff
    and c                                         ; $5515: $a1
    ld l, l                                       ; $5516: $6d
    jp nz, $c934                                  ; $5517: $c2 $34 $c9

    ld c, b                                       ; $551a: $48
    or e                                          ; $551b: $b3
    ld a, [de]                                    ; $551c: $1a
    rst $38                                       ; $551d: $ff
    push hl                                       ; $551e: $e5
    dec d                                         ; $551f: $15
    cp a                                          ; $5520: $bf
    adc $3f                                       ; $5521: $ce $3f
    ld d, [hl]                                    ; $5523: $56
    cp a                                          ; $5524: $bf
    ld l, l                                       ; $5525: $6d
    rst $38                                       ; $5526: $ff
    cp a                                          ; $5527: $bf
    sbc [hl]                                      ; $5528: $9e
    ld a, a                                       ; $5529: $7f
    ld l, d                                       ; $552a: $6a
    cp a                                          ; $552b: $bf
    dec e                                         ; $552c: $1d
    rst $38                                       ; $552d: $ff
    ld c, [hl]                                    ; $552e: $4e
    rst $38                                       ; $552f: $ff
    cp a                                          ; $5530: $bf
    dec [hl]                                      ; $5531: $35
    ret nz                                        ; $5532: $c0

    ld c, [hl]                                    ; $5533: $4e
    and c                                         ; $5534: $a1
    ld [hl-], a                                   ; $5535: $32
    ret                                           ; $5536: $c9


    ld d, a                                       ; $5537: $57
    rst $38                                       ; $5538: $ff
    and d                                         ; $5539: $a2
    ld a, a                                       ; $553a: $7f
    push bc                                       ; $553b: $c5
    ld [hl-], a                                   ; $553c: $32
    rst $08                                       ; $553d: $cf
    ld d, l                                       ; $553e: $55
    cp a                                          ; $553f: $bf
    dec hl                                        ; $5540: $2b
    sbc $90                                       ; $5541: $de $90
    add d                                         ; $5543: $82
    cp h                                          ; $5544: $bc
    ld b, e                                       ; $5545: $43
    ld e, b                                       ; $5546: $58
    and a                                         ; $5547: $a7
    nop                                           ; $5548: $00
    and b                                         ; $5549: $a0
    db $e3                                        ; $554a: $e3
    call nz, $f3ff                                ; $554b: $c4 $ff $f3
    or h                                          ; $554e: $b4
    db $eb                                        ; $554f: $eb
    sbc d                                         ; $5550: $9a
    ld a, a                                       ; $5551: $7f
    rst $28                                       ; $5552: $ef
    ccf                                           ; $5553: $3f
    ld a, [hl-]                                   ; $5554: $3a
    rst $38                                       ; $5555: $ff
    rst $18                                       ; $5556: $df
    ld c, l                                       ; $5557: $4d
    rst $38                                       ; $5558: $ff
    or h                                          ; $5559: $b4
    rst $38                                       ; $555a: $ff
    ld a, d                                       ; $555b: $7a
    rst $38                                       ; $555c: $ff
    xor b                                         ; $555d: $a8
    ei                                            ; $555e: $fb
    rst $38                                       ; $555f: $ff
    ld [hl], h                                    ; $5560: $74
    cp [hl]                                       ; $5561: $be
    add b                                         ; $5562: $80
    inc hl                                        ; $5563: $23
    rst $18                                       ; $5564: $df
    dec b                                         ; $5565: $05
    rst $38                                       ; $5566: $ff
    ld a, [de]                                    ; $5567: $1a
    cp $70                                        ; $5568: $fe $70
    add [hl]                                      ; $556a: $86
    call nc, $bbff                                ; $556b: $d4 $ff $bb
    cp $74                                        ; $556e: $fe $74
    rst $38                                       ; $5570: $ff
    xor [hl]                                      ; $5571: $ae
    ld a, [$209a]                                 ; $5572: $fa $9a $20
    xor [hl]                                      ; $5575: $ae
    ld a, [hl-]                                   ; $5576: $3a
    add b                                         ; $5577: $80
    inc bc                                        ; $5578: $03
    rst $38                                       ; $5579: $ff
    ld d, d                                       ; $557a: $52
    db $fc                                        ; $557b: $fc
    xor d                                         ; $557c: $aa
    xor a                                         ; $557d: $af
    db $fd                                        ; $557e: $fd
    ld [hl], a                                    ; $557f: $77
    ei                                            ; $5580: $fb
    and d                                         ; $5581: $a2
    or b                                          ; $5582: $b0
    ld h, b                                       ; $5583: $60
    dec c                                         ; $5584: $0d
    xor h                                         ; $5585: $ac
    ld h, b                                       ; $5586: $60
    ld a, [bc]                                    ; $5587: $0a
    rst $38                                       ; $5588: $ff
    rst $38                                       ; $5589: $ff
    ld h, a                                       ; $558a: $67
    adc b                                         ; $558b: $88
    call Call_000_32bb                            ; $558c: $cd $bb $32
    rst $28                                       ; $558f: $ef
    db $eb                                        ; $5590: $eb
    ld a, [$e0de]                                 ; $5591: $fa $de $e0
    cp $1c                                        ; $5594: $fe $1c
    add b                                         ; $5596: $80
    cp d                                          ; $5597: $ba
    rst $38                                       ; $5598: $ff
    daa                                           ; $5599: $27
    ret z                                         ; $559a: $c8

    ld l, l                                       ; $559b: $6d
    rst $38                                       ; $559c: $ff
    sbc e                                         ; $559d: $9b
    ld [hl+], a                                   ; $559e: $22
    rst $38                                       ; $559f: $ff

jr_02f_55a0:
    ld a, e                                       ; $55a0: $7b
    rst $38                                       ; $55a1: $ff
    or [hl]                                       ; $55a2: $b6

Call_02f_55a3:
    rst $38                                       ; $55a3: $ff
    ld e, [hl]                                    ; $55a4: $5e
    ei                                            ; $55a5: $fb
    rst $38                                       ; $55a6: $ff
    cp e                                          ; $55a7: $bb
    add h                                         ; $55a8: $84
    ld h, b                                       ; $55a9: $60
    ld c, $bf                                     ; $55aa: $0e $bf
    db $dd                                        ; $55ac: $dd
    ccf                                           ; $55ad: $3f
    ld l, [hl]                                    ; $55ae: $6e
    cp e                                          ; $55af: $bb
    cp a                                          ; $55b0: $bf
    ld d, a                                       ; $55b1: $57
    ld [hl], b                                    ; $55b2: $70

jr_02f_55b3:
    ldh [$6d], a                                  ; $55b3: $e0 $6d
    cp a                                          ; $55b5: $bf
    ld e, $70                                     ; $55b6: $1e $70
    ldh [rHDMA2], a                               ; $55b8: $e0 $52
    rst $38                                       ; $55ba: $ff
    db $fd                                        ; $55bb: $fd
    xor $f9                                       ; $55bc: $ee $f9
    ld c, c                                       ; $55be: $49
    or $a7                                        ; $55bf: $f6 $a7
    ld hl, sp+$47                                 ; $55c1: $f8 $47
    rst $38                                       ; $55c3: $ff
    ldh a, [$b4]                                  ; $55c4: $f0 $b4
    ret                                           ; $55c6: $c9


    ld c, d                                       ; $55c7: $4a
    or c                                          ; $55c8: $b1
    dec de                                        ; $55c9: $1b
    db $e4                                        ; $55ca: $e4
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    rra                                           ; $55cd: $1f
    ld c, d                                       ; $55ce: $4a
    cp a                                          ; $55cf: $bf
    ld l, c                                       ; $55d0: $69
    sub a                                         ; $55d1: $97
    ld [de], a                                    ; $55d2: $12
    rst $28                                       ; $55d3: $ef
    add hl, de                                    ; $55d4: $19
    rst $30                                       ; $55d5: $f7
    ld [c], a                                     ; $55d6: $e2
    jr c, jr_02f_55a0                             ; $55d7: $38 $c7

    nop                                           ; $55d9: $00
    pop hl                                        ; $55da: $e1
    dec hl                                        ; $55db: $2b
    ret nc                                        ; $55dc: $d0

    xor d                                         ; $55dd: $aa
    ld b, c                                       ; $55de: $41
    cp a                                          ; $55df: $bf
    cp $01                                        ; $55e0: $fe $01
    xor b                                         ; $55e2: $a8
    rlca                                          ; $55e3: $07
    ld a, b                                       ; $55e4: $78
    add a                                         ; $55e5: $87
    db $10                                        ; $55e6: $10
    db $e3                                        ; $55e7: $e3

jr_02f_55e8:
    and c                                         ; $55e8: $a1
    rst $38                                       ; $55e9: $ff
    ld e, $8c                                     ; $55ea: $1e $8c
    ld a, d                                       ; $55ec: $7a
    ld d, a                                       ; $55ed: $57
    xor b                                         ; $55ee: $a8
    jr c, jr_02f_55b3                             ; $55ef: $38 $c2

    dec c                                         ; $55f1: $0d
    rst $30                                       ; $55f2: $f7
    ldh a, [$3d]                                  ; $55f3: $f0 $3d
    jp nz, Jump_02f_61d8                          ; $55f5: $c2 $d8 $61

    cpl                                           ; $55f8: $2f
    sub b                                         ; $55f9: $90
    ld sp, hl                                     ; $55fa: $f9
    nop                                           ; $55fb: $00
    rst $38                                       ; $55fc: $ff
    adc d                                         ; $55fd: $8a
    ld hl, $0728                                  ; $55fe: $21 $28 $07
    ret c                                         ; $5601: $d8

    rlca                                          ; $5602: $07
    cp h                                          ; $5603: $bc
    ld b, e                                       ; $5604: $43
    db $fc                                        ; $5605: $fc
    ret z                                         ; $5606: $c8

    ld h, c                                       ; $5607: $61
    add hl, sp                                    ; $5608: $39
    and e                                         ; $5609: $a3
    ld [bc], a                                    ; $560a: $02
    db $fd                                        ; $560b: $fd
    ld bc, $0dfe                                  ; $560c: $01 $fe $0d
    ldh a, [rIE]                                  ; $560f: $f0 $ff
    ld [bc], a                                    ; $5611: $02
    db $fd                                        ; $5612: $fd
    ld a, [hl+]                                   ; $5613: $2a
    ret nc                                        ; $5614: $d0

    dec hl                                        ; $5615: $2b
    sub $f5                                       ; $5616: $d6 $f5
    ld a, [bc]                                    ; $5618: $0a
    rst $38                                       ; $5619: $ff
    ld e, a                                       ; $561a: $5f
    add b                                         ; $561b: $80
    xor c                                         ; $561c: $a9
    ld [bc], a                                    ; $561d: $02
    ld a, a                                       ; $561e: $7f
    add b                                         ; $561f: $80
    db $10                                        ; $5620: $10
    rrca                                          ; $5621: $0f
    rst $38                                       ; $5622: $ff
    ldh [$1f], a                                  ; $5623: $e0 $1f
    add b                                         ; $5625: $80
    ld a, a                                       ; $5626: $7f
    ld d, a                                       ; $5627: $57
    xor d                                         ; $5628: $aa
    push af                                       ; $5629: $f5
    ld a, [bc]                                    ; $562a: $0a
    cp a                                          ; $562b: $bf
    sbc a                                         ; $562c: $9f
    jr nz, jr_02f_55e8                            ; $562d: $20 $b9

    ld [bc], a                                    ; $562f: $02
    ld h, a                                       ; $5630: $67
    sbc b                                         ; $5631: $98
    rrca                                          ; $5632: $0f
    and e                                         ; $5633: $a3
    ld c, d                                       ; $5634: $4a
    rst $38                                       ; $5635: $ff
    or l                                          ; $5636: $b5
    db $f4                                        ; $5637: $f4
    dec bc                                        ; $5638: $0b
    sbc l                                         ; $5639: $9d
    ld [hl+], a                                   ; $563a: $22
    cp d                                          ; $563b: $ba
    rlca                                          ; $563c: $07
    ld a, e                                       ; $563d: $7b
    ld e, a                                       ; $563e: $5f
    add b                                         ; $563f: $80
    inc c                                         ; $5640: $0c
    di                                            ; $5641: $f3
    rlca                                          ; $5642: $07
    ld hl, sp-$41                                 ; $5643: $f8 $bf
    and c                                         ; $5645: $a1
    add b                                         ; $5646: $80
    sbc [hl]                                      ; $5647: $9e
    nop                                           ; $5648: $00
    db $ed                                        ; $5649: $ed
    and b                                         ; $564a: $a0
    sbc d                                         ; $564b: $9a
    nop                                           ; $564c: $00
    ld l, b                                       ; $564d: $68
    rst $38                                       ; $564e: $ff
    sub b                                         ; $564f: $90
    pop bc                                        ; $5650: $c1
    rla                                           ; $5651: $17
    add sp, -$2f                                  ; $5652: $e8 $d1
    rst $20                                       ; $5654: $e7
    nop                                           ; $5655: $00
    ld l, $d1                                     ; $5656: $2e $d1
    add b                                         ; $5658: $80
    pop hl                                        ; $5659: $e1
    ret nz                                        ; $565a: $c0

    db $e3                                        ; $565b: $e3
    or b                                          ; $565c: $b0
    rrca                                          ; $565d: $0f
    add $fc                                       ; $565e: $c6 $fc
    sub b                                         ; $5660: $90
    call nz, $e3d0                                ; $5661: $c4 $d0 $e3
    dec a                                         ; $5664: $3d
    ret nz                                        ; $5665: $c0

    ld e, a                                       ; $5666: $5f
    and b                                         ; $5667: $a0
    inc [hl]                                      ; $5668: $34
    ret                                           ; $5669: $c9


    rst $10                                       ; $566a: $d7
    ld e, d                                       ; $566b: $5a
    and c                                         ; $566c: $a1
    ld a, l                                       ; $566d: $7d
    sub b                                         ; $566e: $90
    ret nz                                        ; $566f: $c0

    ld c, h                                       ; $5670: $4c
    sub b                                         ; $5671: $90
    ret nz                                        ; $5672: $c0

    ld d, l                                       ; $5673: $55
    cp a                                          ; $5674: $bf
    ei                                            ; $5675: $fb
    adc [hl]                                      ; $5676: $8e
    ld a, a                                       ; $5677: $7f
    sub b                                         ; $5678: $90
    jp z, Jump_02f_5ac8                           ; $5679: $ca $c8 $5a

    and c                                         ; $567c: $a1
    inc a                                         ; $567d: $3c
    jp Jump_02f_537f                              ; $567e: $c3 $7f $53


    xor [hl]                                      ; $5681: $ae
    ld [hl], a                                    ; $5682: $77
    call $bf42                                    ; $5683: $cd $42 $bf
    dec d                                         ; $5686: $15
    ld l, d                                       ; $5687: $6a
    ld h, b                                       ; $5688: $60
    cp $6b                                        ; $5689: $fe $6b
    add c                                         ; $568b: $81
    ret nz                                        ; $568c: $c0

    ccf                                           ; $568d: $3f
    ld b, b                                       ; $568e: $40
    cp a                                          ; $568f: $bf
    ld b, b                                       ; $5690: $40
    rst $38                                       ; $5691: $ff
    or b                                          ; $5692: $b0
    cp a                                          ; $5693: $bf
    rst $28                                       ; $5694: $ef
    call z, $a4f3                                 ; $5695: $cc $f3 $a4
    ei                                            ; $5698: $fb
    dec d                                         ; $5699: $15
    cp h                                          ; $569a: $bc
    ret nz                                        ; $569b: $c0

    dec b                                         ; $569c: $05
    xor e                                         ; $569d: $ab
    rst $38                                       ; $569e: $ff
    ld [bc], a                                    ; $569f: $02
    add hl, hl                                    ; $56a0: $29
    and [hl]                                      ; $56a1: $a6
    ld d, e                                       ; $56a2: $53
    or b                                          ; $56a3: $b0
    ret nz                                        ; $56a4: $c0

    ld [hl], l                                    ; $56a5: $75
    or b                                          ; $56a6: $b0
    ret z                                         ; $56a7: $c8

    ld [hl], a                                    ; $56a8: $77
    xor e                                         ; $56a9: $ab
    adc b                                         ; $56aa: $88
    call z, $cab0                                 ; $56ab: $cc $b0 $ca
    scf                                           ; $56ae: $37
    or b                                          ; $56af: $b0
    call z, $b04e                                 ; $56b0: $cc $4e $b0
    adc $ae                                       ; $56b3: $ce $ae
    db $db                                        ; $56b5: $db
    ld sp, hl                                     ; $56b6: $f9
    ld a, c                                       ; $56b7: $79
    or b                                          ; $56b8: $b0
    ret z                                         ; $56b9: $c8

    cp a                                          ; $56ba: $bf
    ld e, a                                       ; $56bb: $5f
    or b                                          ; $56bc: $b0
    jp $e21d                                      ; $56bd: $c3 $1d $e2


    ei                                            ; $56c0: $fb
    ld [$20f7], sp                                ; $56c1: $08 $f7 $20
    pop hl                                        ; $56c4: $e1
    dec l                                         ; $56c5: $2d
    ret nc                                        ; $56c6: $d0

    sbc d                                         ; $56c7: $9a
    ld h, c                                       ; $56c8: $61
    ld a, [hl]                                    ; $56c9: $7e
    cp e                                          ; $56ca: $bb
    add c                                         ; $56cb: $81
    add sp, $30                                   ; $56cc: $e8 $30
    and $61                                       ; $56ce: $e6 $61
    ld e, $95                                     ; $56d0: $1e $95
    or b                                          ; $56d2: $b0
    ret nz                                        ; $56d3: $c0

    add hl, sp                                    ; $56d4: $39
    rst $30                                       ; $56d5: $f7
    jp nz, $f00f                                  ; $56d6: $c2 $0f $f0

    rst $38                                       ; $56d9: $ff
    ld h, e                                       ; $56da: $63
    ld d, a                                       ; $56db: $57
    xor b                                         ; $56dc: $a8
    ei                                            ; $56dd: $fb
    nop                                           ; $56de: $00
    cp a                                          ; $56df: $bf
    sbc [hl]                                      ; $56e0: $9e
    ld hl, $07a8                                  ; $56e1: $21 $a8 $07
    ld [hl], b                                    ; $56e4: $70
    adc a                                         ; $56e5: $8f
    rst $28                                       ; $56e6: $ef
    ld h, e                                       ; $56e7: $63
    inc c                                         ; $56e8: $0c
    rst $38                                       ; $56e9: $ff
    rst $30                                       ; $56ea: $f7
    reti                                          ; $56eb: $d9


    ld l, a                                       ; $56ec: $6f
    ld [$63ff], sp                                ; $56ed: $08 $ff $63
    cp l                                          ; $56f0: $bd
    sub $ff                                       ; $56f1: $d6 $ff
    ld l, e                                       ; $56f3: $6b
    ld l, d                                       ; $56f4: $6a
    rst $18                                       ; $56f5: $df
    jr nc, @-$1f                                  ; $56f6: $30 $df

    ld d, e                                       ; $56f8: $53
    db $fd                                        ; $56f9: $fd
    nop                                           ; $56fa: $00
    rst $38                                       ; $56fb: $ff
    rst $38                                       ; $56fc: $ff
    ld e, l                                       ; $56fd: $5d
    rst $20                                       ; $56fe: $e7
    ld [$40ff], sp                                ; $56ff: $08 $ff $40
    cp a                                          ; $5702: $bf
    ld l, h                                       ; $5703: $6c
    ei                                            ; $5704: $fb
    or a                                          ; $5705: $b7
    ld c, b                                       ; $5706: $48
    call c, Call_02f_40c0                         ; $5707: $dc $c0 $40
    rst $38                                       ; $570a: $ff
    inc b                                         ; $570b: $04
    ei                                            ; $570c: $fb
    ld e, d                                       ; $570d: $5a
    ld sp, hl                                     ; $570e: $f9
    and l                                         ; $570f: $a5
    dec sp                                        ; $5710: $3b
    add b                                         ; $5711: $80
    ld b, c                                       ; $5712: $41
    nop                                           ; $5713: $00
    rst $38                                       ; $5714: $ff
    rst $38                                       ; $5715: $ff
    ld e, d                                       ; $5716: $5a
    and l                                         ; $5717: $a5
    jr nz, @+$01                                  ; $5718: $20 $ff

    rst $18                                       ; $571a: $df
    inc h                                         ; $571b: $24
    rst $20                                       ; $571c: $e7
    ld h, [hl]                                    ; $571d: $66
    and l                                         ; $571e: $a5
    dec h                                         ; $571f: $25
    and $66                                       ; $5720: $e6 $66
    rst $38                                       ; $5722: $ff
    and l                                         ; $5723: $a5
    ld h, [hl]                                    ; $5724: $66
    and l                                         ; $5725: $a5
    and h                                         ; $5726: $a4
    ld h, a                                       ; $5727: $67
    ld h, [hl]                                    ; $5728: $66
    and l                                         ; $5729: $a5
    inc h                                         ; $572a: $24
    cp $70                                        ; $572b: $fe $70
    ret nz                                        ; $572d: $c0

    ld bc, $05fe                                  ; $572e: $01 $fe $05
    ei                                            ; $5731: $fb
    ld e, $e6                                     ; $5732: $1e $e6
    jr @+$01                                      ; $5734: $18 $ff

    add sp, $30                                   ; $5736: $e8 $30
    ret nc                                        ; $5738: $d0

    ld de, $63f3                                  ; $5739: $11 $f3 $63
    and d                                         ; $573c: $a2
    ld d, l                                       ; $573d: $55
    ei                                            ; $573e: $fb
    nop                                           ; $573f: $00
    cp d                                          ; $5740: $ba
    sbc [hl]                                      ; $5741: $9e
    add b                                         ; $5742: $80
    xor e                                         ; $5743: $ab
    nop                                           ; $5744: $00
    ld e, l                                       ; $5745: $5d
    nop                                           ; $5746: $00
    ld [$96fa], a                                 ; $5747: $ea $fa $96
    add b                                         ; $574a: $80
    xor [hl]                                      ; $574b: $ae
    sub d                                         ; $574c: $92
    add b                                         ; $574d: $80
    adc d                                         ; $574e: $8a
    nop                                           ; $574f: $00
    ld d, h                                       ; $5750: $54
    nop                                           ; $5751: $00
    xor d                                         ; $5752: $aa
    cp $f0                                        ; $5753: $fe $f0
    ldh [$aa], a                                  ; $5755: $e0 $aa
    nop                                           ; $5757: $00
    dec d                                         ; $5758: $15
    nop                                           ; $5759: $00
    xor b                                         ; $575a: $a8
    nop                                           ; $575b: $00
    ld d, c                                       ; $575c: $51
    rst $38                                       ; $575d: $ff
    nop                                           ; $575e: $00
    ld [$2200], sp                                ; $575f: $08 $00 $22
    nop                                           ; $5762: $00
    sub h                                         ; $5763: $94
    nop                                           ; $5764: $00
    add hl, hl                                    ; $5765: $29
    xor a                                         ; $5766: $af
    nop                                           ; $5767: $00
    ld b, h                                       ; $5768: $44
    nop                                           ; $5769: $00
    db $10                                        ; $576a: $10
    db $e4                                        ; $576b: $e4
    ldh [rP1], a                                  ; $576c: $e0 $00
    ld [hl], e                                    ; $576e: $73
    nop                                           ; $576f: $00
    ld bc, $94ce                                  ; $5770: $01 $ce $94
    nop                                           ; $5773: $00
    jr nz, jr_02f_5776                            ; $5774: $20 $00

jr_02f_5776:
    add b                                         ; $5776: $80
    adc [hl]                                      ; $5777: $8e
    nop                                           ; $5778: $00
    rst $38                                       ; $5779: $ff
    ldh a, [rNR23]                                ; $577a: $f0 $18
    inc a                                         ; $577c: $3c
    rst $38                                       ; $577d: $ff
    ld a, [hl]                                    ; $577e: $7e
    ld a, [hl]                                    ; $577f: $7e
    rst $38                                       ; $5780: $ff
    ld [hl], b                                    ; $5781: $70
    rst $38                                       ; $5782: $ff
    ld a, b                                       ; $5783: $78
    db $fc                                        ; $5784: $fc
    inc a                                         ; $5785: $3c
    rst $38                                       ; $5786: $ff
    cp $80                                        ; $5787: $fe $80
    ld a, h                                       ; $5789: $7c
    ld h, h                                       ; $578a: $64
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    ld [$ff1c], sp                                ; $578d: $08 $1c $ff
    ld a, $36                                     ; $5790: $3e $36
    ld a, a                                       ; $5792: $7f
    and [hl]                                      ; $5793: $a6
    ld a, a                                       ; $5794: $7f
    add h                                         ; $5795: $84
    ld l, a                                       ; $5796: $6f
    ld b, b                                       ; $5797: $40
    ei                                            ; $5798: $fb
    ld c, $08                                     ; $5799: $0e $08
    ld l, c                                       ; $579b: $69
    ld [c], a                                     ; $579c: $e2
    inc bc                                        ; $579d: $03
    rst $38                                       ; $579e: $ff

jr_02f_579f:
    rlca                                          ; $579f: $07
    cp $1b                                        ; $57a0: $fe $1b
    rst $38                                       ; $57a2: $ff

jr_02f_57a3:
    db $fc                                        ; $57a3: $fc
    ld e, $f1                                     ; $57a4: $1e $f1
    jr z, jr_02f_579f                             ; $57a6: $28 $f7

    ld a, d                                       ; $57a8: $7a
    push hl                                       ; $57a9: $e5
    ld [hl], b                                    ; $57aa: $70
    rst $38                                       ; $57ab: $ff
    rst $08                                       ; $57ac: $cf
    inc a                                         ; $57ad: $3c
    rst $38                                       ; $57ae: $ff
    ei                                            ; $57af: $fb
    rst $20                                       ; $57b0: $e7
    db $fd                                        ; $57b1: $fd
    ld b, d                                       ; $57b2: $42
    rst $20                                       ; $57b3: $e7
    cp a                                          ; $57b4: $bf
    jr jr_02f_5801                                ; $57b5: $18 $4a

    or l                                          ; $57b7: $b5
    nop                                           ; $57b8: $00
    rst $38                                       ; $57b9: $ff
    ld d, h                                       ; $57ba: $54
    ld l, [hl]                                    ; $57bb: $6e
    and b                                         ; $57bc: $a0
    adc [hl]                                      ; $57bd: $8e
    rst $38                                       ; $57be: $ff
    di                                            ; $57bf: $f3
    sbc d                                         ; $57c0: $9a
    rst $20                                       ; $57c1: $e7
    ld c, l                                       ; $57c2: $4d
    di                                            ; $57c3: $f3
    sub a                                         ; $57c4: $97
    jp hl                                         ; $57c5: $e9


    rst $00                                       ; $57c6: $c7
    rst $38                                       ; $57c7: $ff
    ld sp, hl                                     ; $57c8: $f9
    adc a                                         ; $57c9: $8f

jr_02f_57ca:
    di                                            ; $57ca: $f3
    ld e, [hl]                                    ; $57cb: $5e
    rst $20                                       ; $57cc: $e7
    adc [hl]                                      ; $57cd: $8e
    di                                            ; $57ce: $f3
    push af                                       ; $57cf: $f5
    cp $0a                                        ; $57d0: $fe $0a
    and b                                         ; $57d2: $a0
    ldh [rIE], a                                  ; $57d3: $e0 $ff
    adc d                                         ; $57d5: $8a
    push af                                       ; $57d6: $f5
    ld d, a                                       ; $57d7: $57
    add sp, -$73                                  ; $57d8: $e8 $8d
    rst $38                                       ; $57da: $ff
    ld a, [c]                                     ; $57db: $f2
    add hl, de                                    ; $57dc: $19
    rst $20                                       ; $57dd: $e7
    adc a                                         ; $57de: $8f
    di                                            ; $57df: $f3
    rst $18                                       ; $57e0: $df
    sbc c                                         ; $57e1: $99
    sbc a                                         ; $57e2: $9f
    rst $38                                       ; $57e3: $ff
    ld c, l                                       ; $57e4: $4d
    daa                                           ; $57e5: $27
    rla                                           ; $57e6: $17
    and e                                         ; $57e7: $a3
    di                                            ; $57e8: $f3
    db $db                                        ; $57e9: $db
    pop hl                                        ; $57ea: $e1
    xor $ff                                       ; $57eb: $ee $ff
    pop af                                        ; $57ed: $f1
    or h                                          ; $57ee: $b4
    ei                                            ; $57ef: $fb
    ld b, c                                       ; $57f0: $41
    rst $38                                       ; $57f1: $ff
    rst $18                                       ; $57f2: $df
    sbc a                                         ; $57f3: $9f
    sbc h                                         ; $57f4: $9c
    rst $38                                       ; $57f5: $ff
    ld c, a                                       ; $57f6: $4f
    ld h, $17                                     ; $57f7: $26 $17
    and d                                         ; $57f9: $a2
    di                                            ; $57fa: $f3
    jp c, $eee1                                   ; $57fb: $da $e1 $ee

    rst $38                                       ; $57fe: $ff
    ld [hl], c                                    ; $57ff: $71
    db $f4                                        ; $5800: $f4

jr_02f_5801:
    dec sp                                        ; $5801: $3b
    ld sp, hl                                     ; $5802: $f9
    rst $38                                       ; $5803: $ff
    rst $20                                       ; $5804: $e7
    jr jr_02f_57ca                                ; $5805: $18 $c3

    rst $38                                       ; $5807: $ff
    inc h                                         ; $5808: $24
    rst $20                                       ; $5809: $e7
    inc h                                         ; $580a: $24
    rst $38                                       ; $580b: $ff
    inc a                                         ; $580c: $3c
    db $db                                        ; $580d: $db
    inc a                                         ; $580e: $3c
    rst $20                                       ; $580f: $e7
    db $fd                                        ; $5810: $fd
    jr jr_02f_57a3                                ; $5811: $18 $90

    ld b, c                                       ; $5813: $41
    ld h, a                                       ; $5814: $67
    sbc d                                         ; $5815: $9a
    call nz, $0b8a                                ; $5816: $c4 $8a $0b
    ret nz                                        ; $5819: $c0

    rst $38                                       ; $581a: $ff
    ld b, d                                       ; $581b: $42
    and b                                         ; $581c: $a0
    db $10                                        ; $581d: $10
    ret nz                                        ; $581e: $c0

    jp hl                                         ; $581f: $e9


    add b                                         ; $5820: $80
    ld h, b                                       ; $5821: $60
    sub c                                         ; $5822: $91
    rst $38                                       ; $5823: $ff
    adc e                                         ; $5824: $8b
    ld h, b                                       ; $5825: $60
    ld d, $a9                                     ; $5826: $16 $a9
    pop hl                                        ; $5828: $e1
    dec bc                                        ; $5829: $0b
    adc d                                         ; $582a: $8a
    daa                                           ; $582b: $27
    ld a, a                                       ; $582c: $7f
    daa                                           ; $582d: $27
    rrca                                          ; $582e: $0f
    xor l                                         ; $582f: $ad
    rra                                           ; $5830: $1f
    sub $3f                                       ; $5831: $d6 $3f
    ld a, l                                       ; $5833: $7d
    halt                                          ; $5834: $76
    add b                                         ; $5835: $80
    cp $20                                        ; $5836: $fe $20
    daa                                           ; $5838: $27
    inc h                                         ; $5839: $24
    db $db                                        ; $583a: $db
    inc c                                         ; $583b: $0c
    rst $30                                       ; $583c: $f7
    ld [hl], $cf                                  ; $583d: $36 $cf
    jr @+$01                                      ; $583f: $18 $ff

    rst $20                                       ; $5841: $e7
    sub $0f                                       ; $5842: $d6 $0f
    ld e, c                                       ; $5844: $59
    and [hl]                                      ; $5845: $a6
    ld b, d                                       ; $5846: $42
    rrca                                          ; $5847: $0f
    ei                                            ; $5848: $fb
    ld a, a                                       ; $5849: $7f
    nop                                           ; $584a: $00
    inc e                                         ; $584b: $1c
    inc bc                                        ; $584c: $03
    cp a                                          ; $584d: $bf

jr_02f_584e:
    nop                                           ; $584e: $00
    sbc c                                         ; $584f: $99
    ld h, [hl]                                    ; $5850: $66
    jr c, jr_02f_5874                             ; $5851: $38 $21

    sbc a                                         ; $5853: $9f

jr_02f_5854:
    dec a                                         ; $5854: $3d
    jp nz, $e718                                  ; $5855: $c2 $18 $e7

    add hl, de                                    ; $5858: $19
    jr nc, jr_02f_587f                            ; $5859: $30 $24

    db $10                                        ; $585b: $10
    add c                                         ; $585c: $81
    ld d, [hl]                                    ; $585d: $56
    rst $08                                       ; $585e: $cf
    xor c                                         ; $585f: $a9
    ld [hl+], a                                   ; $5860: $22
    rst $38                                       ; $5861: $ff
    ld [hl], l                                    ; $5862: $75
    sub b                                         ; $5863: $90
    add h                                         ; $5864: $84
    add b                                         ; $5865: $80
    and e                                         ; $5866: $a3
    ld de, $ffef                                  ; $5867: $11 $ef $ff
    rra                                           ; $586a: $1f
    ldh [$3d], a                                  ; $586b: $e0 $3d
    rst $00                                       ; $586d: $c7
    inc sp                                        ; $586e: $33
    rst $08                                       ; $586f: $cf
    dec l                                         ; $5870: $2d
    rst $10                                       ; $5871: $d7
    cp $e0                                        ; $5872: $fe $e0

jr_02f_5874:
    ld h, l                                       ; $5874: $65
    jr z, jr_02f_584e                             ; $5875: $28 $d7

    ld b, h                                       ; $5877: $44
    ei                                            ; $5878: $fb
    or h                                          ; $5879: $b4
    rst $38                                       ; $587a: $ff
    ret nc                                        ; $587b: $d0

    rst $38                                       ; $587c: $ff
    rst $38                                       ; $587d: $ff
    ei                                            ; $587e: $fb

jr_02f_587f:
    inc e                                         ; $587f: $1c
    db $ed                                        ; $5880: $ed
    ld h, $8b                                     ; $5881: $26 $8b
    ld b, [hl]                                    ; $5883: $46
    db $db                                        ; $5884: $db
    rst $38                                       ; $5885: $ff
    ld h, [hl]                                    ; $5886: $66
    add $4f                                       ; $5887: $c6 $4f
    dec bc                                        ; $5889: $0b
    add a                                         ; $588a: $87
    sbc e                                         ; $588b: $9b
    add a                                         ; $588c: $87
    or e                                          ; $588d: $b3
    rst $38                                       ; $588e: $ff
    rst $08                                       ; $588f: $cf
    xor a                                         ; $5890: $af
    sbc a                                         ; $5891: $9f
    and $5f                                       ; $5892: $e6 $5f
    cp a                                          ; $5894: $bf
    ld a, [hl]                                    ; $5895: $7e
    db $eb                                        ; $5896: $eb
    rst $18                                       ; $5897: $df
    inc a                                         ; $5898: $3c
    rst $38                                       ; $5899: $ff
    ld l, $ef                                     ; $589a: $2e $ef
    cpl                                           ; $589c: $2f
    ld hl, $1e60                                  ; $589d: $21 $60 $1e
    inc e                                         ; $58a0: $1c

jr_02f_58a1:
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    ld l, $e7                                     ; $58a3: $2e $e7
    ld c, d                                       ; $58a5: $4a
    rst $00                                       ; $58a6: $c7
    ld e, d                                       ; $58a7: $5a
    rst $20                                       ; $58a8: $e7
    ld b, a                                       ; $58a9: $47

jr_02f_58aa:
    ei                                            ; $58aa: $fb
    rst $08                                       ; $58ab: $cf
    adc e                                         ; $58ac: $8b
    ldh [$e4], a                                  ; $58ad: $e0 $e4
    ld h, [hl]                                    ; $58af: $66
    rst $18                                       ; $58b0: $df
    ld a, [hl]                                    ; $58b1: $7e
    rst $38                                       ; $58b2: $ff
    jr z, jr_02f_5854                             ; $58b3: $28 $9f

    rst $38                                       ; $58b5: $ff
    ld a, $ef                                     ; $58b6: $3e $ef
    cpl                                           ; $58b8: $2f
    rst $28                                       ; $58b9: $ef
    pop hl                                        ; $58ba: $e1
    ldh [rNR10], a                                ; $58bb: $e0 $10
    ret nz                                        ; $58bd: $c0

    pop de                                        ; $58be: $d1
    rst $28                                       ; $58bf: $ef
    ld l, a                                       ; $58c0: $6f
    jr @+$01                                      ; $58c1: $18 $ff

    ld h, a                                       ; $58c3: $67
    ld b, d                                       ; $58c4: $42
    ret nz                                        ; $58c5: $c0

    ld a, [hl]                                    ; $58c6: $7e
    rst $38                                       ; $58c7: $ff
    jr c, jr_02f_58a1                             ; $58c8: $38 $d7

    rst $18                                       ; $58ca: $df
    ld b, e                                       ; $58cb: $43
    db $fd                                        ; $58cc: $fd
    xor b                                         ; $58cd: $a8
    ld [bc], a                                    ; $58ce: $02
    db $db                                        ; $58cf: $db
    dec e                                         ; $58d0: $1d
    ldh [$e7], a                                  ; $58d1: $e0 $e7
    ld a, [hl]                                    ; $58d3: $7e
    cp $1b                                        ; $58d4: $fe $1b
    ldh [rNR23], a                                ; $58d6: $e0 $18
    rst $20                                       ; $58d8: $e7
    jr nz, jr_02f_58aa                            ; $58d9: $20 $cf

    or [hl]                                       ; $58db: $b6
    dec hl                                        ; $58dc: $2b
    db $ed                                        ; $58dd: $ed
    cp a                                          ; $58de: $bf
    cp d                                          ; $58df: $ba
    dec sp                                        ; $58e0: $3b
    rst $18                                       ; $58e1: $df
    halt                                          ; $58e2: $76
    rst $18                                       ; $58e3: $df
    ld d, h                                       ; $58e4: $54
    ld hl, sp+$00                                 ; $58e5: $f8 $00
    ld a, [hl+]                                   ; $58e7: $2a
    add $cb                                       ; $58e8: $c6 $cb
    ld [hl+], a                                   ; $58ea: $22
    jr @+$01                                      ; $58eb: $18 $ff

    ldh [$e3], a                                  ; $58ed: $e0 $e3
    rst $38                                       ; $58ef: $ff
    pop bc                                        ; $58f0: $c1
    adc h                                         ; $58f1: $8c
    ld hl, $00e7                                  ; $58f2: $21 $e7 $00
    push af                                       ; $58f5: $f5
    db $db                                        ; $58f6: $db
    cp $e0                                        ; $58f7: $fe $e0
    add c                                         ; $58f9: $81
    ld hl, sp-$20                                 ; $58fa: $f8 $e0
    rst $38                                       ; $58fc: $ff
    nop                                           ; $58fd: $00
    xor e                                         ; $58fe: $ab
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    dec b                                         ; $5901: $05
    cp $ab                                        ; $5902: $fe $ab
    db $fc                                        ; $5904: $fc
    dec c                                         ; $5905: $0d
    ld a, [$fdb2]                                 ; $5906: $fa $b2 $fd
    rst $38                                       ; $5909: $ff
    ld d, l                                       ; $590a: $55
    ld [$d7a8], a                                 ; $590b: $ea $a8 $d7
    db $f4                                        ; $590e: $f4
    adc e                                         ; $590f: $8b
    or b                                          ; $5910: $b0
    rrca                                          ; $5911: $0f
    ld a, a                                       ; $5912: $7f
    sbc $7f                                       ; $5913: $de $7f
    add hl, hl                                    ; $5915: $29
    cp $55                                        ; $5916: $fe $55
    rst $38                                       ; $5918: $ff
    cp [hl]                                       ; $5919: $be
    ld l, $e0                                     ; $591a: $2e $e0
    cp a                                          ; $591c: $bf
    xor d                                         ; $591d: $aa
    rst $38                                       ; $591e: $ff
    ret nz                                        ; $591f: $c0

    rst $38                                       ; $5920: $ff
    sbc b                                         ; $5921: $98
    ld h, a                                       ; $5922: $67
    ld b, b                                       ; $5923: $40
    pop hl                                        ; $5924: $e1
    ld e, b                                       ; $5925: $58
    db $f4                                        ; $5926: $f4
    ld b, b                                       ; $5927: $40
    ld b, $d0                                     ; $5928: $06 $d0
    ld c, e                                       ; $592a: $4b
    dec hl                                        ; $592b: $2b
    db $10                                        ; $592c: $10
    ld l, b                                       ; $592d: $68
    inc a                                         ; $592e: $3c
    inc bc                                        ; $592f: $03
    add h                                         ; $5930: $84
    ld [hl], e                                    ; $5931: $73
    rst $28                                       ; $5932: $ef
    or h                                          ; $5933: $b4
    db $eb                                        ; $5934: $eb
    inc hl                                        ; $5935: $23
    call z, $e180                                 ; $5936: $cc $80 $e1
    ld a, [hl-]                                   ; $5939: $3a
    rst $18                                       ; $593a: $df
    rst $30                                       ; $593b: $f7
    ld a, a                                       ; $593c: $7f
    ld e, [hl]                                    ; $593d: $5e
    push de                                       ; $593e: $d5
    ld a, [hl]                                    ; $593f: $7e
    db $dd                                        ; $5940: $dd
    ld a, a                                       ; $5941: $7f
    ei                                            ; $5942: $fb
    ld l, $68                                     ; $5943: $2e $68
    ld h, e                                       ; $5945: $63
    rst $38                                       ; $5946: $ff
    add hl, de                                    ; $5947: $19
    rst $20                                       ; $5948: $e7
    rla                                           ; $5949: $17
    xor $3f                                       ; $594a: $ee $3f
    ret z                                         ; $594c: $c8

    cpl                                           ; $594d: $2f
    ret c                                         ; $594e: $d8

    rst $10                                       ; $594f: $d7
    rra                                           ; $5950: $1f
    ldh a, [$fd]                                  ; $5951: $f0 $fd
    ld l, d                                       ; $5953: $6a
    nop                                           ; $5954: $00
    jp c, Jump_02f_4008                           ; $5955: $da $08 $40

    xor a                                         ; $5958: $af
    cp $bf                                        ; $5959: $fe $bf
    rst $18                                       ; $595b: $df
    ld hl, sp+$6f                                 ; $595c: $f8 $6f
    ld hl, sp-$21                                 ; $595e: $f8 $df
    ldh a, [$83]                                  ; $5960: $f0 $83
    ld b, b                                       ; $5962: $40
    inc a                                         ; $5963: $3c
    cp $e6                                        ; $5964: $fe $e6
    ld b, c                                       ; $5966: $41
    ccf                                           ; $5967: $3f
    jp $c73e                                      ; $5968: $c3 $3e $c7


    db $dd                                        ; $596b: $dd
    cpl                                           ; $596c: $2f
    jp c, Jump_000_2ffd                           ; $596d: $da $fd $2f

    ldh a, [$e5]                                  ; $5970: $f0 $e5
    dec a                                         ; $5972: $3d
    jp $c73c                                      ; $5973: $c3 $3c $c7


    ret nc                                        ; $5976: $d0

jr_02f_5977:
    cpl                                           ; $5977: $2f
    ei                                            ; $5978: $fb
    ret c                                         ; $5979: $d8

    cpl                                           ; $597a: $2f
    ld d, e                                       ; $597b: $53
    jr nz, jr_02f_5977                            ; $597c: $20 $f9

    db $fc                                        ; $597e: $fc
    ei                                            ; $597f: $fb
    cp $e1                                        ; $5980: $fe $e1
    rst $28                                       ; $5982: $ef
    db $f4                                        ; $5983: $f4
    set 4, b                                      ; $5984: $cb $e0
    rst $18                                       ; $5986: $df
    cp $e1                                        ; $5987: $fe $e1
    cp a                                          ; $5989: $bf
    ld a, a                                       ; $598a: $7f
    ld e, a                                       ; $598b: $5f
    rst $38                                       ; $598c: $ff
    cp a                                          ; $598d: $bf
    rra                                           ; $598e: $1f
    rst $38                                       ; $598f: $ff
    scf                                           ; $5990: $37
    rst $08                                       ; $5991: $cf
    dec bc                                        ; $5992: $0b
    rst $30                                       ; $5993: $f7
    ld h, e                                       ; $5994: $63
    rst $38                                       ; $5995: $ff
    rst $38                                       ; $5996: $ff
    db $d3                                        ; $5997: $d3
    sbc a                                         ; $5998: $9f
    sub e                                         ; $5999: $93
    sbc a                                         ; $599a: $9f
    ld hl, sp-$79                                 ; $599b: $f8 $87
    ret nc                                        ; $599d: $d0

    rst $38                                       ; $599e: $ff
    cpl                                           ; $599f: $2f
    add b                                         ; $59a0: $80
    ld a, a                                       ; $59a1: $7f
    adc h                                         ; $59a2: $8c
    ld a, a                                       ; $59a3: $7f
    sbc d                                         ; $59a4: $9a
    ld [hl], e                                    ; $59a5: $73
    ld d, d                                       ; $59a6: $52
    rst $38                                       ; $59a7: $ff
    or e                                          ; $59a8: $b3
    adc h                                         ; $59a9: $8c
    rst $38                                       ; $59aa: $ff
    ldh a, [$ef]                                  ; $59ab: $f0 $ef
    ld l, l                                       ; $59ad: $6d
    di                                            ; $59ae: $f3
    ld [bc], a                                    ; $59af: $02
    ei                                            ; $59b0: $fb
    db $fd                                        ; $59b1: $fd
    ret nz                                        ; $59b2: $c0

    dec l                                         ; $59b3: $2d
    jr nz, @+$04                                  ; $59b4: $20 $02

    rst $38                                       ; $59b6: $ff
    ld d, $ff                                     ; $59b7: $16 $ff
    ld bc, $ffff                                  ; $59b9: $01 $ff $ff
    rla                                           ; $59bc: $17
    rst $38                                       ; $59bd: $ff
    add sp, -$09                                  ; $59be: $e8 $f7
    pop af                                        ; $59c0: $f1
    rst $38                                       ; $59c1: $ff
    cp $ff                                        ; $59c2: $fe $ff
    cp $ff                                        ; $59c4: $fe $ff
    cp $f7                                        ; $59c6: $fe $f7
    cp $ad                                        ; $59c8: $fe $ad
    db $fc                                        ; $59ca: $fc
    ld b, [hl]                                    ; $59cb: $46
    cp a                                          ; $59cc: $bf
    cp $eb                                        ; $59cd: $fe $eb
    rst $38                                       ; $59cf: $ff
    scf                                           ; $59d0: $37
    rst $38                                       ; $59d1: $ff
    adc a                                         ; $59d2: $8f
    db $ed                                        ; $59d3: $ed
    nop                                           ; $59d4: $00
    ld a, a                                       ; $59d5: $7f
    rst $38                                       ; $59d6: $ff
    ld a, a                                       ; $59d7: $7f
    ld l, a                                       ; $59d8: $6f
    ld a, a                                       ; $59d9: $7f
    ld a, $3f                                     ; $59da: $3e $3f
    ld a, e                                       ; $59dc: $7b
    ld a, a                                       ; $59dd: $7f
    rst $38                                       ; $59de: $ff
    cp $fe                                        ; $59df: $fe $fe
    nop                                           ; $59e1: $00
    ld a, [$fcfd]                                 ; $59e2: $fa $fd $fc
    ei                                            ; $59e5: $fb
    pop hl                                        ; $59e6: $e1
    rst $38                                       ; $59e7: $ff
    ret nc                                        ; $59e8: $d0

    rst $38                                       ; $59e9: $ff
    rst $28                                       ; $59ea: $ef
    push hl                                       ; $59eb: $e5
    rst $18                                       ; $59ec: $df
    jp z, $e7ff                                   ; $59ed: $ca $ff $e7

    rst $18                                       ; $59f0: $df
    ccf                                           ; $59f1: $3f
    ei                                            ; $59f2: $fb
    rst $38                                       ; $59f3: $ff
    rra                                           ; $59f4: $1f
    ld [hl+], a                                   ; $59f5: $22
    nop                                           ; $59f6: $00
    ld d, a                                       ; $59f7: $57
    rst $38                                       ; $59f8: $ff
    db $eb                                        ; $59f9: $eb
    rst $38                                       ; $59fa: $ff
    ld a, a                                       ; $59fb: $7f
    ei                                            ; $59fc: $fb
    rst $38                                       ; $59fd: $ff
    db $db                                        ; $59fe: $db

jr_02f_59ff:
    jp $8b00                                      ; $59ff: $c3 $00 $8b


    rst $38                                       ; $5a02: $ff
    ld b, l                                       ; $5a03: $45
    cp a                                          ; $5a04: $bf
    sub a                                         ; $5a05: $97
    rst $38                                       ; $5a06: $ff
    ld a, a                                       ; $5a07: $7f
    dec hl                                        ; $5a08: $2b
    rst $38                                       ; $5a09: $ff
    sbc a                                         ; $5a0a: $9f
    ld a, a                                       ; $5a0b: $7f
    dec l                                         ; $5a0c: $2d
    rst $38                                       ; $5a0d: $ff
    sbc a                                         ; $5a0e: $9f
    cp d                                          ; $5a0f: $ba
    ld [$75e0], a                                 ; $5a10: $ea $e0 $75
    ret nz                                        ; $5a13: $c0

    nop                                           ; $5a14: $00
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    ld a, [hl]                                    ; $5a17: $7e
    xor c                                         ; $5a18: $a9
    nop                                           ; $5a19: $00
    cp $3b                                        ; $5a1a: $fe $3b
    rst $38                                       ; $5a1c: $ff
    ld sp, hl                                     ; $5a1d: $f9
    and e                                         ; $5a1e: $a3
    nop                                           ; $5a1f: $00
    push hl                                       ; $5a20: $e5
    rst $38                                       ; $5a21: $ff
    di                                            ; $5a22: $f3
    and b                                         ; $5a23: $a0
    pop hl                                        ; $5a24: $e1
    sbc h                                         ; $5a25: $9c
    ldh [$5f], a                                  ; $5a26: $e0 $5f
    xor $fe                                       ; $5a28: $ee $fe
    ld e, [hl]                                    ; $5a2a: $5e
    cp $fb                                        ; $5a2b: $fe $fb
    ld b, [hl]                                    ; $5a2d: $46
    jr nz, jr_02f_59ff                            ; $5a2e: $20 $cf

    and b                                         ; $5a30: $a0
    ld [c], a                                     ; $5a31: $e2
    db $f4                                        ; $5a32: $f4
    db $fc                                        ; $5a33: $fc

jr_02f_5a34:
    db $e3                                        ; $5a34: $e3
    cp $e8                                        ; $5a35: $fe $e8
    cp $93                                        ; $5a37: $fe $93
    nop                                           ; $5a39: $00
    ld hl, sp-$01                                 ; $5a3a: $f8 $ff
    ldh a, [$fb]                                  ; $5a3c: $f0 $fb
    rst $38                                       ; $5a3e: $ff
    rst $20                                       ; $5a3f: $e7
    push af                                       ; $5a40: $f5
    set 6, d                                      ; $5a41: $cb $f2
    adc l                                         ; $5a43: $8d
    pop af                                        ; $5a44: $f1
    ld c, $f0                                     ; $5a45: $0e $f0
    ld l, l                                       ; $5a47: $6d
    rrca                                          ; $5a48: $0f
    cp $e1                                        ; $5a49: $fe $e1
    add sp, $17                                   ; $5a4b: $e8 $17
    ld h, b                                       ; $5a4d: $60
    inc bc                                        ; $5a4e: $03
    ld a, a                                       ; $5a4f: $7f
    rst $38                                       ; $5a50: $ff
    jr z, jr_02f_5a34                             ; $5a51: $28 $e1

    adc a                                         ; $5a53: $8f
    cpl                                           ; $5a54: $2f
    rst $18                                       ; $5a55: $df
    rla                                           ; $5a56: $17

jr_02f_5a57:
    rst $28                                       ; $5a57: $ef
    call z, $9bea                                 ; $5a58: $cc $ea $9b
    pop hl                                        ; $5a5b: $e1
    ccf                                           ; $5a5c: $3f
    inc bc                                        ; $5a5d: $03
    ldh [rIE], a                                  ; $5a5e: $e0 $ff
    db $fc                                        ; $5a60: $fc
    jp $83fc                                      ; $5a61: $c3 $fc $83


    db $fc                                        ; $5a64: $fc
    inc bc                                        ; $5a65: $03
    db $fc                                        ; $5a66: $fc
    inc bc                                        ; $5a67: $03
    rst $38                                       ; $5a68: $ff
    rst $38                                       ; $5a69: $ff
    ldh [$ef], a                                  ; $5a6a: $e0 $ef
    ret nc                                        ; $5a6c: $d0

    rst $18                                       ; $5a6d: $df
    and b                                         ; $5a6e: $a0
    ld l, $d1                                     ; $5a6f: $2e $d1
    rst $38                                       ; $5a71: $ff
    sub [hl]                                      ; $5a72: $96
    ld l, e                                       ; $5a73: $6b
    ld c, h                                       ; $5a74: $4c
    or a                                          ; $5a75: $b7
    jr z, jr_02f_5a57                             ; $5a76: $28 $df

    dec d                                         ; $5a78: $15
    rst $28                                       ; $5a79: $ef
    ld a, a                                       ; $5a7a: $7f
    ret nz                                        ; $5a7b: $c0

    ccf                                           ; $5a7c: $3f
    add h                                         ; $5a7d: $84
    ld a, a                                       ; $5a7e: $7f
    ld a, [bc]                                    ; $5a7f: $0a
    rst $38                                       ; $5a80: $ff
    inc d                                         ; $5a81: $14
    ld d, $c0                                     ; $5a82: $16 $c0
    db $fd                                        ; $5a84: $fd
    ld d, l                                       ; $5a85: $55
    ld d, b                                       ; $5a86: $50
    ret nz                                        ; $5a87: $c0

    ld d, l                                       ; $5a88: $55
    rst $38                                       ; $5a89: $ff
    dec bc                                        ; $5a8a: $0b
    rst $30                                       ; $5a8b: $f7
    inc bc                                        ; $5a8c: $03
    rst $38                                       ; $5a8d: $ff
    push bc                                       ; $5a8e: $c5
    ei                                            ; $5a8f: $fb
    cp $e0                                        ; $5a90: $fe $e0
    rst $38                                       ; $5a92: $ff
    db $fc                                        ; $5a93: $fc
    ld [c], a                                     ; $5a94: $e2
    ccf                                           ; $5a95: $3f
    ret nz                                        ; $5a96: $c0

    ld a, e                                       ; $5a97: $7b
    ld [$0ff7], a                                 ; $5a98: $ea $f7 $0f
    rst $38                                       ; $5a9b: $ff
    cp $fd                                        ; $5a9c: $fe $fd
    db $fd                                        ; $5a9e: $fd
    ld a, [$f5fa]                                 ; $5a9f: $fa $fa $f5
    ldh a, [$ef]                                  ; $5aa2: $f0 $ef
    ld sp, hl                                     ; $5aa4: $f9
    ret nz                                        ; $5aa5: $c0

    cp b                                          ; $5aa6: $b8
    ld b, b                                       ; $5aa7: $40
    adc $e1                                       ; $5aa8: $ce $e1
    db $fc                                        ; $5aaa: $fc
    inc bc                                        ; $5aab: $03
    ld d, h                                       ; $5aac: $54
    xor e                                         ; $5aad: $ab
    xor h                                         ; $5aae: $ac
    cp a                                          ; $5aaf: $bf
    ld d, a                                       ; $5ab0: $57
    ld a, [de]                                    ; $5ab1: $1a
    rst $28                                       ; $5ab2: $ef
    dec [hl]                                      ; $5ab3: $35
    rst $18                                       ; $5ab4: $df
    ld a, [hl+]                                   ; $5ab5: $2a
    ld c, $e0                                     ; $5ab6: $0e $e0
    rst $38                                       ; $5ab8: $ff
    cp a                                          ; $5ab9: $bf
    rst $38                                       ; $5aba: $ff
    ld a, [bc]                                    ; $5abb: $0a
    rst $30                                       ; $5abc: $f7
    dec b                                         ; $5abd: $05
    ei                                            ; $5abe: $fb
    ld [bc], a                                    ; $5abf: $02
    cp d                                          ; $5ac0: $ba
    ld h, b                                       ; $5ac1: $60
    ld a, [hl]                                    ; $5ac2: $7e
    ld l, d                                       ; $5ac3: $6a
    jr nc, jr_02f_5b26                            ; $5ac4: $30 $60

    ld a, a                                       ; $5ac6: $7f
    inc l                                         ; $5ac7: $2c

Jump_02f_5ac8:
    ld h, d                                       ; $5ac8: $62
    ld d, a                                       ; $5ac9: $57
    ld d, h                                       ; $5aca: $54
    ret nz                                        ; $5acb: $c0

    sbc $fd                                       ; $5acc: $de $fd
    ld b, l                                       ; $5ace: $45
    ldh [rIE], a                                  ; $5acf: $e0 $ff
    rst $38                                       ; $5ad1: $ff
    ld [$d5ff], a                                 ; $5ad2: $ea $ff $d5
    rst $38                                       ; $5ad5: $ff
    sbc $a1                                       ; $5ad6: $de $a1
    xor d                                         ; $5ad8: $aa
    rst $38                                       ; $5ad9: $ff
    ld d, l                                       ; $5ada: $55
    ld d, [hl]                                    ; $5adb: $56
    xor e                                         ; $5adc: $ab
    dec c                                         ; $5add: $0d
    rst $30                                       ; $5ade: $f7
    ld a, [de]                                    ; $5adf: $1a
    rst $28                                       ; $5ae0: $ef
    dec d                                         ; $5ae1: $15
    ld d, d                                       ; $5ae2: $52
    ret c                                         ; $5ae3: $d8

    ret nz                                        ; $5ae4: $c0

    ld a, a                                       ; $5ae5: $7f
    sub b                                         ; $5ae6: $90
    ldh [$d0], a                                  ; $5ae7: $e0 $d0
    db $e3                                        ; $5ae9: $e3
    cp [hl]                                       ; $5aea: $be
    db $ec                                        ; $5aeb: $ec
    ret nz                                        ; $5aec: $c0

    cp a                                          ; $5aed: $bf
    ld d, c                                       ; $5aee: $51
    ldh [rP1], a                                  ; $5aef: $e0 $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    ccf                                           ; $5af3: $3f
    ld b, [hl]                                    ; $5af4: $46
    ld b, [hl]                                    ; $5af5: $46
    ld b, [hl]                                    ; $5af6: $46
    ret z                                         ; $5af7: $c8

    ret                                           ; $5af8: $c9


    jp z, $fffa                                   ; $5af9: $ca $fa $ff

    db $f4                                        ; $5afc: $f4
    push af                                       ; $5afd: $f5
    ccf                                           ; $5afe: $3f
    ret nc                                        ; $5aff: $d0

    set 1, h                                      ; $5b00: $cb $cc
    call $cfce                                    ; $5b02: $cd $ce $cf
    ld a, [$f4ff]                                 ; $5b05: $fa $ff $f4
    push af                                       ; $5b08: $f5
    ccf                                           ; $5b09: $3f
    sub $d1                                       ; $5b0a: $d6 $d1
    jp nc, $d4d3                                  ; $5b0c: $d2 $d3 $d4

    push de                                       ; $5b0f: $d5
    ld a, [$f4ff]                                 ; $5b10: $fa $ff $f4
    push af                                       ; $5b13: $f5
    nop                                           ; $5b14: $00
    ld e, e                                       ; $5b15: $5b
    rst $38                                       ; $5b16: $ff
    ld a, [$5bfb]                                 ; $5b17: $fa $fb $5b
    rst $38                                       ; $5b1a: $ff
    ld a, [$5bfb]                                 ; $5b1b: $fa $fb $5b
    rst $38                                       ; $5b1e: $ff
    ld a, [$5bfb]                                 ; $5b1f: $fa $fb $5b
    rst $38                                       ; $5b22: $ff
    add b                                         ; $5b23: $80
    rst $18                                       ; $5b24: $df
    nop                                           ; $5b25: $00

jr_02f_5b26:
    ld d, l                                       ; $5b26: $55
    rst $38                                       ; $5b27: $ff
    add b                                         ; $5b28: $80
    rst $18                                       ; $5b29: $df
    ld a, [$80ff]                                 ; $5b2a: $fa $ff $80
    rst $18                                       ; $5b2d: $df
    ld a, [$80ff]                                 ; $5b2e: $fa $ff $80
    rst $18                                       ; $5b31: $df
    ld a, [$80ff]                                 ; $5b32: $fa $ff $80
    rst $18                                       ; $5b35: $df
    nop                                           ; $5b36: $00
    ld a, [$80ff]                                 ; $5b37: $fa $ff $80
    rst $18                                       ; $5b3a: $df
    ld a, [$80ff]                                 ; $5b3b: $fa $ff $80
    rst $18                                       ; $5b3e: $df
    ld a, [$80ff]                                 ; $5b3f: $fa $ff $80
    rst $18                                       ; $5b42: $df
    add b                                         ; $5b43: $80
    rst $18                                       ; $5b44: $df
    ld e, e                                       ; $5b45: $5b
    rst $38                                       ; $5b46: $ff
    add b                                         ; $5b47: $80
    add b                                         ; $5b48: $80
    rst $18                                       ; $5b49: $df
    ld a, [$80ff]                                 ; $5b4a: $fa $ff $80
    rst $18                                       ; $5b4d: $df
    ld a, [$80ff]                                 ; $5b4e: $fa $ff $80
    rst $18                                       ; $5b51: $df
    ld c, a                                       ; $5b52: $4f
    ld [$e1fd], a                                 ; $5b53: $ea $fd $e1
    jp nz, $c3c1                                  ; $5b56: $c2 $c1 $c3

    rst $30                                       ; $5b59: $f7
    db $e4                                        ; $5b5a: $e4
    ldh a, [$e2]                                  ; $5b5b: $f0 $e2
    add b                                         ; $5b5d: $80
    rst $18                                       ; $5b5e: $df
    ld c, a                                       ; $5b5f: $4f
    rst $20                                       ; $5b60: $e7
    jp $c4e3                                      ; $5b61: $c3 $e3 $c4


    push bc                                       ; $5b64: $c5
    add [hl]                                      ; $5b65: $86
    ld a, [$bcc0]                                 ; $5b66: $fa $c0 $bc
    cp l                                          ; $5b69: $bd
    or [hl]                                       ; $5b6a: $b6
    ld [c], a                                     ; $5b6b: $e2
    add b                                         ; $5b6c: $80
    rst $18                                       ; $5b6d: $df
    ld h, a                                       ; $5b6e: $67
    db $ec                                        ; $5b6f: $ec
    jp $c6e0                                      ; $5b70: $c3 $e0 $c6


    dec c                                         ; $5b73: $0d
    rst $00                                       ; $5b74: $c7
    jp $bee0                                      ; $5b75: $c3 $e0 $be


    cp a                                          ; $5b78: $bf
    di                                            ; $5b79: $f3
    ld [c], a                                     ; $5b7a: $e2
    add b                                         ; $5b7b: $80
    rst $18                                       ; $5b7c: $df
    ld c, c                                       ; $5b7d: $49
    and $46                                       ; $5b7e: $e6 $46
    db $e3                                        ; $5b80: $e3
    ld [hl], $c3                                  ; $5b81: $36 $c3
    push hl                                       ; $5b83: $e5
    ret nz                                        ; $5b84: $c0

    pop bc                                        ; $5b85: $c1
    ld a, l                                       ; $5b86: $7d
    ldh [$c6], a                                  ; $5b87: $e0 $c6
    rst $00                                       ; $5b89: $c7
    dec a                                         ; $5b8a: $3d
    ld a, [c]                                     ; $5b8b: $f2
    ld c, c                                       ; $5b8c: $49
    ldh a, [rP1]                                  ; $5b8d: $f0 $00
    dec bc                                        ; $5b8f: $0b
    db $e3                                        ; $5b90: $e3
    ld b, [hl]                                    ; $5b91: $46
    ld [c], a                                     ; $5b92: $e2
    jp $f7e3                                      ; $5b93: $c3 $e3 $f7


    db $e3                                        ; $5b96: $e3
    xor $c1                                       ; $5b97: $ee $c1
    add b                                         ; $5b99: $80
    rst $18                                       ; $5b9a: $df
    dec bc                                        ; $5b9b: $0b
    db $e4                                        ; $5b9c: $e4
    sub b                                         ; $5b9d: $90
    pop hl                                        ; $5b9e: $e1
    cp h                                          ; $5b9f: $bc
    add hl, bc                                    ; $5ba0: $09
    ldh [$c3], a                                  ; $5ba1: $e0 $c3
    ld [c], a                                     ; $5ba3: $e2
    sbc l                                         ; $5ba4: $9d
    sbc e                                         ; $5ba5: $9b
    sbc a                                         ; $5ba6: $9f
    sbc l                                         ; $5ba7: $9d
    ld a, l                                       ; $5ba8: $7d
    ld [c], a                                     ; $5ba9: $e2
    ld b, [hl]                                    ; $5baa: $46
    pop hl                                        ; $5bab: $e1
    ld b, [hl]                                    ; $5bac: $46
    add b                                         ; $5bad: $80
    sbc $0b                                       ; $5bae: $de $0b
    db $e4                                        ; $5bb0: $e4
    dec c                                         ; $5bb1: $0d
    ld [c], a                                     ; $5bb2: $e2
    adc h                                         ; $5bb3: $8c
    db $e4                                        ; $5bb4: $e4
    sbc l                                         ; $5bb5: $9d
    sbc d                                         ; $5bb6: $9a
    ld b, [hl]                                    ; $5bb7: $46
    rlca                                          ; $5bb8: $07
    ld b, [hl]                                    ; $5bb9: $46
    sbc d                                         ; $5bba: $9a
    sbc l                                         ; $5bbb: $9d
    ld [hl], h                                    ; $5bbc: $74
    ld [c], a                                     ; $5bbd: $e2
    ld [hl], d                                    ; $5bbe: $72
    jp $d780                                      ; $5bbf: $c3 $80 $d7


    dec bc                                        ; $5bc2: $0b
    and $4a                                       ; $5bc3: $e6 $4a
    ld [c], a                                     ; $5bc5: $e2
    ld a, a                                       ; $5bc6: $7f
    ret nz                                        ; $5bc7: $c0

    pop bc                                        ; $5bc8: $c1
    sbc l                                         ; $5bc9: $9d
    sbc a                                         ; $5bca: $9f
    sbc e                                         ; $5bcb: $9b
    sbc e                                         ; $5bcc: $9b
    sbc e                                         ; $5bcd: $9b
    pop bc                                        ; $5bce: $c1
    ldh [rP1], a                                  ; $5bcf: $e0 $00
    cp a                                          ; $5bd1: $bf
    ld [c], a                                     ; $5bd2: $e2
    ld a, [$72c0]                                 ; $5bd3: $fa $c0 $72
    pop bc                                        ; $5bd6: $c1
    add b                                         ; $5bd7: $80
    reti                                          ; $5bd8: $d9


    dec bc                                        ; $5bd9: $0b
    and $02                                       ; $5bda: $e6 $02
    jp $e186                                      ; $5bdc: $c3 $86 $e1


    ld bc, $00c5                                  ; $5bdf: $01 $c5 $00
    ld a, [hl]                                    ; $5be2: $7e
    pop hl                                        ; $5be3: $e1
    ld h, a                                       ; $5be4: $67
    pop hl                                        ; $5be5: $e1
    dec a                                         ; $5be6: $3d
    db $ed                                        ; $5be7: $ed
    rst $08                                       ; $5be8: $cf
    xor e                                         ; $5be9: $ab
    dec bc                                        ; $5bea: $0b
    db $e4                                        ; $5beb: $e4
    adc b                                         ; $5bec: $88
    ld [c], a                                     ; $5bed: $e2
    add [hl]                                      ; $5bee: $86
    db $e4                                        ; $5bef: $e4
    cp a                                          ; $5bf0: $bf
    add sp, -$80                                  ; $5bf1: $e8 $80
    ld hl, sp-$5e                                 ; $5bf3: $f8 $a2
    or a                                          ; $5bf5: $b7
    xor h                                         ; $5bf6: $ac
    rst $08                                       ; $5bf7: $cf
    xor c                                         ; $5bf8: $a9
    sub e                                         ; $5bf9: $93
    and c                                         ; $5bfa: $a1
    inc d                                         ; $5bfb: $14
    pop bc                                        ; $5bfc: $c1
    adc b                                         ; $5bfd: $88
    jp hl                                         ; $5bfe: $e9


    add c                                         ; $5bff: $81
    and a                                         ; $5c00: $a7
    sbc h                                         ; $5c01: $9c
    ldh [$fe], a                                  ; $5c02: $e0 $fe
    add $00                                       ; $5c04: $c6 $00
    or e                                          ; $5c06: $b3
    ld c, l                                       ; $5c07: $4d
    jp $c014                                      ; $5c08: $c3 $14 $c0


    ld c, c                                       ; $5c0b: $49
    rst $20                                       ; $5c0c: $e7
    add e                                         ; $5c0d: $83
    add a                                         ; $5c0e: $87
    add [hl]                                      ; $5c0f: $86
    dec bc                                        ; $5c10: $0b
    add a                                         ; $5c11: $87
    add e                                         ; $5c12: $83
    ccf                                           ; $5c13: $3f
    and l                                         ; $5c14: $a5
    sbc [hl]                                      ; $5c15: $9e
    cp $c5                                        ; $5c16: $fe $c5
    ld a, d                                       ; $5c18: $7a
    jp z, $895b                                   ; $5c19: $ca $5b $89

    db $dd                                        ; $5c1c: $dd
    and e                                         ; $5c1d: $a3
    cp $90                                        ; $5c1e: $fe $90
    pop bc                                        ; $5c20: $c1
    adc a                                         ; $5c21: $8f
    adc [hl]                                      ; $5c22: $8e
    adc [hl]                                      ; $5c23: $8e
    adc [hl]                                      ; $5c24: $8e
    adc a                                         ; $5c25: $8f
    ld b, [hl]                                    ; $5c26: $46
    ld b, [hl]                                    ; $5c27: $46
    rra                                           ; $5c28: $1f
    adc b                                         ; $5c29: $88
    ld [bc], a                                    ; $5c2a: $02
    rlca                                          ; $5c2b: $07
    ld [bc], a                                    ; $5c2c: $02
    ld l, a                                       ; $5c2d: $6f
    cp a                                          ; $5c2e: $bf
    push hl                                       ; $5c2f: $e5
    cp $c6                                        ; $5c30: $fe $c6
    add b                                         ; $5c32: $80
    ret c                                         ; $5c33: $d8

    db $fc                                        ; $5c34: $fc
    ld d, $a0                                     ; $5c35: $16 $a0
    pop bc                                        ; $5c37: $c1
    push hl                                       ; $5c38: $e5
    adc [hl]                                      ; $5c39: $8e
    adc [hl]                                      ; $5c3a: $8e
    ld b, [hl]                                    ; $5c3b: $46
    ld b, [hl]                                    ; $5c3c: $46
    add c                                         ; $5c3d: $81
    ld [$968f], sp                                ; $5c3e: $08 $8f $96
    rrca                                          ; $5c41: $0f
    ld [bc], a                                    ; $5c42: $02
    adc c                                         ; $5c43: $89
    cp $cb                                        ; $5c44: $fe $cb
    add b                                         ; $5c46: $80
    jp c, $a016                                   ; $5c47: $da $16 $a0

    sbc h                                         ; $5c4a: $9c
    ld hl, sp-$37                                 ; $5c4b: $f8 $c9
    ld h, b                                       ; $5c4d: $60
    pop bc                                        ; $5c4e: $c1
    ld [c], a                                     ; $5c4f: $e2
    add b                                         ; $5c50: $80
    ldh [$81], a                                  ; $5c51: $e0 $81
    ld [$9699], sp                                ; $5c53: $08 $99 $96
    ld [$8033], sp                                ; $5c56: $08 $33 $80
    or b                                          ; $5c59: $b0
    cp $ca                                        ; $5c5a: $fe $ca
    add b                                         ; $5c5c: $80
    ld a, b                                       ; $5c5d: $78
    jp nz, $16c3                                  ; $5c5e: $c2 $c3 $16

    and b                                         ; $5c61: $a0
    ret nz                                        ; $5c62: $c0

    ldh [$fe], a                                  ; $5c63: $e0 $fe
    ld b, d                                       ; $5c65: $42
    db $e4                                        ; $5c66: $e4
    ld b, [hl]                                    ; $5c67: $46
    ld b, [hl]                                    ; $5c68: $46
    ld a, a                                       ; $5c69: $7f
    ld [bc], a                                    ; $5c6a: $02
    rrca                                          ; $5c6b: $0f
    sub [hl]                                      ; $5c6c: $96
    ld [$8205], sp                                ; $5c6d: $08 $05 $82
    cp $c6                                        ; $5c70: $fe $c6
    sbc h                                         ; $5c72: $9c
    or $80                                        ; $5c73: $f6 $80
    cp l                                          ; $5c75: $bd
    xor l                                         ; $5c76: $ad
    ld c, a                                       ; $5c77: $4f
    adc c                                         ; $5c78: $89
    ld d, e                                       ; $5c79: $53
    add d                                         ; $5c7a: $82
    add b                                         ; $5c7b: $80
    ldh [rRP], a                                  ; $5c7c: $e0 $56
    ld b, e                                       ; $5c7e: $43
    db $e3                                        ; $5c7f: $e3
    xor e                                         ; $5c80: $ab
    xor e                                         ; $5c81: $ab
    cp a                                          ; $5c82: $bf
    ld [c], a                                     ; $5c83: $e2
    rrca                                          ; $5c84: $0f
    cp $c3                                        ; $5c85: $fe $c3
    adc a                                         ; $5c87: $8f
    ldh a, [$c0]                                  ; $5c88: $f0 $c0
    ret nc                                        ; $5c8a: $d0

    ld h, l                                       ; $5c8b: $65
    pop hl                                        ; $5c8c: $e1
    cp l                                          ; $5c8d: $bd
    xor l                                         ; $5c8e: $ad
    or [hl]                                       ; $5c8f: $b6
    ld l, c                                       ; $5c90: $69
    ld d, e                                       ; $5c91: $53
    add d                                         ; $5c92: $82
    sbc [hl]                                      ; $5c93: $9e
    ret nz                                        ; $5c94: $c0

    push hl                                       ; $5c95: $e5
    xor h                                         ; $5c96: $ac
    xor h                                         ; $5c97: $ac
    daa                                           ; $5c98: $27
    ld b, [hl]                                    ; $5c99: $46
    ld b, l                                       ; $5c9a: $45
    ld b, c                                       ; $5c9b: $41
    cp a                                          ; $5c9c: $bf
    and $f0                                       ; $5c9d: $e6 $f0
    pop bc                                        ; $5c9f: $c1
    sbc h                                         ; $5ca0: $9c
    ld a, c                                       ; $5ca1: $79
    add h                                         ; $5ca2: $84
    add b                                         ; $5ca3: $80
    ld [hl], a                                    ; $5ca4: $77
    db $fc                                        ; $5ca5: $fc
    nop                                           ; $5ca6: $00
    db $e3                                        ; $5ca7: $e3
    jp $b0c2                                      ; $5ca8: $c3 $c2 $b0


    xor e                                         ; $5cab: $ab
    xor e                                         ; $5cac: $ab
    ld b, e                                       ; $5cad: $43
    ld a, [hl+]                                   ; $5cae: $2a
    ld h, $9d                                     ; $5caf: $26 $9d
    ld a, [hl+]                                   ; $5cb1: $2a
    ld a, [hl]                                    ; $5cb2: $7e
    push hl                                       ; $5cb3: $e5
    adc [hl]                                      ; $5cb4: $8e
    adc [hl]                                      ; $5cb5: $8e
    xor l                                         ; $5cb6: $ad
    cp $a3                                        ; $5cb7: $fe $a3
    xor e                                         ; $5cb9: $ab
    ld c, e                                       ; $5cba: $4b
    adc [hl]                                      ; $5cbb: $8e
    ldh a, [$8c]                                  ; $5cbc: $f0 $8c
    ld l, e                                       ; $5cbe: $6b
    nop                                           ; $5cbf: $00
    db $e3                                        ; $5cc0: $e3
    call nc, Call_02f_42e0                        ; $5cc1: $d4 $e0 $42
    ret nz                                        ; $5cc4: $c0

    xor h                                         ; $5cc5: $ac
    xor h                                         ; $5cc6: $ac
    ld d, [hl]                                    ; $5cc7: $56
    ld a, [hl+]                                   ; $5cc8: $2a
    add a                                         ; $5cc9: $87
    jr nz, jr_02f_5cfc                            ; $5cca: $20 $30

    ld b, d                                       ; $5ccc: $42
    ld a, h                                       ; $5ccd: $7c
    call nz, $e380                                ; $5cce: $c4 $80 $e3
    or $60                                        ; $5cd1: $f6 $60
    xor e                                         ; $5cd3: $ab
    ld c, e                                       ; $5cd4: $4b
    sub a                                         ; $5cd5: $97
    ld hl, sp-$0d                                 ; $5cd6: $f8 $f3
    ld c, l                                       ; $5cd8: $4d
    ret nz                                        ; $5cd9: $c0

    push bc                                       ; $5cda: $c5
    ld bc, $4ac0                                  ; $5cdb: $01 $c0 $4a
    ld h, b                                       ; $5cde: $60
    ld d, l                                       ; $5cdf: $55
    ld a, [hl+]                                   ; $5ce0: $2a
    ld a, [hl+]                                   ; $5ce1: $2a
    ld a, a                                       ; $5ce2: $7f
    ld b, l                                       ; $5ce3: $45
    add c                                         ; $5ce4: $81
    ld [$0001], sp                                ; $5ce5: $08 $01 $00
    ld [$0080], sp                                ; $5ce8: $08 $80 $00
    ld [c], a                                     ; $5ceb: $e2
    ld b, $25                                     ; $5cec: $06 $25
    ldh [$c2], a                                  ; $5cee: $e0 $c2
    jp Jump_02f_4bab                              ; $5cf0: $c3 $ab $4b


    ld e, $49                                     ; $5cf3: $1e $49
    call nc, Call_000_1640                        ; $5cf5: $d4 $40 $16
    ld h, b                                       ; $5cf8: $60
    ld b, b                                       ; $5cf9: $40
    push bc                                       ; $5cfa: $c5
    rst $38                                       ; $5cfb: $ff

jr_02f_5cfc:
    xor l                                         ; $5cfc: $ad
    ld b, [hl]                                    ; $5cfd: $46
    ld c, d                                       ; $5cfe: $4a
    or c                                          ; $5cff: $b1
    ld e, d                                       ; $5d00: $5a
    ld a, $3a                                     ; $5d01: $3e $3a
    ld b, l                                       ; $5d03: $45
    ccf                                           ; $5d04: $3f
    ld a, a                                       ; $5d05: $7f
    ld [bc], a                                    ; $5d06: $02
    rlca                                          ; $5d07: $07
    rlca                                          ; $5d08: $07
    ld [bc], a                                    ; $5d09: $02
    ld a, [hl]                                    ; $5d0a: $7e
    ld a, $a4                                     ; $5d0b: $3e $a4
    ldh a, [rSCX]                                 ; $5d0d: $f0 $43
    jp nz, $28e8                                  ; $5d0f: $c2 $e8 $28

    sub a                                         ; $5d12: $97
    rst $08                                       ; $5d13: $cf
    ld c, b                                       ; $5d14: $48
    call nc, Call_000_1640                        ; $5d15: $d4 $40 $16
    ld h, b                                       ; $5d18: $60
    ret nz                                        ; $5d19: $c0

    and [hl]                                      ; $5d1a: $a6
    ld b, [hl]                                    ; $5d1b: $46
    ld b, l                                       ; $5d1c: $45
    rst $38                                       ; $5d1d: $ff
    ld d, d                                       ; $5d1e: $52
    ld d, [hl]                                    ; $5d1f: $56
    add hl, sp                                    ; $5d20: $39
    xor [hl]                                      ; $5d21: $ae
    ld [hl], $45                                  ; $5d22: $36 $45
    adc h                                         ; $5d24: $8c
    ld a, e                                       ; $5d25: $7b
    ld b, e                                       ; $5d26: $43
    ld a, e                                       ; $5d27: $7b
    adc l                                         ; $5d28: $8d
    ld a, l                                       ; $5d29: $7d
    add h                                         ; $5d2a: $84
    ld a, [hl-]                                   ; $5d2b: $3a
    ld h, c                                       ; $5d2c: $61
    ld l, [hl]                                    ; $5d2d: $6e
    ld b, b                                       ; $5d2e: $40
    add sp, $28                                   ; $5d2f: $e8 $28
    dec [hl]                                      ; $5d31: $35
    ld [hl], $48                                  ; $5d32: $36 $48
    ldh a, [rNR34]                                ; $5d34: $f0 $1e
    ld h, b                                       ; $5d36: $60
    ld d, e                                       ; $5d37: $53
    ld h, c                                       ; $5d38: $61
    ret nc                                        ; $5d39: $d0

    ld h, c                                       ; $5d3a: $61
    ld b, c                                       ; $5d3b: $41
    and e                                         ; $5d3c: $a3
    ld b, l                                       ; $5d3d: $45
    ld c, e                                       ; $5d3e: $4b
    ld b, b                                       ; $5d3f: $40
    dec [hl]                                      ; $5d40: $35
    ld b, e                                       ; $5d41: $43
    inc a                                         ; $5d42: $3c
    ld b, h                                       ; $5d43: $44
    ld a, $88                                     ; $5d44: $3e $88
    or a                                          ; $5d46: $b7
    ld b, c                                       ; $5d47: $41
    ld l, [hl]                                    ; $5d48: $6e
    ld b, b                                       ; $5d49: $40
    add sp, $28                                   ; $5d4a: $e8 $28
    sub a                                         ; $5d4c: $97
    ld e, e                                       ; $5d4d: $5b
    ld a, [hl+]                                   ; $5d4e: $2a
    db $fc                                        ; $5d4f: $fc
    ld a, $e6                                     ; $5d50: $3e $e6
    ld [de], a                                    ; $5d52: $12
    pop bc                                        ; $5d53: $c1
    xor e                                         ; $5d54: $ab
    xor e                                         ; $5d55: $ab
    or b                                          ; $5d56: $b0
    ld b, e                                       ; $5d57: $43
    ld b, d                                       ; $5d58: $42
    dec [hl]                                      ; $5d59: $35
    sbc e                                         ; $5d5a: $9b
    dec [hl]                                      ; $5d5b: $35
    add hl, sp                                    ; $5d5c: $39
    ld bc, $9b83                                  ; $5d5d: $01 $83 $9b
    sbc e                                         ; $5d60: $9b
    ld a, l                                       ; $5d61: $7d
    ld h, b                                       ; $5d62: $60
    db $f4                                        ; $5d63: $f4
    ld b, c                                       ; $5d64: $41
    add $05                                       ; $5d65: $c6 $05
    rst $00                                       ; $5d67: $c7
    dec hl                                        ; $5d68: $2b
    add hl, hl                                    ; $5d69: $29
    ld h, c                                       ; $5d6a: $61
    ld e, e                                       ; $5d6b: $5b
    ld a, [hl+]                                   ; $5d6c: $2a
    ld a, $e3                                     ; $5d6d: $3e $e3
    cp $a0                                        ; $5d6f: $fe $a0
    jp nz, $0021                                  ; $5d71: $c2 $21 $00

    ret nz                                        ; $5d74: $c0

    ccf                                           ; $5d75: $3f
    ld b, [hl]                                    ; $5d76: $46
    ld b, h                                       ; $5d77: $44
    inc a                                         ; $5d78: $3c
    dec [hl]                                      ; $5d79: $35
    ld a, [hl-]                                   ; $5d7a: $3a
    ld b, l                                       ; $5d7b: $45
    jp nz, $fa64                                  ; $5d7c: $c2 $64 $fa

    ld hl, $4300                                  ; $5d7f: $21 $00 $43
    db $eb                                        ; $5d82: $eb
    add b                                         ; $5d83: $80
    ld c, $3e                                     ; $5d84: $0e $3e
    db $e3                                        ; $5d86: $e3
    adc c                                         ; $5d87: $89
    ld l, b                                       ; $5d88: $68
    add b                                         ; $5d89: $80
    ldh [$7f], a                                  ; $5d8a: $e0 $7f
    ld [c], a                                     ; $5d8c: $e2
    db $eb                                        ; $5d8d: $eb
    add c                                         ; $5d8e: $81
    ld b, e                                       ; $5d8f: $43
    rst $28                                       ; $5d90: $ef
    sbc b                                         ; $5d91: $98
    add b                                         ; $5d92: $80
    ld l, a                                       ; $5d93: $6f
    ld a, h                                       ; $5d94: $7c
    jp Jump_02f_6648                              ; $5d95: $c3 $48 $66


    or b                                          ; $5d98: $b0
    ld b, b                                       ; $5d99: $40
    ret nz                                        ; $5d9a: $c0

    ldh [$7f], a                                  ; $5d9b: $e0 $7f
    pop hl                                        ; $5d9d: $e1
    sbc [hl]                                      ; $5d9e: $9e
    ret nz                                        ; $5d9f: $c0

    ld a, h                                       ; $5da0: $7c
    jr nz, jr_02f_5da7                            ; $5da1: $20 $04

    and c                                         ; $5da3: $a1
    ld b, e                                       ; $5da4: $43
    db $eb                                        ; $5da5: $eb
    add b                                         ; $5da6: $80

jr_02f_5da7:
    ld [hl], b                                    ; $5da7: $70
    ld a, h                                       ; $5da8: $7c
    call nz, Call_02f_6542                        ; $5da9: $c4 $42 $65
    ld b, d                                       ; $5dac: $42
    dec [hl]                                      ; $5dad: $35
    add hl, de                                    ; $5dae: $19
    xor [hl]                                      ; $5daf: $ae
    cp [hl]                                       ; $5db0: $be
    jp nz, $a386                                  ; $5db1: $c2 $86 $a3

    call nz, Call_000_00c5                        ; $5db4: $c4 $c5 $00
    ld e, c                                       ; $5db7: $59
    ld b, l                                       ; $5db8: $45
    ld b, l                                       ; $5db9: $45
    rst $08                                       ; $5dba: $cf
    ld [hl+], a                                   ; $5dbb: $22
    inc e                                         ; $5dbc: $1c
    rst $30                                       ; $5dbd: $f7
    ld h, h                                       ; $5dbe: $64
    nop                                           ; $5dbf: $00
    ldh [$35], a                                  ; $5dc0: $e0 $35
    dec [hl]                                      ; $5dc2: $35
    ld b, d                                       ; $5dc3: $42
    add [hl]                                      ; $5dc4: $86
    add e                                         ; $5dc5: $83
    pop bc                                        ; $5dc6: $c1
    ld b, c                                       ; $5dc7: $41
    add b                                         ; $5dc8: $80
    dec de                                        ; $5dc9: $1b
    jr nc, jr_02f_5e29                            ; $5dca: $30 $5d

    jr nz, @-$47                                  ; $5dcc: $20 $b7

    and l                                         ; $5dce: $a5
    dec c                                         ; $5dcf: $0d
    ld hl, $80b6                                  ; $5dd0: $21 $b6 $80
    ld b, l                                       ; $5dd3: $45
    ld a, [hl-]                                   ; $5dd4: $3a
    ld b, b                                       ; $5dd5: $40
    db $e3                                        ; $5dd6: $e3
    ret nz                                        ; $5dd7: $c0

    push bc                                       ; $5dd8: $c5
    jr nz, jr_02f_5e55                            ; $5dd9: $20 $7a

    rrca                                          ; $5ddb: $0f
    add [hl]                                      ; $5ddc: $86
    ld de, $008b                                  ; $5ddd: $11 $8b $00
    ld c, d                                       ; $5de0: $4a
    ld hl, $61b6                                  ; $5de1: $21 $b6 $61
    add hl, sp                                    ; $5de4: $39
    ccf                                           ; $5de5: $3f
    call nz, $c303                                ; $5de6: $c4 $03 $c3
    ld [hl], b                                    ; $5de9: $70
    ld [hl-], a                                   ; $5dea: $32
    ld bc, $1f80                                  ; $5deb: $01 $80 $1f
    add hl, de                                    ; $5dee: $19
    ld b, d                                       ; $5def: $42
    ld [bc], a                                    ; $5df0: $02
    ld b, h                                       ; $5df1: $44
    ld b, l                                       ; $5df2: $45

jr_02f_5df3:
    scf                                           ; $5df3: $37
    scf                                           ; $5df4: $37
    ld b, b                                       ; $5df5: $40
    pop bc                                        ; $5df6: $c1
    ldh [$3e], a                                  ; $5df7: $e0 $3e
    db $e4                                        ; $5df9: $e4
    ld [hl-], a                                   ; $5dfa: $32
    ld bc, $1f80                                  ; $5dfb: $01 $80 $1f
    ld c, e                                       ; $5dfe: $4b
    ld [hl+], a                                   ; $5dff: $22
    adc b                                         ; $5e00: $88
    inc h                                         ; $5e01: $24
    ld b, l                                       ; $5e02: $45
    scf                                           ; $5e03: $37
    dec a                                         ; $5e04: $3d
    add b                                         ; $5e05: $80
    rst $38                                       ; $5e06: $ff
    ldh [$bc], a                                  ; $5e07: $e0 $bc
    ldh [$29], a                                  ; $5e09: $e0 $29
    ld h, c                                       ; $5e0b: $61
    daa                                           ; $5e0c: $27
    ld hl, $1f80                                  ; $5e0d: $21 $80 $1f
    jr jr_02f_5df3                                ; $5e10: $18 $e1

    add [hl]                                      ; $5e12: $86
    ld h, $39                                     ; $5e13: $26 $39
    dec de                                        ; $5e15: $1b
    and c                                         ; $5e16: $a1
    ld h, h                                       ; $5e17: $64
    rst $38                                       ; $5e18: $ff
    ldh [$a2], a                                  ; $5e19: $e0 $a2
    add hl, sp                                    ; $5e1b: $39
    call nz, $8062                                ; $5e1c: $c4 $62 $80
    rra                                           ; $5e1f: $1f
    or b                                          ; $5e20: $b0
    ld bc, $bcfc                                  ; $5e21: $01 $fc $bc
    add h                                         ; $5e24: $84
    db $fd                                        ; $5e25: $fd
    and e                                         ; $5e26: $a3
    ld a, $69                                     ; $5e27: $3e $69

jr_02f_5e29:
    and b                                         ; $5e29: $a0
    dec [hl]                                      ; $5e2a: $35

jr_02f_5e2b:
    dec [hl]                                      ; $5e2b: $35
    and b                                         ; $5e2c: $a0
    inc bc                                        ; $5e2d: $03
    ld l, d                                       ; $5e2e: $6a
    ld a, $c4                                     ; $5e2f: $3e $c4
    ld h, h                                       ; $5e31: $64
    add b                                         ; $5e32: $80
    rra                                           ; $5e33: $1f
    push bc                                       ; $5e34: $c5
    ld [bc], a                                    ; $5e35: $02
    ld d, e                                       ; $5e36: $53
    ld [c], a                                     ; $5e37: $e2
    ret nz                                        ; $5e38: $c0

    db $e4                                        ; $5e39: $e4
    ld a, [hl]                                    ; $5e3a: $7e
    and b                                         ; $5e3b: $a0
    add c                                         ; $5e3c: $81
    dec [hl]                                      ; $5e3d: $35
    ret nz                                        ; $5e3e: $c0

    ldh [$c2], a                                  ; $5e3f: $e0 $c2
    ld [hl+], a                                   ; $5e41: $22
    add b                                         ; $5e42: $80
    db $dd                                        ; $5e43: $dd
    ld e, a                                       ; $5e44: $5f
    inc b                                         ; $5e45: $04
    cp $85                                        ; $5e46: $fe $85
    add b                                         ; $5e48: $80
    pop bc                                        ; $5e49: $c1
    ld l, e                                       ; $5e4a: $6b
    dec b                                         ; $5e4b: $05
    ld [hl], c                                    ; $5e4c: $71
    rst $38                                       ; $5e4d: $ff
    ldh [$6d], a                                  ; $5e4e: $e0 $6d
    ld b, b                                       ; $5e50: $40
    pop hl                                        ; $5e51: $e1
    jr nz, jr_02f_5e77                            ; $5e52: $20 $23

    add b                                         ; $5e54: $80

jr_02f_5e55:
    dec e                                         ; $5e55: $1d
    ld [bc], a                                    ; $5e56: $02
    add sp, -$74                                  ; $5e57: $e8 $8c
    add b                                         ; $5e59: $80
    ld bc, $c09a                                  ; $5e5a: $01 $9a $c0
    push bc                                       ; $5e5d: $c5
    inc b                                         ; $5e5e: $04

jr_02f_5e5f:
    add c                                         ; $5e5f: $81
    ld b, e                                       ; $5e60: $43
    cpl                                           ; $5e61: $2f
    add b                                         ; $5e62: $80
    db $10                                        ; $5e63: $10
    ld [bc], a                                    ; $5e64: $02
    rst $20                                       ; $5e65: $e7
    adc h                                         ; $5e66: $8c
    add c                                         ; $5e67: $81
    ld a, $05                                     ; $5e68: $3e $05
    nop                                           ; $5e6a: $00
    ld bc, $43c3                                  ; $5e6b: $01 $c3 $43
    ld l, $00                                     ; $5e6e: $2e $00
    ld c, h                                       ; $5e70: $4c
    ld [bc], a                                    ; $5e71: $02
    db $eb                                        ; $5e72: $eb
    ld [hl], a                                    ; $5e73: $77
    jr nz, jr_02f_5e2b                            ; $5e74: $20 $b5

    add b                                         ; $5e76: $80

jr_02f_5e77:
    scf                                           ; $5e77: $37
    ld [bc], a                                    ; $5e78: $02
    inc b                                         ; $5e79: $04
    add l                                         ; $5e7a: $85
    nop                                           ; $5e7b: $00
    add b                                         ; $5e7c: $80
    jp c, $e51f                                   ; $5e7d: $da $1f $e5

    ret nz                                        ; $5e80: $c0

    add sp, $51                                   ; $5e81: $e8 $51
    ld b, d                                       ; $5e83: $42
    ld [hl], h                                    ; $5e84: $74
    add c                                         ; $5e85: $81
    ld b, h                                       ; $5e86: $44
    and l                                         ; $5e87: $a5
    add b                                         ; $5e88: $80
    call c, $207f                                 ; $5e89: $dc $7f $20
    nop                                           ; $5e8c: $00
    cp [hl]                                       ; $5e8d: $be
    ld b, h                                       ; $5e8e: $44
    ld [de], a                                    ; $5e8f: $12
    ld h, e                                       ; $5e90: $63
    inc sp                                        ; $5e91: $33
    nop                                           ; $5e92: $00
    ld a, [bc]                                    ; $5e93: $0a
    and b                                         ; $5e94: $a0
    rlca                                          ; $5e95: $07
    and b                                         ; $5e96: $a0
    ld b, h                                       ; $5e97: $44
    and h                                         ; $5e98: $a4
    sub e                                         ; $5e99: $93
    xor a                                         ; $5e9a: $af
    add b                                         ; $5e9b: $80
    rlc b                                         ; $5e9c: $cb $00
    and e                                         ; $5e9e: $a3
    jr nz, jr_02f_5e5f                            ; $5e9f: $20 $be

    inc b                                         ; $5ea1: $04
    ld [de], a                                    ; $5ea2: $12
    ld h, l                                       ; $5ea3: $65
    ld [hl], b                                    ; $5ea4: $70
    ld h, c                                       ; $5ea5: $61
    ld l, l                                       ; $5ea6: $6d
    ld h, b                                       ; $5ea7: $60
    ld b, h                                       ; $5ea8: $44
    and d                                         ; $5ea9: $a2
    sub $8f                                       ; $5eaa: $d6 $8f
    add b                                         ; $5eac: $80
    ld c, $00                                     ; $5ead: $0e $00
    nop                                           ; $5eaf: $00
    rst $20                                       ; $5eb0: $e7
    ld a, c                                       ; $5eb1: $79
    nop                                           ; $5eb2: $00
    rrca                                          ; $5eb3: $0f
    jp nz, $6070                                  ; $5eb4: $c2 $70 $60

    rlca                                          ; $5eb7: $07
    jp $9143                                      ; $5eb8: $c3 $43 $91


    nop                                           ; $5ebb: $00
    or e                                          ; $5ebc: $b3
    ret nz                                        ; $5ebd: $c0

    push hl                                       ; $5ebe: $e5
    nop                                           ; $5ebf: $00
    ld d, l                                       ; $5ec0: $55
    adc l                                         ; $5ec1: $8d
    db $f4                                        ; $5ec2: $f4
    ld a, [c]                                     ; $5ec3: $f2
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    ccf                                           ; $5ec7: $3f
    dec c                                         ; $5ec8: $0d
    dec c                                         ; $5ec9: $0d
    dec c                                         ; $5eca: $0d
    ld c, $0e                                     ; $5ecb: $0e $0e
    ld c, $fa                                     ; $5ecd: $0e $fa
    rst $38                                       ; $5ecf: $ff
    db $f4                                        ; $5ed0: $f4
    rst $30                                       ; $5ed1: $f7
    nop                                           ; $5ed2: $00
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    ld sp, hl                                     ; $5ed9: $f9
    ld hl, sp+$5b                                 ; $5eda: $f8 $5b
    rst $38                                       ; $5edc: $ff
    db $f4                                        ; $5edd: $f4
    ld hl, sp-$5f                                 ; $5ede: $f8 $a1
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    nop                                           ; $5ee3: $00
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    ld b, e                                       ; $5ee6: $43
    rst $38                                       ; $5ee7: $ff
    ld a, [$80ff]                                 ; $5ee8: $fa $ff $80
    rst $18                                       ; $5eeb: $df
    rst $38                                       ; $5eec: $ff
    rst $38                                       ; $5eed: $ff
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    dec a                                         ; $5ef2: $3d
    rst $38                                       ; $5ef3: $ff
    nop                                           ; $5ef4: $00
    ld a, [$80ff]                                 ; $5ef5: $fa $ff $80
    rst $18                                       ; $5ef8: $df
    rst $38                                       ; $5ef9: $ff
    rst $38                                       ; $5efa: $ff
    rst $38                                       ; $5efb: $ff
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    ld e, e                                       ; $5eff: $5b
    rst $38                                       ; $5f00: $ff
    ld a, [$ffff]                                 ; $5f01: $fa $ff $ff
    rst $38                                       ; $5f04: $ff
    nop                                           ; $5f05: $00
    rst $38                                       ; $5f06: $ff
    rst $38                                       ; $5f07: $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    dec a                                         ; $5f0a: $3d
    rst $38                                       ; $5f0b: $ff
    ld a, [$80ff]                                 ; $5f0c: $fa $ff $80
    rst $18                                       ; $5f0f: $df
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    rst $38                                       ; $5f12: $ff
    rst $38                                       ; $5f13: $ff
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    nop                                           ; $5f16: $00
    ld b, e                                       ; $5f17: $43
    rst $38                                       ; $5f18: $ff
    ld b, e                                       ; $5f19: $43
    ld [c], a                                     ; $5f1a: $e2
    db $fd                                        ; $5f1b: $fd
    pop hl                                        ; $5f1c: $e1
    rst $30                                       ; $5f1d: $f7
    and $f2                                       ; $5f1e: $e6 $f2
    db $e4                                        ; $5f20: $e4
    add b                                         ; $5f21: $80
    rst $18                                       ; $5f22: $df
    and a                                         ; $5f23: $a7
    ld [$c0ff], a                                 ; $5f24: $ea $ff $c0
    add e                                         ; $5f27: $83
    ld c, l                                       ; $5f28: $4d
    ld c, l                                       ; $5f29: $4d
    cp e                                          ; $5f2a: $bb
    pop hl                                        ; $5f2b: $e1
    ei                                            ; $5f2c: $fb
    pop hl                                        ; $5f2d: $e1
    rst $38                                       ; $5f2e: $ff
    rst $38                                       ; $5f2f: $ff
    ret nz                                        ; $5f30: $c0

    pop af                                        ; $5f31: $f1
    cp e                                          ; $5f32: $bb
    db $e3                                        ; $5f33: $e3
    dec c                                         ; $5f34: $0d
    ld hl, $3d4d                                  ; $5f35: $21 $4d $3d
    rst $38                                       ; $5f38: $ff
    ld c, c                                       ; $5f39: $49
    add sp, -$3d                                  ; $5f3a: $e8 $c3
    rst $20                                       ; $5f3c: $e7
    ret z                                         ; $5f3d: $c8

    ldh [$2d], a                                  ; $5f3e: $e0 $2d
    db $fd                                        ; $5f40: $fd
    ld [c], a                                     ; $5f41: $e2
    dec l                                         ; $5f42: $2d
    db $e4                                        ; $5f43: $e4
    ld [bc], a                                    ; $5f44: $02
    add b                                         ; $5f45: $80
    db $dd                                        ; $5f46: $dd
    dec c                                         ; $5f47: $0d
    ld d, l                                       ; $5f48: $55
    ld [c], a                                     ; $5f49: $e2
    ld a, [$40e0]                                 ; $5f4a: $fa $e0 $40
    call nz, $e3f8                                ; $5f4d: $c4 $f8 $e3
    cp l                                          ; $5f50: $bd
    ldh [$3d], a                                  ; $5f51: $e0 $3d
    ldh [$60], a                                  ; $5f53: $e0 $60
    sub c                                         ; $5f55: $91
    cp a                                          ; $5f56: $bf
    ret nc                                        ; $5f57: $d0

    db $e3                                        ; $5f58: $e3
    adc d                                         ; $5f59: $8a
    ld [c], a                                     ; $5f5a: $e2
    ld b, [hl]                                    ; $5f5b: $46
    db $e4                                        ; $5f5c: $e4
    cp b                                          ; $5f5d: $b8
    pop bc                                        ; $5f5e: $c1
    ld c, l                                       ; $5f5f: $4d
    dec l                                         ; $5f60: $2d
    ld a, l                                       ; $5f61: $7d
    ldh [rLCDC], a                                ; $5f62: $e0 $40
    ccf                                           ; $5f64: $3f
    ldh [$fb], a                                  ; $5f65: $e0 $fb
    pop de                                        ; $5f67: $d1
    adc h                                         ; $5f68: $8c
    adc $ec                                       ; $5f69: $ce $ec
    and d                                         ; $5f6b: $a2
    sub b                                         ; $5f6c: $90
    pop hl                                        ; $5f6d: $e1
    ld c, c                                       ; $5f6e: $49
    pop hl                                        ; $5f6f: $e1
    dec l                                         ; $5f70: $2d
    adc e                                         ; $5f71: $8b
    pop hl                                        ; $5f72: $e1
    rlca                                          ; $5f73: $07
    ld l, l                                       ; $5f74: $6d
    dec hl                                        ; $5f75: $2b
    dec hl                                        ; $5f76: $2b
    cp [hl]                                       ; $5f77: $be
    ldh [$7d], a                                  ; $5f78: $e0 $7d
    pop hl                                        ; $5f7a: $e1
    ld l, c                                       ; $5f7b: $69
    jp $d780                                      ; $5f7c: $c3 $80 $d7


    adc $c5                                       ; $5f7f: $ce $c5
    db $fc                                        ; $5f81: $fc
    db $d3                                        ; $5f82: $d3
    ld [c], a                                     ; $5f83: $e2
    ld c, h                                       ; $5f84: $4c
    pop hl                                        ; $5f85: $e1
    dec c                                         ; $5f86: $0d
    ld c, l                                       ; $5f87: $4d
    ld c, l                                       ; $5f88: $4d
    ld c, l                                       ; $5f89: $4d
    ld l, l                                       ; $5f8a: $6d
    dec bc                                        ; $5f8b: $0b
    add a                                         ; $5f8c: $87
    dec bc                                        ; $5f8d: $0b
    ld c, e                                       ; $5f8e: $4b
    ld l, e                                       ; $5f8f: $6b
    ld a, l                                       ; $5f90: $7d
    ld [c], a                                     ; $5f91: $e2
    ld [hl-], a                                   ; $5f92: $32
    jp nz, $fd43                                  ; $5f93: $c2 $43 $fd

    ld d, c                                       ; $5f96: $51
    pop bc                                        ; $5f97: $c1
    dec l                                         ; $5f98: $2d
    add hl, de                                    ; $5f99: $19
    dec l                                         ; $5f9a: $2d
    ld bc, $86c3                                  ; $5f9b: $01 $c3 $86
    ldh [$2b], a                                  ; $5f9e: $e0 $2b
    dec bc                                        ; $5fa0: $0b
    rst $38                                       ; $5fa1: $ff
    pop hl                                        ; $5fa2: $e1
    ld a, [hl]                                    ; $5fa3: $7e
    ld [c], a                                     ; $5fa4: $e2
    scf                                           ; $5fa5: $37
    pop bc                                        ; $5fa6: $c1
    or b                                          ; $5fa7: $b0
    dec a                                         ; $5fa8: $3d
    ld a, [$c3e0]                                 ; $5fa9: $fa $e0 $c3
    pop bc                                        ; $5fac: $c1
    jp $e1ff                                      ; $5fad: $c3 $ff $e1


    ld l, l                                       ; $5fb0: $6d
    ld c, e                                       ; $5fb1: $4b
    jp Jump_02f_4be2                              ; $5fb2: $c3 $e2 $4b


    ld [bc], a                                    ; $5fb5: $02
    pop bc                                        ; $5fb6: $c1
    ldh [$2b], a                                  ; $5fb7: $e0 $2b
    ld a, [hl]                                    ; $5fb9: $7e
    db $e4                                        ; $5fba: $e4
    or a                                          ; $5fbb: $b7
    xor [hl]                                      ; $5fbc: $ae
    halt                                          ; $5fbd: $76
    xor c                                         ; $5fbe: $a9
    sbc $c3                                       ; $5fbf: $de $c3
    adc b                                         ; $5fc1: $88
    db $e4                                        ; $5fc2: $e4
    add l                                         ; $5fc3: $85
    push hl                                       ; $5fc4: $e5
    inc e                                         ; $5fc5: $1c
    ret nz                                        ; $5fc6: $c0

    pop hl                                        ; $5fc7: $e1
    ld a, $e0                                     ; $5fc8: $3e $e0
    ld c, e                                       ; $5fca: $4b
    dec bc                                        ; $5fcb: $0b
    dec l                                         ; $5fcc: $2d
    and l                                         ; $5fcd: $a5
    jp $d67a                                      ; $5fce: $c3 $7a $d6


    ld c, b                                       ; $5fd1: $48
    jp $89d8                                      ; $5fd2: $c3 $d8 $89


    add c                                         ; $5fd5: $81
    adc b                                         ; $5fd6: $88
    and $39                                       ; $5fd7: $e6 $39
    ldh [$2d], a                                  ; $5fd9: $e0 $2d
    dec c                                         ; $5fdb: $0d
    ld a, [hl]                                    ; $5fdc: $7e
    ld [c], a                                     ; $5fdd: $e2
    ld c, e                                       ; $5fde: $4b
    ld l, e                                       ; $5fdf: $6b
    ld b, b                                       ; $5fe0: $40
    ret nz                                        ; $5fe1: $c0

    ld [c], a                                     ; $5fe2: $e2
    ld a, e                                       ; $5fe3: $7b
    pop bc                                        ; $5fe4: $c1
    ld [hl], l                                    ; $5fe5: $75
    xor e                                         ; $5fe6: $ab
    ld [hl], $ab                                  ; $5fe7: $36 $ab
    ld [$cfe2], sp                                ; $5fe9: $08 $e2 $cf
    ret nz                                        ; $5fec: $c0

    ld l, l                                       ; $5fed: $6d
    ld c, d                                       ; $5fee: $4a
    pop bc                                        ; $5fef: $c1
    rst $38                                       ; $5ff0: $ff
    dec bc                                        ; $5ff1: $0b
    ld c, e                                       ; $5ff2: $4b
    dec c                                         ; $5ff3: $0d
    inc c                                         ; $5ff4: $0c
    inc c                                         ; $5ff5: $0c
    inc l                                         ; $5ff6: $2c
    dec c                                         ; $5ff7: $0d
    dec c                                         ; $5ff8: $0d
    ld e, $7f                                     ; $5ff9: $1e $7f
    pop hl                                        ; $5ffb: $e1
    ld c, e                                       ; $5ffc: $4b
    ld c, e                                       ; $5ffd: $4b
    ld c, e                                       ; $5ffe: $4b
    ld c, l                                       ; $5fff: $4d
    or d                                          ; $6000: $b2
    pop hl                                        ; $6001: $e1

jr_02f_6002:
    cp [hl]                                       ; $6002: $be
    call nz, $d780                                ; $6003: $c4 $80 $d7
    ld d, c                                       ; $6006: $51
    dec l                                         ; $6007: $2d
    add d                                         ; $6008: $82
    pop hl                                        ; $6009: $e1
    pop bc                                        ; $600a: $c1
    pop hl                                        ; $600b: $e1
    ret z                                         ; $600c: $c8

    ldh [$0b], a                                  ; $600d: $e0 $0b
    ret nz                                        ; $600f: $c0

    pop hl                                        ; $6010: $e1
    inc l                                         ; $6011: $2c
    ld a, a                                       ; $6012: $7f
    ld [c], a                                     ; $6013: $e2
    ld [bc], a                                    ; $6014: $02
    add b                                         ; $6015: $80
    ldh [$0b], a                                  ; $6016: $e0 $0b
    ld sp, hl                                     ; $6018: $f9
    and d                                         ; $6019: $a2
    halt                                          ; $601a: $76
    and d                                         ; $601b: $a2
    ld [hl], $b6                                  ; $601c: $36 $b6
    bit 4, c                                      ; $601e: $cb $61
    sub l                                         ; $6020: $95
    ldh [$83], a                                  ; $6021: $e0 $83
    add e                                         ; $6023: $83
    nop                                           ; $6024: $00
    add b                                         ; $6025: $80
    ld [c], a                                     ; $6026: $e2
    ld a, a                                       ; $6027: $7f
    ld [c], a                                     ; $6028: $e2
    add b                                         ; $6029: $80
    ld [c], a                                     ; $602a: $e2
    cp $c6                                        ; $602b: $fe $c6
    dec a                                         ; $602d: $3d
    sub h                                         ; $602e: $94
    sbc l                                         ; $602f: $9d
    add e                                         ; $6030: $83
    ld d, c                                       ; $6031: $51
    pop hl                                        ; $6032: $e1
    add c                                         ; $6033: $81
    ld [c], a                                     ; $6034: $e2
    ld c, $48                                     ; $6035: $0e $48
    pop bc                                        ; $6037: $c1
    dec c                                         ; $6038: $0d
    ld c, h                                       ; $6039: $4c
    ld c, h                                       ; $603a: $4c
    ccf                                           ; $603b: $3f
    db $e3                                        ; $603c: $e3
    ld bc, $3ee0                                  ; $603d: $01 $e0 $3e
    ldh [$be], a                                  ; $6040: $e0 $be
    pop bc                                        ; $6042: $c1
    jr nc, jr_02f_6002                            ; $6043: $30 $bd

    xor l                                         ; $6045: $ad
    ret nz                                        ; $6046: $c0

    call $e180                                    ; $6047: $cd $80 $e1
    ld b, e                                       ; $604a: $43
    db $e4                                        ; $604b: $e4
    dec c                                         ; $604c: $0d
    ld c, e                                       ; $604d: $4b
    cp a                                          ; $604e: $bf
    pop hl                                        ; $604f: $e1
    ccf                                           ; $6050: $3f
    ldh [rDIV], a                                 ; $6051: $e0 $04
    cp l                                          ; $6053: $bd
    ret nz                                        ; $6054: $c0

    xor h                                         ; $6055: $ac
    ldh [rKEY1], a                                ; $6056: $e0 $4d
    ld a, [hl]                                    ; $6058: $7e
    ret nz                                        ; $6059: $c0

    jp hl                                         ; $605a: $e9


    add e                                         ; $605b: $83
    add b                                         ; $605c: $80
    rst $10                                       ; $605d: $d7
    add b                                         ; $605e: $80
    ld [c], a                                     ; $605f: $e2
    add $e0                                       ; $6060: $c6 $e0
    ld b, $ba                                     ; $6062: $06 $ba
    db $e3                                        ; $6064: $e3
    ld c, e                                       ; $6065: $4b
    dec hl                                        ; $6066: $2b
    cp a                                          ; $6067: $bf
    push hl                                       ; $6068: $e5
    dec l                                         ; $6069: $2d
    ld [c], a                                     ; $606a: $e2
    add b                                         ; $606b: $80
    db $e4                                        ; $606c: $e4
    add b                                         ; $606d: $80
    rst $10                                       ; $606e: $d7
    cp $a3                                        ; $606f: $fe $a3
    inc b                                         ; $6071: $04
    add b                                         ; $6072: $80
    db $e4                                        ; $6073: $e4

jr_02f_6074:
    dec a                                         ; $6074: $3d
    db $e3                                        ; $6075: $e3
    dec hl                                        ; $6076: $2b
    cp a                                          ; $6077: $bf
    push hl                                       ; $6078: $e5
    ret nz                                        ; $6079: $c0

    push hl                                       ; $607a: $e5
    ld a, d                                       ; $607b: $7a
    add b                                         ; $607c: $80
    ld e, h                                       ; $607d: $5c
    ld l, d                                       ; $607e: $6a
    ret nz                                        ; $607f: $c0

    rst $08                                       ; $6080: $cf
    ld a, [bc]                                    ; $6081: $0a
    add b                                         ; $6082: $80
    db $e3                                        ; $6083: $e3
    ld c, l                                       ; $6084: $4d
    cp e                                          ; $6085: $bb
    ret nz                                        ; $6086: $c0

    ld c, d                                       ; $6087: $4a
    add [hl]                                      ; $6088: $86
    and b                                         ; $6089: $a0
    ld a, h                                       ; $608a: $7c
    call nz, $e7c0                                ; $608b: $c4 $c0 $e7
    dec a                                         ; $608e: $3d
    adc e                                         ; $608f: $8b
    pop af                                        ; $6090: $f1
    ld [$acbd], sp                                ; $6091: $08 $bd $ac
    nop                                           ; $6094: $00
    ld [c], a                                     ; $6095: $e2
    ld [bc], a                                    ; $6096: $02
    and d                                         ; $6097: $a2
    ld c, l                                       ; $6098: $4d
    dec bc                                        ; $6099: $0b
    ld a, [bc]                                    ; $609a: $0a
    ld a, [bc]                                    ; $609b: $0a
    rla                                           ; $609c: $17
    ld c, d                                       ; $609d: $4a
    ld c, e                                       ; $609e: $4b
    ld l, e                                       ; $609f: $6b
    db $fc                                        ; $60a0: $fc
    and b                                         ; $60a1: $a0
    inc l                                         ; $60a2: $2c
    ret nz                                        ; $60a3: $c0

    pop hl                                        ; $60a4: $e1
    xor $80                                       ; $60a5: $ee $80
    ld a, [hl]                                    ; $60a7: $7e
    and b                                         ; $60a8: $a0
    ld [c], a                                     ; $60a9: $e2
    ld a, d                                       ; $60aa: $7a
    ld l, [hl]                                    ; $60ab: $6e
    ld c, e                                       ; $60ac: $4b
    ld b, e                                       ; $60ad: $43
    ld [$e480], a                                 ; $60ae: $ea $80 $e4
    rst $38                                       ; $60b1: $ff
    jp nz, $0b0d                                  ; $60b2: $c2 $0d $0b

    ld c, d                                       ; $60b5: $4a
    dec sp                                        ; $60b6: $3b
    ld a, [bc]                                    ; $60b7: $0a
    ld a, [bc]                                    ; $60b8: $0a
    ld a, h                                       ; $60b9: $7c
    jp Jump_02f_6c4c                              ; $60ba: $c3 $4c $6c


    dec c                                         ; $60bd: $0d
    nop                                           ; $60be: $00
    pop bc                                        ; $60bf: $c1
    add b                                         ; $60c0: $80
    ret nz                                        ; $60c1: $c0

    jr nc, jr_02f_6074                            ; $60c2: $30 $b0

    ld b, l                                       ; $60c4: $45
    add sp, $26                                   ; $60c5: $e8 $26
    add b                                         ; $60c7: $80
    add sp, -$40                                  ; $60c8: $e8 $c0
    db $e4                                        ; $60ca: $e4
    ld c, l                                       ; $60cb: $4d
    dec l                                         ; $60cc: $2d
    rst $10                                       ; $60cd: $d7
    ldh [$c1], a                                  ; $60ce: $e0 $c1
    and d                                         ; $60d0: $a2
    ld c, a                                       ; $60d1: $4f
    ld l, e                                       ; $60d2: $6b
    ld a, [bc]                                    ; $60d3: $0a
    ld c, d                                       ; $60d4: $4a
    ld l, e                                       ; $60d5: $6b
    ccf                                           ; $60d6: $3f
    pop hl                                        ; $60d7: $e1
    push af                                       ; $60d8: $f5
    and d                                         ; $60d9: $a2
    ld l, e                                       ; $60da: $6b
    ld [$81a0], a                                 ; $60db: $ea $a0 $81
    ld l, l                                       ; $60de: $6d
    xor d                                         ; $60df: $aa
    ld h, [hl]                                    ; $60e0: $66
    add b                                         ; $60e1: $80
    ld [$6786], a                                 ; $60e2: $ea $86 $67
    ld c, e                                       ; $60e5: $4b
    ld h, d                                       ; $60e6: $62
    cp a                                          ; $60e7: $bf
    ldh [$7e], a                                  ; $60e8: $e0 $7e
    jp nz, $cf6b                                  ; $60ea: $c2 $6b $cf

    ld l, e                                       ; $60ed: $6b
    ld l, e                                       ; $60ee: $6b
    ld c, d                                       ; $60ef: $4a
    dec hl                                        ; $60f0: $2b
    ld a, l                                       ; $60f1: $7d
    ret nz                                        ; $60f2: $c0

    ld hl, sp-$20                                 ; $60f3: $f8 $e0
    ld l, e                                       ; $60f5: $6b
    ld l, e                                       ; $60f6: $6b
    ld h, $fa                                     ; $60f7: $26 $fa
    ldh [$0d], a                                  ; $60f9: $e0 $0d
    ld l, l                                       ; $60fb: $6d
    ld hl, $8c82                                  ; $60fc: $21 $82 $8c
    dec hl                                        ; $60ff: $2b
    ld [$2c73], sp                                ; $6100: $08 $73 $2c
    ld a, [hl]                                    ; $6103: $7e
    call nz, Call_000_1244                        ; $6104: $c4 $44 $12
    pop hl                                        ; $6107: $e1
    push af                                       ; $6108: $f5
    and c                                         ; $6109: $a1
    dec hl                                        ; $610a: $2b
    adc b                                         ; $610b: $88
    add b                                         ; $610c: $80
    add [hl]                                      ; $610d: $86
    ldh [$6e], a                                  ; $610e: $e0 $6e
    and d                                         ; $6110: $a2
    ld l, l                                       ; $6111: $6d
    ld [bc], a                                    ; $6112: $02
    pop hl                                        ; $6113: $e1
    call nz, Call_02f_44fd                        ; $6114: $c4 $fd $44
    dec h                                         ; $6117: $25
    ld h, $0a                                     ; $6118: $26 $0a
    ld a, $b1                                     ; $611a: $3e $b1
    dec bc                                        ; $611c: $0b
    add d                                         ; $611d: $82
    dec sp                                        ; $611e: $3b
    and b                                         ; $611f: $a0
    ld l, e                                       ; $6120: $6b
    ld l, e                                       ; $6121: $6b
    dec b                                         ; $6122: $05

Jump_02f_6123:
    dec hl                                        ; $6123: $2b
    ld b, e                                       ; $6124: $43
    add c                                         ; $6125: $81
    ld l, e                                       ; $6126: $6b
    cp e                                          ; $6127: $bb
    ret nz                                        ; $6128: $c0

    jp $bfe2                                      ; $6129: $c3 $e2 $bf


    ld [c], a                                     ; $612c: $e2
    ld a, [bc]                                    ; $612d: $0a
    ld e, h                                       ; $612e: $5c
    cp $c4                                        ; $612f: $fe $c4
    nop                                           ; $6131: $00
    rst $38                                       ; $6132: $ff
    ld [c], a                                     ; $6133: $e2
    ret nz                                        ; $6134: $c0

    ldh [$09], a                                  ; $6135: $e0 $09
    and c                                         ; $6137: $a1
    ld b, d                                       ; $6138: $42
    ldh [$86], a                                  ; $6139: $e0 $86
    ret nz                                        ; $613b: $c0

    ret nz                                        ; $613c: $c0

    rst $30                                       ; $613d: $f7
    ld c, a                                       ; $613e: $4f
    add hl, hl                                    ; $613f: $29
    adc l                                         ; $6140: $8d
    inc hl                                        ; $6141: $23
    inc c                                         ; $6142: $0c
    cp $c0                                        ; $6143: $fe $c0
    call Call_000_2b61                            ; $6145: $cd $61 $2b
    dec c                                         ; $6148: $0d
    ret nz                                        ; $6149: $c0

    ld [c], a                                     ; $614a: $e2
    add [hl]                                      ; $614b: $86
    jp nz, Jump_000_350d                          ; $614c: $c2 $0d $35

    add b                                         ; $614f: $80
    ld l, e                                       ; $6150: $6b
    inc b                                         ; $6151: $04
    ld a, h                                       ; $6152: $7c
    push bc                                       ; $6153: $c5
    ld [bc], a                                    ; $6154: $02
    ld hl, $492d                                  ; $6155: $21 $2d $49
    ld h, c                                       ; $6158: $61
    ld a, $60                                     ; $6159: $3e $60
    inc a                                         ; $615b: $3c
    pop hl                                        ; $615c: $e1
    add h                                         ; $615d: $84
    ld h, d                                       ; $615e: $62
    ld [bc], a                                    ; $615f: $02
    ld e, h                                       ; $6160: $5c
    inc e                                         ; $6161: $1c
    jr jr_02f_6186                                ; $6162: $18 $22

    ld e, l                                       ; $6164: $5d
    ld h, a                                       ; $6165: $67
    ld c, l                                       ; $6166: $4d
    ld c, l                                       ; $6167: $4d
    dec l                                         ; $6168: $2d
    nop                                           ; $6169: $00
    pop hl                                        ; $616a: $e1
    db $f4                                        ; $616b: $f4
    jp $f7c0                                      ; $616c: $c3 $c0 $f7


    nop                                           ; $616f: $00
    or [hl]                                       ; $6170: $b6

jr_02f_6171:
    dec bc                                        ; $6171: $0b
    or a                                          ; $6172: $b7
    xor b                                         ; $6173: $a8
    ret z                                         ; $6174: $c8

    nop                                           ; $6175: $00
    ld b, a                                       ; $6176: $47

Jump_02f_6177:
    jp nz, $8205                                  ; $6177: $c2 $05 $82

    add h                                         ; $617a: $84
    ld h, b                                       ; $617b: $60
    ld l, a                                       ; $617c: $6f
    inc hl                                        ; $617d: $23
    nop                                           ; $617e: $00
    ld e, e                                       ; $617f: $5b

Call_02f_6180:
    db $10                                        ; $6180: $10
    adc d                                         ; $6181: $8a
    ld h, $d7                                     ; $6182: $26 $d7
    add e                                         ; $6184: $83
    cp l                                          ; $6185: $bd

jr_02f_6186:
    pop bc                                        ; $6186: $c1

Call_02f_6187:
    push bc                                       ; $6187: $c5
    ld h, h                                       ; $6188: $64
    ld c, l                                       ; $6189: $4d
    jp nz, Jump_02f_7844                          ; $618a: $c2 $44 $78

    rra                                           ; $618d: $1f
    ld c, e                                       ; $618e: $4b
    inc b                                         ; $618f: $04
    ld a, [bc]                                    ; $6190: $0a
    ld c, c                                       ; $6191: $49
    nop                                           ; $6192: $00
    ld l, l                                       ; $6193: $6d
    cp [hl]                                       ; $6194: $be
    ret nz                                        ; $6195: $c0

    ld l, e                                       ; $6196: $6b
    add a                                         ; $6197: $87
    and c                                         ; $6198: $a1
    add h                                         ; $6199: $84
    ld l, b                                       ; $619a: $68
    dec a                                         ; $619b: $3d
    ccf                                           ; $619c: $3f
    rrca                                          ; $619d: $0f
    ld [hl+], a                                   ; $619e: $22
    nop                                           ; $619f: $00
    ld d, b                                       ; $61a0: $50
    nop                                           ; $61a1: $00
    ld [bc], a                                    ; $61a2: $02
    ld b, b                                       ; $61a3: $40
    bit 0, b                                      ; $61a4: $cb $40
    pop bc                                        ; $61a6: $c1
    inc h                                         ; $61a7: $24
    inc b                                         ; $61a8: $04
    and c                                         ; $61a9: $a1
    add a                                         ; $61aa: $87
    ld b, d                                       ; $61ab: $42
    add b                                         ; $61ac: $80
    rra                                           ; $61ad: $1f
    ld a, [hl]                                    ; $61ae: $7e
    and d                                         ; $61af: $a2
    nop                                           ; $61b0: $00
    add h                                         ; $61b1: $84
    pop hl                                        ; $61b2: $e1
    jp $fc22                                      ; $61b3: $c3 $22 $fc


    ld h, $7e                                     ; $61b6: $26 $7e
    rst $18                                       ; $61b8: $df
    cp d                                          ; $61b9: $ba
    add hl, hl                                    ; $61ba: $29
    add [hl]                                      ; $61bb: $86
    ld [hl+], a                                   ; $61bc: $22
    inc bc                                        ; $61bd: $03
    jp Jump_02f_4000                              ; $61be: $c3 $00 $40


    nop                                           ; $61c1: $00
    ld [hl], $c0                                  ; $61c2: $36 $c0
    ld a, [hl]                                    ; $61c4: $7e
    sub $80                                       ; $61c5: $d6 $80
    ld c, $55                                     ; $61c7: $0e $55
    ld bc, $407c                                  ; $61c9: $01 $7c $40
    adc h                                         ; $61cc: $8c
    ld b, l                                       ; $61cd: $45
    ld a, h                                       ; $61ce: $7c
    inc hl                                        ; $61cf: $23
    ret nz                                        ; $61d0: $c0

    push hl                                       ; $61d1: $e5
    inc c                                         ; $61d2: $0c
    add b                                         ; $61d3: $80
    call c, Call_02f_6180                         ; $61d4: $dc $80 $61
    dec l                                         ; $61d7: $2d

Jump_02f_61d8:
    dec l                                         ; $61d8: $2d
    jp Jump_02f_4c20                              ; $61d9: $c3 $20 $4c


    inc h                                         ; $61dc: $24
    add hl, bc                                    ; $61dd: $09
    ld b, d                                       ; $61de: $42
    cp $a5                                        ; $61df: $fe $a5
    ld b, b                                       ; $61e1: $40
    pop bc                                        ; $61e2: $c1
    inc bc                                        ; $61e3: $03
    dec a                                         ; $61e4: $3d
    ld a, [$e220]                                 ; $61e5: $fa $20 $e2
    add h                                         ; $61e8: $84
    jr nz, jr_02f_6171                            ; $61e9: $20 $86

    ret nz                                        ; $61eb: $c0

    cp d                                          ; $61ec: $ba
    ld h, e                                       ; $61ed: $63
    dec l                                         ; $61ee: $2d
    add d                                         ; $61ef: $82
    jp $bf60                                      ; $61f0: $c3 $60 $bf


    add c                                         ; $61f3: $81
    ld b, e                                       ; $61f4: $43
    ld sp, $1380                                  ; $61f5: $31 $80 $13
    nop                                           ; $61f8: $00
    inc h                                         ; $61f9: $24
    ld c, a                                       ; $61fa: $4f
    add c                                         ; $61fb: $81
    ld c, l                                       ; $61fc: $4d
    dec l                                         ; $61fd: $2d
    or [hl]                                       ; $61fe: $b6

Jump_02f_61ff:
    add e                                         ; $61ff: $83
    ld b, b                                       ; $6200: $40
    inc b                                         ; $6201: $04
    add d                                         ; $6202: $82
    ld b, h                                       ; $6203: $44
    ld b, l                                       ; $6204: $45
    add b                                         ; $6205: $80
    ld d, $01                                     ; $6206: $16 $01
    ld h, c                                       ; $6208: $61
    ld a, [hl]                                    ; $6209: $7e
    ld [hl+], a                                   ; $620a: $22
    adc h                                         ; $620b: $8c
    ld [bc], a                                    ; $620c: $02
    dec l                                         ; $620d: $2d
    sub c                                         ; $620e: $91
    ld b, h                                       ; $620f: $44
    ld b, b                                       ; $6210: $40
    db $ed                                        ; $6211: $ed
    ld [bc], a                                    ; $6212: $02
    ld b, c                                       ; $6213: $41
    add d                                         ; $6214: $82
    add b                                         ; $6215: $80
    db $db                                        ; $6216: $db
    ld h, [hl]                                    ; $6217: $66
    ld b, d                                       ; $6218: $42
    ld b, a                                       ; $6219: $47
    inc h                                         ; $621a: $24
    ld d, d                                       ; $621b: $52
    ld [hl+], a                                   ; $621c: $22
    ld l, l                                       ; $621d: $6d
    or a                                          ; $621e: $b7
    and h                                         ; $621f: $a4
    nop                                           ; $6220: $00
    ld b, h                                       ; $6221: $44
    add d                                         ; $6222: $82
    xor a                                         ; $6223: $af
    ld bc, $de80                                  ; $6224: $01 $80 $de
    cp $07                                        ; $6227: $fe $07
    ld b, c                                       ; $6229: $41
    pop hl                                        ; $622a: $e1
    db $eb                                        ; $622b: $eb
    ld c, b                                       ; $622c: $48
    dec h                                         ; $622d: $25
    ld b, h                                       ; $622e: $44
    sub e                                         ; $622f: $93
    xor a                                         ; $6230: $af
    nop                                           ; $6231: $00
    cp [hl]                                       ; $6232: $be
    ld [de], a                                    ; $6233: $12
    ld [bc], a                                    ; $6234: $02
    db $e4                                        ; $6235: $e4
    pop de                                        ; $6236: $d1
    call nz, $a307                                ; $6237: $c4 $07 $a3
    push bc                                       ; $623a: $c5
    cp a                                          ; $623b: $bf
    ld [hl], $a5                                  ; $623c: $36 $a5
    ld a, [hl]                                    ; $623e: $7e
    ld hl, $00d4                                  ; $623f: $21 $d4 $00
    nop                                           ; $6242: $00
    adc a                                         ; $6243: $8f
    and d                                         ; $6244: $a2
    ld c, d                                       ; $6245: $4a
    ld h, d                                       ; $6246: $62
    ld [hl], h                                    ; $6247: $74
    add d                                         ; $6248: $82
    ld b, $4e                                     ; $6249: $06 $4e
    nop                                           ; $624b: $00
    cp b                                          ; $624c: $b8
    inc c                                         ; $624d: $0c
    and c                                         ; $624e: $a1
    ld a, [$4fa1]                                 ; $624f: $fa $a1 $4f
    db $f4                                        ; $6252: $f4
    nop                                           ; $6253: $00
    dec a                                         ; $6254: $3d
    ld a, [hl+]                                   ; $6255: $2a
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    ld bc, $ff00                                  ; $6259: $01 $00 $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    rst $38                                       ; $6263: $ff
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    ld [hl], b                                    ; $6269: $70
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    ld a, [$0ff9]                                 ; $6270: $fa $f9 $0f
    rrca                                          ; $6273: $0f
    rrca                                          ; $6274: $0f
    db $e3                                        ; $6275: $e3
    ld a, [$0f01]                                 ; $6276: $fa $01 $0f
    sbc $e0                                       ; $6279: $de $e0
    push hl                                       ; $627b: $e5
    push af                                       ; $627c: $f5
    push bc                                       ; $627d: $c5
    db $e4                                        ; $627e: $e4
    cp [hl]                                       ; $627f: $be
    pop af                                        ; $6280: $f1
    xor d                                         ; $6281: $aa
    ld [$f1e0], a                                 ; $6282: $ea $e0 $f1
    reti                                          ; $6285: $d9


    jp hl                                         ; $6286: $e9


    nop                                           ; $6287: $00
    ld a, l                                       ; $6288: $7d
    ldh a, [$e0]                                  ; $6289: $f0 $e0
    ld [$f0bf], a                                 ; $628b: $ea $bf $f0
    ret z                                         ; $628e: $c8

    db $e3                                        ; $628f: $e3
    cp a                                          ; $6290: $bf
    and $e0                                       ; $6291: $e6 $e0
    or $42                                        ; $6293: $f6 $42
    db $e3                                        ; $6295: $e3
    and b                                         ; $6296: $a0
    or $00                                        ; $6297: $f6 $00
    ldh [rIE], a                                  ; $6299: $e0 $ff
    ccf                                           ; $629b: $3f
    ld sp, hl                                     ; $629c: $f9
    ld e, e                                       ; $629d: $5b
    db $eb                                        ; $629e: $eb
    rst $38                                       ; $629f: $ff
    push de                                       ; $62a0: $d5
    sbc a                                         ; $62a1: $9f
    call nc, $c687                                ; $62a2: $d4 $87 $c6
    ld a, a                                       ; $62a5: $7f
    sub $df                                       ; $62a6: $d6 $df
    and $00                                       ; $62a8: $e6 $00
    ld b, a                                       ; $62aa: $47
    call c, $f4a0                                 ; $62ab: $dc $a0 $f4
    add c                                         ; $62ae: $81
    reti                                          ; $62af: $d9


    ld c, e                                       ; $62b0: $4b
    jp z, $d320                                   ; $62b1: $ca $20 $d3

    ld b, a                                       ; $62b4: $47
    rst $00                                       ; $62b5: $c7
    ldh [$f6], a                                  ; $62b6: $e0 $f6
    db $fc                                        ; $62b8: $fc
    and e                                         ; $62b9: $a3
    nop                                           ; $62ba: $00
    ldh [$b4], a                                  ; $62bb: $e0 $b4
    ld b, a                                       ; $62bd: $47
    or $ec                                        ; $62be: $f6 $ec
    and [hl]                                      ; $62c0: $a6
    add [hl]                                      ; $62c1: $86
    or c                                          ; $62c2: $b1
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    ld bc, $ff00                                  ; $62c6: $01 $00 $ff
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    db $10                                        ; $62d6: $10
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    ei                                            ; $62dd: $fb
    ld a, [$ddf8]                                 ; $62de: $fa $f8 $dd
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    nop                                           ; $62e6: $00
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    inc b                                         ; $62f7: $04
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    ld de, $ffe0                                  ; $62fc: $11 $e0 $ff
    ldh [rIE], a                                  ; $62ff: $e0 $ff
    ldh [rIE], a                                  ; $6301: $e0 $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    ld a, [c]                                     ; $6305: $f2
    pop af                                        ; $6306: $f1
    inc bc                                        ; $6307: $03
    inc de                                        ; $6308: $13
    inc de                                        ; $6309: $13
    ldh [rIE], a                                  ; $630a: $e0 $ff
    rst $38                                       ; $630c: $ff
    rst $28                                       ; $630d: $ef
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    ld [bc], a                                    ; $6312: $02
    nop                                           ; $6313: $00
    rrca                                          ; $6314: $0f
    ld [bc], a                                    ; $6315: $02
    ld [bc], a                                    ; $6316: $02
    nop                                           ; $6317: $00
    rrca                                          ; $6318: $0f
    inc b                                         ; $6319: $04
    ld [bc], a                                    ; $631a: $02
    nop                                           ; $631b: $00
    rrca                                          ; $631c: $0f
    ld b, $02                                     ; $631d: $06 $02
    nop                                           ; $631f: $00
    rrca                                          ; $6320: $0f
    ld [$0002], sp                                ; $6321: $08 $02 $00
    rrca                                          ; $6324: $0f
    ld b, $02                                     ; $6325: $06 $02
    nop                                           ; $6327: $00
    rrca                                          ; $6328: $0f
    inc b                                         ; $6329: $04
    ld [bc], a                                    ; $632a: $02
    nop                                           ; $632b: $00
    rrca                                          ; $632c: $0f
    ld [bc], a                                    ; $632d: $02
    ld [bc], a                                    ; $632e: $02
    nop                                           ; $632f: $00
    rrca                                          ; $6330: $0f
    rst $38                                       ; $6331: $ff
    nop                                           ; $6332: $00
    ld a, [bc]                                    ; $6333: $0a
    rrca                                          ; $6334: $0f
    ld [bc], a                                    ; $6335: $02
    ld e, $19                                     ; $6336: $1e $19
    rrca                                          ; $6338: $0f
    ld [bc], a                                    ; $6339: $02
    ld e, $28                                     ; $633a: $1e $28
    rrca                                          ; $633c: $0f
    ld [bc], a                                    ; $633d: $02
    ld e, $19                                     ; $633e: $1e $19
    rrca                                          ; $6340: $0f
    ld [bc], a                                    ; $6341: $02
    ld e, $ff                                     ; $6342: $1e $ff
    ld bc, $0337                                  ; $6344: $01 $37 $03
    ld de, $3a1e                                  ; $6347: $11 $1e $3a
    inc bc                                        ; $634a: $03
    ld de, $ff1e                                  ; $634b: $11 $1e $ff
    ld [bc], a                                    ; $634e: $02
    dec a                                         ; $634f: $3d
    ld bc, $1e14                                  ; $6350: $01 $14 $1e
    ld a, $01                                     ; $6353: $3e $01
    inc d                                         ; $6355: $14
    ld e, $3f                                     ; $6356: $1e $3f
    ld bc, $1e14                                  ; $6358: $01 $14 $1e
    ld a, $01                                     ; $635b: $3e $01
    inc d                                         ; $635d: $14
    ld e, $ff                                     ; $635e: $1e $ff
    ld bc, $d5fe                                  ; $6360: $01 $fe $d5
    nop                                           ; $6363: $00
    rst $38                                       ; $6364: $ff
    ldh [rTIMA], a                                ; $6365: $e0 $05
    ei                                            ; $6367: $fb
    ldh [$0b], a                                  ; $6368: $e0 $0b
    rst $30                                       ; $636a: $f7
    pop hl                                        ; $636b: $e1
    nop                                           ; $636c: $00
    ld [bc], a                                    ; $636d: $02
    db $eb                                        ; $636e: $eb
    nop                                           ; $636f: $00
    jr z, @-$0f                                   ; $6370: $28 $ef

    ldh [$90], a                                  ; $6372: $e0 $90
    db $eb                                        ; $6374: $eb
    ldh [$f5], a                                  ; $6375: $e0 $f5
    nop                                           ; $6377: $00
    ret z                                         ; $6378: $c8

    ld a, [$e0e5]                                 ; $6379: $fa $e5 $e0
    add b                                         ; $637c: $80
    ld [$00e4], a                                 ; $637d: $ea $e4 $00
    nop                                           ; $6380: $00
    rla                                           ; $6381: $17
    nop                                           ; $6382: $00
    ld bc, $d612                                  ; $6383: $01 $12 $d6
    ld [c], a                                     ; $6386: $e2
    ld d, b                                       ; $6387: $50
    rst $08                                       ; $6388: $cf
    ldh [$e6], a                                  ; $6389: $e0 $e6
    pop hl                                        ; $638b: $e1
    ld [$e2da], a                                 ; $638c: $ea $da $e2
    db $fd                                        ; $638f: $fd
    db $e3                                        ; $6390: $e3
    and $e1                                       ; $6391: $e6 $e1
    ld d, a                                       ; $6393: $57
    cpl                                           ; $6394: $2f
    nop                                           ; $6395: $00
    inc bc                                        ; $6396: $03
    ret nz                                        ; $6397: $c0

    ld [c], a                                     ; $6398: $e2
    and b                                         ; $6399: $a0
    xor a                                         ; $639a: $af
    ldh [$64], a                                  ; $639b: $e0 $64
    xor e                                         ; $639d: $ab
    ldh [$c7], a                                  ; $639e: $e0 $c7
    call nc, Call_000_2000                        ; $63a0: $d4 $00 $20
    ret nz                                        ; $63a3: $c0

    ld [c], a                                     ; $63a4: $e2
    jp z, $9ce1                                   ; $63a5: $ca $e1 $9c

    pop hl                                        ; $63a8: $e1
    ld e, a                                       ; $63a9: $5f
    nop                                           ; $63aa: $00
    ld d, l                                       ; $63ab: $55
    ld b, $96                                     ; $63ac: $06 $96
    ld [c], a                                     ; $63ae: $e2
    ld b, b                                       ; $63af: $40
    adc a                                         ; $63b0: $8f
    ldh [$b2], a                                  ; $63b1: $e0 $b2
    adc e                                         ; $63b3: $8b
    ldh [$a8], a                                  ; $63b4: $e0 $a8
    or $e2                                        ; $63b6: $f6 $e2
    sbc h                                         ; $63b8: $9c
    and h                                         ; $63b9: $a4
    db $e3                                        ; $63ba: $e3
    ld a, h                                       ; $63bb: $7c
    pop hl                                        ; $63bc: $e1
    cp a                                          ; $63bd: $bf
    nop                                           ; $63be: $00
    inc c                                         ; $63bf: $0c
    add b                                         ; $63c0: $80
    ld [c], a                                     ; $63c1: $e2
    adc [hl]                                      ; $63c2: $8e
    pop hl                                        ; $63c3: $e1
    ld e, c                                       ; $63c4: $59
    ld a, [$e06b]                                 ; $63c5: $fa $6b $e0
    ld d, b                                       ; $63c8: $50
    add h                                         ; $63c9: $84
    ld [c], a                                     ; $63ca: $e2
    add b                                         ; $63cb: $80
    nop                                           ; $63cc: $00
    db $ec                                        ; $63cd: $ec
    rst $38                                       ; $63ce: $ff
    ld hl, sp-$01                                 ; $63cf: $f8 $ff
    rst $38                                       ; $63d1: $ff
    ldh [$fe], a                                  ; $63d2: $e0 $fe
    ld b, d                                       ; $63d4: $42
    ld hl, sp-$38                                 ; $63d5: $f8 $c8
    ldh a, [$80]                                  ; $63d7: $f0 $80
    cp a                                          ; $63d9: $bf
    ldh [rNR10], a                                ; $63da: $e0 $10
    ldh [rP1], a                                  ; $63dc: $e0 $00
    ret nz                                        ; $63de: $c0

    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    ld [c], a                                     ; $63e1: $e2
    rst $30                                       ; $63e2: $f7
    rst $38                                       ; $63e3: $ff
    rst $38                                       ; $63e4: $ff
    cp h                                          ; $63e5: $bc
    rst $38                                       ; $63e6: $ff
    add sp, -$01                                  ; $63e7: $e8 $ff
    add c                                         ; $63e9: $81
    cp $08                                        ; $63ea: $fe $08
    db $ed                                        ; $63ec: $ed
    ldh a, [$f8]                                  ; $63ed: $f0 $f8
    push hl                                       ; $63ef: $e5
    jr nz, @-$3e                                  ; $63f0: $20 $c0

    ld [hl], c                                    ; $63f2: $71
    db $e3                                        ; $63f3: $e3
    ld a, a                                       ; $63f4: $7f
    rst $38                                       ; $63f5: $ff
    cpl                                           ; $63f6: $2f
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    ccf                                           ; $63f9: $3f
    rst $38                                       ; $63fa: $ff
    rra                                           ; $63fb: $1f
    rst $38                                       ; $63fc: $ff
    or a                                          ; $63fd: $b7
    ld a, a                                       ; $63fe: $7f
    rra                                           ; $63ff: $1f
    rst $38                                       ; $6400: $ff
    ld a, a                                       ; $6401: $7f
    rrca                                          ; $6402: $0f
    ld a, a                                       ; $6403: $7f
    ld c, a                                       ; $6404: $4f
    ccf                                           ; $6405: $3f
    rlca                                          ; $6406: $07
    rra                                           ; $6407: $1f
    ld [bc], a                                    ; $6408: $02
    rst $38                                       ; $6409: $ff
    rra                                           ; $640a: $1f
    inc de                                        ; $640b: $13
    rrca                                          ; $640c: $0f
    ld bc, $0b0f                                  ; $640d: $01 $0f $0b
    rlca                                          ; $6410: $07
    ld bc, $07ff                                  ; $6411: $01 $ff $07
    nop                                           ; $6414: $00
    rlca                                          ; $6415: $07
    inc b                                         ; $6416: $04
    inc bc                                        ; $6417: $03
    ld e, h                                       ; $6418: $5c
    rst $38                                       ; $6419: $ff
    nop                                           ; $641a: $00
    rst $28                                       ; $641b: $ef
    rst $38                                       ; $641c: $ff
    add c                                         ; $641d: $81
    inc a                                         ; $641e: $3c
    db $10                                        ; $641f: $10
    ld b, h                                       ; $6420: $44
    and $20                                       ; $6421: $e6 $20
    ret nz                                        ; $6423: $c0

    add b                                         ; $6424: $80
    cp a                                          ; $6425: $bf
    ret nz                                        ; $6426: $c0

    nop                                           ; $6427: $00
    ldh [$90], a                                  ; $6428: $e0 $90
    ldh [$80], a                                  ; $642a: $e0 $80
    cp $e0                                        ; $642c: $fe $e0
    nop                                           ; $642e: $00
    ei                                            ; $642f: $fb
    ret nz                                        ; $6430: $c0

    jr nz, @-$5e                                  ; $6431: $20 $a0

    ldh [$7d], a                                  ; $6433: $e0 $7d
    rst $38                                       ; $6435: $ff
    rst $28                                       ; $6436: $ef
    rst $38                                       ; $6437: $ff
    ld a, [hl-]                                   ; $6438: $3a
    ld a, [$e2da]                                 ; $6439: $fa $da $e2
    ld [$c0e3], sp                                ; $643c: $08 $e3 $c0
    and h                                         ; $643f: $a4
    ld hl, sp-$20                                 ; $6440: $f8 $e0
    ld hl, sp-$10                                 ; $6442: $f8 $f0
    rst $38                                       ; $6444: $ff
    db $fc                                        ; $6445: $fc
    ret nc                                        ; $6446: $d0

    db $fc                                        ; $6447: $fc
    ld a, [c]                                     ; $6448: $f2
    db $fc                                        ; $6449: $fc
    ldh [$fc], a                                  ; $644a: $e0 $fc
    or b                                          ; $644c: $b0
    rst $30                                       ; $644d: $f7
    ld hl, sp-$1c                                 ; $644e: $f8 $e4
    ld hl, sp-$80                                 ; $6450: $f8 $80
    push hl                                       ; $6452: $e5
    cp [hl]                                       ; $6453: $be
    rst $38                                       ; $6454: $ff
    db $e3                                        ; $6455: $e3
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    ld b, b                                       ; $6458: $40
    rst $38                                       ; $6459: $ff
    nop                                           ; $645a: $00
    rst $20                                       ; $645b: $e7
    db $fc                                        ; $645c: $fc
    rst $38                                       ; $645d: $ff
    or $ff                                        ; $645e: $f6 $ff
    ld a, a                                       ; $6460: $7f
    db $fc                                        ; $6461: $fc
    rst $38                                       ; $6462: $ff
    ld hl, sp-$02                                 ; $6463: $f8 $fe
    add sp, -$02                                  ; $6465: $e8 $fe
    ld hl, sp-$08                                 ; $6467: $f8 $f8
    ldh [$83], a                                  ; $6469: $e0 $83
    db $f4                                        ; $646b: $f4
    rst $38                                       ; $646c: $ff
    ld a, b                                       ; $646d: $78
    ldh [$cb], a                                  ; $646e: $e0 $cb
    jp $c5e2                                      ; $6470: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $6473: $f0 $e0
    rst $28                                       ; $6475: $ef
    ld [$f1c0], a                                 ; $6476: $ea $c0 $f1
    ld b, b                                       ; $6479: $40
    ldh [$ea], a                                  ; $647a: $e0 $ea
    ret nc                                        ; $647c: $d0

    pop hl                                        ; $647d: $e1
    rst $08                                       ; $647e: $cf
    jp hl                                         ; $647f: $e9


    db $ec                                        ; $6480: $ec
    rst $38                                       ; $6481: $ff
    ld sp, hl                                     ; $6482: $f9
    cp $7f                                        ; $6483: $fe $7f
    and $f8                                       ; $6485: $e6 $f8
    ld c, b                                       ; $6487: $48
    ldh a, [$d0]                                  ; $6488: $f0 $d0
    ldh [$a8], a                                  ; $648a: $e0 $a8
    ld [hl], d                                    ; $648c: $72
    ldh [$fb], a                                  ; $648d: $e0 $fb

jr_02f_648f:
    ld b, b                                       ; $648f: $40

Jump_02f_6490:
    add b                                         ; $6490: $80
    db $10                                        ; $6491: $10
    rst $20                                       ; $6492: $e7
    jp hl                                         ; $6493: $e9


    cp $8e                                        ; $6494: $fe $8e
    ldh a, [$30]                                  ; $6496: $f0 $30
    pop af                                        ; $6498: $f1
    ret nz                                        ; $6499: $c0

    ld hl, sp-$1b                                 ; $649a: $f8 $e5
    ld h, d                                       ; $649c: $62
    pop bc                                        ; $649d: $c1
    db $10                                        ; $649e: $10
    push hl                                       ; $649f: $e5
    cp a                                          ; $64a0: $bf
    ld a, a                                       ; $64a1: $7f
    sbc a                                         ; $64a2: $9f
    ld a, a                                       ; $64a3: $7f
    rst $38                                       ; $64a4: $ff
    ld [hl], a                                    ; $64a5: $77
    ccf                                           ; $64a6: $3f
    ld e, a                                       ; $64a7: $5f
    ccf                                           ; $64a8: $3f
    ld c, a                                       ; $64a9: $4f
    ccf                                           ; $64aa: $3f
    cpl                                           ; $64ab: $2f
    rra                                           ; $64ac: $1f
    rst $30                                       ; $64ad: $f7
    rla                                           ; $64ae: $17
    rrca                                          ; $64af: $0f
    ld [de], a                                    ; $64b0: $12
    inc d                                         ; $64b1: $14
    ldh [$09], a                                  ; $64b2: $e0 $09
    rlca                                          ; $64b4: $07
    rla                                           ; $64b5: $17
    inc bc                                        ; $64b6: $03
    rst $38                                       ; $64b7: $ff
    dec b                                         ; $64b8: $05
    inc bc                                        ; $64b9: $03
    inc b                                         ; $64ba: $04
    inc bc                                        ; $64bb: $03
    ld [bc], a                                    ; $64bc: $02
    ld bc, $ff5c                                  ; $64bd: $01 $5c $ff
    rst $30                                       ; $64c0: $f7
    jp Jump_000_3c3c                              ; $64c1: $c3 $3c $3c


    sbc d                                         ; $64c4: $9a
    add $00                                       ; $64c5: $c6 $00
    nop                                           ; $64c7: $00
    ld b, b                                       ; $64c8: $40
    add b                                         ; $64c9: $80
    rst $18                                       ; $64ca: $df
    ret nz                                        ; $64cb: $c0

    add b                                         ; $64cc: $80
    jr nz, jr_02f_648f                            ; $64cd: $20 $c0

    and b                                         ; $64cf: $a0
    cp $e2                                        ; $64d0: $fe $e2
    ld d, b                                       ; $64d2: $50
    add b                                         ; $64d3: $80
    ldh a, [$a0]                                  ; $64d4: $f0 $a0
    pop hl                                        ; $64d6: $e1
    db $10                                        ; $64d7: $10
    db $e3                                        ; $64d8: $e3
    jp c, $64e1                                   ; $64d9: $da $e1 $64

    pop bc                                        ; $64dc: $c1
    xor b                                         ; $64dd: $a8
    ldh a, [$ea]                                  ; $64de: $f0 $ea
    ldh a, [$df]                                  ; $64e0: $f0 $df
    db $f4                                        ; $64e2: $f4
    ld hl, sp-$2c                                 ; $64e3: $f8 $d4
    ld hl, sp-$0c                                 ; $64e5: $f8 $f4
    inc d                                         ; $64e7: $14
    ldh [$b8], a                                  ; $64e8: $e0 $b8
    ldh a, [$fb]                                  ; $64ea: $f0 $fb
    add sp, -$10                                  ; $64ec: $e8 $f0
    db $10                                        ; $64ee: $10
    jp hl                                         ; $64ef: $e9


    ld e, b                                       ; $64f0: $58
    rst $20                                       ; $64f1: $e7
    ld h, [hl]                                    ; $64f2: $66
    add c                                         ; $64f3: $81
    db $fc                                        ; $64f4: $fc
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $30                                       ; $64f7: $f7
    cp $fd                                        ; $64f8: $fe $fd
    cp $fa                                        ; $64fa: $fe $fa
    db $fc                                        ; $64fc: $fc
    ld [$fc3b], a                                 ; $64fd: $ea $3b $fc
    ld sp, hl                                     ; $6500: $f9
    ld hl, sp-$20                                 ; $6501: $f8 $e0
    db $f4                                        ; $6503: $f4
    rst $38                                       ; $6504: $ff

jr_02f_6505:
    ld c, b                                       ; $6505: $48
    ld [hl+], a                                   ; $6506: $22
    db $eb                                        ; $6507: $eb
    and b                                         ; $6508: $a0
    ldh [$f0], a                                  ; $6509: $e0 $f0
    call z, $fba3                                 ; $650b: $cc $a3 $fb
    push bc                                       ; $650e: $c5
    pop af                                        ; $650f: $f1
    call $cbe3                                    ; $6510: $cd $e3 $cb
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    db $ed                                        ; $6515: $ed
    cp $ff                                        ; $6516: $fe $ff
    cp $f8                                        ; $6518: $fe $f8
    add sp, -$10                                  ; $651a: $e8 $f0
    ld d, d                                       ; $651c: $52
    ldh [$e8], a                                  ; $651d: $e0 $e8
    ret nz                                        ; $651f: $c0

    rst $20                                       ; $6520: $e7
    ret nz                                        ; $6521: $c0

    add b                                         ; $6522: $80
    ld d, b                                       ; $6523: $50
    sub $c0                                       ; $6524: $d6 $c0
    jr nz, @-$39                                  ; $6526: $20 $c5

    cp l                                          ; $6528: $bd
    cp $ee                                        ; $6529: $fe $ee
    jp $b1f0                                      ; $652b: $c3 $f0 $b1


    ld a, [de]                                    ; $652e: $1a
    ldh [$f8], a                                  ; $652f: $e0 $f8
    push hl                                       ; $6531: $e5
    or d                                          ; $6532: $b2
    and c                                         ; $6533: $a1
    ld d, h                                       ; $6534: $54
    and c                                         ; $6535: $a1
    rst $38                                       ; $6536: $ff
    ld a, a                                       ; $6537: $7f
    rst $30                                       ; $6538: $f7
    xor a                                         ; $6539: $af
    ld a, a                                       ; $653a: $7f
    ld a, a                                       ; $653b: $7f
    inc d                                         ; $653c: $14
    ldh [$b7], a                                  ; $653d: $e0 $b7
    rra                                           ; $653f: $1f
    ccf                                           ; $6540: $3f
    rra                                           ; $6541: $1f

Call_02f_6542:
    ld a, a                                       ; $6542: $7f

jr_02f_6543:
    cpl                                           ; $6543: $2f
    rra                                           ; $6544: $1f
    ld e, a                                       ; $6545: $5f
    rrca                                          ; $6546: $0f
    rrca                                          ; $6547: $0f
    rlca                                          ; $6548: $07
    ld a, [bc]                                    ; $6549: $0a
    inc d                                         ; $654a: $14
    ld [c], a                                     ; $654b: $e2
    rst $38                                       ; $654c: $ff
    dec bc                                        ; $654d: $0b
    ld bc, $0103                                  ; $654e: $01 $03 $01
    ld [bc], a                                    ; $6551: $02
    ld bc, $0005                                  ; $6552: $01 $05 $00
    sub l                                         ; $6555: $95
    rst $18                                       ; $6556: $df
    ld [de], a                                    ; $6557: $12
    ldh [rSCY], a                                 ; $6558: $e0 $42
    sub b                                         ; $655a: $90
    ld [$0ca0], a                                 ; $655b: $ea $a0 $0c
    ld [c], a                                     ; $655e: $e2
    cp $e1                                        ; $655f: $fe $e1
    and b                                         ; $6561: $a0
    ld [hl], h                                    ; $6562: $74
    jr nc, jr_02f_6505                            ; $6563: $30 $a0

    jr nz, @-$3b                                  ; $6565: $20 $c3

    ei                                            ; $6567: $fb
    jp c, $b0e6                                   ; $6568: $da $e6 $b0

    ldh [$f4], a                                  ; $656b: $e0 $f4
    rra                                           ; $656d: $1f
    ret nz                                        ; $656e: $c0

    rst $30                                       ; $656f: $f7
    ret c                                         ; $6570: $d8

    ldh a, [$f8]                                  ; $6571: $f0 $f8
    inc d                                         ; $6573: $14
    ldh [$b4], a                                  ; $6574: $e0 $b4
    ldh [$f0], a                                  ; $6576: $e0 $f0
    ldh [$fa], a                                  ; $6578: $e0 $fa
    jr nz, jr_02f_6543                            ; $657a: $20 $c7

    ei                                            ; $657c: $fb
    ld [de], a                                    ; $657d: $12
    ldh [$91], a                                  ; $657e: $e0 $91
    nop                                           ; $6580: $00
    db $fd                                        ; $6581: $fd
    cp $f6                                        ; $6582: $fe $f6
    rst $38                                       ; $6584: $ff
    db $fc                                        ; $6585: $fc
    cp $fc                                        ; $6586: $fe $fc
    db $fd                                        ; $6588: $fd
    ld hl, sp-$14                                 ; $6589: $f8 $ec
    ld hl, sp-$06                                 ; $658b: $f8 $fa
    ld b, $f8                                     ; $658d: $06 $f8
    ldh [$f5], a                                  ; $658f: $e0 $f5
    cp $78                                        ; $6591: $fe $78
    push hl                                       ; $6593: $e5
    inc l                                         ; $6594: $2c
    push af                                       ; $6595: $f5
    nop                                           ; $6596: $00
    and c                                         ; $6597: $a1
    xor $cc                                       ; $6598: $ee $cc
    pop af                                        ; $659a: $f1
    xor d                                         ; $659b: $aa
    rst $38                                       ; $659c: $ff
    ld [bc], a                                    ; $659d: $02
    add c                                         ; $659e: $81
    and b                                         ; $659f: $a0
    pop bc                                        ; $65a0: $c1
    add b                                         ; $65a1: $80
    pop bc                                        ; $65a2: $c1
    add l                                         ; $65a3: $85
    jp $a1ff                                      ; $65a4: $c3 $ff $a1


    jp $8300                                      ; $65a7: $c3 $00 $83


    dec b                                         ; $65aa: $05
    add e                                         ; $65ab: $83
    ld b, b                                       ; $65ac: $40
    add c                                         ; $65ad: $81
    di                                            ; $65ae: $f3
    ld b, c                                       ; $65af: $41
    add b                                         ; $65b0: $80
    ldh [$a0], a                                  ; $65b1: $e0 $a0
    ld [hl], b                                    ; $65b3: $70
    ret nz                                        ; $65b4: $c0

    ret nz                                        ; $65b5: $c0

    ldh [rBCPS], a                                ; $65b6: $e0 $68
    ldh a, [rIE]                                  ; $65b8: $f0 $ff
    pop af                                        ; $65ba: $f1
    db $fc                                        ; $65bb: $fc
    call c, Call_000_1eff                         ; $65bc: $dc $ff $1e
    rst $38                                       ; $65bf: $ff
    add b                                         ; $65c0: $80
    ld e, $fd                                     ; $65c1: $1e $fd
    ld [de], a                                    ; $65c3: $12
    ld [hl], h                                    ; $65c4: $74
    add d                                         ; $65c5: $82
    ld c, b                                       ; $65c6: $48
    nop                                           ; $65c7: $00
    ld bc, $5878                                  ; $65c8: $01 $78 $58
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    ld b, b                                       ; $65cd: $40
    add c                                         ; $65ce: $81
    add d                                         ; $65cf: $82
    pop bc                                        ; $65d0: $c1
    and b                                         ; $65d1: $a0
    pop bc                                        ; $65d2: $c1
    and c                                         ; $65d3: $a1
    jp $85ff                                      ; $65d4: $c3 $ff $85


    jp $8304                                      ; $65d7: $c3 $04 $83


    ld b, c                                       ; $65da: $41
    add e                                         ; $65db: $83
    ld [bc], a                                    ; $65dc: $02
    add c                                         ; $65dd: $81
    or $6d                                        ; $65de: $f6 $6d
    add b                                         ; $65e0: $80
    add b                                         ; $65e1: $80
    and b                                         ; $65e2: $a0
    ld c, h                                       ; $65e3: $4c
    and b                                         ; $65e4: $a0
    ret nc                                        ; $65e5: $d0

    ldh [$64], a                                  ; $65e6: $e0 $64

jr_02f_65e8:
    ldh a, [$ed]                                  ; $65e8: $f0 $ed
    ldh a, [$d0]                                  ; $65ea: $f0 $d0
    ld [c], a                                     ; $65ec: $e2
    ld b, c                                       ; $65ed: $41
    ld e, $c6                                     ; $65ee: $1e $c6
    add c                                         ; $65f0: $81
    nop                                           ; $65f1: $00
    nop                                           ; $65f2: $00
    jr nc, jr_02f_65e8                            ; $65f3: $30 $f3

    nop                                           ; $65f5: $00
    add d                                         ; $65f6: $82
    ret nc                                        ; $65f7: $d0

    ldh [$a0], a                                  ; $65f8: $e0 $a0
    xor c                                         ; $65fa: $a9
    ld [bc], a                                    ; $65fb: $02
    ld bc, $0300                                  ; $65fc: $01 $00 $03
    nop                                           ; $65ff: $00
    ld [hl], c                                    ; $6600: $71
    xor c                                         ; $6601: $a9
    pop af                                        ; $6602: $f1
    ldh [$60], a                                  ; $6603: $e0 $60
    add sp, $30                                   ; $6605: $e8 $30
    add e                                         ; $6607: $83
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    nop                                           ; $6610: $00
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
    nop                                           ; $6621: $00
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
    nop                                           ; $6632: $00
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
    nop                                           ; $6643: $00
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff

Jump_02f_6648:
    ccf                                           ; $6648: $3f
    ld bc, $0000                                  ; $6649: $01 $00 $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    ccf                                           ; $6651: $3f
    ccf                                           ; $6652: $3f
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    jr nz, jr_02f_6678                            ; $6656: $20 $20

    ld d, l                                       ; $6658: $55
    and b                                         ; $6659: $a0
    ld a, [hl]                                    ; $665a: $7e
    rst $38                                       ; $665b: $ff
    ld a, a                                       ; $665c: $7f
    ld [$0825], sp                                ; $665d: $08 $25 $08
    dec h                                         ; $6660: $25
    ld [$0825], sp                                ; $6661: $08 $25 $08
    dec h                                         ; $6664: $25
    inc sp                                        ; $6665: $33
    ld bc, $023f                                  ; $6666: $01 $3f $02
    ld [$4403], a                                 ; $6669: $ea $03 $44
    ld [bc], a                                    ; $666c: $02
    rst $38                                       ; $666d: $ff
    ld h, e                                       ; $666e: $63
    ldh a, [$03]                                  ; $666f: $f0 $03
    ld [$4403], a                                 ; $6671: $ea $03 $44
    ld [bc], a                                    ; $6674: $02
    ld b, b                                       ; $6675: $40
    ld [hl], c                                    ; $6676: $71
    ret nz                                        ; $6677: $c0

jr_02f_6678:
    ld a, [hl]                                    ; $6678: $7e
    call nc, $4400                                ; $6679: $d4 $00 $44
    ld [bc], a                                    ; $667c: $02
    rst $38                                       ; $667d: $ff
    ld a, a                                       ; $667e: $7f
    ld [$4403], a                                 ; $667f: $ea $03 $44
    ld [bc], a                                    ; $6682: $02
    ld b, b                                       ; $6683: $40
    dec d                                         ; $6684: $15
    cp a                                          ; $6685: $bf
    nop                                           ; $6686: $00
    add [hl]                                      ; $6687: $86
    ccf                                           ; $6688: $3f
    inc h                                         ; $6689: $24
    ld l, $40                                     ; $668a: $2e $40
    dec d                                         ; $668c: $15
    ld [$0825], sp                                ; $668d: $08 $25 $08
    dec h                                         ; $6690: $25
    ld [$0825], sp                                ; $6691: $08 $25 $08

jr_02f_6694:
    dec h                                         ; $6694: $25
    push de                                       ; $6695: $d5

jr_02f_6696:
    nop                                           ; $6696: $00
    rst $38                                       ; $6697: $ff
    ldh [rTIMA], a                                ; $6698: $e0 $05
    ei                                            ; $669a: $fb
    ldh [$0b], a                                  ; $669b: $e0 $0b
    rst $30                                       ; $669d: $f7
    pop hl                                        ; $669e: $e1
    nop                                           ; $669f: $00
    ld [bc], a                                    ; $66a0: $02
    db $eb                                        ; $66a1: $eb
    nop                                           ; $66a2: $00
    jr z, jr_02f_6694                             ; $66a3: $28 $ef

    ldh [$90], a                                  ; $66a5: $e0 $90
    db $eb                                        ; $66a7: $eb
    ldh [$f5], a                                  ; $66a8: $e0 $f5
    nop                                           ; $66aa: $00
    ret z                                         ; $66ab: $c8

    cp $e5                                        ; $66ac: $fe $e5
    ldh [$80], a                                  ; $66ae: $e0 $80
    nop                                           ; $66b0: $00
    db $ec                                        ; $66b1: $ec
    rst $38                                       ; $66b2: $ff
    ld hl, sp-$01                                 ; $66b3: $f8 $ff
    ldh [rIE], a                                  ; $66b5: $e0 $ff
    cp $42                                        ; $66b7: $fe $42
    ld hl, sp-$38                                 ; $66b9: $f8 $c8
    ldh a, [$80]                                  ; $66bb: $f0 $80
    ldh [rNR10], a                                ; $66bd: $e0 $10
    rst $28                                       ; $66bf: $ef
    ldh [rP1], a                                  ; $66c0: $e0 $00
    ret nz                                        ; $66c2: $c0

    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    ld [c], a                                     ; $66c5: $e2
    rst $30                                       ; $66c6: $f7
    rst $38                                       ; $66c7: $ff
    cp h                                          ; $66c8: $bc
    ld a, a                                       ; $66c9: $7f
    rst $38                                       ; $66ca: $ff
    add sp, -$01                                  ; $66cb: $e8 $ff
    add c                                         ; $66cd: $81
    cp $08                                        ; $66ce: $fe $08
    ldh a, [$f8]                                  ; $66d0: $f0 $f8
    push hl                                       ; $66d2: $e5
    ei                                            ; $66d3: $fb
    jr nz, jr_02f_6696                            ; $66d4: $20 $c0

    cp a                                          ; $66d6: $bf
    ld [c], a                                     ; $66d7: $e2
    nop                                           ; $66d8: $00
    ld a, a                                       ; $66d9: $7f
    rst $38                                       ; $66da: $ff
    cpl                                           ; $66db: $2f
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    ccf                                           ; $66de: $3f
    rst $38                                       ; $66df: $ff
    rra                                           ; $66e0: $1f
    rst $38                                       ; $66e1: $ff
    or a                                          ; $66e2: $b7
    ld a, a                                       ; $66e3: $7f
    rra                                           ; $66e4: $1f
    ld a, a                                       ; $66e5: $7f
    rst $38                                       ; $66e6: $ff
    rrca                                          ; $66e7: $0f
    ld a, a                                       ; $66e8: $7f
    ld c, a                                       ; $66e9: $4f
    ccf                                           ; $66ea: $3f
    rlca                                          ; $66eb: $07
    rra                                           ; $66ec: $1f
    ld [bc], a                                    ; $66ed: $02
    rra                                           ; $66ee: $1f
    rst $38                                       ; $66ef: $ff
    inc de                                        ; $66f0: $13
    rrca                                          ; $66f1: $0f
    ld bc, $0b0f                                  ; $66f2: $01 $0f $0b
    rlca                                          ; $66f5: $07
    ld bc, $ff07                                  ; $66f6: $01 $07 $ff
    nop                                           ; $66f9: $00
    rlca                                          ; $66fa: $07
    inc b                                         ; $66fb: $04
    inc bc                                        ; $66fc: $03
    ld e, h                                       ; $66fd: $5c
    rst $38                                       ; $66fe: $ff
    nop                                           ; $66ff: $00
    rst $38                                       ; $6700: $ff
    rst $20                                       ; $6701: $e7
    add c                                         ; $6702: $81
    inc a                                         ; $6703: $3c
    db $10                                        ; $6704: $10
    db $d3                                        ; $6705: $d3
    db $e3                                        ; $6706: $e3
    add e                                         ; $6707: $83
    ldh [rNR41], a                                ; $6708: $e0 $20
    ret nz                                        ; $670a: $c0

    add b                                         ; $670b: $80
    cp a                                          ; $670c: $bf
    ret nz                                        ; $670d: $c0

    nop                                           ; $670e: $00
    ldh [$90], a                                  ; $670f: $e0 $90
    ldh [$80], a                                  ; $6711: $e0 $80
    cp $e0                                        ; $6713: $fe $e0
    nop                                           ; $6715: $00
    ei                                            ; $6716: $fb
    ret nz                                        ; $6717: $c0

    jr nz, @-$5e                                  ; $6718: $20 $a0

    ldh [$7d], a                                  ; $671a: $e0 $7d
    rst $38                                       ; $671c: $ff
    rst $28                                       ; $671d: $ef
    rst $38                                       ; $671e: $ff
    ld a, [hl-]                                   ; $671f: $3a
    ld a, [$e2da]                                 ; $6720: $fa $da $e2
    ld [$e063], sp                                ; $6723: $08 $63 $e0
    and h                                         ; $6726: $a4
    ld hl, sp-$20                                 ; $6727: $f8 $e0
    ld hl, sp-$10                                 ; $6729: $f8 $f0
    rst $38                                       ; $672b: $ff
    db $fc                                        ; $672c: $fc
    ret nc                                        ; $672d: $d0

    db $fc                                        ; $672e: $fc
    ld a, [c]                                     ; $672f: $f2
    db $fc                                        ; $6730: $fc
    ldh [$fc], a                                  ; $6731: $e0 $fc
    or b                                          ; $6733: $b0
    rst $30                                       ; $6734: $f7
    ld hl, sp-$1c                                 ; $6735: $f8 $e4
    ld hl, sp-$80                                 ; $6737: $f8 $80
    push hl                                       ; $6739: $e5
    cp [hl]                                       ; $673a: $be
    rst $38                                       ; $673b: $ff
    db $e3                                        ; $673c: $e3
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    ld b, b                                       ; $673f: $40
    rst $38                                       ; $6740: $ff
    nop                                           ; $6741: $00
    rst $20                                       ; $6742: $e7
    db $fc                                        ; $6743: $fc
    rst $38                                       ; $6744: $ff
    or $ff                                        ; $6745: $f6 $ff
    ld a, a                                       ; $6747: $7f
    db $fc                                        ; $6748: $fc
    rst $38                                       ; $6749: $ff
    ld hl, sp-$02                                 ; $674a: $f8 $fe
    add sp, -$02                                  ; $674c: $e8 $fe
    ld hl, sp-$08                                 ; $674e: $f8 $f8
    ldh [$0b], a                                  ; $6750: $e0 $0b
    db $f4                                        ; $6752: $f4
    rst $38                                       ; $6753: $ff
    ld a, b                                       ; $6754: $78
    ldh [$80], a                                  ; $6755: $e0 $80
    and e                                         ; $6757: $a3
    and $23                                       ; $6758: $e6 $23
    pop hl                                        ; $675a: $e1
    ldh a, [$e0]                                  ; $675b: $f0 $e0
    rst $28                                       ; $675d: $ef
    ld [$c0e3], a                                 ; $675e: $ea $e3 $c0
    ld b, b                                       ; $6761: $40
    ldh [$ea], a                                  ; $6762: $e0 $ea
    ret nc                                        ; $6764: $d0

    pop hl                                        ; $6765: $e1
    rst $08                                       ; $6766: $cf
    jp hl                                         ; $6767: $e9


    ld [bc], a                                    ; $6768: $02
    add c                                         ; $6769: $81
    and b                                         ; $676a: $a0
    rst $38                                       ; $676b: $ff
    pop bc                                        ; $676c: $c1
    add b                                         ; $676d: $80
    pop bc                                        ; $676e: $c1
    add l                                         ; $676f: $85
    jp $c3a1                                      ; $6770: $c3 $a1 $c3


    nop                                           ; $6773: $00
    ld a, a                                       ; $6774: $7f
    add e                                         ; $6775: $83
    dec b                                         ; $6776: $05
    add e                                         ; $6777: $83
    ld b, b                                       ; $6778: $40
    add c                                         ; $6779: $81
    ld b, c                                       ; $677a: $41
    add b                                         ; $677b: $80
    ret nz                                        ; $677c: $c0

    ldh [rIE], a                                  ; $677d: $e0 $ff
    ret nz                                        ; $677f: $c0

    and b                                         ; $6780: $a0
    ret nz                                        ; $6781: $c0

    ret nz                                        ; $6782: $c0

    ldh [rBCPS], a                                ; $6783: $e0 $68
    ldh a, [$f1]                                  ; $6785: $f0 $f1
    rst $38                                       ; $6787: $ff
    db $fc                                        ; $6788: $fc
    call c, Call_000_1eff                         ; $6789: $dc $ff $1e
    rst $38                                       ; $678c: $ff
    add b                                         ; $678d: $80
    ld e, $12                                     ; $678e: $1e $12
    ld a, [hl]                                    ; $6790: $7e
    call nc, Call_02f_48c2                        ; $6791: $d4 $c2 $48
    nop                                           ; $6794: $00
    ld bc, $5878                                  ; $6795: $01 $78 $58
    rst $38                                       ; $6798: $ff
    or b                                          ; $6799: $b0
    jp hl                                         ; $679a: $e9


    rst $38                                       ; $679b: $ff
    ld [bc], a                                    ; $679c: $02
    ld bc, $0300                                  ; $679d: $01 $00 $03
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    ld b, b                                       ; $67a2: $40
    ld b, b                                       ; $67a3: $40
    ld a, a                                       ; $67a4: $7f
    nop                                           ; $67a5: $00
    jr nz, jr_02f_67a8                            ; $67a6: $20 $00

jr_02f_67a8:
    db $10                                        ; $67a8: $10
    ld [$0400], sp                                ; $67a9: $08 $00 $04
    or d                                          ; $67ac: $b2
    ret nz                                        ; $67ad: $c0

    ret nz                                        ; $67ae: $c0

    and d                                         ; $67af: $a2
    pop bc                                        ; $67b0: $c1
    ldh a, [rIE]                                  ; $67b1: $f0 $ff
    ldh a, [rIE]                                  ; $67b3: $f0 $ff
    ldh a, [rIE]                                  ; $67b5: $f0 $ff
    ldh a, [rIE]                                  ; $67b7: $f0 $ff
    ldh a, [$f3]                                  ; $67b9: $f0 $f3
    jp $e33c                                      ; $67bb: $c3 $3c $e3


    jp $fd3c                                      ; $67be: $c3 $3c $fd


    ldh [$fe], a                                  ; $67c1: $e0 $fe
    ld [c], a                                     ; $67c3: $e2
    db $f4                                        ; $67c4: $f4
    pop hl                                        ; $67c5: $e1
    dec de                                        ; $67c6: $1b
    rst $20                                       ; $67c7: $e7
    cpl                                           ; $67c8: $2f
    rst $38                                       ; $67c9: $ff
    call c, $f11e                                 ; $67ca: $dc $1e $f1
    inc a                                         ; $67cd: $3c
    db $e3                                        ; $67ce: $e3
    ld a, h                                       ; $67cf: $7c
    jp Jump_02f_7f7c                              ; $67d0: $c3 $7c $7f


    jp $9ce3                                      ; $67d3: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $67d6: $c3 $bc $18


    rst $20                                       ; $67d9: $e7
    ld [c], a                                     ; $67da: $e2
    pop hl                                        ; $67db: $e1
    rst $38                                       ; $67dc: $ff
    ld a, [de]                                    ; $67dd: $1a
    push hl                                       ; $67de: $e5
    ld [de], a                                    ; $67df: $12
    rst $28                                       ; $67e0: $ef
    ld e, a                                       ; $67e1: $5f
    cp b                                          ; $67e2: $b8
    ld a, a                                       ; $67e3: $7f
    ldh [rIE], a                                  ; $67e4: $e0 $ff
    di                                            ; $67e6: $f3
    adc h                                         ; $67e7: $8c
    inc de                                        ; $67e8: $13
    rst $28                                       ; $67e9: $ef
    rra                                           ; $67ea: $1f
    ld hl, sp-$04                                 ; $67eb: $f8 $fc
    ld h, e                                       ; $67ed: $63
    cp a                                          ; $67ee: $bf
    db $fc                                        ; $67ef: $fc
    add e                                         ; $67f0: $83
    db $fc                                        ; $67f1: $fc
    inc bc                                        ; $67f2: $03
    cp h                                          ; $67f3: $bc
    ld b, e                                       ; $67f4: $43
    call nz, $98e1                                ; $67f5: $c4 $e1 $98
    rst $38                                       ; $67f8: $ff
    rst $20                                       ; $67f9: $e7
    db $fc                                        ; $67fa: $fc
    ld b, e                                       ; $67fb: $43
    call c, $f863                                 ; $67fc: $dc $63 $f8
    daa                                           ; $67ff: $27
    ld l, b                                       ; $6800: $68
    rst $38                                       ; $6801: $ff
    or a                                          ; $6802: $b7
    ld l, h                                       ; $6803: $6c
    sub e                                         ; $6804: $93
    db $fc                                        ; $6805: $fc
    inc de                                        ; $6806: $13
    add sp, $17                                   ; $6807: $e8 $17
    ld hl, sp-$01                                 ; $6809: $f8 $ff
    rrca                                          ; $680b: $0f
    sbc $25                                       ; $680c: $de $25
    inc a                                         ; $680e: $3c
    rst $00                                       ; $680f: $c7
    ld a, $c3                                     ; $6810: $3e $c3
    ccf                                           ; $6812: $3f
    rst $38                                       ; $6813: $ff
    jp nz, $c13e                                  ; $6814: $c2 $3e $c1

    jp $c33d                                      ; $6817: $c3 $3d $c3


    dec a                                         ; $681a: $3d
    cp e                                          ; $681b: $bb
    rst $30                                       ; $681c: $f7
    rst $10                                       ; $681d: $d7
    rst $38                                       ; $681e: $ff
    nop                                           ; $681f: $00
    and b                                         ; $6820: $a0
    jp hl                                         ; $6821: $e9


    jp $c3bc                                      ; $6822: $c3 $bc $c3


    cp h                                          ; $6825: $bc
    ret                                           ; $6826: $c9


    ld a, h                                       ; $6827: $7c
    jp nz, $bee0                                  ; $6828: $c2 $e0 $be

    pop hl                                        ; $682b: $e1
    ld b, e                                       ; $682c: $43
    db $f4                                        ; $682d: $f4
    ldh [$a0], a                                  ; $682e: $e0 $a0
    pop hl                                        ; $6830: $e1
    nop                                           ; $6831: $00
    rst $38                                       ; $6832: $ff
    cp a                                          ; $6833: $bf
    db $dd                                        ; $6834: $dd
    db $eb                                        ; $6835: $eb
    rst $38                                       ; $6836: $ff
    nop                                           ; $6837: $00
    ld a, [hl]                                    ; $6838: $7e
    add c                                         ; $6839: $81
    add b                                         ; $683a: $80
    ld [c], a                                     ; $683b: $e2
    db $f4                                        ; $683c: $f4
    rst $38                                       ; $683d: $ff
    rrca                                          ; $683e: $0f
    ldh a, [rNR32]                                ; $683f: $f0 $1c
    db $e3                                        ; $6841: $e3
    inc e                                         ; $6842: $1c
    di                                            ; $6843: $f3
    inc e                                         ; $6844: $1c
    db $e3                                        ; $6845: $e3
    rst $38                                       ; $6846: $ff
    inc c                                         ; $6847: $0c
    di                                            ; $6848: $f3
    ccf                                           ; $6849: $3f
    ret nc                                        ; $684a: $d0

    dec de                                        ; $684b: $1b
    db $f4                                        ; $684c: $f4
    ld d, a                                       ; $684d: $57
    rst $38                                       ; $684e: $ff
    ld e, a                                       ; $684f: $5f
    xor a                                         ; $6850: $af
    db $fc                                        ; $6851: $fc
    ld a, [hl]                                    ; $6852: $7e
    pop af                                        ; $6853: $f1
    cp h                                          ; $6854: $bc
    ld [hl], b                                    ; $6855: $70
    ldh [$fc], a                                  ; $6856: $e0 $fc
    ld [hl], b                                    ; $6858: $70
    ld [c], a                                     ; $6859: $e2
    rst $38                                       ; $685a: $ff
    ei                                            ; $685b: $fb
    rst $38                                       ; $685c: $ff
    sbc $ff                                       ; $685d: $de $ff
    push af                                       ; $685f: $f5
    rst $38                                       ; $6860: $ff
    xor d                                         ; $6861: $aa
    rst $38                                       ; $6862: $ff
    or a                                          ; $6863: $b7
    ld d, a                                       ; $6864: $57
    rst $38                                       ; $6865: $ff
    cp a                                          ; $6866: $bf
    ld h, a                                       ; $6867: $67
    and b                                         ; $6868: $a0
    di                                            ; $6869: $f3
    adc h                                         ; $686a: $8c
    ld hl, sp-$1f                                 ; $686b: $f8 $e1
    ld a, h                                       ; $686d: $7c
    db $fd                                        ; $686e: $fd
    db $e3                                        ; $686f: $e3
    ld [hl], b                                    ; $6870: $70
    rst $20                                       ; $6871: $e7
    rst $28                                       ; $6872: $ef
    rst $38                                       ; $6873: $ff
    rst $10                                       ; $6874: $d7
    ld a, a                                       ; $6875: $7f
    db $ed                                        ; $6876: $ed
    ld a, a                                       ; $6877: $7f
    rst $38                                       ; $6878: $ff
    rst $30                                       ; $6879: $f7
    ccf                                           ; $687a: $3f
    ld l, e                                       ; $687b: $6b
    cp a                                          ; $687c: $bf
    halt                                          ; $687d: $76
    sbc a                                         ; $687e: $9f
    ei                                            ; $687f: $fb
    rra                                           ; $6880: $1f
    rst $38                                       ; $6881: $ff
    push af                                       ; $6882: $f5
    rra                                           ; $6883: $1f
    ld a, [$dd0f]                                 ; $6884: $fa $0f $dd
    daa                                           ; $6887: $27
    ld a, $c7                                     ; $6888: $3e $c7
    di                                            ; $688a: $f3
    ccf                                           ; $688b: $3f
    jp $e06e                                      ; $688c: $c3 $6e $e0


    ld [hl], b                                    ; $688f: $70
    ld [c], a                                     ; $6890: $e2
    db $ed                                        ; $6891: $ed
    rst $38                                       ; $6892: $ff
    db $d3                                        ; $6893: $d3
    inc a                                         ; $6894: $3c
    dec sp                                        ; $6895: $3b
    ld a, [hl]                                    ; $6896: $7e
    add c                                         ; $6897: $81
    ld [hl], b                                    ; $6898: $70
    jp hl                                         ; $6899: $e9


    db $e3                                        ; $689a: $e3
    sbc h                                         ; $689b: $9c
    cp h                                          ; $689c: $bc
    inc d                                         ; $689d: $14
    ldh [rBCPD], a                                ; $689e: $e0 $69
    ldh [$eb], a                                  ; $68a0: $e0 $eb
    jp $1063                                      ; $68a2: $c3 $63 $10


    ldh [$57], a                                  ; $68a5: $e0 $57
    and h                                         ; $68a7: $a4
    ldh [$7d], a                                  ; $68a8: $e0 $7d
    rst $38                                       ; $68aa: $ff
    db $d3                                        ; $68ab: $d3
    ld sp, hl                                     ; $68ac: $f9
    rst $28                                       ; $68ad: $ef
    ld c, d                                       ; $68ae: $4a
    pop hl                                        ; $68af: $e1
    db $e4                                        ; $68b0: $e4
    pop bc                                        ; $68b1: $c1
    cp e                                          ; $68b2: $bb
    db $f4                                        ; $68b3: $f4
    ld e, e                                       ; $68b4: $5b
    db $f4                                        ; $68b5: $f4
    xor h                                         ; $68b6: $ac
    rst $38                                       ; $68b7: $ff
    di                                            ; $68b8: $f3
    ld l, h                                       ; $68b9: $6c
    di                                            ; $68ba: $f3
    cp h                                          ; $68bb: $bc
    db $e3                                        ; $68bc: $e3
    ld l, h                                       ; $68bd: $6c
    di                                            ; $68be: $f3
    cp e                                          ; $68bf: $bb
    rst $38                                       ; $68c0: $ff
    db $f4                                        ; $68c1: $f4
    db $db                                        ; $68c2: $db
    db $f4                                        ; $68c3: $f4
    cp l                                          ; $68c4: $bd
    jp $ffe7                                      ; $68c5: $c3 $e7 $ff


    cp d                                          ; $68c8: $ba
    cp a                                          ; $68c9: $bf
    rst $38                                       ; $68ca: $ff
    ld d, l                                       ; $68cb: $55
    rst $38                                       ; $68cc: $ff
    xor e                                         ; $68cd: $ab
    rst $38                                       ; $68ce: $ff
    cp $58                                        ; $68cf: $fe $58
    and b                                         ; $68d1: $a0
    rst $38                                       ; $68d2: $ff
    rst $28                                       ; $68d3: $ef
    rst $38                                       ; $68d4: $ff
    db $db                                        ; $68d5: $db
    rst $38                                       ; $68d6: $ff
    ld l, a                                       ; $68d7: $6f
    adc [hl]                                      ; $68d8: $8e
    ldh [$af], a                                  ; $68d9: $e0 $af
    ld a, a                                       ; $68db: $7f
    or l                                          ; $68dc: $b5
    rst $08                                       ; $68dd: $cf
    ld a, a                                       ; $68de: $7f
    rst $28                                       ; $68df: $ef
    ld a, a                                       ; $68e0: $7f
    ld d, a                                       ; $68e1: $57
    ld b, [hl]                                    ; $68e2: $46
    and b                                         ; $68e3: $a0
    ret nc                                        ; $68e4: $d0

    jp $e718                                      ; $68e5: $c3 $18 $e7


    cp $f8                                        ; $68e8: $fe $f8
    push hl                                       ; $68ea: $e5
    ld d, a                                       ; $68eb: $57
    rst $38                                       ; $68ec: $ff
    xor h                                         ; $68ed: $ac
    rst $38                                       ; $68ee: $ff
    ld [hl], h                                    ; $68ef: $74
    ei                                            ; $68f0: $fb
    cp b                                          ; $68f1: $b8
    ld l, a                                       ; $68f2: $6f
    rst $20                                       ; $68f3: $e7
    ld e, b                                       ; $68f4: $58
    rst $20                                       ; $68f5: $e7
    db $fc                                        ; $68f6: $fc
    dec b                                         ; $68f7: $05
    ldh [$98], a                                  ; $68f8: $e0 $98
    rst $20                                       ; $68fa: $e7
    ld b, b                                       ; $68fb: $40
    rst $20                                       ; $68fc: $e7
    rst $18                                       ; $68fd: $df
    cp d                                          ; $68fe: $ba
    rst $38                                       ; $68ff: $ff
    db $ec                                        ; $6900: $ec
    di                                            ; $6901: $f3
    sbc b                                         ; $6902: $98
    ldh [$e0], a                                  ; $6903: $e0 $e0
    cp d                                          ; $6905: $ba
    rst $38                                       ; $6906: $ff
    jp hl                                         ; $6907: $e9


    ld l, h                                       ; $6908: $6c
    ld hl, sp-$20                                 ; $6909: $f8 $e0
    ret z                                         ; $690b: $c8

    push hl                                       ; $690c: $e5
    rst $28                                       ; $690d: $ef
    ld h, $e0                                     ; $690e: $26 $e0
    ld l, l                                       ; $6910: $6d
    rst $38                                       ; $6911: $ff
    scf                                           ; $6912: $37
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    dec hl                                        ; $6915: $2b
    rst $38                                       ; $6916: $ff
    ld d, $ff                                     ; $6917: $16 $ff
    dec sp                                        ; $6919: $3b
    rst $38                                       ; $691a: $ff
    dec d                                         ; $691b: $15
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    ld a, [de]                                    ; $691e: $1a
    rst $28                                       ; $691f: $ef
    dec [hl]                                      ; $6920: $35
    rst $08                                       ; $6921: $cf
    ld a, $c7                                     ; $6922: $3e $c7
    dec de                                        ; $6924: $1b
    rst $38                                       ; $6925: $ff
    rst $20                                       ; $6926: $e7
    ld a, [de]                                    ; $6927: $1a
    rst $20                                       ; $6928: $e7
    dec a                                         ; $6929: $3d
    jp $c33f                                      ; $692a: $c3 $3f $c3


    add hl, de                                    ; $692d: $19
    db $db                                        ; $692e: $db
    rst $20                                       ; $692f: $e7
    rst $10                                       ; $6930: $d7
    db $e4                                        ; $6931: $e4
    add b                                         ; $6932: $80
    inc l                                         ; $6933: $2c
    db $d3                                        ; $6934: $d3
    and b                                         ; $6935: $a0
    rst $20                                       ; $6936: $e7
    sbc b                                         ; $6937: $98
    rst $20                                       ; $6938: $e7
    adc d                                         ; $6939: $8a
    ld b, d                                       ; $693a: $42
    pop hl                                        ; $693b: $e1
    ret c                                         ; $693c: $d8

    and b                                         ; $693d: $a0
    ldh [$bc], a                                  ; $693e: $e0 $bc
    sbc $c0                                       ; $6940: $de $c0
    or b                                          ; $6942: $b0
    pop hl                                        ; $6943: $e1
    ld b, b                                       ; $6944: $40
    pop hl                                        ; $6945: $e1
    set 7, [hl]                                   ; $6946: $cb $fe
    ld a, b                                       ; $6948: $78
    and $b0                                       ; $6949: $e6 $b0
    rst $38                                       ; $694b: $ff
    ld d, h                                       ; $694c: $54
    ei                                            ; $694d: $fb
    and h                                         ; $694e: $a4
    ei                                            ; $694f: $fb
    ld a, b                                       ; $6950: $78
    rst $38                                       ; $6951: $ff
    rst $30                                       ; $6952: $f7
    xor b                                         ; $6953: $a8
    rst $30                                       ; $6954: $f7
    ld h, h                                       ; $6955: $64
    ei                                            ; $6956: $fb
    or h                                          ; $6957: $b4
    ei                                            ; $6958: $fb
    ret nc                                        ; $6959: $d0

    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    pop bc                                        ; $695c: $c1
    rst $38                                       ; $695d: $ff
    or a                                          ; $695e: $b7
    rst $38                                       ; $695f: $ff
    ld e, l                                       ; $6960: $5d
    rst $38                                       ; $6961: $ff
    ld [$3e54], a                                 ; $6962: $ea $54 $3e
    ldh [$3a], a                                  ; $6965: $e0 $3a
    add c                                         ; $6967: $81
    rst $38                                       ; $6968: $ff
    sub h                                         ; $6969: $94
    add b                                         ; $696a: $80
    ld d, a                                       ; $696b: $57
    ld a, $e0                                     ; $696c: $3e $e0
    dec [hl]                                      ; $696e: $35
    ld a, [hl-]                                   ; $696f: $3a
    ldh [$f6], a                                  ; $6970: $e0 $f6
    xor [hl]                                      ; $6972: $ae
    ret nz                                        ; $6973: $c0

    rst $38                                       ; $6974: $ff
    rst $10                                       ; $6975: $d7
    ld hl, $ff83                                  ; $6976: $21 $83 $ff
    db $dd                                        ; $6979: $dd
    rst $38                                       ; $697a: $ff
    ld [hl], a                                    ; $697b: $77
    ld e, h                                       ; $697c: $5c
    sbc h                                         ; $697d: $9c
    ret nz                                        ; $697e: $c0

    call c, $afe1                                 ; $697f: $dc $e1 $af
    rst $38                                       ; $6982: $ff
    rst $18                                       ; $6983: $df
    adc $e0                                       ; $6984: $ce $e0
    rst $18                                       ; $6986: $df
    ld hl, sp-$1a                                 ; $6987: $f8 $e6
    inc d                                         ; $6989: $14
    rst $38                                       ; $698a: $ff
    push hl                                       ; $698b: $e5
    sbc $e5                                       ; $698c: $de $e5
    ld e, a                                       ; $698e: $5f
    jp z, $6fe0                                   ; $698f: $ca $e0 $6f

    add $e0                                       ; $6992: $c6 $e0
    ld hl, sp-$1b                                 ; $6994: $f8 $e5
    ldh [$63], a                                  ; $6996: $e0 $63
    jp z, $e1f8                                   ; $6998: $ca $f8 $e1

    ld e, a                                       ; $699b: $5f
    sub [hl]                                      ; $699c: $96
    ldh [$5f], a                                  ; $699d: $e0 $5f
    ret nc                                        ; $699f: $d0

    and $c7                                       ; $69a0: $e6 $c7
    push hl                                       ; $69a2: $e5
    ld l, c                                       ; $69a3: $69
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    call nc, $81fc                                ; $69a6: $d4 $fc $81
    ldh a, [rDMA]                                 ; $69a9: $f0 $46
    ldh [$8b], a                                  ; $69ab: $e0 $8b
    ret nz                                        ; $69ad: $c0

    ld a, a                                       ; $69ae: $7f
    ld d, a                                       ; $69af: $57
    ret nz                                        ; $69b0: $c0

    dec e                                         ; $69b1: $1d
    add b                                         ; $69b2: $80
    xor a                                         ; $69b3: $af
    add b                                         ; $69b4: $80
    db $fd                                        ; $69b5: $fd
    xor a                                         ; $69b6: $af
    ld h, b                                       ; $69b7: $60
    db $fd                                        ; $69b8: $fd
    jp c, $8048                                   ; $69b9: $da $48 $80

    and b                                         ; $69bc: $a0
    db $fc                                        ; $69bd: $fc
    ld b, c                                       ; $69be: $41
    ldh a, [$0b]                                  ; $69bf: $f0 $0b
    ret nz                                        ; $69c1: $c0

    ei                                            ; $69c2: $fb
    ld d, $00                                     ; $69c3: $16 $00
    ld hl, sp-$1f                                 ; $69c5: $f8 $e1
    ld a, [bc]                                    ; $69c7: $0a
    ret nz                                        ; $69c8: $c0

    rla                                           ; $69c9: $17
    nop                                           ; $69ca: $00
    cp l                                          ; $69cb: $bd
    rst $30                                       ; $69cc: $f7
    nop                                           ; $69cd: $00
    ld l, a                                       ; $69ce: $6f
    nop                                           ; $69cf: $00
    push de                                       ; $69d0: $d5
    ld h, b                                       ; $69d1: $60
    nop                                           ; $69d2: $00
    ld hl, sp-$02                                 ; $69d3: $f8 $fe
    db $f4                                        ; $69d5: $f4
    rst $38                                       ; $69d6: $ff
    cp $d8                                        ; $69d7: $fe $d8
    db $fc                                        ; $69d9: $fc
    pop af                                        ; $69da: $f1
    db $fc                                        ; $69db: $fc
    ld [c], a                                     ; $69dc: $e2
    ld hl, sp-$2f                                 ; $69dd: $f8 $d1
    rst $38                                       ; $69df: $ff
    ld hl, sp+$63                                 ; $69e0: $f8 $63
    ldh a, [$c6]                                  ; $69e2: $f0 $c6
    ldh a, [$8b]                                  ; $69e4: $f0 $8b
    ldh [rBGP], a                                 ; $69e6: $e0 $47
    rst $38                                       ; $69e8: $ff
    ldh [$8f], a                                  ; $69e9: $e0 $8f
    ret nz                                        ; $69eb: $c0

    dec de                                        ; $69ec: $1b
    ret nz                                        ; $69ed: $c0

    cpl                                           ; $69ee: $2f
    add b                                         ; $69ef: $80
    rra                                           ; $69f0: $1f
    rst $38                                       ; $69f1: $ff
    add b                                         ; $69f2: $80
    scf                                           ; $69f3: $37
    nop                                           ; $69f4: $00
    ld e, a                                       ; $69f5: $5f
    nop                                           ; $69f6: $00
    inc h                                         ; $69f7: $24
    inc a                                         ; $69f8: $3c
    ld b, d                                       ; $69f9: $42
    cp a                                          ; $69fa: $bf
    nop                                           ; $69fb: $00
    xor l                                         ; $69fc: $ad
    nop                                           ; $69fd: $00
    rst $30                                       ; $69fe: $f7
    nop                                           ; $69ff: $00
    ld a, l                                       ; $6a00: $7d
    jp nc, $ffe2                                  ; $6a01: $d2 $e2 $ff

    push af                                       ; $6a04: $f5
    nop                                           ; $6a05: $00
    db $ec                                        ; $6a06: $ec
    pop hl                                        ; $6a07: $e1
    cp a                                          ; $6a08: $bf
    db $e4                                        ; $6a09: $e4
    ldh [$2f], a                                  ; $6a0a: $e0 $2f
    add b                                         ; $6a0c: $80
    cp a                                          ; $6a0d: $bf
    add b                                         ; $6a0e: $80
    rst $18                                       ; $6a0f: $df
    ld d, a                                       ; $6a10: $57
    nop                                           ; $6a11: $00
    ccf                                           ; $6a12: $3f
    nop                                           ; $6a13: $00
    push af                                       ; $6a14: $f5
    ld a, $e0                                     ; $6a15: $3e $e0
    ld b, l                                       ; $6a17: $45
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    nop                                           ; $6a1a: $00
    rst $00                                       ; $6a1b: $c7
    stop                                          ; $6a1c: $10 $00
    ld l, l                                       ; $6a1e: $6d
    nop                                           ; $6a1f: $00
    cp e                                          ; $6a20: $bb
    nop                                           ; $6a21: $00
    rst $38                                       ; $6a22: $ff
    rst $28                                       ; $6a23: $ef
    nop                                           ; $6a24: $00
    rst $20                                       ; $6a25: $e7
    ldh a, [rSCX]                                 ; $6a26: $f0 $43
    ldh a, [$e5]                                  ; $6a28: $f0 $e5
    ldh a, [rIE]                                  ; $6a2a: $f0 $ff
    ld b, a                                       ; $6a2c: $47
    ldh [$8a], a                                  ; $6a2d: $e0 $8a
    ldh [$c7], a                                  ; $6a2f: $e0 $c7
    ldh [$a5], a                                  ; $6a31: $e0 $a5
    ldh a, [$eb]                                  ; $6a33: $f0 $eb
    jp $30f0                                      ; $6a35: $c3 $f0 $30


    ld h, e                                       ; $6a38: $63
    rst $18                                       ; $6a39: $df
    ld l, $60                                     ; $6a3a: $2e $60
    xor l                                         ; $6a3c: $ad
    rst $38                                       ; $6a3d: $ff
    ld b, d                                       ; $6a3e: $42
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    nop                                           ; $6a41: $00
    jp $fffc                                      ; $6a42: $c3 $fc $ff


    ld a, [$fcff]                                 ; $6a45: $fa $ff $fc
    sbc $8c                                       ; $6a48: $de $8c
    ldh [$f8], a                                  ; $6a4a: $e0 $f8
    cp $ec                                        ; $6a4c: $fe $ec
    cp $f6                                        ; $6a4e: $fe $f6
    ldh [rIE], a                                  ; $6a50: $e0 $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    add b                                         ; $6a54: $80
    ccf                                           ; $6a55: $3f
    add b                                         ; $6a56: $80
    ld a, a                                       ; $6a57: $7f
    ret nz                                        ; $6a58: $c0

    sbc a                                         ; $6a59: $9f
    ret nz                                        ; $6a5a: $c0

    ld c, a                                       ; $6a5b: $4f
    rst $38                                       ; $6a5c: $ff
    ldh [$87], a                                  ; $6a5d: $e0 $87
    ldh a, [$d5]                                  ; $6a5f: $f0 $d5
    db $fc                                        ; $6a61: $fc
    ld l, c                                       ; $6a62: $69
    rst $38                                       ; $6a63: $ff
    ccf                                           ; $6a64: $3f
    rst $38                                       ; $6a65: $ff
    nop                                           ; $6a66: $00
    rrca                                          ; $6a67: $0f
    ret nz                                        ; $6a68: $c0

    ld b, e                                       ; $6a69: $43
    ldh a, [$a0]                                  ; $6a6a: $f0 $a0
    db $fc                                        ; $6a6c: $fc
    db $f4                                        ; $6a6d: $f4
    add $4a                                       ; $6a6e: $c6 $4a
    ldh [rIE], a                                  ; $6a70: $e0 $ff
    rst $38                                       ; $6a72: $ff
    ld b, d                                       ; $6a73: $42
    ldh [$88], a                                  ; $6a74: $e0 $88
    db $e4                                        ; $6a76: $e4
    add sp, -$1b                                  ; $6a77: $e8 $e5
    db $e3                                        ; $6a79: $e3
    rrca                                          ; $6a7a: $0f
    rst $38                                       ; $6a7b: $ff
    and $0f                                       ; $6a7c: $e6 $0f
    rr a                                          ; $6a7e: $cb $1f
    rst $00                                       ; $6a80: $c7
    rra                                           ; $6a81: $1f
    adc a                                         ; $6a82: $8f
    ccf                                           ; $6a83: $3f
    rst $30                                       ; $6a84: $f7
    sbc e                                         ; $6a85: $9b
    ccf                                           ; $6a86: $3f
    cpl                                           ; $6a87: $2f
    db $fc                                        ; $6a88: $fc
    ld b, b                                       ; $6a89: $40
    cp $00                                        ; $6a8a: $fe $00
    cp $00                                        ; $6a8c: $fe $00
    rst $38                                       ; $6a8e: $ff
    db $fc                                        ; $6a8f: $fc
    ld bc, $01fc                                  ; $6a90: $01 $fc $01
    ld hl, sp+$03                                 ; $6a93: $f8 $03

jr_02f_6a95:
    ld sp, hl                                     ; $6a95: $f9
    inc bc                                        ; $6a96: $03
    rst $08                                       ; $6a97: $cf
    ld a, [c]                                     ; $6a98: $f2
    rlca                                          ; $6a99: $07
    pop af                                        ; $6a9a: $f1
    rlca                                          ; $6a9b: $07
    ret nc                                        ; $6a9c: $d0

    push hl                                       ; $6a9d: $e5
    inc h                                         ; $6a9e: $24
    pop hl                                        ; $6a9f: $e1
    db $d3                                        ; $6aa0: $d3
    nop                                           ; $6aa1: $00
    ld e, a                                       ; $6aa2: $5f
    ld b, d                                       ; $6aa3: $42
    ld a, [hl]                                    ; $6aa4: $7e
    cp $00                                        ; $6aa5: $fe $00
    rst $38                                       ; $6aa7: $ff
    ld [c], a                                     ; $6aa8: $e2
    ldh [$fe], a                                  ; $6aa9: $e0 $fe
    sbc $e0                                       ; $6aab: $de $e0
    rst $08                                       ; $6aad: $cf
    db $fc                                        ; $6aae: $fc
    ld bc, $01ff                                  ; $6aaf: $01 $ff $01
    ld a, [c]                                     ; $6ab2: $f2
    ldh [$0a], a                                  ; $6ab3: $e0 $0a
    ld [c], a                                     ; $6ab5: $e2
    inc a                                         ; $6ab6: $3c
    nop                                           ; $6ab7: $00
    rst $30                                       ; $6ab8: $f7
    nop                                           ; $6ab9: $00
    rst $00                                       ; $6aba: $c7
    ld b, l                                       ; $6abb: $45
    add h                                         ; $6abc: $84
    ret nz                                        ; $6abd: $c0

    push af                                       ; $6abe: $f5
    rst $38                                       ; $6abf: $ff
    rst $20                                       ; $6ac0: $e7
    rrca                                          ; $6ac1: $0f
    rst $28                                       ; $6ac2: $ef
    ld [c], a                                     ; $6ac3: $e2
    rrca                                          ; $6ac4: $0f
    rst $30                                       ; $6ac5: $f7
    rrca                                          ; $6ac6: $0f
    add $e1                                       ; $6ac7: $c6 $e1
    di                                            ; $6ac9: $f3
    rlca                                          ; $6aca: $07
    push hl                                       ; $6acb: $e5
    cp a                                          ; $6acc: $bf
    rrca                                          ; $6acd: $0f
    db $e3                                        ; $6ace: $e3
    rrca                                          ; $6acf: $0f
    jr jr_02f_6a95                                ; $6ad0: $18 $c3

    ld b, d                                       ; $6ad2: $42
    ld d, [hl]                                    ; $6ad3: $56
    ldh [$f7], a                                  ; $6ad4: $e0 $f7
    ld [$c676], a                                 ; $6ad6: $ea $76 $c6
    ccf                                           ; $6ad9: $3f
    ld a, [hl]                                    ; $6ada: $7e
    ret nz                                        ; $6adb: $c0

    ccf                                           ; $6adc: $3f
    add b                                         ; $6add: $80
    and b                                         ; $6ade: $a0
    sbc a                                         ; $6adf: $9f
    ld a, a                                       ; $6ae0: $7f
    scf                                           ; $6ae1: $37
    db $fd                                        ; $6ae2: $fd
    ld a, a                                       ; $6ae3: $7f
    or $e0                                        ; $6ae4: $f6 $e0
    rst $38                                       ; $6ae6: $ff
    ld [$5500], sp                                ; $6ae7: $08 $00 $55
    nop                                           ; $6aea: $00
    cp [hl]                                       ; $6aeb: $be
    ld [hl], h                                    ; $6aec: $74
    ldh a, [$c0]                                  ; $6aed: $f0 $c0
    ld l, b                                       ; $6aef: $68
    push hl                                       ; $6af0: $e5
    ld e, a                                       ; $6af1: $5f
    db $fc                                        ; $6af2: $fc
    ret nz                                        ; $6af3: $c0

    ld a, a                                       ; $6af4: $7f
    nop                                           ; $6af5: $00
    xor a                                         ; $6af6: $af
    db $fc                                        ; $6af7: $fc
    ldh [$9d], a                                  ; $6af8: $e0 $9d
    ccf                                           ; $6afa: $3f
    db $f4                                        ; $6afb: $f4
    ld [c], a                                     ; $6afc: $e2
    ld de, $2a80                                  ; $6afd: $11 $80 $2a
    call nc, $f0c0                                ; $6b00: $d4 $c0 $f0
    push hl                                       ; $6b03: $e5
    cp a                                          ; $6b04: $bf
    ldh a, [$fa]                                  ; $6b05: $f0 $fa
    db $e4                                        ; $6b07: $e4
    ld l, d                                       ; $6b08: $6a
    jp hl                                         ; $6b09: $e9


    db $f4                                        ; $6b0a: $f4
    db $eb                                        ; $6b0b: $eb
    nop                                           ; $6b0c: $00
    add e                                         ; $6b0d: $83
    dec de                                        ; $6b0e: $1b
    db $e4                                        ; $6b0f: $e4
    dec d                                         ; $6b10: $15
    xor $ff                                       ; $6b11: $ee $ff
    dec l                                         ; $6b13: $2d
    ret nc                                        ; $6b14: $d0

    dec b                                         ; $6b15: $05
    ld a, [$c034]                                 ; $6b16: $fa $34 $c0
    ld d, a                                       ; $6b19: $57
    xor d                                         ; $6b1a: $aa
    rst $18                                       ; $6b1b: $df
    and h                                         ; $6b1c: $a4
    ld a, [bc]                                    ; $6b1d: $0a
    ld c, e                                       ; $6b1e: $4b
    add b                                         ; $6b1f: $80
    ld b, d                                       ; $6b20: $42
    ldh [rNR41], a                                ; $6b21: $e0 $20
    dec e                                         ; $6b23: $1d
    ld [bc], a                                    ; $6b24: $02
    rst $38                                       ; $6b25: $ff
    cp h                                          ; $6b26: $bc
    inc bc                                        ; $6b27: $03
    sbc b                                         ; $6b28: $98
    ld h, a                                       ; $6b29: $67
    rla                                           ; $6b2a: $17
    xor d                                         ; $6b2b: $aa
    db $e4                                        ; $6b2c: $e4
    ld a, [bc]                                    ; $6b2d: $0a
    rst $38                                       ; $6b2e: $ff
    adc e                                         ; $6b2f: $8b
    jr nz, @+$24                                  ; $6b30: $20 $22

    nop                                           ; $6b32: $00
    db $dd                                        ; $6b33: $dd
    nop                                           ; $6b34: $00
    cp l                                          ; $6b35: $bd
    ld b, d                                       ; $6b36: $42
    cp $08                                        ; $6b37: $fe $08
    and c                                         ; $6b39: $a1
    ld d, $a9                                     ; $6b3a: $16 $a9
    add sp, $03                                   ; $6b3c: $e8 $03
    add l                                         ; $6b3e: $85
    ld [hl+], a                                   ; $6b3f: $22
    ld a, [hl+]                                   ; $6b40: $2a
    rst $38                                       ; $6b41: $ff
    rlca                                          ; $6b42: $07
    db $db                                        ; $6b43: $db
    nop                                           ; $6b44: $00
    cp h                                          ; $6b45: $bc
    ld b, e                                       ; $6b46: $43
    ccf                                           ; $6b47: $3f
    ret nz                                        ; $6b48: $c0

    add hl, de                                    ; $6b49: $19
    ei                                            ; $6b4a: $fb

jr_02f_6b4b:
    and $18                                       ; $6b4b: $e6 $18
    ld h, b                                       ; $6b4d: $60
    and b                                         ; $6b4e: $a0
    inc a                                         ; $6b4f: $3c
    jp $e7b8                                      ; $6b50: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $6b53: $08 $ff $f7
    call z, $90fb                                 ; $6b56: $cc $fb $90
    ld l, a                                       ; $6b59: $6f
    ld a, [hl+]                                   ; $6b5a: $2a
    rst $38                                       ; $6b5b: $ff
    rra                                           ; $6b5c: $1f
    rst $38                                       ; $6b5d: $ff
    ldh [$d0], a                                  ; $6b5e: $e0 $d0
    ld bc, $a15a                                  ; $6b60: $01 $5a $a1
    ld c, b                                       ; $6b63: $48
    rlca                                          ; $6b64: $07
    ld hl, sp-$09                                 ; $6b65: $f8 $f7
    rlca                                          ; $6b67: $07
    inc e                                         ; $6b68: $1c
    inc bc                                        ; $6b69: $03
    ret nz                                        ; $6b6a: $c0

    pop hl                                        ; $6b6b: $e1
    or b                                          ; $6b6c: $b0
    rrca                                          ; $6b6d: $0f
    call z, $ff3f                                 ; $6b6e: $cc $3f $ff
    ld a, c                                       ; $6b71: $79
    add [hl]                                      ; $6b72: $86
    ld [de], a                                    ; $6b73: $12
    rst $28                                       ; $6b74: $ef
    dec de                                        ; $6b75: $1b
    ldh [$3c], a                                  ; $6b76: $e0 $3c
    jp $d0fe                                      ; $6b78: $c3 $fe $d0


    pop hl                                        ; $6b7b: $e1
    dec a                                         ; $6b7c: $3d
    ret nz                                        ; $6b7d: $c0

    ld c, a                                       ; $6b7e: $4f
    and b                                         ; $6b7f: $a0
    jr nc, jr_02f_6b4b                            ; $6b80: $30 $c9

    ld d, d                                       ; $6b82: $52
    rst $38                                       ; $6b83: $ff
    and c                                         ; $6b84: $a1
    ld l, l                                       ; $6b85: $6d
    jp nz, $c934                                  ; $6b86: $c2 $34 $c9

    ld c, b                                       ; $6b89: $48
    or e                                          ; $6b8a: $b3
    ld a, [de]                                    ; $6b8b: $1a
    rst $38                                       ; $6b8c: $ff
    push hl                                       ; $6b8d: $e5
    dec d                                         ; $6b8e: $15
    cp a                                          ; $6b8f: $bf
    adc $3f                                       ; $6b90: $ce $3f
    ld d, [hl]                                    ; $6b92: $56
    cp a                                          ; $6b93: $bf
    ld l, l                                       ; $6b94: $6d
    rst $38                                       ; $6b95: $ff
    cp a                                          ; $6b96: $bf
    sbc [hl]                                      ; $6b97: $9e
    ld a, a                                       ; $6b98: $7f
    ld l, d                                       ; $6b99: $6a
    cp a                                          ; $6b9a: $bf
    dec e                                         ; $6b9b: $1d
    rst $38                                       ; $6b9c: $ff
    ld c, [hl]                                    ; $6b9d: $4e
    rst $38                                       ; $6b9e: $ff
    cp a                                          ; $6b9f: $bf
    dec [hl]                                      ; $6ba0: $35
    ret nz                                        ; $6ba1: $c0

    ld c, [hl]                                    ; $6ba2: $4e
    and c                                         ; $6ba3: $a1
    ld [hl-], a                                   ; $6ba4: $32
    ret                                           ; $6ba5: $c9


    ld d, a                                       ; $6ba6: $57
    rst $38                                       ; $6ba7: $ff
    and d                                         ; $6ba8: $a2
    ld a, a                                       ; $6ba9: $7f
    push bc                                       ; $6baa: $c5
    ld [hl-], a                                   ; $6bab: $32
    rst $08                                       ; $6bac: $cf
    ld d, l                                       ; $6bad: $55
    cp a                                          ; $6bae: $bf
    dec hl                                        ; $6baf: $2b
    sbc $90                                       ; $6bb0: $de $90
    add d                                         ; $6bb2: $82
    cp h                                          ; $6bb3: $bc
    ld b, e                                       ; $6bb4: $43
    ld e, b                                       ; $6bb5: $58
    and a                                         ; $6bb6: $a7
    nop                                           ; $6bb7: $00
    and b                                         ; $6bb8: $a0
    db $e3                                        ; $6bb9: $e3
    call nz, $f3ff                                ; $6bba: $c4 $ff $f3
    or h                                          ; $6bbd: $b4
    db $eb                                        ; $6bbe: $eb
    sbc d                                         ; $6bbf: $9a
    ld a, a                                       ; $6bc0: $7f
    rst $28                                       ; $6bc1: $ef
    ccf                                           ; $6bc2: $3f
    ld a, [hl-]                                   ; $6bc3: $3a
    rst $38                                       ; $6bc4: $ff
    rst $18                                       ; $6bc5: $df
    ld c, l                                       ; $6bc6: $4d
    rst $38                                       ; $6bc7: $ff
    or h                                          ; $6bc8: $b4
    rst $38                                       ; $6bc9: $ff
    ld a, d                                       ; $6bca: $7a
    rst $38                                       ; $6bcb: $ff
    xor b                                         ; $6bcc: $a8
    ei                                            ; $6bcd: $fb
    rst $38                                       ; $6bce: $ff
    ld [hl], h                                    ; $6bcf: $74
    cp [hl]                                       ; $6bd0: $be
    add b                                         ; $6bd1: $80
    inc hl                                        ; $6bd2: $23
    rst $18                                       ; $6bd3: $df
    dec b                                         ; $6bd4: $05
    rst $38                                       ; $6bd5: $ff
    ld a, [de]                                    ; $6bd6: $1a
    cp $70                                        ; $6bd7: $fe $70
    add [hl]                                      ; $6bd9: $86
    call nc, $bbff                                ; $6bda: $d4 $ff $bb
    cp $74                                        ; $6bdd: $fe $74
    rst $38                                       ; $6bdf: $ff
    xor [hl]                                      ; $6be0: $ae
    ld a, [$209a]                                 ; $6be1: $fa $9a $20
    xor [hl]                                      ; $6be4: $ae
    ld a, [hl-]                                   ; $6be5: $3a
    add b                                         ; $6be6: $80
    inc bc                                        ; $6be7: $03
    rst $38                                       ; $6be8: $ff
    ld d, d                                       ; $6be9: $52
    db $fc                                        ; $6bea: $fc
    xor d                                         ; $6beb: $aa
    xor a                                         ; $6bec: $af
    db $fd                                        ; $6bed: $fd
    ld [hl], a                                    ; $6bee: $77
    ei                                            ; $6bef: $fb
    and d                                         ; $6bf0: $a2
    or b                                          ; $6bf1: $b0
    ld h, b                                       ; $6bf2: $60
    dec c                                         ; $6bf3: $0d
    xor h                                         ; $6bf4: $ac
    ld h, b                                       ; $6bf5: $60
    ld a, [bc]                                    ; $6bf6: $0a
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    ld h, a                                       ; $6bf9: $67
    adc b                                         ; $6bfa: $88
    call Call_000_32bb                            ; $6bfb: $cd $bb $32
    rst $28                                       ; $6bfe: $ef
    db $eb                                        ; $6bff: $eb
    ld a, [$e0de]                                 ; $6c00: $fa $de $e0
    cp $1c                                        ; $6c03: $fe $1c
    add b                                         ; $6c05: $80
    cp d                                          ; $6c06: $ba
    rst $38                                       ; $6c07: $ff
    daa                                           ; $6c08: $27
    ret z                                         ; $6c09: $c8

    ld l, l                                       ; $6c0a: $6d
    rst $38                                       ; $6c0b: $ff
    sbc e                                         ; $6c0c: $9b
    ld [hl+], a                                   ; $6c0d: $22
    rst $38                                       ; $6c0e: $ff

jr_02f_6c0f:
    ld a, e                                       ; $6c0f: $7b
    rst $38                                       ; $6c10: $ff
    or [hl]                                       ; $6c11: $b6
    rst $38                                       ; $6c12: $ff
    ld e, [hl]                                    ; $6c13: $5e
    ei                                            ; $6c14: $fb
    rst $38                                       ; $6c15: $ff
    cp e                                          ; $6c16: $bb
    add h                                         ; $6c17: $84
    ld h, b                                       ; $6c18: $60
    ld c, $bf                                     ; $6c19: $0e $bf
    db $dd                                        ; $6c1b: $dd
    ccf                                           ; $6c1c: $3f
    ld l, [hl]                                    ; $6c1d: $6e
    cp e                                          ; $6c1e: $bb
    cp a                                          ; $6c1f: $bf
    ld d, a                                       ; $6c20: $57
    ld [hl], b                                    ; $6c21: $70

jr_02f_6c22:
    ldh [$6d], a                                  ; $6c22: $e0 $6d
    cp a                                          ; $6c24: $bf
    ld e, $70                                     ; $6c25: $1e $70
    ldh [rHDMA2], a                               ; $6c27: $e0 $52
    rst $38                                       ; $6c29: $ff
    db $fd                                        ; $6c2a: $fd
    xor $f9                                       ; $6c2b: $ee $f9
    ld c, c                                       ; $6c2d: $49
    or $a7                                        ; $6c2e: $f6 $a7
    ld hl, sp+$47                                 ; $6c30: $f8 $47
    rst $38                                       ; $6c32: $ff
    ldh a, [$b4]                                  ; $6c33: $f0 $b4
    ret                                           ; $6c35: $c9


    ld c, d                                       ; $6c36: $4a
    or c                                          ; $6c37: $b1
    dec de                                        ; $6c38: $1b
    db $e4                                        ; $6c39: $e4
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rra                                           ; $6c3c: $1f
    ld c, d                                       ; $6c3d: $4a
    cp a                                          ; $6c3e: $bf
    ld l, c                                       ; $6c3f: $69
    sub a                                         ; $6c40: $97
    ld [de], a                                    ; $6c41: $12
    rst $28                                       ; $6c42: $ef
    add hl, de                                    ; $6c43: $19
    rst $30                                       ; $6c44: $f7
    ld [c], a                                     ; $6c45: $e2
    jr c, jr_02f_6c0f                             ; $6c46: $38 $c7

    nop                                           ; $6c48: $00
    pop hl                                        ; $6c49: $e1
    dec hl                                        ; $6c4a: $2b
    ret nc                                        ; $6c4b: $d0

Jump_02f_6c4c:
    xor d                                         ; $6c4c: $aa
    ld b, c                                       ; $6c4d: $41
    cp a                                          ; $6c4e: $bf
    cp $01                                        ; $6c4f: $fe $01
    xor b                                         ; $6c51: $a8
    rlca                                          ; $6c52: $07
    ld a, b                                       ; $6c53: $78
    add a                                         ; $6c54: $87
    db $10                                        ; $6c55: $10
    db $e3                                        ; $6c56: $e3

jr_02f_6c57:
    and c                                         ; $6c57: $a1
    rst $38                                       ; $6c58: $ff
    ld e, $8c                                     ; $6c59: $1e $8c
    ld a, d                                       ; $6c5b: $7a
    ld d, a                                       ; $6c5c: $57
    xor b                                         ; $6c5d: $a8
    jr c, jr_02f_6c22                             ; $6c5e: $38 $c2

    dec c                                         ; $6c60: $0d
    rst $30                                       ; $6c61: $f7
    ldh a, [$3d]                                  ; $6c62: $f0 $3d
    jp nz, Jump_02f_61d8                          ; $6c64: $c2 $d8 $61

    cpl                                           ; $6c67: $2f
    sub b                                         ; $6c68: $90
    ld sp, hl                                     ; $6c69: $f9
    nop                                           ; $6c6a: $00
    rst $38                                       ; $6c6b: $ff
    adc d                                         ; $6c6c: $8a
    ld hl, $0728                                  ; $6c6d: $21 $28 $07
    ret c                                         ; $6c70: $d8

    rlca                                          ; $6c71: $07
    cp h                                          ; $6c72: $bc
    ld b, e                                       ; $6c73: $43
    db $fc                                        ; $6c74: $fc
    ret z                                         ; $6c75: $c8

    ld h, c                                       ; $6c76: $61
    add hl, sp                                    ; $6c77: $39
    and e                                         ; $6c78: $a3
    ld [bc], a                                    ; $6c79: $02
    db $fd                                        ; $6c7a: $fd
    ld bc, $0dfe                                  ; $6c7b: $01 $fe $0d
    ldh a, [rIE]                                  ; $6c7e: $f0 $ff
    ld [bc], a                                    ; $6c80: $02
    db $fd                                        ; $6c81: $fd
    ld a, [hl+]                                   ; $6c82: $2a
    ret nc                                        ; $6c83: $d0

    dec hl                                        ; $6c84: $2b
    sub $f5                                       ; $6c85: $d6 $f5
    ld a, [bc]                                    ; $6c87: $0a
    rst $38                                       ; $6c88: $ff
    ld e, a                                       ; $6c89: $5f
    add b                                         ; $6c8a: $80
    xor c                                         ; $6c8b: $a9
    ld [bc], a                                    ; $6c8c: $02
    ld a, a                                       ; $6c8d: $7f
    add b                                         ; $6c8e: $80
    db $10                                        ; $6c8f: $10
    rrca                                          ; $6c90: $0f
    rst $38                                       ; $6c91: $ff
    ldh [$1f], a                                  ; $6c92: $e0 $1f
    add b                                         ; $6c94: $80
    ld a, a                                       ; $6c95: $7f
    ld d, a                                       ; $6c96: $57
    xor d                                         ; $6c97: $aa
    push af                                       ; $6c98: $f5
    ld a, [bc]                                    ; $6c99: $0a
    cp a                                          ; $6c9a: $bf
    sbc a                                         ; $6c9b: $9f
    jr nz, jr_02f_6c57                            ; $6c9c: $20 $b9

    ld [bc], a                                    ; $6c9e: $02
    ld h, a                                       ; $6c9f: $67
    sbc b                                         ; $6ca0: $98
    rrca                                          ; $6ca1: $0f
    and e                                         ; $6ca2: $a3
    ld c, d                                       ; $6ca3: $4a
    rst $38                                       ; $6ca4: $ff
    or l                                          ; $6ca5: $b5
    db $f4                                        ; $6ca6: $f4
    dec bc                                        ; $6ca7: $0b
    sbc l                                         ; $6ca8: $9d
    ld [hl+], a                                   ; $6ca9: $22
    cp d                                          ; $6caa: $ba
    rlca                                          ; $6cab: $07
    ld a, e                                       ; $6cac: $7b
    ld e, a                                       ; $6cad: $5f
    add b                                         ; $6cae: $80
    inc c                                         ; $6caf: $0c
    di                                            ; $6cb0: $f3
    rlca                                          ; $6cb1: $07
    ld hl, sp-$41                                 ; $6cb2: $f8 $bf
    and c                                         ; $6cb4: $a1
    add b                                         ; $6cb5: $80
    sbc [hl]                                      ; $6cb6: $9e
    nop                                           ; $6cb7: $00
    db $ed                                        ; $6cb8: $ed
    and b                                         ; $6cb9: $a0
    sbc d                                         ; $6cba: $9a
    nop                                           ; $6cbb: $00
    ld l, b                                       ; $6cbc: $68
    rst $38                                       ; $6cbd: $ff
    sub b                                         ; $6cbe: $90
    pop bc                                        ; $6cbf: $c1
    rla                                           ; $6cc0: $17
    add sp, -$2f                                  ; $6cc1: $e8 $d1
    rst $20                                       ; $6cc3: $e7
    nop                                           ; $6cc4: $00
    ld l, $d1                                     ; $6cc5: $2e $d1
    add b                                         ; $6cc7: $80
    pop hl                                        ; $6cc8: $e1
    ret nz                                        ; $6cc9: $c0

    db $e3                                        ; $6cca: $e3
    or b                                          ; $6ccb: $b0
    rrca                                          ; $6ccc: $0f
    add $fc                                       ; $6ccd: $c6 $fc
    sub b                                         ; $6ccf: $90
    call nz, $e3d0                                ; $6cd0: $c4 $d0 $e3
    dec a                                         ; $6cd3: $3d
    ret nz                                        ; $6cd4: $c0

    ld e, a                                       ; $6cd5: $5f
    and b                                         ; $6cd6: $a0
    inc [hl]                                      ; $6cd7: $34
    ret                                           ; $6cd8: $c9


    rst $10                                       ; $6cd9: $d7
    ld e, d                                       ; $6cda: $5a
    and c                                         ; $6cdb: $a1
    ld a, l                                       ; $6cdc: $7d
    sub b                                         ; $6cdd: $90
    ret nz                                        ; $6cde: $c0

    ld c, h                                       ; $6cdf: $4c
    sub b                                         ; $6ce0: $90
    ret nz                                        ; $6ce1: $c0

    ld d, l                                       ; $6ce2: $55
    cp a                                          ; $6ce3: $bf
    ei                                            ; $6ce4: $fb
    adc [hl]                                      ; $6ce5: $8e
    ld a, a                                       ; $6ce6: $7f
    sub b                                         ; $6ce7: $90
    jp z, Jump_02f_5ac8                           ; $6ce8: $ca $c8 $5a

    and c                                         ; $6ceb: $a1
    inc a                                         ; $6cec: $3c
    jp Jump_02f_537f                              ; $6ced: $c3 $7f $53


    xor [hl]                                      ; $6cf0: $ae
    ld [hl], a                                    ; $6cf1: $77
    call $bf42                                    ; $6cf2: $cd $42 $bf
    dec d                                         ; $6cf5: $15
    ld l, d                                       ; $6cf6: $6a
    ld h, b                                       ; $6cf7: $60
    cp $6b                                        ; $6cf8: $fe $6b
    add c                                         ; $6cfa: $81
    ret nz                                        ; $6cfb: $c0

    ccf                                           ; $6cfc: $3f
    ld b, b                                       ; $6cfd: $40
    cp a                                          ; $6cfe: $bf
    ld b, b                                       ; $6cff: $40
    rst $38                                       ; $6d00: $ff
    or b                                          ; $6d01: $b0
    cp a                                          ; $6d02: $bf
    rst $28                                       ; $6d03: $ef
    call z, $a4f3                                 ; $6d04: $cc $f3 $a4
    ei                                            ; $6d07: $fb
    dec d                                         ; $6d08: $15
    cp h                                          ; $6d09: $bc
    ret nz                                        ; $6d0a: $c0

    dec b                                         ; $6d0b: $05
    xor e                                         ; $6d0c: $ab
    rst $38                                       ; $6d0d: $ff
    ld [bc], a                                    ; $6d0e: $02
    add hl, hl                                    ; $6d0f: $29
    and [hl]                                      ; $6d10: $a6
    ld d, e                                       ; $6d11: $53
    or b                                          ; $6d12: $b0
    ret nz                                        ; $6d13: $c0

    ld [hl], l                                    ; $6d14: $75
    or b                                          ; $6d15: $b0
    ret z                                         ; $6d16: $c8

    ld [hl], a                                    ; $6d17: $77
    xor e                                         ; $6d18: $ab
    adc b                                         ; $6d19: $88
    call z, $cab0                                 ; $6d1a: $cc $b0 $ca
    scf                                           ; $6d1d: $37
    or b                                          ; $6d1e: $b0
    call z, $b04e                                 ; $6d1f: $cc $4e $b0
    adc $ae                                       ; $6d22: $ce $ae
    db $db                                        ; $6d24: $db
    ld sp, hl                                     ; $6d25: $f9
    ld a, c                                       ; $6d26: $79
    or b                                          ; $6d27: $b0
    ret z                                         ; $6d28: $c8

    cp a                                          ; $6d29: $bf
    ld e, a                                       ; $6d2a: $5f
    or b                                          ; $6d2b: $b0
    jp $e21d                                      ; $6d2c: $c3 $1d $e2


    ei                                            ; $6d2f: $fb
    ld [$20f7], sp                                ; $6d30: $08 $f7 $20
    pop hl                                        ; $6d33: $e1
    dec l                                         ; $6d34: $2d
    ret nc                                        ; $6d35: $d0

    sbc d                                         ; $6d36: $9a
    ld h, c                                       ; $6d37: $61
    ld a, [hl]                                    ; $6d38: $7e
    cp e                                          ; $6d39: $bb
    add c                                         ; $6d3a: $81
    add sp, $30                                   ; $6d3b: $e8 $30
    and $61                                       ; $6d3d: $e6 $61
    ld e, $95                                     ; $6d3f: $1e $95
    or b                                          ; $6d41: $b0
    ret nz                                        ; $6d42: $c0

    add hl, sp                                    ; $6d43: $39
    rst $30                                       ; $6d44: $f7
    jp nz, $f00f                                  ; $6d45: $c2 $0f $f0

    rst $38                                       ; $6d48: $ff
    ld h, e                                       ; $6d49: $63
    ld d, a                                       ; $6d4a: $57
    xor b                                         ; $6d4b: $a8
    ei                                            ; $6d4c: $fb
    nop                                           ; $6d4d: $00
    cp a                                          ; $6d4e: $bf
    sbc [hl]                                      ; $6d4f: $9e
    ld hl, $07a8                                  ; $6d50: $21 $a8 $07
    ld [hl], b                                    ; $6d53: $70
    adc a                                         ; $6d54: $8f
    rst $28                                       ; $6d55: $ef
    ld h, e                                       ; $6d56: $63
    inc c                                         ; $6d57: $0c
    rst $38                                       ; $6d58: $ff
    rst $30                                       ; $6d59: $f7
    reti                                          ; $6d5a: $d9


    ld l, a                                       ; $6d5b: $6f
    ld [$63ff], sp                                ; $6d5c: $08 $ff $63
    cp l                                          ; $6d5f: $bd
    sub $ff                                       ; $6d60: $d6 $ff
    ld l, e                                       ; $6d62: $6b
    ld l, d                                       ; $6d63: $6a
    rst $18                                       ; $6d64: $df
    jr nc, @-$1f                                  ; $6d65: $30 $df

    ld d, e                                       ; $6d67: $53
    db $fd                                        ; $6d68: $fd
    nop                                           ; $6d69: $00
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    ld e, l                                       ; $6d6c: $5d
    rst $20                                       ; $6d6d: $e7
    ld [$40ff], sp                                ; $6d6e: $08 $ff $40
    cp a                                          ; $6d71: $bf
    ld l, h                                       ; $6d72: $6c
    ei                                            ; $6d73: $fb
    or a                                          ; $6d74: $b7
    ld c, b                                       ; $6d75: $48
    call c, Call_02f_40c0                         ; $6d76: $dc $c0 $40
    rst $38                                       ; $6d79: $ff
    inc b                                         ; $6d7a: $04
    ei                                            ; $6d7b: $fb
    ld e, d                                       ; $6d7c: $5a
    ld sp, hl                                     ; $6d7d: $f9
    and l                                         ; $6d7e: $a5
    dec sp                                        ; $6d7f: $3b
    add b                                         ; $6d80: $80
    ld b, c                                       ; $6d81: $41
    nop                                           ; $6d82: $00
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    ld e, d                                       ; $6d85: $5a
    and l                                         ; $6d86: $a5
    jr nz, @+$01                                  ; $6d87: $20 $ff

    rst $18                                       ; $6d89: $df
    inc h                                         ; $6d8a: $24
    rst $20                                       ; $6d8b: $e7
    ld h, [hl]                                    ; $6d8c: $66
    and l                                         ; $6d8d: $a5
    dec h                                         ; $6d8e: $25
    and $66                                       ; $6d8f: $e6 $66
    rst $38                                       ; $6d91: $ff
    and l                                         ; $6d92: $a5
    ld h, [hl]                                    ; $6d93: $66
    and l                                         ; $6d94: $a5
    and h                                         ; $6d95: $a4
    ld h, a                                       ; $6d96: $67
    ld h, [hl]                                    ; $6d97: $66
    and l                                         ; $6d98: $a5
    inc h                                         ; $6d99: $24
    cp $70                                        ; $6d9a: $fe $70
    ret nz                                        ; $6d9c: $c0

    ld bc, $05fe                                  ; $6d9d: $01 $fe $05

Call_02f_6da0:
    ei                                            ; $6da0: $fb
    ld e, $e6                                     ; $6da1: $1e $e6
    jr @+$01                                      ; $6da3: $18 $ff

    add sp, $30                                   ; $6da5: $e8 $30
    ret nc                                        ; $6da7: $d0

    ld de, $63f3                                  ; $6da8: $11 $f3 $63
    and d                                         ; $6dab: $a2
    ld d, l                                       ; $6dac: $55
    ei                                            ; $6dad: $fb
    nop                                           ; $6dae: $00
    cp d                                          ; $6daf: $ba
    sbc [hl]                                      ; $6db0: $9e
    add b                                         ; $6db1: $80
    xor e                                         ; $6db2: $ab
    nop                                           ; $6db3: $00
    ld e, l                                       ; $6db4: $5d
    nop                                           ; $6db5: $00
    ld [$96fa], a                                 ; $6db6: $ea $fa $96
    add b                                         ; $6db9: $80
    xor [hl]                                      ; $6dba: $ae
    sub d                                         ; $6dbb: $92
    add b                                         ; $6dbc: $80
    adc d                                         ; $6dbd: $8a
    nop                                           ; $6dbe: $00
    ld d, h                                       ; $6dbf: $54
    nop                                           ; $6dc0: $00
    xor d                                         ; $6dc1: $aa
    cp $f0                                        ; $6dc2: $fe $f0
    ldh [$aa], a                                  ; $6dc4: $e0 $aa
    nop                                           ; $6dc6: $00
    dec d                                         ; $6dc7: $15
    nop                                           ; $6dc8: $00
    xor b                                         ; $6dc9: $a8
    nop                                           ; $6dca: $00
    ld d, c                                       ; $6dcb: $51
    rst $38                                       ; $6dcc: $ff
    nop                                           ; $6dcd: $00
    ld [$2200], sp                                ; $6dce: $08 $00 $22
    nop                                           ; $6dd1: $00
    sub h                                         ; $6dd2: $94
    nop                                           ; $6dd3: $00
    add hl, hl                                    ; $6dd4: $29
    xor a                                         ; $6dd5: $af
    nop                                           ; $6dd6: $00
    ld b, h                                       ; $6dd7: $44
    nop                                           ; $6dd8: $00
    db $10                                        ; $6dd9: $10
    db $e4                                        ; $6dda: $e4
    ldh [rP1], a                                  ; $6ddb: $e0 $00
    ld [hl], e                                    ; $6ddd: $73
    nop                                           ; $6dde: $00
    ld bc, $94ce                                  ; $6ddf: $01 $ce $94
    nop                                           ; $6de2: $00
    jr nz, jr_02f_6de5                            ; $6de3: $20 $00

jr_02f_6de5:
    add b                                         ; $6de5: $80
    adc [hl]                                      ; $6de6: $8e
    nop                                           ; $6de7: $00
    rst $38                                       ; $6de8: $ff
    ldh a, [rNR23]                                ; $6de9: $f0 $18
    inc a                                         ; $6deb: $3c
    rst $38                                       ; $6dec: $ff
    ld a, [hl]                                    ; $6ded: $7e
    ld a, [hl]                                    ; $6dee: $7e
    rst $38                                       ; $6def: $ff
    ld [hl], b                                    ; $6df0: $70
    rst $38                                       ; $6df1: $ff
    ld a, b                                       ; $6df2: $78
    db $fc                                        ; $6df3: $fc
    inc a                                         ; $6df4: $3c
    rst $38                                       ; $6df5: $ff
    cp $80                                        ; $6df6: $fe $80
    ld a, h                                       ; $6df8: $7c
    ld h, h                                       ; $6df9: $64
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    ld [$ff1c], sp                                ; $6dfc: $08 $1c $ff
    ld a, $36                                     ; $6dff: $3e $36
    ld a, a                                       ; $6e01: $7f
    and [hl]                                      ; $6e02: $a6
    ld a, a                                       ; $6e03: $7f
    add h                                         ; $6e04: $84
    ld l, a                                       ; $6e05: $6f
    ld b, b                                       ; $6e06: $40
    ei                                            ; $6e07: $fb
    ld c, $08                                     ; $6e08: $0e $08
    ld l, c                                       ; $6e0a: $69
    ld [c], a                                     ; $6e0b: $e2
    inc bc                                        ; $6e0c: $03
    rst $38                                       ; $6e0d: $ff

jr_02f_6e0e:
    rlca                                          ; $6e0e: $07
    cp $1b                                        ; $6e0f: $fe $1b
    rst $38                                       ; $6e11: $ff

jr_02f_6e12:
    db $fc                                        ; $6e12: $fc
    ld e, $f1                                     ; $6e13: $1e $f1
    jr z, jr_02f_6e0e                             ; $6e15: $28 $f7

    ld a, d                                       ; $6e17: $7a
    push hl                                       ; $6e18: $e5
    ld [hl], b                                    ; $6e19: $70
    rst $38                                       ; $6e1a: $ff
    rst $08                                       ; $6e1b: $cf
    inc a                                         ; $6e1c: $3c
    rst $38                                       ; $6e1d: $ff
    ei                                            ; $6e1e: $fb
    rst $20                                       ; $6e1f: $e7
    db $fd                                        ; $6e20: $fd
    ld b, d                                       ; $6e21: $42
    rst $20                                       ; $6e22: $e7
    cp a                                          ; $6e23: $bf
    jr jr_02f_6e70                                ; $6e24: $18 $4a

    or l                                          ; $6e26: $b5
    nop                                           ; $6e27: $00
    rst $38                                       ; $6e28: $ff
    ld d, h                                       ; $6e29: $54
    ld l, [hl]                                    ; $6e2a: $6e
    and b                                         ; $6e2b: $a0
    adc [hl]                                      ; $6e2c: $8e
    rst $38                                       ; $6e2d: $ff
    di                                            ; $6e2e: $f3
    sbc d                                         ; $6e2f: $9a
    rst $20                                       ; $6e30: $e7
    ld c, l                                       ; $6e31: $4d
    di                                            ; $6e32: $f3
    sub a                                         ; $6e33: $97
    jp hl                                         ; $6e34: $e9


    rst $00                                       ; $6e35: $c7
    rst $38                                       ; $6e36: $ff
    ld sp, hl                                     ; $6e37: $f9
    adc a                                         ; $6e38: $8f

jr_02f_6e39:
    di                                            ; $6e39: $f3
    ld e, [hl]                                    ; $6e3a: $5e
    rst $20                                       ; $6e3b: $e7
    adc [hl]                                      ; $6e3c: $8e
    di                                            ; $6e3d: $f3
    push af                                       ; $6e3e: $f5
    cp $0a                                        ; $6e3f: $fe $0a
    and b                                         ; $6e41: $a0
    ldh [rIE], a                                  ; $6e42: $e0 $ff
    adc d                                         ; $6e44: $8a
    push af                                       ; $6e45: $f5
    ld d, a                                       ; $6e46: $57
    add sp, -$73                                  ; $6e47: $e8 $8d
    rst $38                                       ; $6e49: $ff
    ld a, [c]                                     ; $6e4a: $f2
    add hl, de                                    ; $6e4b: $19
    rst $20                                       ; $6e4c: $e7
    adc a                                         ; $6e4d: $8f
    di                                            ; $6e4e: $f3
    rst $18                                       ; $6e4f: $df
    sbc c                                         ; $6e50: $99
    sbc a                                         ; $6e51: $9f
    rst $38                                       ; $6e52: $ff
    ld c, l                                       ; $6e53: $4d
    daa                                           ; $6e54: $27
    rla                                           ; $6e55: $17
    and e                                         ; $6e56: $a3
    di                                            ; $6e57: $f3
    db $db                                        ; $6e58: $db
    pop hl                                        ; $6e59: $e1
    xor $ff                                       ; $6e5a: $ee $ff
    pop af                                        ; $6e5c: $f1
    or h                                          ; $6e5d: $b4
    ei                                            ; $6e5e: $fb
    ld b, c                                       ; $6e5f: $41
    rst $38                                       ; $6e60: $ff
    rst $18                                       ; $6e61: $df
    sbc a                                         ; $6e62: $9f
    sbc h                                         ; $6e63: $9c
    rst $38                                       ; $6e64: $ff
    ld c, a                                       ; $6e65: $4f
    ld h, $17                                     ; $6e66: $26 $17
    and d                                         ; $6e68: $a2
    di                                            ; $6e69: $f3
    jp c, $eee1                                   ; $6e6a: $da $e1 $ee

    rst $38                                       ; $6e6d: $ff

Call_02f_6e6e:
    ld [hl], c                                    ; $6e6e: $71
    db $f4                                        ; $6e6f: $f4

jr_02f_6e70:
    dec sp                                        ; $6e70: $3b
    ld sp, hl                                     ; $6e71: $f9
    rst $38                                       ; $6e72: $ff
    rst $20                                       ; $6e73: $e7
    jr jr_02f_6e39                                ; $6e74: $18 $c3

    rst $38                                       ; $6e76: $ff
    inc h                                         ; $6e77: $24
    rst $20                                       ; $6e78: $e7
    inc h                                         ; $6e79: $24
    rst $38                                       ; $6e7a: $ff
    inc a                                         ; $6e7b: $3c
    db $db                                        ; $6e7c: $db
    inc a                                         ; $6e7d: $3c
    rst $20                                       ; $6e7e: $e7
    db $fd                                        ; $6e7f: $fd
    jr jr_02f_6e12                                ; $6e80: $18 $90

    ld b, c                                       ; $6e82: $41
    ld h, a                                       ; $6e83: $67
    sbc d                                         ; $6e84: $9a
    call nz, $0b8a                                ; $6e85: $c4 $8a $0b
    ret nz                                        ; $6e88: $c0

    rst $38                                       ; $6e89: $ff
    ld b, d                                       ; $6e8a: $42
    and b                                         ; $6e8b: $a0
    db $10                                        ; $6e8c: $10
    ret nz                                        ; $6e8d: $c0

    jp hl                                         ; $6e8e: $e9


    add b                                         ; $6e8f: $80
    ld h, b                                       ; $6e90: $60
    sub c                                         ; $6e91: $91
    rst $38                                       ; $6e92: $ff
    adc e                                         ; $6e93: $8b
    ld h, b                                       ; $6e94: $60
    ld d, $a9                                     ; $6e95: $16 $a9
    pop hl                                        ; $6e97: $e1
    dec bc                                        ; $6e98: $0b
    adc d                                         ; $6e99: $8a
    daa                                           ; $6e9a: $27
    ld a, a                                       ; $6e9b: $7f
    daa                                           ; $6e9c: $27
    rrca                                          ; $6e9d: $0f
    xor l                                         ; $6e9e: $ad
    rra                                           ; $6e9f: $1f
    sub $3f                                       ; $6ea0: $d6 $3f
    ld a, l                                       ; $6ea2: $7d
    halt                                          ; $6ea3: $76
    add b                                         ; $6ea4: $80
    cp $20                                        ; $6ea5: $fe $20
    daa                                           ; $6ea7: $27
    inc h                                         ; $6ea8: $24
    db $db                                        ; $6ea9: $db
    inc c                                         ; $6eaa: $0c
    rst $30                                       ; $6eab: $f7
    ld [hl], $cf                                  ; $6eac: $36 $cf
    jr @+$01                                      ; $6eae: $18 $ff

    rst $20                                       ; $6eb0: $e7
    sub $0f                                       ; $6eb1: $d6 $0f
    ld e, c                                       ; $6eb3: $59
    and [hl]                                      ; $6eb4: $a6
    ld b, d                                       ; $6eb5: $42
    rrca                                          ; $6eb6: $0f
    ei                                            ; $6eb7: $fb
    ld a, a                                       ; $6eb8: $7f
    nop                                           ; $6eb9: $00
    inc e                                         ; $6eba: $1c
    inc bc                                        ; $6ebb: $03
    cp a                                          ; $6ebc: $bf

jr_02f_6ebd:
    nop                                           ; $6ebd: $00
    sbc c                                         ; $6ebe: $99
    ld h, [hl]                                    ; $6ebf: $66
    jr c, jr_02f_6ee3                             ; $6ec0: $38 $21

    sbc a                                         ; $6ec2: $9f

jr_02f_6ec3:
    dec a                                         ; $6ec3: $3d
    jp nz, $e718                                  ; $6ec4: $c2 $18 $e7

    add hl, de                                    ; $6ec7: $19
    jr nc, jr_02f_6eee                            ; $6ec8: $30 $24

    db $10                                        ; $6eca: $10
    add c                                         ; $6ecb: $81
    ld d, [hl]                                    ; $6ecc: $56
    rst $08                                       ; $6ecd: $cf
    xor c                                         ; $6ece: $a9
    ld [hl+], a                                   ; $6ecf: $22
    rst $38                                       ; $6ed0: $ff
    ld [hl], l                                    ; $6ed1: $75
    sub b                                         ; $6ed2: $90
    add h                                         ; $6ed3: $84
    add b                                         ; $6ed4: $80
    and e                                         ; $6ed5: $a3
    ld de, $ffef                                  ; $6ed6: $11 $ef $ff
    rra                                           ; $6ed9: $1f
    ldh [$3d], a                                  ; $6eda: $e0 $3d
    rst $00                                       ; $6edc: $c7
    inc sp                                        ; $6edd: $33
    rst $08                                       ; $6ede: $cf
    dec l                                         ; $6edf: $2d
    rst $10                                       ; $6ee0: $d7
    cp $e0                                        ; $6ee1: $fe $e0

jr_02f_6ee3:
    ld h, l                                       ; $6ee3: $65
    jr z, jr_02f_6ebd                             ; $6ee4: $28 $d7

    ld b, h                                       ; $6ee6: $44
    ei                                            ; $6ee7: $fb
    or h                                          ; $6ee8: $b4
    rst $38                                       ; $6ee9: $ff
    ret nc                                        ; $6eea: $d0

    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    ei                                            ; $6eed: $fb

jr_02f_6eee:
    inc e                                         ; $6eee: $1c
    db $ed                                        ; $6eef: $ed
    ld h, $8b                                     ; $6ef0: $26 $8b
    ld b, [hl]                                    ; $6ef2: $46
    db $db                                        ; $6ef3: $db
    rst $38                                       ; $6ef4: $ff
    ld h, [hl]                                    ; $6ef5: $66
    add $4f                                       ; $6ef6: $c6 $4f
    dec bc                                        ; $6ef8: $0b
    add a                                         ; $6ef9: $87
    sbc e                                         ; $6efa: $9b
    add a                                         ; $6efb: $87
    or e                                          ; $6efc: $b3
    rst $38                                       ; $6efd: $ff
    rst $08                                       ; $6efe: $cf
    xor a                                         ; $6eff: $af
    sbc a                                         ; $6f00: $9f
    and $5f                                       ; $6f01: $e6 $5f
    cp a                                          ; $6f03: $bf
    ld a, [hl]                                    ; $6f04: $7e
    db $eb                                        ; $6f05: $eb
    rst $18                                       ; $6f06: $df
    inc a                                         ; $6f07: $3c
    rst $38                                       ; $6f08: $ff
    ld l, $ef                                     ; $6f09: $2e $ef
    cpl                                           ; $6f0b: $2f
    ld hl, $1e60                                  ; $6f0c: $21 $60 $1e
    inc e                                         ; $6f0f: $1c

jr_02f_6f10:
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    ld l, $e7                                     ; $6f12: $2e $e7
    ld c, d                                       ; $6f14: $4a
    rst $00                                       ; $6f15: $c7
    ld e, d                                       ; $6f16: $5a
    rst $20                                       ; $6f17: $e7
    ld b, a                                       ; $6f18: $47

jr_02f_6f19:
    ei                                            ; $6f19: $fb
    rst $08                                       ; $6f1a: $cf
    adc e                                         ; $6f1b: $8b
    ldh [$e4], a                                  ; $6f1c: $e0 $e4
    ld h, [hl]                                    ; $6f1e: $66
    rst $18                                       ; $6f1f: $df
    ld a, [hl]                                    ; $6f20: $7e
    rst $38                                       ; $6f21: $ff
    jr z, jr_02f_6ec3                             ; $6f22: $28 $9f

    rst $38                                       ; $6f24: $ff
    ld a, $ef                                     ; $6f25: $3e $ef
    cpl                                           ; $6f27: $2f
    rst $28                                       ; $6f28: $ef
    pop hl                                        ; $6f29: $e1
    ldh [rNR10], a                                ; $6f2a: $e0 $10
    ret nz                                        ; $6f2c: $c0

    pop de                                        ; $6f2d: $d1
    rst $28                                       ; $6f2e: $ef
    ld l, a                                       ; $6f2f: $6f
    jr @+$01                                      ; $6f30: $18 $ff

    ld h, a                                       ; $6f32: $67
    ld b, d                                       ; $6f33: $42
    ret nz                                        ; $6f34: $c0

    ld a, [hl]                                    ; $6f35: $7e
    rst $38                                       ; $6f36: $ff
    jr c, jr_02f_6f10                             ; $6f37: $38 $d7

    rst $18                                       ; $6f39: $df
    ld b, e                                       ; $6f3a: $43
    db $fd                                        ; $6f3b: $fd
    xor b                                         ; $6f3c: $a8
    ld [bc], a                                    ; $6f3d: $02
    db $db                                        ; $6f3e: $db
    dec e                                         ; $6f3f: $1d
    ldh [$e7], a                                  ; $6f40: $e0 $e7
    ld a, [hl]                                    ; $6f42: $7e
    cp $1b                                        ; $6f43: $fe $1b
    ldh [rNR23], a                                ; $6f45: $e0 $18
    rst $20                                       ; $6f47: $e7
    jr nz, jr_02f_6f19                            ; $6f48: $20 $cf

    or [hl]                                       ; $6f4a: $b6
    dec hl                                        ; $6f4b: $2b
    db $ed                                        ; $6f4c: $ed
    cp a                                          ; $6f4d: $bf
    cp d                                          ; $6f4e: $ba
    dec sp                                        ; $6f4f: $3b
    rst $18                                       ; $6f50: $df
    halt                                          ; $6f51: $76
    rst $18                                       ; $6f52: $df
    ld d, h                                       ; $6f53: $54
    ld hl, sp+$00                                 ; $6f54: $f8 $00
    ld a, [hl+]                                   ; $6f56: $2a
    add $cb                                       ; $6f57: $c6 $cb
    ld [hl+], a                                   ; $6f59: $22
    jr @+$01                                      ; $6f5a: $18 $ff

    ldh [$e3], a                                  ; $6f5c: $e0 $e3
    rst $38                                       ; $6f5e: $ff
    pop bc                                        ; $6f5f: $c1
    adc h                                         ; $6f60: $8c
    ld hl, $00e7                                  ; $6f61: $21 $e7 $00
    push af                                       ; $6f64: $f5
    db $db                                        ; $6f65: $db
    cp $e0                                        ; $6f66: $fe $e0
    add c                                         ; $6f68: $81
    ld hl, sp-$20                                 ; $6f69: $f8 $e0
    rst $38                                       ; $6f6b: $ff
    nop                                           ; $6f6c: $00
    xor e                                         ; $6f6d: $ab
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    dec b                                         ; $6f70: $05
    cp $ab                                        ; $6f71: $fe $ab
    db $fc                                        ; $6f73: $fc
    dec c                                         ; $6f74: $0d
    ld a, [$fdb2]                                 ; $6f75: $fa $b2 $fd
    rst $38                                       ; $6f78: $ff
    ld d, l                                       ; $6f79: $55
    ld [$d7a8], a                                 ; $6f7a: $ea $a8 $d7
    db $f4                                        ; $6f7d: $f4
    adc e                                         ; $6f7e: $8b
    or b                                          ; $6f7f: $b0
    rrca                                          ; $6f80: $0f
    ld a, a                                       ; $6f81: $7f
    sbc $7f                                       ; $6f82: $de $7f
    add hl, hl                                    ; $6f84: $29
    cp $55                                        ; $6f85: $fe $55
    rst $38                                       ; $6f87: $ff
    cp [hl]                                       ; $6f88: $be
    ld l, $e0                                     ; $6f89: $2e $e0
    cp a                                          ; $6f8b: $bf
    xor d                                         ; $6f8c: $aa
    rst $38                                       ; $6f8d: $ff
    ret nz                                        ; $6f8e: $c0

    rst $38                                       ; $6f8f: $ff
    sbc b                                         ; $6f90: $98
    ld h, a                                       ; $6f91: $67
    ld b, b                                       ; $6f92: $40
    pop hl                                        ; $6f93: $e1
    ld e, b                                       ; $6f94: $58
    db $f4                                        ; $6f95: $f4
    ld b, b                                       ; $6f96: $40
    ld b, $d0                                     ; $6f97: $06 $d0
    ld c, e                                       ; $6f99: $4b
    dec hl                                        ; $6f9a: $2b
    db $10                                        ; $6f9b: $10
    ld l, b                                       ; $6f9c: $68
    inc a                                         ; $6f9d: $3c
    inc bc                                        ; $6f9e: $03
    add h                                         ; $6f9f: $84
    ld [hl], e                                    ; $6fa0: $73
    rst $28                                       ; $6fa1: $ef
    or h                                          ; $6fa2: $b4
    db $eb                                        ; $6fa3: $eb
    inc hl                                        ; $6fa4: $23
    call z, $e180                                 ; $6fa5: $cc $80 $e1
    ld a, [hl-]                                   ; $6fa8: $3a
    rst $18                                       ; $6fa9: $df
    rst $30                                       ; $6faa: $f7
    ld a, a                                       ; $6fab: $7f
    ld e, [hl]                                    ; $6fac: $5e
    push de                                       ; $6fad: $d5
    ld a, [hl]                                    ; $6fae: $7e
    db $dd                                        ; $6faf: $dd
    ld a, a                                       ; $6fb0: $7f
    ei                                            ; $6fb1: $fb
    ld l, $68                                     ; $6fb2: $2e $68
    ld h, e                                       ; $6fb4: $63
    rst $38                                       ; $6fb5: $ff
    add hl, de                                    ; $6fb6: $19
    rst $20                                       ; $6fb7: $e7
    rla                                           ; $6fb8: $17
    xor $3f                                       ; $6fb9: $ee $3f
    ret z                                         ; $6fbb: $c8

    cpl                                           ; $6fbc: $2f
    ret c                                         ; $6fbd: $d8

    rst $10                                       ; $6fbe: $d7
    rra                                           ; $6fbf: $1f
    ldh a, [$fd]                                  ; $6fc0: $f0 $fd
    ld l, d                                       ; $6fc2: $6a
    nop                                           ; $6fc3: $00
    jp c, Jump_02f_4008                           ; $6fc4: $da $08 $40

    xor a                                         ; $6fc7: $af
    cp $bf                                        ; $6fc8: $fe $bf
    rst $18                                       ; $6fca: $df
    ld hl, sp+$6f                                 ; $6fcb: $f8 $6f
    ld hl, sp-$21                                 ; $6fcd: $f8 $df
    ldh a, [$83]                                  ; $6fcf: $f0 $83
    ld b, b                                       ; $6fd1: $40
    inc a                                         ; $6fd2: $3c
    cp $e6                                        ; $6fd3: $fe $e6
    ld b, c                                       ; $6fd5: $41
    ccf                                           ; $6fd6: $3f
    jp $c73e                                      ; $6fd7: $c3 $3e $c7


    db $dd                                        ; $6fda: $dd
    cpl                                           ; $6fdb: $2f
    jp c, Jump_000_2ffd                           ; $6fdc: $da $fd $2f

    ldh a, [$e5]                                  ; $6fdf: $f0 $e5
    dec a                                         ; $6fe1: $3d
    jp $c73c                                      ; $6fe2: $c3 $3c $c7


    ret nc                                        ; $6fe5: $d0

jr_02f_6fe6:
    cpl                                           ; $6fe6: $2f
    ei                                            ; $6fe7: $fb
    ret c                                         ; $6fe8: $d8

    cpl                                           ; $6fe9: $2f
    ld d, e                                       ; $6fea: $53
    jr nz, jr_02f_6fe6                            ; $6feb: $20 $f9

    db $fc                                        ; $6fed: $fc
    ei                                            ; $6fee: $fb
    cp $e1                                        ; $6fef: $fe $e1
    rst $28                                       ; $6ff1: $ef
    db $f4                                        ; $6ff2: $f4
    set 4, b                                      ; $6ff3: $cb $e0
    rst $18                                       ; $6ff5: $df
    cp $e1                                        ; $6ff6: $fe $e1
    cp a                                          ; $6ff8: $bf
    ld a, a                                       ; $6ff9: $7f
    ld e, a                                       ; $6ffa: $5f
    rst $38                                       ; $6ffb: $ff
    cp a                                          ; $6ffc: $bf
    rra                                           ; $6ffd: $1f
    rst $38                                       ; $6ffe: $ff
    scf                                           ; $6fff: $37
    rst $08                                       ; $7000: $cf
    dec bc                                        ; $7001: $0b
    rst $30                                       ; $7002: $f7
    ld h, e                                       ; $7003: $63
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    db $d3                                        ; $7006: $d3
    sbc a                                         ; $7007: $9f
    sub e                                         ; $7008: $93
    sbc a                                         ; $7009: $9f
    ld hl, sp-$79                                 ; $700a: $f8 $87
    ret nc                                        ; $700c: $d0

    rst $38                                       ; $700d: $ff
    cpl                                           ; $700e: $2f
    add b                                         ; $700f: $80
    ld a, a                                       ; $7010: $7f
    adc h                                         ; $7011: $8c
    ld a, a                                       ; $7012: $7f
    sbc d                                         ; $7013: $9a
    ld [hl], e                                    ; $7014: $73
    ld d, d                                       ; $7015: $52
    rst $38                                       ; $7016: $ff
    or e                                          ; $7017: $b3
    adc h                                         ; $7018: $8c
    rst $38                                       ; $7019: $ff
    ldh a, [$ef]                                  ; $701a: $f0 $ef
    ld l, l                                       ; $701c: $6d
    di                                            ; $701d: $f3
    ld [bc], a                                    ; $701e: $02
    ei                                            ; $701f: $fb
    db $fd                                        ; $7020: $fd
    ret nz                                        ; $7021: $c0

    dec l                                         ; $7022: $2d
    jr nz, @+$04                                  ; $7023: $20 $02

    rst $38                                       ; $7025: $ff
    ld d, $ff                                     ; $7026: $16 $ff
    ld bc, $ffff                                  ; $7028: $01 $ff $ff
    rla                                           ; $702b: $17
    rst $38                                       ; $702c: $ff
    add sp, -$09                                  ; $702d: $e8 $f7
    pop af                                        ; $702f: $f1
    rst $38                                       ; $7030: $ff
    cp $ff                                        ; $7031: $fe $ff
    cp $ff                                        ; $7033: $fe $ff
    cp $f7                                        ; $7035: $fe $f7
    cp $ad                                        ; $7037: $fe $ad
    db $fc                                        ; $7039: $fc
    ld b, [hl]                                    ; $703a: $46
    cp a                                          ; $703b: $bf
    cp $eb                                        ; $703c: $fe $eb
    rst $38                                       ; $703e: $ff
    scf                                           ; $703f: $37
    rst $38                                       ; $7040: $ff
    adc a                                         ; $7041: $8f
    db $ed                                        ; $7042: $ed
    nop                                           ; $7043: $00
    ld a, a                                       ; $7044: $7f
    rst $38                                       ; $7045: $ff
    ld a, a                                       ; $7046: $7f
    ld l, a                                       ; $7047: $6f
    ld a, a                                       ; $7048: $7f
    ld a, $3f                                     ; $7049: $3e $3f
    ld a, e                                       ; $704b: $7b
    ld a, a                                       ; $704c: $7f
    rst $38                                       ; $704d: $ff
    cp $fe                                        ; $704e: $fe $fe
    nop                                           ; $7050: $00
    ld a, [$fcfd]                                 ; $7051: $fa $fd $fc
    ei                                            ; $7054: $fb
    pop hl                                        ; $7055: $e1
    rst $38                                       ; $7056: $ff
    ret nc                                        ; $7057: $d0

    rst $38                                       ; $7058: $ff
    rst $28                                       ; $7059: $ef
    push hl                                       ; $705a: $e5
    rst $18                                       ; $705b: $df
    jp z, $e7ff                                   ; $705c: $ca $ff $e7

    rst $18                                       ; $705f: $df
    ccf                                           ; $7060: $3f
    ei                                            ; $7061: $fb
    rst $38                                       ; $7062: $ff
    rra                                           ; $7063: $1f
    ld [hl+], a                                   ; $7064: $22
    nop                                           ; $7065: $00
    ld d, a                                       ; $7066: $57
    rst $38                                       ; $7067: $ff
    db $eb                                        ; $7068: $eb
    rst $38                                       ; $7069: $ff
    ld a, a                                       ; $706a: $7f
    ei                                            ; $706b: $fb
    rst $38                                       ; $706c: $ff
    db $db                                        ; $706d: $db

jr_02f_706e:
    jp $8b00                                      ; $706e: $c3 $00 $8b


    rst $38                                       ; $7071: $ff
    ld b, l                                       ; $7072: $45
    cp a                                          ; $7073: $bf
    sub a                                         ; $7074: $97
    rst $38                                       ; $7075: $ff
    ld a, a                                       ; $7076: $7f
    dec hl                                        ; $7077: $2b
    rst $38                                       ; $7078: $ff
    sbc a                                         ; $7079: $9f
    ld a, a                                       ; $707a: $7f
    dec l                                         ; $707b: $2d
    rst $38                                       ; $707c: $ff
    sbc a                                         ; $707d: $9f
    cp d                                          ; $707e: $ba
    ld [$75e0], a                                 ; $707f: $ea $e0 $75
    ret nz                                        ; $7082: $c0

    nop                                           ; $7083: $00
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    ld a, [hl]                                    ; $7086: $7e
    xor c                                         ; $7087: $a9
    nop                                           ; $7088: $00
    cp $3b                                        ; $7089: $fe $3b
    rst $38                                       ; $708b: $ff
    ld sp, hl                                     ; $708c: $f9
    and e                                         ; $708d: $a3
    nop                                           ; $708e: $00
    push hl                                       ; $708f: $e5
    rst $38                                       ; $7090: $ff
    di                                            ; $7091: $f3
    and b                                         ; $7092: $a0
    pop hl                                        ; $7093: $e1
    sbc h                                         ; $7094: $9c
    ldh [$5f], a                                  ; $7095: $e0 $5f
    xor $fe                                       ; $7097: $ee $fe
    ld e, [hl]                                    ; $7099: $5e
    cp $fb                                        ; $709a: $fe $fb
    ld b, [hl]                                    ; $709c: $46
    jr nz, jr_02f_706e                            ; $709d: $20 $cf

    and b                                         ; $709f: $a0
    ld [c], a                                     ; $70a0: $e2
    db $f4                                        ; $70a1: $f4
    db $fc                                        ; $70a2: $fc

jr_02f_70a3:
    db $e3                                        ; $70a3: $e3
    cp $e8                                        ; $70a4: $fe $e8
    cp $93                                        ; $70a6: $fe $93
    nop                                           ; $70a8: $00
    ld hl, sp-$01                                 ; $70a9: $f8 $ff
    ldh a, [$fb]                                  ; $70ab: $f0 $fb
    rst $38                                       ; $70ad: $ff
    rst $20                                       ; $70ae: $e7
    push af                                       ; $70af: $f5
    set 6, d                                      ; $70b0: $cb $f2
    adc l                                         ; $70b2: $8d
    pop af                                        ; $70b3: $f1
    ld c, $f0                                     ; $70b4: $0e $f0
    ld l, l                                       ; $70b6: $6d
    rrca                                          ; $70b7: $0f
    cp $e1                                        ; $70b8: $fe $e1
    add sp, $17                                   ; $70ba: $e8 $17
    ld h, b                                       ; $70bc: $60
    inc bc                                        ; $70bd: $03
    ld a, a                                       ; $70be: $7f
    rst $38                                       ; $70bf: $ff
    jr z, jr_02f_70a3                             ; $70c0: $28 $e1

    adc a                                         ; $70c2: $8f
    cpl                                           ; $70c3: $2f
    rst $18                                       ; $70c4: $df
    rla                                           ; $70c5: $17

jr_02f_70c6:
    rst $28                                       ; $70c6: $ef
    call z, $9bea                                 ; $70c7: $cc $ea $9b
    pop hl                                        ; $70ca: $e1
    ccf                                           ; $70cb: $3f
    inc bc                                        ; $70cc: $03
    ldh [rIE], a                                  ; $70cd: $e0 $ff
    db $fc                                        ; $70cf: $fc
    jp $83fc                                      ; $70d0: $c3 $fc $83


    db $fc                                        ; $70d3: $fc
    inc bc                                        ; $70d4: $03
    db $fc                                        ; $70d5: $fc
    inc bc                                        ; $70d6: $03
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    ldh [$ef], a                                  ; $70d9: $e0 $ef
    ret nc                                        ; $70db: $d0

    rst $18                                       ; $70dc: $df
    and b                                         ; $70dd: $a0
    ld l, $d1                                     ; $70de: $2e $d1
    rst $38                                       ; $70e0: $ff
    sub [hl]                                      ; $70e1: $96
    ld l, e                                       ; $70e2: $6b
    ld c, h                                       ; $70e3: $4c
    or a                                          ; $70e4: $b7
    jr z, jr_02f_70c6                             ; $70e5: $28 $df

    dec d                                         ; $70e7: $15
    rst $28                                       ; $70e8: $ef
    ld a, a                                       ; $70e9: $7f
    ret nz                                        ; $70ea: $c0

    ccf                                           ; $70eb: $3f
    add h                                         ; $70ec: $84
    ld a, a                                       ; $70ed: $7f
    ld a, [bc]                                    ; $70ee: $0a
    rst $38                                       ; $70ef: $ff
    inc d                                         ; $70f0: $14
    ld d, $c0                                     ; $70f1: $16 $c0
    db $fd                                        ; $70f3: $fd
    ld d, l                                       ; $70f4: $55
    ld d, b                                       ; $70f5: $50
    ret nz                                        ; $70f6: $c0

    ld d, l                                       ; $70f7: $55
    rst $38                                       ; $70f8: $ff
    dec bc                                        ; $70f9: $0b
    rst $30                                       ; $70fa: $f7
    inc bc                                        ; $70fb: $03
    rst $38                                       ; $70fc: $ff
    push bc                                       ; $70fd: $c5
    ei                                            ; $70fe: $fb
    cp $e0                                        ; $70ff: $fe $e0
    rst $38                                       ; $7101: $ff
    db $fc                                        ; $7102: $fc
    ld [c], a                                     ; $7103: $e2
    ccf                                           ; $7104: $3f
    ret nz                                        ; $7105: $c0

    ld a, e                                       ; $7106: $7b
    ld [$0ff7], a                                 ; $7107: $ea $f7 $0f
    rst $38                                       ; $710a: $ff
    cp $fd                                        ; $710b: $fe $fd
    db $fd                                        ; $710d: $fd
    ld a, [$f5fa]                                 ; $710e: $fa $fa $f5
    ldh a, [$ef]                                  ; $7111: $f0 $ef
    ld sp, hl                                     ; $7113: $f9
    ret nz                                        ; $7114: $c0

    cp b                                          ; $7115: $b8
    ld b, b                                       ; $7116: $40
    adc $e1                                       ; $7117: $ce $e1
    db $fc                                        ; $7119: $fc
    inc bc                                        ; $711a: $03
    ld d, h                                       ; $711b: $54
    xor e                                         ; $711c: $ab
    xor h                                         ; $711d: $ac
    cp a                                          ; $711e: $bf
    ld d, a                                       ; $711f: $57
    ld a, [de]                                    ; $7120: $1a
    rst $28                                       ; $7121: $ef
    dec [hl]                                      ; $7122: $35
    rst $18                                       ; $7123: $df
    ld a, [hl+]                                   ; $7124: $2a
    ld c, $e0                                     ; $7125: $0e $e0
    rst $38                                       ; $7127: $ff
    cp a                                          ; $7128: $bf
    rst $38                                       ; $7129: $ff
    ld a, [bc]                                    ; $712a: $0a
    rst $30                                       ; $712b: $f7
    dec b                                         ; $712c: $05
    ei                                            ; $712d: $fb
    ld [bc], a                                    ; $712e: $02
    cp d                                          ; $712f: $ba
    ld h, b                                       ; $7130: $60
    ld a, [hl]                                    ; $7131: $7e
    ld l, d                                       ; $7132: $6a
    jr nc, jr_02f_7195                            ; $7133: $30 $60

    ld a, a                                       ; $7135: $7f
    inc l                                         ; $7136: $2c
    ld h, d                                       ; $7137: $62
    ld d, a                                       ; $7138: $57
    ld d, h                                       ; $7139: $54
    ret nz                                        ; $713a: $c0

    sbc $fd                                       ; $713b: $de $fd
    ld b, l                                       ; $713d: $45
    ldh [rIE], a                                  ; $713e: $e0 $ff
    rst $38                                       ; $7140: $ff
    ld [$d5ff], a                                 ; $7141: $ea $ff $d5
    rst $38                                       ; $7144: $ff
    sbc $a1                                       ; $7145: $de $a1
    xor d                                         ; $7147: $aa
    rst $38                                       ; $7148: $ff
    ld d, l                                       ; $7149: $55
    ld d, [hl]                                    ; $714a: $56
    xor e                                         ; $714b: $ab
    dec c                                         ; $714c: $0d
    rst $30                                       ; $714d: $f7
    ld a, [de]                                    ; $714e: $1a
    rst $28                                       ; $714f: $ef
    dec d                                         ; $7150: $15
    ld d, d                                       ; $7151: $52
    ret c                                         ; $7152: $d8

    ret nz                                        ; $7153: $c0

    ld a, a                                       ; $7154: $7f
    sub b                                         ; $7155: $90
    ldh [$d0], a                                  ; $7156: $e0 $d0
    db $e3                                        ; $7158: $e3
    cp [hl]                                       ; $7159: $be
    db $ec                                        ; $715a: $ec
    ret nz                                        ; $715b: $c0

    cp a                                          ; $715c: $bf
    ld d, c                                       ; $715d: $51
    pop hl                                        ; $715e: $e1
    rst $38                                       ; $715f: $ff
    cp $ff                                        ; $7160: $fe $ff
    ld hl, sp-$07                                 ; $7162: $f8 $f9
    ldh [$e7], a                                  ; $7164: $e0 $e7
    add b                                         ; $7166: $80
    sbc c                                         ; $7167: $99
    rst $38                                       ; $7168: $ff
    nop                                           ; $7169: $00
    and $00                                       ; $716a: $e6 $00
    sbc b                                         ; $716c: $98
    nop                                           ; $716d: $00
    pop hl                                        ; $716e: $e1
    nop                                           ; $716f: $00
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    ld a, a                                       ; $7172: $7f
    sbc a                                         ; $7173: $9f
    rra                                           ; $7174: $1f
    add a                                         ; $7175: $87
    rlca                                          ; $7176: $07
    add c                                         ; $7177: $81
    ld bc, $ff80                                  ; $7178: $01 $80 $ff
    nop                                           ; $717b: $00
    ld h, b                                       ; $717c: $60
    nop                                           ; $717d: $00
    jr jr_02f_7180                                ; $717e: $18 $00

jr_02f_7180:
    add $00                                       ; $7180: $c6 $00
    add a                                         ; $7182: $87
    rst $38                                       ; $7183: $ff
    nop                                           ; $7184: $00
    ld e, $00                                     ; $7185: $1e $00
    ld a, h                                       ; $7187: $7c
    nop                                           ; $7188: $00
    db $ec                                        ; $7189: $ec
    add b                                         ; $718a: $80
    call nz, $80ff                                ; $718b: $c4 $ff $80
    push bc                                       ; $718e: $c5
    add b                                         ; $718f: $80
    db $fc                                        ; $7190: $fc
    add b                                         ; $7191: $80
    call nc, $f180                                ; $7192: $d4 $80 $f1

jr_02f_7195:
    cp [hl]                                       ; $7195: $be
    ld a, [c]                                     ; $7196: $f2
    ldh [$3f], a                                  ; $7197: $e0 $3f
    ld bc, $0137                                  ; $7199: $01 $37 $01
    inc hl                                        ; $719c: $23
    cp $e0                                        ; $719d: $fe $e0
    ccf                                           ; $719f: $3f
    rlca                                          ; $71a0: $07
    ld bc, $012b                                  ; $71a1: $01 $2b $01
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    ccf                                           ; $71a7: $3f
    ld b, [hl]                                    ; $71a8: $46
    ld b, [hl]                                    ; $71a9: $46
    ld b, [hl]                                    ; $71aa: $46
    ret z                                         ; $71ab: $c8

    ret                                           ; $71ac: $c9


    jp z, $fffa                                   ; $71ad: $ca $fa $ff

    db $f4                                        ; $71b0: $f4
    push af                                       ; $71b1: $f5
    ccf                                           ; $71b2: $3f
    ret nc                                        ; $71b3: $d0

    set 1, h                                      ; $71b4: $cb $cc
    call $cfce                                    ; $71b6: $cd $ce $cf
    ld a, [$f4ff]                                 ; $71b9: $fa $ff $f4
    push af                                       ; $71bc: $f5
    ccf                                           ; $71bd: $3f
    sub $d1                                       ; $71be: $d6 $d1
    jp nc, $d4d3                                  ; $71c0: $d2 $d3 $d4

    push de                                       ; $71c3: $d5
    ld a, [$f4ff]                                 ; $71c4: $fa $ff $f4
    push af                                       ; $71c7: $f5
    nop                                           ; $71c8: $00
    ld e, e                                       ; $71c9: $5b
    rst $38                                       ; $71ca: $ff
    ld a, [$5bfb]                                 ; $71cb: $fa $fb $5b
    rst $38                                       ; $71ce: $ff
    ld a, [$5bfb]                                 ; $71cf: $fa $fb $5b
    rst $38                                       ; $71d2: $ff
    ld a, [$5bfb]                                 ; $71d3: $fa $fb $5b
    rst $38                                       ; $71d6: $ff
    add b                                         ; $71d7: $80
    rst $18                                       ; $71d8: $df
    nop                                           ; $71d9: $00
    ld d, l                                       ; $71da: $55
    rst $38                                       ; $71db: $ff
    add b                                         ; $71dc: $80
    rst $18                                       ; $71dd: $df
    ld a, [$80ff]                                 ; $71de: $fa $ff $80

Call_02f_71e1:
    rst $18                                       ; $71e1: $df
    ld a, [$80ff]                                 ; $71e2: $fa $ff $80
    rst $18                                       ; $71e5: $df
    ld a, [$80ff]                                 ; $71e6: $fa $ff $80
    rst $18                                       ; $71e9: $df
    ret nz                                        ; $71ea: $c0

    ld a, [$80ff]                                 ; $71eb: $fa $ff $80
    rst $18                                       ; $71ee: $df
    ld b, e                                       ; $71ef: $43
    and $fd                                       ; $71f0: $e6 $fd
    db $e3                                        ; $71f2: $e3
    add b                                         ; $71f3: $80
    rst $18                                       ; $71f4: $df
    ld d, l                                       ; $71f5: $55
    di                                            ; $71f6: $f3
    ld b, [hl]                                    ; $71f7: $46
    jp nz, $c331                                  ; $71f8: $c2 $31 $c3

    ld sp, hl                                     ; $71fb: $f9
    ret nz                                        ; $71fc: $c0

    add b                                         ; $71fd: $80
    rst $18                                       ; $71fe: $df
    ld h, c                                       ; $71ff: $61
    or $c4                                        ; $7200: $f6 $c4
    push bc                                       ; $7202: $c5
    cp c                                          ; $7203: $b9
    ret nz                                        ; $7204: $c0

    add b                                         ; $7205: $80
    rst $18                                       ; $7206: $df
    ld e, $43                                     ; $7207: $1e $43
    or $c6                                        ; $7209: $f6 $c6
    rst $00                                       ; $720b: $c7
    cp h                                          ; $720c: $bc
    cp l                                          ; $720d: $bd
    ld a, [hl-]                                   ; $720e: $3a
    and $80                                       ; $720f: $e6 $80
    rst $18                                       ; $7211: $df
    ld b, e                                       ; $7212: $43
    db $eb                                        ; $7213: $eb
    add [hl]                                      ; $7214: $86
    ld bc, $bee2                                  ; $7215: $01 $e2 $be
    cp a                                          ; $7218: $bf
    ld a, [$37c2]                                 ; $7219: $fa $c2 $37
    db $f4                                        ; $721c: $f4
    and h                                         ; $721d: $a4
    db $db                                        ; $721e: $db
    add h                                         ; $721f: $84
    pop hl                                        ; $7220: $e1
    ret nz                                        ; $7221: $c0

    pop bc                                        ; $7222: $c1
    pop bc                                        ; $7223: $c1
    ld hl, sp-$1e                                 ; $7224: $f8 $e2
    scf                                           ; $7226: $37
    db $f4                                        ; $7227: $f4
    sub d                                         ; $7228: $92
    ret c                                         ; $7229: $d8

    add h                                         ; $722a: $84
    rst $20                                       ; $722b: $e7
    ld a, h                                       ; $722c: $7c
    pop hl                                        ; $722d: $e1
    add $c7                                       ; $722e: $c6 $c7
    add b                                         ; $7230: $80
    add b                                         ; $7231: $80
    rst $18                                       ; $7232: $df
    ld e, d                                       ; $7233: $5a
    db $e3                                        ; $7234: $e3
    add [hl]                                      ; $7235: $86
    ret z                                         ; $7236: $c8

    add h                                         ; $7237: $84
    pop hl                                        ; $7238: $e1
    inc a                                         ; $7239: $3c
    pop bc                                        ; $723a: $c1
    ld hl, sp-$1e                                 ; $723b: $f8 $e2
    add b                                         ; $723d: $80
    rst $18                                       ; $723e: $df
    ld b, [hl]                                    ; $723f: $46
    db $fc                                        ; $7240: $fc
    sub c                                         ; $7241: $91
    jp nz, $c986                                  ; $7242: $c2 $86 $c9

    ld b, [hl]                                    ; $7245: $46
    ld b, [hl]                                    ; $7246: $46
    sbc l                                         ; $7247: $9d
    rst $10                                       ; $7248: $d7
    ret c                                         ; $7249: $d8

    sbc l                                         ; $724a: $9d
    sbc b                                         ; $724b: $98
    ld sp, hl                                     ; $724c: $f9
    and e                                         ; $724d: $a3
    add b                                         ; $724e: $80
    ret c                                         ; $724f: $d8

    ret c                                         ; $7250: $d8

    and h                                         ; $7251: $a4
    cp h                                          ; $7252: $bc
    cp l                                          ; $7253: $bd
    sub c                                         ; $7254: $91
    add $f5                                       ; $7255: $c6 $f5
    db $e4                                        ; $7257: $e4
    sbc l                                         ; $7258: $9d
    ld a, a                                       ; $7259: $7f
    sbc a                                         ; $725a: $9f
    sbc d                                         ; $725b: $9a
    reti                                          ; $725c: $d9


    jp c, $9f9a                                   ; $725d: $da $9a $9f

    sbc l                                         ; $7260: $9d
    or $c2                                        ; $7261: $f6 $c2
    ldh [$80], a                                  ; $7263: $e0 $80
    push de                                       ; $7265: $d5
    and d                                         ; $7266: $a2
    push bc                                       ; $7267: $c5
    sub l                                         ; $7268: $95
    jp nz, $c491                                  ; $7269: $c2 $91 $c4

    push af                                       ; $726c: $f5
    db $e4                                        ; $726d: $e4
    sbc h                                         ; $726e: $9c
    adc [hl]                                      ; $726f: $8e
    adc a                                         ; $7270: $8f
    rra                                           ; $7271: $1f
    ld b, h                                       ; $7272: $44
    ld b, h                                       ; $7273: $44
    adc a                                         ; $7274: $8f
    adc [hl]                                      ; $7275: $8e
    sbc h                                         ; $7276: $9c
    ld a, d                                       ; $7277: $7a

jr_02f_7278:
    pop bc                                        ; $7278: $c1
    or l                                          ; $7279: $b5
    and b                                         ; $727a: $a0
    add b                                         ; $727b: $80
    db $d3                                        ; $727c: $d3
    add b                                         ; $727d: $80
    sub a                                         ; $727e: $97
    add b                                         ; $727f: $80
    reti                                          ; $7280: $d9


    and b                                         ; $7281: $a0
    jr @-$3e                                      ; $7282: $18 $c0

    sub l                                         ; $7284: $95
    pop bc                                        ; $7285: $c1
    sub c                                         ; $7286: $91
    ret nz                                        ; $7287: $c0

    adc d                                         ; $7288: $8a
    push bc                                       ; $7289: $c5
    add [hl]                                      ; $728a: $86
    ret nz                                        ; $728b: $c0

    sbc h                                         ; $728c: $9c
    ld a, a                                       ; $728d: $7f
    adc a                                         ; $728e: $8f
    ld b, [hl]                                    ; $728f: $46
    ld b, l                                       ; $7290: $45
    ld b, l                                       ; $7291: $45
    ld b, [hl]                                    ; $7292: $46
    adc a                                         ; $7293: $8f
    sbc h                                         ; $7294: $9c
    ld a, d                                       ; $7295: $7a
    pop bc                                        ; $7296: $c1
    ret nz                                        ; $7297: $c0

    or l                                          ; $7298: $b5
    and b                                         ; $7299: $a0
    nop                                           ; $729a: $00
    or [hl]                                       ; $729b: $b6
    and d                                         ; $729c: $a2
    ret nz                                        ; $729d: $c0

    sub h                                         ; $729e: $94
    push bc                                       ; $729f: $c5
    adc d                                         ; $72a0: $8a
    rst $00                                       ; $72a1: $c7
    inc bc                                        ; $72a2: $03
    ldh [$9a], a                                  ; $72a3: $e0 $9a
    xor e                                         ; $72a5: $ab
    ccf                                           ; $72a6: $3f
    xor e                                         ; $72a7: $ab
    ld b, l                                       ; $72a8: $45
    ld b, l                                       ; $72a9: $45
    xor e                                         ; $72aa: $ab
    xor e                                         ; $72ab: $ab
    sbc d                                         ; $72ac: $9a
    db $fd                                        ; $72ad: $fd
    pop bc                                        ; $72ae: $c1
    ld a, [hl]                                    ; $72af: $7e
    pop bc                                        ; $72b0: $c1
    ld e, b                                       ; $72b1: $58
    db $f4                                        ; $72b2: $f4
    adc [hl]                                      ; $72b3: $8e
    push de                                       ; $72b4: $d5
    and a                                         ; $72b5: $a7
    jr jr_02f_7278                                ; $72b6: $18 $c0

    sbc l                                         ; $72b8: $9d
    sbc e                                         ; $72b9: $9b
    rst $38                                       ; $72ba: $ff
    ldh [$9d], a                                  ; $72bb: $e0 $9d
    or $e4                                        ; $72bd: $f6 $e4
    db $fd                                        ; $72bf: $fd
    sbc a                                         ; $72c0: $9f
    di                                            ; $72c1: $f3
    ldh [$9a], a                                  ; $72c2: $e0 $9a
    ld b, [hl]                                    ; $72c4: $46
    xor h                                         ; $72c5: $ac
    xor h                                         ; $72c6: $ac
    ld [hl], $36                                  ; $72c7: $36 $36
    rlca                                          ; $72c9: $07
    xor h                                         ; $72ca: $ac
    xor h                                         ; $72cb: $ac
    ld b, [hl]                                    ; $72cc: $46
    cp a                                          ; $72cd: $bf
    ldh [$78], a                                  ; $72ce: $e0 $78
    and b                                         ; $72d0: $a0
    ld h, d                                       ; $72d1: $62
    rst $00                                       ; $72d2: $c7
    nop                                           ; $72d3: $00
    xor l                                         ; $72d4: $ad
    sub d                                         ; $72d5: $92
    and $f1                                       ; $72d6: $e6 $f1
    ld b, [hl]                                    ; $72d8: $46
    push de                                       ; $72d9: $d5
    pop hl                                        ; $72da: $e1
    adc b                                         ; $72db: $88
    ldh [$86], a                                  ; $72dc: $e0 $86
    add h                                         ; $72de: $84
    ld b, l                                       ; $72df: $45
    ld [hl], $3b                                  ; $72e0: $36 $3b
    dec [hl]                                      ; $72e2: $35
    rra                                           ; $72e3: $1f
    dec [hl]                                      ; $72e4: $35
    dec sp                                        ; $72e5: $3b
    ld [hl], $45                                  ; $72e6: $36 $45
    ld b, [hl]                                    ; $72e8: $46
    cp $c2                                        ; $72e9: $fe $c2
    ld h, d                                       ; $72eb: $62
    rst $00                                       ; $72ec: $c7
    add b                                         ; $72ed: $80
    adc $d8                                       ; $72ee: $ce $d8
    sub h                                         ; $72f0: $94
    pop bc                                        ; $72f1: $c1
    sub d                                         ; $72f2: $92
    pop hl                                        ; $72f3: $e1
    adc e                                         ; $72f4: $8b
    ld h, b                                       ; $72f5: $60
    sbc d                                         ; $72f6: $9a
    sbc a                                         ; $72f7: $9f
    adc b                                         ; $72f8: $88
    ldh [rDMA], a                                 ; $72f9: $e0 $46
    ld a, c                                       ; $72fb: $79
    rst $38                                       ; $72fc: $ff
    ld a, d                                       ; $72fd: $7a
    ld a, e                                       ; $72fe: $7b
    ld a, h                                       ; $72ff: $7c
    ld a, l                                       ; $7300: $7d
    ld b, [hl]                                    ; $7301: $46
    ld b, h                                       ; $7302: $44
    inc a                                         ; $7303: $3c
    and c                                         ; $7304: $a1
    rra                                           ; $7305: $1f
    ld h, h                                       ; $7306: $64
    ld h, h                                       ; $7307: $64
    and d                                         ; $7308: $a2
    inc a                                         ; $7309: $3c
    ld b, h                                       ; $730a: $44
    ret nz                                        ; $730b: $c0

    ldh [$78], a                                  ; $730c: $e0 $78
    and b                                         ; $730e: $a0
    cp h                                          ; $730f: $bc
    and b                                         ; $7310: $a0
    ld l, b                                       ; $7311: $68
    add b                                         ; $7312: $80
    jp nc, $805b                                  ; $7313: $d2 $5b $80

    ld a, [de]                                    ; $7316: $1a
    and b                                         ; $7317: $a0
    sbc [hl]                                      ; $7318: $9e
    ret c                                         ; $7319: $d8

    adc c                                         ; $731a: $89
    ld a, c                                       ; $731b: $79
    ld a, [hl]                                    ; $731c: $7e
    ld b, c                                       ; $731d: $41
    ld h, b                                       ; $731e: $60
    rst $38                                       ; $731f: $ff
    add c                                         ; $7320: $81
    ld b, [hl]                                    ; $7321: $46
    ld b, d                                       ; $7322: $42
    dec [hl]                                      ; $7323: $35
    ld l, c                                       ; $7324: $69
    and b                                         ; $7325: $a0
    dec [hl]                                      ; $7326: $35
    ld l, d                                       ; $7327: $6a
    add e                                         ; $7328: $83
    dec [hl]                                      ; $7329: $35
    ld b, d                                       ; $732a: $42
    db $e3                                        ; $732b: $e3
    db $e4                                        ; $732c: $e4
    add b                                         ; $732d: $80
    call nc, $805b                                ; $732e: $d4 $5b $80
    sub h                                         ; $7331: $94
    pop bc                                        ; $7332: $c1
    sbc b                                         ; $7333: $98
    adc c                                         ; $7334: $89
    add b                                         ; $7335: $80
    ld a, d                                       ; $7336: $7a
    push bc                                       ; $7337: $c5
    ld h, c                                       ; $7338: $61
    add c                                         ; $7339: $81
    add b                                         ; $733a: $80
    ldh [rBCPD], a                                ; $733b: $e0 $69
    dec [hl]                                      ; $733d: $35
    dec [hl]                                      ; $733e: $35
    ld l, d                                       ; $733f: $6a
    add b                                         ; $7340: $80
    ld [c], a                                     ; $7341: $e2
    ret nz                                        ; $7342: $c0

    ld a, b                                       ; $7343: $78
    add c                                         ; $7344: $81
    add b                                         ; $7345: $80
    ld [hl], d                                    ; $7346: $72
    and [hl]                                      ; $7347: $a6
    call nz, $e10c                                ; $7348: $c4 $0c $e1
    ld d, h                                       ; $734b: $54
    ret nz                                        ; $734c: $c0

    adc l                                         ; $734d: $8d
    ld h, d                                       ; $734e: $62
    xor e                                         ; $734f: $ab
    xor e                                         ; $7350: $ab
    ccf                                           ; $7351: $3f
    add d                                         ; $7352: $82
    add e                                         ; $7353: $83
    ld b, [hl]                                    ; $7354: $46
    ld b, [hl]                                    ; $7355: $46
    add e                                         ; $7356: $83
    ld l, l                                       ; $7357: $6d
    ret nz                                        ; $7358: $c0

    jp hl                                         ; $7359: $e9


    ld h, b                                       ; $735a: $60
    add $fc                                       ; $735b: $c6 $fc
    add b                                         ; $735d: $80
    ld l, e                                       ; $735e: $6b
    ld [bc], a                                    ; $735f: $02
    add sp, $46                                   ; $7360: $e8 $46
    ld b, l                                       ; $7362: $45
    ld b, a                                       ; $7363: $47
    ld d, h                                       ; $7364: $54
    ld b, h                                       ; $7365: $44
    ld c, b                                       ; $7366: $48
    rst $30                                       ; $7367: $f7
    ld d, e                                       ; $7368: $53
    ld d, b                                       ; $7369: $50
    ld b, l                                       ; $736a: $45
    adc d                                         ; $736b: $8a
    ret nz                                        ; $736c: $c0

    add h                                         ; $736d: $84
    add l                                         ; $736e: $85
    add [hl]                                      ; $736f: $86
    add [hl]                                      ; $7370: $86
    inc bc                                        ; $7371: $03
    add l                                         ; $7372: $85
    add h                                         ; $7373: $84
    ld b, b                                       ; $7374: $40
    rst $20                                       ; $7375: $e7
    cp $a2                                        ; $7376: $fe $a2
    cp l                                          ; $7378: $bd
    or b                                          ; $7379: $b0
    add [hl]                                      ; $737a: $86
    jp $a196                                      ; $737b: $c3 $96 $a1


    add h                                         ; $737e: $84
    ret nz                                        ; $737f: $c0

    rst $38                                       ; $7380: $ff
    ld c, d                                       ; $7381: $4a
    ld d, [hl]                                    ; $7382: $56
    dec hl                                        ; $7383: $2b
    dec hl                                        ; $7384: $2b
    ld e, c                                       ; $7385: $59
    ld d, h                                       ; $7386: $54
    ld e, l                                       ; $7387: $5d
    ld d, l                                       ; $7388: $55
    db $fc                                        ; $7389: $fc
    add hl, bc                                    ; $738a: $09
    ld h, h                                       ; $738b: $64
    ld [hl], d                                    ; $738c: $72
    ret nz                                        ; $738d: $c0

    ld b, h                                       ; $738e: $44
    inc a                                         ; $738f: $3c
    ld l, e                                       ; $7390: $6b
    ld [hl], c                                    ; $7391: $71
    ld [hl], c                                    ; $7392: $71
    ld l, l                                       ; $7393: $6d
    ret nz                                        ; $7394: $c0

    ret nz                                        ; $7395: $c0

    ret nz                                        ; $7396: $c0

    cp $a2                                        ; $7397: $fe $a2
    cp l                                          ; $7399: $bd
    or b                                          ; $739a: $b0
    ld e, $43                                     ; $739b: $1e $43
    sub [hl]                                      ; $739d: $96
    and c                                         ; $739e: $a1
    ld a, [de]                                    ; $739f: $1a
    ret nz                                        ; $73a0: $c0

    ld d, l                                       ; $73a1: $55
    ld e, d                                       ; $73a2: $5a
    rra                                           ; $73a3: $1f
    jr nc, jr_02f_73c6                            ; $73a4: $30 $20

    cpl                                           ; $73a6: $2f
    ld a, [hl+]                                   ; $73a7: $2a
    ld c, e                                       ; $73a8: $4b
    ret nz                                        ; $73a9: $c0

    push hl                                       ; $73aa: $e5
    ld [$40c0], sp                                ; $73ab: $08 $c0 $40
    add $f0                                       ; $73ae: $c6 $f0
    cp $a3                                        ; $73b0: $fe $a3
    cp l                                          ; $73b2: $bd
    xor a                                         ; $73b3: $af
    sbc b                                         ; $73b4: $98
    ld h, [hl]                                    ; $73b5: $66
    ld bc, $50e2                                  ; $73b6: $01 $e2 $50
    ld a, [hl+]                                   ; $73b9: $2a
    cpl                                           ; $73ba: $2f
    cpl                                           ; $73bb: $2f
    sbc a                                         ; $73bc: $9f
    ld a, [hl+]                                   ; $73bd: $2a
    ld d, b                                       ; $73be: $50
    ld b, l                                       ; $73bf: $45
    ld a, c                                       ; $73c0: $79
    ld a, d                                       ; $73c1: $7a
    ld b, l                                       ; $73c2: $45
    ret nz                                        ; $73c3: $c0

    rst $38                                       ; $73c4: $ff
    and h                                         ; $73c5: $a4

jr_02f_73c6:
    ld b, e                                       ; $73c6: $43
    scf                                           ; $73c7: $37
    ld b, c                                       ; $73c8: $41
    ld b, c                                       ; $73c9: $41
    ld b, e                                       ; $73ca: $43
    ld [$abc0], a                                 ; $73cb: $ea $c0 $ab
    xor e                                         ; $73ce: $ab
    cp $c3                                        ; $73cf: $fe $c3
    cp l                                          ; $73d1: $bd
    xor l                                         ; $73d2: $ad
    db $ec                                        ; $73d3: $ec
    inc a                                         ; $73d4: $3c
    ld b, d                                       ; $73d5: $42
    sbc e                                         ; $73d6: $9b
    ld b, b                                       ; $73d7: $40
    cp h                                          ; $73d8: $bc
    cp l                                          ; $73d9: $bd
    call z, $44a0                                 ; $73da: $cc $a0 $44
    ld d, h                                       ; $73dd: $54
    ld c, c                                       ; $73de: $49
    cpl                                           ; $73df: $2f
    ld b, h                                       ; $73e0: $44
    ld b, h                                       ; $73e1: $44
    ld c, c                                       ; $73e2: $49
    ld d, h                                       ; $73e3: $54
    ld b, h                                       ; $73e4: $44
    pop bc                                        ; $73e5: $c1
    add c                                         ; $73e6: $81
    dec bc                                        ; $73e7: $0b
    ld l, c                                       ; $73e8: $69
    ld [hl], h                                    ; $73e9: $74
    ld [c], a                                     ; $73ea: $e2
    pop bc                                        ; $73eb: $c1
    sbc [hl]                                      ; $73ec: $9e
    halt                                          ; $73ed: $76
    ld h, d                                       ; $73ee: $62
    cp l                                          ; $73ef: $bd
    xor l                                         ; $73f0: $ad
    ld e, $42                                     ; $73f1: $1e $42
    sbc e                                         ; $73f3: $9b
    ld b, b                                       ; $73f4: $40
    nop                                           ; $73f5: $00
    jp Jump_02f_4345                              ; $73f6: $c3 $45 $43


    nop                                           ; $73f9: $00
    ld [de], a                                    ; $73fa: $12
    and c                                         ; $73fb: $a1
    ld b, h                                       ; $73fc: $44
    pop bc                                        ; $73fd: $c1
    ret nz                                        ; $73fe: $c0

    db $ed                                        ; $73ff: $ed
    rst $38                                       ; $7400: $ff
    call nz, $aebd                                ; $7401: $c4 $bd $ae
    db $db                                        ; $7404: $db
    ld b, d                                       ; $7405: $42
    ld h, h                                       ; $7406: $64
    ld h, b                                       ; $7407: $60
    nop                                           ; $7408: $00
    jp nz, Jump_02f_4836                          ; $7409: $c2 $36 $48

    ld [c], a                                     ; $740c: $e2
    xor h                                         ; $740d: $ac
    xor h                                         ; $740e: $ac
    ret nz                                        ; $740f: $c0

    push hl                                       ; $7410: $e5
    ld b, l                                       ; $7411: $45
    ld b, c                                       ; $7412: $41
    ld sp, $c1c4                                  ; $7413: $31 $c4 $c1
    push hl                                       ; $7416: $e5
    ld a, b                                       ; $7417: $78
    nop                                           ; $7418: $00
    or c                                          ; $7419: $b1
    sbc l                                         ; $741a: $9d
    ld h, $0c                                     ; $741b: $26 $0c
    and b                                         ; $741d: $a0
    add b                                         ; $741e: $80
    xor e                                         ; $741f: $ab
    xor e                                         ; $7420: $ab
    ld a, a                                       ; $7421: $7f
    rlca                                          ; $7422: $07
    ldh [$08], a                                  ; $7423: $e0 $08
    inc b                                         ; $7425: $04
    ret nz                                        ; $7426: $c0

    dec b                                         ; $7427: $05
    ret nz                                        ; $7428: $c0

    inc b                                         ; $7429: $04
    and b                                         ; $742a: $a0
    and e                                         ; $742b: $a3
    rst $00                                       ; $742c: $c7
    pop bc                                        ; $742d: $c1
    ld l, $a1                                     ; $742e: $2e $a1
    xor d                                         ; $7430: $aa
    add c                                         ; $7431: $81
    cp h                                          ; $7432: $bc
    ld b, h                                       ; $7433: $44
    add h                                         ; $7434: $84
    nop                                           ; $7435: $00
    ld d, d                                       ; $7436: $52
    nop                                           ; $7437: $00
    call nz, $9680                                ; $7438: $c4 $80 $96
    add b                                         ; $743b: $80
    rlca                                          ; $743c: $07
    ldh [rDIV], a                                 ; $743d: $e0 $04
    ret nz                                        ; $743f: $c0

    dec b                                         ; $7440: $05
    ret nz                                        ; $7441: $c0

    ld b, l                                       ; $7442: $45
    rrca                                          ; $7443: $0f
    ld [hl], $62                                  ; $7444: $36 $62
    and h                                         ; $7446: $a4
    ld h, [hl]                                    ; $7447: $66
    cp a                                          ; $7448: $bf
    ld [c], a                                     ; $7449: $e2
    ld b, h                                       ; $744a: $44
    jp Jump_02f_43bc                              ; $744b: $c3 $bc $43


jr_02f_744e:
    add b                                         ; $744e: $80
    ld [hl], e                                    ; $744f: $73
    ld a, b                                       ; $7450: $78
    nop                                           ; $7451: $00
    call nz, $e487                                ; $7452: $c4 $87 $e4
    add [hl]                                      ; $7455: $86
    add h                                         ; $7456: $84
    ld h, d                                       ; $7457: $62
    ld h, a                                       ; $7458: $67
    and b                                         ; $7459: $a0
    ld l, b                                       ; $745a: $68
    cp a                                          ; $745b: $bf
    ldh [$87], a                                  ; $745c: $e0 $87
    xor e                                         ; $745e: $ab
    xor e                                         ; $745f: $ab
    sbc [hl]                                      ; $7460: $9e
    jr c, jr_02f_74a9                             ; $7461: $38 $46

    add b                                         ; $7463: $80
    ld [hl], l                                    ; $7464: $75
    nop                                           ; $7465: $00
    call nz, $e287                                ; $7466: $c4 $87 $e2
    ld b, e                                       ; $7469: $43
    db $fc                                        ; $746a: $fc
    ld d, b                                       ; $746b: $50
    jp nz, $e1c1                                  ; $746c: $c2 $c1 $e1

    dec [hl]                                      ; $746f: $35
    dec [hl]                                      ; $7470: $35
    ld l, h                                       ; $7471: $6c
    or e                                          ; $7472: $b3
    or h                                          ; $7473: $b4
    ld b, d                                       ; $7474: $42
    ld b, e                                       ; $7475: $43
    xor h                                         ; $7476: $ac
    xor h                                         ; $7477: $ac
    ld b, h                                       ; $7478: $44
    and a                                         ; $7479: $a7
    nop                                           ; $747a: $00
    or h                                          ; $747b: $b4
    nop                                           ; $747c: $00
    add $12                                       ; $747d: $c6 $12
    add b                                         ; $747f: $80
    dec sp                                        ; $7480: $3b
    db $fd                                        ; $7481: $fd
    ldh [rIE], a                                  ; $7482: $e0 $ff
    ld [hl], $45                                  ; $7484: $36 $45
    ld b, l                                       ; $7486: $45
    ld [hl], $b5                                  ; $7487: $36 $b5
    or [hl]                                       ; $7489: $b6
    and b                                         ; $748a: $a0
    dec [hl]                                      ; $748b: $35
    rlca                                          ; $748c: $07
    ld l, h                                       ; $748d: $6c
    ld l, a                                       ; $748e: $6f
    ld l, [hl]                                    ; $748f: $6e
    dec b                                         ; $7490: $05
    add b                                         ; $7491: $80
    add e                                         ; $7492: $83
    ld h, b                                       ; $7493: $60
    cp h                                          ; $7494: $bc
    jr nz, jr_02f_744e                            ; $7495: $20 $b7

    ld bc, $1180                                  ; $7497: $01 $80 $11
    ldh a, [$64]                                  ; $749a: $f0 $64
    ld h, $00                                     ; $749c: $26 $00
    pop bc                                        ; $749e: $c1
    ld [de], a                                    ; $749f: $12
    add c                                         ; $74a0: $81
    db $10                                        ; $74a1: $10
    add d                                         ; $74a2: $82
    ld b, l                                       ; $74a3: $45
    ld [hl], $6e                                  ; $74a4: $36 $6e
    ld l, a                                       ; $74a6: $6f
    ld b, c                                       ; $74a7: $41
    ld l, h                                       ; $74a8: $6c

jr_02f_74a9:
    pop bc                                        ; $74a9: $c1
    and $45                                       ; $74aa: $e6 $45
    and e                                         ; $74ac: $a3
    nop                                           ; $74ad: $00
    ld d, e                                       ; $74ae: $53
    add hl, hl                                    ; $74af: $29
    and h                                         ; $74b0: $a4
    jp c, $9c00                                   ; $74b1: $da $00 $9c

    ld [de], a                                    ; $74b4: $12
    add e                                         ; $74b5: $83
    add e                                         ; $74b6: $83
    dec [hl]                                      ; $74b7: $35
    and b                                         ; $74b8: $a0
    db $10                                        ; $74b9: $10
    add c                                         ; $74ba: $81
    cp a                                          ; $74bb: $bf
    pop hl                                        ; $74bc: $e1
    add d                                         ; $74bd: $82
    pop hl                                        ; $74be: $e1
    adc b                                         ; $74bf: $88
    and c                                         ; $74c0: $a1
    cp [hl]                                       ; $74c1: $be
    ld [bc], a                                    ; $74c2: $02
    add $29                                       ; $74c3: $c6 $29
    rst $00                                       ; $74c5: $c7
    add b                                         ; $74c6: $80
    rla                                           ; $74c7: $17
    jp nz, $9e43                                  ; $74c8: $c2 $43 $9e

    jp nc, Jump_000_3561                          ; $74cb: $d2 $61 $35

    rst $38                                       ; $74ce: $ff
    ldh [$d0], a                                  ; $74cf: $e0 $d0
    ld h, c                                       ; $74d1: $61
    nop                                           ; $74d2: $00
    cp a                                          ; $74d3: $bf
    pop hl                                        ; $74d4: $e1
    ld b, e                                       ; $74d5: $43
    pop hl                                        ; $74d6: $e1
    adc b                                         ; $74d7: $88
    and c                                         ; $74d8: $a1
    ld b, h                                       ; $74d9: $44
    ld b, e                                       ; $74da: $43
    nop                                           ; $74db: $00
    ld e, d                                       ; $74dc: $5a
    ret nz                                        ; $74dd: $c0

    ld h, e                                       ; $74de: $63
    sub d                                         ; $74df: $92
    add d                                         ; $74e0: $82
    sub b                                         ; $74e1: $90
    add e                                         ; $74e2: $83
    ld b, $05                                     ; $74e3: $06 $05
    ld h, c                                       ; $74e5: $61
    xor c                                         ; $74e6: $a9
    xor e                                         ; $74e7: $ab
    ldh a, [rLCDC]                                ; $74e8: $f0 $40
    ld [bc], a                                    ; $74ea: $02
    db $e3                                        ; $74eb: $e3
    jp nz, $c300                                  ; $74ec: $c2 $00 $c3

    ld d, b                                       ; $74ef: $50
    nop                                           ; $74f0: $00
    ld b, a                                       ; $74f1: $47
    ld [de], a                                    ; $74f2: $12
    push bc                                       ; $74f3: $c5
    ld bc, $c09c                                  ; $74f4: $01 $9c $c0
    ret z                                         ; $74f7: $c8

    call nz, $ac42                                ; $74f8: $c4 $42 $ac
    rst $38                                       ; $74fb: $ff
    ldh [rOBP1], a                                ; $74fc: $e0 $49
    and a                                         ; $74fe: $a7
    jp $1050                                      ; $74ff: $c3 $50 $10


    add b                                         ; $7502: $80
    rlca                                          ; $7503: $07
    cp [hl]                                       ; $7504: $be
    pop bc                                        ; $7505: $c1
    adc e                                         ; $7506: $8b
    ld b, b                                       ; $7507: $40
    sub d                                         ; $7508: $92
    add b                                         ; $7509: $80
    ld b, e                                       ; $750a: $43
    ld b, b                                       ; $750b: $40
    jp $a18c                                      ; $750c: $c3 $8c $a1


    ld [hl-], a                                   ; $750f: $32
    ld b, e                                       ; $7510: $43
    nop                                           ; $7511: $00
    ld b, [hl]                                    ; $7512: $46
    dec h                                         ; $7513: $25
    jp $8050                                      ; $7514: $c3 $50 $80


    rlca                                          ; $7517: $07
    ld [hl+], a                                   ; $7518: $22
    ld [bc], a                                    ; $7519: $02
    ld c, d                                       ; $751a: $4a
    ld b, [hl]                                    ; $751b: $46
    pop de                                        ; $751c: $d1
    add a                                         ; $751d: $87
    inc a                                         ; $751e: $3c
    dec b                                         ; $751f: $05
    ld b, e                                       ; $7520: $43
    di                                            ; $7521: $f3
    nop                                           ; $7522: $00
    add b                                         ; $7523: $80
    rlca                                          ; $7524: $07
    xor c                                         ; $7525: $a9
    add b                                         ; $7526: $80
    jp nc, $ce01                                  ; $7527: $d2 $01 $ce

    ld hl, $8792                                  ; $752a: $21 $92 $87
    adc b                                         ; $752d: $88
    ret nz                                        ; $752e: $c0

    dec hl                                        ; $752f: $2b
    inc h                                         ; $7530: $24
    ld b, e                                       ; $7531: $43
    db $f4                                        ; $7532: $f4
    nop                                           ; $7533: $00
    add b                                         ; $7534: $80
    ld a, [bc]                                    ; $7535: $0a
    rst $00                                       ; $7536: $c7
    inc bc                                        ; $7537: $03
    add $23                                       ; $7538: $c6 $23
    sub c                                         ; $753a: $91
    inc hl                                        ; $753b: $23
    or l                                          ; $753c: $b5
    nop                                           ; $753d: $00
    or d                                          ; $753e: $b2
    ld [bc], a                                    ; $753f: $02
    ld e, h                                       ; $7540: $5c
    ld h, b                                       ; $7541: $60
    ld b, e                                       ; $7542: $43
    di                                            ; $7543: $f3
    nop                                           ; $7544: $00
    add b                                         ; $7545: $80
    ld a, [bc]                                    ; $7546: $0a
    sbc b                                         ; $7547: $98
    pop hl                                        ; $7548: $e1
    ld a, [$13a2]                                 ; $7549: $fa $a2 $13
    ret nz                                        ; $754c: $c0

    push af                                       ; $754d: $f5
    jr nz, jr_02f_75c8                            ; $754e: $20 $78

    nop                                           ; $7550: $00
    add [hl]                                      ; $7551: $86
    ldh [$83], a                                  ; $7552: $e0 $83
    ldh [rP1], a                                  ; $7554: $e0 $00
    ld c, c                                       ; $7556: $49
    ld a, [c]                                     ; $7557: $f2
    add b                                         ; $7558: $80
    db $10                                        ; $7559: $10
    add $04                                       ; $755a: $c6 $04
    cp d                                          ; $755c: $ba
    ld [hl+], a                                   ; $755d: $22
    push af                                       ; $755e: $f5
    jr nz, jr_02f_75aa                            ; $755f: $20 $49

    ld [c], a                                     ; $7561: $e2
    inc c                                         ; $7562: $0c
    or e                                          ; $7563: $b3
    add b                                         ; $7564: $80
    ld [de], a                                    ; $7565: $12
    nop                                           ; $7566: $00
    or a                                          ; $7567: $b7
    ld b, d                                       ; $7568: $42
    cp d                                          ; $7569: $ba
    dec h                                         ; $756a: $25
    sub e                                         ; $756b: $93
    ld h, h                                       ; $756c: $64
    inc c                                         ; $756d: $0c
    or h                                          ; $756e: $b4
    add b                                         ; $756f: $80
    ret nc                                        ; $7570: $d0

    ld a, d                                       ; $7571: $7a
    ld b, $7a                                     ; $7572: $06 $7a
    inc h                                         ; $7574: $24
    sub b                                         ; $7575: $90
    inc bc                                        ; $7576: $03
    nop                                           ; $7577: $00
    inc c                                         ; $7578: $0c
    or h                                          ; $7579: $b4
    add b                                         ; $757a: $80
    ret nc                                        ; $757b: $d0

    ld [hl], e                                    ; $757c: $73
    daa                                           ; $757d: $27
    add l                                         ; $757e: $85
    inc b                                         ; $757f: $04
    sub d                                         ; $7580: $92
    ld b, d                                       ; $7581: $42
    inc c                                         ; $7582: $0c
    or h                                          ; $7583: $b4
    nop                                           ; $7584: $00
    ld c, a                                       ; $7585: $4f
    ld a, d                                       ; $7586: $7a
    add $00                                       ; $7587: $c6 $00
    ld [hl], a                                    ; $7589: $77
    inc h                                         ; $758a: $24
    ld [hl], e                                    ; $758b: $73
    and c                                         ; $758c: $a1
    rst $38                                       ; $758d: $ff
    add $3d                                       ; $758e: $c6 $3d
    ld a, [$e943]                                 ; $7590: $fa $43 $e9
    ld a, c                                       ; $7593: $79
    inc bc                                        ; $7594: $03
    ret nz                                        ; $7595: $c0

    push hl                                       ; $7596: $e5
    add hl, hl                                    ; $7597: $29
    add h                                         ; $7598: $84
    nop                                           ; $7599: $00
    add b                                         ; $759a: $80
    rst $18                                       ; $759b: $df
    or [hl]                                       ; $759c: $b6
    ld b, $79                                     ; $759d: $06 $79
    ld [bc], a                                    ; $759f: $02
    ld b, b                                       ; $75a0: $40
    and $6b                                       ; $75a1: $e6 $6b
    push bc                                       ; $75a3: $c5
    add b                                         ; $75a4: $80
    rst $18                                       ; $75a5: $df
    ld a, [hl+]                                   ; $75a6: $2a
    and l                                         ; $75a7: $a5
    ld a, c                                       ; $75a8: $79
    ld [bc], a                                    ; $75a9: $02

jr_02f_75aa:
    nop                                           ; $75aa: $00
    ret nz                                        ; $75ab: $c0

    ret z                                         ; $75ac: $c8

    ld l, c                                       ; $75ad: $69
    ld [bc], a                                    ; $75ae: $02
    add b                                         ; $75af: $80
    rst $18                                       ; $75b0: $df
    dec a                                         ; $75b1: $3d
    db $eb                                        ; $75b2: $eb
    ld b, b                                       ; $75b3: $40
    add $0c                                       ; $75b4: $c6 $0c
    ld h, d                                       ; $75b6: $62
    add b                                         ; $75b7: $80
    rst $18                                       ; $75b8: $df
    ld [hl], e                                    ; $75b9: $73
    dec hl                                        ; $75ba: $2b
    add e                                         ; $75bb: $83
    call nz, $80c5                                ; $75bc: $c4 $c5 $80
    and d                                         ; $75bf: $a2
    ld a, e                                       ; $75c0: $7b
    and c                                         ; $75c1: $a1
    ld [$80a2], sp                                ; $75c2: $08 $a2 $80
    rst $18                                       ; $75c5: $df
    ld l, l                                       ; $75c6: $6d
    adc e                                         ; $75c7: $8b

jr_02f_75c8:
    add $01                                       ; $75c8: $c6 $01
    rst $00                                       ; $75ca: $c7
    ret nz                                        ; $75cb: $c0

    db $e4                                        ; $75cc: $e4
    adc a                                         ; $75cd: $8f
    ld h, e                                       ; $75ce: $63
    ld b, e                                       ; $75cf: $43
    db $fc                                        ; $75d0: $fc
    ld b, h                                       ; $75d1: $44
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    ccf                                           ; $75d6: $3f
    dec c                                         ; $75d7: $0d
    dec c                                         ; $75d8: $0d
    dec c                                         ; $75d9: $0d
    ld c, $0e                                     ; $75da: $0e $0e
    ld c, $fa                                     ; $75dc: $0e $fa
    rst $38                                       ; $75de: $ff
    db $f4                                        ; $75df: $f4
    rst $30                                       ; $75e0: $f7
    nop                                           ; $75e1: $00
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    ld sp, hl                                     ; $75e8: $f9
    ld hl, sp+$5b                                 ; $75e9: $f8 $5b
    rst $38                                       ; $75eb: $ff
    db $f4                                        ; $75ec: $f4
    ld hl, sp-$5f                                 ; $75ed: $f8 $a1
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    nop                                           ; $75f2: $00
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    ld b, e                                       ; $75f5: $43
    rst $38                                       ; $75f6: $ff
    ld a, [$80ff]                                 ; $75f7: $fa $ff $80
    rst $18                                       ; $75fa: $df
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    dec a                                         ; $7601: $3d
    rst $38                                       ; $7602: $ff
    ret nz                                        ; $7603: $c0

    ld a, [$80ff]                                 ; $7604: $fa $ff $80
    rst $18                                       ; $7607: $df
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff

jr_02f_760c:
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    ld e, e                                       ; $760e: $5b
    rst $38                                       ; $760f: $ff
    dec c                                         ; $7610: $0d
    ld c, l                                       ; $7611: $4d
    ld de, $384d                                  ; $7612: $11 $4d $38
    ldh [$80], a                                  ; $7615: $e0 $80
    rst $18                                       ; $7617: $df
    sub [hl]                                      ; $7618: $96
    db $f4                                        ; $7619: $f4
    ld c, l                                       ; $761a: $4d
    jp c, Jump_02f_61ff                           ; $761b: $da $ff $61

    ei                                            ; $761e: $fb
    ret nz                                        ; $761f: $c0

    rst $38                                       ; $7620: $ff
    nop                                           ; $7621: $00
    ld b, e                                       ; $7622: $43
    ld a, [$e285]                                 ; $7623: $fa $85 $e2
    dec a                                         ; $7626: $3d
    db $e3                                        ; $7627: $e3
    jr c, jr_02f_760c                             ; $7628: $38 $e2

    add b                                         ; $762a: $80
    rst $18                                       ; $762b: $df
    ld b, e                                       ; $762c: $43
    jp hl                                         ; $762d: $e9


    adc $e4                                       ; $762e: $ce $e4
    jp nz, Jump_000_20e2                          ; $7630: $c2 $e2 $20

    ld [hl], a                                    ; $7633: $77
    rst $38                                       ; $7634: $ff
    ld h, a                                       ; $7635: $67
    ldh a, [$fc]                                  ; $7636: $f0 $fc
    add sp, -$40                                  ; $7638: $e8 $c0
    db $f4                                        ; $763a: $f4
    db $db                                        ; $763b: $db
    xor e                                         ; $763c: $ab
    ld c, l                                       ; $763d: $4d
    ld e, d                                       ; $763e: $5a
    db $e3                                        ; $763f: $e3
    ld l, b                                       ; $7640: $68
    jp $8500                                      ; $7641: $c3 $00 $85


    ret nz                                        ; $7644: $c0

    ld b, h                                       ; $7645: $44
    pop hl                                        ; $7646: $e1
    cp $e1                                        ; $7647: $fe $e1
    or a                                          ; $7649: $b7
    call nz, $dd80                                ; $764a: $c4 $80 $dd
    ld de, $5be1                                  ; $764d: $11 $e1 $5b
    push hl                                       ; $7650: $e5
    add h                                         ; $7651: $84
    and b                                         ; $7652: $a0
    jp nz, $e1c0                                  ; $7653: $c2 $c0 $e1

    ld l, l                                       ; $7656: $6d
    ret nz                                        ; $7657: $c0

    push hl                                       ; $7658: $e5
    push af                                       ; $7659: $f5
    jp $ff4f                                      ; $765a: $c3 $4f $ff


    ret nz                                        ; $765d: $c0

    ld [$6d4d], a                                 ; $765e: $ea $4d $6d
    rra                                           ; $7661: $1f
    ld c, l                                       ; $7662: $4d
    dec c                                         ; $7663: $0d
    ld a, [bc]                                    ; $7664: $0a
    ld a, [bc]                                    ; $7665: $0a
    dec l                                         ; $7666: $2d
    ld a, e                                       ; $7667: $7b
    ldh [$03], a                                  ; $7668: $e0 $03
    ld hl, sp-$25                                 ; $766a: $f8 $db
    and [hl]                                      ; $766c: $a6
    ld hl, sp-$7a                                 ; $766d: $f8 $86
    push hl                                       ; $766f: $e5
    push af                                       ; $7670: $f5
    rst $20                                       ; $7671: $e7
    call nz, Call_02f_6da0                        ; $7672: $c4 $a0 $6d
    ld a, [bc]                                    ; $7675: $0a
    ld a, [bc]                                    ; $7676: $0a
    ld c, l                                       ; $7677: $4d
    dec l                                         ; $7678: $2d
    ld bc, $b22d                                  ; $7679: $01 $2d $b2
    db $e3                                        ; $767c: $e3
    add b                                         ; $767d: $80
    call nc, $a09e                                ; $767e: $d4 $9e $a0
    sbc e                                         ; $7681: $9b
    jp $c5cd                                      ; $7682: $c3 $cd $c5


    push af                                       ; $7685: $f5
    and $84                                       ; $7686: $e6 $84
    and c                                         ; $7688: $a1
    ccf                                           ; $7689: $3f
    dec hl                                        ; $768a: $2b
    ld c, e                                       ; $768b: $4b
    dec l                                         ; $768c: $2d
    dec c                                         ; $768d: $0d
    dec l                                         ; $768e: $2d
    ld l, l                                       ; $768f: $6d
    or l                                          ; $7690: $b5
    and d                                         ; $7691: $a2
    ld a, e                                       ; $7692: $7b
    ret nz                                        ; $7693: $c0

    ret nz                                        ; $7694: $c0

    rst $38                                       ; $7695: $ff
    or [hl]                                       ; $7696: $b6
    db $10                                        ; $7697: $10
    pop hl                                        ; $7698: $e1
    cp $c4                                        ; $7699: $fe $c4
    ld a, [hl+]                                   ; $769b: $2a
    and b                                         ; $769c: $a0
    add $c2                                       ; $769d: $c6 $c2
    ld a, $c2                                     ; $769f: $3e $c2
    ld l, e                                       ; $76a1: $6b
    ld l, e                                       ; $76a2: $6b
    rlca                                          ; $76a3: $07
    ld c, e                                       ; $76a4: $4b
    dec bc                                        ; $76a5: $0b
    dec l                                         ; $76a6: $2d
    ret nz                                        ; $76a7: $c0

    rst $30                                       ; $76a8: $f7
    ld sp, hl                                     ; $76a9: $f9
    and [hl]                                      ; $76aa: $a6
    db $10                                        ; $76ab: $10
    db $e3                                        ; $76ac: $e3
    jp nc, $fec7                                  ; $76ad: $d2 $c7 $fe

    db $e3                                        ; $76b0: $e3
    dec b                                         ; $76b1: $05
    ld l, l                                       ; $76b2: $6d
    add b                                         ; $76b3: $80
    ldh [$0b], a                                  ; $76b4: $e0 $0b
    ei                                            ; $76b6: $fb
    add b                                         ; $76b7: $80
    db $fd                                        ; $76b8: $fd
    ret nz                                        ; $76b9: $c0

    dec a                                         ; $76ba: $3d
    push af                                       ; $76bb: $f5
    cp c                                          ; $76bc: $b9
    add a                                         ; $76bd: $87
    ld b, d                                       ; $76be: $42
    ret nz                                        ; $76bf: $c0

    ldh a, [rHDMA1]                               ; $76c0: $f0 $51
    ret nz                                        ; $76c2: $c0

    ld d, h                                       ; $76c3: $54
    ld [c], a                                     ; $76c4: $e2
    ret                                           ; $76c5: $c9


    add c                                         ; $76c6: $81
    pop bc                                        ; $76c7: $c1
    pop bc                                        ; $76c8: $c1
    ld c, e                                       ; $76c9: $4b
    dec c                                         ; $76ca: $0d
    dec c                                         ; $76cb: $0d
    dec bc                                        ; $76cc: $0b
    add c                                         ; $76cd: $81
    dec hl                                        ; $76ce: $2b
    ld a, e                                       ; $76cf: $7b
    ldh [$bf], a                                  ; $76d0: $e0 $bf
    ldh [$3e], a                                  ; $76d2: $e0 $3e
    db $e3                                        ; $76d4: $e3
    dec a                                         ; $76d5: $3d
    push af                                       ; $76d6: $f5
    sbc l                                         ; $76d7: $9d
    jp nz, $e092                                  ; $76d8: $c2 $92 $e0

    dec bc                                        ; $76db: $0b
    rst $10                                       ; $76dc: $d7
    ld c, e                                       ; $76dd: $4b
    ld c, l                                       ; $76de: $4d
    dec l                                         ; $76df: $2d
    adc b                                         ; $76e0: $88
    pop hl                                        ; $76e1: $e1
    dec bc                                        ; $76e2: $0b
    rst $38                                       ; $76e3: $ff
    pop hl                                        ; $76e4: $e1
    ld c, e                                       ; $76e5: $4b
    dec bc                                        ; $76e6: $0b
    pop bc                                        ; $76e7: $c1
    dec hl                                        ; $76e8: $2b
    ld hl, sp-$1e                                 ; $76e9: $f8 $e2
    ld a, [$c0e0]                                 ; $76eb: $fa $e0 $c0
    ld hl, sp+$5a                                 ; $76ee: $f8 $5a
    and [hl]                                      ; $76f0: $a6
    sub d                                         ; $76f1: $92
    pop hl                                        ; $76f2: $e1
    ld c, e                                       ; $76f3: $4b
    ld c, e                                       ; $76f4: $4b
    call $bb6b                                    ; $76f5: $cd $6b $bb
    and b                                         ; $76f8: $a0
    ld l, l                                       ; $76f9: $6d
    ld c, e                                       ; $76fa: $4b
    ld c, e                                       ; $76fb: $4b
    ldh [$80], a                                  ; $76fc: $e0 $80
    ld h, b                                       ; $76fe: $60
    ld c, e                                       ; $76ff: $4b
    ld l, e                                       ; $7700: $6b
    nop                                           ; $7701: $00
    ret nz                                        ; $7702: $c0

    db $e3                                        ; $7703: $e3
    db $fd                                        ; $7704: $fd
    ret nz                                        ; $7705: $c0

    cp h                                          ; $7706: $bc
    and h                                         ; $7707: $a4
    nop                                           ; $7708: $00
    or c                                          ; $7709: $b1
    jp nz, $c4c4                                  ; $770a: $c2 $c4 $c4

    ldh [$fe], a                                  ; $770d: $e0 $fe
    db $e3                                        ; $770f: $e3
    add h                                         ; $7710: $84
    pop hl                                        ; $7711: $e1
    ld e, $48                                     ; $7712: $1e $48
    ldh [$0b], a                                  ; $7714: $e0 $0b
    ld c, e                                       ; $7716: $4b
    dec c                                         ; $7717: $0d
    ld c, e                                       ; $7718: $4b
    add b                                         ; $7719: $80
    ldh [$f7], a                                  ; $771a: $e0 $f7
    ldh [$80], a                                  ; $771c: $e0 $80
    ld [c], a                                     ; $771e: $e2
    ld [$a378], sp                                ; $771f: $08 $78 $a3
    ld e, e                                       ; $7722: $5b
    sub l                                         ; $7723: $95
    ret nz                                        ; $7724: $c0

    db $ec                                        ; $7725: $ec
    ld c, e                                       ; $7726: $4b
    pop bc                                        ; $7727: $c1
    ldh [$fb], a                                  ; $7728: $e0 $fb
    pop hl                                        ; $772a: $e1
    add b                                         ; $772b: $80
    db $eb                                        ; $772c: $eb
    ld b, e                                       ; $772d: $43
    ld hl, sp-$7e                                 ; $772e: $f8 $82
    sub $a1                                       ; $7730: $d6 $a1
    ld c, e                                       ; $7732: $4b
    sub c                                         ; $7733: $91
    ldh [$80], a                                  ; $7734: $e0 $80
    db $e3                                        ; $7736: $e3
    ld b, h                                       ; $7737: $44
    ld [c], a                                     ; $7738: $e2
    ld [$40c0], sp                                ; $7739: $08 $c0 $40
    and $4b                                       ; $773c: $e6 $4b
    ldh [$c0], a                                  ; $773e: $e0 $c0
    pop bc                                        ; $7740: $c1
    db $db                                        ; $7741: $db
    jp Jump_02f_4cab                              ; $7742: $c3 $ab $4c


    ld a, [hl+]                                   ; $7745: $2a
    add h                                         ; $7746: $84
    call $4bc1                                    ; $7747: $cd $c1 $4b
    dec hl                                        ; $774a: $2b
    ld a, [bc]                                    ; $774b: $0a
    rst $18                                       ; $774c: $df
    ld l, d                                       ; $774d: $6a
    ld c, e                                       ; $774e: $4b
    ld a, [bc]                                    ; $774f: $0a
    ld l, d                                       ; $7750: $6a
    ld a, [bc]                                    ; $7751: $0a
    ret nz                                        ; $7752: $c0

    db $e3                                        ; $7753: $e3
    dec c                                         ; $7754: $0d
    dec c                                         ; $7755: $0d
    inc bc                                        ; $7756: $03
    dec l                                         ; $7757: $2d
    dec l                                         ; $7758: $2d
    ret nz                                        ; $7759: $c0

    pop bc                                        ; $775a: $c1
    ld b, b                                       ; $775b: $40
    ld [c], a                                     ; $775c: $e2
    ret nz                                        ; $775d: $c0

    ld [c], a                                     ; $775e: $e2
    cp b                                          ; $775f: $b8
    add h                                         ; $7760: $84
    add [hl]                                      ; $7761: $86
    rst $08                                       ; $7762: $cf
    sub $a3                                       ; $7763: $d6 $a3
    rst $38                                       ; $7765: $ff
    dec c                                         ; $7766: $0d
    ld c, e                                       ; $7767: $4b
    ld a, [bc]                                    ; $7768: $0a
    ld a, [bc]                                    ; $7769: $0a
    dec bc                                        ; $776a: $0b
    dec hl                                        ; $776b: $2b
    ld a, [bc]                                    ; $776c: $0a
    ld a, [bc]                                    ; $776d: $0a
    inc bc                                        ; $776e: $03
    ld a, [bc]                                    ; $776f: $0a
    ld c, d                                       ; $7770: $4a
    rst $30                                       ; $7771: $f7
    call nz, $c044                                ; $7772: $c4 $44 $c0
    add b                                         ; $7775: $80
    and $6a                                       ; $7776: $e6 $6a
    pop bc                                        ; $7778: $c1
    ret nz                                        ; $7779: $c0

    ld a, [c]                                     ; $777a: $f2
    inc b                                         ; $777b: $04
    add $7a                                       ; $777c: $c6 $7a
    add h                                         ; $777e: $84
    ret nz                                        ; $777f: $c0

    ld a, [hl+]                                   ; $7780: $2a
    add l                                         ; $7781: $85
    ldh [$2b], a                                  ; $7782: $e0 $2b
    dec hl                                        ; $7784: $2b

jr_02f_7785:
    ld c, d                                       ; $7785: $4a
    ld a, [bc]                                    ; $7786: $0a
    ret nz                                        ; $7787: $c0

    add sp, -$7c                                  ; $7788: $e8 $84
    xor h                                         ; $778a: $ac
    jp nz, $e0fa                                  ; $778b: $c2 $fa $e0

    dec bc                                        ; $778e: $0b
    cp $a2                                        ; $778f: $fe $a2
    xor h                                         ; $7791: $ac
    ld h, a                                       ; $7792: $67
    add b                                         ; $7793: $80
    jp z, Jump_02f_4299                           ; $7794: $ca $99 $42

    dec l                                         ; $7797: $2d
    ld h, b                                       ; $7798: $60
    ld b, l                                       ; $7799: $45
    ret nz                                        ; $779a: $c0

    add $e1                                       ; $779b: $c6 $e1
    ei                                            ; $779d: $fb
    ldh [$8e], a                                  ; $779e: $e0 $8e
    ld b, c                                       ; $77a0: $41
    or $c2                                        ; $77a1: $f6 $c2
    ld c, e                                       ; $77a3: $4b
    dec hl                                        ; $77a4: $2b
    ld b, c                                       ; $77a5: $41
    and b                                         ; $77a6: $a0
    ld b, h                                       ; $77a7: $44
    pop bc                                        ; $77a8: $c1
    ldh [$75], a                                  ; $77a9: $e0 $75
    ret nz                                        ; $77ab: $c0

    dec c                                         ; $77ac: $0d
    cp [hl]                                       ; $77ad: $be
    and d                                         ; $77ae: $a2
    rra                                           ; $77af: $1f
    adc b                                         ; $77b0: $88
    add b                                         ; $77b1: $80
    adc $2d                                       ; $77b2: $ce $2d
    nop                                           ; $77b4: $00
    ldh [rTIMA], a                                ; $77b5: $e0 $05
    ld a, [hl+]                                   ; $77b7: $2a
    ccf                                           ; $77b8: $3f
    ldh [$2a], a                                  ; $77b9: $e0 $2a
    ld b, h                                       ; $77bb: $44
    pop bc                                        ; $77bc: $c1
    inc sp                                        ; $77bd: $33
    push bc                                       ; $77be: $c5
    xor a                                         ; $77bf: $af
    ret nz                                        ; $77c0: $c0

    cp b                                          ; $77c1: $b8
    and b                                         ; $77c2: $a0
    inc [hl]                                      ; $77c3: $34
    pop hl                                        ; $77c4: $e1
    jr nz, jr_02f_7785                            ; $77c5: $20 $be

    jp nz, $eec0                                  ; $77c7: $c2 $c0 $ee

    db $db                                        ; $77ca: $db
    ld b, h                                       ; $77cb: $44
    nop                                           ; $77cc: $00
    call nz, $80d3                                ; $77cd: $c4 $d3 $80
    ld l, e                                       ; $77d0: $6b
    add h                                         ; $77d1: $84
    pop hl                                        ; $77d2: $e1
    dec b                                         ; $77d3: $05
    pop bc                                        ; $77d4: $c1
    nop                                           ; $77d5: $00
    call nz, Call_02f_71e1                        ; $77d6: $c4 $e1 $71
    jp $e2ba                                      ; $77d9: $c3 $ba $e2


    push af                                       ; $77dc: $f5
    add c                                         ; $77dd: $81
    halt                                          ; $77de: $76
    ld h, d                                       ; $77df: $62
    dec hl                                        ; $77e0: $2b
    inc l                                         ; $77e1: $2c
    and $63                                       ; $77e2: $e6 $63
    ret nz                                        ; $77e4: $c0

    and e                                         ; $77e5: $a3
    inc b                                         ; $77e6: $04
    adc l                                         ; $77e7: $8d
    and d                                         ; $77e8: $a2
    ret nz                                        ; $77e9: $c0

    db $e4                                        ; $77ea: $e4
    dec hl                                        ; $77eb: $2b
    rst $38                                       ; $77ec: $ff
    pop hl                                        ; $77ed: $e1
    ld a, [c]                                     ; $77ee: $f2
    ret nz                                        ; $77ef: $c0

    ld b, h                                       ; $77f0: $44
    ret nz                                        ; $77f1: $c0

    or h                                          ; $77f2: $b4
    jp nz, Jump_02f_6177                          ; $77f3: $c2 $77 $61

    ld b, b                                       ; $77f6: $40
    nop                                           ; $77f7: $00
    or c                                          ; $77f8: $b1
    ld d, l                                       ; $77f9: $55
    jp $2199                                      ; $77fa: $c3 $99 $21


    db $d3                                        ; $77fd: $d3
    add c                                         ; $77fe: $81
    ld [$ccc2], sp                                ; $77ff: $08 $c2 $cc
    add b                                         ; $7802: $80
    dec l                                         ; $7803: $2d
    ret nz                                        ; $7804: $c0

    pop hl                                        ; $7805: $e1
    ld [$a107], sp                                ; $7806: $08 $07 $a1
    ret nz                                        ; $7809: $c0

    ld [c], a                                     ; $780a: $e2
    or [hl]                                       ; $780b: $b6
    nop                                           ; $780c: $00
    ld l, l                                       ; $780d: $6d
    nop                                           ; $780e: $00
    cp d                                          ; $780f: $ba
    nop                                           ; $7810: $00
    jp nz, $e2d8                                  ; $7811: $c2 $d8 $e2

    rlca                                          ; $7814: $07
    pop hl                                        ; $7815: $e1
    nop                                           ; $7816: $00
    dec b                                         ; $7817: $05
    jp nz, $e1c1                                  ; $7818: $c2 $c1 $e1

    cp a                                          ; $781b: $bf
    ld [c], a                                     ; $781c: $e2
    add h                                         ; $781d: $84
    ld [c], a                                     ; $781e: $e2
    ld h, b                                       ; $781f: $60
    add e                                         ; $7820: $83
    nop                                           ; $7821: $00
    or h                                          ; $7822: $b4
    dec h                                         ; $7823: $25
    add d                                         ; $7824: $82
    ld b, l                                       ; $7825: $45
    db $e3                                        ; $7826: $e3
    ld [$e087], sp                                ; $7827: $08 $87 $e0
    ld a, [$8684]                                 ; $782a: $fa $84 $86
    add c                                         ; $782d: $81
    dec l                                         ; $782e: $2d
    add l                                         ; $782f: $85
    add c                                         ; $7830: $81
    add [hl]                                      ; $7831: $86
    call nz, $9943                                ; $7832: $c4 $43 $99
    ret nz                                        ; $7835: $c0

    rst $20                                       ; $7836: $e7
    nop                                           ; $7837: $00
    adc h                                         ; $7838: $8c
    and c                                         ; $7839: $a1
    ld c, [hl]                                    ; $783a: $4e
    add d                                         ; $783b: $82
    ld b, a                                       ; $783c: $47
    add c                                         ; $783d: $81
    dec a                                         ; $783e: $3d
    ld [c], a                                     ; $783f: $e2
    ret nz                                        ; $7840: $c0

    and $c0                                       ; $7841: $e6 $c0
    sub e                                         ; $7843: $93

Jump_02f_7844:
    sbc [hl]                                      ; $7844: $9e
    inc bc                                        ; $7845: $03
    add $61                                       ; $7846: $c6 $61
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
    ret nz                                        ; $784a: $c0

    ld [de], a                                    ; $784b: $12
    add e                                         ; $784c: $83
    add hl, bc                                    ; $784d: $09
    ld [c], a                                     ; $784e: $e2
    add d                                         ; $784f: $82
    pop hl                                        ; $7850: $e1
    cp l                                          ; $7851: $bd
    pop bc                                        ; $7852: $c1
    cp a                                          ; $7853: $bf
    and b                                         ; $7854: $a0
    inc b                                         ; $7855: $04
    ld [c], a                                     ; $7856: $e2
    ld h, $45                                     ; $7857: $26 $45
    ret nz                                        ; $7859: $c0

    nop                                           ; $785a: $00
    xor [hl]                                      ; $785b: $ae
    add b                                         ; $785c: $80
    call nz, Call_02f_6187                        ; $785d: $c4 $87 $61
    ret nz                                        ; $7860: $c0

    add sp, $0b                                   ; $7861: $e8 $0b
    ld h, b                                       ; $7863: $60
    add b                                         ; $7864: $80
    ld [c], a                                     ; $7865: $e2
    ld l, e                                       ; $7866: $6b
    ld c, e                                       ; $7867: $4b
    ld bc, $862b                                  ; $7868: $01 $2b $86
    pop bc                                        ; $786b: $c1
    rst $30                                       ; $786c: $f7
    inc b                                         ; $786d: $04
    jp nz, Jump_000_0014                          ; $786e: $c2 $14 $00

    add [hl]                                      ; $7871: $86
    ld [de], a                                    ; $7872: $12
    add e                                         ; $7873: $83
    ld a, $e1                                     ; $7874: $3e $e1
    adc b                                         ; $7876: $88
    ldh [rSC], a                                  ; $7877: $e0 $02
    dec [hl]                                      ; $7879: $35
    and c                                         ; $787a: $a1
    ld l, e                                       ; $787b: $6b
    adc b                                         ; $787c: $88
    and l                                         ; $787d: $a5

jr_02f_787e:
    jp nz, $c039                                  ; $787e: $c2 $39 $c0

    ld [$e53e], a                                 ; $7881: $ea $3e $e5
    cp a                                          ; $7884: $bf
    pop hl                                        ; $7885: $e1
    ld b, e                                       ; $7886: $43
    ld [c], a                                     ; $7887: $e2
    nop                                           ; $7888: $00
    adc b                                         ; $7889: $88
    and e                                         ; $788a: $a3
    ld e, $83                                     ; $788b: $1e $83
    nop                                           ; $788d: $00
    ld d, [hl]                                    ; $788e: $56
    ld a, [hl]                                    ; $788f: $7e
    jp $e900                                      ; $7890: $c3 $00 $e9


    add h                                         ; $7893: $84
    db $e3                                        ; $7894: $e3
    or c                                          ; $7895: $b1
    and c                                         ; $7896: $a1
    ld [bc], a                                    ; $7897: $02
    push hl                                       ; $7898: $e5
    ld [hl], b                                    ; $7899: $70
    ld b, $b1                                     ; $789a: $06 $b1
    adc a                                         ; $789c: $8f
    daa                                           ; $789d: $27
    add $01                                       ; $789e: $c6 $01
    sbc b                                         ; $78a0: $98
    add b                                         ; $78a1: $80
    ld l, e                                       ; $78a2: $6b
    dec bc                                        ; $78a3: $0b
    ld l, e                                       ; $78a4: $6b
    db $fd                                        ; $78a5: $fd
    pop hl                                        ; $78a6: $e1
    ld bc, $c54b                                  ; $78a7: $01 $4b $c5
    jp nz, $62a4                                  ; $78aa: $c2 $a4 $62

    ld [bc], a                                    ; $78ad: $02
    pop hl                                        ; $78ae: $e1
    ld b, d                                       ; $78af: $42
    ld [bc], a                                    ; $78b0: $02
    ret nz                                        ; $78b1: $c0

    di                                            ; $78b2: $f3
    nop                                           ; $78b3: $00
    ld b, a                                       ; $78b4: $47
    dec de                                        ; $78b5: $1b
    ld b, b                                       ; $78b6: $40
    inc b                                         ; $78b7: $04
    sub d                                         ; $78b8: $92
    add b                                         ; $78b9: $80
    cp $e2                                        ; $78ba: $fe $e2
    ld c, e                                       ; $78bc: $4b
    res 4, c                                      ; $78bd: $cb $a1
    ld l, b                                       ; $78bf: $68
    and e                                         ; $78c0: $a3
    add h                                         ; $78c1: $84
    jp nz, $221f                                  ; $78c2: $c2 $1f $22

    jp TimerOverflowInterrupt                     ; $78c5: $c3 $50 $00


    db $ec                                        ; $78c8: $ec
    add hl, bc                                    ; $78c9: $09
    ld a, [hl]                                    ; $78ca: $7e
    jp $e6ff                                      ; $78cb: $c3 $ff $e6


    adc h                                         ; $78ce: $8c
    and c                                         ; $78cf: $a1
    ld [hl-], a                                   ; $78d0: $32
    inc bc                                        ; $78d1: $03
    inc hl                                        ; $78d2: $23
    ld h, d                                       ; $78d3: $62
    ld b, e                                       ; $78d4: $43
    rst $30                                       ; $78d5: $f7
    cp e                                          ; $78d6: $bb
    ld c, b                                       ; $78d7: $48
    ld [bc], a                                    ; $78d8: $02
    cp d                                          ; $78d9: $ba
    ld bc, $d02d                                  ; $78da: $01 $2d $d0
    add e                                         ; $78dd: $83
    ld c, l                                       ; $78de: $4d
    and d                                         ; $78df: $a2
    ld [$c0e7], sp                                ; $78e0: $08 $e7 $c0
    ld a, [$0480]                                 ; $78e3: $fa $80 $04
    cp e                                          ; $78e6: $bb
    ld [hl+], a                                   ; $78e7: $22
    nop                                           ; $78e8: $00
    ld d, [hl]                                    ; $78e9: $56
    jr nz, jr_02f_787e                            ; $78ea: $20 $92

    add h                                         ; $78ec: $84
    xor $05                                       ; $78ed: $ee $05
    ld b, a                                       ; $78ef: $47
    dec b                                         ; $78f0: $05
    ld b, e                                       ; $78f1: $43
    di                                            ; $78f2: $f3
    add b                                         ; $78f3: $80
    ld [$04ca], sp                                ; $78f4: $08 $ca $04
    ld a, [$0022]                                 ; $78f7: $fa $22 $00
    ld de, $ae20                                  ; $78fa: $11 $20 $ae
    ld b, $49                                     ; $78fd: $06 $49
    ei                                            ; $78ff: $fb
    add b                                         ; $7900: $80
    rlca                                          ; $7901: $07
    ld a, e                                       ; $7902: $7b
    pop bc                                        ; $7903: $c1
    ld h, [hl]                                    ; $7904: $66
    ld b, c                                       ; $7905: $41
    ret nz                                        ; $7906: $c0

    ld [c], a                                     ; $7907: $e2
    ld l, h                                       ; $7908: $6c
    and l                                         ; $7909: $a5

jr_02f_790a:
    nop                                           ; $790a: $00
    call z, $8036                                 ; $790b: $cc $36 $80
    ld c, $b8                                     ; $790e: $0e $b8
    add [hl]                                      ; $7910: $86
    ld a, d                                       ; $7911: $7a
    ld hl, $00fc                                  ; $7912: $21 $fc $00
    db $ed                                        ; $7915: $ed
    ld h, c                                       ; $7916: $61
    inc c                                         ; $7917: $0c
    or l                                          ; $7918: $b5
    add b                                         ; $7919: $80
    pop de                                        ; $791a: $d1
    nop                                           ; $791b: $00
    and e                                         ; $791c: $a3
    ld b, [hl]                                    ; $791d: $46
    ld a, [hl-]                                   ; $791e: $3a
    ld [hl+], a                                   ; $791f: $22
    sub b                                         ; $7920: $90
    dec b                                         ; $7921: $05
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    or a                                          ; $7924: $b7
    xor [hl]                                      ; $7925: $ae
    ld a, [hl]                                    ; $7926: $7e
    jp Jump_02f_6490                              ; $7927: $c3 $90 $64


    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    inc d                                         ; $792c: $14
    ld [hl], e                                    ; $792d: $73
    jr z, jr_02f_790a                             ; $792e: $28 $da

    add d                                         ; $7930: $82
    ld l, l                                       ; $7931: $6d
    ld a, [$6da3]                                 ; $7932: $fa $a3 $6d
    xor l                                         ; $7935: $ad
    and e                                         ; $7936: $a3
    inc c                                         ; $7937: $0c
    or d                                          ; $7938: $b2
    nop                                           ; $7939: $00
    xor l                                         ; $793a: $ad
    inc b                                         ; $793b: $04
    ld b, e                                       ; $793c: $43
    push hl                                       ; $793d: $e5
    ld [hl], c                                    ; $793e: $71
    ld [bc], a                                    ; $793f: $02
    dec l                                         ; $7940: $2d
    ld hl, sp+$01                                 ; $7941: $f8 $01
    add b                                         ; $7943: $80
    pop hl                                        ; $7944: $e1
    inc hl                                        ; $7945: $23
    dec h                                         ; $7946: $25
    ld a, a                                       ; $7947: $7f
    rst $38                                       ; $7948: $ff
    ld a, c                                       ; $7949: $79
    adc d                                         ; $794a: $8a
    inc bc                                        ; $794b: $03
    dec c                                         ; $794c: $0d
    ld l, l                                       ; $794d: $6d
    ld b, b                                       ; $794e: $40
    db $e3                                        ; $794f: $e3
    db $e3                                        ; $7950: $e3
    ld b, $43                                     ; $7951: $06 $43
    rst $38                                       ; $7953: $ff
    ld [hl], $a7                                  ; $7954: $36 $a7
    ld a, [hl-]                                   ; $7956: $3a
    ld [hl+], a                                   ; $7957: $22
    ld d, c                                       ; $7958: $51
    ld b, e                                       ; $7959: $43
    nop                                           ; $795a: $00
    ld h, [hl]                                    ; $795b: $66
    dec h                                         ; $795c: $25
    add b                                         ; $795d: $80
    rst $18                                       ; $795e: $df
    dec a                                         ; $795f: $3d
    db $ec                                        ; $7960: $ec
    ld [de], a                                    ; $7961: $12
    ld b, l                                       ; $7962: $45
    inc c                                         ; $7963: $0c
    ld h, d                                       ; $7964: $62
    ld c, c                                       ; $7965: $49
    rst $38                                       ; $7966: $ff
    or [hl]                                       ; $7967: $b6
    ld l, [hl]                                    ; $7968: $6e
    add d                                         ; $7969: $82
    jp $c000                                      ; $796a: $c3 $00 $c0


    rst $38                                       ; $796d: $ff
    dec a                                         ; $796e: $3d
    db $f4                                        ; $796f: $f4
    ret nz                                        ; $7970: $c0

    db $e3                                        ; $7971: $e3
    inc b                                         ; $7972: $04
    rst $20                                       ; $7973: $e7
    add b                                         ; $7974: $80
    call c, $0000                                 ; $7975: $dc $00 $00
    nop                                           ; $7978: $00
    ld bc, $ff00                                  ; $7979: $01 $00 $ff
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
    inc e                                         ; $7989: $1c
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    db $fd                                        ; $798c: $fd
    db $fc                                        ; $798d: $fc
    rrca                                          ; $798e: $0f
    rrca                                          ; $798f: $0f
    rrca                                          ; $7990: $0f
    pop hl                                        ; $7991: $e1
    db $fc                                        ; $7992: $fc
    rst $18                                       ; $7993: $df
    ld a, [$e1c3]                                 ; $7994: $fa $c3 $e1
    nop                                           ; $7997: $00
    cp a                                          ; $7998: $bf
    pop af                                        ; $7999: $f1
    ret z                                         ; $799a: $c8

    ld [c], a                                     ; $799b: $e2
    jp $9ee3                                      ; $799c: $c3 $e3 $9e


    ldh a, [$e9]                                  ; $799f: $f0 $e9
    db $ec                                        ; $79a1: $ec
    ldh [$ef], a                                  ; $79a2: $e0 $ef
    pop af                                        ; $79a4: $f1
    ld a, [$e58e]                                 ; $79a5: $fa $8e $e5
    nop                                           ; $79a8: $00
    ret nz                                        ; $79a9: $c0

    rst $38                                       ; $79aa: $ff
    rst $10                                       ; $79ab: $d7
    db $ed                                        ; $79ac: $ed
    and b                                         ; $79ad: $a0
    rst $38                                       ; $79ae: $ff
    ld a, [hl+]                                   ; $79af: $2a
    ld a, [c]                                     ; $79b0: $f2
    ret nz                                        ; $79b1: $c0

    ldh a, [$e2]                                  ; $79b2: $f0 $e2
    jp hl                                         ; $79b4: $e9


    jr nz, @-$0e                                  ; $79b5: $20 $f0

    sbc a                                         ; $79b7: $9f
    jp z, $ca00                                   ; $79b8: $ca $00 $ca

    db $d3                                        ; $79bb: $d3
    ldh [rIE], a                                  ; $79bc: $e0 $ff
    pop hl                                        ; $79be: $e1
    or $06                                        ; $79bf: $f6 $06
    add sp, $41                                   ; $79c1: $e8 $41
    db $d3                                        ; $79c3: $d3
    inc l                                         ; $79c4: $2c
    call nz, $d743                                ; $79c5: $c4 $43 $d7
    ld a, [bc]                                    ; $79c8: $0a
    jp nz, Jump_000_2700                          ; $79c9: $c2 $00 $27

    db $dd                                        ; $79cc: $dd
    ldh [rIE], a                                  ; $79cd: $e0 $ff
    xor b                                         ; $79cf: $a8
    cp d                                          ; $79d0: $ba
    rst $20                                       ; $79d1: $e7
    or e                                          ; $79d2: $b3
    ldh [rIE], a                                  ; $79d3: $e0 $ff
    and b                                         ; $79d5: $a0
    rst $38                                       ; $79d6: $ff
    ldh [$e5], a                                  ; $79d7: $e0 $e5
    ld [hl+], a                                   ; $79d9: $22
    or c                                          ; $79da: $b1
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    ld bc, $ff00                                  ; $79de: $01 $00 $ff
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
    jr z, @+$01                                   ; $79ee: $28 $ff

    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    db $fc                                        ; $79f3: $fc
    ei                                            ; $79f4: $fb
    jr @-$21                                      ; $79f5: $18 $dd

    db $fc                                        ; $79f7: $fc
    ld b, c                                       ; $79f8: $41
    cp l                                          ; $79f9: $bd
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    ld c, $f8                                     ; $79fd: $0e $f8
    rst $30                                       ; $79ff: $f7
    ld de, $1111                                  ; $7a00: $11 $11 $11
    ldh [rIE], a                                  ; $7a03: $e0 $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    ld l, h                                       ; $7a0b: $6c
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    xor $ed                                       ; $7a0e: $ee $ed
    ld hl, $dc21                                  ; $7a10: $21 $21 $dc
    or $31                                        ; $7a13: $f6 $31
    ld sp, $ffe0                                  ; $7a15: $31 $e0 $ff
    add b                                         ; $7a18: $80
    sbc a                                         ; $7a19: $9f
    ld sp, hl                                     ; $7a1a: $f9
    ldh [$fd], a                                  ; $7a1b: $e0 $fd
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $30                                       ; $7a25: $f7
    or $51                                        ; $7a26: $f6 $51
    inc bc                                        ; $7a28: $03
    ld d, c                                       ; $7a29: $51
    ld d, c                                       ; $7a2a: $51
    db $db                                        ; $7a2b: $db
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    db $ed                                        ; $7a30: $ed
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00

jr_02f_7a34:
    cp $d5                                        ; $7a34: $fe $d5
    nop                                           ; $7a36: $00
    rst $38                                       ; $7a37: $ff
    ldh [rTIMA], a                                ; $7a38: $e0 $05
    ei                                            ; $7a3a: $fb
    ldh [$0b], a                                  ; $7a3b: $e0 $0b
    rst $30                                       ; $7a3d: $f7
    pop hl                                        ; $7a3e: $e1
    nop                                           ; $7a3f: $00
    ld [bc], a                                    ; $7a40: $02
    db $eb                                        ; $7a41: $eb
    nop                                           ; $7a42: $00
    jr z, jr_02f_7a34                             ; $7a43: $28 $ef

    ldh [$90], a                                  ; $7a45: $e0 $90
    db $eb                                        ; $7a47: $eb
    ldh [$f5], a                                  ; $7a48: $e0 $f5
    nop                                           ; $7a4a: $00
    ret z                                         ; $7a4b: $c8

    ld a, [$e0e5]                                 ; $7a4c: $fa $e5 $e0
    add b                                         ; $7a4f: $80
    ld [$00e4], a                                 ; $7a50: $ea $e4 $00
    nop                                           ; $7a53: $00
    rla                                           ; $7a54: $17
    nop                                           ; $7a55: $00
    ld bc, $d612                                  ; $7a56: $01 $12 $d6
    ld [c], a                                     ; $7a59: $e2
    ld d, b                                       ; $7a5a: $50
    rst $08                                       ; $7a5b: $cf
    ldh [$e6], a                                  ; $7a5c: $e0 $e6
    pop hl                                        ; $7a5e: $e1
    ld [$e2da], a                                 ; $7a5f: $ea $da $e2
    db $fd                                        ; $7a62: $fd
    db $e3                                        ; $7a63: $e3
    and $e1                                       ; $7a64: $e6 $e1
    ld d, a                                       ; $7a66: $57
    cpl                                           ; $7a67: $2f
    nop                                           ; $7a68: $00
    inc bc                                        ; $7a69: $03
    ret nz                                        ; $7a6a: $c0

    ld [c], a                                     ; $7a6b: $e2
    and b                                         ; $7a6c: $a0
    xor a                                         ; $7a6d: $af
    ldh [$64], a                                  ; $7a6e: $e0 $64
    xor e                                         ; $7a70: $ab
    ldh [$c7], a                                  ; $7a71: $e0 $c7
    call nc, Call_000_2000                        ; $7a73: $d4 $00 $20
    ret nz                                        ; $7a76: $c0

    ld [c], a                                     ; $7a77: $e2
    jp z, $9ce1                                   ; $7a78: $ca $e1 $9c

    pop hl                                        ; $7a7b: $e1
    ld e, a                                       ; $7a7c: $5f
    nop                                           ; $7a7d: $00
    ld d, l                                       ; $7a7e: $55
    ld b, $96                                     ; $7a7f: $06 $96
    ld [c], a                                     ; $7a81: $e2
    ld b, b                                       ; $7a82: $40
    adc a                                         ; $7a83: $8f
    ldh [$b2], a                                  ; $7a84: $e0 $b2
    adc e                                         ; $7a86: $8b
    ldh [$a8], a                                  ; $7a87: $e0 $a8
    or $e2                                        ; $7a89: $f6 $e2
    sbc h                                         ; $7a8b: $9c
    and h                                         ; $7a8c: $a4
    db $e3                                        ; $7a8d: $e3
    ld a, h                                       ; $7a8e: $7c
    pop hl                                        ; $7a8f: $e1
    cp a                                          ; $7a90: $bf
    nop                                           ; $7a91: $00
    inc c                                         ; $7a92: $0c
    add b                                         ; $7a93: $80
    ld [c], a                                     ; $7a94: $e2
    adc [hl]                                      ; $7a95: $8e
    pop hl                                        ; $7a96: $e1
    ld e, c                                       ; $7a97: $59
    ld a, [$e06b]                                 ; $7a98: $fa $6b $e0
    ld d, b                                       ; $7a9b: $50
    add h                                         ; $7a9c: $84
    ld [c], a                                     ; $7a9d: $e2
    add b                                         ; $7a9e: $80
    nop                                           ; $7a9f: $00
    db $ec                                        ; $7aa0: $ec
    rst $38                                       ; $7aa1: $ff
    ld hl, sp-$01                                 ; $7aa2: $f8 $ff
    rst $38                                       ; $7aa4: $ff
    ldh [$fe], a                                  ; $7aa5: $e0 $fe
    ld b, d                                       ; $7aa7: $42
    ld hl, sp-$38                                 ; $7aa8: $f8 $c8
    ldh a, [$80]                                  ; $7aaa: $f0 $80
    cp a                                          ; $7aac: $bf
    ldh [rNR10], a                                ; $7aad: $e0 $10
    ldh [rP1], a                                  ; $7aaf: $e0 $00
    ret nz                                        ; $7ab1: $c0

    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    ld [c], a                                     ; $7ab4: $e2
    rst $30                                       ; $7ab5: $f7
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    cp h                                          ; $7ab8: $bc
    rst $38                                       ; $7ab9: $ff
    add sp, -$01                                  ; $7aba: $e8 $ff
    add c                                         ; $7abc: $81
    cp $08                                        ; $7abd: $fe $08
    db $ed                                        ; $7abf: $ed
    ldh a, [$f8]                                  ; $7ac0: $f0 $f8
    push hl                                       ; $7ac2: $e5
    jr nz, @-$3e                                  ; $7ac3: $20 $c0

    ld [hl], c                                    ; $7ac5: $71
    db $e3                                        ; $7ac6: $e3
    ld a, a                                       ; $7ac7: $7f
    rst $38                                       ; $7ac8: $ff
    cpl                                           ; $7ac9: $2f
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    ccf                                           ; $7acc: $3f
    rst $38                                       ; $7acd: $ff
    rra                                           ; $7ace: $1f
    rst $38                                       ; $7acf: $ff
    or a                                          ; $7ad0: $b7
    ld a, a                                       ; $7ad1: $7f
    rra                                           ; $7ad2: $1f
    rst $38                                       ; $7ad3: $ff
    ld a, a                                       ; $7ad4: $7f
    rrca                                          ; $7ad5: $0f
    ld a, a                                       ; $7ad6: $7f
    ld c, a                                       ; $7ad7: $4f
    ccf                                           ; $7ad8: $3f
    rlca                                          ; $7ad9: $07
    rra                                           ; $7ada: $1f
    ld [bc], a                                    ; $7adb: $02
    rst $38                                       ; $7adc: $ff
    rra                                           ; $7add: $1f
    inc de                                        ; $7ade: $13
    rrca                                          ; $7adf: $0f
    ld bc, $0b0f                                  ; $7ae0: $01 $0f $0b
    rlca                                          ; $7ae3: $07
    ld bc, $07ff                                  ; $7ae4: $01 $ff $07
    nop                                           ; $7ae7: $00
    rlca                                          ; $7ae8: $07
    inc b                                         ; $7ae9: $04
    inc bc                                        ; $7aea: $03
    ld e, h                                       ; $7aeb: $5c
    rst $38                                       ; $7aec: $ff
    nop                                           ; $7aed: $00
    rst $28                                       ; $7aee: $ef
    rst $38                                       ; $7aef: $ff
    add c                                         ; $7af0: $81
    inc a                                         ; $7af1: $3c
    db $10                                        ; $7af2: $10
    ld b, h                                       ; $7af3: $44
    and $20                                       ; $7af4: $e6 $20
    ret nz                                        ; $7af6: $c0

    add b                                         ; $7af7: $80
    cp a                                          ; $7af8: $bf
    ret nz                                        ; $7af9: $c0

    nop                                           ; $7afa: $00
    ldh [$90], a                                  ; $7afb: $e0 $90
    ldh [$80], a                                  ; $7afd: $e0 $80
    cp $e0                                        ; $7aff: $fe $e0
    nop                                           ; $7b01: $00
    ei                                            ; $7b02: $fb
    ret nz                                        ; $7b03: $c0

    jr nz, @-$5e                                  ; $7b04: $20 $a0

    ldh [$7d], a                                  ; $7b06: $e0 $7d
    rst $38                                       ; $7b08: $ff
    rst $28                                       ; $7b09: $ef
    rst $38                                       ; $7b0a: $ff
    ld a, [hl-]                                   ; $7b0b: $3a
    ld a, [$e2da]                                 ; $7b0c: $fa $da $e2
    ld [$c0e3], sp                                ; $7b0f: $08 $e3 $c0
    and h                                         ; $7b12: $a4
    ld hl, sp-$20                                 ; $7b13: $f8 $e0
    ld hl, sp-$10                                 ; $7b15: $f8 $f0
    rst $38                                       ; $7b17: $ff
    db $fc                                        ; $7b18: $fc
    ret nc                                        ; $7b19: $d0

    db $fc                                        ; $7b1a: $fc
    ld a, [c]                                     ; $7b1b: $f2
    db $fc                                        ; $7b1c: $fc
    ldh [$fc], a                                  ; $7b1d: $e0 $fc
    or b                                          ; $7b1f: $b0
    rst $30                                       ; $7b20: $f7
    ld hl, sp-$1c                                 ; $7b21: $f8 $e4
    ld hl, sp-$80                                 ; $7b23: $f8 $80
    push hl                                       ; $7b25: $e5
    cp [hl]                                       ; $7b26: $be
    rst $38                                       ; $7b27: $ff
    db $e3                                        ; $7b28: $e3
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    ld b, b                                       ; $7b2b: $40
    rst $38                                       ; $7b2c: $ff
    nop                                           ; $7b2d: $00
    rst $20                                       ; $7b2e: $e7
    db $fc                                        ; $7b2f: $fc
    rst $38                                       ; $7b30: $ff
    or $ff                                        ; $7b31: $f6 $ff
    ld a, a                                       ; $7b33: $7f
    db $fc                                        ; $7b34: $fc
    rst $38                                       ; $7b35: $ff
    ld hl, sp-$02                                 ; $7b36: $f8 $fe
    add sp, -$02                                  ; $7b38: $e8 $fe
    ld hl, sp-$08                                 ; $7b3a: $f8 $f8
    ldh [$83], a                                  ; $7b3c: $e0 $83
    db $f4                                        ; $7b3e: $f4
    rst $38                                       ; $7b3f: $ff
    ld a, b                                       ; $7b40: $78
    ldh [$cb], a                                  ; $7b41: $e0 $cb
    jp $c5e2                                      ; $7b43: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $7b46: $f0 $e0
    rst $28                                       ; $7b48: $ef
    ld [$f1c0], a                                 ; $7b49: $ea $c0 $f1
    ld b, b                                       ; $7b4c: $40
    ldh [$ea], a                                  ; $7b4d: $e0 $ea
    ret nc                                        ; $7b4f: $d0

    pop hl                                        ; $7b50: $e1
    rst $08                                       ; $7b51: $cf
    jp hl                                         ; $7b52: $e9


    db $ec                                        ; $7b53: $ec
    rst $38                                       ; $7b54: $ff
    ld sp, hl                                     ; $7b55: $f9
    cp $7f                                        ; $7b56: $fe $7f
    and $f8                                       ; $7b58: $e6 $f8
    ld c, b                                       ; $7b5a: $48
    ldh a, [$d0]                                  ; $7b5b: $f0 $d0
    ldh [$a8], a                                  ; $7b5d: $e0 $a8
    ld [hl], d                                    ; $7b5f: $72
    ldh [$fb], a                                  ; $7b60: $e0 $fb

jr_02f_7b62:
    ld b, b                                       ; $7b62: $40
    add b                                         ; $7b63: $80
    db $10                                        ; $7b64: $10
    rst $20                                       ; $7b65: $e7
    jp hl                                         ; $7b66: $e9


    cp $8e                                        ; $7b67: $fe $8e
    ldh a, [$30]                                  ; $7b69: $f0 $30
    pop af                                        ; $7b6b: $f1
    ret nz                                        ; $7b6c: $c0

    ld hl, sp-$1b                                 ; $7b6d: $f8 $e5
    ld h, d                                       ; $7b6f: $62
    pop bc                                        ; $7b70: $c1
    db $10                                        ; $7b71: $10
    push hl                                       ; $7b72: $e5
    cp a                                          ; $7b73: $bf
    ld a, a                                       ; $7b74: $7f
    sbc a                                         ; $7b75: $9f
    ld a, a                                       ; $7b76: $7f
    rst $38                                       ; $7b77: $ff
    ld [hl], a                                    ; $7b78: $77
    ccf                                           ; $7b79: $3f
    ld e, a                                       ; $7b7a: $5f
    ccf                                           ; $7b7b: $3f
    ld c, a                                       ; $7b7c: $4f
    ccf                                           ; $7b7d: $3f
    cpl                                           ; $7b7e: $2f
    rra                                           ; $7b7f: $1f
    rst $30                                       ; $7b80: $f7
    rla                                           ; $7b81: $17
    rrca                                          ; $7b82: $0f
    ld [de], a                                    ; $7b83: $12
    inc d                                         ; $7b84: $14
    ldh [$09], a                                  ; $7b85: $e0 $09
    rlca                                          ; $7b87: $07
    rla                                           ; $7b88: $17
    inc bc                                        ; $7b89: $03
    rst $38                                       ; $7b8a: $ff
    dec b                                         ; $7b8b: $05
    inc bc                                        ; $7b8c: $03
    inc b                                         ; $7b8d: $04
    inc bc                                        ; $7b8e: $03
    ld [bc], a                                    ; $7b8f: $02
    ld bc, $ff5c                                  ; $7b90: $01 $5c $ff
    rst $30                                       ; $7b93: $f7
    jp Jump_000_3c3c                              ; $7b94: $c3 $3c $3c


    sbc d                                         ; $7b97: $9a
    add $00                                       ; $7b98: $c6 $00
    nop                                           ; $7b9a: $00
    ld b, b                                       ; $7b9b: $40
    add b                                         ; $7b9c: $80
    rst $18                                       ; $7b9d: $df
    ret nz                                        ; $7b9e: $c0

    add b                                         ; $7b9f: $80
    jr nz, jr_02f_7b62                            ; $7ba0: $20 $c0

    and b                                         ; $7ba2: $a0
    cp $e2                                        ; $7ba3: $fe $e2
    ld d, b                                       ; $7ba5: $50
    add b                                         ; $7ba6: $80
    ldh a, [$a0]                                  ; $7ba7: $f0 $a0
    pop hl                                        ; $7ba9: $e1
    db $10                                        ; $7baa: $10
    db $e3                                        ; $7bab: $e3
    jp c, $64e1                                   ; $7bac: $da $e1 $64

    pop bc                                        ; $7baf: $c1
    xor b                                         ; $7bb0: $a8
    ldh a, [$ea]                                  ; $7bb1: $f0 $ea
    ldh a, [$df]                                  ; $7bb3: $f0 $df
    db $f4                                        ; $7bb5: $f4
    ld hl, sp-$2c                                 ; $7bb6: $f8 $d4
    ld hl, sp-$0c                                 ; $7bb8: $f8 $f4
    inc d                                         ; $7bba: $14
    ldh [$b8], a                                  ; $7bbb: $e0 $b8
    ldh a, [$fb]                                  ; $7bbd: $f0 $fb
    add sp, -$10                                  ; $7bbf: $e8 $f0
    db $10                                        ; $7bc1: $10
    jp hl                                         ; $7bc2: $e9


    ld e, b                                       ; $7bc3: $58
    rst $20                                       ; $7bc4: $e7
    ld h, [hl]                                    ; $7bc5: $66
    add c                                         ; $7bc6: $81
    db $fc                                        ; $7bc7: $fc
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $30                                       ; $7bca: $f7
    cp $fd                                        ; $7bcb: $fe $fd
    cp $fa                                        ; $7bcd: $fe $fa
    db $fc                                        ; $7bcf: $fc
    ld [$fc3b], a                                 ; $7bd0: $ea $3b $fc
    ld sp, hl                                     ; $7bd3: $f9
    ld hl, sp-$20                                 ; $7bd4: $f8 $e0
    db $f4                                        ; $7bd6: $f4
    rst $38                                       ; $7bd7: $ff

jr_02f_7bd8:
    ld c, b                                       ; $7bd8: $48
    ld [hl+], a                                   ; $7bd9: $22
    db $eb                                        ; $7bda: $eb
    and b                                         ; $7bdb: $a0
    ldh [$f0], a                                  ; $7bdc: $e0 $f0
    call z, $fba3                                 ; $7bde: $cc $a3 $fb
    push bc                                       ; $7be1: $c5
    pop af                                        ; $7be2: $f1
    call $cbe3                                    ; $7be3: $cd $e3 $cb
    nop                                           ; $7be6: $00
    nop                                           ; $7be7: $00
    db $ed                                        ; $7be8: $ed
    cp $ff                                        ; $7be9: $fe $ff
    cp $f8                                        ; $7beb: $fe $f8
    add sp, -$10                                  ; $7bed: $e8 $f0
    ld d, d                                       ; $7bef: $52
    ldh [$e8], a                                  ; $7bf0: $e0 $e8
    ret nz                                        ; $7bf2: $c0

    rst $20                                       ; $7bf3: $e7
    ret nz                                        ; $7bf4: $c0

    add b                                         ; $7bf5: $80
    ld d, b                                       ; $7bf6: $50
    sub $c0                                       ; $7bf7: $d6 $c0
    jr nz, @-$39                                  ; $7bf9: $20 $c5

    cp l                                          ; $7bfb: $bd
    cp $ee                                        ; $7bfc: $fe $ee
    jp $b1f0                                      ; $7bfe: $c3 $f0 $b1


    ld a, [de]                                    ; $7c01: $1a
    ldh [$f8], a                                  ; $7c02: $e0 $f8
    push hl                                       ; $7c04: $e5
    or d                                          ; $7c05: $b2
    and c                                         ; $7c06: $a1
    ld d, h                                       ; $7c07: $54
    and c                                         ; $7c08: $a1
    rst $38                                       ; $7c09: $ff
    ld a, a                                       ; $7c0a: $7f
    rst $30                                       ; $7c0b: $f7
    xor a                                         ; $7c0c: $af
    ld a, a                                       ; $7c0d: $7f
    ld a, a                                       ; $7c0e: $7f
    inc d                                         ; $7c0f: $14
    ldh [$b7], a                                  ; $7c10: $e0 $b7
    rra                                           ; $7c12: $1f
    ccf                                           ; $7c13: $3f
    rra                                           ; $7c14: $1f
    ld a, a                                       ; $7c15: $7f

jr_02f_7c16:
    cpl                                           ; $7c16: $2f
    rra                                           ; $7c17: $1f
    ld e, a                                       ; $7c18: $5f
    rrca                                          ; $7c19: $0f
    rrca                                          ; $7c1a: $0f
    rlca                                          ; $7c1b: $07
    ld a, [bc]                                    ; $7c1c: $0a
    inc d                                         ; $7c1d: $14
    ld [c], a                                     ; $7c1e: $e2
    rst $38                                       ; $7c1f: $ff
    dec bc                                        ; $7c20: $0b
    ld bc, $0103                                  ; $7c21: $01 $03 $01
    ld [bc], a                                    ; $7c24: $02
    ld bc, $0005                                  ; $7c25: $01 $05 $00
    sub l                                         ; $7c28: $95
    rst $18                                       ; $7c29: $df
    ld [de], a                                    ; $7c2a: $12
    ldh [rSCY], a                                 ; $7c2b: $e0 $42
    sub b                                         ; $7c2d: $90
    ld [$0ca0], a                                 ; $7c2e: $ea $a0 $0c
    ld [c], a                                     ; $7c31: $e2
    cp $e1                                        ; $7c32: $fe $e1
    and b                                         ; $7c34: $a0
    ld [hl], h                                    ; $7c35: $74
    jr nc, jr_02f_7bd8                            ; $7c36: $30 $a0

    jr nz, @-$3b                                  ; $7c38: $20 $c3

    ei                                            ; $7c3a: $fb
    jp c, $b0e6                                   ; $7c3b: $da $e6 $b0

    ldh [$f4], a                                  ; $7c3e: $e0 $f4
    rra                                           ; $7c40: $1f
    ret nz                                        ; $7c41: $c0

    rst $30                                       ; $7c42: $f7
    ret c                                         ; $7c43: $d8

    ldh a, [$f8]                                  ; $7c44: $f0 $f8
    inc d                                         ; $7c46: $14
    ldh [$b4], a                                  ; $7c47: $e0 $b4
    ldh [$f0], a                                  ; $7c49: $e0 $f0
    ldh [$fa], a                                  ; $7c4b: $e0 $fa
    jr nz, jr_02f_7c16                            ; $7c4d: $20 $c7

    ei                                            ; $7c4f: $fb
    ld [de], a                                    ; $7c50: $12
    ldh [$91], a                                  ; $7c51: $e0 $91
    nop                                           ; $7c53: $00
    db $fd                                        ; $7c54: $fd
    cp $f6                                        ; $7c55: $fe $f6
    rst $38                                       ; $7c57: $ff
    db $fc                                        ; $7c58: $fc
    cp $fc                                        ; $7c59: $fe $fc
    db $fd                                        ; $7c5b: $fd
    ld hl, sp-$14                                 ; $7c5c: $f8 $ec
    ld hl, sp-$06                                 ; $7c5e: $f8 $fa
    ld b, $f8                                     ; $7c60: $06 $f8
    ldh [$f5], a                                  ; $7c62: $e0 $f5
    cp $78                                        ; $7c64: $fe $78
    push hl                                       ; $7c66: $e5
    inc l                                         ; $7c67: $2c
    push af                                       ; $7c68: $f5
    nop                                           ; $7c69: $00
    and c                                         ; $7c6a: $a1
    xor $cc                                       ; $7c6b: $ee $cc
    pop af                                        ; $7c6d: $f1
    xor d                                         ; $7c6e: $aa
    rst $38                                       ; $7c6f: $ff
    ld [bc], a                                    ; $7c70: $02
    add c                                         ; $7c71: $81
    and b                                         ; $7c72: $a0
    pop bc                                        ; $7c73: $c1
    add b                                         ; $7c74: $80
    pop bc                                        ; $7c75: $c1
    add l                                         ; $7c76: $85
    jp $a1ff                                      ; $7c77: $c3 $ff $a1


    jp $8300                                      ; $7c7a: $c3 $00 $83


    dec b                                         ; $7c7d: $05
    add e                                         ; $7c7e: $83
    ld b, b                                       ; $7c7f: $40
    add c                                         ; $7c80: $81
    di                                            ; $7c81: $f3
    ld b, c                                       ; $7c82: $41
    add b                                         ; $7c83: $80
    ldh [$a0], a                                  ; $7c84: $e0 $a0
    ld [hl], b                                    ; $7c86: $70
    ret nz                                        ; $7c87: $c0

    ret nz                                        ; $7c88: $c0

    ldh [rBCPS], a                                ; $7c89: $e0 $68
    ldh a, [rIE]                                  ; $7c8b: $f0 $ff
    pop af                                        ; $7c8d: $f1
    db $fc                                        ; $7c8e: $fc
    call c, Call_000_1eff                         ; $7c8f: $dc $ff $1e
    rst $38                                       ; $7c92: $ff
    add b                                         ; $7c93: $80
    ld e, $fd                                     ; $7c94: $1e $fd
    ld [de], a                                    ; $7c96: $12
    ld [hl], h                                    ; $7c97: $74
    add d                                         ; $7c98: $82
    ld c, b                                       ; $7c99: $48
    nop                                           ; $7c9a: $00
    ld bc, $5878                                  ; $7c9b: $01 $78 $58
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    ld b, b                                       ; $7ca0: $40
    add c                                         ; $7ca1: $81
    add d                                         ; $7ca2: $82
    pop bc                                        ; $7ca3: $c1
    and b                                         ; $7ca4: $a0
    pop bc                                        ; $7ca5: $c1
    and c                                         ; $7ca6: $a1
    jp $85ff                                      ; $7ca7: $c3 $ff $85


    jp $8304                                      ; $7caa: $c3 $04 $83


    ld b, c                                       ; $7cad: $41
    add e                                         ; $7cae: $83
    ld [bc], a                                    ; $7caf: $02
    add c                                         ; $7cb0: $81
    or $6d                                        ; $7cb1: $f6 $6d
    add b                                         ; $7cb3: $80
    add b                                         ; $7cb4: $80
    and b                                         ; $7cb5: $a0
    ld c, h                                       ; $7cb6: $4c
    and b                                         ; $7cb7: $a0
    ret nc                                        ; $7cb8: $d0

    ldh [$64], a                                  ; $7cb9: $e0 $64

jr_02f_7cbb:
    ldh a, [$ed]                                  ; $7cbb: $f0 $ed
    ldh a, [$d0]                                  ; $7cbd: $f0 $d0
    ld [c], a                                     ; $7cbf: $e2
    ld b, c                                       ; $7cc0: $41
    ld e, $c6                                     ; $7cc1: $1e $c6
    add c                                         ; $7cc3: $81
    nop                                           ; $7cc4: $00
    nop                                           ; $7cc5: $00
    jr nc, jr_02f_7cbb                            ; $7cc6: $30 $f3

    nop                                           ; $7cc8: $00
    add d                                         ; $7cc9: $82
    ret nc                                        ; $7cca: $d0

    ldh [$a0], a                                  ; $7ccb: $e0 $a0
    xor c                                         ; $7ccd: $a9
    ld [bc], a                                    ; $7cce: $02
    ld bc, $0300                                  ; $7ccf: $01 $00 $03
    nop                                           ; $7cd2: $00
    ld [hl], c                                    ; $7cd3: $71
    xor c                                         ; $7cd4: $a9
    pop af                                        ; $7cd5: $f1
    ldh [$60], a                                  ; $7cd6: $e0 $60
    add sp, $30                                   ; $7cd8: $e8 $30
    add e                                         ; $7cda: $83
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    nop                                           ; $7ce3: $00
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
    nop                                           ; $7cf4: $00
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
    nop                                           ; $7d05: $00
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
    nop                                           ; $7d16: $00
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    ccf                                           ; $7d1b: $3f
    ld bc, $0000                                  ; $7d1c: $01 $00 $00
    nop                                           ; $7d1f: $00
    push af                                       ; $7d20: $f5
    push bc                                       ; $7d21: $c5
    push de                                       ; $7d22: $d5
    push hl                                       ; $7d23: $e5
    ld [$c32f], a                                 ; $7d24: $ea $2f $c3
    ld c, a                                       ; $7d27: $4f
    ld a, $ff                                     ; $7d28: $3e $ff
    ld b, $01                                     ; $7d2a: $06 $01
    ld hl, $c330                                  ; $7d2c: $21 $30 $c3
    ld [hl+], a                                   ; $7d2f: $22
    ld [hl], b                                    ; $7d30: $70
    inc hl                                        ; $7d31: $23
    ld [hl+], a                                   ; $7d32: $22
    ld [hl], b                                    ; $7d33: $70
    inc hl                                        ; $7d34: $23
    ld [hl+], a                                   ; $7d35: $22
    ld [hl], b                                    ; $7d36: $70
    inc hl                                        ; $7d37: $23
    ld [hl+], a                                   ; $7d38: $22
    ld [hl], b                                    ; $7d39: $70
    inc hl                                        ; $7d3a: $23
    ld [hl+], a                                   ; $7d3b: $22
    ld [hl+], a                                   ; $7d3c: $22
    ld [hl+], a                                   ; $7d3d: $22
    ld [hl+], a                                   ; $7d3e: $22
    ld a, c                                       ; $7d3f: $79
    ld h, $00                                     ; $7d40: $26 $00
    ld l, a                                       ; $7d42: $6f
    add hl, hl                                    ; $7d43: $29
    ld bc, $403a                                  ; $7d44: $01 $3a $40
    add hl, bc                                    ; $7d47: $09
    ld a, [hl+]                                   ; $7d48: $2a
    ld h, [hl]                                    ; $7d49: $66
    ld l, a                                       ; $7d4a: $6f
    ld a, [hl]                                    ; $7d4b: $7e
    cp $fe                                        ; $7d4c: $fe $fe
    jr nz, jr_02f_7d52                            ; $7d4e: $20 $02

    jr jr_02f_7dc2                                ; $7d50: $18 $70

jr_02f_7d52:
    add sp, -$02                                  ; $7d52: $e8 $fe
    ld de, $c332                                  ; $7d54: $11 $32 $c3
    push hl                                       ; $7d57: $e5
    ld hl, sp+$02                                 ; $7d58: $f8 $02
    ld [hl], e                                    ; $7d5a: $73
    inc hl                                        ; $7d5b: $23
    ld [hl], d                                    ; $7d5c: $72
    pop hl                                        ; $7d5d: $e1
    ld d, h                                       ; $7d5e: $54
    ld e, l                                       ; $7d5f: $5d
    ld b, $ff                                     ; $7d60: $06 $ff
    ld c, $03                                     ; $7d62: $0e $03
    xor a                                         ; $7d64: $af
    ld hl, $c330                                  ; $7d65: $21 $30 $c3
    ld [hl], a                                    ; $7d68: $77
    ld hl, $c338                                  ; $7d69: $21 $38 $c3
    ld [hl], a                                    ; $7d6c: $77
    inc hl                                        ; $7d6d: $23

jr_02f_7d6e:
    inc b                                         ; $7d6e: $04
    ld a, [de]                                    ; $7d6f: $1a
    inc de                                        ; $7d70: $13
    cp $fe                                        ; $7d71: $fe $fe
    jr z, jr_02f_7daa                             ; $7d73: $28 $35

    cp $ff                                        ; $7d75: $fe $ff
    jr nz, jr_02f_7d6e                            ; $7d77: $20 $f5

    inc b                                         ; $7d79: $04
    ld a, b                                       ; $7d7a: $78
    inc a                                         ; $7d7b: $3c
    ld [hl], a                                    ; $7d7c: $77
    push de                                       ; $7d7d: $d5
    push hl                                       ; $7d7e: $e5
    ld hl, sp+$04                                 ; $7d7f: $f8 $04
    ld e, [hl]                                    ; $7d81: $5e
    inc hl                                        ; $7d82: $23
    ld d, [hl]                                    ; $7d83: $56
    pop hl                                        ; $7d84: $e1
    ld [de], a                                    ; $7d85: $12
    inc de                                        ; $7d86: $13
    inc de                                        ; $7d87: $13
    push hl                                       ; $7d88: $e5
    ld hl, sp+$04                                 ; $7d89: $f8 $04
    ld [hl], e                                    ; $7d8b: $73
    inc hl                                        ; $7d8c: $23
    ld [hl], d                                    ; $7d8d: $72
    pop hl                                        ; $7d8e: $e1
    pop de                                        ; $7d8f: $d1
    ld a, [de]                                    ; $7d90: $1a
    inc a                                         ; $7d91: $3c
    inc de                                        ; $7d92: $13
    push hl                                       ; $7d93: $e5
    push de                                       ; $7d94: $d5
    ld d, a                                       ; $7d95: $57
    ld a, $04                                     ; $7d96: $3e $04
    sub c                                         ; $7d98: $91
    ld hl, $c330                                  ; $7d99: $21 $30 $c3
    ld e, a                                       ; $7d9c: $5f
    ld a, d                                       ; $7d9d: $7a
    ld d, $00                                     ; $7d9e: $16 $00
    add hl, de                                    ; $7da0: $19
    add hl, de                                    ; $7da1: $19
    inc hl                                        ; $7da2: $23
    ld [hl], a                                    ; $7da3: $77
    pop de                                        ; $7da4: $d1
    pop hl                                        ; $7da5: $e1
    inc hl                                        ; $7da6: $23
    dec c                                         ; $7da7: $0d
    jr nz, jr_02f_7d6e                            ; $7da8: $20 $c4

jr_02f_7daa:
    ld a, $ff                                     ; $7daa: $3e $ff
    dec hl                                        ; $7dac: $2b
    ld [hl], a                                    ; $7dad: $77
    push hl                                       ; $7dae: $e5
    ld hl, sp+$02                                 ; $7daf: $f8 $02
    ld e, [hl]                                    ; $7db1: $5e
    inc hl                                        ; $7db2: $23
    ld d, [hl]                                    ; $7db3: $56
    pop hl                                        ; $7db4: $e1
    dec de                                        ; $7db5: $1b
    dec de                                        ; $7db6: $1b
    ld [de], a                                    ; $7db7: $12
    ld a, $01                                     ; $7db8: $3e $01
    ld hl, $7dd6                                  ; $7dba: $21 $d6 $7d
    call Call_000_23e8                            ; $7dbd: $cd $e8 $23
    add sp, $02                                   ; $7dc0: $e8 $02

jr_02f_7dc2:
    pop hl                                        ; $7dc2: $e1
    pop de                                        ; $7dc3: $d1
    pop bc                                        ; $7dc4: $c1
    pop af                                        ; $7dc5: $f1
    ret                                           ; $7dc6: $c9


    push af                                       ; $7dc7: $f5
    push bc                                       ; $7dc8: $c5
    push de                                       ; $7dc9: $d5
    push hl                                       ; $7dca: $e5
    ld hl, $7dd6                                  ; $7dcb: $21 $d6 $7d
    call Call_000_2449                            ; $7dce: $cd $49 $24
    pop hl                                        ; $7dd1: $e1
    pop de                                        ; $7dd2: $d1
    pop bc                                        ; $7dd3: $c1
    pop af                                        ; $7dd4: $f1
    ret                                           ; $7dd5: $c9


    rst $30                                       ; $7dd6: $f7
    add b                                         ; $7dd7: $80
    inc bc                                        ; $7dd8: $03
    jr nz, jr_02f_7ddf                            ; $7dd9: $20 $04

    rst $30                                       ; $7ddb: $f7
    nop                                           ; $7ddc: $00
    inc bc                                        ; $7ddd: $03
    ret nz                                        ; $7dde: $c0

jr_02f_7ddf:
    push af                                       ; $7ddf: $f5
    push bc                                       ; $7de0: $c5
    push de                                       ; $7de1: $d5
    push hl                                       ; $7de2: $e5
    ldh a, [$96]                                  ; $7de3: $f0 $96
    push af                                       ; $7de5: $f5
    ld a, $06                                     ; $7de6: $3e $06
    ldh [$96], a                                  ; $7de8: $e0 $96
    ldh [rSVBK], a                                ; $7dea: $e0 $70
    ld c, $00                                     ; $7dec: $0e $00
    ld hl, $c338                                  ; $7dee: $21 $38 $c3

jr_02f_7df1:
    ld a, [hl]                                    ; $7df1: $7e
    cp $ff                                        ; $7df2: $fe $ff
    jr z, jr_02f_7e13                             ; $7df4: $28 $1d

    push hl                                       ; $7df6: $e5
    ld l, c                                       ; $7df7: $69
    ld h, $00                                     ; $7df8: $26 $00
    add hl, hl                                    ; $7dfa: $29
    ld de, $c330                                  ; $7dfb: $11 $30 $c3
    add hl, de                                    ; $7dfe: $19
    inc hl                                        ; $7dff: $23
    ld a, [hl]                                    ; $7e00: $7e
    dec a                                         ; $7e01: $3d
    ld [hl], a                                    ; $7e02: $77
    pop hl                                        ; $7e03: $e1
    inc hl                                        ; $7e04: $23
    ld b, c                                       ; $7e05: $41
    inc c                                         ; $7e06: $0c
    or a                                          ; $7e07: $b7
    jr nz, jr_02f_7df1                            ; $7e08: $20 $e7

    ld a, b                                       ; $7e0a: $78
    call Call_02f_7e1d                            ; $7e0b: $cd $1d $7e
    ld a, c                                       ; $7e0e: $79
    cp $04                                        ; $7e0f: $fe $04
    jr nz, jr_02f_7df1                            ; $7e11: $20 $de

jr_02f_7e13:
    pop af                                        ; $7e13: $f1
    ldh [$96], a                                  ; $7e14: $e0 $96
    ldh [rSVBK], a                                ; $7e16: $e0 $70
    pop hl                                        ; $7e18: $e1
    pop de                                        ; $7e19: $d1
    pop bc                                        ; $7e1a: $c1
    pop af                                        ; $7e1b: $f1
    ret                                           ; $7e1c: $c9


Call_02f_7e1d:
    push af                                       ; $7e1d: $f5
    push bc                                       ; $7e1e: $c5
    push de                                       ; $7e1f: $d5
    push hl                                       ; $7e20: $e5
    push af                                       ; $7e21: $f5
    add sp, -$01                                  ; $7e22: $e8 $ff
    ld hl, sp+$00                                 ; $7e24: $f8 $00
    ld [hl], a                                    ; $7e26: $77
    ld h, $00                                     ; $7e27: $26 $00
    ld l, a                                       ; $7e29: $6f
    add hl, hl                                    ; $7e2a: $29
    ld bc, $c330                                  ; $7e2b: $01 $30 $c3
    add hl, bc                                    ; $7e2e: $09
    ld a, [hl]                                    ; $7e2f: $7e
    ld [$c33c], a                                 ; $7e30: $ea $3c $c3

jr_02f_7e33:
    ld a, [$c32f]                                 ; $7e33: $fa $2f $c3
    ld l, a                                       ; $7e36: $6f
    ld h, $00                                     ; $7e37: $26 $00
    add hl, hl                                    ; $7e39: $29
    ld bc, $403a                                  ; $7e3a: $01 $3a $40
    add hl, bc                                    ; $7e3d: $09
    ld a, [hl+]                                   ; $7e3e: $2a
    ld h, [hl]                                    ; $7e3f: $66
    ld l, a                                       ; $7e40: $6f
    ld a, [$c33c]                                 ; $7e41: $fa $3c $c3
    ld c, a                                       ; $7e44: $4f
    ld b, $00                                     ; $7e45: $06 $00
    add hl, bc                                    ; $7e47: $09
    ld a, [hl]                                    ; $7e48: $7e
    cp $ff                                        ; $7e49: $fe $ff
    jr nz, jr_02f_7e5c                            ; $7e4b: $20 $0f

    ld hl, sp+$00                                 ; $7e4d: $f8 $00
    ld c, [hl]                                    ; $7e4f: $4e
    ld b, $00                                     ; $7e50: $06 $00
    ld hl, $c338                                  ; $7e52: $21 $38 $c3
    add hl, bc                                    ; $7e55: $09
    ld a, [hl]                                    ; $7e56: $7e
    ld [$c33c], a                                 ; $7e57: $ea $3c $c3
    jr jr_02f_7e33                                ; $7e5a: $18 $d7

jr_02f_7e5c:
    ld b, a                                       ; $7e5c: $47
    inc hl                                        ; $7e5d: $23
    ld c, [hl]                                    ; $7e5e: $4e
    inc hl                                        ; $7e5f: $23
    ld e, [hl]                                    ; $7e60: $5e
    inc hl                                        ; $7e61: $23
    ld a, [hl]                                    ; $7e62: $7e
    push af                                       ; $7e63: $f5
    push bc                                       ; $7e64: $c5
    ld l, e                                       ; $7e65: $6b
    ld h, $00                                     ; $7e66: $26 $00
    add hl, hl                                    ; $7e68: $29
    add hl, hl                                    ; $7e69: $29
    add hl, hl                                    ; $7e6a: $29
    add hl, hl                                    ; $7e6b: $29
    ld de, $b000                                  ; $7e6c: $11 $00 $b0
    add hl, de                                    ; $7e6f: $19
    push hl                                       ; $7e70: $e5
    ld l, b                                       ; $7e71: $68
    ld h, $00                                     ; $7e72: $26 $00
    add hl, hl                                    ; $7e74: $29
    add hl, hl                                    ; $7e75: $29
    add hl, hl                                    ; $7e76: $29
    add hl, hl                                    ; $7e77: $29
    ld bc, $d800                                  ; $7e78: $01 $00 $d8
    add hl, bc                                    ; $7e7b: $09
    pop de                                        ; $7e7c: $d1
    pop bc                                        ; $7e7d: $c1
    call Call_000_0468                            ; $7e7e: $cd $68 $04
    ld a, [$c33c]                                 ; $7e81: $fa $3c $c3
    add $04                                       ; $7e84: $c6 $04
    ld [$c33c], a                                 ; $7e86: $ea $3c $c3
    pop af                                        ; $7e89: $f1
    ld d, a                                       ; $7e8a: $57
    add sp, $01                                   ; $7e8b: $e8 $01
    pop af                                        ; $7e8d: $f1
    ld h, $00                                     ; $7e8e: $26 $00
    ld l, a                                       ; $7e90: $6f
    add hl, hl                                    ; $7e91: $29
    ld bc, $c330                                  ; $7e92: $01 $30 $c3
    add hl, bc                                    ; $7e95: $09
    ld a, [$c33c]                                 ; $7e96: $fa $3c $c3
    ld [hl+], a                                   ; $7e99: $22
    ld [hl], d                                    ; $7e9a: $72
    pop hl                                        ; $7e9b: $e1
    pop de                                        ; $7e9c: $d1
    pop bc                                        ; $7e9d: $c1
    pop af                                        ; $7e9e: $f1
    ret                                           ; $7e9f: $c9


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

Jump_02f_7f7c:
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

Call_02f_7fe0:
Jump_02f_7fe0:
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
