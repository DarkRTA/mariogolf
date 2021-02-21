; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $076", ROMX[$4000], BANK[$76]

    ld b, $40                                     ; $4000: $06 $40
    adc e                                         ; $4002: $8b
    ld d, [hl]                                    ; $4003: $56

    db $b8, $5f

    db $10                                        ; $4006: $10
    ld b, b                                       ; $4007: $40
    ld d, b                                       ; $4008: $50
    ld b, l                                       ; $4009: $45
    jr nc, jr_076_4056                            ; $400a: $30 $4a

    ret nc                                        ; $400c: $d0

    ld c, [hl]                                    ; $400d: $4e
    ldh [rHDMA1], a                               ; $400e: $e0 $51
    ld l, a                                       ; $4010: $6f
    rst $38                                       ; $4011: $ff
    rst $38                                       ; $4012: $ff
    rst $38                                       ; $4013: $ff
    nop                                           ; $4014: $00
    cp $ea                                        ; $4015: $fe $ea
    rst $38                                       ; $4017: $ff
    nop                                           ; $4018: $00
    rst $38                                       ; $4019: $ff
    ld [$ffa7], a                                 ; $401a: $ea $a7 $ff
    rst $38                                       ; $401d: $ff
    add b                                         ; $401e: $80
    rst $38                                       ; $401f: $ff
    ld [$e1d0], a                                 ; $4020: $ea $d0 $e1
    ld a, a                                       ; $4023: $7f
    cp $e0                                        ; $4024: $fe $e0
    ccf                                           ; $4026: $3f
    ld d, d                                       ; $4027: $52
    cp $e0                                        ; $4028: $fe $e0
    rra                                           ; $402a: $1f
    cp $e0                                        ; $402b: $fe $e0
    ret nc                                        ; $402d: $d0

    pop hl                                        ; $402e: $e1
    ld bc, $e0fe                                  ; $402f: $01 $fe $e0
    inc bc                                        ; $4032: $03
    cp $e0                                        ; $4033: $fe $e0
    add hl, bc                                    ; $4035: $09
    rlca                                          ; $4036: $07
    cp $e0                                        ; $4037: $fe $e0
    or b                                          ; $4039: $b0
    ldh [rSB], a                                  ; $403a: $e0 $01
    cp $e9                                        ; $403c: $fe $e9
    or d                                          ; $403e: $b2
    db $eb                                        ; $403f: $eb
    or b                                          ; $4040: $b0
    ldh [$fe], a                                  ; $4041: $e0 $fe
    pop af                                        ; $4043: $f1
    rst $38                                       ; $4044: $ff

Jump_076_4045:
    inc bc                                        ; $4045: $03
    db $fd                                        ; $4046: $fd
    rlca                                          ; $4047: $07

jr_076_4048:
    ei                                            ; $4048: $fb
    ld c, $f3                                     ; $4049: $0e $f3
    ld e, $e3                                     ; $404b: $1e $e3
    rst $30                                       ; $404d: $f7
    ccf                                           ; $404e: $3f
    db $e4                                        ; $404f: $e4
    ccf                                           ; $4050: $3f
    add d                                         ; $4051: $82
    pop hl                                        ; $4052: $e1
    db $fc                                        ; $4053: $fc
    db $fc                                        ; $4054: $fc
    di                                            ; $4055: $f3

jr_076_4056:
    ld e, a                                       ; $4056: $5f
    ld a, a                                       ; $4057: $7f
    ld hl, sp+$0f                                 ; $4058: $f8 $0f
    ld hl, sp-$51                                 ; $405a: $f8 $af
    ld hl, sp-$01                                 ; $405c: $f8 $ff
    rlca                                          ; $405e: $07
    ld [hl], d                                    ; $405f: $72
    and $ff                                       ; $4060: $e6 $ff
    add b                                         ; $4062: $80
    add b                                         ; $4063: $80
    ld b, b                                       ; $4064: $40
    ret nz                                        ; $4065: $c0

    jr nz, jr_076_4048                            ; $4066: $20 $e0

    jr nz, @-$1e                                  ; $4068: $20 $e0

    ld a, $72                                     ; $406a: $3e $72
    db $eb                                        ; $406c: $eb
    add b                                         ; $406d: $80
    add b                                         ; $406e: $80
    rrca                                          ; $406f: $0f
    nop                                           ; $4070: $00
    rrca                                          ; $4071: $0f
    adc b                                         ; $4072: $88
    ld [c], a                                     ; $4073: $e2
    add b                                         ; $4074: $80
    pop hl                                        ; $4075: $e1
    nop                                           ; $4076: $00
    ld a, b                                       ; $4077: $78
    pop hl                                        ; $4078: $e1
    ldh a, [$e1]                                  ; $4079: $f0 $e1
    ld l, b                                       ; $407b: $68
    pop hl                                        ; $407c: $e1
    ld h, b                                       ; $407d: $60
    pop hl                                        ; $407e: $e1
    ld e, b                                       ; $407f: $58
    pop hl                                        ; $4080: $e1
    ld [hl], d                                    ; $4081: $72
    db $eb                                        ; $4082: $eb
    ld h, h                                       ; $4083: $64
    ldh [rNR12], a                                ; $4084: $e0 $12
    push hl                                       ; $4086: $e5
    ld a, a                                       ; $4087: $7f
    ld bc, $07fe                                  ; $4088: $01 $fe $07
    ld sp, hl                                     ; $408b: $f9
    rrca                                          ; $408c: $0f
    pop af                                        ; $408d: $f1
    rra                                           ; $408e: $1f
    ld [de], a                                    ; $408f: $12
    push hl                                       ; $4090: $e5
    rst $38                                       ; $4091: $ff
    db $fc                                        ; $4092: $fc
    db $fc                                        ; $4093: $fc
    ei                                            ; $4094: $fb
    xor a                                         ; $4095: $af
    db $fc                                        ; $4096: $fc
    rlca                                          ; $4097: $07
    db $fc                                        ; $4098: $fc
    ld d, a                                       ; $4099: $57
    ldh a, [rSC]                                  ; $409a: $f0 $02
    jp hl                                         ; $409c: $e9


    adc h                                         ; $409d: $8c
    pop hl                                        ; $409e: $e1
    ld [c], a                                     ; $409f: $e2
    ret z                                         ; $40a0: $c8

    jr z, @-$1c                                   ; $40a1: $28 $e2

    ret                                           ; $40a3: $c9


    ld a, a                                       ; $40a4: $7f
    rst $10                                       ; $40a5: $d7
    ld a, a                                       ; $40a6: $7f
    rst $38                                       ; $40a7: $ff
    rst $38                                       ; $40a8: $ff
    ld a, c                                       ; $40a9: $79
    rst $38                                       ; $40aa: $ff
    ld a, [c]                                     ; $40ab: $f2
    rst $38                                       ; $40ac: $ff
    cp d                                          ; $40ad: $ba
    rst $38                                       ; $40ae: $ff
    ld a, d                                       ; $40af: $7a
    rst $18                                       ; $40b0: $df
    rst $38                                       ; $40b1: $ff
    ld [hl-], a                                   ; $40b2: $32
    rst $38                                       ; $40b3: $ff
    ld de, $bf8c                                  ; $40b4: $11 $8c $bf
    ret nz                                        ; $40b7: $c0

    rst $38                                       ; $40b8: $ff
    adc h                                         ; $40b9: $8c
    rst $38                                       ; $40ba: $ff
    rst $38                                       ; $40bb: $ff
    ld d, d                                       ; $40bc: $52
    rst $38                                       ; $40bd: $ff
    jp c, $faff                                   ; $40be: $da $ff $fa

    rst $38                                       ; $40c1: $ff
    adc d                                         ; $40c2: $8a
    rst $38                                       ; $40c3: $ff
    rst $38                                       ; $40c4: $ff
    inc b                                         ; $40c5: $04
    sbc [hl]                                      ; $40c6: $9e
    cp $53                                        ; $40c7: $fe $53
    rst $38                                       ; $40c9: $ff
    reti                                          ; $40ca: $d9


    rst $38                                       ; $40cb: $ff
    rst $38                                       ; $40cc: $ff
    db $f4                                        ; $40cd: $f4
    ld a, a                                       ; $40ce: $7f
    ld [$f4ff], a                                 ; $40cf: $ea $ff $f4
    rst $38                                       ; $40d2: $ff
    ldh [$7f], a                                  ; $40d3: $e0 $7f
    ei                                            ; $40d5: $fb
    ldh a, [$5f]                                  ; $40d6: $f0 $5f
    or d                                          ; $40d8: $b2
    pop bc                                        ; $40d9: $c1
    ld bc, $8100                                  ; $40da: $01 $00 $81
    add b                                         ; $40dd: $80
    ld b, e                                       ; $40de: $43
    ld a, a                                       ; $40df: $7f
    ret nz                                        ; $40e0: $c0

    ld b, e                                       ; $40e1: $43
    ret nz                                        ; $40e2: $c0

    ld b, a                                       ; $40e3: $47
    ret nz                                        ; $40e4: $c0

    add a                                         ; $40e5: $87
    add b                                         ; $40e6: $80
    sub d                                         ; $40e7: $92
    pop bc                                        ; $40e8: $c1
    ldh [$c0], a                                  ; $40e9: $e0 $c0
    ret                                           ; $40eb: $c9


    ldh [$e3], a                                  ; $40ec: $e0 $e3
    ret nz                                        ; $40ee: $c0

    ret z                                         ; $40ef: $c8

    ld [hl], d                                    ; $40f0: $72
    ret                                           ; $40f1: $c9


    or [hl]                                       ; $40f2: $b6
    ret nz                                        ; $40f3: $c0

    pop hl                                        ; $40f4: $e1
    ccf                                           ; $40f5: $3f
    and $1d                                       ; $40f6: $e6 $1d
    ccf                                           ; $40f8: $3f
    adc h                                         ; $40f9: $8c
    jp hl                                         ; $40fa: $e9


    db $fc                                        ; $40fb: $fc
    rst $38                                       ; $40fc: $ff
    inc bc                                        ; $40fd: $03
    sub c                                         ; $40fe: $91
    ldh [$8c], a                                  ; $40ff: $e0 $8c
    rst $20                                       ; $4101: $e7
    db $ec                                        ; $4102: $ec
    pop bc                                        ; $4103: $c1
    rst $28                                       ; $4104: $ef
    sub b                                         ; $4105: $90
    ldh a, [$50]                                  ; $4106: $f0 $50
    ldh a, [rIE]                                  ; $4108: $f0 $ff
    ldh [rSVBK], a                                ; $410a: $e0 $70
    ld hl, sp-$18                                 ; $410c: $f8 $e8
    ei                                            ; $410e: $fb
    db $fc                                        ; $410f: $fc
    db $f4                                        ; $4110: $f4
    ld e, $e8                                     ; $4111: $1e $e8
    nop                                           ; $4113: $00
    rst $38                                       ; $4114: $ff
    rrca                                          ; $4115: $0f
    rst $38                                       ; $4116: $ff
    ld de, $ffff                                  ; $4117: $11 $ff $ff
    dec h                                         ; $411a: $25
    rst $38                                       ; $411b: $ff
    and a                                         ; $411c: $a7
    rst $38                                       ; $411d: $ff
    ld h, e                                       ; $411e: $63
    rst $38                                       ; $411f: $ff
    jr nc, @+$01                                  ; $4120: $30 $ff

    rst $18                                       ; $4122: $df
    ld a, b                                       ; $4123: $78
    rst $08                                       ; $4124: $cf
    cp $e9                                        ; $4125: $fe $e9
    ccf                                           ; $4127: $3f
    db $f4                                        ; $4128: $f4
    rra                                           ; $4129: $1f
    rst $38                                       ; $412a: $ff
    rst $38                                       ; $412b: $ff
    dec b                                         ; $412c: $05
    rst $38                                       ; $412d: $ff
    adc a                                         ; $412e: $8f
    rst $38                                       ; $412f: $ff
    cp $df                                        ; $4130: $fe $df
    ld hl, sp-$01                                 ; $4132: $f8 $ff
    rst $18                                       ; $4134: $df
    ld [hl], b                                    ; $4135: $70
    rst $38                                       ; $4136: $ff
    inc hl                                        ; $4137: $23
    cp $07                                        ; $4138: $fe $07
    db $fc                                        ; $413a: $fc
    rst $38                                       ; $413b: $ff
    rst $38                                       ; $413c: $ff
    ld hl, sp+$2f                                 ; $413d: $f8 $2f
    rst $38                                       ; $413f: $ff
    daa                                           ; $4140: $27
    rst $38                                       ; $4141: $ff
    ld hl, $61ff                                  ; $4142: $21 $ff $61
    rst $38                                       ; $4145: $ff
    cp a                                          ; $4146: $bf
    pop hl                                        ; $4147: $e1
    sbc [hl]                                      ; $4148: $9e
    ld a, [c]                                     ; $4149: $f2
    ld c, [hl]                                    ; $414a: $4e
    ld a, [$fca4]                                 ; $414b: $fa $a4 $fc
    pop af                                        ; $414e: $f1
    adc a                                         ; $414f: $8f
    xor [hl]                                      ; $4150: $ae
    ret nz                                        ; $4151: $c0

    ret nz                                        ; $4152: $c0

    ret                                           ; $4153: $c9


    ld [bc], a                                    ; $4154: $02
    pop bc                                        ; $4155: $c1

jr_076_4156:
    ret nz                                        ; $4156: $c0

    add b                                         ; $4157: $80
    ldh [$80], a                                  ; $4158: $e0 $80
    rst $38                                       ; $415a: $ff
    ldh a, [$80]                                  ; $415b: $f0 $80
    ld hl, sp-$80                                 ; $415d: $f8 $80
    db $fc                                        ; $415f: $fc
    add b                                         ; $4160: $80
    cp $80                                        ; $4161: $fe $80
    cp $22                                        ; $4163: $fe $22
    pop bc                                        ; $4165: $c1
    db $fd                                        ; $4166: $fd
    ld bc, $01f9                                  ; $4167: $01 $f9 $01
    pop af                                        ; $416a: $f1
    ld bc, $6fe1                                  ; $416b: $01 $e1 $6f
    ld bc, $01c1                                  ; $416e: $01 $c1 $01
    add c                                         ; $4171: $81
    inc d                                         ; $4172: $14
    jp nz, Jump_000_017f                          ; $4173: $c2 $7f $01

    ldh a, [$a8]                                  ; $4176: $f0 $a8
    ld a, h                                       ; $4178: $7c
    db $ec                                        ; $4179: $ec
    ret nz                                        ; $417a: $c0

    adc h                                         ; $417b: $8c
    db $e4                                        ; $417c: $e4
    db $10                                        ; $417d: $10
    rst $38                                       ; $417e: $ff
    jr @-$0f                                      ; $417f: $18 $ef

    ld a, $ec                                     ; $4181: $3e $ec
    pop bc                                        ; $4183: $c1

jr_076_4184:
    cp $8c                                        ; $4184: $fe $8c
    jp hl                                         ; $4186: $e9


    db $fc                                        ; $4187: $fc

Call_076_4188:
    ld h, h                                       ; $4188: $64
    db $fc                                        ; $4189: $fc
    ld b, h                                       ; $418a: $44
    db $fd                                        ; $418b: $fd
    inc h                                         ; $418c: $24
    ld sp, hl                                     ; $418d: $f9
    rst $38                                       ; $418e: $ff
    jr z, jr_076_4184                             ; $418f: $28 $f3

    jr nc, jr_076_4156                            ; $4191: $30 $c3

    ld b, b                                       ; $4193: $40
    rst $20                                       ; $4194: $e7
    ldh [$57], a                                  ; $4195: $e0 $57
    rst $38                                       ; $4197: $ff
    ldh a, [rIE]                                  ; $4198: $f0 $ff
    ld [hl+], a                                   ; $419a: $22
    rst $38                                       ; $419b: $ff
    dec h                                         ; $419c: $25
    ld a, a                                       ; $419d: $7f
    ld [hl+], a                                   ; $419e: $22
    ld a, a                                       ; $419f: $7f
    rst $38                                       ; $41a0: $ff
    ld hl, $123f                                  ; $41a1: $21 $3f $12
    ccf                                           ; $41a4: $3f
    rrca                                          ; $41a5: $0f
    db $10                                        ; $41a6: $10
    rra                                           ; $41a7: $1f
    jr nz, @+$01                                  ; $41a8: $20 $ff

    ccf                                           ; $41aa: $3f
    ld a, [c]                                     ; $41ab: $f2
    sbc a                                         ; $41ac: $9f
    pop hl                                        ; $41ad: $e1
    ld a, a                                       ; $41ae: $7f
    ldh [rIE], a                                  ; $41af: $e0 $ff
    rst $38                                       ; $41b1: $ff
    rst $30                                       ; $41b2: $f7
    ld e, a                                       ; $41b3: $5f
    rst $38                                       ; $41b4: $ff
    ldh [rBCPS], a                                ; $41b5: $e0 $68
    and b                                         ; $41b7: $a0
    add b                                         ; $41b8: $80
    ld a, a                                       ; $41b9: $7f
    ret nz                                        ; $41ba: $c0

    daa                                           ; $41bb: $27
    rst $38                                       ; $41bc: $ff
    rst $38                                       ; $41bd: $ff
    ret z                                         ; $41be: $c8

    rst $38                                       ; $41bf: $ff
    inc d                                         ; $41c0: $14
    rst $38                                       ; $41c1: $ff
    ld [$c0ff], sp                                ; $41c2: $08 $ff $c0
    rst $30                                       ; $41c5: $f7
    rst $38                                       ; $41c6: $ff
    rst $38                                       ; $41c7: $ff
    ccf                                           ; $41c8: $3f
    ld d, [hl]                                    ; $41c9: $56
    and c                                         ; $41ca: $a1
    ld [$08f8], sp                                ; $41cb: $08 $f8 $08
    ld hl, sp-$0b                                 ; $41ce: $f8 $f5
    add hl, bc                                    ; $41d0: $09
    cp $e0                                        ; $41d1: $fe $e0
    dec bc                                        ; $41d3: $0b
    cp $e0                                        ; $41d4: $fe $e0
    rst $38                                       ; $41d6: $ff
    ld hl, sp-$01                                 ; $41d7: $f8 $ff
    inc b                                         ; $41d9: $04
    cp $e6                                        ; $41da: $fe $e6
    and b                                         ; $41dc: $a0
    nop                                           ; $41dd: $00
    ret nz                                        ; $41de: $c0

    nop                                           ; $41df: $00
    ldh [rP1], a                                  ; $41e0: $e0 $00
    ldh a, [rP1]                                  ; $41e2: $f0 $00
    ld e, a                                       ; $41e4: $5f
    ld hl, sp+$00                                 ; $41e5: $f8 $00
    db $fc                                        ; $41e7: $fc
    nop                                           ; $41e8: $00
    cp $34                                        ; $41e9: $fe $34
    and b                                         ; $41eb: $a0
    cp $f8                                        ; $41ec: $fe $f8
    ldh [$d5], a                                  ; $41ee: $e0 $d5
    ld hl, sp-$10                                 ; $41f0: $f8 $f0
    ldh [$e0], a                                  ; $41f2: $e0 $e0
    add sp, -$20                                  ; $41f4: $e8 $e0
    add b                                         ; $41f6: $80
    ldh a, [$a2]                                  ; $41f7: $f0 $a2
    rlca                                          ; $41f9: $07
    ld bc, $07ff                                  ; $41fa: $01 $ff $07
    inc bc                                        ; $41fd: $03
    rrca                                          ; $41fe: $0f
    ld c, $1f                                     ; $41ff: $0e $1f
    dec d                                         ; $4201: $15
    rra                                           ; $4202: $1f
    ld [de], a                                    ; $4203: $12
    rst $38                                       ; $4204: $ff
    rra                                           ; $4205: $1f
    ld de, $7fc9                                  ; $4206: $11 $c9 $7f
    add h                                         ; $4209: $84
    rst $38                                       ; $420a: $ff
    ld [bc], a                                    ; $420b: $02
    rst $38                                       ; $420c: $ff
    rst $38                                       ; $420d: $ff
    add c                                         ; $420e: $81
    rst $38                                       ; $420f: $ff
    ret nz                                        ; $4210: $c0

    ld a, a                                       ; $4211: $7f
    ldh a, [$3f]                                  ; $4212: $f0 $3f
    ldh a, [$9f]                                  ; $4214: $f0 $9f
    db $fd                                        ; $4216: $fd
    rst $38                                       ; $4217: $ff
    inc c                                         ; $4218: $0c
    ret nz                                        ; $4219: $c0

    ld sp, hl                                     ; $421a: $f9
    rst $38                                       ; $421b: $ff
    ld l, l                                       ; $421c: $6d
    rst $38                                       ; $421d: $ff
    sub d                                         ; $421e: $92
    rst $38                                       ; $421f: $ff
    add hl, sp                                    ; $4220: $39
    jr z, jr_076_4274                             ; $4221: $28 $51

    ldh [rSCX], a                                 ; $4223: $e0 $43
    and c                                         ; $4225: $a1
    rst $08                                       ; $4226: $cf
    ld hl, sp+$2f                                 ; $4227: $f8 $2f
    cp $e0                                        ; $4229: $fe $e0
    rst $10                                       ; $422b: $d7
    ret nz                                        ; $422c: $c0

    rst $38                                       ; $422d: $ff
    db $f4                                        ; $422e: $f4
    rra                                           ; $422f: $1f
    ld a, [c]                                     ; $4230: $f2
    rra                                           ; $4231: $1f
    cp $f3                                        ; $4232: $fe $f3
    cp $2f                                        ; $4234: $fe $2f
    rst $28                                       ; $4236: $ef
    ccf                                           ; $4237: $3f
    jr nc, jr_076_4279                            ; $4238: $30 $3f

jr_076_423a:
    jr nz, jr_076_423a                            ; $423a: $20 $fe

    ldh [rNR10], a                                ; $423c: $e0 $10
    rra                                           ; $423e: $1f
    ld [$0fff], sp                                ; $423f: $08 $ff $0f
    inc b                                         ; $4242: $04
    rlca                                          ; $4243: $07
    ld [bc], a                                    ; $4244: $02
    inc bc                                        ; $4245: $03
    ccf                                           ; $4246: $3f
    ldh [$bf], a                                  ; $4247: $e0 $bf
    rst $38                                       ; $4249: $ff
    ldh [$5f], a                                  ; $424a: $e0 $5f
    pop af                                        ; $424c: $f1
    cpl                                           ; $424d: $2f
    ld a, [$fc1f]                                 ; $424e: $fa $1f $fc
    rrca                                          ; $4251: $0f
    or $5d                                        ; $4252: $f6 $5d
    and b                                         ; $4254: $a0
    rra                                           ; $4255: $1f
    ldh a, [$c2]                                  ; $4256: $f0 $c2
    add b                                         ; $4258: $80
    ld [hl], d                                    ; $4259: $72
    adc a                                         ; $425a: $8f
    adc h                                         ; $425b: $8c
    inc bc                                        ; $425c: $03
    db $d3                                        ; $425d: $d3
    ld [bc], a                                    ; $425e: $02
    ld bc, $a416                                  ; $425f: $01 $16 $a4
    and e                                         ; $4262: $a3
    ldh [$03], a                                  ; $4263: $e0 $03
    cp $82                                        ; $4265: $fe $82
    pop bc                                        ; $4267: $c1
    rst $38                                       ; $4268: $ff
    adc a                                         ; $4269: $8f
    add c                                         ; $426a: $81
    cp $c3                                        ; $426b: $fe $c3
    cp h                                          ; $426d: $bc
    and d                                         ; $426e: $a2
    add b                                         ; $426f: $80
    ld [hl], b                                    ; $4270: $70
    ldh [$c4], a                                  ; $4271: $e0 $c4
    ret nz                                        ; $4273: $c0

jr_076_4274:
    ld [hl], b                                    ; $4274: $70
    ld l, a                                       ; $4275: $6f
    ret nz                                        ; $4276: $c0

    ld h, b                                       ; $4277: $60
    ret nz                                        ; $4278: $c0

jr_076_4279:
    ld b, b                                       ; $4279: $40
    cp $e0                                        ; $427a: $fe $e0
    rst $38                                       ; $427c: $ff
    add b                                         ; $427d: $80
    cp $e3                                        ; $427e: $fe $e3
    ld e, a                                       ; $4280: $5f
    cp a                                          ; $4281: $bf
    add b                                         ; $4282: $80
    adc a                                         ; $4283: $8f

jr_076_4284:
    add b                                         ; $4284: $80
    add e                                         ; $4285: $83
    and l                                         ; $4286: $a5
    add b                                         ; $4287: $80
    ld bc, $e4ff                                  ; $4288: $01 $ff $e4
    rst $18                                       ; $428b: $df
    inc bc                                        ; $428c: $03
    ld bc, $010f                                  ; $428d: $01 $0f $01
    ccf                                           ; $4290: $3f
    add $80                                       ; $4291: $c6 $80
    rra                                           ; $4293: $1f
    ld [de], a                                    ; $4294: $12
    cp a                                          ; $4295: $bf
    sbc a                                         ; $4296: $9f
    ld de, $08cf                                  ; $4297: $11 $cf $08
    rst $20                                       ; $429a: $e7
    rlca                                          ; $429b: $07
    jr nc, jr_076_4284                            ; $429c: $30 $e6

    ret nc                                        ; $429e: $d0

    rst $18                                       ; $429f: $df
    rst $38                                       ; $42a0: $ff
    ld d, b                                       ; $42a1: $50
    rst $38                                       ; $42a2: $ff
    sub b                                         ; $42a3: $90
    ld a, a                                       ; $42a4: $7f
    ld a, l                                       ; $42a5: $7d
    ldh [$7f], a                                  ; $42a6: $e0 $7f
    ld b, b                                       ; $42a8: $40
    ld [hl], e                                    ; $42a9: $73
    ld a, a                                       ; $42aa: $7f
    ld b, b                                       ; $42ab: $40
    jp nz, $52e0                                  ; $42ac: $c2 $e0 $52

    add e                                         ; $42af: $83
    inc b                                         ; $42b0: $04
    rst $38                                       ; $42b1: $ff
    jr c, jr_076_42e0                             ; $42b2: $38 $2c

    ret nz                                        ; $42b4: $c0

    rst $38                                       ; $42b5: $ff
    ld d, b                                       ; $42b6: $50
    rst $18                                       ; $42b7: $df
    ld d, b                                       ; $42b8: $50
    pop af                                        ; $42b9: $f1
    rra                                           ; $42ba: $1f
    pop af                                        ; $42bb: $f1
    rra                                           ; $42bc: $1f
    ld sp, hl                                     ; $42bd: $f9
    sbc a                                         ; $42be: $9f
    rra                                           ; $42bf: $1f
    ld a, [c]                                     ; $42c0: $f2
    ld a, $fc                                     ; $42c1: $3e $fc
    inc a                                         ; $42c3: $3c
    db $e3                                        ; $42c4: $e3
    add b                                         ; $42c5: $80
    rst $18                                       ; $42c6: $df
    add b                                         ; $42c7: $80
    ld bc, $01f1                                  ; $42c8: $01 $f1 $01
    ldh a, [$cc]                                  ; $42cb: $f0 $cc
    cp b                                          ; $42cd: $b8
    ret nz                                        ; $42ce: $c0

    ld d, b                                       ; $42cf: $50
    adc c                                         ; $42d0: $89
    ret nz                                        ; $42d1: $c0

    ld a, a                                       ; $42d2: $7f
    db $e3                                        ; $42d3: $e3
    ccf                                           ; $42d4: $3f
    ld e, e                                       ; $42d5: $5b
    db $fc                                        ; $42d6: $fc
    inc e                                         ; $42d7: $1c
    ldh [$c7], a                                  ; $42d8: $e0 $c7
    add b                                         ; $42da: $80
    add b                                         ; $42db: $80
    db $10                                        ; $42dc: $10
    add e                                         ; $42dd: $83
    inc bc                                        ; $42de: $03
    cp b                                          ; $42df: $b8

jr_076_42e0:
    add b                                         ; $42e0: $80
    dec d                                         ; $42e1: $15
    ccf                                           ; $42e2: $3f
    or $60                                        ; $42e3: $f6 $60
    ccf                                           ; $42e5: $3f
    or b                                          ; $42e6: $b0
    add b                                         ; $42e7: $80
    inc bc                                        ; $42e8: $03
    ld d, b                                       ; $42e9: $50
    sub b                                         ; $42ea: $90
    add sp, -$13                                  ; $42eb: $e8 $ed
    ret nc                                        ; $42ed: $d0

    push hl                                       ; $42ee: $e5
    call c, $e5c8                                 ; $42ef: $dc $c8 $e5
    ret c                                         ; $42f2: $d8

    add sp, $03                                   ; $42f3: $e8 $03
    inc b                                         ; $42f5: $04
    rlca                                          ; $42f6: $07
    cp $e1                                        ; $42f7: $fe $e1
    inc bc                                        ; $42f9: $03
    inc bc                                        ; $42fa: $03
    ld a, e                                       ; $42fb: $7b
    ld [bc], a                                    ; $42fc: $02
    inc bc                                        ; $42fd: $03
    and d                                         ; $42fe: $a2
    ld h, b                                       ; $42ff: $60
    ldh a, [rIF]                                  ; $4300: $f0 $0f
    ld hl, sp+$07                                 ; $4302: $f8 $07
    db $fd                                        ; $4304: $fd
    and b                                         ; $4305: $a0
    db $fc                                        ; $4306: $fc
    rst $20                                       ; $4307: $e7
    ld h, c                                       ; $4308: $61
    db $e3                                        ; $4309: $e3
    ld h, c                                       ; $430a: $61
    rst $18                                       ; $430b: $df
    ret nc                                        ; $430c: $d0

    rst $38                                       ; $430d: $ff
    ld h, b                                       ; $430e: $60
    rst $18                                       ; $430f: $df
    rst $18                                       ; $4310: $df
    rst $18                                       ; $4311: $df
    ld d, c                                       ; $4312: $51
    rst $18                                       ; $4313: $df
    ld [hl], b                                    ; $4314: $70
    rst $18                                       ; $4315: $df
    rst $38                                       ; $4316: $ff
    db $fc                                        ; $4317: $fc
    pop hl                                        ; $4318: $e1
    rst $38                                       ; $4319: $ff
    di                                            ; $431a: $f3
    rst $38                                       ; $431b: $ff
    db $10                                        ; $431c: $10
    rst $38                                       ; $431d: $ff
    ld a, b                                       ; $431e: $78
    add a                                         ; $431f: $87
    db $fc                                        ; $4320: $fc
    inc bc                                        ; $4321: $03
    cp $03                                        ; $4322: $fe $03
    db $e3                                        ; $4324: $e3
    cp $ff                                        ; $4325: $fe $ff
    add c                                         ; $4327: $81
    add b                                         ; $4328: $80
    dec de                                        ; $4329: $1b
    ret nz                                        ; $432a: $c0

    add b                                         ; $432b: $80
    ld [$ffff], a                                 ; $432c: $ea $ff $ff
    rrca                                          ; $432f: $0f
    rst $38                                       ; $4330: $ff
    nop                                           ; $4331: $00
    adc a                                         ; $4332: $8f
    nop                                           ; $4333: $00
    rst $00                                       ; $4334: $c7
    nop                                           ; $4335: $00
    rst $20                                       ; $4336: $e7

jr_076_4337:
    nop                                           ; $4337: $00
    inc sp                                        ; $4338: $33
    di                                            ; $4339: $f3
    nop                                           ; $433a: $00
    dec bc                                        ; $433b: $0b
    sbc b                                         ; $433c: $98
    ld h, b                                       ; $433d: $60
    ldh a, [$e1]                                  ; $433e: $f0 $e1
    ld c, $00                                     ; $4340: $0e $00
    inc e                                         ; $4342: $1c
    nop                                           ; $4343: $00
    sub l                                         ; $4344: $95
    jr jr_076_4337                                ; $4345: $18 $f0

    ldh [$2f], a                                  ; $4347: $e0 $2f
    ld [hl+], a                                   ; $4349: $22
    add c                                         ; $434a: $81
    rst $38                                       ; $434b: $ff
    add b                                         ; $434c: $80
    db $ec                                        ; $434d: $ec
    ld [hl-], a                                   ; $434e: $32
    ld l, l                                       ; $434f: $6d
    cp $fe                                        ; $4350: $fe $fe
    ld [hl-], a                                   ; $4352: $32
    ld h, e                                       ; $4353: $63
    ld b, $06                                     ; $4354: $06 $06
    ld l, a                                       ; $4356: $6f
    ld l, c                                       ; $4357: $69
    rst $38                                       ; $4358: $ff
    sbc c                                         ; $4359: $99
    rst $38                                       ; $435a: $ff
    rst $30                                       ; $435b: $f7
    adc c                                         ; $435c: $89
    ld a, a                                       ; $435d: $7f
    ld c, c                                       ; $435e: $49
    ld [hl+], a                                   ; $435f: $22
    ld h, e                                       ; $4360: $63
    ld bc, $0601                                  ; $4361: $01 $01 $06
    rlca                                          ; $4364: $07
    rra                                           ; $4365: $1f
    add hl, bc                                    ; $4366: $09
    rrca                                          ; $4367: $0f
    ld de, $211f                                  ; $4368: $11 $1f $21
    xor h                                         ; $436b: $ac
    and d                                         ; $436c: $a2
    cp $40                                        ; $436d: $fe $40
    ld [bc], a                                    ; $436f: $02
    add h                                         ; $4370: $84
    cp b                                          ; $4371: $b8
    ld a, a                                       ; $4372: $7f
    ldh [$f2], a                                  ; $4373: $e0 $f2
    ld b, a                                       ; $4375: $47
    add d                                         ; $4376: $82
    and b                                         ; $4377: $a0
    ccf                                           ; $4378: $3f
    ldh [$03], a                                  ; $4379: $e0 $03
    ld [hl-], a                                   ; $437b: $32
    ldh [$08], a                                  ; $437c: $e0 $08
    cp $66                                        ; $437e: $fe $66
    and b                                         ; $4380: $a0
    inc de                                        ; $4381: $13
    rra                                           ; $4382: $1f
    inc h                                         ; $4383: $24
    ccf                                           ; $4384: $3f
    dec hl                                        ; $4385: $2b
    ccf                                           ; $4386: $3f
    ccf                                           ; $4387: $3f
    rst $38                                       ; $4388: $ff
    inc a                                         ; $4389: $3c
    ld a, l                                       ; $438a: $7d
    rst $10                                       ; $438b: $d7
    cp $83                                        ; $438c: $fe $83
    cp $ab                                        ; $438e: $fe $ab
    cp $ea                                        ; $4390: $fe $ea
    dec de                                        ; $4392: $1b
    ld h, b                                       ; $4393: $60
    add $06                                       ; $4394: $c6 $06
    add c                                         ; $4396: $81
    add $da                                       ; $4397: $c6 $da
    db $e3                                        ; $4399: $e3
    rra                                           ; $439a: $1f
    ldh a, [$9f]                                  ; $439b: $f0 $9f
    ei                                            ; $439d: $fb
    ldh a, [rVBK]                                 ; $439e: $f0 $4f
    ld c, a                                       ; $43a0: $4f
    ld h, c                                       ; $43a1: $61
    ld a, b                                       ; $43a2: $78
    ccf                                           ; $43a3: $3f
    daa                                           ; $43a4: $27
    ccf                                           ; $43a5: $3f
    add hl, sp                                    ; $43a6: $39
    cp a                                          ; $43a7: $bf
    ld a, a                                       ; $43a8: $7f
    ld d, c                                       ; $43a9: $51
    rst $38                                       ; $43aa: $ff
    xor h                                         ; $43ab: $ac
    rst $38                                       ; $43ac: $ff
    sub h                                         ; $43ad: $94
    ld sp, hl                                     ; $43ae: $f9
    ld h, b                                       ; $43af: $60
    and c                                         ; $43b0: $a1
    rst $38                                       ; $43b1: $ff
    ld a, a                                       ; $43b2: $7f
    ld b, c                                       ; $43b3: $41
    daa                                           ; $43b4: $27
    ccf                                           ; $43b5: $3f
    ld c, e                                       ; $43b6: $4b
    ld a, a                                       ; $43b7: $7f
    ld d, a                                       ; $43b8: $57
    ld a, [hl]                                    ; $43b9: $7e
    ei                                            ; $43ba: $fb
    rst $38                                       ; $43bb: $ff
    ld sp, hl                                     ; $43bc: $f9
    adc $65                                       ; $43bd: $ce $65
    add a                                         ; $43bf: $87
    rst $38                                       ; $43c0: $ff
    cp $ff                                        ; $43c1: $fe $ff
    rst $38                                       ; $43c3: $ff
    rst $18                                       ; $43c4: $df
    ld c, a                                       ; $43c5: $4f
    rst $38                                       ; $43c6: $ff
    adc c                                         ; $43c7: $89
    rst $38                                       ; $43c8: $ff
    ld b, b                                       ; $43c9: $40
    dec l                                         ; $43ca: $2d
    and b                                         ; $43cb: $a0
    cp $ff                                        ; $43cc: $fe $ff
    rst $38                                       ; $43ce: $ff
    adc h                                         ; $43cf: $8c
    ccf                                           ; $43d0: $3f
    ldh [$9f], a                                  ; $43d1: $e0 $9f
    ldh a, [$5f]                                  ; $43d3: $f0 $5f
    ldh a, [rIE]                                  ; $43d5: $f0 $ff
    ld e, a                                       ; $43d7: $5f
    ldh a, [rIE]                                  ; $43d8: $f0 $ff
    ld [hl], b                                    ; $43da: $70
    rst $38                                       ; $43db: $ff
    add sp, -$33                                  ; $43dc: $e8 $cd
    ld h, b                                       ; $43de: $60
    ld h, h                                       ; $43df: $64
    inc d                                         ; $43e0: $14
    ld h, d                                       ; $43e1: $62
    cp $2c                                        ; $43e2: $fe $2c
    and d                                         ; $43e4: $a2
    ret nz                                        ; $43e5: $c0

    nop                                           ; $43e6: $00
    db $ec                                        ; $43e7: $ec
    inc c                                         ; $43e8: $0c
    rst $38                                       ; $43e9: $ff
    inc de                                        ; $43ea: $13
    ld a, a                                       ; $43eb: $7f
    rst $18                                       ; $43ec: $df
    ld a, c                                       ; $43ed: $79
    rst $38                                       ; $43ee: $ff
    db $dd                                        ; $43ef: $dd
    rst $38                                       ; $43f0: $ff
    cp l                                          ; $43f1: $bd
    ld b, h                                       ; $43f2: $44
    ldh [$88], a                                  ; $43f3: $e0 $88
    rst $38                                       ; $43f5: $ff
    ld a, a                                       ; $43f6: $7f

jr_076_43f7:
    sub d                                         ; $43f7: $92
    ld a, a                                       ; $43f8: $7f
    ld d, e                                       ; $43f9: $53
    ccf                                           ; $43fa: $3f
    ld sp, $29ff                                  ; $43fb: $31 $ff $29
    ld d, c                                       ; $43fe: $51
    and b                                         ; $43ff: $a0
    ld e, a                                       ; $4400: $5f
    ld a, l                                       ; $4401: $7d
    rst $38                                       ; $4402: $ff
    ld b, l                                       ; $4403: $45
    rst $38                                       ; $4404: $ff
    add d                                         ; $4405: $82
    cp $e0                                        ; $4406: $fe $e0
    rst $00                                       ; $4408: $c7
    ld b, d                                       ; $4409: $42
    ld b, b                                       ; $440a: $40
    rst $38                                       ; $440b: $ff
    jr c, @+$01                                   ; $440c: $38 $ff

    ld [hl], h                                    ; $440e: $74
    cp $7a                                        ; $440f: $fe $7a
    cp $32                                        ; $4411: $fe $32
    cp $ff                                        ; $4413: $fe $ff
    ld [hl+], a                                   ; $4415: $22
    cp $92                                        ; $4416: $fe $92
    db $fc                                        ; $4418: $fc
    sub h                                         ; $4419: $94
    ld hl, sp+$18                                 ; $441a: $f8 $18
    ccf                                           ; $441c: $3f
    rst $38                                       ; $441d: $ff
    add hl, sp                                    ; $441e: $39
    rrca                                          ; $441f: $0f
    add hl, bc                                    ; $4420: $09
    add a                                         ; $4421: $87
    inc b                                         ; $4422: $04
    add e                                         ; $4423: $83
    ld [bc], a                                    ; $4424: $02
    pop bc                                        ; $4425: $c1
    sbc $62                                       ; $4426: $de $62
    add b                                         ; $4428: $80
    pop hl                                        ; $4429: $e1
    ld bc, $00e0                                  ; $442a: $01 $e0 $00
    cp $65                                        ; $442d: $fe $65
    sbc a                                         ; $442f: $9f
    ldh a, [$bf]                                  ; $4430: $f0 $bf
    rra                                           ; $4432: $1f
    ld hl, sp+$0f                                 ; $4433: $f8 $0f
    cp $89                                        ; $4435: $fe $89
    rst $38                                       ; $4437: $ff
    ld [hl], d                                    ; $4438: $72
    add l                                         ; $4439: $85
    rst $38                                       ; $443a: $ff
    rst $38                                       ; $443b: $ff
    ld hl, sp-$71                                 ; $443c: $f8 $8f
    ld hl, sp-$01                                 ; $443e: $f8 $ff
    ld [hl], e                                    ; $4440: $73
    db $fc                                        ; $4441: $fc
    rlca                                          ; $4442: $07
    rst $38                                       ; $4443: $ff
    rst $38                                       ; $4444: $ff
    ld b, h                                       ; $4445: $44
    rst $38                                       ; $4446: $ff
    inc h                                         ; $4447: $24
    cp $28                                        ; $4448: $fe $28
    cp $30                                        ; $444a: $fe $30
    db $fc                                        ; $444c: $fc
    ld a, a                                       ; $444d: $7f
    ld h, b                                       ; $444e: $60
    db $fc                                        ; $444f: $fc
    ret nz                                        ; $4450: $c0

    ld hl, sp-$40                                 ; $4451: $f8 $c0
    cp b                                          ; $4453: $b8
    ldh [$f4], a                                  ; $4454: $e0 $f4
    ld h, b                                       ; $4456: $60
    db $fd                                        ; $4457: $fd
    ld [hl+], a                                   ; $4458: $22
    db $fc                                        ; $4459: $fc
    db $e4                                        ; $445a: $e4
    inc de                                        ; $445b: $13
    rst $38                                       ; $445c: $ff
    inc c                                         ; $445d: $0c
    rst $38                                       ; $445e: $ff
    ld [$ff8f], sp                                ; $445f: $08 $8f $ff
    adc b                                         ; $4462: $88
    sbc a                                         ; $4463: $9f
    sbc h                                         ; $4464: $9c
    rst $20                                       ; $4465: $e7
    rst $38                                       ; $4466: $ff
    add h                                         ; $4467: $84
    rst $38                                       ; $4468: $ff
    jp nz, $ffff                                  ; $4469: $c2 $ff $ff

    pop bc                                        ; $446c: $c1
    ld a, a                                       ; $446d: $7f
    add sp, $3f                                   ; $446e: $e8 $3f
    ldh a, [$1f]                                  ; $4470: $f0 $1f
    rst $38                                       ; $4472: $ff
    db $fd                                        ; $4473: $fd
    ld l, h                                       ; $4474: $6c
    jr z, jr_076_43f7                             ; $4475: $28 $80

    ld bc, $83fe                                  ; $4477: $01 $fe $83
    ld a, l                                       ; $447a: $7d
    rst $38                                       ; $447b: $ff
    ld a, [hl+]                                   ; $447c: $2a
    ei                                            ; $447d: $fb
    rst $38                                       ; $447e: $ff
    call nc, $8068                                ; $447f: $d4 $68 $80
    ldh a, [$30]                                  ; $4482: $f0 $30
    ldh a, [$60]                                  ; $4484: $f0 $60
    ldh [rIE], a                                  ; $4486: $e0 $ff
    ldh [$50], a                                  ; $4488: $e0 $50
    ldh a, [$c8]                                  ; $448a: $f0 $c8
    ld hl, sp+$2e                                 ; $448c: $f8 $2e
    cp $31                                        ; $448e: $fe $31
    set 7, a                                      ; $4490: $cb $ff
    add hl, de                                    ; $4492: $19
    ld l, c                                       ; $4493: $69
    ldh [$61], a                                  ; $4494: $e0 $61
    ld d, a                                       ; $4496: $57
    and c                                         ; $4497: $a1
    ld c, a                                       ; $4498: $4f
    and b                                         ; $4499: $a0
    daa                                           ; $449a: $27
    ccf                                           ; $449b: $3f
    ld a, a                                       ; $449c: $7f
    ccf                                           ; $449d: $3f
    jr c, jr_076_44df                             ; $449e: $38 $3f

    jr nz, jr_076_451f                            ; $44a0: $20 $7d

    rst $38                                       ; $44a2: $ff
    ld [$8240], a                                 ; $44a3: $ea $40 $82
    cp $33                                        ; $44a6: $fe $33
    add b                                         ; $44a8: $80
    rst $38                                       ; $44a9: $ff
    cp $7f                                        ; $44aa: $fe $7f
    rst $38                                       ; $44ac: $ff
    ld bc, $f050                                  ; $44ad: $01 $50 $f0
    ld a, a                                       ; $44b0: $7f
    inc a                                         ; $44b1: $3c
    db $fc                                        ; $44b2: $fc
    ld [hl+], a                                   ; $44b3: $22

jr_076_44b4:
    cp $19                                        ; $44b4: $fe $19
    rst $38                                       ; $44b6: $ff
    dec d                                         ; $44b7: $15
    call nc, $ffe0                                ; $44b8: $d4 $e0 $ff
    ld [de], a                                    ; $44bb: $12
    cp $fc                                        ; $44bc: $fe $fc
    db $fc                                        ; $44be: $fc
    rst $38                                       ; $44bf: $ff
    ld b, $7f                                     ; $44c0: $06 $7f
    ld bc, $b6f8                                  ; $44c2: $01 $f8 $b6
    ld hl, $413a                                  ; $44c5: $21 $3a $41
    ld a, $41                                     ; $44c8: $3e $41
    ldh a, [$3f]                                  ; $44ca: $f0 $3f
    di                                            ; $44cc: $f3
    rst $38                                       ; $44cd: $ff
    sbc a                                         ; $44ce: $9f
    rra                                           ; $44cf: $1f
    inc e                                         ; $44d0: $1c
    cp a                                          ; $44d1: $bf
    jr nz, @+$01                                  ; $44d2: $20 $ff

    jr nz, jr_076_44b4                            ; $44d4: $20 $de

    ret nz                                        ; $44d6: $c0

    db $10                                        ; $44d7: $10
    and b                                         ; $44d8: $a0
    ret z                                         ; $44d9: $c8

    pop hl                                        ; $44da: $e1
    db $eb                                        ; $44db: $eb
    db $fc                                        ; $44dc: $fc
    ld a, a                                       ; $44dd: $7f
    dec bc                                        ; $44de: $0b

jr_076_44df:
    ld h, b                                       ; $44df: $60
    ld [$60b0], sp                                ; $44e0: $08 $b0 $60
    jr c, @+$01                                   ; $44e3: $38 $ff

    ld c, b                                       ; $44e5: $48
    ld d, d                                       ; $44e6: $52
    ret z                                         ; $44e7: $c8

    pop hl                                        ; $44e8: $e1
    inc de                                        ; $44e9: $13
    call nc, $a2a0                                ; $44ea: $d4 $a0 $a2
    ld h, b                                       ; $44ed: $60
    ld [$60e9], sp                                ; $44ee: $08 $e9 $60
    inc b                                         ; $44f1: $04
    ld h, e                                       ; $44f2: $63
    add c                                         ; $44f3: $81
    pop hl                                        ; $44f4: $e1
    cp a                                          ; $44f5: $bf
    cp $e0                                        ; $44f6: $fe $e0

jr_076_44f8:
    jp nc, $e0e2                                  ; $44f8: $d2 $e2 $e0

    adc h                                         ; $44fb: $8c
    add $80                                       ; $44fc: $c6 $80
    ld d, b                                       ; $44fe: $50
    ldh a, [rNR10]                                ; $44ff: $f0 $10
    ld a, a                                       ; $4501: $7f
    pop af                                        ; $4502: $f1
    db $10                                        ; $4503: $10
    di                                            ; $4504: $f3
    db $10                                        ; $4505: $10
    rst $20                                       ; $4506: $e7
    jr nz, jr_076_44f8                            ; $4507: $20 $ef

    xor [hl]                                      ; $4509: $ae
    pop hl                                        ; $450a: $e1
    sbc [hl]                                      ; $450b: $9e
    xor d                                         ; $450c: $aa
    ldh [$c0], a                                  ; $450d: $e0 $c0
    nop                                           ; $450f: $00
    di                                            ; $4510: $f3
    inc bc                                        ; $4511: $03
    jr jr_076_4554                                ; $4512: $18 $40

    cp $e0                                        ; $4514: $fe $e0
    rst $38                                       ; $4516: $ff
    sbc $8b                                       ; $4517: $de $8b
    and b                                         ; $4519: $a0
    rst $38                                       ; $451a: $ff
    rst $38                                       ; $451b: $ff
    rst $30                                       ; $451c: $f7
    ld b, h                                       ; $451d: $44
    sbc a                                         ; $451e: $9f

jr_076_451f:
    ld h, b                                       ; $451f: $60
    rst $18                                       ; $4520: $df
    ld [hl], c                                    ; $4521: $71
    ld a, [$80b5]                                 ; $4522: $fa $b5 $80
    rst $18                                       ; $4525: $df
    or c                                          ; $4526: $b1
    add b                                         ; $4527: $80
    rst $38                                       ; $4528: $ff
    rst $38                                       ; $4529: $ff
    db $fc                                        ; $452a: $fc
    inc b                                         ; $452b: $04
    db $fc                                        ; $452c: $fc
    cp a                                          ; $452d: $bf
    ld a, h                                       ; $452e: $7c
    add h                                         ; $452f: $84
    db $fc                                        ; $4530: $fc
    ld [bc], a                                    ; $4531: $02
    cp $02                                        ; $4532: $fe $02
    ld h, h                                       ; $4534: $64
    ldh [rDIV], a                                 ; $4535: $e0 $04
    ld [hl], h                                    ; $4537: $74
    ld [hl], b                                    ; $4538: $70
    and b                                         ; $4539: $a0
    add b                                         ; $453a: $80
    add b                                         ; $453b: $80
    ld h, b                                       ; $453c: $60
    ldh [$ea], a                                  ; $453d: $e0 $ea
    db $10                                        ; $453f: $10
    ld hl, sp+$78                                 ; $4540: $f8 $78
    ldh [$e9], a                                  ; $4542: $e0 $e9
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    nop                                           ; $454b: $00
    nop                                           ; $454c: $00
    nop                                           ; $454d: $00

jr_076_454e:
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    ld e, a                                       ; $4550: $5f
    rst $38                                       ; $4551: $ff
    rst $38                                       ; $4552: $ff
    rst $38                                       ; $4553: $ff

jr_076_4554:
    nop                                           ; $4554: $00
    cp $fe                                        ; $4555: $fe $fe
    ldh [$fc], a                                  ; $4557: $e0 $fc
    cp $e0                                        ; $4559: $fe $e0
    xor a                                         ; $455b: $af
    ld hl, sp+$00                                 ; $455c: $f8 $00
    add d                                         ; $455e: $82
    nop                                           ; $455f: $00
    ldh a, [$e1]                                  ; $4560: $f0 $e1
    ld a, a                                       ; $4562: $7f
    cp $e0                                        ; $4563: $fe $e0
    ccf                                           ; $4565: $3f
    ld e, [hl]                                    ; $4566: $5e
    cp $e0                                        ; $4567: $fe $e0
    rra                                           ; $4569: $1f
    nop                                           ; $456a: $00
    ld [hl], c                                    ; $456b: $71
    jr nc, jr_076_454e                            ; $456c: $30 $e0

    ldh [$80], a                                  ; $456e: $e0 $80
    cp $e1                                        ; $4570: $fe $e1
    ld a, l                                       ; $4572: $7d
    cp a                                          ; $4573: $bf
    cp $e0                                        ; $4574: $fe $e0
    sbc a                                         ; $4576: $9f
    add b                                         ; $4577: $80
    pop bc                                        ; $4578: $c1
    add b                                         ; $4579: $80
    nop                                           ; $457a: $00
    rst $38                                       ; $457b: $ff
    db $ec                                        ; $457c: $ec
    rst $18                                       ; $457d: $df
    jp nz, $e200                                  ; $457e: $c2 $00 $e2

    nop                                           ; $4581: $00
    ldh a, [$fe]                                  ; $4582: $f0 $fe
    ldh [$e0], a                                  ; $4584: $e0 $e0
    nop                                           ; $4586: $00
    rst $18                                       ; $4587: $df
    pop hl                                        ; $4588: $e1
    nop                                           ; $4589: $00
    rst $00                                       ; $458a: $c7
    nop                                           ; $458b: $00
    rst $08                                       ; $458c: $cf
    ldh a, [$e6]                                  ; $458d: $f0 $e6
    rst $20                                       ; $458f: $e7
    rlca                                          ; $4590: $07
    rst $38                                       ; $4591: $ff
    rst $28                                       ; $4592: $ef
    rrca                                          ; $4593: $0f
    rst $00                                       ; $4594: $c7
    rlca                                          ; $4595: $07
    rst $08                                       ; $4596: $cf
    nop                                           ; $4597: $00
    ld [hl], e                                    ; $4598: $73
    jr nc, @+$01                                  ; $4599: $30 $ff

    ld e, a                                       ; $459b: $5f
    ld e, b                                       ; $459c: $58
    ld c, a                                       ; $459d: $4f
    ld c, b                                       ; $459e: $48
    adc a                                         ; $459f: $8f
    adc b                                         ; $45a0: $88
    sub a                                         ; $45a1: $97
    sub b                                         ; $45a2: $90
    rst $18                                       ; $45a3: $df
    add a                                         ; $45a4: $87
    add b                                         ; $45a5: $80
    db $e3                                        ; $45a6: $e3
    nop                                           ; $45a7: $00
    di                                            ; $45a8: $f3
    ret nc                                        ; $45a9: $d0

    db $ed                                        ; $45aa: $ed
    ld bc, $ef43                                  ; $45ab: $01 $43 $ef
    nop                                           ; $45ae: $00
    ld b, a                                       ; $45af: $47
    nop                                           ; $45b0: $00
    rrca                                          ; $45b1: $0f
    cp $e0                                        ; $45b2: $fe $e0
    rlca                                          ; $45b4: $07
    nop                                           ; $45b5: $00
    add a                                         ; $45b6: $87
    rst $38                                       ; $45b7: $ff
    add b                                         ; $45b8: $80
    jp $f3c0                                      ; $45b9: $c3 $c0 $f3


    ld b, b                                       ; $45bc: $40
    jp $c780                                      ; $45bd: $c3 $80 $c7


    db $eb                                        ; $45c0: $eb
    add b                                         ; $45c1: $80
    adc a                                         ; $45c2: $8f
    cp $e0                                        ; $45c3: $fe $e0
    add a                                         ; $45c5: $87
    cp $e0                                        ; $45c6: $fe $e0
    db $e3                                        ; $45c8: $e3
    add b                                         ; $45c9: $80
    di                                            ; $45ca: $f3
    sub a                                         ; $45cb: $97
    add b                                         ; $45cc: $80
    rst $38                                       ; $45cd: $ff
    nop                                           ; $45ce: $00
    ld [hl], b                                    ; $45cf: $70
    jp hl                                         ; $45d0: $e9


    ld b, c                                       ; $45d1: $41
    ld a, [c]                                     ; $45d2: $f2
    ldh [$50], a                                  ; $45d3: $e0 $50
    db $e3                                        ; $45d5: $e3
    rst $38                                       ; $45d6: $ff
    ld a, a                                       ; $45d7: $7f
    rrca                                          ; $45d8: $0f
    rst $30                                       ; $45d9: $f7
    dec a                                         ; $45da: $3d
    rst $08                                       ; $45db: $cf
    ld a, b                                       ; $45dc: $78
    adc a                                         ; $45dd: $8f
    ld a, [$e5e0]                                 ; $45de: $fa $e0 $e5
    rst $38                                       ; $45e1: $ff
    rst $38                                       ; $45e2: $ff
    ldh [$df], a                                  ; $45e3: $e0 $df
    ld a, b                                       ; $45e5: $78
    rst $20                                       ; $45e6: $e7
    inc a                                         ; $45e7: $3c
    db $e3                                        ; $45e8: $e3
    cp [hl]                                       ; $45e9: $be
    cp $d0                                        ; $45ea: $fe $d0
    and $01                                       ; $45ec: $e6 $01
    ld a, $03                                     ; $45ee: $3e $03
    inc e                                         ; $45f0: $1c
    rlca                                          ; $45f1: $07
    ld c, b                                       ; $45f2: $48
    rrca                                          ; $45f3: $0f
    cp $d0                                        ; $45f4: $fe $d0
    db $e3                                        ; $45f6: $e3
    rst $38                                       ; $45f7: $ff
    ld a, a                                       ; $45f8: $7f
    adc a                                         ; $45f9: $8f
    ld a, [$ff0f]                                 ; $45fa: $fa $0f $ff
    jr nc, @+$01                                  ; $45fd: $30 $ff

    rst $38                                       ; $45ff: $ff
    ret nz                                        ; $4600: $c0

    rst $38                                       ; $4601: $ff
    rst $38                                       ; $4602: $ff
    ld bc, $0eff                                  ; $4603: $01 $ff $0e
    ld a, a                                       ; $4606: $7f
    rst $38                                       ; $4607: $ff
    ld c, $ff                                     ; $4608: $0e $ff
    ret nz                                        ; $460a: $c0

    cp a                                          ; $460b: $bf
    ldh [rIE], a                                  ; $460c: $e0 $ff
    ldh a, [$1f]                                  ; $460e: $f0 $1f
    rst $38                                       ; $4610: $ff
    ld hl, sp+$09                                 ; $4611: $f8 $09
    ld hl, sp-$01                                 ; $4613: $f8 $ff
    ld b, b                                       ; $4615: $40
    rst $38                                       ; $4616: $ff
    ld b, b                                       ; $4617: $40
    cp $b1                                        ; $4618: $fe $b1
    add b                                         ; $461a: $80
    nop                                           ; $461b: $00
    add sp, $12                                   ; $461c: $e8 $12
    ldh [$f0], a                                  ; $461e: $e0 $f0
    ldh [$80], a                                  ; $4620: $e0 $80
    db $fc                                        ; $4622: $fc
    cp $e0                                        ; $4623: $fe $e0
    ld hl, sp-$01                                 ; $4625: $f8 $ff
    add b                                         ; $4627: $80
    add d                                         ; $4628: $82
    add b                                         ; $4629: $80
    ld b, e                                       ; $462a: $43
    ld bc, HeaderCartridgeType                    ; $462b: $01 $47 $01
    ld c, $ff                                     ; $462e: $0e $ff
    inc bc                                        ; $4630: $03
    ld c, $03                                     ; $4631: $0e $03
    rlca                                          ; $4633: $07
    inc bc                                        ; $4634: $03
    add a                                         ; $4635: $87
    rlca                                          ; $4636: $07
    rst $28                                       ; $4637: $ef
    rst $38                                       ; $4638: $ff
    dec c                                         ; $4639: $0d
    rst $38                                       ; $463a: $ff
    dec bc                                        ; $463b: $0b
    rrca                                          ; $463c: $0f
    rst $38                                       ; $463d: $ff
    inc a                                         ; $463e: $3c
    rst $38                                       ; $463f: $ff
    ld e, a                                       ; $4640: $5f
    rst $18                                       ; $4641: $df
    rst $38                                       ; $4642: $ff
    cp a                                          ; $4643: $bf
    ld a, [$d0ff]                                 ; $4644: $fa $ff $d0
    add sp, -$40                                  ; $4647: $e8 $c0
    ret nz                                        ; $4649: $c0

    rst $38                                       ; $464a: $ff
    rst $38                                       ; $464b: $ff
    db $d3                                        ; $464c: $d3
    pop hl                                        ; $464d: $e1
    rst $38                                       ; $464e: $ff
    ld a, c                                       ; $464f: $79
    rst $38                                       ; $4650: $ff
    db $f4                                        ; $4651: $f4
    rst $38                                       ; $4652: $ff
    ld a, [$bfff]                                 ; $4653: $fa $ff $bf
    rst $38                                       ; $4656: $ff
    rla                                           ; $4657: $17
    rst $38                                       ; $4658: $ff
    inc bc                                        ; $4659: $03
    rst $38                                       ; $465a: $ff
    rlca                                          ; $465b: $07
    rst $38                                       ; $465c: $ff
    db $fd                                        ; $465d: $fd
    sub a                                         ; $465e: $97
    ldh a, [$c2]                                  ; $465f: $f0 $c2
    add b                                         ; $4661: $80
    ldh a, [$80]                                  ; $4662: $f0 $80
    ldh [$80], a                                  ; $4664: $e0 $80
    pop hl                                        ; $4666: $e1
    rst $38                                       ; $4667: $ff
    add b                                         ; $4668: $80
    rst $00                                       ; $4669: $c7
    ld b, b                                       ; $466a: $40
    rst $28                                       ; $466b: $ef
    and b                                         ; $466c: $a0
    ld c, c                                       ; $466d: $49
    rrca                                          ; $466e: $0f
    ld d, d                                       ; $466f: $52
    rst $38                                       ; $4670: $ff
    rra                                           ; $4671: $1f
    ld [hl-], a                                   ; $4672: $32
    ccf                                           ; $4673: $3f
    daa                                           ; $4674: $27
    ccf                                           ; $4675: $3f
    dec h                                         ; $4676: $25
    ccf                                           ; $4677: $3f
    xor a                                         ; $4678: $af
    rst $38                                       ; $4679: $ff
    ld a, $ff                                     ; $467a: $3e $ff
    ccf                                           ; $467c: $3f
    rst $38                                       ; $467d: $ff
    dec sp                                        ; $467e: $3b
    rra                                           ; $467f: $1f
    rst $38                                       ; $4680: $ff
    ld a, a                                       ; $4681: $7f
    ld e, a                                       ; $4682: $5f
    ld hl, sp-$01                                 ; $4683: $f8 $ff
    and b                                         ; $4685: $a0
    rst $38                                       ; $4686: $ff
    add a                                         ; $4687: $87
    cp c                                          ; $4688: $b9
    ldh [$08], a                                  ; $4689: $e0 $08
    add h                                         ; $468b: $84
    ldh [rIE], a                                  ; $468c: $e0 $ff
    ld a, b                                       ; $468e: $78
    rst $20                                       ; $468f: $e7
    db $fc                                        ; $4690: $fc
    di                                            ; $4691: $f3
    ld a, [hl]                                    ; $4692: $7e
    ei                                            ; $4693: $fb
    ld e, $ff                                     ; $4694: $1e $ff
    rst $30                                       ; $4696: $f7
    xor $ff                                       ; $4697: $ee $ff
    inc d                                         ; $4699: $14
    cp $e0                                        ; $469a: $fe $e0
    ld e, $ff                                     ; $469c: $1e $ff
    dec a                                         ; $469e: $3d
    jp nz, $80f3                                  ; $469f: $c2 $f3 $80

    ld [c], a                                     ; $46a2: $e2
    jp nz, $c0e0                                  ; $46a3: $c2 $e0 $c0

    db $e4                                        ; $46a6: $e4
    add b                                         ; $46a7: $80
    rst $08                                       ; $46a8: $cf
    add b                                         ; $46a9: $80
    rst $38                                       ; $46aa: $ff
    ld a, l                                       ; $46ab: $7d
    add hl, bc                                    ; $46ac: $09
    ret c                                         ; $46ad: $d8

    ldh [$09], a                                  ; $46ae: $e0 $09
    rst $38                                       ; $46b0: $ff
    dec b                                         ; $46b1: $05
    rst $38                                       ; $46b2: $ff
    inc bc                                        ; $46b3: $03
    ld h, b                                       ; $46b4: $60
    pop bc                                        ; $46b5: $c1
    rst $38                                       ; $46b6: $ff
    add e                                         ; $46b7: $83
    ld bc, $9cff                                  ; $46b8: $01 $ff $9c
    rst $38                                       ; $46bb: $ff
    adc b                                         ; $46bc: $88
    rst $38                                       ; $46bd: $ff

jr_076_46be:
    jr z, jr_076_46be                             ; $46be: $28 $fe

    ld a, e                                       ; $46c0: $7b
    ldh [$1f], a                                  ; $46c1: $e0 $1f
    cp $87                                        ; $46c3: $fe $87
    rst $38                                       ; $46c5: $ff
    jp $f03f                                      ; $46c6: $c3 $3f $f0


    cp a                                          ; $46c9: $bf
    rst $38                                       ; $46ca: $ff

jr_076_46cb:
    ld [hl], e                                    ; $46cb: $73
    rst $38                                       ; $46cc: $ff
    ld [hl+], a                                   ; $46cd: $22
    rst $38                                       ; $46ce: $ff
    add hl, hl                                    ; $46cf: $29
    ld a, e                                       ; $46d0: $7b
    ldh [$f1], a                                  ; $46d1: $e0 $f1
    rst $38                                       ; $46d3: $ff
    cp $c2                                        ; $46d4: $fe $c2
    db $fc                                        ; $46d6: $fc
    add h                                         ; $46d7: $84
    cp $1e                                        ; $46d8: $fe $1e
    rst $38                                       ; $46da: $ff
    jr nz, jr_076_46cb                            ; $46db: $20 $ee

    cp $e2                                        ; $46dd: $fe $e2
    ld b, b                                       ; $46df: $40
    cp a                                          ; $46e0: $bf
    add b                                         ; $46e1: $80
    ret nc                                        ; $46e2: $d0

    call nz, $ff37                                ; $46e3: $c4 $37 $ff
    ld [de], a                                    ; $46e6: $12
    xor $fe                                       ; $46e7: $ee $fe
    ldh [rNR10], a                                ; $46e9: $e0 $10
    rst $38                                       ; $46eb: $ff
    ld a, [bc]                                    ; $46ec: $0a
    ld h, d                                       ; $46ed: $62
    ldh [rTAC], a                                 ; $46ee: $e0 $07
    add d                                         ; $46f0: $82
    inc bc                                        ; $46f1: $03
    cp $7c                                        ; $46f2: $fe $7c
    ldh [$3f], a                                  ; $46f4: $e0 $3f
    rst $38                                       ; $46f6: $ff
    ld c, $f8                                     ; $46f7: $0e $f8
    rrca                                          ; $46f9: $0f
    db $fc                                        ; $46fa: $fc
    rlca                                          ; $46fb: $07
    rst $38                                       ; $46fc: $ff
    cp $83                                        ; $46fd: $fe $83

Jump_076_46ff:
    rst $38                                       ; $46ff: $ff
    pop hl                                        ; $4700: $e1
    ccf                                           ; $4701: $3f
    ld hl, sp-$01                                 ; $4702: $f8 $ff
    push af                                       ; $4704: $f5
    cp $fe                                        ; $4705: $fe $fe
    ldh [$63], a                                  ; $4707: $e0 $63
    ccf                                           ; $4709: $3f
    rst $00                                       ; $470a: $c7
    ld a, h                                       ; $470b: $7c
    call nz, $cc7c                                ; $470c: $c4 $7c $cc
    rst $08                                       ; $470f: $cf
    ld hl, sp-$48                                 ; $4710: $f8 $b8
    or $7c                                        ; $4712: $f6 $7c
    ld [de], a                                    ; $4714: $12
    jp $c710                                      ; $4715: $c3 $10 $c7


    jp nz, $b703                                  ; $4718: $c2 $03 $b7

    ld [c], a                                     ; $471b: $e2
    inc bc                                        ; $471c: $03
    ld a, [c]                                     ; $471d: $f2
    cp $e0                                        ; $471e: $fe $e0
    pop hl                                        ; $4720: $e1
    ld bc, $c320                                  ; $4721: $01 $20 $c3
    rrca                                          ; $4724: $0f
    rst $38                                       ; $4725: $ff
    ld hl, sp+$07                                 ; $4726: $f8 $07
    rst $38                                       ; $4728: $ff
    dec a                                         ; $4729: $3d
    rst $38                                       ; $472a: $ff
    ld a, a                                       ; $472b: $7f
    add $ff                                       ; $472c: $c6 $ff
    db $fd                                        ; $472e: $fd
    add e                                         ; $472f: $83
    nop                                           ; $4730: $00
    ld [c], a                                     ; $4731: $e2
    ldh [$fb], a                                  ; $4732: $e0 $fb
    ccf                                           ; $4734: $3f
    push de                                       ; $4735: $d5
    rst $38                                       ; $4736: $ff
    di                                            ; $4737: $f3
    cp a                                          ; $4738: $bf
    rst $38                                       ; $4739: $ff
    ld sp, hl                                     ; $473a: $f9
    rra                                           ; $473b: $1f
    db $fc                                        ; $473c: $fc
    rrca                                          ; $473d: $0f
    ld hl, sp-$02                                 ; $473e: $f8 $fe
    ldh [rIE], a                                  ; $4740: $e0 $ff
    rst $38                                       ; $4742: $ff
    ld e, a                                       ; $4743: $5f
    db $e3                                        ; $4744: $e3
    ldh [rNR22], a                                ; $4745: $e0 $17
    ldh a, [$9f]                                  ; $4747: $f0 $9f
    ldh a, [rVBK]                                 ; $4749: $f0 $4f
    rst $38                                       ; $474b: $ff
    ld hl, sp-$51                                 ; $474c: $f8 $af
    ld hl, sp-$29                                 ; $474e: $f8 $d7
    ldh a, [$e3]                                  ; $4750: $f0 $e3
    ldh [$f3], a                                  ; $4752: $e0 $f3
    rst $38                                       ; $4754: $ff
    add b                                         ; $4755: $80
    call nz, $e407                                ; $4756: $c4 $07 $e4
    rlca                                          ; $4759: $07
    db $f4                                        ; $475a: $f4
    rlca                                          ; $475b: $07
    or $fb                                        ; $475c: $f6 $fb
    rlca                                          ; $475e: $07
    db $e3                                        ; $475f: $e3

jr_076_4760:
    cp [hl]                                       ; $4760: $be
    ldh [$c7], a                                  ; $4761: $e0 $c7
    ld bc, $00cf                                  ; $4763: $01 $cf $00
    rra                                           ; $4766: $1f
    cp $2f                                        ; $4767: $fe $2f
    ldh [$3e], a                                  ; $4769: $e0 $3e
    rst $38                                       ; $476b: $ff
    ld a, h                                       ; $476c: $7c
    rst $00                                       ; $476d: $c7
    ld a, [hl]                                    ; $476e: $7e
    jp $fdff                                      ; $476f: $c3 $ff $fd


    add c                                         ; $4772: $81
    ld a, d                                       ; $4773: $7a
    pop bc                                        ; $4774: $c1
    jp z, Jump_000_35fe                           ; $4775: $ca $fe $35

    rst $38                                       ; $4778: $ff
    ld c, e                                       ; $4779: $4b
    rst $38                                       ; $477a: $ff
    rst $38                                       ; $477b: $ff
    and e                                         ; $477c: $a3
    cp $41                                        ; $477d: $fe $41
    rst $38                                       ; $477f: $ff
    ld hl, $f0ff                                  ; $4780: $21 $ff $f0
    rst $18                                       ; $4783: $df
    ei                                            ; $4784: $fb
    rst $38                                       ; $4785: $ff
    sbc a                                         ; $4786: $9f
    ldh a, [$a3]                                  ; $4787: $f0 $a3
    sbc a                                         ; $4789: $9f
    sub b                                         ; $478a: $90
    rst $28                                       ; $478b: $ef
    ld a, b                                       ; $478c: $78
    rst $28                                       ; $478d: $ef
    rst $18                                       ; $478e: $df
    jr c, jr_076_4760                             ; $478f: $38 $cf

    db $fc                                        ; $4791: $fc
    sbc e                                         ; $4792: $9b
    cp $00                                        ; $4793: $fe $00
    call nz, Call_000_3f01                        ; $4795: $c4 $01 $3f
    rst $38                                       ; $4798: $ff
    ld bc, $023f                                  ; $4799: $01 $3f $02
    rra                                           ; $479c: $1f
    ld [bc], a                                    ; $479d: $02
    ld c, a                                       ; $479e: $4f
    rrca                                          ; $479f: $0f
    rst $38                                       ; $47a0: $ff
    pop af                                        ; $47a1: $f1
    ret c                                         ; $47a2: $d8

    call nz, $eac0                                ; $47a3: $c4 $c0 $ea
    and d                                         ; $47a6: $a2
    ld [hl], $c0                                  ; $47a7: $36 $c0
    ld bc, $82ff                                  ; $47a9: $01 $ff $82
    rst $38                                       ; $47ac: $ff
    db $dd                                        ; $47ad: $dd
    ld h, b                                       ; $47ae: $60
    ld a, [c]                                     ; $47af: $f2
    ld [c], a                                     ; $47b0: $e2
    ld hl, $c1ff                                  ; $47b1: $21 $ff $c1
    ld h, $c0                                     ; $47b4: $26 $c0
    ld [bc], a                                    ; $47b6: $02
    db $fd                                        ; $47b7: $fd
    pop de                                        ; $47b8: $d1
    inc b                                         ; $47b9: $04
    ld b, b                                       ; $47ba: $40
    call nz, $a730                                ; $47bb: $c4 $30 $a7
    ret nz                                        ; $47be: $c0

    and c                                         ; $47bf: $a1
    ld bc, $e2c0                                  ; $47c0: $01 $c0 $e2
    ld bc, $5f1f                                  ; $47c3: $01 $1f $5f
    ld [bc], a                                    ; $47c6: $02
    ld b, e                                       ; $47c7: $43
    ld [bc], a                                    ; $47c8: $02
    rst $38                                       ; $47c9: $ff
    ldh a, [$c0]                                  ; $47ca: $f0 $c0
    ret nz                                        ; $47cc: $c0

    inc b                                         ; $47cd: $04
    ld d, h                                       ; $47ce: $54
    ret nz                                        ; $47cf: $c0

    xor $c0                                       ; $47d0: $ee $c0
    db $e3                                        ; $47d2: $e3
    ld [bc], a                                    ; $47d3: $02
    rst $38                                       ; $47d4: $ff
    jr jr_076_484f                                ; $47d5: $18 $78

    ret nz                                        ; $47d7: $c0

    inc b                                         ; $47d8: $04
    rst $38                                       ; $47d9: $ff
    inc de                                        ; $47da: $13
    di                                            ; $47db: $f3
    rst $38                                       ; $47dc: $ff
    rst $28                                       ; $47dd: $ef
    db $f4                                        ; $47de: $f4
    ldh [$c0], a                                  ; $47df: $e0 $c0
    ldh [$a5], a                                  ; $47e1: $e0 $a5
    rst $38                                       ; $47e3: $ff
    rst $00                                       ; $47e4: $c7
    rst $38                                       ; $47e5: $ff
    rst $28                                       ; $47e6: $ef
    adc $f8                                       ; $47e7: $ce $f8
    cp $b0                                        ; $47e9: $fe $b0
    ldh a, [$85]                                  ; $47eb: $f0 $85
    ld d, b                                       ; $47ed: $50

jr_076_47ee:
    rra                                           ; $47ee: $1f
    ld h, b                                       ; $47ef: $60
    rst $38                                       ; $47f0: $ff
    ccf                                           ; $47f1: $3f
    jr nz, jr_076_4833                            ; $47f2: $20 $3f

    cpl                                           ; $47f4: $2f
    ccf                                           ; $47f5: $3f
    jr nc, jr_076_4837                            ; $47f6: $30 $3f

    sbc a                                         ; $47f8: $9f
    rst $38                                       ; $47f9: $ff
    rra                                           ; $47fa: $1f

jr_076_47fb:
    rst $28                                       ; $47fb: $ef
    rrca                                          ; $47fc: $0f
    rst $38                                       ; $47fd: $ff
    rst $38                                       ; $47fe: $ff
    ld a, a                                       ; $47ff: $7f
    pop bc                                        ; $4800: $c1
    ld a, $fb                                     ; $4801: $3e $fb
    db $e3                                        ; $4803: $e3
    ld a, $89                                     ; $4804: $3e $89
    ldh [rSCY], a                                 ; $4806: $e0 $42
    rst $38                                       ; $4808: $ff
    cp a                                          ; $4809: $bf
    rst $38                                       ; $480a: $ff
    jp $feff                                      ; $480b: $c3 $ff $fe


    rst $38                                       ; $480e: $ff
    rst $38                                       ; $480f: $ff
    ei                                            ; $4810: $fb
    adc b                                         ; $4811: $88
    rst $38                                       ; $4812: $ff
    db $fc                                        ; $4813: $fc
    ld b, e                                       ; $4814: $43
    ld l, e                                       ; $4815: $6b
    cp $81                                        ; $4816: $fe $81
    xor c                                         ; $4818: $a9
    and b                                         ; $4819: $a0
    rst $38                                       ; $481a: $ff
    cpl                                           ; $481b: $2f
    ldh [rIE], a                                  ; $481c: $e0 $ff
    rst $38                                       ; $481e: $ff
    ldh a, [$8b]                                  ; $481f: $f0 $8b
    ld a, a                                       ; $4821: $7f
    rst $38                                       ; $4822: $ff
    rst $38                                       ; $4823: $ff
    ld c, a                                       ; $4824: $4f
    rrca                                          ; $4825: $0f
    ld d, b                                       ; $4826: $50
    rra                                           ; $4827: $1f
    jr nz, @-$40                                  ; $4828: $20 $be

    ldh [$ed], a                                  ; $482a: $e0 $ed
    jr nz, jr_076_47ee                            ; $482c: $20 $c0

    ldh [$f0], a                                  ; $482e: $e0 $f0
    rra                                           ; $4830: $1f
    db $db                                        ; $4831: $db
    pop hl                                        ; $4832: $e1

jr_076_4833:
    ld a, [hl]                                    ; $4833: $7e
    jp Jump_000_0a3e                              ; $4834: $c3 $3e $0a


jr_076_4837:
    ld c, l                                       ; $4837: $4d
    ret nz                                        ; $4838: $c0

    ld [bc], a                                    ; $4839: $02
    add a                                         ; $483a: $87
    add b                                         ; $483b: $80
    inc bc                                        ; $483c: $03
    ret nz                                        ; $483d: $c0

    ldh [rNR10], a                                ; $483e: $e0 $10
    set 0, b                                      ; $4840: $cb $c0
    db $ed                                        ; $4842: $ed
    nop                                           ; $4843: $00
    ret nz                                        ; $4844: $c0

    rst $38                                       ; $4845: $ff
    inc bc                                        ; $4846: $03
    db $fc                                        ; $4847: $fc
    rlca                                          ; $4848: $07
    ld a, b                                       ; $4849: $78
    rrca                                          ; $484a: $0f
    ld [hl], c                                    ; $484b: $71
    rra                                           ; $484c: $1f
    ld [hl-], a                                   ; $484d: $32
    rst $38                                       ; $484e: $ff

jr_076_484f:
    rra                                           ; $484f: $1f
    inc h                                         ; $4850: $24
    ccf                                           ; $4851: $3f
    ld h, l                                       ; $4852: $65
    ld a, a                                       ; $4853: $7f
    ld c, a                                       ; $4854: $4f
    ld a, a                                       ; $4855: $7f
    rra                                           ; $4856: $1f
    db $db                                        ; $4857: $db
    push af                                       ; $4858: $f5
    rra                                           ; $4859: $1f
    dec c                                         ; $485a: $0d
    ld [c], a                                     ; $485b: $e2
    ccf                                           ; $485c: $3f
    rst $38                                       ; $485d: $ff
    ld [hl], $e0                                  ; $485e: $36 $e0
    ld b, b                                       ; $4860: $40
    rst $38                                       ; $4861: $ff
    ei                                            ; $4862: $fb
    rrca                                          ; $4863: $0f
    ld a, a                                       ; $4864: $7f
    ld a, h                                       ; $4865: $7c
    ret nz                                        ; $4866: $c0

    ccf                                           ; $4867: $3f
    ldh a, [$1f]                                  ; $4868: $f0 $1f
    ldh a, [$cf]                                  ; $486a: $f0 $cf
    ld a, a                                       ; $486c: $7f
    ld hl, sp-$19                                 ; $486d: $f8 $e7
    db $fc                                        ; $486f: $fc
    rst $30                                       ; $4870: $f7
    inc a                                         ; $4871: $3c
    db $fd                                        ; $4872: $fd
    call c, $85e0                                 ; $4873: $dc $e0 $85
    ld l, [hl]                                    ; $4876: $6e
    jr nc, jr_076_47fb                            ; $4877: $30 $82

    ld [hl], b                                    ; $4879: $70
    adc d                                         ; $487a: $8a
    ld hl, sp-$10                                 ; $487b: $f8 $f0
    adc e                                         ; $487d: $8b
    ld b, h                                       ; $487e: $44
    rlca                                          ; $487f: $07
    add $c2                                       ; $4880: $c6 $c2
    rst $38                                       ; $4882: $ff
    ccf                                           ; $4883: $3f
    rst $18                                       ; $4884: $df
    push af                                       ; $4885: $f5
    ccf                                           ; $4886: $3f
    ldh [$3f], a                                  ; $4887: $e0 $3f
    ld [$fc3f], a                                 ; $4889: $ea $3f $fc
    ldh a, [$81]                                  ; $488c: $f0 $81
    xor [hl]                                      ; $488e: $ae
    add c                                         ; $488f: $81
    add b                                         ; $4890: $80
    ld a, a                                       ; $4891: $7f

jr_076_4892:
    ldh [$9f], a                                  ; $4892: $e0 $9f
    ldh a, [$8f]                                  ; $4894: $f0 $8f
    rst $38                                       ; $4896: $ff
    ld hl, sp-$79                                 ; $4897: $f8 $87
    db $fc                                        ; $4899: $fc
    ld h, l                                       ; $489a: $65
    db $fc                                        ; $489b: $fc
    ld c, e                                       ; $489c: $4b
    ld a, [hl]                                    ; $489d: $7e
    ld e, a                                       ; $489e: $5f
    rst $38                                       ; $489f: $ff
    ld a, h                                       ; $48a0: $7c
    ld a, a                                       ; $48a1: $7f
    ld a, [hl]                                    ; $48a2: $7e
    ld a, a                                       ; $48a3: $7f
    halt                                          ; $48a4: $76
    ld a, a                                       ; $48a5: $7f
    ld l, [hl]                                    ; $48a6: $6e
    cp a                                          ; $48a7: $bf
    ld d, a                                       ; $48a8: $57
    inc h                                         ; $48a9: $24
    rst $38                                       ; $48aa: $ff
    inc h                                         ; $48ab: $24
    or d                                          ; $48ac: $b2
    and b                                         ; $48ad: $a0
    ld a, b                                       ; $48ae: $78
    call nz, $80a0                                ; $48af: $c4 $a0 $80
    jp z, $f5c0                                   ; $48b2: $ca $c0 $f5

    ld a, a                                       ; $48b5: $7f
    cp $e0                                        ; $48b6: $fe $e0
    inc e                                         ; $48b8: $1c
    ld e, $c0                                     ; $48b9: $1e $c0
    dec hl                                        ; $48bb: $2b
    cp $2f                                        ; $48bc: $fe $2f
    cp $ff                                        ; $48be: $fe $ff
    dec sp                                        ; $48c0: $3b
    cp $7b                                        ; $48c1: $fe $7b
    cp $eb                                        ; $48c3: $fe $eb
    rst $38                                       ; $48c5: $ff
    db $eb                                        ; $48c6: $eb
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    add $7f                                       ; $48c9: $c6 $7f
    adc h                                         ; $48cb: $8c
    add $fc                                       ; $48cc: $c6 $fc
    ld [hl-], a                                   ; $48ce: $32
    cp $12                                        ; $48cf: $fe $12
    rst $38                                       ; $48d1: $ff
    cp $7c                                        ; $48d2: $fe $7c
    db $fc                                        ; $48d4: $fc
    inc h                                         ; $48d5: $24
    db $fc                                        ; $48d6: $fc
    dec h                                         ; $48d7: $25
    db $fc                                        ; $48d8: $fc
    adc a                                         ; $48d9: $8f
    ld a, a                                       ; $48da: $7f
    ld hl, sp-$21                                 ; $48db: $f8 $df
    ld [hl], b                                    ; $48dd: $70
    ld c, c                                       ; $48de: $49
    rrca                                          ; $48df: $0f
    ld c, d                                       ; $48e0: $4a
    rrca                                          ; $48e1: $0f
    rst $38                                       ; $48e2: $ff
    ldh [rIE], a                                  ; $48e3: $e0 $ff
    ld c, $1f                                     ; $48e5: $0e $1f
    rla                                           ; $48e7: $17
    cp a                                          ; $48e8: $bf
    cpl                                           ; $48e9: $2f
    rst $38                                       ; $48ea: $ff
    ld h, $ff                                     ; $48eb: $26 $ff
    ei                                            ; $48ed: $fb
    ld [hl+], a                                   ; $48ee: $22
    ld sp, $e0c7                                  ; $48ef: $31 $c7 $e0
    rst $38                                       ; $48f2: $ff
    or c                                          ; $48f3: $b1
    rst $38                                       ; $48f4: $ff
    ld c, d                                       ; $48f5: $4a
    rst $38                                       ; $48f6: $ff
    db $fd                                        ; $48f7: $fd
    ld e, e                                       ; $48f8: $5b
    ret                                           ; $48f9: $c9


    add b                                         ; $48fa: $80
    ld d, c                                       ; $48fb: $51
    rst $38                                       ; $48fc: $ff
    jr nz, jr_076_4892                            ; $48fd: $20 $93

    cp $eb                                        ; $48ff: $fe $eb
    rst $18                                       ; $4901: $df
    cp $ff                                        ; $4902: $fe $ff
    sbc [hl]                                      ; $4904: $9e
    rst $38                                       ; $4905: $ff
    ld c, [hl]                                    ; $4906: $4e
    cp e                                          ; $4907: $bb
    add b                                         ; $4908: $80
    ld e, l                                       ; $4909: $5d
    rst $38                                       ; $490a: $ff
    scf                                           ; $490b: $37
    ld c, l                                       ; $490c: $4d
    rst $38                                       ; $490d: $ff
    adc c                                         ; $490e: $89
    ld [$0fa0], sp                                ; $490f: $08 $a0 $0f
    rst $38                                       ; $4912: $ff
    ld [hl], d                                    ; $4913: $72
    and b                                         ; $4914: $a0
    jp nz, $efa1                                  ; $4915: $c2 $a1 $ef

    ld hl, sp+$3f                                 ; $4918: $f8 $3f
    db $fc                                        ; $491a: $fc
    ld c, a                                       ; $491b: $4f
    cp d                                          ; $491c: $ba
    and d                                         ; $491d: $a2
    rst $00                                       ; $491e: $c7
    ld a, a                                       ; $491f: $7f
    ldh a, [$e5]                                  ; $4920: $f0 $e5
    ccf                                           ; $4922: $3f
    ld h, a                                       ; $4923: $67
    ret nz                                        ; $4924: $c0

    ld [hl], l                                    ; $4925: $75
    ld hl, $12c0                                  ; $4926: $21 $c0 $12
    and b                                         ; $4929: $a0
    sbc b                                         ; $492a: $98
    rst $28                                       ; $492b: $ef
    ld a, b                                       ; $492c: $78
    rst $38                                       ; $492d: $ff
    or a                                          ; $492e: $b7
    db $fd                                        ; $492f: $fd
    jp nc, $bcfe                                  ; $4930: $d2 $fe $bc

    db $fc                                        ; $4933: $fc
    inc b                                         ; $4934: $04
    db $fc                                        ; $4935: $fc
    db $e3                                        ; $4936: $e3
    ld b, [hl]                                    ; $4937: $46
    db $fc                                        ; $4938: $fc
    inc h                                         ; $4939: $24
    and c                                         ; $493a: $a1
    ld d, b                                       ; $493b: $50
    ldh [$f0], a                                  ; $493c: $e0 $f0
    ld h, a                                       ; $493e: $67
    inc h                                         ; $493f: $24
    rst $38                                       ; $4940: $ff
    inc [hl]                                      ; $4941: $34
    ld l, e                                       ; $4942: $6b
    rst $38                                       ; $4943: $ff
    inc c                                         ; $4944: $0c
    ld b, $c0                                     ; $4945: $06 $c0
    ld bc, $c1d6                                  ; $4947: $01 $d6 $c1
    adc b                                         ; $494a: $88
    rrca                                          ; $494b: $0f
    and h                                         ; $494c: $a4
    add b                                         ; $494d: $80
    db $fd                                        ; $494e: $fd
    pop af                                        ; $494f: $f1
    ld d, h                                       ; $4950: $54
    ldh [$3b], a                                  ; $4951: $e0 $3b
    pop af                                        ; $4953: $f1
    rra                                           ; $4954: $1f
    rst $38                                       ; $4955: $ff
    adc $7f                                       ; $4956: $ce $7f
    db $fd                                        ; $4958: $fd
    ldh [$da], a                                  ; $4959: $e0 $da
    ret nz                                        ; $495b: $c0

    and l                                         ; $495c: $a5
    rst $38                                       ; $495d: $ff
    and $ff                                       ; $495e: $e6 $ff
    rst $00                                       ; $4960: $c7
    cp $ff                                        ; $4961: $fe $ff
    adc a                                         ; $4963: $8f
    ld a, [c]                                     ; $4964: $f2
    rra                                           ; $4965: $1f
    pop hl                                        ; $4966: $e1
    ld a, a                                       ; $4967: $7f
    pop de                                        ; $4968: $d1
    rst $38                                       ; $4969: $ff
    sbc a                                         ; $496a: $9f
    xor $b0                                       ; $496b: $ee $b0
    and c                                         ; $496d: $a1
    ldh [$1f], a                                  ; $496e: $e0 $1f
    ldh a, [rHDMA3]                               ; $4970: $f0 $53
    and c                                         ; $4972: $a1

jr_076_4973:
    adc a                                         ; $4973: $8f
    ld hl, sp+$1f                                 ; $4974: $f8 $1f
    rst $38                                       ; $4976: $ff
    ldh a, [$f1]                                  ; $4977: $f0 $f1
    ldh a, [$fe]                                  ; $4979: $f0 $fe
    sub e                                         ; $497b: $93
    rst $38                                       ; $497c: $ff
    adc e                                         ; $497d: $8b
    rst $38                                       ; $497e: $ff
    db $fd                                        ; $497f: $fd

Call_076_4980:
    add l                                         ; $4980: $85
    db $fc                                        ; $4981: $fc
    ldh [rLYC], a                                 ; $4982: $e0 $45
    rst $38                                       ; $4984: $ff
    inc hl                                        ; $4985: $23
    rst $18                                       ; $4986: $df
    dec e                                         ; $4987: $1d
    rst $08                                       ; $4988: $cf
    pop hl                                        ; $4989: $e1
    ld bc, $a3a5                                  ; $498a: $01 $a5 $a3
    rst $08                                       ; $498d: $cf
    ld h, b                                       ; $498e: $60
    ld [$8461], sp                                ; $498f: $08 $61 $84
    ld h, b                                       ; $4992: $60
    and d                                         ; $4993: $a2
    cp $42                                        ; $4994: $fe $42
    pop af                                        ; $4996: $f1
    cp $97                                        ; $4997: $fe $97
    and c                                         ; $4999: $a1
    ret c                                         ; $499a: $d8

    ld b, b                                       ; $499b: $40
    sub b                                         ; $499c: $90
    and c                                         ; $499d: $a1
    ld b, c                                       ; $499e: $41
    ret z                                         ; $499f: $c8

    rrca                                          ; $49a0: $0f
    db $fc                                        ; $49a1: $fc
    rst $38                                       ; $49a2: $ff
    ld a, a                                       ; $49a3: $7f
    cp $a7                                        ; $49a4: $fe $a7
    rst $38                                       ; $49a6: $ff
    sub l                                         ; $49a7: $95
    rst $38                                       ; $49a8: $ff
    adc e                                         ; $49a9: $8b
    cp $bf                                        ; $49aa: $fe $bf
    sub a                                         ; $49ac: $97
    cp $8b                                        ; $49ad: $fe $8b
    rst $38                                       ; $49af: $ff

jr_076_49b0:
    ld b, a                                       ; $49b0: $47
    ld de, $80a7                                  ; $49b1: $11 $a7 $80
    add h                                         ; $49b4: $84
    db $fc                                        ; $49b5: $fc
    dec [hl]                                      ; $49b6: $35
    and b                                         ; $49b7: $a0
    jp z, Jump_076_57e5                           ; $49b8: $ca $e5 $57

    db $fc                                        ; $49bb: $fc
    scf                                           ; $49bc: $37
    cp $87                                        ; $49bd: $fe $87
    db $fd                                        ; $49bf: $fd
    rst $30                                       ; $49c0: $f7
    ld b, d                                       ; $49c1: $42
    cp $82                                        ; $49c2: $fe $82
    jp z, $f3e4                                   ; $49c4: $ca $e4 $f3

    jr nc, jr_076_49b0                            ; $49c7: $30 $e7

    jr nz, jr_076_4a16                            ; $49c9: $20 $4b

    rst $08                                       ; $49cb: $cf
    ret nz                                        ; $49cc: $c0

    jr nz, jr_076_4a31                            ; $49cd: $20 $62

    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    ld h, c                                       ; $49d1: $61
    ld e, d                                       ; $49d2: $5a
    and c                                         ; $49d3: $a1
    ld a, a                                       ; $49d4: $7f
    cp $e0                                        ; $49d5: $fe $e0
    dec a                                         ; $49d7: $3d
    ccf                                           ; $49d8: $3f
    cp $e0                                        ; $49d9: $fe $e0
    rra                                           ; $49db: $1f
    inc b                                         ; $49dc: $04
    ld b, a                                       ; $49dd: $47
    ld b, $38                                     ; $49de: $06 $38
    and h                                         ; $49e0: $a4
    halt                                          ; $49e1: $76
    and c                                         ; $49e2: $a1
    ld a, a                                       ; $49e3: $7f
    ld bc, $03fe                                  ; $49e4: $01 $fe $03
    cp $07                                        ; $49e7: $fe $07
    rst $38                                       ; $49e9: $ff
    jp nz, $a178                                  ; $49ea: $c2 $78 $a1

    ld a, [$a068]                                 ; $49ed: $fa $68 $a0
    inc b                                         ; $49f0: $04
    jr jr_076_4973                                ; $49f1: $18 $80

    add h                                         ; $49f3: $84
    ld a, l                                       ; $49f4: $7d
    call z, Call_000_39ff                         ; $49f5: $cc $ff $39
    ld bc, $42ff                                  ; $49f8: $01 $ff $42
    and b                                         ; $49fb: $a0
    nop                                           ; $49fc: $00
    and b                                         ; $49fd: $a0
    ret nc                                        ; $49fe: $d0

    pop hl                                        ; $49ff: $e1
    ld b, b                                       ; $4a00: $40
    and c                                         ; $4a01: $a1
    ld e, a                                       ; $4a02: $5f
    push hl                                       ; $4a03: $e5
    jp z, Jump_076_6ae6                           ; $4a04: $ca $e6 $6a

    pop hl                                        ; $4a07: $e1
    xor [hl]                                      ; $4a08: $ae
    jp z, $fde5                                   ; $4a09: $ca $e5 $fd

    inc b                                         ; $4a0c: $04
    ld c, e                                       ; $4a0d: $4b
    sub b                                         ; $4a0e: $90
    xor h                                         ; $4a0f: $ac
    ld a, [$a294]                                 ; $4a10: $fa $94 $a2
    rlca                                          ; $4a13: $07
    ld a, a                                       ; $4a14: $7f
    rst $38                                       ; $4a15: $ff

jr_076_4a16:
    dec c                                         ; $4a16: $0d
    db $fd                                        ; $4a17: $fd
    ld sp, hl                                     ; $4a18: $f9
    ld sp, hl                                     ; $4a19: $f9
    rla                                           ; $4a1a: $17
    ldh a, [rLCDC]                                ; $4a1b: $f0 $40
    and b                                         ; $4a1d: $a0
    dec bc                                        ; $4a1e: $0b
    db $fc                                        ; $4a1f: $fc
    inc bc                                        ; $4a20: $03
    jr nc, @-$1c                                  ; $4a21: $30 $e2

    add c                                         ; $4a23: $81
    cpl                                           ; $4a24: $2f
    ret nz                                        ; $4a25: $c0

    ld d, b                                       ; $4a26: $50
    and c                                         ; $4a27: $a1
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    rst $38                                       ; $4a30: $ff

jr_076_4a31:
    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    di                                            ; $4a33: $f3
    nop                                           ; $4a34: $00
    dec e                                         ; $4a35: $1d
    nop                                           ; $4a36: $00
    and $00                                       ; $4a37: $e6 $00
    push af                                       ; $4a39: $f5
    cp d                                          ; $4a3a: $ba
    cp $e0                                        ; $4a3b: $fe $e0
    and $f6                                       ; $4a3d: $e6 $f6
    ldh [rIE], a                                  ; $4a3f: $e0 $ff
    rst $38                                       ; $4a41: $ff
    rst $38                                       ; $4a42: $ff
    nop                                           ; $4a43: $00
    xor [hl]                                      ; $4a44: $ae
    cp $ea                                        ; $4a45: $fe $ea
    rst $38                                       ; $4a47: $ff
    rst $38                                       ; $4a48: $ff
    add b                                         ; $4a49: $80
    cp $e9                                        ; $4a4a: $fe $e9
    nop                                           ; $4a4c: $00
    rst $38                                       ; $4a4d: $ff
    db $ec                                        ; $4a4e: $ec
    di                                            ; $4a4f: $f3
    rst $38                                       ; $4a50: $ff
    nop                                           ; $4a51: $00
    rrca                                          ; $4a52: $0f
    nop                                           ; $4a53: $00
    ld a, c                                       ; $4a54: $79
    nop                                           ; $4a55: $00
    ld h, c                                       ; $4a56: $61
    nop                                           ; $4a57: $00
    ld b, c                                       ; $4a58: $41
    cp a                                          ; $4a59: $bf
    nop                                           ; $4a5a: $00
    inc bc                                        ; $4a5b: $03
    nop                                           ; $4a5c: $00
    rlca                                          ; $4a5d: $07
    nop                                           ; $4a5e: $00
    rra                                           ; $4a5f: $1f
    call nz, $f0e6                                ; $4a60: $c4 $e6 $f0
    cp a                                          ; $4a63: $bf
    nop                                           ; $4a64: $00
    rst $08                                       ; $4a65: $cf
    nop                                           ; $4a66: $00
    cp b                                          ; $4a67: $b8
    nop                                           ; $4a68: $00
    ld h, a                                       ; $4a69: $67
    ldh [$e1], a                                  ; $4a6a: $e0 $e1
    ld bc, $7eff                                  ; $4a6c: $01 $ff $7e
    rlca                                          ; $4a6f: $07
    ld l, b                                       ; $4a70: $68
    rrca                                          ; $4a71: $0f
    ld d, b                                       ; $4a72: $50
    rra                                           ; $4a73: $1f
    jr nc, jr_076_4ab5                            ; $4a74: $30 $3f

    rst $38                                       ; $4a76: $ff
    ld a, e                                       ; $4a77: $7b
    ld c, a                                       ; $4a78: $4f
    db $fc                                        ; $4a79: $fc
    sub a                                         ; $4a7a: $97
    rst $38                                       ; $4a7b: $ff
    ld a, h                                       ; $4a7c: $7c
    add e                                         ; $4a7d: $83
    cp $ff                                        ; $4a7e: $fe $ff
    ld bc, $01ff                                  ; $4a80: $01 $ff $01
    rst $38                                       ; $4a83: $ff
    rrca                                          ; $4a84: $0f
    rst $38                                       ; $4a85: $ff
    cp e                                          ; $4a86: $bb
    cp $ef                                        ; $4a87: $fe $ef
    ld a, d                                       ; $4a89: $7a
    cp $f7                                        ; $4a8a: $fe $f7
    db $fc                                        ; $4a8c: $fc
    and d                                         ; $4a8d: $a2
    push hl                                       ; $4a8e: $e5
    ldh a, [$80]                                  ; $4a8f: $f0 $80
    rst $08                                       ; $4a91: $cf
    rst $18                                       ; $4a92: $df
    add b                                         ; $4a93: $80
    cp b                                          ; $4a94: $b8
    add b                                         ; $4a95: $80
    rst $20                                       ; $4a96: $e7
    add b                                         ; $4a97: $80
    add d                                         ; $4a98: $82
    db $ec                                        ; $4a99: $ec
    inc bc                                        ; $4a9a: $03
    ld e, l                                       ; $4a9b: $5d
    ei                                            ; $4a9c: $fb
    nop                                           ; $4a9d: $00
    ld e, l                                       ; $4a9e: $5d
    cp d                                          ; $4a9f: $ba
    ldh [$b8], a                                  ; $4aa0: $e0 $b8
    nop                                           ; $4aa2: $00
    rst $08                                       ; $4aa3: $cf
    rlca                                          ; $4aa4: $07
    ei                                            ; $4aa5: $fb
    rst $18                                       ; $4aa6: $df
    ld c, $97                                     ; $4aa7: $0e $97
    inc e                                         ; $4aa9: $1c
    rst $38                                       ; $4aaa: $ff
    db $fd                                        ; $4aab: $fd
    ld e, b                                       ; $4aac: $58
    push hl                                       ; $4aad: $e5
    di                                            ; $4aae: $f3
    ldh a, [$bf]                                  ; $4aaf: $f0 $bf
    rst $28                                       ; $4ab1: $ef
    cp h                                          ; $4ab2: $bc
    di                                            ; $4ab3: $f3
    rra                                           ; $4ab4: $1f

jr_076_4ab5:
    ldh a, [$5f]                                  ; $4ab5: $f0 $5f
    ld d, d                                       ; $4ab7: $52
    db $ec                                        ; $4ab8: $ec
    add b                                         ; $4ab9: $80
    rst $38                                       ; $4aba: $ff
    ld sp, hl                                     ; $4abb: $f9
    xor a                                         ; $4abc: $af
    pop af                                        ; $4abd: $f1
    rst $18                                       ; $4abe: $df
    or e                                          ; $4abf: $b3
    rst $38                                       ; $4ac0: $ff
    and e                                         ; $4ac1: $a3
    rst $38                                       ; $4ac2: $ff
    rst $38                                       ; $4ac3: $ff
    and $7f                                       ; $4ac4: $e6 $7f
    rst $28                                       ; $4ac6: $ef
    dec sp                                        ; $4ac7: $3b
    rst $38                                       ; $4ac8: $ff
    ld e, c                                       ; $4ac9: $59
    rst $38                                       ; $4aca: $ff
    adc c                                         ; $4acb: $89
    rst $38                                       ; $4acc: $ff
    push af                                       ; $4acd: $f5
    db $fc                                        ; $4ace: $fc
    db $ed                                        ; $4acf: $ed
    ld hl, sp-$29                                 ; $4ad0: $f8 $d7
    ldh a, [$b8]                                  ; $4ad2: $f0 $b8
    ldh [rIE], a                                  ; $4ad4: $e0 $ff
    rst $08                                       ; $4ad6: $cf
    add $fe                                       ; $4ad7: $c6 $fe
    ld c, $9f                                     ; $4ad9: $0e $9f
    rra                                           ; $4adb: $1f
    sbc a                                         ; $4adc: $9f
    rra                                           ; $4add: $1f
    ld a, $c0                                     ; $4ade: $3e $c0
    and $00                                       ; $4ae0: $e6 $00
    rst $08                                       ; $4ae2: $cf
    ret nz                                        ; $4ae3: $c0

    db $fd                                        ; $4ae4: $fd
    db $fc                                        ; $4ae5: $fc
    ld [de], a                                    ; $4ae6: $12
    xor $92                                       ; $4ae7: $ee $92
    ldh [$3c], a                                  ; $4ae9: $e0 $3c
    sub b                                         ; $4aeb: $90
    db $e4                                        ; $4aec: $e4
    ld a, $e0                                     ; $4aed: $3e $e0
    sbc [hl]                                      ; $4aef: $9e
    nop                                           ; $4af0: $00
    add a                                         ; $4af1: $87
    rlca                                          ; $4af2: $07
    ret nc                                        ; $4af3: $d0

    rst $20                                       ; $4af4: $e7
    jr @-$1d                                      ; $4af5: $18 $e1

    ld e, a                                       ; $4af7: $5f
    db $fd                                        ; $4af8: $fd
    db $fc                                        ; $4af9: $fc
    db $dd                                        ; $4afa: $dd
    add b                                         ; $4afb: $80
    db $dd                                        ; $4afc: $dd
    ld e, d                                       ; $4afd: $5a
    ldh [$b8], a                                  ; $4afe: $e0 $b8
    ld d, d                                       ; $4b00: $52
    ldh [$bf], a                                  ; $4b01: $e0 $bf
    ldh a, [$80]                                  ; $4b03: $f0 $80
    sbc [hl]                                      ; $4b05: $9e
    add b                                         ; $4b06: $80
    add [hl]                                      ; $4b07: $86
    add b                                         ; $4b08: $80
    ldh [$eb], a                                  ; $4b09: $e0 $eb
    ld h, c                                       ; $4b0b: $61
    rst $38                                       ; $4b0c: $ff
    nop                                           ; $4b0d: $00
    rrca                                          ; $4b0e: $0f
    inc b                                         ; $4b0f: $04
    rst $38                                       ; $4b10: $ff
    ld [$0b1f], sp                                ; $4b11: $08 $1f $0b
    rst $28                                       ; $4b14: $ef
    rst $38                                       ; $4b15: $ff
    ld a, [bc]                                    ; $4b16: $0a
    cp a                                          ; $4b17: $bf
    ld de, $13bf                                  ; $4b18: $11 $bf $13
    rst $38                                       ; $4b1b: $ff
    db $10                                        ; $4b1c: $10
    rra                                           ; $4b1d: $1f
    rst $38                                       ; $4b1e: $ff
    db $10                                        ; $4b1f: $10
    rst $38                                       ; $4b20: $ff
    ld b, a                                       ; $4b21: $47
    db $fc                                        ; $4b22: $fc
    daa                                           ; $4b23: $27
    ei                                            ; $4b24: $fb
    ccf                                           ; $4b25: $3f
    rst $38                                       ; $4b26: $ff
    rst $38                                       ; $4b27: $ff
    ld c, h                                       ; $4b28: $4c
    rst $38                                       ; $4b29: $ff

jr_076_4b2a:
    sub e                                         ; $4b2a: $93
    rst $38                                       ; $4b2b: $ff
    inc h                                         ; $4b2c: $24
    rst $38                                       ; $4b2d: $ff
    push af                                       ; $4b2e: $f5
    rst $38                                       ; $4b2f: $ff
    rst $38                                       ; $4b30: $ff
    push af                                       ; $4b31: $f5
    ld hl, sp-$01                                 ; $4b32: $f8 $ff
    ld b, $ff                                     ; $4b34: $06 $ff
    reti                                          ; $4b36: $d9


    rst $38                                       ; $4b37: $ff
    cp $ff                                        ; $4b38: $fe $ff
    cp a                                          ; $4b3a: $bf
    rst $38                                       ; $4b3b: $ff
    add hl, de                                    ; $4b3c: $19
    rst $38                                       ; $4b3d: $ff
    and h                                         ; $4b3e: $a4
    rst $38                                       ; $4b3f: $ff
    or l                                          ; $4b40: $b5
    rst $38                                       ; $4b41: $ff
    rst $38                                       ; $4b42: $ff
    push af                                       ; $4b43: $f5
    ld [hl], b                                    ; $4b44: $70
    ret nz                                        ; $4b45: $c0

    ld c, a                                       ; $4b46: $4f
    ret nz                                        ; $4b47: $c0

    jr c, jr_076_4b2a                             ; $4b48: $38 $e0

    and a                                         ; $4b4a: $a7
    ei                                            ; $4b4b: $fb
    ldh [$fd], a                                  ; $4b4c: $e0 $fd
    cp $e0                                        ; $4b4e: $fe $e0
    rst $30                                       ; $4b50: $f7
    ret nc                                        ; $4b51: $d0

    ld hl, sp-$18                                 ; $4b52: $f8 $e8
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    sub c                                         ; $4b56: $91
    rst $38                                       ; $4b57: $ff
    ld [c], a                                     ; $4b58: $e2
    rst $38                                       ; $4b59: $ff
    add [hl]                                      ; $4b5a: $86

jr_076_4b5b:
    cp $42                                        ; $4b5b: $fe $42

jr_076_4b5d:
    rst $38                                       ; $4b5d: $ff
    db $fd                                        ; $4b5e: $fd
    ld b, e                                       ; $4b5f: $43
    cp $e0                                        ; $4b60: $fe $e0
    ld b, c                                       ; $4b62: $41
    ccf                                           ; $4b63: $3f
    ld hl, $3fbf                                  ; $4b64: $21 $bf $3f
    rst $38                                       ; $4b67: $ff
    rst $38                                       ; $4b68: $ff
    ld a, a                                       ; $4b69: $7f
    rst $38                                       ; $4b6a: $ff
    ld a, h                                       ; $4b6b: $7c
    rst $38                                       ; $4b6c: $ff
    di                                            ; $4b6d: $f3
    rst $38                                       ; $4b6e: $ff
    db $e4                                        ; $4b6f: $e4
    rst $38                                       ; $4b70: $ff
    ld [hl], l                                    ; $4b71: $75
    ld [hl], l                                    ; $4b72: $75
    cp $e0                                        ; $4b73: $fe $e0
    ld h, l                                       ; $4b75: $65
    ld h, b                                       ; $4b76: $60
    ret nz                                        ; $4b77: $c0

    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    and a                                         ; $4b7a: $a7
    jp nz, Jump_076_7be5                          ; $4b7b: $c2 $e5 $7b

    rst $38                                       ; $4b7e: $ff
    inc d                                         ; $4b7f: $14
    ret z                                         ; $4b80: $c8

    ret nz                                        ; $4b81: $c0

    ret nz                                        ; $4b82: $c0

    ld hl, sp-$40                                 ; $4b83: $f8 $c0
    rst $20                                       ; $4b85: $e7
    ret nz                                        ; $4b86: $c0

    pop hl                                        ; $4b87: $e1
    ccf                                           ; $4b88: $3f
    ret nc                                        ; $4b89: $d0

    rst $38                                       ; $4b8a: $ff
    add sp, -$08                                  ; $4b8b: $e8 $f8
    ret z                                         ; $4b8d: $c8

    rrca                                          ; $4b8e: $0f
    ld l, [hl]                                    ; $4b8f: $6e
    ret nz                                        ; $4b90: $c0

    jr nc, jr_076_4b5b                            ; $4b91: $30 $c8

    xor a                                         ; $4b93: $af
    ld bc, $1f9f                                  ; $4b94: $01 $9f $1f
    rst $38                                       ; $4b97: $ff
    cp [hl]                                       ; $4b98: $be
    pop hl                                        ; $4b99: $e1
    ld a, a                                       ; $4b9a: $7f
    jr z, jr_076_4b5d                             ; $4b9b: $28 $c0

    ld hl, sp-$6e                                 ; $4b9d: $f8 $92
    cp d                                          ; $4b9f: $ba
    ldh [$64], a                                  ; $4ba0: $e0 $64
    ret nz                                        ; $4ba2: $c0

    ld [c], a                                     ; $4ba3: $e2
    ei                                            ; $4ba4: $fb
    db $e3                                        ; $4ba5: $e3
    db $e3                                        ; $4ba6: $e3
    ld a, h                                       ; $4ba7: $7c
    pop hl                                        ; $4ba8: $e1
    ld e, b                                       ; $4ba9: $58
    ret nz                                        ; $4baa: $c0

    add b                                         ; $4bab: $80
    ld a, [$e0c0]                                 ; $4bac: $fa $c0 $e0
    ret nz                                        ; $4baf: $c0

    add b                                         ; $4bb0: $80
    pop hl                                        ; $4bb1: $e1
    rst $20                                       ; $4bb2: $e7
    ldh [$f8], a                                  ; $4bb3: $e0 $f8
    ret nc                                        ; $4bb5: $d0

    add d                                         ; $4bb6: $82
    ccf                                           ; $4bb7: $3f
    add b                                         ; $4bb8: $80
    ret nz                                        ; $4bb9: $c0

    add b                                         ; $4bba: $80
    ldh [$80], a                                  ; $4bbb: $e0 $80
    ld hl, sp+$0c                                 ; $4bbd: $f8 $0c
    add $28                                       ; $4bbf: $c6 $28
    push de                                       ; $4bc1: $d5
    db $fc                                        ; $4bc2: $fc
    ld l, b                                       ; $4bc3: $68
    push bc                                       ; $4bc4: $c5
    inc e                                         ; $4bc5: $1c
    pop hl                                        ; $4bc6: $e1
    ld a, a                                       ; $4bc7: $7f
    db $10                                        ; $4bc8: $10
    ld l, a                                       ; $4bc9: $6f
    add hl, bc                                    ; $4bca: $09
    ld c, [hl]                                    ; $4bcb: $4e
    rrca                                          ; $4bcc: $0f
    db $fd                                        ; $4bcd: $fd
    ld [$e0fe], sp                                ; $4bce: $08 $fe $e0
    inc e                                         ; $4bd1: $1c
    rlca                                          ; $4bd2: $07
    rst $38                                       ; $4bd3: $ff
    push hl                                       ; $4bd4: $e5
    rst $38                                       ; $4bd5: $ff
    ld h, d                                       ; $4bd6: $62
    rst $38                                       ; $4bd7: $ff
    rst $38                                       ; $4bd8: $ff
    ld c, d                                       ; $4bd9: $4a
    rst $38                                       ; $4bda: $ff
    rst $08                                       ; $4bdb: $cf
    ccf                                           ; $4bdc: $3f
    rst $20                                       ; $4bdd: $e7
    ccf                                           ; $4bde: $3f
    pop hl                                        ; $4bdf: $e1
    rst $38                                       ; $4be0: $ff
    rra                                           ; $4be1: $1f
    ldh a, [$1f]                                  ; $4be2: $f0 $1f
    db $fc                                        ; $4be4: $fc
    rst $38                                       ; $4be5: $ff
    inc d                                         ; $4be6: $14
    rst $38                                       ; $4be7: $ff
    ld [$ffff], sp                                ; $4be8: $08 $ff $ff
    ld a, [bc]                                    ; $4beb: $0a
    rst $38                                       ; $4bec: $ff
    ld e, $ff                                     ; $4bed: $1e $ff
    db $fc                                        ; $4bef: $fc
    rra                                           ; $4bf0: $1f
    ldh a, [rIE]                                  ; $4bf1: $f0 $ff
    rst $38                                       ; $4bf3: $ff
    pop hl                                        ; $4bf4: $e1
    rst $38                                       ; $4bf5: $ff
    rlca                                          ; $4bf6: $07
    rst $38                                       ; $4bf7: $ff
    ret z                                         ; $4bf8: $c8

    ld hl, sp-$78                                 ; $4bf9: $f8 $88
    cp a                                          ; $4bfb: $bf
    cp $48                                        ; $4bfc: $fe $48
    or $50                                        ; $4bfe: $f6 $50
    ld [c], a                                     ; $4c00: $e2
    ld h, b                                       ; $4c01: $60
    sbc b                                         ; $4c02: $98
    pop hl                                        ; $4c03: $e1
    ld a, b                                       ; $4c04: $78
    rst $38                                       ; $4c05: $ff
    ret nz                                        ; $4c06: $c0

    rst $38                                       ; $4c07: $ff
    jr nz, jr_076_4c49                            ; $4c08: $20 $3f

    jr nz, @+$81                                  ; $4c0a: $20 $7f

    inc de                                        ; $4c0c: $13
    ld a, h                                       ; $4c0d: $7c
    rst $30                                       ; $4c0e: $f7
    rra                                           ; $4c0f: $1f
    ld d, b                                       ; $4c10: $50
    rra                                           ; $4c11: $1f
    ret nz                                        ; $4c12: $c0

    db $e4                                        ; $4c13: $e4
    and d                                         ; $4c14: $a2
    rst $38                                       ; $4c15: $ff
    jp z, $ffff                                   ; $4c16: $ca $ff $ff

    rst $08                                       ; $4c19: $cf
    ld a, a                                       ; $4c1a: $7f
    rst $00                                       ; $4c1b: $c7
    ccf                                           ; $4c1c: $3f
    pop hl                                        ; $4c1d: $e1
    ccf                                           ; $4c1e: $3f
    pop af                                        ; $4c1f: $f1
    rra                                           ; $4c20: $1f
    rst $20                                       ; $4c21: $e7
    db $fc                                        ; $4c22: $fc
    sub e                                         ; $4c23: $93
    cp $c2                                        ; $4c24: $fe $c2
    push hl                                       ; $4c26: $e5
    or h                                          ; $4c27: $b4
    ret nz                                        ; $4c28: $c0

    pop af                                        ; $4c29: $f1
    rst $38                                       ; $4c2a: $ff
    rst $20                                       ; $4c2b: $e7
    rst $38                                       ; $4c2c: $ff
    ld sp, hl                                     ; $4c2d: $f9
    rrca                                          ; $4c2e: $0f
    rst $38                                       ; $4c2f: $ff
    adc b                                         ; $4c30: $88
    ld hl, sp+$48                                 ; $4c31: $f8 $48
    cp $50                                        ; $4c33: $fe $50
    rst $38                                       ; $4c35: $ff
    and $60                                       ; $4c36: $e6 $60
    add d                                         ; $4c38: $82
    add b                                         ; $4c39: $80
    ld h, b                                       ; $4c3a: $60
    ldh [rNR10], a                                ; $4c3b: $e0 $10
    ldh a, [rIE]                                  ; $4c3d: $f0 $ff
    ld [$f3f8], sp                                ; $4c3f: $08 $f8 $f3
    ld [bc], a                                    ; $4c42: $02
    rrca                                          ; $4c43: $0f
    ld [bc], a                                    ; $4c44: $02
    ld a, e                                       ; $4c45: $7b
    ld [bc], a                                    ; $4c46: $02
    ei                                            ; $4c47: $fb
    ld h, c                                       ; $4c48: $61

jr_076_4c49:
    ld bc, $a280                                  ; $4c49: $01 $80 $a2
    ld bc, $031e                                  ; $4c4c: $01 $1e $03

jr_076_4c4f:
    rst $38                                       ; $4c4f: $ff
    ldh [rIE], a                                  ; $4c50: $e0 $ff
    rst $38                                       ; $4c52: $ff
    ld [hl], h                                    ; $4c53: $74
    rst $38                                       ; $4c54: $ff
    ld [hl], a                                    ; $4c55: $77
    rst $38                                       ; $4c56: $ff
    jr nz, @+$01                                  ; $4c57: $20 $ff

    ret                                           ; $4c59: $c9


    rst $28                                       ; $4c5a: $ef
    rst $38                                       ; $4c5b: $ff
    ld c, [hl]                                    ; $4c5c: $4e
    rst $38                                       ; $4c5d: $ff
    and $cc                                       ; $4c5e: $e6 $cc
    ldh [rP1], a                                  ; $4c60: $e0 $00
    rst $38                                       ; $4c62: $ff
    and l                                         ; $4c63: $a5
    ei                                            ; $4c64: $fb
    rst $38                                       ; $4c65: $ff
    dec e                                         ; $4c66: $1d
    inc l                                         ; $4c67: $2c
    and b                                         ; $4c68: $a0
    ld [de], a                                    ; $4c69: $12
    rst $38                                       ; $4c6a: $ff
    ld c, $ff                                     ; $4c6b: $0e $ff
    inc c                                         ; $4c6d: $0c
    ld a, e                                       ; $4c6e: $7b

jr_076_4c6f:
    rst $38                                       ; $4c6f: $ff
    ld de, $c1dc                                  ; $4c70: $11 $dc $c1
    cp $c8                                        ; $4c73: $fe $c8
    or $90                                        ; $4c75: $f6 $90
    add b                                         ; $4c77: $80
    ldh [rIE], a                                  ; $4c78: $e0 $ff
    ld b, b                                       ; $4c7a: $40
    ldh [$e0], a                                  ; $4c7b: $e0 $e0
    jr jr_076_4c6f                                ; $4c7d: $18 $f0

    db $fc                                        ; $4c7f: $fc
    rlca                                          ; $4c80: $07
    rst $38                                       ; $4c81: $ff
    ei                                            ; $4c82: $fb
    inc bc                                        ; $4c83: $03
    cp $fe                                        ; $4c84: $fe $fe
    and $ff                                       ; $4c86: $e6 $ff
    inc bc                                        ; $4c88: $03
    sub e                                         ; $4c89: $93
    cp $09                                        ; $4c8a: $fe $09
    rst $28                                       ; $4c8c: $ef
    rst $38                                       ; $4c8d: $ff
    inc b                                         ; $4c8e: $04
    rst $38                                       ; $4c8f: $ff
    inc bc                                        ; $4c90: $03
    inc bc                                        ; $4c91: $03
    and [hl]                                      ; $4c92: $a6
    ld sp, hl                                     ; $4c93: $f9
    rrca                                          ; $4c94: $0f
    ld a, [c]                                     ; $4c95: $f2
    set 7, a                                      ; $4c96: $cb $ff
    jp c, $c045                                   ; $4c98: $da $45 $c0

    ld d, b                                       ; $4c9b: $50
    xor l                                         ; $4c9c: $ad
    ldh [$e3], a                                  ; $4c9d: $e0 $e3
    add c                                         ; $4c9f: $81
    ccf                                           ; $4ca0: $3f
    ldh [rIE], a                                  ; $4ca1: $e0 $ff
    ld e, a                                       ; $4ca3: $5f
    ldh a, [$5f]                                  ; $4ca4: $f0 $5f
    ldh a, [$7f]                                  ; $4ca6: $f0 $7f
    add sp, $3f                                   ; $4ca8: $e8 $3f
    add sp, -$41                                  ; $4caa: $e8 $bf
    ccf                                           ; $4cac: $3f
    db $e4                                        ; $4cad: $e4
    ccf                                           ; $4cae: $3f
    db $fc                                        ; $4caf: $fc
    db $e3                                        ; $4cb0: $e3
    cp $c2                                        ; $4cb1: $fe $c2
    db $eb                                        ; $4cb3: $eb
    rst $38                                       ; $4cb4: $ff
    db $ed                                        ; $4cb5: $ed
    ld bc, $ebc2                                  ; $4cb6: $01 $c2 $eb
    rst $38                                       ; $4cb9: $ff
    nop                                           ; $4cba: $00
    jp nz, $ffeb                                  ; $4cbb: $c2 $eb $ff

    nop                                           ; $4cbe: $00
    ld c, a                                       ; $4cbf: $4f
    rst $20                                       ; $4cc0: $e7
    ld hl, sp+$5f                                 ; $4cc1: $f8 $5f
    db $f4                                        ; $4cc3: $f4
    add $e0                                       ; $4cc4: $c6 $e0
    cp $e1                                        ; $4cc6: $fe $e1
    add sp, -$01                                  ; $4cc8: $e8 $ff
    ldh a, [$bb]                                  ; $4cca: $f0 $bb
    rst $38                                       ; $4ccc: $ff
    jr nz, jr_076_4c4f                            ; $4ccd: $20 $80

    ldh [rTAC], a                                 ; $4ccf: $e0 $07
    rst $38                                       ; $4cd1: $ff
    add hl, bc                                    ; $4cd2: $09
    sbc $c0                                       ; $4cd3: $de $c0
    ld [de], a                                    ; $4cd5: $12
    rst $38                                       ; $4cd6: $ff
    rst $38                                       ; $4cd7: $ff
    inc de                                        ; $4cd8: $13
    cp $0b                                        ; $4cd9: $fe $0b
    db $fc                                        ; $4cdb: $fc
    rrca                                          ; $4cdc: $0f
    rrca                                          ; $4cdd: $0f

jr_076_4cde:
    db $fc                                        ; $4cde: $fc
    rst $38                                       ; $4cdf: $ff
    adc e                                         ; $4ce0: $8b
    rst $38                                       ; $4ce1: $ff
    call nc, $f3ff                                ; $4ce2: $d4 $ff $f3
    ccf                                           ; $4ce5: $3f
    call z, $fdff                                 ; $4ce6: $cc $ff $fd
    add e                                         ; $4ce9: $83
    pop hl                                        ; $4cea: $e1
    ldh [$3c], a                                  ; $4ceb: $e0 $3c
    rst $38                                       ; $4ced: $ff
    cp $e7                                        ; $4cee: $fe $e7
    ld a, [$f71f]                                 ; $4cf0: $fa $1f $f7
    ld a, [c]                                     ; $4cf3: $f2
    rst $38                                       ; $4cf4: $ff
    inc l                                         ; $4cf5: $2c
    add b                                         ; $4cf6: $80
    ld [c], a                                     ; $4cf7: $e2
    add b                                         ; $4cf8: $80
    rst $38                                       ; $4cf9: $ff
    ld b, c                                       ; $4cfa: $41
    rst $38                                       ; $4cfb: $ff
    ei                                            ; $4cfc: $fb
    rrca                                          ; $4cfd: $0f
    ld hl, sp-$42                                 ; $4cfe: $f8 $be
    db $eb                                        ; $4d00: $eb
    rrca                                          ; $4d01: $0f
    ld bc, $01f3                                  ; $4d02: $01 $f3 $01
    dec e                                         ; $4d05: $1d
    add a                                         ; $4d06: $87
    ld bc, $01e7                                  ; $4d07: $01 $e7 $01
    db $10                                        ; $4d0a: $10
    push bc                                       ; $4d0b: $c5
    or $87                                        ; $4d0c: $f6 $87
    ld c, b                                       ; $4d0e: $48
    add d                                         ; $4d0f: $82
    inc [hl]                                      ; $4d10: $34
    add l                                         ; $4d11: $85
    ld [$ffff], sp                                ; $4d12: $08 $ff $ff
    ld [hl], b                                    ; $4d15: $70
    rst $38                                       ; $4d16: $ff
    ld h, b                                       ; $4d17: $60
    rst $38                                       ; $4d18: $ff
    and b                                         ; $4d19: $a0
    rst $38                                       ; $4d1a: $ff
    and b                                         ; $4d1b: $a0
    rst $30                                       ; $4d1c: $f7
    or $3e                                        ; $4d1d: $f6 $3e
    pop hl                                        ; $4d1f: $e1
    and l                                         ; $4d20: $a5
    ret nz                                        ; $4d21: $c0

    push de                                       ; $4d22: $d5
    ld a, a                                       ; $4d23: $7f
    push af                                       ; $4d24: $f5
    ld a, a                                       ; $4d25: $7f
    ccf                                           ; $4d26: $3f
    rst $18                                       ; $4d27: $df
    ld c, [hl]                                    ; $4d28: $4e
    rst $20                                       ; $4d29: $e7
    ld b, b                                       ; $4d2a: $40
    ld hl, sp+$40                                 ; $4d2b: $f8 $40
    ret nz                                        ; $4d2d: $c0

    ld [c], a                                     ; $4d2e: $e2
    ret nc                                        ; $4d2f: $d0

    xor b                                         ; $4d30: $a8
    ldh a, [$c4]                                  ; $4d31: $f0 $c4
    add sp, -$40                                  ; $4d33: $e8 $c0
    rst $20                                       ; $4d35: $e7
    jp nz, $c0e3                                  ; $4d36: $c2 $e3 $c0

    ld [c], a                                     ; $4d39: $e2
    ldh a, [rNR41]                                ; $4d3a: $f0 $20
    rst $28                                       ; $4d3c: $ef
    jr nz, jr_076_4cde                            ; $4d3d: $20 $9f

    ld hl, sp+$40                                 ; $4d3f: $f8 $40
    rst $20                                       ; $4d41: $e7
    ld b, b                                       ; $4d42: $40
    db $dd                                        ; $4d43: $dd
    cp $e0                                        ; $4d44: $fe $e0
    ret nz                                        ; $4d46: $c0

    pop hl                                        ; $4d47: $e1
    inc c                                         ; $4d48: $0c
    rst $18                                       ; $4d49: $df
    rlca                                          ; $4d4a: $07
    db $f4                                        ; $4d4b: $f4
    rlca                                          ; $4d4c: $07
    ld e, $03                                     ; $4d4d: $1e $03
    add b                                         ; $4d4f: $80
    and $00                                       ; $4d50: $e6 $00
    rrca                                          ; $4d52: $0f
    cp $c4                                        ; $4d53: $fe $c4
    call nz, $ffc0                                ; $4d55: $c4 $c0 $ff

jr_076_4d58:
    ld hl, sp-$41                                 ; $4d58: $f8 $bf
    rst $38                                       ; $4d5a: $ff
    add a                                         ; $4d5b: $87
    rst $38                                       ; $4d5c: $ff
    ld a, a                                       ; $4d5d: $7f
    add b                                         ; $4d5e: $80
    ld a, a                                       ; $4d5f: $7f
    cp $ff                                        ; $4d60: $fe $ff
    ldh [$bf], a                                  ; $4d62: $e0 $bf
    ldh [$d2], a                                  ; $4d64: $e0 $d2
    ret nz                                        ; $4d66: $c0

    ld d, a                                       ; $4d67: $57
    ldh a, [$7f]                                  ; $4d68: $f0 $7f
    ldh [$64], a                                  ; $4d6a: $e0 $64
    ret nz                                        ; $4d6c: $c0

    ld b, b                                       ; $4d6d: $40
    ret nz                                        ; $4d6e: $c0

    ld [c], a                                     ; $4d6f: $e2
    jr nz, @-$3e                                  ; $4d70: $20 $c0

    and $ff                                       ; $4d72: $e6 $ff
    jr nz, @-$0b                                  ; $4d74: $20 $f3

    ld bc, $070e                                  ; $4d76: $01 $0e $07
    ld a, b                                       ; $4d79: $78
    rrca                                          ; $4d7a: $0f
    ld l, b                                       ; $4d7b: $68
    ld a, a                                       ; $4d7c: $7f
    rrca                                          ; $4d7d: $0f
    ld c, b                                       ; $4d7e: $48
    rrca                                          ; $4d7f: $0f
    rlca                                          ; $4d80: $07
    rlca                                          ; $4d81: $07
    inc b                                         ; $4d82: $04
    rlca                                          ; $4d83: $07
    add d                                         ; $4d84: $82
    ld h, b                                       ; $4d85: $60
    ld [c], a                                     ; $4d86: $e2
    jp z, Jump_000_0fa0                           ; $4d87: $ca $a0 $0f

    call Call_076_77a0                            ; $4d8a: $cd $a0 $77
    ld h, e                                       ; $4d8d: $63
    ld [hl], d                                    ; $4d8e: $72
    ld h, b                                       ; $4d8f: $60
    and b                                         ; $4d90: $a0
    rst $38                                       ; $4d91: $ff

jr_076_4d92:
    jp $fc7f                                      ; $4d92: $c3 $7f $fc


    cp a                                          ; $4d95: $bf
    db $e4                                        ; $4d96: $e4
    cp a                                          ; $4d97: $bf
    ldh [$bf], a                                  ; $4d98: $e0 $bf
    rst $38                                       ; $4d9a: $ff
    db $fc                                        ; $4d9b: $fc
    pop hl                                        ; $4d9c: $e1
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    rst $28                                       ; $4d9f: $ef
    jr nz, jr_076_4d92                            ; $4da0: $20 $f0

    ldh a, [$0e]                                  ; $4da2: $f0 $0e
    ld hl, sp+$0e                                 ; $4da4: $f8 $0e

jr_076_4da6:
    ld a, a                                       ; $4da6: $7f
    ld hl, sp+$0a                                 ; $4da7: $f8 $0a
    ld hl, sp-$08                                 ; $4da9: $f8 $f8
    ld hl, sp+$10                                 ; $4dab: $f8 $10
    ldh a, [rHDMA2]                               ; $4dad: $f0 $52
    ld h, b                                       ; $4daf: $60
    add hl, hl                                    ; $4db0: $29
    ldh [$d0], a                                  ; $4db1: $e0 $d0
    db $eb                                        ; $4db3: $eb
    ld [hl], b                                    ; $4db4: $70
    ld h, d                                       ; $4db5: $62
    ld bc, $a0f0                                  ; $4db6: $01 $f0 $a0
    ld bc, $6170                                  ; $4db9: $01 $70 $61
    ld b, d                                       ; $4dbc: $42
    ld h, d                                       ; $4dbd: $62
    di                                            ; $4dbe: $f3
    ret nz                                        ; $4dbf: $c0

    ccf                                           ; $4dc0: $3f
    scf                                           ; $4dc1: $37
    ld h, [hl]                                    ; $4dc2: $66
    ld [hl+], a                                   ; $4dc3: $22
    ld h, b                                       ; $4dc4: $60
    ld b, b                                       ; $4dc5: $40
    rst $38                                       ; $4dc6: $ff
    ld b, a                                       ; $4dc7: $47
    ld hl, sp+$6b                                 ; $4dc8: $f8 $6b
    rst $38                                       ; $4dca: $ff
    jr z, jr_076_4da6                             ; $4dcb: $28 $d9

    and b                                         ; $4dcd: $a0
    ccf                                           ; $4dce: $3f
    push de                                       ; $4dcf: $d5
    and b                                         ; $4dd0: $a0
    rst $38                                       ; $4dd1: $ff
    rst $38                                       ; $4dd2: $ff
    jr jr_076_4d58                                ; $4dd3: $18 $83

    ld a, a                                       ; $4dd5: $7f
    add [hl]                                      ; $4dd6: $86
    nop                                           ; $4dd7: $00
    add d                                         ; $4dd8: $82
    nop                                           ; $4dd9: $00
    ret nz                                        ; $4dda: $c0

    nop                                           ; $4ddb: $00
    ldh [rSC], a                                  ; $4ddc: $e0 $02
    ld h, b                                       ; $4dde: $60
    rst $18                                       ; $4ddf: $df
    add d                                         ; $4de0: $82
    nop                                           ; $4de1: $00
    rst $00                                       ; $4de2: $c7
    rlca                                          ; $4de3: $07
    rst $38                                       ; $4de4: $ff
    call z, Call_076_4188                         ; $4de5: $cc $88 $41
    nop                                           ; $4de8: $00
    ld hl, sp-$7c                                 ; $4de9: $f8 $84
    and b                                         ; $4deb: $a0
    call z, $2888                                 ; $4dec: $cc $88 $28
    ld h, e                                       ; $4def: $63
    rst $20                                       ; $4df0: $e7
    add b                                         ; $4df1: $80
    db $dd                                        ; $4df2: $dd
    ret nz                                        ; $4df3: $c0

    db $dd                                        ; $4df4: $dd
    or $8a                                        ; $4df5: $f6 $8a
    add b                                         ; $4df7: $80
    ld hl, sp-$20                                 ; $4df8: $f8 $e0
    jr nz, jr_076_4e5d                            ; $4dfa: $20 $61

    ld a, e                                       ; $4dfc: $7b
    ld [bc], a                                    ; $4dfd: $02
    ld h, e                                       ; $4dfe: $63
    ld [bc], a                                    ; $4dff: $02
    adc a                                         ; $4e00: $8f
    ld b, e                                       ; $4e01: $43
    ld [bc], a                                    ; $4e02: $02
    inc bc                                        ; $4e03: $03
    ld bc, $6200                                  ; $4e04: $01 $00 $62
    sbc h                                         ; $4e07: $9c
    add c                                         ; $4e08: $81
    ld a, h                                       ; $4e09: $7c
    and [hl]                                      ; $4e0a: $a6
    ld a, a                                       ; $4e0b: $7f
    ld sp, hl                                     ; $4e0c: $f9
    ld c, [hl]                                    ; $4e0d: $4e
    jr jr_076_4d92                                ; $4e0e: $18 $82

    ld a, h                                       ; $4e10: $7c
    xor b                                         ; $4e11: $a8
    rst $28                                       ; $4e12: $ef
    ldh [$f0], a                                  ; $4e13: $e0 $f0
    ret nc                                        ; $4e15: $d0

    cp $ff                                        ; $4e16: $fe $ff
    add sp, -$02                                  ; $4e18: $e8 $fe
    ret z                                         ; $4e1a: $c8

    ld a, [$f0c8]                                 ; $4e1b: $fa $c8 $f0
    sub b                                         ; $4e1e: $90
    ldh [$c7], a                                  ; $4e1f: $e0 $c7
    ld h, b                                       ; $4e21: $60
    ld hl, sp+$70                                 ; $4e22: $f8 $70
    sub d                                         ; $4e24: $92
    ld b, [hl]                                    ; $4e25: $46
    db $eb                                        ; $4e26: $eb
    ld b, c                                       ; $4e27: $41
    rst $20                                       ; $4e28: $e7
    ld b, b                                       ; $4e29: $40
    ld a, a                                       ; $4e2a: $7f
    ld h, $7f                                     ; $4e2b: $26 $7f
    ld e, a                                       ; $4e2d: $5f
    ld [hl], c                                    ; $4e2e: $71
    adc a                                         ; $4e2f: $8f
    db $fc                                        ; $4e30: $fc
    add a                                         ; $4e31: $87
    rst $38                                       ; $4e32: $ff
    ld [bc], a                                    ; $4e33: $02
    call c, $cf40                                 ; $4e34: $dc $40 $cf
    ld c, $ff                                     ; $4e37: $0e $ff
    rra                                           ; $4e39: $1f
    di                                            ; $4e3a: $f3
    ld c, h                                       ; $4e3b: $4c
    and c                                         ; $4e3c: $a1
    db $fc                                        ; $4e3d: $fc
    and a                                         ; $4e3e: $a7
    and b                                         ; $4e3f: $a0
    rst $38                                       ; $4e40: $ff
    rst $38                                       ; $4e41: $ff
    adc a                                         ; $4e42: $8f
    ld hl, sp+$07                                 ; $4e43: $f8 $07
    db $fc                                        ; $4e45: $fc
    ld b, a                                       ; $4e46: $47
    db $fc                                        ; $4e47: $fc
    ld c, a                                       ; $4e48: $4f
    db $fc                                        ; $4e49: $fc
    ld a, a                                       ; $4e4a: $7f
    ld e, a                                       ; $4e4b: $5f
    rst $30                                       ; $4e4c: $f7
    inc a                                         ; $4e4d: $3c
    rst $28                                       ; $4e4e: $ef
    inc sp                                        ; $4e4f: $33
    rst $38                                       ; $4e50: $ff
    adc $52                                       ; $4e51: $ce $52
    ld b, a                                       ; $4e53: $47
    cp e                                          ; $4e54: $bb
    ret nz                                        ; $4e55: $c0

    cp a                                          ; $4e56: $bf
    or $c0                                        ; $4e57: $f6 $c0
    rra                                           ; $4e59: $1f
    ldh a, [$bf]                                  ; $4e5a: $f0 $bf
    sbc d                                         ; $4e5c: $9a

jr_076_4e5d:
    ret nz                                        ; $4e5d: $c0

    sbc a                                         ; $4e5e: $9f
    rst $18                                       ; $4e5f: $df
    ldh a, [$bf]                                  ; $4e60: $f0 $bf
    ld hl, sp-$01                                 ; $4e62: $f8 $ff
    add $d3                                       ; $4e64: $c6 $d3
    and b                                         ; $4e66: $a0
    ld b, b                                       ; $4e67: $40
    rst $38                                       ; $4e68: $ff
    ld a, a                                       ; $4e69: $7f
    ld b, b                                       ; $4e6a: $40
    pop bc                                        ; $4e6b: $c1
    rst $38                                       ; $4e6c: $ff
    ld [c], a                                     ; $4e6d: $e2
    ld a, a                                       ; $4e6e: $7f
    db $fd                                        ; $4e6f: $fd
    rra                                           ; $4e70: $1f
    cpl                                           ; $4e71: $2f
    and b                                         ; $4e72: $a0
    cp l                                          ; $4e73: $bd
    rlca                                          ; $4e74: $07
    xor e                                         ; $4e75: $ab
    ldh [$67], a                                  ; $4e76: $e0 $67
    rst $38                                       ; $4e78: $ff
    ld e, b                                       ; $4e79: $58
    inc a                                         ; $4e7a: $3c
    ld sp, hl                                     ; $4e7b: $f9
    ld h, b                                       ; $4e7c: $60
    ldh [$fe], a                                  ; $4e7d: $e0 $fe
    ld h, d                                       ; $4e7f: $62
    ret nz                                        ; $4e80: $c0

    ld bc, $87ff                                  ; $4e81: $01 $ff $87
    cp $9f                                        ; $4e84: $fe $9f
    ld hl, sp-$08                                 ; $4e86: $f8 $f8
    cp $c2                                        ; $4e88: $fe $c2
    ret nz                                        ; $4e8a: $c0

    inc de                                        ; $4e8b: $13
    ldh a, [$3d]                                  ; $4e8c: $f0 $3d
    ldh [$66], a                                  ; $4e8e: $e0 $66
    ret nz                                        ; $4e90: $c0

    cp d                                          ; $4e91: $ba
    ldh a, [$36]                                  ; $4e92: $f0 $36
    ld h, b                                       ; $4e94: $60
    nop                                           ; $4e95: $00
    ld b, d                                       ; $4e96: $42
    call z, $c2e0                                 ; $4e97: $cc $e0 $c2
    add b                                         ; $4e9a: $80
    rra                                           ; $4e9b: $1f
    ldh [$3f], a                                  ; $4e9c: $e0 $3f
    ldh [$f7], a                                  ; $4e9e: $e0 $f7
    ccf                                           ; $4ea0: $3f
    ldh a, [$1f]                                  ; $4ea1: $f0 $1f
    ret nc                                        ; $4ea3: $d0

    jp nz, $e05f                                  ; $4ea4: $c2 $5f $e0

    ld a, a                                       ; $4ea7: $7f
    ret nz                                        ; $4ea8: $c0

    ld a, [c]                                     ; $4ea9: $f2
    ret                                           ; $4eaa: $c9


    ret nz                                        ; $4eab: $c0

    ld a, a                                       ; $4eac: $7f
    push bc                                       ; $4ead: $c5
    ret nz                                        ; $4eae: $c0

    add b                                         ; $4eaf: $80
    jp nz, $1ee0                                  ; $4eb0: $c2 $e0 $1e

    ldh a, [rNR21]                                ; $4eb3: $f0 $16
    ccf                                           ; $4eb5: $3f
    ldh a, [rNR12]                                ; $4eb6: $f0 $12
    ldh a, [$f0]                                  ; $4eb8: $f0 $f0
    ldh a, [rNR41]                                ; $4eba: $f0 $20
    cp a                                          ; $4ebc: $bf
    ret nz                                        ; $4ebd: $c0

    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    ccf                                           ; $4ed3: $3f
    nop                                           ; $4ed4: $00
    rst $08                                       ; $4ed5: $cf
    nop                                           ; $4ed6: $00
    rst $30                                       ; $4ed7: $f7
    nop                                           ; $4ed8: $00
    rst $18                                       ; $4ed9: $df
    inc sp                                        ; $4eda: $33
    nop                                           ; $4edb: $00
    ld de, $1900                                  ; $4edc: $11 $00 $19
    cp $e0                                        ; $4edf: $fe $e0
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    ei                                            ; $4ee3: $fb
    rst $38                                       ; $4ee4: $ff
    nop                                           ; $4ee5: $00
    cp $e9                                        ; $4ee6: $fe $e9
    dec a                                         ; $4ee8: $3d
    nop                                           ; $4ee9: $00
    ei                                            ; $4eea: $fb
    nop                                           ; $4eeb: $00
    rlca                                          ; $4eec: $07
    cp e                                          ; $4eed: $bb
    nop                                           ; $4eee: $00
    or a                                          ; $4eef: $b7
    cp $e0                                        ; $4ef0: $fe $e0
    rst $28                                       ; $4ef2: $ef
    nop                                           ; $4ef3: $00
    rra                                           ; $4ef4: $1f
    and $ea                                       ; $4ef5: $e6 $ea
    db $fc                                        ; $4ef7: $fc
    di                                            ; $4ef8: $f3
    nop                                           ; $4ef9: $00
    di                                            ; $4efa: $f3
    db $ec                                        ; $4efb: $ec
    ldh [$d2], a                                  ; $4efc: $e0 $d2
    db $eb                                        ; $4efe: $eb
    rst $38                                       ; $4eff: $ff
    ld bc, $00cc                                  ; $4f00: $01 $cc $00
    rst $38                                       ; $4f03: $ff
    adc b                                         ; $4f04: $88
    nop                                           ; $4f05: $00
    sbc b                                         ; $4f06: $98
    nop                                           ; $4f07: $00
    sbc a                                         ; $4f08: $9f
    rrca                                          ; $4f09: $0f
    or a                                          ; $4f0a: $b7
    dec a                                         ; $4f0b: $3d
    cp a                                          ; $4f0c: $bf
    rst $08                                       ; $4f0d: $cf
    ld a, b                                       ; $4f0e: $78
    adc a                                         ; $4f0f: $8f
    ld a, [$ff0f]                                 ; $4f10: $fa $0f $ff
    xor b                                         ; $4f13: $a8
    db $e3                                        ; $4f14: $e3
    ld sp, hl                                     ; $4f15: $f9
    rst $38                                       ; $4f16: $ff
    ldh [$dd], a                                  ; $4f17: $e0 $dd
    ld a, b                                       ; $4f19: $78
    rst $20                                       ; $4f1a: $e7
    inc a                                         ; $4f1b: $3c
    db $e3                                        ; $4f1c: $e3
    cp [hl]                                       ; $4f1d: $be
    pop hl                                        ; $4f1e: $e1
    or $a2                                        ; $4f1f: $f6 $a2
    db $ec                                        ; $4f21: $ec
    rst $38                                       ; $4f22: $ff
    nop                                           ; $4f23: $00
    ret nc                                        ; $4f24: $d0

    push hl                                       ; $4f25: $e5
    cp a                                          ; $4f26: $bf
    ld a, [hl-]                                   ; $4f27: $3a
    rst $18                                       ; $4f28: $df
    ld [hl], b                                    ; $4f29: $70
    rst $30                                       ; $4f2a: $f7
    sbc a                                         ; $4f2b: $9f
    push af                                       ; $4f2c: $f5
    sbc a                                         ; $4f2d: $9f
    ret nc                                        ; $4f2e: $d0

    and $9d                                       ; $4f2f: $e6 $9d
    ld hl, sp-$39                                 ; $4f31: $f8 $c7
    ld a, h                                       ; $4f33: $7c
    ei                                            ; $4f34: $fb
    jp $d07e                                      ; $4f35: $c3 $7e $d0


    ldh [rSB], a                                  ; $4f38: $e0 $01
    ld a, $03                                     ; $4f3a: $3e $03
    adc $03                                       ; $4f3c: $ce $03
    rst $38                                       ; $4f3e: $ff
    rst $30                                       ; $4f3f: $f7
    inc bc                                        ; $4f40: $03
    inc sp                                        ; $4f41: $33
    inc bc                                        ; $4f42: $03
    rla                                           ; $4f43: $17
    dec b                                         ; $4f44: $05
    rra                                           ; $4f45: $1f
    dec bc                                        ; $4f46: $0b
    rst $38                                       ; $4f47: $ff
    rra                                           ; $4f48: $1f
    add hl, bc                                    ; $4f49: $09
    jr nc, @+$01                                  ; $4f4a: $30 $ff

    ld c, h                                       ; $4f4c: $4c
    rst $38                                       ; $4f4d: $ff
    cp a                                          ; $4f4e: $bf
    rst $38                                       ; $4f4f: $ff
    cp a                                          ; $4f50: $bf
    rst $38                                       ; $4f51: $ff
    call z, $92ff                                 ; $4f52: $cc $ff $92
    rst $38                                       ; $4f55: $ff
    sub $fe                                       ; $4f56: $d6 $fe
    ldh [$94], a                                  ; $4f58: $e0 $94
    rst $38                                       ; $4f5a: $ff
    add hl, de                                    ; $4f5b: $19
    rst $38                                       ; $4f5c: $ff
    ld h, h                                       ; $4f5d: $64
    rst $38                                       ; $4f5e: $ff
    ld a, [$ffff]                                 ; $4f5f: $fa $ff $ff
    ld h, a                                       ; $4f62: $67
    xor a                                         ; $4f63: $af
    rst $38                                       ; $4f64: $ff
    sub e                                         ; $4f65: $93
    rst $38                                       ; $4f66: $ff
    rst $10                                       ; $4f67: $d7
    cp $e0                                        ; $4f68: $fe $e0
    ld d, e                                       ; $4f6a: $53
    ld l, b                                       ; $4f6b: $68
    ldh [$80], a                                  ; $4f6c: $e0 $80
    rst $38                                       ; $4f6e: $ff
    di                                            ; $4f6f: $f3
    add b                                         ; $4f70: $80
    rst $28                                       ; $4f71: $ef
    add b                                         ; $4f72: $80
    call z, $e8c0                                 ; $4f73: $cc $c0 $e8
    ld h, b                                       ; $4f76: $60
    rst $38                                       ; $4f77: $ff
    ld hl, sp-$60                                 ; $4f78: $f8 $a0
    ld hl, sp+$20                                 ; $4f7a: $f8 $20
    rst $38                                       ; $4f7c: $ff
    ld bc, HeaderManufacturerCode                 ; $4f7d: $01 $3f $01
    rst $38                                       ; $4f80: $ff
    rst $08                                       ; $4f81: $cf
    ld bc, $01f7                                  ; $4f82: $01 $f7 $01
    inc sp                                        ; $4f85: $33
    inc bc                                        ; $4f86: $03
    inc de                                        ; $4f87: $13
    inc bc                                        ; $4f88: $03
    rst $38                                       ; $4f89: $ff
    rra                                           ; $4f8a: $1f
    dec b                                         ; $4f8b: $05
    rra                                           ; $4f8c: $1f
    dec b                                         ; $4f8d: $05
    ld h, b                                       ; $4f8e: $60
    rst $38                                       ; $4f8f: $ff
    add b                                         ; $4f90: $80
    rst $38                                       ; $4f91: $ff
    cp a                                          ; $4f92: $bf
    ccf                                           ; $4f93: $3f
    rst $38                                       ; $4f94: $ff
    rst $38                                       ; $4f95: $ff
    reti                                          ; $4f96: $d9


    rst $38                                       ; $4f97: $ff
    and b                                         ; $4f98: $a0
    rst $30                                       ; $4f99: $f7
    ldh [$80], a                                  ; $4f9a: $e0 $80
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    or c                                          ; $4f9e: $b1
    db $10                                        ; $4f9f: $10
    rst $38                                       ; $4fa0: $ff
    ld [$f4ff], sp                                ; $4fa1: $08 $ff $f4
    rst $38                                       ; $4fa4: $ff
    ei                                            ; $4fa5: $fb
    rst $38                                       ; $4fa6: $ff
    rst $08                                       ; $4fa7: $cf
    cp [hl]                                       ; $4fa8: $be
    ldh [rTMA], a                                 ; $4fa9: $e0 $06
    rst $38                                       ; $4fab: $ff
    rrca                                          ; $4fac: $0f
    rst $38                                       ; $4fad: $ff
    and $ff                                       ; $4fae: $e6 $ff
    rst $38                                       ; $4fb0: $ff
    add b                                         ; $4fb1: $80
    db $fc                                        ; $4fb2: $fc
    add b                                         ; $4fb3: $80
    ld [hl], e                                    ; $4fb4: $73
    ret nz                                        ; $4fb5: $c0

    ld l, a                                       ; $4fb6: $6f
    ret nz                                        ; $4fb7: $c0

    rst $38                                       ; $4fb8: $ff
    call z, $c8c0                                 ; $4fb9: $cc $c0 $c8
    ret nz                                        ; $4fbc: $c0

    ret c                                         ; $4fbd: $d8

    ld b, b                                       ; $4fbe: $40
    ret c                                         ; $4fbf: $d8

    ld b, b                                       ; $4fc0: $40
    rst $30                                       ; $4fc1: $f7
    jr nc, @+$01                                  ; $4fc2: $30 $ff

    ld b, b                                       ; $4fc4: $40
    sub b                                         ; $4fc5: $90
    pop hl                                        ; $4fc6: $e1
    adc $ff                                       ; $4fc7: $ce $ff
    sbc b                                         ; $4fc9: $98
    rst $38                                       ; $4fca: $ff
    cp l                                          ; $4fcb: $bd
    ret nz                                        ; $4fcc: $c0

    cp $e0                                        ; $4fcd: $fe $e0
    sbc h                                         ; $4fcf: $9c
    add hl, de                                    ; $4fd0: $19
    rst $38                                       ; $4fd1: $ff
    inc b                                         ; $4fd2: $04
    sub b                                         ; $4fd3: $90
    pop hl                                        ; $4fd4: $e1
    rst $20                                       ; $4fd5: $e7
    rst $28                                       ; $4fd6: $ef
    rst $38                                       ; $4fd7: $ff
    inc sp                                        ; $4fd8: $33
    rst $38                                       ; $4fd9: $ff
    rlca                                          ; $4fda: $07
    cp $e0                                        ; $4fdb: $fe $e0
    ld [hl], e                                    ; $4fdd: $73
    ccf                                           ; $4fde: $3f
    ld [$ffbf], sp                                ; $4fdf: $08 $bf $ff
    add hl, bc                                    ; $4fe2: $09
    rlca                                          ; $4fe3: $07
    dec b                                         ; $4fe4: $05
    or a                                          ; $4fe5: $b7
    inc bc                                        ; $4fe6: $03
    ldh [$c2], a                                  ; $4fe7: $e0 $c2
    ld bc, $feff                                  ; $4fe9: $01 $ff $fe
    inc bc                                        ; $4fec: $03
    rst $38                                       ; $4fed: $ff
    adc b                                         ; $4fee: $88
    rst $38                                       ; $4fef: $ff
    jr z, @+$01                                   ; $4ff0: $28 $ff

    inc a                                         ; $4ff2: $3c
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rra                                           ; $4ff5: $1f

jr_076_4ff6:
    rst $38                                       ; $4ff6: $ff
    add a                                         ; $4ff7: $87
    rst $38                                       ; $4ff8: $ff
    ret nz                                        ; $4ff9: $c0

    ccf                                           ; $4ffa: $3f
    ldh a, [rIE]                                  ; $4ffb: $f0 $ff
    rst $38                                       ; $4ffd: $ff
    ld hl, sp-$01                                 ; $4ffe: $f8 $ff
    ld [hl+], a                                   ; $5000: $22
    rst $38                                       ; $5001: $ff
    add hl, hl                                    ; $5002: $29
    rst $38                                       ; $5003: $ff
    ld a, c                                       ; $5004: $79
    rst $38                                       ; $5005: $ff
    rst $38                                       ; $5006: $ff
    pop af                                        ; $5007: $f1
    rst $38                                       ; $5008: $ff
    jp nz, Jump_000_07ff                          ; $5009: $c2 $ff $07

    ld hl, sp+$1f                                 ; $500c: $f8 $1f
    rst $38                                       ; $500e: $ff
    ldh [$3f], a                                  ; $500f: $e0 $3f
    db $fc                                        ; $5011: $fc
    jr nz, @+$01                                  ; $5012: $20 $ff

    jr nz, jr_076_4ff6                            ; $5014: $20 $e0

    ld b, b                                       ; $5016: $40
    rst $30                                       ; $5017: $f7
    db $ed                                        ; $5018: $ed
    add b                                         ; $5019: $80
    db $ed                                        ; $501a: $ed
    adc h                                         ; $501b: $8c
    ret nz                                        ; $501c: $c0

    ld hl, sp-$80                                 ; $501d: $f8 $80
    ld a, a                                       ; $501f: $7f
    ret nz                                        ; $5020: $c0

    rst $38                                       ; $5021: $ff
    ccf                                           ; $5022: $3f
    inc b                                         ; $5023: $04
    rst $38                                       ; $5024: $ff
    dec b                                         ; $5025: $05
    rlca                                          ; $5026: $07
    inc bc                                        ; $5027: $03
    or a                                          ; $5028: $b7
    ld bc, $c0be                                  ; $5029: $01 $be $c0
    and $a0                                       ; $502c: $e6 $a0
    rst $38                                       ; $502e: $ff
    ld h, b                                       ; $502f: $60
    rst $38                                       ; $5030: $ff
    ld [hl], c                                    ; $5031: $71
    ld e, l                                       ; $5032: $5d
    ldh [$8f], a                                  ; $5033: $e0 $8f
    ld [$e0c0], a                                 ; $5035: $ea $c0 $e0
    ldh [$c0], a                                  ; $5038: $e0 $c0
    ldh [$82], a                                  ; $503a: $e0 $82
    ld d, $e0                                     ; $503c: $16 $e0
    ld a, [c]                                     ; $503e: $f2
    rst $38                                       ; $503f: $ff
    pop hl                                        ; $5040: $e1
    db $fc                                        ; $5041: $fc
    ld hl, sp-$20                                 ; $5042: $f8 $e0
    ret nz                                        ; $5044: $c0

    pop hl                                        ; $5045: $e1

jr_076_5046:
    ld a, a                                       ; $5046: $7f
    db $fc                                        ; $5047: $fc
    ld b, b                                       ; $5048: $40
    rst $18                                       ; $5049: $df
    ld b, b                                       ; $504a: $40
    ldh [$fc], a                                  ; $504b: $e0 $fc
    jp nz, $c0e0                                  ; $504d: $c2 $e0 $c0

    push hl                                       ; $5050: $e5
    rst $38                                       ; $5051: $ff
    ld b, c                                       ; $5052: $41
    rst $38                                       ; $5053: $ff
    ld c, c                                       ; $5054: $49
    rst $38                                       ; $5055: $ff
    ld c, a                                       ; $5056: $4f
    cp $92                                        ; $5057: $fe $92
    ldh [rSTAT], a                                ; $5059: $e0 $41
    rst $38                                       ; $505b: $ff
    ldh [$1f], a                                  ; $505c: $e0 $1f
    ldh a, [rIE]                                  ; $505e: $f0 $ff
    db $fc                                        ; $5060: $fc
    db $eb                                        ; $5061: $eb
    rst $38                                       ; $5062: $ff
    dec b                                         ; $5063: $05
    jr c, jr_076_5046                             ; $5064: $38 $e0

    adc [hl]                                      ; $5066: $8e
    ld hl, sp-$20                                 ; $5067: $f8 $e0
    pop af                                        ; $5069: $f1
    rst $38                                       ; $506a: $ff
    inc bc                                        ; $506b: $03
    cpl                                           ; $506c: $2f
    db $fc                                        ; $506d: $fc
    rrca                                          ; $506e: $0f
    ldh a, [$3f]                                  ; $506f: $f0 $3f
    ld e, d                                       ; $5071: $5a
    ldh [rDIV], a                                 ; $5072: $e0 $04
    dec e                                         ; $5074: $1d
    ldh [$fe], a                                  ; $5075: $e0 $fe
    pop hl                                        ; $5077: $e1
    xor a                                         ; $5078: $af
    inc b                                         ; $5079: $04
    rst $38                                       ; $507a: $ff
    rlca                                          ; $507b: $07
    db $fc                                        ; $507c: $fc
    ld c, h                                       ; $507d: $4c
    pop hl                                        ; $507e: $e1
    ld bc, $e016                                  ; $507f: $01 $16 $e0
    ld [$ff7f], sp                                ; $5082: $08 $7f $ff
    db $10                                        ; $5085: $10
    rst $38                                       ; $5086: $ff
    ld [hl], b                                    ; $5087: $70
    adc a                                         ; $5088: $8f
    db $fc                                        ; $5089: $fc
    inc bc                                        ; $508a: $03
    dec hl                                        ; $508b: $2b
    ld [c], a                                     ; $508c: $e2
    rst $38                                       ; $508d: $ff
    ldh [$3f], a                                  ; $508e: $e0 $3f
    ldh a, [$1f]                                  ; $5090: $f0 $1f
    ld sp, hl                                     ; $5092: $f9
    rrca                                          ; $5093: $0f
    ei                                            ; $5094: $fb
    rrca                                          ; $5095: $0f
    adc [hl]                                      ; $5096: $8e
    ret nc                                        ; $5097: $d0

    ldh [rIE], a                                  ; $5098: $e0 $ff
    ld a, a                                       ; $509a: $7f
    ret nz                                        ; $509b: $c0

    cp $e1                                        ; $509c: $fe $e1
    db $e4                                        ; $509e: $e4
    jp nz, $e3fc                                  ; $509f: $c2 $fc $e3

    rlca                                          ; $50a2: $07
    rst $28                                       ; $50a3: $ef
    ccf                                           ; $50a4: $3f
    ld [bc], a                                    ; $50a5: $02
    rst $08                                       ; $50a6: $cf
    ld [bc], a                                    ; $50a7: $02
    ret nz                                        ; $50a8: $c0

    ret nz                                        ; $50a9: $c0

    ld bc, $0111                                  ; $50aa: $01 $11 $01
    add hl, hl                                    ; $50ad: $29
    add hl, de                                    ; $50ae: $19
    cp $e0                                        ; $50af: $fe $e0
    ldh [$a4], a                                  ; $50b1: $e0 $a4
    ld [$e002], sp                                ; $50b3: $08 $02 $e0
    inc bc                                        ; $50b6: $03
    cp $e0                                        ; $50b7: $fe $e0
    ldh a, [$e1]                                  ; $50b9: $f0 $e1
    jp hl                                         ; $50bb: $e9


    ld bc, $e2fe                                  ; $50bc: $01 $fe $e2
    jp z, $80a5                                   ; $50bf: $ca $a5 $80

    add sp, -$5d                                  ; $50c2: $e8 $a3
    call z, $8880                                 ; $50c4: $cc $80 $88
    rst $38                                       ; $50c7: $ff
    add b                                         ; $50c8: $80
    sbc b                                         ; $50c9: $98
    add b                                         ; $50ca: $80
    ret c                                         ; $50cb: $d8

    ld b, b                                       ; $50cc: $40
    ccf                                           ; $50cd: $3f
    ld [bc], a                                    ; $50ce: $02
    rst $38                                       ; $50cf: $ff
    rst $38                                       ; $50d0: $ff
    rlca                                          ; $50d1: $07
    ld [$b00f], sp                                ; $50d2: $08 $0f $b0
    rra                                           ; $50d5: $1f
    or b                                          ; $50d6: $b0
    rra                                           ; $50d7: $1f
    rst $28                                       ; $50d8: $ef
    rst $30                                       ; $50d9: $f7
    rrca                                          ; $50da: $0f
    jr jr_076_50ec                                ; $50db: $18 $0f

    jp nc, $81e2                                  ; $50dd: $d2 $e2 $81

    ld a, a                                       ; $50e0: $7f
    cp $23                                        ; $50e1: $fe $23
    xor a                                         ; $50e3: $af
    cp $03                                        ; $50e4: $fe $03
    cp $ff                                        ; $50e6: $fe $ff
    db $fc                                        ; $50e8: $fc
    pop hl                                        ; $50e9: $e1
    rst $38                                       ; $50ea: $ff

jr_076_50eb:
    ld e, d                                       ; $50eb: $5a

jr_076_50ec:
    ldh [rTAC], a                                 ; $50ec: $e0 $07
    and l                                         ; $50ee: $a5
    ld hl, sp-$35                                 ; $50ef: $f8 $cb
    ret nz                                        ; $50f1: $c0

    add b                                         ; $50f2: $80
    add a                                         ; $50f3: $87
    and b                                         ; $50f4: $a0
    db $fc                                        ; $50f5: $fc
    pop hl                                        ; $50f6: $e1
    db $fc                                        ; $50f7: $fc
    ld a, [hl-]                                   ; $50f8: $3a
    ldh [$08], a                                  ; $50f9: $e0 $08
    ld a, e                                       ; $50fb: $7b
    ld hl, sp+$0d                                 ; $50fc: $f8 $0d
    cp $e0                                        ; $50fe: $fe $e0
    rst $30                                       ; $5100: $f7
    ldh a, [rNR23]                                ; $5101: $f0 $18
    ldh a, [$72]                                  ; $5103: $f0 $72
    and b                                         ; $5105: $a0
    add h                                         ; $5106: $84
    jp hl                                         ; $5107: $e9


    pop hl                                        ; $5108: $e1
    cp $e8                                        ; $5109: $fe $e8
    nop                                           ; $510b: $00
    rst $38                                       ; $510c: $ff
    db $ec                                        ; $510d: $ec
    ld d, [hl]                                    ; $510e: $56
    rst $20                                       ; $510f: $e7
    ld [$80c4], sp                                ; $5110: $08 $c4 $80
    and b                                         ; $5113: $a0
    sbc a                                         ; $5114: $9f
    rst $38                                       ; $5115: $ff
    rlca                                          ; $5116: $07
    sbc a                                         ; $5117: $9f
    dec e                                         ; $5118: $1d
    xor a                                         ; $5119: $af
    jr c, jr_076_50eb                             ; $511a: $38 $cf

    ld a, d                                       ; $511c: $7a
    rst $08                                       ; $511d: $cf
    ei                                            ; $511e: $fb
    ld a, a                                       ; $511f: $7f
    or b                                          ; $5120: $b0
    add b                                         ; $5121: $80
    and d                                         ; $5122: $a2
    ld sp, hl                                     ; $5123: $f9
    ldh a, [$cd]                                  ; $5124: $f0 $cd
    ld a, h                                       ; $5126: $7c
    db $e3                                        ; $5127: $e3
    rrca                                          ; $5128: $0f
    ld a, $e1                                     ; $5129: $3e $e1
    cp a                                          ; $512b: $bf
    ldh a, [rNR14]                                ; $512c: $f0 $14
    ret nz                                        ; $512e: $c0

    ld [hl+], a                                   ; $512f: $22
    xor d                                         ; $5130: $aa
    add b                                         ; $5131: $80
    ret nz                                        ; $5132: $c0

    ld e, b                                       ; $5133: $58
    db $e3                                        ; $5134: $e3
    cp a                                          ; $5135: $bf
    sbc b                                         ; $5136: $98
    add b                                         ; $5137: $80
    cp h                                          ; $5138: $bc
    add b                                         ; $5139: $80
    rst $18                                       ; $513a: $df
    add b                                         ; $513b: $80
    xor b                                         ; $513c: $a8
    ret nz                                        ; $513d: $c0

    add b                                         ; $513e: $80
    call z, $85f8                                 ; $513f: $cc $f8 $85
    ld [$ffa5], sp                                ; $5142: $08 $a5 $ff
    nop                                           ; $5145: $00
    ldh [$82], a                                  ; $5146: $e0 $82
    nop                                           ; $5148: $00
    ldh [rNR13], a                                ; $5149: $e0 $13
    ld [bc], a                                    ; $514b: $02
    db $fd                                        ; $514c: $fd
    dec de                                        ; $514d: $1b
    cp $e0                                        ; $514e: $fe $e0
    ret nz                                        ; $5150: $c0

    rst $38                                       ; $5151: $ff
    sbc a                                         ; $5152: $9f
    rst $38                                       ; $5153: $ff
    rst $38                                       ; $5154: $ff
    db $ec                                        ; $5155: $ec
    cp e                                          ; $5156: $bb
    rst $38                                       ; $5157: $ff
    ret c                                         ; $5158: $d8

    ld a, [c]                                     ; $5159: $f2
    and d                                         ; $515a: $a2
    ret c                                         ; $515b: $d8

    rst $38                                       ; $515c: $ff
    ld d, b                                       ; $515d: $50
    ld a, [c]                                     ; $515e: $f2
    and [hl]                                      ; $515f: $a6
    inc bc                                        ; $5160: $03
    cp $f0                                        ; $5161: $fe $f0
    and b                                         ; $5163: $a0
    di                                            ; $5164: $f3
    rst $38                                       ; $5165: $ff
    ld b, c                                       ; $5166: $41
    ld a, a                                       ; $5167: $7f
    ret nz                                        ; $5168: $c0

    inc a                                         ; $5169: $3c
    ldh [$7f], a                                  ; $516a: $e0 $7f
    or e                                          ; $516c: $b3
    ldh [$ef], a                                  ; $516d: $e0 $ef
    ldh [$ec], a                                  ; $516f: $e0 $ec
    ld h, b                                       ; $5171: $60
    add sp, -$7e                                  ; $5172: $e8 $82
    and b                                         ; $5174: $a0
    ld a, a                                       ; $5175: $7f
    ld hl, sp+$20                                 ; $5176: $f8 $20
    db $ed                                        ; $5178: $ed
    add b                                         ; $5179: $80
    rst $30                                       ; $517a: $f7
    add b                                         ; $517b: $80
    ld hl, sp+$3e                                 ; $517c: $f8 $3e
    add sp, -$04                                  ; $517e: $e8 $fc
    cp b                                          ; $5180: $b8
    sub l                                         ; $5181: $95
    ret z                                         ; $5182: $c8

    add e                                         ; $5183: $83
    sbc b                                         ; $5184: $98
    nop                                           ; $5185: $00
    ccf                                           ; $5186: $3f
    ld [bc], a                                    ; $5187: $02
    ei                                            ; $5188: $fb
    ld bc, $9076                                  ; $5189: $01 $76 $90
    add h                                         ; $518c: $84
    ld bc, $ac1e                                  ; $518d: $01 $1e $ac
    pop hl                                        ; $5190: $e1
    or b                                          ; $5191: $b0
    rst $38                                       ; $5192: $ff
    cp b                                          ; $5193: $b8
    adc l                                         ; $5194: $8d
    ldh [$5f], a                                  ; $5195: $e0 $5f
    ld c, a                                       ; $5197: $4f
    db $fc                                        ; $5198: $fc
    jp $e33c                                      ; $5199: $c3 $3c $e3


    or d                                          ; $519c: $b2
    and b                                         ; $519d: $a0
    rlca                                          ; $519e: $07
    ld [de], a                                    ; $519f: $12
    ret nz                                        ; $51a0: $c0

jr_076_51a1:
    or a                                          ; $51a1: $b7
    ld sp, hl                                     ; $51a2: $f9
    rst $38                                       ; $51a3: $ff
    ldh a, [$f0]                                  ; $51a4: $f0 $f0
    and b                                         ; $51a6: $a0
    inc bc                                        ; $51a7: $03
    db $fc                                        ; $51a8: $fc
    ld a, [c]                                     ; $51a9: $f2
    and b                                         ; $51aa: $a0
    ret nz                                        ; $51ab: $c0

    daa                                           ; $51ac: $27
    rst $38                                       ; $51ad: $ff
    db $fc                                        ; $51ae: $fc
    jr nz, jr_076_51a1                            ; $51af: $20 $f0

    and h                                         ; $51b1: $a4
    sbc b                                         ; $51b2: $98
    ldh [$78], a                                  ; $51b3: $e0 $78
    ld b, [hl]                                    ; $51b5: $46
    pop bc                                        ; $51b6: $c1
    ld [de], a                                    ; $51b7: $12
    jp z, $1094                                   ; $51b8: $ca $94 $10

    ret nz                                        ; $51bb: $c0

    ld [de], a                                    ; $51bc: $12
    jp z, Jump_000_1200                           ; $51bd: $ca $00 $12

    call z, $1000                                 ; $51c0: $cc $00 $10
    jp nz, $c99e                                  ; $51c3: $c2 $9e $c9

    cp h                                          ; $51c6: $bc
    rrca                                          ; $51c7: $0f
    nop                                           ; $51c8: $00
    rst $18                                       ; $51c9: $df
    nop                                           ; $51ca: $00
    ldh [$a2], a                                  ; $51cb: $e0 $a2
    and b                                         ; $51cd: $a0
    ld h, b                                       ; $51ce: $60
    and d                                         ; $51cf: $a2
    ld a, [c]                                     ; $51d0: $f2
    ld h, b                                       ; $51d1: $60
    nop                                           ; $51d2: $00
    nop                                           ; $51d3: $00
    nop                                           ; $51d4: $00
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00
    rst $38                                       ; $51e0: $ff
    rst $38                                       ; $51e1: $ff
    rst $38                                       ; $51e2: $ff
    rst $38                                       ; $51e3: $ff
    nop                                           ; $51e4: $00
    rst $38                                       ; $51e5: $ff
    nop                                           ; $51e6: $00
    inc b                                         ; $51e7: $04
    nop                                           ; $51e8: $00
    scf                                           ; $51e9: $37
    di                                            ; $51ea: $f3
    nop                                           ; $51eb: $00
    ld b, $fa                                     ; $51ec: $06 $fa
    ldh [$64], a                                  ; $51ee: $e0 $64
    nop                                           ; $51f0: $00
    ldh a, [$e3]                                  ; $51f1: $f0 $e3
    db $fc                                        ; $51f3: $fc
    add sp, -$02                                  ; $51f4: $e8 $fe
    ldh [$e2], a                                  ; $51f6: $e0 $e2
    ld hl, sp+$00                                 ; $51f8: $f8 $00
    push hl                                       ; $51fa: $e5
    nop                                           ; $51fb: $00
    call z, $ac00                                 ; $51fc: $cc $00 $ac
    xor e                                         ; $51ff: $ab
    nop                                           ; $5200: $00
    cp b                                          ; $5201: $b8
    ldh [$e1], a                                  ; $5202: $e0 $e1
    add b                                         ; $5204: $80
    cp $e9                                        ; $5205: $fe $e9
    nop                                           ; $5207: $00
    rst $38                                       ; $5208: $ff
    db $ec                                        ; $5209: $ec
    ld [hl], h                                    ; $520a: $74
    cpl                                           ; $520b: $2f
    nop                                           ; $520c: $00
    db $f4                                        ; $520d: $f4
    nop                                           ; $520e: $00
    db $e4                                        ; $520f: $e4
    db $eb                                        ; $5210: $eb
    ldh [rDIV], a                                 ; $5211: $e0 $04
    cp d                                          ; $5213: $ba
    db $eb                                        ; $5214: $eb
    xor h                                         ; $5215: $ac
    db $e4                                        ; $5216: $e4
    db $fd                                        ; $5217: $fd
    ld hl, sp-$16                                 ; $5218: $f8 $ea
    db $ec                                        ; $521a: $ec
    inc b                                         ; $521b: $04
    nop                                           ; $521c: $00
    add e                                         ; $521d: $83
    nop                                           ; $521e: $00
    add a                                         ; $521f: $87
    nop                                           ; $5220: $00
    ld h, a                                       ; $5221: $67
    rst $00                                       ; $5222: $c7
    nop                                           ; $5223: $00
    db $e3                                        ; $5224: $e3
    and $e7                                       ; $5225: $e6 $e7
    and d                                         ; $5227: $a2
    ld [$80f8], a                                 ; $5228: $ea $f8 $80
    ld [hl], d                                    ; $522b: $72
    db $ec                                        ; $522c: $ec
    db $fd                                        ; $522d: $fd
    ld bc, $e578                                  ; $522e: $01 $78 $e5
    sbc a                                         ; $5231: $9f
    rra                                           ; $5232: $1f
    rst $28                                       ; $5233: $ef
    ld a, d                                       ; $5234: $7a
    sbc a                                         ; $5235: $9f
    ldh a, [$fb]                                  ; $5236: $f0 $fb
    rra                                           ; $5238: $1f

jr_076_5239:
    rst $38                                       ; $5239: $ff
    ld c, b                                       ; $523a: $48
    push hl                                       ; $523b: $e5
    db $f4                                        ; $523c: $f4
    ret nz                                        ; $523d: $c0

    or h                                          ; $523e: $b4
    ldh a, [$cc]                                  ; $523f: $f0 $cc
    rst $20                                       ; $5241: $e7
    ld a, b                                       ; $5242: $78
    call nz, $8afc                                ; $5243: $c4 $fc $8a
    db $ed                                        ; $5246: $ed
    ld c, b                                       ; $5247: $48
    db $e3                                        ; $5248: $e3
    cp e                                          ; $5249: $bb
    inc bc                                        ; $524a: $03
    adc l                                         ; $524b: $8d
    ld a, a                                       ; $524c: $7f
    rrca                                          ; $524d: $0f
    sub e                                         ; $524e: $93
    ld e, $e3                                     ; $524f: $1e $e3
    ccf                                           ; $5251: $3f
    add $7f                                       ; $5252: $c6 $7f
    jr jr_076_5239                                ; $5254: $18 $e3

    rst $38                                       ; $5256: $ff
    db $fc                                        ; $5257: $fc
    ld hl, sp-$0a                                 ; $5258: $f8 $f6
    ld e, [hl]                                    ; $525a: $5e
    ld sp, hl                                     ; $525b: $f9
    rrca                                          ; $525c: $0f
    ld hl, sp-$01                                 ; $525d: $f8 $ff
    db $fd                                        ; $525f: $fd
    inc c                                         ; $5260: $0c

jr_076_5261:
    ld [de], a                                    ; $5261: $12
    db $eb                                        ; $5262: $eb
    add b                                         ; $5263: $80
    ld a, a                                       ; $5264: $7f
    ret nz                                        ; $5265: $c0

    push hl                                       ; $5266: $e5
    add b                                         ; $5267: $80
    call z, $80ff                                 ; $5268: $cc $ff $80
    xor h                                         ; $526b: $ac
    add b                                         ; $526c: $80
    cp b                                          ; $526d: $b8
    add b                                         ; $526e: $80
    add e                                         ; $526f: $83
    add b                                         ; $5270: $80
    add a                                         ; $5271: $87
    sbc a                                         ; $5272: $9f
    add b                                         ; $5273: $80
    rst $00                                       ; $5274: $c7
    add b                                         ; $5275: $80
    db $e3                                        ; $5276: $e3
    add b                                         ; $5277: $80
    add sp, -$3b                                  ; $5278: $e8 $c5
    jr z, jr_076_5261                             ; $527a: $28 $e5

    cp $ff                                        ; $527c: $fe $ff
    inc bc                                        ; $527e: $03
    cp $03                                        ; $527f: $fe $03
    db $fc                                        ; $5281: $fc
    rla                                           ; $5282: $17
    dec a                                         ; $5283: $3d
    cpl                                           ; $5284: $2f
    db $fd                                        ; $5285: $fd
    rst $38                                       ; $5286: $ff
    ld d, a                                       ; $5287: $57
    rst $38                                       ; $5288: $ff
    xor a                                         ; $5289: $af
    rst $38                                       ; $528a: $ff
    cp e                                          ; $528b: $bb
    rst $38                                       ; $528c: $ff
    xor a                                         ; $528d: $af
    jr nc, @+$01                                  ; $528e: $30 $ff

    rst $38                                       ; $5290: $ff
    ld b, b                                       ; $5291: $40
    rst $38                                       ; $5292: $ff
    cp a                                          ; $5293: $bf
    rst $38                                       ; $5294: $ff
    ld a, a                                       ; $5295: $7f
    db $ed                                        ; $5296: $ed
    rst $38                                       ; $5297: $ff
    rst $30                                       ; $5298: $f7
    sbc b                                         ; $5299: $98
    rst $38                                       ; $529a: $ff
    dec l                                         ; $529b: $2d
    xor $e0                                       ; $529c: $ee $e0
    xor b                                         ; $529e: $a8
    ld h, d                                       ; $529f: $62
    cp $13                                        ; $52a0: $fe $13
    rst $38                                       ; $52a2: $ff
    cp $e9                                        ; $52a3: $fe $e9
    rst $38                                       ; $52a5: $ff
    push af                                       ; $52a6: $f5
    cp a                                          ; $52a7: $bf
    db $fd                                        ; $52a8: $fd
    rst $08                                       ; $52a9: $cf
    rst $38                                       ; $52aa: $ff
    push hl                                       ; $52ab: $e5
    and a                                         ; $52ac: $a7
    sbc $e0                                       ; $52ad: $de $e0
    xor a                                         ; $52af: $af
    ld [$c0e5], sp                                ; $52b0: $08 $e5 $c0
    jp nz, $fe80                                  ; $52b3: $c2 $80 $fe

    ld h, [hl]                                    ; $52b6: $66
    cp $08                                        ; $52b7: $fe $08
    push hl                                       ; $52b9: $e5
    di                                            ; $52ba: $f3
    nop                                           ; $52bb: $00
    rlca                                          ; $52bc: $07
    ld bc, $2627                                  ; $52bd: $01 $27 $26
    ld a, a                                       ; $52c0: $7f
    rst $38                                       ; $52c1: $ff
    ld e, d                                       ; $52c2: $5a
    ret z                                         ; $52c3: $c8

    ld a, a                                       ; $52c4: $7f
    sub a                                         ; $52c5: $97
    rst $38                                       ; $52c6: $ff
    xor a                                         ; $52c7: $af
    db $fd                                        ; $52c8: $fd
    cp a                                          ; $52c9: $bf
    rst $18                                       ; $52ca: $df
    di                                            ; $52cb: $f3
    rst $38                                       ; $52cc: $ff
    push hl                                       ; $52cd: $e5
    rst $38                                       ; $52ce: $ff
    push af                                       ; $52cf: $f5
    cp $e0                                        ; $52d0: $fe $e0
    ld h, [hl]                                    ; $52d2: $66
    ld [bc], a                                    ; $52d3: $02
    rst $38                                       ; $52d4: $ff
    rst $38                                       ; $52d5: $ff
    db $fd                                        ; $52d6: $fd
    rst $38                                       ; $52d7: $ff
    cp $b7                                        ; $52d8: $fe $b7
    rst $38                                       ; $52da: $ff
    add hl, de                                    ; $52db: $19
    rst $38                                       ; $52dc: $ff
    db $fd                                        ; $52dd: $fd
    or h                                          ; $52de: $b4
    ldh a, [$e0]                                  ; $52df: $f0 $e0
    dec d                                         ; $52e1: $15
    rst $38                                       ; $52e2: $ff
    inc c                                         ; $52e3: $0c
    ld a, a                                       ; $52e4: $7f
    ret nz                                        ; $52e5: $c0

    ccf                                           ; $52e6: $3f
    ld l, a                                       ; $52e7: $6f
    ld [$ffb5], a                                 ; $52e8: $ea $b5 $ff
    xor e                                         ; $52eb: $ab
    db $e3                                        ; $52ec: $e3
    ldh [$fd], a                                  ; $52ed: $e0 $fd
    rst $18                                       ; $52ef: $df
    rst $18                                       ; $52f0: $df
    ldh [$f9], a                                  ; $52f1: $e0 $f9
    rst $18                                       ; $52f3: $df
    or b                                          ; $52f4: $b0
    ld [$c170], a                                 ; $52f5: $ea $70 $c1
    xor e                                         ; $52f8: $ab
    rst $38                                       ; $52f9: $ff
    sbc c                                         ; $52fa: $99
    rst $38                                       ; $52fb: $ff
    adc d                                         ; $52fc: $8a
    rst $38                                       ; $52fd: $ff
    ld a, a                                       ; $52fe: $7f
    ld c, d                                       ; $52ff: $4a
    ld a, a                                       ; $5300: $7f
    ld b, [hl]                                    ; $5301: $46
    rst $38                                       ; $5302: $ff
    ld b, e                                       ; $5303: $43
    cp $43                                        ; $5304: $fe $43
    rst $38                                       ; $5306: $ff
    db $fc                                        ; $5307: $fc
    daa                                           ; $5308: $27
    rst $38                                       ; $5309: $ff
    jr nc, @+$01                                  ; $530a: $30 $ff

    db $10                                        ; $530c: $10
    rst $38                                       ; $530d: $ff
    ld e, b                                       ; $530e: $58
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    ld a, a                                       ; $5311: $7f
    rst $38                                       ; $5312: $ff
    ccf                                           ; $5313: $3f
    ldh a, [$1f]                                  ; $5314: $f0 $1f
    ldh a, [$9f]                                  ; $5316: $f0 $9f
    rst $38                                       ; $5318: $ff
    rst $38                                       ; $5319: $ff
    rst $08                                       ; $531a: $cf
    rst $38                                       ; $531b: $ff
    ld h, [hl]                                    ; $531c: $66
    rst $38                                       ; $531d: $ff
    ld b, l                                       ; $531e: $45
    rst $38                                       ; $531f: $ff
    jp nc, $ffff                                  ; $5320: $d2 $ff $ff

    ld a, [c]                                     ; $5323: $f2
    rst $38                                       ; $5324: $ff
    ld [c], a                                     ; $5325: $e2
    ld a, a                                       ; $5326: $7f
    rst $00                                       ; $5327: $c7
    ld a, l                                       ; $5328: $7d
    rst $08                                       ; $5329: $cf
    rst $38                                       ; $532a: $ff
    ei                                            ; $532b: $fb
    sbc [hl]                                      ; $532c: $9e
    db $db                                        ; $532d: $db
    ld a, [hl]                                    ; $532e: $7e
    push de                                       ; $532f: $d5
    ld a, a                                       ; $5330: $7f
    bit 7, a                                      ; $5331: $cb $7f
    rst $38                                       ; $5333: $ff
    push bc                                       ; $5334: $c5
    ld a, a                                       ; $5335: $7f
    xor e                                         ; $5336: $ab
    rst $38                                       ; $5337: $ff
    add l                                         ; $5338: $85
    rst $38                                       ; $5339: $ff
    jp $ef7e                                      ; $533a: $c3 $7e $ef


    rst $20                                       ; $533d: $e7
    inc a                                         ; $533e: $3c
    rst $38                                       ; $533f: $ff
    xor d                                         ; $5340: $aa
    ld [c], a                                     ; $5341: $e2
    ldh [$a2], a                                  ; $5342: $e0 $a2
    rst $38                                       ; $5344: $ff
    push de                                       ; $5345: $d5
    cp e                                          ; $5346: $bb
    rst $38                                       ; $5347: $ff
    and c                                         ; $5348: $a1
    scf                                           ; $5349: $37
    ldh [rNR50], a                                ; $534a: $e0 $24
    rst $38                                       ; $534c: $ff
    jr @-$0a                                      ; $534d: $18 $f4

    ldh [rWX], a                                  ; $534f: $e0 $4b
    rst $38                                       ; $5351: $ff
    rst $38                                       ; $5352: $ff
    ld c, a                                       ; $5353: $4f
    rst $38                                       ; $5354: $ff
    ld b, a                                       ; $5355: $47
    rst $38                                       ; $5356: $ff
    pop hl                                        ; $5357: $e1
    cp a                                          ; $5358: $bf
    pop af                                        ; $5359: $f1
    rst $38                                       ; $535a: $ff
    rst $18                                       ; $535b: $df
    ld a, h                                       ; $535c: $7c
    db $d3                                        ; $535d: $d3
    ld a, [hl]                                    ; $535e: $7e
    rst $38                                       ; $535f: $ff
    ld [$1aff], sp                                ; $5360: $08 $ff $1a
    rst $38                                       ; $5363: $ff
    rst $38                                       ; $5364: $ff
    cp $ff                                        ; $5365: $fe $ff
    db $fc                                        ; $5367: $fc
    rra                                           ; $5368: $1f
    ldh a, [rIE]                                  ; $5369: $f0 $ff
    pop af                                        ; $536b: $f1
    rst $38                                       ; $536c: $ff
    rst $38                                       ; $536d: $ff
    inc bc                                        ; $536e: $03
    db $fc                                        ; $536f: $fc
    rrca                                          ; $5370: $0f
    ld sp, hl                                     ; $5371: $f9
    sbc a                                         ; $5372: $9f
    pop af                                        ; $5373: $f1
    ld e, a                                       ; $5374: $5f
    rst $38                                       ; $5375: $ff
    pop af                                        ; $5376: $f1
    ld e, a                                       ; $5377: $5f
    rst $38                                       ; $5378: $ff
    ld l, [hl]                                    ; $5379: $6e
    cp $c2                                        ; $537a: $fe $c2
    ld a, a                                       ; $537c: $7f
    jp nz, Jump_000_3fff                          ; $537d: $c2 $ff $3f

    ld [c], a                                     ; $5380: $e2

jr_076_5381:
    sbc a                                         ; $5381: $9f
    db $f4                                        ; $5382: $f4
    ld sp, hl                                     ; $5383: $f9
    cpl                                           ; $5384: $2f
    ld a, [c]                                     ; $5385: $f2
    rra                                           ; $5386: $1f
    rst $28                                       ; $5387: $ef
    ld hl, sp+$0f                                 ; $5388: $f8 $0f
    db $fc                                        ; $538a: $fc
    rlca                                          ; $538b: $07
    cp $e3                                        ; $538c: $fe $e3
    rst $38                                       ; $538e: $ff
    rlca                                          ; $538f: $07
    ccf                                           ; $5390: $3f
    rst $28                                       ; $5391: $ef
    ldh a, [$8f]                                  ; $5392: $f0 $8f
    rst $38                                       ; $5394: $ff
    ld d, c                                       ; $5395: $51
    or a                                          ; $5396: $b7
    ldh [$0a], a                                  ; $5397: $e0 $0a
    rst $38                                       ; $5399: $ff
    inc b                                         ; $539a: $04
    cp $c3                                        ; $539b: $fe $c3
    and d                                         ; $539d: $a2
    db $eb                                        ; $539e: $eb
    ld a, [hl]                                    ; $539f: $7e
    sub e                                         ; $53a0: $93
    cp $23                                        ; $53a1: $fe $23
    cp $c1                                        ; $53a3: $fe $c1
    rst $38                                       ; $53a5: $ff
    rst $38                                       ; $53a6: $ff
    ld bc, $06ff                                  ; $53a7: $01 $ff $06
    cp $02                                        ; $53aa: $fe $02
    cp $fe                                        ; $53ac: $fe $fe
    sbc l                                         ; $53ae: $9d
    cp $9e                                        ; $53af: $fe $9e
    ldh [rNR10], a                                ; $53b1: $e0 $10
    rst $38                                       ; $53b3: $ff
    jr nz, jr_076_5381                            ; $53b4: $20 $cb

    ret nz                                        ; $53b6: $c0

    ld h, $c5                                     ; $53b7: $26 $c5
    ld [$d7ba], sp                                ; $53b9: $08 $ba $d7
    ldh [$03], a                                  ; $53bc: $e0 $03
    adc h                                         ; $53be: $8c
    and a                                         ; $53bf: $a7
    ret                                           ; $53c0: $c9


    ld a, a                                       ; $53c1: $7f
    add h                                         ; $53c2: $84
    pop af                                        ; $53c3: $f1
    ldh [$c0], a                                  ; $53c4: $e0 $c0
    rst $18                                       ; $53c6: $df
    rst $38                                       ; $53c7: $ff
    ret nz                                        ; $53c8: $c0

    ld a, a                                       ; $53c9: $7f
    ret nz                                        ; $53ca: $c0

    ld a, a                                       ; $53cb: $7f
    ld a, [hl-]                                   ; $53cc: $3a
    ldh [rLCDC], a                                ; $53cd: $e0 $40
    pop af                                        ; $53cf: $f1
    set 7, a                                      ; $53d0: $cb $ff
    adc d                                         ; $53d2: $8a
    ld l, c                                       ; $53d3: $69
    ldh [$50], a                                  ; $53d4: $e0 $50
    call Call_076_65e0                            ; $53d6: $cd $e0 $65
    and c                                         ; $53d9: $a1
    rst $38                                       ; $53da: $ff
    nop                                           ; $53db: $00
    cp a                                          ; $53dc: $bf
    ld c, a                                       ; $53dd: $4f
    ld hl, sp+$1f                                 ; $53de: $f8 $1f
    ldh a, [$3f]                                  ; $53e0: $f0 $3f
    ldh [$fe], a                                  ; $53e2: $e0 $fe
    db $e3                                        ; $53e4: $e3
    rst $38                                       ; $53e5: $ff
    push af                                       ; $53e6: $f5
    ldh [$b6], a                                  ; $53e7: $e0 $b6
    ldh [rDIV], a                                 ; $53e9: $e0 $04
    ld e, [hl]                                    ; $53eb: $5e
    ldh [rNR10], a                                ; $53ec: $e0 $10
    ccf                                           ; $53ee: $3f
    jr nz, @+$01                                  ; $53ef: $20 $ff

    ld a, a                                       ; $53f1: $7f
    jr nz, @+$41                                  ; $53f2: $20 $3f

    jr nz, jr_076_5455                            ; $53f4: $20 $5f

    ld [hl], b                                    ; $53f6: $70
    ld e, a                                       ; $53f7: $5f
    ld [hl], b                                    ; $53f8: $70
    ld b, d                                       ; $53f9: $42
    and h                                         ; $53fa: $a4
    rst $38                                       ; $53fb: $ff
    db $10                                        ; $53fc: $10
    rst $38                                       ; $53fd: $ff
    ld e, $ff                                     ; $53fe: $1e $ff
    inc d                                         ; $5400: $14
    rst $38                                       ; $5401: $ff
    ld h, d                                       ; $5402: $62
    rst $38                                       ; $5403: $ff
    and a                                         ; $5404: $a7
    ld [hl+], a                                   ; $5405: $22
    cp $02                                        ; $5406: $fe $02
    ld [hl], a                                    ; $5408: $77
    ldh [$fe], a                                  ; $5409: $e0 $fe
    pop hl                                        ; $540b: $e1
    ld [bc], a                                    ; $540c: $02
    cp $e2                                        ; $540d: $fe $e2
    ld bc, $8080                                  ; $540f: $01 $80 $80
    rst $00                                       ; $5412: $c7
    db $10                                        ; $5413: $10
    and h                                         ; $5414: $a4
    add $e0                                       ; $5415: $c6 $e0
    ld [hl], b                                    ; $5417: $70
    ld [c], a                                     ; $5418: $e2
    cp $e1                                        ; $5419: $fe $e1
    ld h, $a1                                     ; $541b: $26 $a1
    ld l, h                                       ; $541d: $6c
    db $e3                                        ; $541e: $e3
    ld a, b                                       ; $541f: $78
    cp a                                          ; $5420: $bf
    rst $38                                       ; $5421: $ff
    jr z, @+$01                                   ; $5422: $28 $ff

    ld b, [hl]                                    ; $5424: $46
    rst $38                                       ; $5425: $ff
    ld b, h                                       ; $5426: $44
    db $fc                                        ; $5427: $fc
    ldh [rNR10], a                                ; $5428: $e0 $10
    cp $5e                                        ; $542a: $fe $5e
    pop hl                                        ; $542c: $e1
    db $fc                                        ; $542d: $fc
    inc b                                         ; $542e: $04
    db $fd                                        ; $542f: $fd
    inc b                                         ; $5430: $04
    ld a, [$fa0e]                                 ; $5431: $fa $0e $fa
    rst $38                                       ; $5434: $ff
    ld c, $f2                                     ; $5435: $0e $f2
    ld e, $4f                                     ; $5437: $1e $4f
    ld a, b                                       ; $5439: $78
    rst $00                                       ; $543a: $c7
    ld a, a                                       ; $543b: $7f
    ldh [$df], a                                  ; $543c: $e0 $df
    ccf                                           ; $543e: $3f
    jr jr_076_5460                                ; $543f: $18 $1f

    rlca                                          ; $5441: $07
    rlca                                          ; $5442: $07
    ld [c], a                                     ; $5443: $e2
    add h                                         ; $5444: $84
    ld h, e                                       ; $5445: $63
    cp a                                          ; $5446: $bf
    rst $38                                       ; $5447: $ff
    ld [c], a                                     ; $5448: $e2
    ld a, a                                       ; $5449: $7f
    jp $83fe                                      ; $544a: $c3 $fe $83


    cp $03                                        ; $544d: $fe $03
    rst $38                                       ; $544f: $ff
    sbc h                                         ; $5450: $9c
    and $a0                                       ; $5451: $e6 $a0
    or d                                          ; $5453: $b2
    add b                                         ; $5454: $80

jr_076_5455:
    rrca                                          ; $5455: $0f
    ldh a, [$1f]                                  ; $5456: $f0 $1f
    ld l, c                                       ; $5458: $69
    pop hl                                        ; $5459: $e1
    or a                                          ; $545a: $b7
    add e                                         ; $545b: $83
    rst $38                                       ; $545c: $ff
    rst $38                                       ; $545d: $ff
    rst $38                                       ; $545e: $ff
    add e                                         ; $545f: $83

jr_076_5460:
    nop                                           ; $5460: $00
    rst $00                                       ; $5461: $c7
    ret nz                                        ; $5462: $c0

    daa                                           ; $5463: $27
    ldh [rNR44], a                                ; $5464: $e0 $23
    rst $30                                       ; $5466: $f7
    ldh [$38], a                                  ; $5467: $e0 $38
    ldh [$2d], a                                  ; $5469: $e0 $2d
    pop hl                                        ; $546b: $e1
    rst $38                                       ; $546c: $ff
    rst $38                                       ; $546d: $ff
    ld [hl], l                                    ; $546e: $75
    ld bc, $f65f                                  ; $546f: $01 $5f $f6
    inc bc                                        ; $5472: $03
    db $e4                                        ; $5473: $e4
    rlca                                          ; $5474: $07
    inc b                                         ; $5475: $04
    cp $e0                                        ; $5476: $fe $e0
    rst $38                                       ; $5478: $ff
    ret nc                                        ; $5479: $d0

    pop bc                                        ; $547a: $c1
    rst $20                                       ; $547b: $e7
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    ldh a, [$c3]                                  ; $547e: $f0 $c3
    ret nz                                        ; $5480: $c0

    ld a, l                                       ; $5481: $7d
    add b                                         ; $5482: $80
    inc bc                                        ; $5483: $03
    rst $38                                       ; $5484: $ff
    db $fc                                        ; $5485: $fc
    cp $f9                                        ; $5486: $fe $f9
    ret nz                                        ; $5488: $c0

jr_076_5489:
    rst $38                                       ; $5489: $ff
    rst $38                                       ; $548a: $ff
    db $fd                                        ; $548b: $fd
    rst $00                                       ; $548c: $c7
    cp $43                                        ; $548d: $fe $43
    rst $38                                       ; $548f: $ff
    ld sp, hl                                     ; $5490: $f9
    pop bc                                        ; $5491: $c1
    sub $e0                                       ; $5492: $d6 $e0
    ld [hl], h                                    ; $5494: $74
    db $e3                                        ; $5495: $e3
    rst $38                                       ; $5496: $ff
    db $e3                                        ; $5497: $e3
    cp $07                                        ; $5498: $fe $07
    db $fc                                        ; $549a: $fc
    adc a                                         ; $549b: $8f
    rra                                           ; $549c: $1f
    ld hl, sp-$1d                                 ; $549d: $f8 $e3
    ldh [$c6], a                                  ; $549f: $e0 $c6
    add h                                         ; $54a1: $84
    or b                                          ; $54a2: $b0
    ldh [$d0], a                                  ; $54a3: $e0 $d0
    adc d                                         ; $54a5: $8a
    rst $38                                       ; $54a6: $ff
    db $e4                                        ; $54a7: $e4
    and a                                         ; $54a8: $a7
    ret nz                                        ; $54a9: $c0

    cp $e8                                        ; $54aa: $fe $e8
    dec b                                         ; $54ac: $05
    ldh [$86], a                                  ; $54ad: $e0 $86
    xor b                                         ; $54af: $a8
    add l                                         ; $54b0: $85
    di                                            ; $54b1: $f3
    ld bc, $fe07                                  ; $54b2: $01 $07 $fe
    ld [$65e0], a                                 ; $54b5: $ea $e0 $65
    ld bc, $0175                                  ; $54b8: $01 $75 $01
    push af                                       ; $54bb: $f5
    ld bc, $fbe5                                  ; $54bc: $01 $e5 $fb
    ld bc, $0001                                  ; $54bf: $01 $01 $00
    db $e3                                        ; $54c2: $e3
    ld c, $1f                                     ; $54c3: $0e $1f
    dec d                                         ; $54c5: $15

jr_076_54c6:
    rst $38                                       ; $54c6: $ff
    ld [de], a                                    ; $54c7: $12
    cp a                                          ; $54c8: $bf
    rra                                           ; $54c9: $1f
    dec d                                         ; $54ca: $15
    rra                                           ; $54cb: $1f
    ld [de], a                                    ; $54cc: $12
    ld a, a                                       ; $54cd: $7f
    ld de, $e050                                  ; $54ce: $11 $50 $e0
    ccf                                           ; $54d1: $3f
    cp $93                                        ; $54d2: $fe $93
    db $e3                                        ; $54d4: $e3
    ret nz                                        ; $54d5: $c0

    ld a, a                                       ; $54d6: $7f
    db $e3                                        ; $54d7: $e3
    cp a                                          ; $54d8: $bf
    db $ec                                        ; $54d9: $ec

jr_076_54da:
    ld a, a                                       ; $54da: $7f
    db $fc                                        ; $54db: $fc
    rst $38                                       ; $54dc: $ff
    ld hl, sp+$2f                                 ; $54dd: $f8 $2f
    cp $7d                                        ; $54df: $fe $7d
    rst $10                                       ; $54e1: $d7
    rst $38                                       ; $54e2: $ff
    sub e                                         ; $54e3: $93
    cp $f5                                        ; $54e4: $fe $f5
    xor e                                         ; $54e6: $ab
    rla                                           ; $54e7: $17
    add c                                         ; $54e8: $81
    ld a, a                                       ; $54e9: $7f
    ld a, [c]                                     ; $54ea: $f2
    ld h, e                                       ; $54eb: $63
    jr nz, jr_076_54c6                            ; $54ec: $20 $d8

    ld a, b                                       ; $54ee: $78
    xor l                                         ; $54ef: $ad
    ld a, a                                       ; $54f0: $7f
    db $fc                                        ; $54f1: $fc
    call nc, $eafc                                ; $54f2: $d4 $fc $ea
    cp $46                                        ; $54f5: $fe $46
    cp $3e                                        ; $54f7: $fe $3e
    add h                                         ; $54f9: $84
    ld a, [hl]                                    ; $54fa: $7e
    or $a0                                        ; $54fb: $f6 $a0
    ldh a, [$1f]                                  ; $54fd: $f0 $1f
    ld hl, sp+$7f                                 ; $54ff: $f8 $7f
    cp $af                                        ; $5501: $fe $af
    jr jr_076_5489                                ; $5503: $18 $84

    rst $38                                       ; $5505: $ff
    db $fc                                        ; $5506: $fc
    inc bc                                        ; $5507: $03
    rst $38                                       ; $5508: $ff
    inc e                                         ; $5509: $1c
    rst $38                                       ; $550a: $ff
    ld a, $eb                                     ; $550b: $3e $eb
    ld a, a                                       ; $550d: $7f
    cp c                                          ; $550e: $b9
    ret                                           ; $550f: $c9


    db $10                                        ; $5510: $10
    xor b                                         ; $5511: $a8
    cp b                                          ; $5512: $b8
    add b                                         ; $5513: $80
    ld a, b                                       ; $5514: $78
    ret nz                                        ; $5515: $c0

    ld a, a                                       ; $5516: $7f
    ld [de], a                                    ; $5517: $12
    pop bc                                        ; $5518: $c1
    jr nz, jr_076_54da                            ; $5519: $20 $bf

    ld a, a                                       ; $551b: $7f
    ld b, c                                       ; $551c: $41
    ld a, a                                       ; $551d: $7f
    ld b, c                                       ; $551e: $41
    rst $38                                       ; $551f: $ff

jr_076_5520:
    ld b, c                                       ; $5520: $41
    push de                                       ; $5521: $d5
    add b                                         ; $5522: $80
    jr nz, jr_076_559c                            ; $5523: $20 $77

    rst $38                                       ; $5525: $ff
    ccf                                           ; $5526: $3f
    rst $38                                       ; $5527: $ff
    or [hl]                                       ; $5528: $b6
    and c                                         ; $5529: $a1
    ld sp, hl                                     ; $552a: $f9
    rst $38                                       ; $552b: $ff
    ld a, c                                       ; $552c: $79
    ld d, [hl]                                    ; $552d: $56
    and b                                         ; $552e: $a0
    rst $38                                       ; $552f: $ff
    add b                                         ; $5530: $80
    rst $38                                       ; $5531: $ff
    add d                                         ; $5532: $82
    rst $38                                       ; $5533: $ff
    rst $20                                       ; $5534: $e7
    rst $38                                       ; $5535: $ff
    push bc                                       ; $5536: $c5
    rst $38                                       ; $5537: $ff
    rst $30                                       ; $5538: $f7
    ld l, a                                       ; $5539: $6f
    rst $38                                       ; $553a: $ff
    ld h, c                                       ; $553b: $61
    db $ec                                        ; $553c: $ec
    and d                                         ; $553d: $a2
    ld bc, $7fff                                  ; $553e: $01 $ff $7f
    add e                                         ; $5541: $83
    rst $38                                       ; $5542: $ff
    cp $c3                                        ; $5543: $fe $c3
    cp $a7                                        ; $5545: $fe $a7
    db $fc                                        ; $5547: $fc
    rst $00                                       ; $5548: $c7
    db $fc                                        ; $5549: $fc
    db $e4                                        ; $554a: $e4
    rst $10                                       ; $554b: $d7
    cp h                                          ; $554c: $bc
    rst $38                                       ; $554d: $ff
    sbc h                                         ; $554e: $9c
    add h                                         ; $554f: $84
    and b                                         ; $5550: $a0
    sub b                                         ; $5551: $90
    ld c, b                                       ; $5552: $48
    pop hl                                        ; $5553: $e1
    rst $20                                       ; $5554: $e7
    ld [bc], a                                    ; $5555: $02
    rst $30                                       ; $5556: $f7
    inc bc                                        ; $5557: $03
    ld [bc], a                                    ; $5558: $02
    rlca                                          ; $5559: $07
    jr c, jr_076_5520                             ; $555a: $38 $c4

    db $fc                                        ; $555c: $fc
    ld e, a                                       ; $555d: $5f
    db $fd                                        ; $555e: $fd
    daa                                           ; $555f: $27
    rst $28                                       ; $5560: $ef
    ld a, [$ff1f]                                 ; $5561: $fa $1f $ff
    rlca                                          ; $5564: $07
    sub c                                         ; $5565: $91
    ldh [rNR23], a                                ; $5566: $e0 $18
    rst $38                                       ; $5568: $ff
    inc a                                         ; $5569: $3c
    rst $28                                       ; $556a: $ef
    rst $38                                       ; $556b: $ff
    inc a                                         ; $556c: $3c
    ld a, a                                       ; $556d: $7f
    push de                                       ; $556e: $d5
    sbc b                                         ; $556f: $98
    jp $12ff                                      ; $5570: $c3 $ff $12


    rst $38                                       ; $5573: $ff
    db $fd                                        ; $5574: $fd
    ld [hl], c                                    ; $5575: $71
    ld [hl], $61                                  ; $5576: $36 $61
    jp Jump_000_37c0                              ; $5578: $c3 $c0 $37


    ldh a, [rVBK]                                 ; $557b: $f0 $4f
    ld hl, sp-$01                                 ; $557d: $f8 $ff
    adc e                                         ; $557f: $8b
    ld hl, sp-$7c                                 ; $5580: $f8 $84
    db $fc                                        ; $5582: $fc
    adc a                                         ; $5583: $8f
    db $fc                                        ; $5584: $fc
    rst $18                                       ; $5585: $df
    db $f4                                        ; $5586: $f4
    cp [hl]                                       ; $5587: $be
    cp $a0                                        ; $5588: $fe $a0
    db $10                                        ; $558a: $10
    rst $38                                       ; $558b: $ff
    add hl, bc                                    ; $558c: $09
    cp $0f                                        ; $558d: $fe $0f
    ld e, [hl]                                    ; $558f: $5e
    and e                                         ; $5590: $a3
    ld hl, sp-$02                                 ; $5591: $f8 $fe
    ld hl, sp-$20                                 ; $5593: $f8 $e0
    rst $38                                       ; $5595: $ff
    db $e3                                        ; $5596: $e3
    ccf                                           ; $5597: $3f
    pop hl                                        ; $5598: $e1
    ccf                                           ; $5599: $3f
    ldh a, [$2f]                                  ; $559a: $f0 $2f

jr_076_559c:
    cp a                                          ; $559c: $bf
    db $fc                                        ; $559d: $fc
    inc de                                        ; $559e: $13
    cp $09                                        ; $559f: $fe $09
    rst $38                                       ; $55a1: $ff
    ld b, $21                                     ; $55a2: $06 $21
    ld h, d                                       ; $55a4: $62
    rst $20                                       ; $55a5: $e7
    rst $38                                       ; $55a6: $ff
    ei                                            ; $55a7: $fb
    adc a                                         ; $55a8: $8f
    ld [hl], e                                    ; $55a9: $73
    cp $77                                        ; $55aa: $fe $77
    db $fd                                        ; $55ac: $fd
    rrca                                          ; $55ad: $0f
    ld sp, hl                                     ; $55ae: $f9
    ld e, $5f                                     ; $55af: $1e $5f
    ldh [$a1], a                                  ; $55b1: $e0 $a1
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    sub b                                         ; $55b5: $90
    cp [hl]                                       ; $55b6: $be
    add b                                         ; $55b7: $80
    and [hl]                                      ; $55b8: $a6
    and c                                         ; $55b9: $a1
    ld h, b                                       ; $55ba: $60
    and a                                         ; $55bb: $a7
    add sp, -$02                                  ; $55bc: $e8 $fe
    pop hl                                        ; $55be: $e1
    cp [hl]                                       ; $55bf: $be
    and e                                         ; $55c0: $a3
    ld e, $c1                                     ; $55c1: $1e $c1
    jr z, jr_076_5607                             ; $55c3: $28 $42

    and b                                         ; $55c5: $a0
    ld sp, $31ff                                  ; $55c6: $31 $ff $31
    rst $38                                       ; $55c9: $ff
    rst $18                                       ; $55ca: $df
    ld a, b                                       ; $55cb: $78
    adc a                                         ; $55cc: $8f
    cp $0b                                        ; $55cd: $fe $0b
    rst $38                                       ; $55cf: $ff
    dec c                                         ; $55d0: $0d
    rst $38                                       ; $55d1: $ff
    ld a, [$e28a]                                 ; $55d2: $fa $8a $e2
    jr nz, @+$2e                                  ; $55d5: $20 $2c

    ldh [rIE], a                                  ; $55d7: $e0 $ff
    cp $3b                                        ; $55d9: $fe $3b
    db $fd                                        ; $55db: $fd
    rlca                                          ; $55dc: $07
    rst $28                                       ; $55dd: $ef
    ld a, [$ffff]                                 ; $55de: $fa $ff $ff
    jp nz, $a08a                                  ; $55e1: $c2 $8a $a0

    ld b, d                                       ; $55e4: $42
    rst $38                                       ; $55e5: $ff
    add h                                         ; $55e6: $84
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    add h                                         ; $55e9: $84
    ld a, a                                       ; $55ea: $7f
    ret z                                         ; $55eb: $c8

    ccf                                           ; $55ec: $3f
    add sp, -$61                                  ; $55ed: $e8 $9f
    ldh a, [rIE]                                  ; $55ef: $f0 $ff
    ld hl, sp+$0f                                 ; $55f1: $f8 $0f
    cp $07                                        ; $55f3: $fe $07
    rst $38                                       ; $55f5: $ff
    dec b                                         ; $55f6: $05
    rlca                                          ; $55f7: $07
    inc b                                         ; $55f8: $04
    dec e                                         ; $55f9: $1d
    rst $30                                       ; $55fa: $f7
    dec c                                         ; $55fb: $0d
    pop bc                                        ; $55fc: $c1
    ld [bc], a                                    ; $55fd: $02
    ld h, l                                       ; $55fe: $65
    ld bc, $43ad                                  ; $55ff: $01 $ad $43
    ld [hl], $61                                  ; $5602: $36 $61
    sbc b                                         ; $5604: $98
    ld b, e                                       ; $5605: $43
    pop bc                                        ; $5606: $c1

jr_076_5607:
    ld b, c                                       ; $5607: $41
    and $80                                       ; $5608: $e6 $80
    and b                                         ; $560a: $a0
    add b                                         ; $560b: $80
    ld h, [hl]                                    ; $560c: $66
    and c                                         ; $560d: $a1
    xor b                                         ; $560e: $a8
    ld b, e                                       ; $560f: $43
    ret nz                                        ; $5610: $c0

    jp z, $80b8                                   ; $5611: $ca $b8 $80

    db $fd                                        ; $5614: $fd
    db $fd                                        ; $5615: $fd
    and [hl]                                      ; $5616: $a6
    add d                                         ; $5617: $82
    ld [$ff0f], sp                                ; $5618: $08 $0f $ff
    rrca                                          ; $561b: $0f

jr_076_561c:
    rrca                                          ; $561c: $0f
    ld [$0f9f], sp                                ; $561d: $08 $9f $0f
    ld [$0667], sp                                ; $5620: $08 $67 $06

jr_076_5623:
    ld [bc], a                                    ; $5623: $02
    ld l, e                                       ; $5624: $6b
    ld b, h                                       ; $5625: $44
    jp nc, Jump_076_4045                          ; $5626: $d2 $45 $40

    db $d3                                        ; $5629: $d3
    rst $38                                       ; $562a: $ff
    and b                                         ; $562b: $a0
    and a                                         ; $562c: $a7
    ret nz                                        ; $562d: $c0

    or a                                          ; $562e: $b7

jr_076_562f:
    and b                                         ; $562f: $a0
    ld hl, sp-$25                                 ; $5630: $f8 $db
    add b                                         ; $5632: $80
    ld h, b                                       ; $5633: $60
    rst $38                                       ; $5634: $ff
    di                                            ; $5635: $f3
    ld d, b                                       ; $5636: $50
    cp a                                          ; $5637: $bf
    sbc b                                         ; $5638: $98
    and b                                         ; $5639: $a0
    ld d, b                                       ; $563a: $50
    ld b, b                                       ; $563b: $40
    add b                                         ; $563c: $80

jr_076_563d:
    push hl                                       ; $563d: $e5
    ld b, b                                       ; $563e: $40
    db $ec                                        ; $563f: $ec
    rst $38                                       ; $5640: $ff
    jr nz, jr_076_562f                            ; $5641: $20 $ec

    jr nz, jr_076_563d                            ; $5643: $20 $f8

    jr nz, jr_076_56be                            ; $5645: $20 $77

    ld [bc], a                                    ; $5647: $02
    rst $30                                       ; $5648: $f7
    rrca                                          ; $5649: $0f
    inc b                                         ; $564a: $04
    rst $20                                       ; $564b: $e7
    dec b                                         ; $564c: $05
    ld b, $90                                     ; $564d: $06 $90
    and a                                         ; $564f: $a7
    sbc h                                         ; $5650: $9c
    ret nz                                        ; $5651: $c0

    xor e                                         ; $5652: $ab
    ld b, e                                       ; $5653: $43
    ret z                                         ; $5654: $c8

    call nz, Call_000_018d                        ; $5655: $c4 $8d $01
    ld a, [hl+]                                   ; $5658: $2a
    add b                                         ; $5659: $80
    rst $38                                       ; $565a: $ff
    ld c, b                                       ; $565b: $48
    ld a, [hl-]                                   ; $565c: $3a
    ld h, b                                       ; $565d: $60
    daa                                           ; $565e: $27
    ld b, c                                       ; $565f: $41
    ld d, b                                       ; $5660: $50
    and l                                         ; $5661: $a5
    inc de                                        ; $5662: $13
    rst $28                                       ; $5663: $ef
    ldh a, [rNR23]                                ; $5664: $f0 $18
    ldh a, [rIE]                                  ; $5666: $f0 $ff
    sbc [hl]                                      ; $5668: $9e
    add c                                         ; $5669: $81
    rst $38                                       ; $566a: $ff
    ld [hl], a                                    ; $566b: $77
    inc bc                                        ; $566c: $03
    ld l, [hl]                                    ; $566d: $6e
    ret nz                                        ; $566e: $c0

    ldh [rTAC], a                                 ; $566f: $e0 $07
    ld [bc], a                                    ; $5671: $02
    inc bc                                        ; $5672: $03
    ld d, b                                       ; $5673: $50
    and [hl]                                      ; $5674: $a6
    nop                                           ; $5675: $00
    rst $38                                       ; $5676: $ff
    jr nz, jr_076_5623                            ; $5677: $20 $aa

    ld [hl], $f2                                  ; $5679: $36 $f2
    jr nz, jr_076_561c                            ; $567b: $20 $9f

    ldh a, [$c0]                                  ; $567d: $f0 $c0
    add sp, -$3d                                  ; $567f: $e8 $c3
    ld b, b                                       ; $5681: $40
    ret nz                                        ; $5682: $c0

    db $eb                                        ; $5683: $eb
    ldh a, [$2c]                                  ; $5684: $f0 $2c
    ld bc, $00ff                                  ; $5686: $01 $ff $00
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    db $db                                        ; $568b: $db
    ld d, [hl]                                    ; $568c: $56
    ld c, c                                       ; $568d: $49
    ld d, a                                       ; $568e: $57
    call z, Call_000_3a57                         ; $568f: $cc $57 $3a
    ld e, b                                       ; $5692: $58
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    cp a                                          ; $569b: $bf
    ld e, b                                       ; $569c: $58
    dec hl                                        ; $569d: $2b
    ld e, c                                       ; $569e: $59
    sub l                                         ; $569f: $95
    ld e, c                                       ; $56a0: $59
    rst $38                                       ; $56a1: $ff
    ld e, c                                       ; $56a2: $59
    nop                                           ; $56a3: $00
    nop                                           ; $56a4: $00
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    ld e, a                                       ; $56ab: $5f
    ld e, d                                       ; $56ac: $5a
    call z, Call_000_3c5a                         ; $56ad: $cc $5a $3c
    ld e, e                                       ; $56b0: $5b
    xor c                                         ; $56b1: $a9
    ld e, e                                       ; $56b2: $5b
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    dec de                                        ; $56bb: $1b
    ld e, h                                       ; $56bc: $5c
    adc b                                         ; $56bd: $88

jr_076_56be:
    ld e, h                                       ; $56be: $5c
    push af                                       ; $56bf: $f5
    ld e, h                                       ; $56c0: $5c
    ld h, d                                       ; $56c1: $62
    ld e, l                                       ; $56c2: $5d
    db $d3                                        ; $56c3: $d3
    ld e, l                                       ; $56c4: $5d
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    nop                                           ; $56c8: $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    ld b, b                                       ; $56cb: $40
    ld e, [hl]                                    ; $56cc: $5e
    sbc a                                         ; $56cd: $9f
    ld e, [hl]                                    ; $56ce: $5e
    cp $5e                                        ; $56cf: $fe $5e
    ld e, e                                       ; $56d1: $5b
    ld e, a                                       ; $56d2: $5f
    nop                                           ; $56d3: $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    ret                                           ; $56db: $c9


    dec c                                         ; $56dc: $0d
    rst $38                                       ; $56dd: $ff
    rst $38                                       ; $56de: $ff
    db $e3                                        ; $56df: $e3
    ld [c], a                                     ; $56e0: $e2
    dec l                                         ; $56e1: $2d
    rst $30                                       ; $56e2: $f7
    xor $cc                                       ; $56e3: $ee $cc
    jp hl                                         ; $56e5: $e9


    ld c, l                                       ; $56e6: $4d
    ld c, l                                       ; $56e7: $4d
    db $fd                                        ; $56e8: $fd
    ld c, l                                       ; $56e9: $4d
    ld sp, hl                                     ; $56ea: $f9
    db $e4                                        ; $56eb: $e4
    ld [bc], a                                    ; $56ec: $02
    inc bc                                        ; $56ed: $03
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    ld bc, $01ff                                  ; $56f1: $01 $ff $01
    ld bc, $0504                                  ; $56f4: $01 $04 $05
    dec bc                                        ; $56f7: $0b
    inc c                                         ; $56f8: $0c
    rlca                                          ; $56f9: $07
    rlca                                          ; $56fa: $07
    rst $38                                       ; $56fb: $ff
    rlca                                          ; $56fc: $07
    ld b, $06                                     ; $56fd: $06 $06
    ld b, $0d                                     ; $56ff: $06 $0d
    ld c, $0b                                     ; $5701: $0e $0b
    ld b, $ff                                     ; $5703: $06 $ff
    rla                                           ; $5705: $17
    rlca                                          ; $5706: $07
    rrca                                          ; $5707: $0f
    db $10                                        ; $5708: $10
    ld de, $0718                                  ; $5709: $11 $18 $07
    ld c, $ff                                     ; $570c: $0e $ff
    ld [hl+], a                                   ; $570e: $22
    ld b, $0c                                     ; $570f: $06 $0c
    add hl, de                                    ; $5711: $19
    ld a, [de]                                    ; $5712: $1a
    dec de                                        ; $5713: $1b
    inc e                                         ; $5714: $1c
    dec c                                         ; $5715: $0d
    rst $38                                       ; $5716: $ff
    rlca                                          ; $5717: $07
    inc hl                                        ; $5718: $23
    ld c, $2c                                     ; $5719: $0e $2c
    ld b, $24                                     ; $571b: $06 $24
    dec h                                         ; $571d: $25
    ld h, $ff                                     ; $571e: $26 $ff
    daa                                           ; $5720: $27
    rlca                                          ; $5721: $07
    dec l                                         ; $5722: $2d
    dec bc                                        ; $5723: $0b
    scf                                           ; $5724: $37
    rlca                                          ; $5725: $07
    inc l                                         ; $5726: $2c
    ld l, $ff                                     ; $5727: $2e $ff
    cpl                                           ; $5729: $2f
    jr nc, jr_076_575d                            ; $572a: $30 $31

    dec l                                         ; $572c: $2d
    ld b, $38                                     ; $572d: $06 $38
    dec bc                                        ; $572f: $0b
    ld b, c                                       ; $5730: $41
    rst $38                                       ; $5731: $ff
    ld b, d                                       ; $5732: $42
    add hl, sp                                    ; $5733: $39
    ld a, [hl-]                                   ; $5734: $3a
    dec sp                                        ; $5735: $3b
    inc a                                         ; $5736: $3c
    ld b, e                                       ; $5737: $43
    ld b, h                                       ; $5738: $44
    ld c, $ff                                     ; $5739: $0e $ff
    ld [bc], a                                    ; $573b: $02
    ld bc, $4501                                  ; $573c: $01 $01 $45
    ld b, [hl]                                    ; $573f: $46
    ld b, a                                       ; $5740: $47
    ld c, b                                       ; $5741: $48
    nop                                           ; $5742: $00
    inc bc                                        ; $5743: $03
    nop                                           ; $5744: $00
    dec b                                         ; $5745: $05
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    sub a                                         ; $5749: $97
    dec l                                         ; $574a: $2d
    dec l                                         ; $574b: $2d
    dec c                                         ; $574c: $0d
    rst $38                                       ; $574d: $ff
    ld [c], a                                     ; $574e: $e2
    dec l                                         ; $574f: $2d
    rst $38                                       ; $5750: $ff
    ldh [$f6], a                                  ; $5751: $e0 $f6
    and $0d                                       ; $5753: $e6 $0d
    nop                                           ; $5755: $00
    db $eb                                        ; $5756: $eb
    ld [c], a                                     ; $5757: $e2
    ld sp, hl                                     ; $5758: $f9
    ldh [$f6], a                                  ; $5759: $e0 $f6
    rst $20                                       ; $575b: $e7
    db $ed                                        ; $575c: $ed

jr_076_575d:
    db $e3                                        ; $575d: $e3
    push af                                       ; $575e: $f5
    add sp, -$1e                                  ; $575f: $e8 $e2
    pop hl                                        ; $5761: $e1
    jp $c5e3                                      ; $5762: $c3 $e3 $c5


    ldh [$f7], a                                  ; $5765: $e0 $f7
    ld l, l                                       ; $5767: $6d
    ld c, l                                       ; $5768: $4d
    ld c, l                                       ; $5769: $4d
    cp c                                          ; $576a: $b9
    pop hl                                        ; $576b: $e1
    ld c, l                                       ; $576c: $4d
    ld c, l                                       ; $576d: $4d
    ld l, l                                       ; $576e: $6d
    dec b                                         ; $576f: $05
    rst $38                                       ; $5770: $ff
    inc b                                         ; $5771: $04
    ld bc, $0101                                  ; $5772: $01 $01 $01
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    inc bc                                        ; $5778: $03
    rst $38                                       ; $5779: $ff
    ld [bc], a                                    ; $577a: $02
    ld c, $0d                                     ; $577b: $0e $0d
    ld b, $06                                     ; $577d: $06 $06
    ld b, $07                                     ; $577f: $06 $07
    rlca                                          ; $5781: $07
    rst $38                                       ; $5782: $ff
    rlca                                          ; $5783: $07
    inc c                                         ; $5784: $0c
    dec bc                                        ; $5785: $0b
    ld c, $07                                     ; $5786: $0e $07
    jr @+$08                                      ; $5788: $18 $06

    ld b, $ff                                     ; $578a: $06 $ff
    ld c, l                                       ; $578c: $4d
    rlca                                          ; $578d: $07
    rla                                           ; $578e: $17
    ld b, $0b                                     ; $578f: $06 $0b
    inc hl                                        ; $5791: $23
    rlca                                          ; $5792: $07
    dec c                                         ; $5793: $0d
    rst $38                                       ; $5794: $ff
    ld b, $52                                     ; $5795: $06 $52
    ld d, e                                       ; $5797: $53
    ld d, h                                       ; $5798: $54
    inc c                                         ; $5799: $0c
    ld b, $22                                     ; $579a: $06 $22
    dec bc                                        ; $579c: $0b
    rst $38                                       ; $579d: $ff
    dec l                                         ; $579e: $2d
    rlca                                          ; $579f: $07
    ld e, c                                       ; $57a0: $59
    ld e, d                                       ; $57a1: $5a
    ld e, e                                       ; $57a2: $5b
    ld e, h                                       ; $57a3: $5c
    ld b, $2c                                     ; $57a4: $06 $2c
    rst $38                                       ; $57a6: $ff
    ld c, $38                                     ; $57a7: $0e $38
    ld b, $2d                                     ; $57a9: $06 $2d
    ld h, c                                       ; $57ab: $61
    ld h, d                                       ; $57ac: $62
    ld h, e                                       ; $57ad: $63
    ld h, h                                       ; $57ae: $64
    rst $38                                       ; $57af: $ff
    inc l                                         ; $57b0: $2c
    rlca                                          ; $57b1: $07
    scf                                           ; $57b2: $37
    ld c, $44                                     ; $57b3: $0e $44
    ld b, e                                       ; $57b5: $43
    ld l, b                                       ; $57b6: $68
    ld l, c                                       ; $57b7: $69
    rst $38                                       ; $57b8: $ff
    ld l, d                                       ; $57b9: $6a
    ld l, e                                       ; $57ba: $6b
    ld b, d                                       ; $57bb: $42
    ld b, c                                       ; $57bc: $41
    dec bc                                        ; $57bd: $0b
    dec b                                         ; $57be: $05
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    ld a, a                                       ; $57c1: $7f
    ld l, a                                       ; $57c2: $6f
    ld b, [hl]                                    ; $57c3: $46
    ld [hl], b                                    ; $57c4: $70
    ld [hl], c                                    ; $57c5: $71
    ld bc, $0201                                  ; $57c6: $01 $01 $02
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    ret                                           ; $57cc: $c9


    dec c                                         ; $57cd: $0d
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    db $e3                                        ; $57d0: $e3
    ld [c], a                                     ; $57d1: $e2
    dec l                                         ; $57d2: $2d
    rst $30                                       ; $57d3: $f7
    xor $cc                                       ; $57d4: $ee $cc
    jp hl                                         ; $57d6: $e9


    ld c, l                                       ; $57d7: $4d
    ld c, l                                       ; $57d8: $4d
    db $fd                                        ; $57d9: $fd
    ld c, l                                       ; $57da: $4d
    ld sp, hl                                     ; $57db: $f9
    db $e4                                        ; $57dc: $e4
    ld [bc], a                                    ; $57dd: $02
    inc bc                                        ; $57de: $03
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    ld bc, $01ff                                  ; $57e2: $01 $ff $01

Jump_076_57e5:
    ld bc, $0504                                  ; $57e5: $01 $04 $05
    dec bc                                        ; $57e8: $0b
    inc c                                         ; $57e9: $0c
    rlca                                          ; $57ea: $07
    rlca                                          ; $57eb: $07
    rst $38                                       ; $57ec: $ff
    ld [$0a09], sp                                ; $57ed: $08 $09 $0a
    ld b, $0d                                     ; $57f0: $06 $0d
    ld c, $0b                                     ; $57f2: $0e $0b
    ld b, $ff                                     ; $57f4: $06 $ff
    rla                                           ; $57f6: $17
    ld [de], a                                    ; $57f7: $12
    inc de                                        ; $57f8: $13
    inc d                                         ; $57f9: $14
    dec d                                         ; $57fa: $15
    ld d, $07                                     ; $57fb: $16 $07
    ld c, $ff                                     ; $57fd: $0e $ff
    ld [hl+], a                                   ; $57ff: $22
    ld b, $0c                                     ; $5800: $06 $0c
    dec e                                         ; $5802: $1d
    ld e, $1f                                     ; $5803: $1e $1f
    jr nz, jr_076_5828                            ; $5805: $20 $21

    rst $38                                       ; $5807: $ff
    rlca                                          ; $5808: $07
    inc hl                                        ; $5809: $23
    ld c, $2c                                     ; $580a: $0e $2c
    ld b, $28                                     ; $580c: $06 $28
    add hl, hl                                    ; $580e: $29
    ld a, [hl+]                                   ; $580f: $2a
    rst $38                                       ; $5810: $ff
    dec hl                                        ; $5811: $2b
    rlca                                          ; $5812: $07
    dec l                                         ; $5813: $2d
    dec bc                                        ; $5814: $0b
    scf                                           ; $5815: $37
    rlca                                          ; $5816: $07
    inc l                                         ; $5817: $2c
    ld [hl-], a                                   ; $5818: $32
    rst $38                                       ; $5819: $ff
    inc sp                                        ; $581a: $33
    inc [hl]                                      ; $581b: $34
    dec [hl]                                      ; $581c: $35
    ld [hl], $06                                  ; $581d: $36 $06
    jr c, jr_076_582c                             ; $581f: $38 $0b

    ld b, c                                       ; $5821: $41
    rst $38                                       ; $5822: $ff
    ld b, d                                       ; $5823: $42
    dec a                                         ; $5824: $3d
    ld a, $18                                     ; $5825: $3e $18
    ccf                                           ; $5827: $3f

jr_076_5828:
    ld b, b                                       ; $5828: $40
    ld b, h                                       ; $5829: $44
    ld c, $ff                                     ; $582a: $0e $ff

jr_076_582c:
    ld [bc], a                                    ; $582c: $02
    ld bc, $4901                                  ; $582d: $01 $01 $49
    ld c, d                                       ; $5830: $4a
    ld c, e                                       ; $5831: $4b
    ld c, h                                       ; $5832: $4c
    nop                                           ; $5833: $00
    inc bc                                        ; $5834: $03
    nop                                           ; $5835: $00
    dec b                                         ; $5836: $05
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    sub a                                         ; $583a: $97
    dec l                                         ; $583b: $2d
    dec l                                         ; $583c: $2d
    dec c                                         ; $583d: $0d
    rst $38                                       ; $583e: $ff
    ld [c], a                                     ; $583f: $e2
    dec l                                         ; $5840: $2d
    rst $38                                       ; $5841: $ff
    ldh [$f6], a                                  ; $5842: $e0 $f6
    and $0d                                       ; $5844: $e6 $0d
    nop                                           ; $5846: $00
    db $eb                                        ; $5847: $eb
    ld [c], a                                     ; $5848: $e2
    ld sp, hl                                     ; $5849: $f9
    ldh [$f6], a                                  ; $584a: $e0 $f6
    rst $20                                       ; $584c: $e7
    db $ed                                        ; $584d: $ed
    db $e3                                        ; $584e: $e3
    push af                                       ; $584f: $f5
    db $e4                                        ; $5850: $e4
    call z, $e2e1                                 ; $5851: $cc $e1 $e2
    pop hl                                        ; $5854: $e1
    call z, $eee3                                 ; $5855: $cc $e3 $ee
    push bc                                       ; $5858: $c5
    ldh [$6d], a                                  ; $5859: $e0 $6d
    ld c, l                                       ; $585b: $4d
    ld c, l                                       ; $585c: $4d
    cp c                                          ; $585d: $b9
    pop hl                                        ; $585e: $e1
    ld c, l                                       ; $585f: $4d
    ld c, l                                       ; $5860: $4d
    ld l, l                                       ; $5861: $6d
    rst $38                                       ; $5862: $ff
    dec b                                         ; $5863: $05
    inc b                                         ; $5864: $04
    ld bc, $0101                                  ; $5865: $01 $01 $01
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    rst $38                                       ; $586b: $ff
    inc bc                                        ; $586c: $03
    ld [bc], a                                    ; $586d: $02
    ld c, $0d                                     ; $586e: $0e $0d
    ld b, $06                                     ; $5870: $06 $06
    ld b, $07                                     ; $5872: $06 $07
    rst $38                                       ; $5874: $ff
    rlca                                          ; $5875: $07
    rlca                                          ; $5876: $07
    inc c                                         ; $5877: $0c
    dec bc                                        ; $5878: $0b
    ld c, $07                                     ; $5879: $0e $07
    jr jr_076_58cb                                ; $587b: $18 $4e

    rst $38                                       ; $587d: $ff
    ld c, a                                       ; $587e: $4f
    ld d, b                                       ; $587f: $50
    ld d, c                                       ; $5880: $51
    rla                                           ; $5881: $17
    ld b, $0b                                     ; $5882: $06 $0b
    inc hl                                        ; $5884: $23
    rlca                                          ; $5885: $07
    rst $38                                       ; $5886: $ff
    dec c                                         ; $5887: $0d
    ld d, l                                       ; $5888: $55
    ld d, [hl]                                    ; $5889: $56
    ld d, a                                       ; $588a: $57
    ld e, b                                       ; $588b: $58
    inc c                                         ; $588c: $0c
    ld b, $22                                     ; $588d: $06 $22
    rst $38                                       ; $588f: $ff
    dec bc                                        ; $5890: $0b
    dec l                                         ; $5891: $2d
    rlca                                          ; $5892: $07
    ld e, l                                       ; $5893: $5d
    ld e, [hl]                                    ; $5894: $5e
    ld e, a                                       ; $5895: $5f
    ld h, b                                       ; $5896: $60
    ld b, $ff                                     ; $5897: $06 $ff
    inc l                                         ; $5899: $2c
    ld c, $38                                     ; $589a: $0e $38
    ld b, $2d                                     ; $589c: $06 $2d
    dec c                                         ; $589e: $0d
    ld h, l                                       ; $589f: $65
    ld h, [hl]                                    ; $58a0: $66
    rst $38                                       ; $58a1: $ff
    ld h, a                                       ; $58a2: $67
    inc l                                         ; $58a3: $2c
    rlca                                          ; $58a4: $07
    scf                                           ; $58a5: $37
    ld c, $44                                     ; $58a6: $0e $44
    ld b, e                                       ; $58a8: $43
    dec l                                         ; $58a9: $2d
    rst $38                                       ; $58aa: $ff
    ld l, h                                       ; $58ab: $6c
    ld l, l                                       ; $58ac: $6d
    ld l, [hl]                                    ; $58ad: $6e
    ld b, d                                       ; $58ae: $42
    ld b, c                                       ; $58af: $41
    dec bc                                        ; $58b0: $0b
    dec b                                         ; $58b1: $05
    nop                                           ; $58b2: $00
    rst $38                                       ; $58b3: $ff
    nop                                           ; $58b4: $00
    ld l, a                                       ; $58b5: $6f
    ld b, [hl]                                    ; $58b6: $46
    ld [hl], d                                    ; $58b7: $72
    ld [hl], e                                    ; $58b8: $73
    ld bc, $0201                                  ; $58b9: $01 $01 $02
    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    rlca                                          ; $58bf: $07
    dec c                                         ; $58c0: $0d
    dec c                                         ; $58c1: $0d
    dec l                                         ; $58c2: $2d
    cp $e0                                        ; $58c3: $fe $e0
    ld a, [$fbe0]                                 ; $58c5: $fa $e0 $fb
    ldh [$f6], a                                  ; $58c8: $e0 $f6
    jp hl                                         ; $58ca: $e9


jr_076_58cb:
    add sp, -$1e                                  ; $58cb: $e8 $e2
    ret nz                                        ; $58cd: $c0

    push hl                                       ; $58ce: $e5
    db $e3                                        ; $58cf: $e3
    db $dd                                        ; $58d0: $dd
    db $e3                                        ; $58d1: $e3
    or $e7                                        ; $58d2: $f6 $e7
    db $eb                                        ; $58d4: $eb
    push hl                                       ; $58d5: $e5
    or $e9                                        ; $58d6: $f6 $e9
    ret c                                         ; $58d8: $d8

    and $02                                       ; $58d9: $e6 $02
    nop                                           ; $58db: $00
    ld a, [hl]                                    ; $58dc: $7e
    rst $38                                       ; $58dd: $ff
    pop hl                                        ; $58de: $e1
    ld bc, $0000                                  ; $58df: $01 $00 $00
    ld [bc], a                                    ; $58e2: $02
    add hl, bc                                    ; $58e3: $09
    inc b                                         ; $58e4: $04
    rst $38                                       ; $58e5: $ff
    ldh [rIE], a                                  ; $58e6: $e0 $ff
    dec b                                         ; $58e8: $05
    ld b, $04                                     ; $58e9: $06 $04
    inc b                                         ; $58eb: $04
    add hl, bc                                    ; $58ec: $09
    ld de, $0a0a                                  ; $58ed: $11 $0a $0a
    rst $30                                       ; $58f0: $f7
    ld a, [bc]                                    ; $58f1: $0a
    dec bc                                        ; $58f2: $0b
    inc c                                         ; $58f3: $0c
    ei                                            ; $58f4: $fb
    ldh [rNR11], a                                ; $58f5: $e0 $11
    add hl, de                                    ; $58f7: $19
    inc b                                         ; $58f8: $04
    inc b                                         ; $58f9: $04
    rst $38                                       ; $58fa: $ff
    ld [de], a                                    ; $58fb: $12
    inc de                                        ; $58fc: $13
    inc d                                         ; $58fd: $14
    dec d                                         ; $58fe: $15
    inc b                                         ; $58ff: $04
    inc b                                         ; $5900: $04
    add hl, de                                    ; $5901: $19
    ld hl, $0aff                                  ; $5902: $21 $ff $0a
    ld a, [bc]                                    ; $5905: $0a
    ld a, [de]                                    ; $5906: $1a
    dec de                                        ; $5907: $1b
    inc e                                         ; $5908: $1c
    dec e                                         ; $5909: $1d
    ld a, [bc]                                    ; $590a: $0a
    ld a, [bc]                                    ; $590b: $0a
    cp l                                          ; $590c: $bd
    ld hl, $e0d8                                  ; $590d: $21 $d8 $e0
    ld [hl+], a                                   ; $5910: $22
    inc hl                                        ; $5911: $23
    inc h                                         ; $5912: $24
    dec h                                         ; $5913: $25
    ret c                                         ; $5914: $d8

    db $e3                                        ; $5915: $e3
    ld a, [hl+]                                   ; $5916: $2a
    rst $30                                       ; $5917: $f7
    dec hl                                        ; $5918: $2b
    inc l                                         ; $5919: $2c
    dec l                                         ; $591a: $2d
    ret c                                         ; $591b: $d8

    ldh [$38], a                                  ; $591c: $e0 $38
    dec [hl]                                      ; $591e: $35
    dec [hl]                                      ; $591f: $35
    ld [hl-], a                                   ; $5920: $32
    ccf                                           ; $5921: $3f
    inc sp                                        ; $5922: $33
    inc [hl]                                      ; $5923: $34
    dec [hl]                                      ; $5924: $35
    dec [hl]                                      ; $5925: $35
    dec [hl]                                      ; $5926: $35
    jr c, jr_076_5929                             ; $5927: $38 $00

jr_076_5929:
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    rla                                           ; $592b: $17
    dec c                                         ; $592c: $0d
    dec c                                         ; $592d: $0d
    dec l                                         ; $592e: $2d
    cp $e3                                        ; $592f: $fe $e3
    dec l                                         ; $5931: $2d
    or $e3                                        ; $5932: $f6 $e3
    ldh a, [$e0]                                  ; $5934: $f0 $e0
    or $e2                                        ; $5936: $f6 $e2
    add b                                         ; $5938: $80
    rst $38                                       ; $5939: $ff
    pop hl                                        ; $593a: $e1
    db $ec                                        ; $593b: $ec
    ldh [$f7], a                                  ; $593c: $e0 $f7
    db $e4                                        ; $593e: $e4
    push hl                                       ; $593f: $e5
    db $e4                                        ; $5940: $e4
    db $dd                                        ; $5941: $dd
    db $e4                                        ; $5942: $e4
    ld [c], a                                     ; $5943: $e2
    and $d8                                       ; $5944: $e6 $d8
    ldh a, [rSC]                                  ; $5946: $f0 $02
    db $dd                                        ; $5948: $dd
    nop                                           ; $5949: $00
    rst $38                                       ; $594a: $ff
    db $e4                                        ; $594b: $e4
    ld [bc], a                                    ; $594c: $02
    add hl, bc                                    ; $594d: $09
    inc b                                         ; $594e: $04
    rst $38                                       ; $594f: $ff
    ldh [rTAC], a                                 ; $5950: $e0 $07
    ld [$04ff], sp                                ; $5952: $08 $ff $04
    inc b                                         ; $5955: $04
    add hl, bc                                    ; $5956: $09
    ld de, $0a0a                                  ; $5957: $11 $0a $0a
    dec c                                         ; $595a: $0d
    ld c, $ff                                     ; $595b: $0e $ff
    rrca                                          ; $595d: $0f
    db $10                                        ; $595e: $10
    ld a, [bc]                                    ; $595f: $0a
    ld a, [bc]                                    ; $5960: $0a
    ld de, $0419                                  ; $5961: $11 $19 $04
    inc b                                         ; $5964: $04
    rst $30                                       ; $5965: $f7
    ld d, $17                                     ; $5966: $16 $17
    jr @-$17                                      ; $5968: $18 $e7

    ldh [rNR24], a                                ; $596a: $e0 $19
    ld hl, $0a0a                                  ; $596c: $21 $0a $0a
    ld a, a                                       ; $596f: $7f
    ld e, $1f                                     ; $5970: $1e $1f
    jr nz, jr_076_597e                            ; $5972: $20 $0a

    ld a, [bc]                                    ; $5974: $0a
    ld a, [bc]                                    ; $5975: $0a
    ld hl, $e0d8                                  ; $5976: $21 $d8 $e0
    rst $28                                       ; $5979: $ef
    ld h, $27                                     ; $597a: $26 $27
    jr z, jr_076_59a7                             ; $597c: $28 $29

jr_076_597e:
    ret c                                         ; $597e: $d8

    db $e3                                        ; $597f: $e3
    ld l, $2f                                     ; $5980: $2e $2f
    jr nc, @-$01                                  ; $5982: $30 $fd

    ld sp, $e0d8                                  ; $5984: $31 $d8 $e0
    jr c, jr_076_59be                             ; $5987: $38 $35

    dec [hl]                                      ; $5989: $35
    ld [hl], $37                                  ; $598a: $36 $37
    inc [hl]                                      ; $598c: $34
    rrca                                          ; $598d: $0f
    dec [hl]                                      ; $598e: $35
    dec [hl]                                      ; $598f: $35
    dec [hl]                                      ; $5990: $35
    jr c, jr_076_5993                             ; $5991: $38 $00

jr_076_5993:
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    rla                                           ; $5995: $17
    dec c                                         ; $5996: $0d
    dec c                                         ; $5997: $0d
    dec l                                         ; $5998: $2d
    cp $e3                                        ; $5999: $fe $e3
    dec l                                         ; $599b: $2d
    or $eb                                        ; $599c: $f6 $eb
    rst $38                                       ; $599e: $ff
    pop hl                                        ; $599f: $e1
    db $ec                                        ; $59a0: $ec
    ldh [$80], a                                  ; $59a1: $e0 $80
    rst $30                                       ; $59a3: $f7
    db $e4                                        ; $59a4: $e4
    db $db                                        ; $59a5: $db
    ld [c], a                                     ; $59a6: $e2

jr_076_59a7:
    or $e5                                        ; $59a7: $f6 $e5
    ld [c], a                                     ; $59a9: $e2
    ld [c], a                                     ; $59aa: $e2
    ret c                                         ; $59ab: $d8

    rst $20                                       ; $59ac: $e7
    call nz, $d8e2                                ; $59ad: $c4 $e2 $d8
    and $02                                       ; $59b0: $e6 $02
    db $fd                                        ; $59b2: $fd
    nop                                           ; $59b3: $00
    rst $38                                       ; $59b4: $ff
    db $e4                                        ; $59b5: $e4
    ld [bc], a                                    ; $59b6: $02
    add hl, bc                                    ; $59b7: $09
    inc b                                         ; $59b8: $04
    inc b                                         ; $59b9: $04
    inc b                                         ; $59ba: $04
    dec [hl]                                      ; $59bb: $35
    db $fd                                        ; $59bc: $fd
    add hl, sp                                    ; $59bd: $39

jr_076_59be:
    ei                                            ; $59be: $fb
    ldh [$09], a                                  ; $59bf: $e0 $09
    ld de, $0a0a                                  ; $59c1: $11 $0a $0a
    ld a, [hl-]                                   ; $59c4: $3a
    dec sp                                        ; $59c5: $3b
    rst $38                                       ; $59c6: $ff
    inc a                                         ; $59c7: $3c
    dec a                                         ; $59c8: $3d
    ld a, [bc]                                    ; $59c9: $0a
    ld a, [bc]                                    ; $59ca: $0a
    ld de, $0419                                  ; $59cb: $11 $19 $04
    inc b                                         ; $59ce: $04
    rst $38                                       ; $59cf: $ff
    ld b, c                                       ; $59d0: $41
    ld b, d                                       ; $59d1: $42
    ld b, e                                       ; $59d2: $43
    ld b, h                                       ; $59d3: $44
    inc b                                         ; $59d4: $04
    inc b                                         ; $59d5: $04
    add hl, de                                    ; $59d6: $19
    ld hl, $0aff                                  ; $59d7: $21 $ff $0a
    ld a, [bc]                                    ; $59da: $0a
    ld c, b                                       ; $59db: $48
    ld c, c                                       ; $59dc: $49
    ld c, d                                       ; $59dd: $4a
    ld c, e                                       ; $59de: $4b
    ld a, [bc]                                    ; $59df: $0a
    ld a, [bc]                                    ; $59e0: $0a
    db $dd                                        ; $59e1: $dd
    ld hl, $e0d8                                  ; $59e2: $21 $d8 $e0
    ld d, b                                       ; $59e5: $50
    ld d, c                                       ; $59e6: $51
    ld d, d                                       ; $59e7: $52
    ret c                                         ; $59e8: $d8

    db $e4                                        ; $59e9: $e4
    ld d, a                                       ; $59ea: $57
    ld e, b                                       ; $59eb: $58
    ei                                            ; $59ec: $fb
    ld e, c                                       ; $59ed: $59
    ld a, [bc]                                    ; $59ee: $0a
    ret c                                         ; $59ef: $d8

    ldh [$38], a                                  ; $59f0: $e0 $38
    dec [hl]                                      ; $59f2: $35
    dec [hl]                                      ; $59f3: $35
    ld e, l                                       ; $59f4: $5d
    ld e, [hl]                                    ; $59f5: $5e
    rra                                           ; $59f6: $1f
    ld e, a                                       ; $59f7: $5f
    dec [hl]                                      ; $59f8: $35
    dec [hl]                                      ; $59f9: $35
    dec [hl]                                      ; $59fa: $35
    jr c, jr_076_59fd                             ; $59fb: $38 $00

jr_076_59fd:
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    rla                                           ; $59ff: $17
    dec c                                         ; $5a00: $0d
    dec c                                         ; $5a01: $0d
    dec l                                         ; $5a02: $2d
    cp $e3                                        ; $5a03: $fe $e3
    dec l                                         ; $5a05: $2d
    or $eb                                        ; $5a06: $f6 $eb
    add sp, -$1e                                  ; $5a08: $e8 $e2
    push hl                                       ; $5a0a: $e5
    pop hl                                        ; $5a0b: $e1
    ld h, b                                       ; $5a0c: $60
    rst $38                                       ; $5a0d: $ff
    pop hl                                        ; $5a0e: $e1
    db $dd                                        ; $5a0f: $dd
    db $e3                                        ; $5a10: $e3
    or $e5                                        ; $5a11: $f6 $e5
    db $eb                                        ; $5a13: $eb
    push hl                                       ; $5a14: $e5
    ret c                                         ; $5a15: $d8

    ld a, [c]                                     ; $5a16: $f2
    ld [bc], a                                    ; $5a17: $02
    nop                                           ; $5a18: $00
    rst $38                                       ; $5a19: $ff
    db $e4                                        ; $5a1a: $e4
    rst $30                                       ; $5a1b: $f7
    ld [bc], a                                    ; $5a1c: $02
    add hl, bc                                    ; $5a1d: $09
    inc b                                         ; $5a1e: $04
    rst $38                                       ; $5a1f: $ff
    db $e4                                        ; $5a20: $e4
    add hl, bc                                    ; $5a21: $09
    ld de, $0a0a                                  ; $5a22: $11 $0a $0a
    rst $38                                       ; $5a25: $ff
    ld a, $3f                                     ; $5a26: $3e $3f
    ld b, b                                       ; $5a28: $40
    ld a, [bc]                                    ; $5a29: $0a
    ld a, [bc]                                    ; $5a2a: $0a
    ld a, [bc]                                    ; $5a2b: $0a
    ld de, $df19                                  ; $5a2c: $11 $19 $df
    inc b                                         ; $5a2f: $04
    inc b                                         ; $5a30: $04
    ld b, l                                       ; $5a31: $45
    ld b, [hl]                                    ; $5a32: $46
    ld b, a                                       ; $5a33: $47
    rst $20                                       ; $5a34: $e7
    ldh [rNR24], a                                ; $5a35: $e0 $19
    ld hl, $0aff                                  ; $5a37: $21 $ff $0a
    ld a, [bc]                                    ; $5a3a: $0a
    ld c, h                                       ; $5a3b: $4c
    ld c, l                                       ; $5a3c: $4d
    ld c, [hl]                                    ; $5a3d: $4e
    ld c, a                                       ; $5a3e: $4f
    ld a, [bc]                                    ; $5a3f: $0a
    ld a, [bc]                                    ; $5a40: $0a
    cp l                                          ; $5a41: $bd
    ld hl, $e0d8                                  ; $5a42: $21 $d8 $e0
    ld d, e                                       ; $5a45: $53
    ld d, h                                       ; $5a46: $54
    ld d, l                                       ; $5a47: $55
    ld d, [hl]                                    ; $5a48: $56
    ret c                                         ; $5a49: $d8

    db $e3                                        ; $5a4a: $e3
    ld e, d                                       ; $5a4b: $5a
    ei                                            ; $5a4c: $fb
    ld e, e                                       ; $5a4d: $5b
    ld e, h                                       ; $5a4e: $5c
    ret c                                         ; $5a4f: $d8

    pop hl                                        ; $5a50: $e1
    jr c, jr_076_5a88                             ; $5a51: $38 $35

    dec [hl]                                      ; $5a53: $35
    ld [hl], $37                                  ; $5a54: $36 $37
    rra                                           ; $5a56: $1f
    inc [hl]                                      ; $5a57: $34
    dec [hl]                                      ; $5a58: $35
    dec [hl]                                      ; $5a59: $35
    dec [hl]                                      ; $5a5a: $35
    jr c, jr_076_5a5d                             ; $5a5b: $38 $00

jr_076_5a5d:
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    cpl                                           ; $5a5f: $2f
    dec c                                         ; $5a60: $0d
    dec c                                         ; $5a61: $0d
    dec l                                         ; $5a62: $2d
    dec c                                         ; $5a63: $0d
    db $fc                                        ; $5a64: $fc
    pop hl                                        ; $5a65: $e1
    dec l                                         ; $5a66: $2d
    db $fd                                        ; $5a67: $fd
    ld [c], a                                     ; $5a68: $e2
    db $fc                                        ; $5a69: $fc
    db $e3                                        ; $5a6a: $e3
    add h                                         ; $5a6b: $84
    rst $28                                       ; $5a6c: $ef
    ldh [$fd], a                                  ; $5a6d: $e0 $fd
    pop hl                                        ; $5a6f: $e1
    dec l                                         ; $5a70: $2d
    rst $28                                       ; $5a71: $ef
    pop hl                                        ; $5a72: $e1
    or $e6                                        ; $5a73: $f6 $e6
    di                                            ; $5a75: $f3
    push hl                                       ; $5a76: $e5
    ld [c], a                                     ; $5a77: $e2
    ld a, [c]                                     ; $5a78: $f2
    ld c, l                                       ; $5a79: $4d
    db $fd                                        ; $5a7a: $fd
    ld c, l                                       ; $5a7b: $4d
    adc $e3                                       ; $5a7c: $ce $e3
    ld l, l                                       ; $5a7e: $6d
    ld l, l                                       ; $5a7f: $6d
    ld [bc], a                                    ; $5a80: $02
    ld bc, $0000                                  ; $5a81: $01 $00 $00
    db $fd                                        ; $5a84: $fd
    ld bc, $e1fc                                  ; $5a85: $01 $fc $e1

jr_076_5a88:
    ld [bc], a                                    ; $5a88: $02
    ld [$0405], sp                                ; $5a89: $08 $05 $04
    inc b                                         ; $5a8c: $04
    dec b                                         ; $5a8d: $05
    cp $fc                                        ; $5a8e: $fe $fc
    pop hl                                        ; $5a90: $e1
    ld [$1413], sp                                ; $5a91: $08 $13 $14
    db $10                                        ; $5a94: $10
    add hl, bc                                    ; $5a95: $09
    ld a, [bc]                                    ; $5a96: $0a
    dec bc                                        ; $5a97: $0b
    rst $38                                       ; $5a98: $ff
    inc c                                         ; $5a99: $0c
    db $10                                        ; $5a9a: $10
    inc d                                         ; $5a9b: $14
    inc de                                        ; $5a9c: $13
    ld hl, $2322                                  ; $5a9d: $21 $22 $23
    dec d                                         ; $5aa0: $15
    cp a                                          ; $5aa1: $bf
    ld d, $17                                     ; $5aa2: $16 $17
    jr @+$25                                      ; $5aa4: $18 $23

    ld [hl+], a                                   ; $5aa6: $22
    ld hl, $e0e2                                  ; $5aa7: $21 $e2 $e0
    inc h                                         ; $5aaa: $24
    rst $30                                       ; $5aab: $f7
    dec h                                         ; $5aac: $25
    ld h, $27                                     ; $5aad: $26 $27
    ld [c], a                                     ; $5aaf: $e2
    db $e3                                        ; $5ab0: $e3
    jr nc, jr_076_5ae4                            ; $5ab1: $30 $31

    ld [hl-], a                                   ; $5ab3: $32
    inc sp                                        ; $5ab4: $33
    sbc $e2                                       ; $5ab5: $de $e2
    db $e3                                        ; $5ab7: $e3
    inc a                                         ; $5ab8: $3c
    dec a                                         ; $5ab9: $3d
    ld a, $3f                                     ; $5aba: $3e $3f
    ld [c], a                                     ; $5abc: $e2
    ldh [rSC], a                                  ; $5abd: $e0 $02
    ld bc, $50ff                                  ; $5abf: $01 $ff $50
    ld c, b                                       ; $5ac2: $48
    ld c, c                                       ; $5ac3: $49
    ld c, d                                       ; $5ac4: $4a
    ld c, e                                       ; $5ac5: $4b
    ld d, b                                       ; $5ac6: $50
    ld bc, $0002                                  ; $5ac7: $01 $02 $00
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    cpl                                           ; $5acc: $2f
    dec c                                         ; $5acd: $0d
    dec c                                         ; $5ace: $0d
    dec l                                         ; $5acf: $2d
    dec c                                         ; $5ad0: $0d
    db $fc                                        ; $5ad1: $fc
    pop hl                                        ; $5ad2: $e1
    dec l                                         ; $5ad3: $2d
    db $fd                                        ; $5ad4: $fd
    ld [c], a                                     ; $5ad5: $e2
    db $fc                                        ; $5ad6: $fc
    db $e3                                        ; $5ad7: $e3
    add h                                         ; $5ad8: $84
    rst $28                                       ; $5ad9: $ef
    ldh [$fd], a                                  ; $5ada: $e0 $fd
    pop hl                                        ; $5adc: $e1
    dec l                                         ; $5add: $2d
    rst $28                                       ; $5ade: $ef
    pop hl                                        ; $5adf: $e1
    or $e6                                        ; $5ae0: $f6 $e6
    di                                            ; $5ae2: $f3
    push hl                                       ; $5ae3: $e5

jr_076_5ae4:
    ld [c], a                                     ; $5ae4: $e2
    ld a, [c]                                     ; $5ae5: $f2
    ld c, l                                       ; $5ae6: $4d
    db $fd                                        ; $5ae7: $fd
    ld c, l                                       ; $5ae8: $4d
    adc $e3                                       ; $5ae9: $ce $e3
    ld l, l                                       ; $5aeb: $6d
    ld l, l                                       ; $5aec: $6d
    ld [bc], a                                    ; $5aed: $02
    ld bc, $0000                                  ; $5aee: $01 $00 $00
    db $fd                                        ; $5af1: $fd
    ld bc, $e1fc                                  ; $5af2: $01 $fc $e1
    ld [bc], a                                    ; $5af5: $02
    ld [$0405], sp                                ; $5af6: $08 $05 $04
    ld b, $07                                     ; $5af9: $06 $07
    rst $38                                       ; $5afb: $ff
    dec b                                         ; $5afc: $05
    inc b                                         ; $5afd: $04
    inc b                                         ; $5afe: $04
    dec b                                         ; $5aff: $05
    ld [$1413], sp                                ; $5b00: $08 $13 $14
    db $10                                        ; $5b03: $10
    rst $38                                       ; $5b04: $ff
    dec c                                         ; $5b05: $0d
    ld c, $0f                                     ; $5b06: $0e $0f
    db $10                                        ; $5b08: $10
    db $10                                        ; $5b09: $10
    inc d                                         ; $5b0a: $14
    inc de                                        ; $5b0b: $13
    ld hl, $22ff                                  ; $5b0c: $21 $ff $22
    inc hl                                        ; $5b0f: $23
    add hl, de                                    ; $5b10: $19
    ld a, [de]                                    ; $5b11: $1a
    dec de                                        ; $5b12: $1b
    inc e                                         ; $5b13: $1c
    inc hl                                        ; $5b14: $23
    ld [hl+], a                                   ; $5b15: $22
    cp l                                          ; $5b16: $bd
    ld hl, $e0e2                                  ; $5b17: $21 $e2 $e0
    jr z, jr_076_5b45                             ; $5b1a: $28 $29

    ld a, [hl+]                                   ; $5b1c: $2a
    dec hl                                        ; $5b1d: $2b
    ld [c], a                                     ; $5b1e: $e2
    db $e3                                        ; $5b1f: $e3
    inc [hl]                                      ; $5b20: $34
    rst $30                                       ; $5b21: $f7
    dec [hl]                                      ; $5b22: $35
    ld [hl], $37                                  ; $5b23: $36 $37
    ld [c], a                                     ; $5b25: $e2
    db $e3                                        ; $5b26: $e3
    ld b, b                                       ; $5b27: $40
    ld b, c                                       ; $5b28: $41
    ld b, d                                       ; $5b29: $42
    ld b, e                                       ; $5b2a: $43
    cp $e2                                        ; $5b2b: $fe $e2
    ldh [rSC], a                                  ; $5b2d: $e0 $02
    ld bc, $4850                                  ; $5b2f: $01 $50 $48
    ld c, h                                       ; $5b32: $4c
    ld c, d                                       ; $5b33: $4a
    ld c, e                                       ; $5b34: $4b
    rlca                                          ; $5b35: $07
    ld d, b                                       ; $5b36: $50
    ld bc, $0002                                  ; $5b37: $01 $02 $00
    nop                                           ; $5b3a: $00
    nop                                           ; $5b3b: $00
    cpl                                           ; $5b3c: $2f
    dec c                                         ; $5b3d: $0d
    dec c                                         ; $5b3e: $0d
    dec l                                         ; $5b3f: $2d
    dec c                                         ; $5b40: $0d
    db $fc                                        ; $5b41: $fc
    pop hl                                        ; $5b42: $e1
    dec l                                         ; $5b43: $2d
    db $fd                                        ; $5b44: $fd

jr_076_5b45:
    ld [c], a                                     ; $5b45: $e2
    db $fc                                        ; $5b46: $fc
    db $e3                                        ; $5b47: $e3
    add h                                         ; $5b48: $84
    rst $28                                       ; $5b49: $ef
    ldh [$fd], a                                  ; $5b4a: $e0 $fd
    pop hl                                        ; $5b4c: $e1
    dec l                                         ; $5b4d: $2d
    rst $28                                       ; $5b4e: $ef
    pop hl                                        ; $5b4f: $e1
    or $e6                                        ; $5b50: $f6 $e6
    di                                            ; $5b52: $f3
    push hl                                       ; $5b53: $e5
    ld [c], a                                     ; $5b54: $e2
    ld a, [c]                                     ; $5b55: $f2
    ld c, l                                       ; $5b56: $4d
    db $fd                                        ; $5b57: $fd
    ld c, l                                       ; $5b58: $4d
    adc $e3                                       ; $5b59: $ce $e3
    ld l, l                                       ; $5b5b: $6d
    ld l, l                                       ; $5b5c: $6d
    ld [bc], a                                    ; $5b5d: $02
    ld bc, $0000                                  ; $5b5e: $01 $00 $00
    db $fd                                        ; $5b61: $fd
    ld bc, $e1fc                                  ; $5b62: $01 $fc $e1
    ld [bc], a                                    ; $5b65: $02
    ld [$0405], sp                                ; $5b66: $08 $05 $04
    inc b                                         ; $5b69: $04
    dec b                                         ; $5b6a: $05
    cp $fc                                        ; $5b6b: $fe $fc
    pop hl                                        ; $5b6d: $e1
    ld [$1413], sp                                ; $5b6e: $08 $13 $14
    db $10                                        ; $5b71: $10
    db $10                                        ; $5b72: $10
    ld de, $ff12                                  ; $5b73: $11 $12 $ff
    db $10                                        ; $5b76: $10
    db $10                                        ; $5b77: $10
    inc d                                         ; $5b78: $14
    inc de                                        ; $5b79: $13
    ld hl, $2322                                  ; $5b7a: $21 $22 $23
    dec e                                         ; $5b7d: $1d
    cp a                                          ; $5b7e: $bf
    ld e, $1f                                     ; $5b7f: $1e $1f
    jr nz, @+$25                                  ; $5b81: $20 $23

    ld [hl+], a                                   ; $5b83: $22
    ld hl, $e0e2                                  ; $5b84: $21 $e2 $e0
    inc l                                         ; $5b87: $2c
    rst $30                                       ; $5b88: $f7
    dec l                                         ; $5b89: $2d
    ld l, $2f                                     ; $5b8a: $2e $2f
    ld [c], a                                     ; $5b8c: $e2
    db $e3                                        ; $5b8d: $e3
    jr c, @+$3b                                   ; $5b8e: $38 $39

    ld a, [hl-]                                   ; $5b90: $3a
    dec sp                                        ; $5b91: $3b
    sbc $e2                                       ; $5b92: $de $e2
    db $e3                                        ; $5b94: $e3
    ld b, h                                       ; $5b95: $44
    ld b, l                                       ; $5b96: $45
    ld b, [hl]                                    ; $5b97: $46
    ld b, a                                       ; $5b98: $47
    ld [c], a                                     ; $5b99: $e2
    ldh [rSC], a                                  ; $5b9a: $e0 $02
    ld bc, $50ff                                  ; $5b9c: $01 $ff $50
    ld c, l                                       ; $5b9f: $4d
    ld c, [hl]                                    ; $5ba0: $4e
    ld c, a                                       ; $5ba1: $4f
    ld c, e                                       ; $5ba2: $4b
    ld d, b                                       ; $5ba3: $50
    ld bc, $0002                                  ; $5ba4: $01 $02 $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    cpl                                           ; $5ba9: $2f
    dec c                                         ; $5baa: $0d
    dec c                                         ; $5bab: $0d
    dec l                                         ; $5bac: $2d
    dec c                                         ; $5bad: $0d
    db $fc                                        ; $5bae: $fc
    pop hl                                        ; $5baf: $e1
    dec l                                         ; $5bb0: $2d
    db $fd                                        ; $5bb1: $fd
    ld [c], a                                     ; $5bb2: $e2
    db $fc                                        ; $5bb3: $fc
    db $e3                                        ; $5bb4: $e3
    nop                                           ; $5bb5: $00
    rst $28                                       ; $5bb6: $ef
    ldh [$ea], a                                  ; $5bb7: $e0 $ea
    db $e3                                        ; $5bb9: $e3
    push hl                                       ; $5bba: $e5
    db $e3                                        ; $5bbb: $e3
    ld [$e2e1], a                                 ; $5bbc: $ea $e1 $e2
    db $e3                                        ; $5bbf: $e3
    rst $20                                       ; $5bc0: $e7
    push hl                                       ; $5bc1: $e5
    rst $30                                       ; $5bc2: $f7
    db $e3                                        ; $5bc3: $e3
    ld [c], a                                     ; $5bc4: $e2
    push hl                                       ; $5bc5: $e5
    or $c4                                        ; $5bc6: $f6 $c4
    ldh [rKEY1], a                                ; $5bc8: $e0 $4d
    ld c, l                                       ; $5bca: $4d
    cp c                                          ; $5bcb: $b9
    db $e3                                        ; $5bcc: $e3
    ld l, l                                       ; $5bcd: $6d
    ld l, l                                       ; $5bce: $6d
    ld [bc], a                                    ; $5bcf: $02
    ld bc, $00f7                                  ; $5bd0: $01 $f7 $00
    nop                                           ; $5bd3: $00
    ld bc, $e1fc                                  ; $5bd4: $01 $fc $e1
    ld [bc], a                                    ; $5bd7: $02
    ld [$0405], sp                                ; $5bd8: $08 $05 $04
    ei                                            ; $5bdb: $fb
    inc b                                         ; $5bdc: $04
    dec b                                         ; $5bdd: $05
    db $fc                                        ; $5bde: $fc
    pop hl                                        ; $5bdf: $e1
    ld [$1413], sp                                ; $5be0: $08 $13 $14
    db $10                                        ; $5be3: $10
    db $10                                        ; $5be4: $10
    db $fd                                        ; $5be5: $fd
    inc d                                         ; $5be6: $14
    db $fc                                        ; $5be7: $fc
    pop hl                                        ; $5be8: $e1
    inc de                                        ; $5be9: $13
    ld hl, $2322                                  ; $5bea: $21 $22 $23
    inc hl                                        ; $5bed: $23
    ld d, c                                       ; $5bee: $51
    rst $18                                       ; $5bef: $df
    ld d, d                                       ; $5bf0: $52
    ld d, e                                       ; $5bf1: $53
    inc hl                                        ; $5bf2: $23
    ld [hl+], a                                   ; $5bf3: $22
    ld hl, $e0e2                                  ; $5bf4: $21 $e2 $e0
    ld d, h                                       ; $5bf7: $54
    ld d, l                                       ; $5bf8: $55
    ei                                            ; $5bf9: $fb
    ld d, [hl]                                    ; $5bfa: $56
    ld d, a                                       ; $5bfb: $57
    ld [c], a                                     ; $5bfc: $e2
    db $e3                                        ; $5bfd: $e3
    ld e, b                                       ; $5bfe: $58
    ld e, c                                       ; $5bff: $59
    ld e, d                                       ; $5c00: $5a
    ld e, e                                       ; $5c01: $5b
    ld e, h                                       ; $5c02: $5c
    cp $e2                                        ; $5c03: $fe $e2
    db $e3                                        ; $5c05: $e3
    ld e, l                                       ; $5c06: $5d
    ld e, [hl]                                    ; $5c07: $5e
    ld e, a                                       ; $5c08: $5f
    ld h, b                                       ; $5c09: $60
    ld [hl+], a                                   ; $5c0a: $22
    ld hl, $ff02                                  ; $5c0b: $21 $02 $ff
    ld bc, $5050                                  ; $5c0e: $01 $50 $50
    ld h, c                                       ; $5c11: $61
    ld h, d                                       ; $5c12: $62
    ld h, e                                       ; $5c13: $63
    ld d, b                                       ; $5c14: $50
    ld bc, $0201                                  ; $5c15: $01 $01 $02
    nop                                           ; $5c18: $00
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    cpl                                           ; $5c1b: $2f
    dec c                                         ; $5c1c: $0d
    dec c                                         ; $5c1d: $0d
    dec l                                         ; $5c1e: $2d
    dec c                                         ; $5c1f: $0d
    db $fc                                        ; $5c20: $fc
    pop hl                                        ; $5c21: $e1
    dec l                                         ; $5c22: $2d
    db $fd                                        ; $5c23: $fd
    ld [c], a                                     ; $5c24: $e2
    db $fc                                        ; $5c25: $fc
    db $e3                                        ; $5c26: $e3
    add h                                         ; $5c27: $84
    rst $28                                       ; $5c28: $ef
    ldh [$fd], a                                  ; $5c29: $e0 $fd
    pop hl                                        ; $5c2b: $e1
    dec l                                         ; $5c2c: $2d
    rst $28                                       ; $5c2d: $ef
    pop hl                                        ; $5c2e: $e1
    or $e6                                        ; $5c2f: $f6 $e6
    di                                            ; $5c31: $f3
    push hl                                       ; $5c32: $e5
    ld [c], a                                     ; $5c33: $e2
    ld a, [c]                                     ; $5c34: $f2
    ld c, l                                       ; $5c35: $4d
    db $fd                                        ; $5c36: $fd
    ld c, l                                       ; $5c37: $4d
    adc $e3                                       ; $5c38: $ce $e3
    ld l, l                                       ; $5c3a: $6d
    ld l, l                                       ; $5c3b: $6d
    ld a, [hl+]                                   ; $5c3c: $2a
    ld bc, $0000                                  ; $5c3d: $01 $00 $00
    db $fd                                        ; $5c40: $fd
    ld bc, $e1fc                                  ; $5c41: $01 $fc $e1
    ld a, [hl+]                                   ; $5c44: $2a
    inc l                                         ; $5c45: $2c
    inc bc                                        ; $5c46: $03
    ld [bc], a                                    ; $5c47: $02
    ld [bc], a                                    ; $5c48: $02
    inc bc                                        ; $5c49: $03
    cp $fc                                        ; $5c4a: $fe $fc
    pop hl                                        ; $5c4c: $e1
    inc l                                         ; $5c4d: $2c
    jr nc, @+$33                                  ; $5c4e: $30 $31

    rlca                                          ; $5c50: $07
    inc b                                         ; $5c51: $04
    dec b                                         ; $5c52: $05
    ld b, $ff                                     ; $5c53: $06 $ff
    rlca                                          ; $5c55: $07
    rlca                                          ; $5c56: $07
    ld sp, $3630                                  ; $5c57: $31 $30 $36
    scf                                           ; $5c5a: $37
    jr c, jr_076_5c67                             ; $5c5b: $38 $0a

    cp a                                          ; $5c5d: $bf
    dec bc                                        ; $5c5e: $0b
    inc c                                         ; $5c5f: $0c
    dec c                                         ; $5c60: $0d
    jr c, jr_076_5c9a                             ; $5c61: $38 $37

    ld [hl], $e2                                  ; $5c63: $36 $e2
    ldh [rNR14], a                                ; $5c65: $e0 $14

jr_076_5c67:
    rst $30                                       ; $5c67: $f7
    dec d                                         ; $5c68: $15
    ld d, $17                                     ; $5c69: $16 $17
    ld [c], a                                     ; $5c6b: $e2
    db $e3                                        ; $5c6c: $e3
    ld e, $1f                                     ; $5c6d: $1e $1f
    jr nz, jr_076_5c92                            ; $5c6f: $20 $21

    sbc $e2                                       ; $5c71: $de $e2
    db $e3                                        ; $5c73: $e3
    ld [hl+], a                                   ; $5c74: $22
    inc hl                                        ; $5c75: $23
    inc h                                         ; $5c76: $24
    dec h                                         ; $5c77: $25
    ld [c], a                                     ; $5c78: $e2
    ldh [$2a], a                                  ; $5c79: $e0 $2a
    ld bc, $41ff                                  ; $5c7b: $01 $ff $41
    ld h, $27                                     ; $5c7e: $26 $27
    jr z, @+$2b                                   ; $5c80: $28 $29

    ld b, c                                       ; $5c82: $41
    ld bc, $002a                                  ; $5c83: $01 $2a $00
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    cpl                                           ; $5c88: $2f
    dec c                                         ; $5c89: $0d
    dec c                                         ; $5c8a: $0d
    dec l                                         ; $5c8b: $2d
    dec c                                         ; $5c8c: $0d
    db $fc                                        ; $5c8d: $fc
    pop hl                                        ; $5c8e: $e1
    dec l                                         ; $5c8f: $2d
    db $fd                                        ; $5c90: $fd
    ld [c], a                                     ; $5c91: $e2

jr_076_5c92:
    db $fc                                        ; $5c92: $fc
    db $e3                                        ; $5c93: $e3
    add h                                         ; $5c94: $84
    rst $28                                       ; $5c95: $ef
    ldh [$fd], a                                  ; $5c96: $e0 $fd
    pop hl                                        ; $5c98: $e1
    dec l                                         ; $5c99: $2d

jr_076_5c9a:
    rst $28                                       ; $5c9a: $ef
    pop hl                                        ; $5c9b: $e1
    or $e6                                        ; $5c9c: $f6 $e6
    di                                            ; $5c9e: $f3
    push hl                                       ; $5c9f: $e5
    ld [c], a                                     ; $5ca0: $e2
    ld a, [c]                                     ; $5ca1: $f2
    ld c, l                                       ; $5ca2: $4d
    db $fd                                        ; $5ca3: $fd
    ld c, l                                       ; $5ca4: $4d
    adc $e3                                       ; $5ca5: $ce $e3
    ld l, l                                       ; $5ca7: $6d
    ld l, l                                       ; $5ca8: $6d
    ld a, [hl+]                                   ; $5ca9: $2a
    ld bc, $0000                                  ; $5caa: $01 $00 $00
    db $fd                                        ; $5cad: $fd
    ld bc, $e1fc                                  ; $5cae: $01 $fc $e1
    ld a, [hl+]                                   ; $5cb1: $2a
    inc l                                         ; $5cb2: $2c
    inc bc                                        ; $5cb3: $03
    ld [bc], a                                    ; $5cb4: $02
    ld [bc], a                                    ; $5cb5: $02
    inc bc                                        ; $5cb6: $03
    cp $fc                                        ; $5cb7: $fe $fc
    pop hl                                        ; $5cb9: $e1
    inc l                                         ; $5cba: $2c
    jr nc, @+$33                                  ; $5cbb: $30 $31

    rlca                                          ; $5cbd: $07
    rlca                                          ; $5cbe: $07
    ld [$ff09], sp                                ; $5cbf: $08 $09 $ff
    rlca                                          ; $5cc2: $07
    rlca                                          ; $5cc3: $07
    ld sp, $3630                                  ; $5cc4: $31 $30 $36
    scf                                           ; $5cc7: $37
    jr c, jr_076_5cd8                             ; $5cc8: $38 $0e

    cp a                                          ; $5cca: $bf
    rrca                                          ; $5ccb: $0f
    db $10                                        ; $5ccc: $10
    ld de, $3738                                  ; $5ccd: $11 $38 $37
    ld [hl], $e2                                  ; $5cd0: $36 $e2
    ldh [rNR23], a                                ; $5cd2: $e0 $18
    rst $30                                       ; $5cd4: $f7
    add hl, de                                    ; $5cd5: $19
    ld a, [de]                                    ; $5cd6: $1a
    dec de                                        ; $5cd7: $1b

jr_076_5cd8:
    ld [c], a                                     ; $5cd8: $e2
    db $e3                                        ; $5cd9: $e3
    ld e, $1f                                     ; $5cda: $1e $1f
    jr nz, jr_076_5cff                            ; $5cdc: $20 $21

    sbc $e2                                       ; $5cde: $de $e2
    db $e3                                        ; $5ce0: $e3
    ld [hl+], a                                   ; $5ce1: $22
    inc hl                                        ; $5ce2: $23
    inc h                                         ; $5ce3: $24
    dec h                                         ; $5ce4: $25
    ld [c], a                                     ; $5ce5: $e2
    ldh [$2a], a                                  ; $5ce6: $e0 $2a
    ld bc, $41ff                                  ; $5ce8: $01 $ff $41
    ld h, $27                                     ; $5ceb: $26 $27
    jr z, @+$2b                                   ; $5ced: $28 $29

    ld b, c                                       ; $5cef: $41
    ld bc, $002a                                  ; $5cf0: $01 $2a $00
    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    cpl                                           ; $5cf5: $2f
    dec c                                         ; $5cf6: $0d
    dec c                                         ; $5cf7: $0d
    dec l                                         ; $5cf8: $2d
    dec c                                         ; $5cf9: $0d
    db $fc                                        ; $5cfa: $fc
    pop hl                                        ; $5cfb: $e1
    dec l                                         ; $5cfc: $2d
    db $fd                                        ; $5cfd: $fd
    ld [c], a                                     ; $5cfe: $e2

jr_076_5cff:
    db $fc                                        ; $5cff: $fc
    db $e3                                        ; $5d00: $e3
    add h                                         ; $5d01: $84
    rst $28                                       ; $5d02: $ef
    ldh [$fd], a                                  ; $5d03: $e0 $fd
    pop hl                                        ; $5d05: $e1
    dec l                                         ; $5d06: $2d
    rst $28                                       ; $5d07: $ef
    pop hl                                        ; $5d08: $e1
    or $e6                                        ; $5d09: $f6 $e6
    di                                            ; $5d0b: $f3
    push hl                                       ; $5d0c: $e5
    ld [c], a                                     ; $5d0d: $e2
    ld a, [c]                                     ; $5d0e: $f2
    ld c, l                                       ; $5d0f: $4d
    db $fd                                        ; $5d10: $fd
    ld c, l                                       ; $5d11: $4d
    adc $e3                                       ; $5d12: $ce $e3
    ld l, l                                       ; $5d14: $6d
    ld l, l                                       ; $5d15: $6d
    ld a, [hl+]                                   ; $5d16: $2a
    ld bc, $0000                                  ; $5d17: $01 $00 $00
    db $fd                                        ; $5d1a: $fd
    ld bc, $e1fc                                  ; $5d1b: $01 $fc $e1
    ld a, [hl+]                                   ; $5d1e: $2a
    inc l                                         ; $5d1f: $2c
    inc bc                                        ; $5d20: $03
    ld [bc], a                                    ; $5d21: $02
    ld [bc], a                                    ; $5d22: $02
    inc bc                                        ; $5d23: $03
    cp $fc                                        ; $5d24: $fe $fc
    pop hl                                        ; $5d26: $e1
    inc l                                         ; $5d27: $2c
    jr nc, @+$33                                  ; $5d28: $30 $31

    rlca                                          ; $5d2a: $07
    inc b                                         ; $5d2b: $04
    dec b                                         ; $5d2c: $05
    ld b, $ff                                     ; $5d2d: $06 $ff
    rlca                                          ; $5d2f: $07
    rlca                                          ; $5d30: $07
    ld sp, $3630                                  ; $5d31: $31 $30 $36
    scf                                           ; $5d34: $37
    jr c, jr_076_5d41                             ; $5d35: $38 $0a

    cp a                                          ; $5d37: $bf
    ld [de], a                                    ; $5d38: $12
    inc de                                        ; $5d39: $13
    dec c                                         ; $5d3a: $0d
    jr c, jr_076_5d74                             ; $5d3b: $38 $37

    ld [hl], $e2                                  ; $5d3d: $36 $e2
    ldh [rNR14], a                                ; $5d3f: $e0 $14

jr_076_5d41:
    rst $30                                       ; $5d41: $f7
    dec d                                         ; $5d42: $15
    ld d, $17                                     ; $5d43: $16 $17
    ld [c], a                                     ; $5d45: $e2
    db $e3                                        ; $5d46: $e3
    ld e, $1f                                     ; $5d47: $1e $1f
    jr nz, jr_076_5d6c                            ; $5d49: $20 $21

    sbc $e2                                       ; $5d4b: $de $e2
    db $e3                                        ; $5d4d: $e3
    ld [hl+], a                                   ; $5d4e: $22
    inc hl                                        ; $5d4f: $23
    inc h                                         ; $5d50: $24
    dec h                                         ; $5d51: $25
    ld [c], a                                     ; $5d52: $e2
    ldh [$2a], a                                  ; $5d53: $e0 $2a
    ld bc, $41ff                                  ; $5d55: $01 $ff $41
    ld h, $27                                     ; $5d58: $26 $27
    jr z, jr_076_5d85                             ; $5d5a: $28 $29

    ld b, c                                       ; $5d5c: $41
    ld bc, $002a                                  ; $5d5d: $01 $2a $00
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    cpl                                           ; $5d62: $2f
    dec c                                         ; $5d63: $0d
    dec c                                         ; $5d64: $0d
    dec l                                         ; $5d65: $2d
    dec c                                         ; $5d66: $0d
    db $fc                                        ; $5d67: $fc
    pop hl                                        ; $5d68: $e1
    dec l                                         ; $5d69: $2d
    db $fd                                        ; $5d6a: $fd
    ld [c], a                                     ; $5d6b: $e2

jr_076_5d6c:
    db $fc                                        ; $5d6c: $fc
    db $e3                                        ; $5d6d: $e3
    nop                                           ; $5d6e: $00
    rst $28                                       ; $5d6f: $ef
    ldh [$f0], a                                  ; $5d70: $e0 $f0
    db $e3                                        ; $5d72: $e3
    push hl                                       ; $5d73: $e5

jr_076_5d74:
    ld [c], a                                     ; $5d74: $e2
    rst $38                                       ; $5d75: $ff
    db $e3                                        ; $5d76: $e3
    ld a, [c]                                     ; $5d77: $f2

jr_076_5d78:
    db $e3                                        ; $5d78: $e3
    ld [c], a                                     ; $5d79: $e2
    push hl                                       ; $5d7a: $e5
    add sp, -$1d                                  ; $5d7b: $e8 $e3
    or $e7                                        ; $5d7d: $f6 $e7
    ei                                            ; $5d7f: $fb
    ld c, l                                       ; $5d80: $4d
    ld c, l                                       ; $5d81: $4d
    db $ec                                        ; $5d82: $ec
    db $e3                                        ; $5d83: $e3
    ld l, l                                       ; $5d84: $6d

jr_076_5d85:
    ld l, l                                       ; $5d85: $6d
    ld a, [hl+]                                   ; $5d86: $2a
    ld bc, $fb00                                  ; $5d87: $01 $00 $fb
    nop                                           ; $5d8a: $00
    ld bc, $e1fc                                  ; $5d8b: $01 $fc $e1
    ld a, [hl+]                                   ; $5d8e: $2a
    inc l                                         ; $5d8f: $2c
    inc bc                                        ; $5d90: $03
    ld [bc], a                                    ; $5d91: $02
    ld [bc], a                                    ; $5d92: $02
    db $fd                                        ; $5d93: $fd
    inc bc                                        ; $5d94: $03
    db $fc                                        ; $5d95: $fc
    pop hl                                        ; $5d96: $e1
    inc l                                         ; $5d97: $2c

jr_076_5d98:
    jr nc, @+$33                                  ; $5d98: $30 $31

    rlca                                          ; $5d9a: $07
    rlca                                          ; $5d9b: $07
    add hl, bc                                    ; $5d9c: $09
    rst $38                                       ; $5d9d: $ff
    ld [$0707], sp                                ; $5d9e: $08 $07 $07
    ld sp, $3630                                  ; $5da1: $31 $30 $36
    scf                                           ; $5da4: $37
    jr c, jr_076_5e26                             ; $5da5: $38 $7f

    ld de, $0f10                                  ; $5da7: $11 $10 $0f
    ld c, $38                                     ; $5daa: $0e $38
    scf                                           ; $5dac: $37
    ld [hl], $e2                                  ; $5dad: $36 $e2
    ldh [$ef], a                                  ; $5daf: $e0 $ef
    dec de                                        ; $5db1: $1b
    inc e                                         ; $5db2: $1c
    dec e                                         ; $5db3: $1d
    jr jr_076_5d98                                ; $5db4: $18 $e2

    db $e3                                        ; $5db6: $e3
    ld e, $1f                                     ; $5db7: $1e $1f
    jr nz, jr_076_5d78                            ; $5db9: $20 $bd

    ld hl, $e3e2                                  ; $5dbb: $21 $e2 $e3
    ld [hl+], a                                   ; $5dbe: $22
    inc hl                                        ; $5dbf: $23
    inc h                                         ; $5dc0: $24
    dec h                                         ; $5dc1: $25
    ld [c], a                                     ; $5dc2: $e2
    ldh [$2a], a                                  ; $5dc3: $e0 $2a
    rst $38                                       ; $5dc5: $ff
    ld bc, $2641                                  ; $5dc6: $01 $41 $26
    daa                                           ; $5dc9: $27
    jr z, jr_076_5df5                             ; $5dca: $28 $29

    ld b, c                                       ; $5dcc: $41
    ld bc, $2a01                                  ; $5dcd: $01 $01 $2a
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    cpl                                           ; $5dd3: $2f
    dec c                                         ; $5dd4: $0d
    dec c                                         ; $5dd5: $0d
    dec l                                         ; $5dd6: $2d
    dec c                                         ; $5dd7: $0d
    db $fc                                        ; $5dd8: $fc
    pop hl                                        ; $5dd9: $e1
    dec l                                         ; $5dda: $2d
    db $fd                                        ; $5ddb: $fd
    ld [c], a                                     ; $5ddc: $e2
    db $fc                                        ; $5ddd: $fc
    db $e3                                        ; $5dde: $e3
    add h                                         ; $5ddf: $84
    rst $28                                       ; $5de0: $ef
    ldh [$fd], a                                  ; $5de1: $e0 $fd
    pop hl                                        ; $5de3: $e1
    dec l                                         ; $5de4: $2d
    rst $28                                       ; $5de5: $ef
    pop hl                                        ; $5de6: $e1
    or $e6                                        ; $5de7: $f6 $e6
    di                                            ; $5de9: $f3
    push hl                                       ; $5dea: $e5
    ld [c], a                                     ; $5deb: $e2
    ld a, [c]                                     ; $5dec: $f2
    ld c, l                                       ; $5ded: $4d
    db $fd                                        ; $5dee: $fd
    ld c, l                                       ; $5def: $4d
    adc $e3                                       ; $5df0: $ce $e3
    ld l, l                                       ; $5df2: $6d
    ld l, l                                       ; $5df3: $6d
    ld a, [hl+]                                   ; $5df4: $2a

jr_076_5df5:
    ld bc, $0000                                  ; $5df5: $01 $00 $00
    db $fd                                        ; $5df8: $fd
    ld bc, $e1fc                                  ; $5df9: $01 $fc $e1
    ld a, [hl+]                                   ; $5dfc: $2a
    inc l                                         ; $5dfd: $2c
    inc bc                                        ; $5dfe: $03
    ld [bc], a                                    ; $5dff: $02
    ld [bc], a                                    ; $5e00: $02
    inc bc                                        ; $5e01: $03
    cp $fc                                        ; $5e02: $fe $fc
    pop hl                                        ; $5e04: $e1
    inc l                                         ; $5e05: $2c
    jr nc, @+$33                                  ; $5e06: $30 $31

    rlca                                          ; $5e08: $07
    rlca                                          ; $5e09: $07
    dec l                                         ; $5e0a: $2d
    ld l, $ff                                     ; $5e0b: $2e $ff
    cpl                                           ; $5e0d: $2f
    rlca                                          ; $5e0e: $07
    ld sp, $3630                                  ; $5e0f: $31 $30 $36
    scf                                           ; $5e12: $37
    jr c, jr_076_5e47                             ; $5e13: $38 $32

    cp a                                          ; $5e15: $bf
    inc sp                                        ; $5e16: $33
    inc [hl]                                      ; $5e17: $34
    dec [hl]                                      ; $5e18: $35
    jr c, @+$39                                   ; $5e19: $38 $37

    ld [hl], $e2                                  ; $5e1b: $36 $e2
    ldh [$39], a                                  ; $5e1d: $e0 $39
    rst $30                                       ; $5e1f: $f7
    ld a, [hl-]                                   ; $5e20: $3a
    dec sp                                        ; $5e21: $3b
    inc a                                         ; $5e22: $3c
    ld [c], a                                     ; $5e23: $e2
    db $e3                                        ; $5e24: $e3
    dec a                                         ; $5e25: $3d

jr_076_5e26:
    ld a, $3f                                     ; $5e26: $3e $3f
    ld b, b                                       ; $5e28: $40
    sbc $e2                                       ; $5e29: $de $e2
    db $e3                                        ; $5e2b: $e3
    ld [hl+], a                                   ; $5e2c: $22
    inc hl                                        ; $5e2d: $23
    inc h                                         ; $5e2e: $24
    dec h                                         ; $5e2f: $25
    ld [c], a                                     ; $5e30: $e2
    ldh [$2a], a                                  ; $5e31: $e0 $2a
    ld bc, $41ff                                  ; $5e33: $01 $ff $41
    ld h, $27                                     ; $5e36: $26 $27
    jr z, jr_076_5e63                             ; $5e38: $28 $29

    ld b, c                                       ; $5e3a: $41
    ld bc, $002a                                  ; $5e3b: $01 $2a $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    ld h, l                                       ; $5e40: $65
    dec c                                         ; $5e41: $0d
    rst $38                                       ; $5e42: $ff
    push hl                                       ; $5e43: $e5
    dec l                                         ; $5e44: $2d
    or $e6                                        ; $5e45: $f6 $e6

jr_076_5e47:
    rst $30                                       ; $5e47: $f7
    add sp, $4d                                   ; $5e48: $e8 $4d
    ld c, l                                       ; $5e4a: $4d
    ld hl, sp-$15                                 ; $5e4b: $f8 $eb
    db $fc                                        ; $5e4d: $fc
    ld [c], a                                     ; $5e4e: $e2
    push af                                       ; $5e4f: $f5
    ret c                                         ; $5e50: $d8

    and $6d                                       ; $5e51: $e6 $6d
    inc bc                                        ; $5e53: $03
    ld bc, $0002                                  ; $5e54: $01 $02 $00
    ld bc, $fc7e                                  ; $5e57: $01 $7e $fc
    pop hl                                        ; $5e5a: $e1
    inc bc                                        ; $5e5b: $03
    add hl, bc                                    ; $5e5c: $09
    rlca                                          ; $5e5d: $07
    ld [$0605], sp                                ; $5e5e: $08 $05 $06
    db $fc                                        ; $5e61: $fc
    pop hl                                        ; $5e62: $e1

jr_076_5e63:
    rst $38                                       ; $5e63: $ff
    inc a                                         ; $5e64: $3c
    ld de, $0d12                                  ; $5e65: $11 $12 $0d
    ld a, [bc]                                    ; $5e68: $0a
    dec bc                                        ; $5e69: $0b
    inc c                                         ; $5e6a: $0c
    dec c                                         ; $5e6b: $0d
    rst $38                                       ; $5e6c: $ff
    dec c                                         ; $5e6d: $0d
    dec a                                         ; $5e6e: $3d
    ld a, $09                                     ; $5e6f: $3e $09
    rlca                                          ; $5e71: $07
    dec de                                        ; $5e72: $1b
    inc de                                        ; $5e73: $13
    inc d                                         ; $5e74: $14
    rst $18                                       ; $5e75: $df
    dec d                                         ; $5e76: $15
    ld d, $2f                                     ; $5e77: $16 $2f
    ld b, $3c                                     ; $5e79: $06 $3c
    ld [c], a                                     ; $5e7b: $e2
    ldh [rNR32], a                                ; $5e7c: $e0 $1c
    dec e                                         ; $5e7e: $1d
    ld a, e                                       ; $5e7f: $7b
    ld e, $1f                                     ; $5e80: $1e $1f
    ld [c], a                                     ; $5e82: $e2
    db $e3                                        ; $5e83: $e3
    inc h                                         ; $5e84: $24
    dec h                                         ; $5e85: $25
    ld h, $27                                     ; $5e86: $26 $27
    ld [c], a                                     ; $5e88: $e2
    db $e3                                        ; $5e89: $e3
    rst $28                                       ; $5e8a: $ef
    inc l                                         ; $5e8b: $2c
    dec l                                         ; $5e8c: $2d
    ld l, $1b                                     ; $5e8d: $2e $1b
    ld [c], a                                     ; $5e8f: $e2
    ldh [$03], a                                  ; $5e90: $e0 $03
    ld bc, $7f3b                                  ; $5e92: $01 $3b $7f
    inc sp                                        ; $5e95: $33
    inc [hl]                                      ; $5e96: $34
    dec [hl]                                      ; $5e97: $35
    ld [hl], $66                                  ; $5e98: $36 $66
    ld bc, $0003                                  ; $5e9a: $01 $03 $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    ld h, l                                       ; $5e9f: $65
    dec c                                         ; $5ea0: $0d
    rst $38                                       ; $5ea1: $ff
    push hl                                       ; $5ea2: $e5
    dec l                                         ; $5ea3: $2d
    or $e6                                        ; $5ea4: $f6 $e6
    rst $30                                       ; $5ea6: $f7
    add sp, $4d                                   ; $5ea7: $e8 $4d
    ld c, l                                       ; $5ea9: $4d
    ld hl, sp-$15                                 ; $5eaa: $f8 $eb
    db $fc                                        ; $5eac: $fc
    ld [c], a                                     ; $5ead: $e2
    push af                                       ; $5eae: $f5
    ret c                                         ; $5eaf: $d8

    and $6d                                       ; $5eb0: $e6 $6d
    inc bc                                        ; $5eb2: $03
    ld bc, $0002                                  ; $5eb3: $01 $02 $00
    ld bc, $fc7e                                  ; $5eb6: $01 $7e $fc
    pop hl                                        ; $5eb9: $e1
    inc bc                                        ; $5eba: $03
    add hl, bc                                    ; $5ebb: $09
    rlca                                          ; $5ebc: $07
    ld [$0605], sp                                ; $5ebd: $08 $05 $06
    db $fc                                        ; $5ec0: $fc
    pop hl                                        ; $5ec1: $e1
    rst $38                                       ; $5ec2: $ff
    inc a                                         ; $5ec3: $3c
    ld de, $0d12                                  ; $5ec4: $11 $12 $0d
    dec c                                         ; $5ec7: $0d
    ld c, $0f                                     ; $5ec8: $0e $0f
    db $10                                        ; $5eca: $10
    rst $38                                       ; $5ecb: $ff
    dec c                                         ; $5ecc: $0d
    dec a                                         ; $5ecd: $3d
    ld a, $09                                     ; $5ece: $3e $09
    rlca                                          ; $5ed0: $07
    dec de                                        ; $5ed1: $1b
    rla                                           ; $5ed2: $17
    jr @-$1f                                      ; $5ed3: $18 $df

    add hl, de                                    ; $5ed5: $19
    ld a, [de]                                    ; $5ed6: $1a
    cpl                                           ; $5ed7: $2f
    ld b, $3c                                     ; $5ed8: $06 $3c
    ld [c], a                                     ; $5eda: $e2
    ldh [rNR41], a                                ; $5edb: $e0 $20
    ld hl, $227b                                  ; $5edd: $21 $7b $22
    inc hl                                        ; $5ee0: $23
    ld [c], a                                     ; $5ee1: $e2
    db $e3                                        ; $5ee2: $e3
    jr z, jr_076_5f0e                             ; $5ee3: $28 $29

    ld a, [hl+]                                   ; $5ee5: $2a
    dec hl                                        ; $5ee6: $2b
    ld [c], a                                     ; $5ee7: $e2
    db $e3                                        ; $5ee8: $e3
    rst $28                                       ; $5ee9: $ef
    cpl                                           ; $5eea: $2f
    jr nc, @+$33                                  ; $5eeb: $30 $31

    ld [hl-], a                                   ; $5eed: $32
    ld [c], a                                     ; $5eee: $e2
    ldh [$03], a                                  ; $5eef: $e0 $03
    ld bc, $7f3b                                  ; $5ef1: $01 $3b $7f
    scf                                           ; $5ef4: $37
    jr c, jr_076_5f30                             ; $5ef5: $38 $39

    ld a, [hl-]                                   ; $5ef7: $3a
    ld h, [hl]                                    ; $5ef8: $66
    ld bc, $0003                                  ; $5ef9: $01 $03 $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    ld h, l                                       ; $5efe: $65
    dec c                                         ; $5eff: $0d
    rst $38                                       ; $5f00: $ff
    push hl                                       ; $5f01: $e5
    dec l                                         ; $5f02: $2d
    or $e6                                        ; $5f03: $f6 $e6
    rst $30                                       ; $5f05: $f7
    add sp, $4d                                   ; $5f06: $e8 $4d
    ld c, l                                       ; $5f08: $4d
    ld hl, sp-$15                                 ; $5f09: $f8 $eb
    db $fc                                        ; $5f0b: $fc
    ld [c], a                                     ; $5f0c: $e2
    push af                                       ; $5f0d: $f5

jr_076_5f0e:
    ret c                                         ; $5f0e: $d8

    and $6d                                       ; $5f0f: $e6 $6d
    inc bc                                        ; $5f11: $03
    ld bc, $0002                                  ; $5f12: $01 $02 $00
    ld bc, $fc7e                                  ; $5f15: $01 $7e $fc
    pop hl                                        ; $5f18: $e1
    inc bc                                        ; $5f19: $03
    add hl, bc                                    ; $5f1a: $09
    rlca                                          ; $5f1b: $07
    ld [$0605], sp                                ; $5f1c: $08 $05 $06
    db $fc                                        ; $5f1f: $fc
    pop hl                                        ; $5f20: $e1
    cp a                                          ; $5f21: $bf
    inc a                                         ; $5f22: $3c
    ld de, $0d12                                  ; $5f23: $11 $12 $0d
    dec c                                         ; $5f26: $0d
    dec a                                         ; $5f27: $3d
    db $fc                                        ; $5f28: $fc
    pop hl                                        ; $5f29: $e1
    ld a, $ff                                     ; $5f2a: $3e $ff
    add hl, bc                                    ; $5f2c: $09
    rlca                                          ; $5f2d: $07
    dec de                                        ; $5f2e: $1b
    ccf                                           ; $5f2f: $3f

jr_076_5f30:
    ld b, b                                       ; $5f30: $40
    ld b, c                                       ; $5f31: $41
    ld b, d                                       ; $5f32: $42
    cpl                                           ; $5f33: $2f
    ld a, e                                       ; $5f34: $7b
    ld b, $3c                                     ; $5f35: $06 $3c
    ld [c], a                                     ; $5f37: $e2
    ldh [rDMA], a                                 ; $5f38: $e0 $46
    ld b, a                                       ; $5f3a: $47
    ld c, b                                       ; $5f3b: $48
    ld c, c                                       ; $5f3c: $49
    ld [c], a                                     ; $5f3d: $e2
    db $e3                                        ; $5f3e: $e3
    rst $28                                       ; $5f3f: $ef
    ld c, [hl]                                    ; $5f40: $4e
    ld c, a                                       ; $5f41: $4f
    ld d, b                                       ; $5f42: $50
    ld d, c                                       ; $5f43: $51
    ld [c], a                                     ; $5f44: $e2
    db $e3                                        ; $5f45: $e3
    ld d, [hl]                                    ; $5f46: $56
    ld d, a                                       ; $5f47: $57
    ld e, b                                       ; $5f48: $58
    db $fd                                        ; $5f49: $fd
    ld e, c                                       ; $5f4a: $59
    ld [c], a                                     ; $5f4b: $e2
    ldh [$03], a                                  ; $5f4c: $e0 $03
    ld bc, $5e3b                                  ; $5f4e: $01 $3b $5e
    ld e, a                                       ; $5f51: $5f
    ld h, b                                       ; $5f52: $60
    rrca                                          ; $5f53: $0f
    ld h, c                                       ; $5f54: $61
    ld h, [hl]                                    ; $5f55: $66
    ld bc, $0003                                  ; $5f56: $01 $03 $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    ld h, l                                       ; $5f5b: $65
    dec c                                         ; $5f5c: $0d
    rst $38                                       ; $5f5d: $ff
    push hl                                       ; $5f5e: $e5
    dec l                                         ; $5f5f: $2d
    or $e6                                        ; $5f60: $f6 $e6
    rst $30                                       ; $5f62: $f7
    add sp, $4d                                   ; $5f63: $e8 $4d
    ld c, l                                       ; $5f65: $4d
    ld hl, sp-$15                                 ; $5f66: $f8 $eb
    db $fc                                        ; $5f68: $fc
    ld [c], a                                     ; $5f69: $e2
    push af                                       ; $5f6a: $f5
    ret c                                         ; $5f6b: $d8

    and $6d                                       ; $5f6c: $e6 $6d
    inc bc                                        ; $5f6e: $03
    ld bc, $0002                                  ; $5f6f: $01 $02 $00
    ld bc, $fc7e                                  ; $5f72: $01 $7e $fc
    pop hl                                        ; $5f75: $e1
    inc bc                                        ; $5f76: $03
    add hl, bc                                    ; $5f77: $09
    rlca                                          ; $5f78: $07
    ld [$0605], sp                                ; $5f79: $08 $05 $06
    db $fc                                        ; $5f7c: $fc
    pop hl                                        ; $5f7d: $e1
    cp a                                          ; $5f7e: $bf
    inc a                                         ; $5f7f: $3c
    ld de, $0d12                                  ; $5f80: $11 $12 $0d
    dec c                                         ; $5f83: $0d
    dec a                                         ; $5f84: $3d
    db $fc                                        ; $5f85: $fc
    pop hl                                        ; $5f86: $e1
    ld a, $ff                                     ; $5f87: $3e $ff
    add hl, bc                                    ; $5f89: $09
    rlca                                          ; $5f8a: $07
    dec de                                        ; $5f8b: $1b
    cpl                                           ; $5f8c: $2f
    ld b, e                                       ; $5f8d: $43
    ld b, h                                       ; $5f8e: $44
    ld b, l                                       ; $5f8f: $45
    cpl                                           ; $5f90: $2f
    ld a, e                                       ; $5f91: $7b
    ld b, $3c                                     ; $5f92: $06 $3c
    ld [c], a                                     ; $5f94: $e2
    ldh [rWY], a                                  ; $5f95: $e0 $4a
    ld c, e                                       ; $5f97: $4b
    ld c, h                                       ; $5f98: $4c
    ld c, l                                       ; $5f99: $4d
    ld [c], a                                     ; $5f9a: $e2
    db $e3                                        ; $5f9b: $e3
    rst $28                                       ; $5f9c: $ef
    ld d, d                                       ; $5f9d: $52
    ld d, e                                       ; $5f9e: $53
    ld d, h                                       ; $5f9f: $54
    ld d, l                                       ; $5fa0: $55
    ld [c], a                                     ; $5fa1: $e2
    db $e3                                        ; $5fa2: $e3
    ld e, d                                       ; $5fa3: $5a
    ld e, e                                       ; $5fa4: $5b
    ld e, h                                       ; $5fa5: $5c
    db $fd                                        ; $5fa6: $fd
    ld e, l                                       ; $5fa7: $5d
    ld [c], a                                     ; $5fa8: $e2
    ldh [$03], a                                  ; $5fa9: $e0 $03
    ld bc, $623b                                  ; $5fab: $01 $3b $62
    ld h, e                                       ; $5fae: $63
    ld h, h                                       ; $5faf: $64
    rrca                                          ; $5fb0: $0f
    ld h, l                                       ; $5fb1: $65
    ld h, [hl]                                    ; $5fb2: $66
    ld bc, $0003                                  ; $5fb3: $01 $03 $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    ret nc                                        ; $5fb8: $d0

    ld e, a                                       ; $5fb9: $5f
    ldh a, [$64]                                  ; $5fba: $f0 $64
    nop                                           ; $5fbc: $00
    ld l, d                                       ; $5fbd: $6a

    db $70, $6e, $f0, $71

    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    rst $30                                       ; $5fd0: $f7
    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    add b                                         ; $5fd3: $80
    rst $38                                       ; $5fd4: $ff
    ld [$ffff], a                                 ; $5fd5: $ea $ff $ff
    rst $38                                       ; $5fd8: $ff
    nop                                           ; $5fd9: $00
    dec d                                         ; $5fda: $15
    ld a, a                                       ; $5fdb: $7f
    cp $e0                                        ; $5fdc: $fe $e0
    ccf                                           ; $5fde: $3f
    cp $e0                                        ; $5fdf: $fe $e0
    rra                                           ; $5fe1: $1f
    cp $e0                                        ; $5fe2: $fe $e0
    ldh a, [$e1]                                  ; $5fe4: $f0 $e1
    cp $e9                                        ; $5fe6: $fe $e9
    cp $d2                                        ; $5fe8: $fe $d2
    db $eb                                        ; $5fea: $eb
    add b                                         ; $5feb: $80
    add b                                         ; $5fec: $80
    rrca                                          ; $5fed: $0f
    nop                                           ; $5fee: $00
    rrca                                          ; $5fef: $0f
    nop                                           ; $5ff0: $00
    rlca                                          ; $5ff1: $07
    jp z, $e0fe                                   ; $5ff2: $ca $fe $e0

    inc bc                                        ; $5ff5: $03
    cp $e0                                        ; $5ff6: $fe $e0
    ld bc, $e0fe                                  ; $5ff8: $01 $fe $e0
    jp nc, $ffeb                                  ; $5ffb: $d2 $eb $ff

    nop                                           ; $5ffe: $00
    ldh a, [rIE]                                  ; $5fff: $f0 $ff
    db $ed                                        ; $6001: $ed
    or d                                          ; $6002: $b2
    pop hl                                        ; $6003: $e1
    and b                                         ; $6004: $a0
    jp hl                                         ; $6005: $e9


    add d                                         ; $6006: $82
    pop hl                                        ; $6007: $e1
    ret nz                                        ; $6008: $c0

    add b                                         ; $6009: $80
    ldh [$80], a                                  ; $600a: $e0 $80
    rst $38                                       ; $600c: $ff
    ldh a, [$80]                                  ; $600d: $f0 $80
    ld hl, sp-$80                                 ; $600f: $f8 $80
    db $fc                                        ; $6011: $fc
    add b                                         ; $6012: $80
    cp $80                                        ; $6013: $fe $80
    db $fd                                        ; $6015: $fd
    rst $38                                       ; $6016: $ff
    cp $ec                                        ; $6017: $fe $ec
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    add b                                         ; $601b: $80
    nop                                           ; $601c: $00
    ret nz                                        ; $601d: $c0

    nop                                           ; $601e: $00
    rst $38                                       ; $601f: $ff
    ldh [rP1], a                                  ; $6020: $e0 $00
    ldh a, [rP1]                                  ; $6022: $f0 $00
    ld hl, sp+$00                                 ; $6024: $f8 $00
    db $fc                                        ; $6026: $fc
    nop                                           ; $6027: $00
    adc a                                         ; $6028: $8f
    cp $00                                        ; $6029: $fe $00
    rst $38                                       ; $602b: $ff
    ld bc, $eafe                                  ; $602c: $01 $fe $ea
    ld b, c                                       ; $602f: $41
    ldh [$ce], a                                  ; $6030: $e0 $ce
    db $e3                                        ; $6032: $e3
    cp a                                          ; $6033: $bf

jr_076_6034:
    xor a                                         ; $6034: $af
    add b                                         ; $6035: $80
    adc a                                         ; $6036: $8f
    add b                                         ; $6037: $80
    add e                                         ; $6038: $83
    dec [hl]                                      ; $6039: $35
    ldh [$3f], a                                  ; $603a: $e0 $3f
    ld [hl], b                                    ; $603c: $70
    ldh [$03], a                                  ; $603d: $e0 $03
    nop                                           ; $603f: $00
    sub b                                         ; $6040: $90
    db $ec                                        ; $6041: $ec
    ld a, $e1                                     ; $6042: $3e $e1
    add sp, -$13                                  ; $6044: $e8 $ed
    ld [hl], d                                    ; $6046: $72
    db $e4                                        ; $6047: $e4
    ld de, $48e1                                  ; $6048: $11 $e1 $48
    ld [c], a                                     ; $604b: $e2
    ld b, b                                       ; $604c: $40
    pop hl                                        ; $604d: $e1
    jr c, @-$1d                                   ; $604e: $38 $e1

    add b                                         ; $6050: $80
    jr nc, jr_076_6034                            ; $6051: $30 $e1

    ld [$00e1], sp                                ; $6053: $08 $e1 $00
    pop hl                                        ; $6056: $e1
    ld hl, sp-$3f                                 ; $6057: $f8 $c1
    ccf                                           ; $6059: $3f
    pop hl                                        ; $605a: $e1
    ldh [$e9], a                                  ; $605b: $e0 $e9
    add b                                         ; $605d: $80
    pop hl                                        ; $605e: $e1
    db $fd                                        ; $605f: $fd
    rst $38                                       ; $6060: $ff
    ld bc, $01f9                                  ; $6061: $01 $f9 $01
    pop af                                        ; $6064: $f1
    ld bc, $01e1                                  ; $6065: $01 $e1 $01
    pop bc                                        ; $6068: $c1
    xor a                                         ; $6069: $af
    ld bc, $0181                                  ; $606a: $01 $81 $01
    rst $38                                       ; $606d: $ff
    ld l, h                                       ; $606e: $6c
    ldh [$fc], a                                  ; $606f: $e0 $fc
    ld h, h                                       ; $6071: $64
    ldh [$f0], a                                  ; $6072: $e0 $f0
    ld [$e05c], a                                 ; $6074: $ea $5c $e0
    ret nz                                        ; $6077: $c0

    ld d, h                                       ; $6078: $54
    ldh [rSB], a                                  ; $6079: $e0 $01
    rst $38                                       ; $607b: $ff
    db $e4                                        ; $607c: $e4
    inc bc                                        ; $607d: $03
    ld bc, $530f                                  ; $607e: $01 $0f $53
    ld bc, $543f                                  ; $6081: $01 $3f $54
    ldh [rIE], a                                  ; $6084: $e0 $ff
    push bc                                       ; $6086: $c5
    inc bc                                        ; $6087: $03
    ret c                                         ; $6088: $d8

    ret nz                                        ; $6089: $c0

    ccf                                           ; $608a: $3f
    or [hl]                                       ; $608b: $b6
    ret nz                                        ; $608c: $c0

    db $fc                                        ; $608d: $fc
    ld hl, sp-$1b                                 ; $608e: $f8 $e5
    ldh [$cf], a                                  ; $6090: $e0 $cf
    rrca                                          ; $6092: $0f
    rrca                                          ; $6093: $0f
    ld d, $1f                                     ; $6094: $16 $1f
    ld h, a                                       ; $6096: $67
    ld a, l                                       ; $6097: $7d
    cp [hl]                                       ; $6098: $be
    sub d                                         ; $6099: $92
    ret z                                         ; $609a: $c8

    add b                                         ; $609b: $80
    ld a, a                                       ; $609c: $7f
    ret nz                                        ; $609d: $c0

    ccf                                           ; $609e: $3f
    ldh [$bf], a                                  ; $609f: $e0 $bf
    rst $00                                       ; $60a1: $c7
    ld bc, $01df                                  ; $60a2: $01 $df $01
    ld [bc], a                                    ; $60a5: $02
    inc bc                                        ; $60a6: $03
    dec b                                         ; $60a7: $05
    rlca                                          ; $60a8: $07
    ld [hl], d                                    ; $60a9: $72
    ret z                                         ; $60aa: $c8

    ldh a, [$cf]                                  ; $60ab: $f0 $cf
    rst $30                                       ; $60ad: $f7
    ld hl, sp-$39                                 ; $60ae: $f8 $c7
    ld a, [hl]                                    ; $60b0: $7e
    ld h, d                                       ; $60b1: $62
    ret nz                                        ; $60b2: $c0

    rlca                                          ; $60b3: $07
    ld hl, sp+$1f                                 ; $60b4: $f8 $1f
    ldh [$fd], a                                  ; $60b6: $e0 $fd
    ld a, a                                       ; $60b8: $7f
    rst $00                                       ; $60b9: $c7
    pop bc                                        ; $60ba: $c1
    pop bc                                        ; $60bb: $c1
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    ld a, a                                       ; $60be: $7f
    ld a, h                                       ; $60bf: $7c
    ld a, h                                       ; $60c0: $7c
    rst $38                                       ; $60c1: $ff
    add a                                         ; $60c2: $87
    rst $38                                       ; $60c3: $ff
    rrca                                          ; $60c4: $0f
    ei                                            ; $60c5: $fb
    ld c, $fb                                     ; $60c6: $0e $fb
    rrca                                          ; $60c8: $0f
    ei                                            ; $60c9: $fb
    di                                            ; $60ca: $f3
    rrca                                          ; $60cb: $0f
    ld hl, sp-$1d                                 ; $60cc: $f8 $e3
    pop bc                                        ; $60ce: $c1
    ld a, a                                       ; $60cf: $7f
    pop bc                                        ; $60d0: $c1
    add b                                         ; $60d1: $80
    add b                                         ; $60d2: $80
    ld a, h                                       ; $60d3: $7c
    db $fc                                        ; $60d4: $fc
    rst $10                                       ; $60d5: $d7
    ld b, d                                       ; $60d6: $42
    cp $f1                                        ; $60d7: $fe $f1
    ldh [$e0], a                                  ; $60d9: $e0 $e0
    ld sp, hl                                     ; $60db: $f9
    ld l, a                                       ; $60dc: $6f
    ret nz                                        ; $60dd: $c0

    dec e                                         ; $60de: $1d
    dec e                                         ; $60df: $1d
    rst $38                                       ; $60e0: $ff
    ld a, $23                                     ; $60e1: $3e $23
    ld a, a                                       ; $60e3: $7f
    ld c, e                                       ; $60e4: $4b
    rst $38                                       ; $60e5: $ff
    sbc a                                         ; $60e6: $9f
    rst $38                                       ; $60e7: $ff
    xor l                                         ; $60e8: $ad
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    sbc c                                         ; $60eb: $99
    rst $38                                       ; $60ec: $ff
    db $eb                                        ; $60ed: $eb
    add a                                         ; $60ee: $87
    db $fd                                        ; $60ef: $fd
    rlca                                          ; $60f0: $07
    db $fc                                        ; $60f1: $fc
    rst $38                                       ; $60f2: $ff
    ld c, $ff                                     ; $60f3: $0e $ff
    jr nc, @+$01                                  ; $60f5: $30 $ff

    ld b, a                                       ; $60f7: $47
    rst $38                                       ; $60f8: $ff
    sbc a                                         ; $60f9: $9f
    ld hl, sp-$01                                 ; $60fa: $f8 $ff
    rst $38                                       ; $60fc: $ff
    ldh a, [rIE]                                  ; $60fd: $f0 $ff
    xor [hl]                                      ; $60ff: $ae
    cp a                                          ; $6100: $bf
    ldh a, [rIE]                                  ; $6101: $f0 $ff
    ld hl, sp-$11                                 ; $6103: $f8 $ef
    rlca                                          ; $6105: $07
    db $fc                                        ; $6106: $fc
    rst $38                                       ; $6107: $ff
    db $fc                                        ; $6108: $fc
    db $ed                                        ; $6109: $ed
    ldh [$50], a                                  ; $610a: $e0 $50
    rst $38                                       ; $610c: $ff
    ld a, b                                       ; $610d: $78
    ei                                            ; $610e: $fb
    rst $38                                       ; $610f: $ff
    inc e                                         ; $6110: $1c
    ld [bc], a                                    ; $6111: $02
    jp nz, $fe01                                  ; $6112: $c2 $01 $fe

    ccf                                           ; $6115: $3f
    cp $43                                        ; $6116: $fe $43
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    adc a                                         ; $611a: $8f
    rst $38                                       ; $611b: $ff
    add e                                         ; $611c: $83
    rst $38                                       ; $611d: $ff
    add a                                         ; $611e: $87
    rst $38                                       ; $611f: $ff
    ld a, $ff                                     ; $6120: $3e $ff
    pop hl                                        ; $6122: $e1
    rst $38                                       ; $6123: $ff
    ldh [rIE], a                                  ; $6124: $e0 $ff
    ldh [$bf], a                                  ; $6126: $e0 $bf
    ldh a, [$bf]                                  ; $6128: $f0 $bf
    rst $30                                       ; $612a: $f7
    ld hl, sp-$71                                 ; $612b: $f8 $8f
    rst $38                                       ; $612d: $ff
    ld [hl], e                                    ; $612e: $73

jr_076_612f:
    ret nz                                        ; $612f: $c0

    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    ldh [$e0], a                                  ; $6132: $e0 $e0
    rst $28                                       ; $6134: $ef
    jr jr_076_612f                                ; $6135: $18 $f8

    ld b, $fe                                     ; $6137: $06 $fe
    ld l, c                                       ; $6139: $69
    pop bc                                        ; $613a: $c1
    add e                                         ; $613b: $83
    rst $38                                       ; $613c: $ff
    cp $ff                                        ; $613d: $fe $ff
    cp $0d                                        ; $613f: $fe $0d
    rrca                                          ; $6141: $0f
    rra                                           ; $6142: $1f
    rra                                           ; $6143: $1f
    jr nz, jr_076_6185                            ; $6144: $20 $3f

    ccf                                           ; $6146: $3f
    rst $38                                       ; $6147: $ff
    ccf                                           ; $6148: $3f
    rrca                                          ; $6149: $0f
    inc c                                         ; $614a: $0c
    rrca                                          ; $614b: $0f
    ld a, [bc]                                    ; $614c: $0a
    rra                                           ; $614d: $1f
    ld e, $3f                                     ; $614e: $1e $3f
    rst $38                                       ; $6150: $ff
    jr c, @-$3d                                   ; $6151: $38 $c1

    ld a, a                                       ; $6153: $7f
    ldh [$3f], a                                  ; $6154: $e0 $3f
    ld [hl], b                                    ; $6156: $70
    rst $38                                       ; $6157: $ff
    inc c                                         ; $6158: $0c
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    ld [c], a                                     ; $615b: $e2
    rst $38                                       ; $615c: $ff
    ld sp, hl                                     ; $615d: $f9
    rra                                           ; $615e: $1f
    rst $38                                       ; $615f: $ff
    rrca                                          ; $6160: $0f
    rst $38                                       ; $6161: $ff
    db $fd                                        ; $6162: $fd
    ld [hl], l                                    ; $6163: $75
    or d                                          ; $6164: $b2
    and b                                         ; $6165: $a0
    cp b                                          ; $6166: $b8
    ld b, a                                       ; $6167: $47
    db $fc                                        ; $6168: $fc
    db $d3                                        ; $6169: $d3
    cp $f9                                        ; $616a: $fe $f9
    ld c, e                                       ; $616c: $4b
    rst $38                                       ; $616d: $ff
    or l                                          ; $616e: $b5
    add c                                         ; $616f: $81
    ldh [$d7], a                                  ; $6170: $e0 $d7
    and d                                         ; $6172: $a2
    xor h                                         ; $6173: $ac
    ld [hl+], a                                   ; $6174: $22
    ret nz                                        ; $6175: $c0

    cp $84                                        ; $6176: $fe $84
    ldh [rIE], a                                  ; $6178: $e0 $ff
    sbc h                                         ; $617a: $9c
    rst $38                                       ; $617b: $ff
    xor h                                         ; $617c: $ac
    rst $38                                       ; $617d: $ff
    sbc b                                         ; $617e: $98
    rst $38                                       ; $617f: $ff
    adc b                                         ; $6180: $88
    rst $38                                       ; $6181: $ff
    rst $30                                       ; $6182: $f7
    ld b, c                                       ; $6183: $41
    rst $38                                       ; $6184: $ff

jr_076_6185:
    ld sp, hl                                     ; $6185: $f9
    dec sp                                        ; $6186: $3b
    ldh [$67], a                                  ; $6187: $e0 $67
    rst $38                                       ; $6189: $ff
    inc sp                                        ; $618a: $33
    rst $38                                       ; $618b: $ff
    rst $18                                       ; $618c: $df
    ld a, d                                       ; $618d: $7a
    rst $38                                       ; $618e: $ff
    rlca                                          ; $618f: $07
    rst $38                                       ; $6190: $ff
    add hl, bc                                    ; $6191: $09
    db $e4                                        ; $6192: $e4
    and b                                         ; $6193: $a0
    ret nz                                        ; $6194: $c0

    add hl, bc                                    ; $6195: $09
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    pop af                                        ; $6198: $f1
    rst $38                                       ; $6199: $ff
    jp nc, $9afe                                  ; $619a: $d2 $fe $9a

Call_076_619d:
    cp $c2                                        ; $619d: $fe $c2
    cp $fe                                        ; $619f: $fe $fe
    ldh [$fc], a                                  ; $61a1: $e0 $fc
    cp h                                          ; $61a3: $bc
    db $fc                                        ; $61a4: $fc
    add h                                         ; $61a5: $84
    ld a, a                                       ; $61a6: $7f
    ld b, a                                       ; $61a7: $47
    ld a, a                                       ; $61a8: $7f
    rst $38                                       ; $61a9: $ff
    ld h, l                                       ; $61aa: $65
    ccf                                           ; $61ab: $3f
    ld sp, $213f                                  ; $61ac: $31 $3f $21
    ccf                                           ; $61af: $3f
    jr nz, @+$21                                  ; $61b0: $20 $1f

    ld sp, hl                                     ; $61b2: $f9
    db $10                                        ; $61b3: $10
    cp $e1                                        ; $61b4: $fe $e1
    ld e, [hl]                                    ; $61b6: $5e
    ldh [$cc], a                                  ; $61b7: $e0 $cc
    rst $38                                       ; $61b9: $ff
    ret nz                                        ; $61ba: $c0

    rst $38                                       ; $61bb: $ff
    ld h, b                                       ; $61bc: $60
    rst $38                                       ; $61bd: $ff

jr_076_61be:
    rst $38                                       ; $61be: $ff
    and a                                         ; $61bf: $a7
    rst $38                                       ; $61c0: $ff
    rst $00                                       ; $61c1: $c7
    rst $38                                       ; $61c2: $ff
    db $d3                                        ; $61c3: $d3
    rst $38                                       ; $61c4: $ff
    ret nc                                        ; $61c5: $d0

    db $eb                                        ; $61c6: $eb
    rst $38                                       ; $61c7: $ff
    ld [hl+], a                                   ; $61c8: $22
    adc $a2                                       ; $61c9: $ce $a2
    ld h, e                                       ; $61cb: $63
    ld l, $e0                                     ; $61cc: $2e $e0
    db $fc                                        ; $61ce: $fc
    rst $38                                       ; $61cf: $ff
    add sp, -$05                                  ; $61d0: $e8 $fb
    rst $38                                       ; $61d2: $ff
    ld [$aa32], sp                                ; $61d3: $08 $32 $aa
    inc a                                         ; $61d6: $3c
    jp $f07e                                      ; $61d7: $c3 $7e $f0


    sbc a                                         ; $61da: $9f
    cp [hl]                                       ; $61db: $be
    jr z, jr_076_61be                             ; $61dc: $28 $e0

    ld c, e                                       ; $61de: $4b
    rst $38                                       ; $61df: $ff
    ld e, c                                       ; $61e0: $59
    rst $38                                       ; $61e1: $ff
    ld b, e                                       ; $61e2: $43
    cp $e0                                        ; $61e3: $fe $e0
    ld hl, $fefe                                  ; $61e5: $21 $fe $fe
    ldh [$7f], a                                  ; $61e8: $e0 $7f
    rst $38                                       ; $61ea: $ff
    ccf                                           ; $61eb: $3f
    rst $38                                       ; $61ec: $ff
    add hl, sp                                    ; $61ed: $39
    rst $38                                       ; $61ee: $ff
    dec [hl]                                      ; $61ef: $35
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    add hl, de                                    ; $61f2: $19
    rst $38                                       ; $61f3: $ff
    ld de, $82fe                                  ; $61f4: $11 $fe $82
    rst $38                                       ; $61f7: $ff
    sbc a                                         ; $61f8: $9f
    ld a, [c]                                     ; $61f9: $f2
    ccf                                           ; $61fa: $3f
    xor e                                         ; $61fb: $ab
    add b                                         ; $61fc: $80
    ld [hl], b                                    ; $61fd: $70
    and b                                         ; $61fe: $a0
    dec l                                         ; $61ff: $2d
    and a                                         ; $6200: $a7
    inc a                                         ; $6201: $3c
    inc a                                         ; $6202: $3c
    ld a, [hl]                                    ; $6203: $7e
    ld b, d                                       ; $6204: $42
    db $eb                                        ; $6205: $eb
    ld a, a                                       ; $6206: $7f
    ld b, h                                       ; $6207: $44
    ld c, [hl]                                    ; $6208: $4e
    and d                                         ; $6209: $a2
    add $0d                                       ; $620a: $c6 $0d
    ldh [$3f], a                                  ; $620c: $e0 $3f
    rra                                           ; $620e: $1f
    rla                                           ; $620f: $17
    rst $38                                       ; $6210: $ff
    rra                                           ; $6211: $1f
    db $10                                        ; $6212: $10
    db $e3                                        ; $6213: $e3
    cp $a7                                        ; $6214: $fe $a7
    cp $cf                                        ; $6216: $fe $cf
    db $fc                                        ; $6218: $fc
    db $eb                                        ; $6219: $eb
    rst $20                                       ; $621a: $e7
    db $fc                                        ; $621b: $fc
    add $c0                                       ; $621c: $c6 $c0
    ld [$e2fe], sp                                ; $621e: $08 $fe $e2
    ld [bc], a                                    ; $6221: $02
    rst $38                                       ; $6222: $ff
    inc b                                         ; $6223: $04
    db $fd                                        ; $6224: $fd
    ld a, a                                       ; $6225: $7f
    cp $e0                                        ; $6226: $fe $e0
    ccf                                           ; $6228: $3f
    inc c                                         ; $6229: $0c
    ccf                                           ; $622a: $3f
    ld [de], a                                    ; $622b: $12
    rra                                           ; $622c: $1f
    db $10                                        ; $622d: $10
    cp a                                          ; $622e: $bf
    ccf                                           ; $622f: $3f
    jr nz, @+$01                                  ; $6230: $20 $ff

    ld e, b                                       ; $6232: $58
    rst $38                                       ; $6233: $ff
    inc l                                         ; $6234: $2c
    cp $e0                                        ; $6235: $fe $e0
    inc e                                         ; $6237: $1c
    rst $38                                       ; $6238: $ff
    ei                                            ; $6239: $fb
    ld c, $fd                                     ; $623a: $0e $fd
    rrca                                          ; $623c: $0f
    db $f4                                        ; $623d: $f4
    rra                                           ; $623e: $1f
    db $e3                                        ; $623f: $e3
    rst $38                                       ; $6240: $ff
    cp $31                                        ; $6241: $fe $31
    ldh [rIE], a                                  ; $6243: $e0 $ff
    rst $38                                       ; $6245: $ff
    ld a, e                                       ; $6246: $7b
    rst $38                                       ; $6247: $ff
    rlca                                          ; $6248: $07
    db $fc                                        ; $6249: $fc
    rrca                                          ; $624a: $0f
    rst $38                                       ; $624b: $ff
    ld hl, sp+$1f                                 ; $624c: $f8 $1f
    add sp, -$01                                  ; $624e: $e8 $ff
    cp c                                          ; $6250: $b9
    rst $38                                       ; $6251: $ff
    db $fc                                        ; $6252: $fc
    call nz, $f8ff                                ; $6253: $c4 $ff $f8
    ret z                                         ; $6256: $c8

    ld sp, hl                                     ; $6257: $f9
    ld [$10f1], sp                                ; $6258: $08 $f1 $10
    db $e3                                        ; $625b: $e3
    and b                                         ; $625c: $a0
    rst $28                                       ; $625d: $ef
    jp $87c0                                      ; $625e: $c3 $c0 $87


    add b                                         ; $6261: $80
    ld [hl], b                                    ; $6262: $70
    and b                                         ; $6263: $a0
    add hl, bc                                    ; $6264: $09
    rrca                                          ; $6265: $0f
    add hl, bc                                    ; $6266: $09
    rst $38                                       ; $6267: $ff
    adc [hl]                                      ; $6268: $8e
    rrca                                          ; $6269: $0f
    adc b                                         ; $626a: $88
    rrca                                          ; $626b: $0f
    call nz, $c407                                ; $626c: $c4 $07 $c4
    rlca                                          ; $626f: $07
    rst $38                                       ; $6270: $ff
    ld [c], a                                     ; $6271: $e2
    inc bc                                        ; $6272: $03
    pop hl                                        ; $6273: $e1
    ld bc, $f8bf                                  ; $6274: $01 $bf $f8
    ccf                                           ; $6277: $3f
    db $fc                                        ; $6278: $fc
    rst $10                                       ; $6279: $d7
    daa                                           ; $627a: $27
    cp $11                                        ; $627b: $fe $11
    di                                            ; $627d: $f3
    ret nz                                        ; $627e: $c0

    rlca                                          ; $627f: $07
    pop hl                                        ; $6280: $e1
    ret nz                                        ; $6281: $c0

    add c                                         ; $6282: $81
    rst $38                                       ; $6283: $ff
    cp $b6                                        ; $6284: $fe $b6
    ldh [rNR34], a                                ; $6286: $e0 $1e
    jp hl                                         ; $6288: $e9


    ccf                                           ; $6289: $3f
    ret                                           ; $628a: $c9


    rst $38                                       ; $628b: $ff
    pop de                                        ; $628c: $d1
    rst $38                                       ; $628d: $ff
    rst $38                                       ; $628e: $ff
    ld l, c                                       ; $628f: $69
    rst $38                                       ; $6290: $ff
    dec bc                                        ; $6291: $0b
    cp $87                                        ; $6292: $fe $87
    db $fc                                        ; $6294: $fc
    pop hl                                        ; $6295: $e1
    ld a, a                                       ; $6296: $7f
    rst $38                                       ; $6297: $ff
    and c                                         ; $6298: $a1
    rst $38                                       ; $6299: $ff
    sub c                                         ; $629a: $91
    rst $38                                       ; $629b: $ff
    reti                                          ; $629c: $d9


    ld a, a                                       ; $629d: $7f
    pop af                                        ; $629e: $f1
    ld a, a                                       ; $629f: $7f
    rst $38                                       ; $62a0: $ff
    db $db                                        ; $62a1: $db
    ld a, a                                       ; $62a2: $7f
    call z, $f87c                                 ; $62a3: $cc $7c $f8
    jr c, @+$01                                   ; $62a6: $38 $ff

    inc hl                                        ; $62a8: $23
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    inc de                                        ; $62ab: $13
    ld a, a                                       ; $62ac: $7f
    db $10                                        ; $62ad: $10
    ld a, a                                       ; $62ae: $7f
    ld [$053f], sp                                ; $62af: $08 $3f $05
    rst $38                                       ; $62b2: $ff
    ccf                                           ; $62b3: $3f
    inc bc                                        ; $62b4: $03
    rra                                           ; $62b5: $1f
    ld bc, $001f                                  ; $62b6: $01 $1f $00
    ld a, [$ff1f]                                 ; $62b9: $fa $1f $ff
    db $f4                                        ; $62bc: $f4
    ccf                                           ; $62bd: $3f
    db $f4                                        ; $62be: $f4
    ccf                                           ; $62bf: $3f
    ld hl, sp+$3f                                 ; $62c0: $f8 $3f
    ret nc                                        ; $62c2: $d0

    ld a, a                                       ; $62c3: $7f
    rst $38                                       ; $62c4: $ff
    or b                                          ; $62c5: $b0
    rst $38                                       ; $62c6: $ff
    jr z, @+$01                                   ; $62c7: $28 $ff

    add $ff                                       ; $62c9: $c6 $ff
    ld b, b                                       ; $62cb: $40
    ret nz                                        ; $62cc: $c0

    rst $30                                       ; $62cd: $f7
    jr nz, @-$1e                                  ; $62ce: $20 $e0

    ld hl, $e0fe                                  ; $62d0: $21 $fe $e0
    inc sp                                        ; $62d3: $33
    ldh a, [$5b]                                  ; $62d4: $f0 $5b
    ld hl, sp-$01                                 ; $62d6: $f8 $ff
    rra                                           ; $62d8: $1f
    ld hl, sp+$3f                                 ; $62d9: $f8 $3f
    db $e4                                        ; $62db: $e4
    cp $86                                        ; $62dc: $fe $86
    rst $38                                       ; $62de: $ff
    add l                                         ; $62df: $85
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    adc c                                         ; $62e2: $89
    rst $38                                       ; $62e3: $ff
    sbc d                                         ; $62e4: $9a
    rst $38                                       ; $62e5: $ff
    adc [hl]                                      ; $62e6: $8e
    rst $38                                       ; $62e7: $ff
    ret c                                         ; $62e8: $d8

    cp $e9                                        ; $62e9: $fe $e9
    and b                                         ; $62eb: $a0
    inc e                                         ; $62ec: $1c
    ccf                                           ; $62ed: $3f
    jr c, jr_076_634f                             ; $62ee: $38 $5f

    ld a, b                                       ; $62f0: $78
    sub a                                         ; $62f1: $97
    db $fc                                        ; $62f2: $fc
    rst $38                                       ; $62f3: $ff
    sub e                                         ; $62f4: $93
    rst $38                                       ; $62f5: $ff
    adc e                                         ; $62f6: $8b
    rst $38                                       ; $62f7: $ff
    sub [hl]                                      ; $62f8: $96
    rst $38                                       ; $62f9: $ff
    ret nc                                        ; $62fa: $d0

    ld a, a                                       ; $62fb: $7f
    rst $38                                       ; $62fc: $ff
    pop hl                                        ; $62fd: $e1
    ccf                                           ; $62fe: $3f
    rst $38                                       ; $62ff: $ff
    sub b                                         ; $6300: $90
    rst $38                                       ; $6301: $ff
    sub b                                         ; $6302: $90
    ld a, [hl]                                    ; $6303: $7e
    ldh a, [rIE]                                  ; $6304: $f0 $ff
    ld e, $f0                                     ; $6306: $1e $f0
    inc a                                         ; $6308: $3c
    ldh [$3c], a                                  ; $6309: $e0 $3c
    ldh [$78], a                                  ; $630b: $e0 $78
    ret nz                                        ; $630d: $c0

    rst $38                                       ; $630e: $ff
    ld hl, sp-$80                                 ; $630f: $f8 $80
    ccf                                           ; $6311: $3f
    jr nz, jr_076_6353                            ; $6312: $20 $3f

    ld hl, $1f1f                                  ; $6314: $21 $1f $1f
    dec l                                         ; $6317: $2d
    rlca                                          ; $6318: $07
    db $10                                        ; $6319: $10
    and b                                         ; $631a: $a0
    inc bc                                        ; $631b: $03
    ld [bc], a                                    ; $631c: $02
    cp $e1                                        ; $631d: $fe $e1
    pop bc                                        ; $631f: $c1
    ld l, h                                       ; $6320: $6c
    ldh [rSTAT], a                                ; $6321: $e0 $41
    and h                                         ; $6323: $a4
    cp $72                                        ; $6324: $fe $72
    and b                                         ; $6326: $a0
    rst $38                                       ; $6327: $ff
    nop                                           ; $6328: $00
    ld c, $fe                                     ; $6329: $0e $fe
    ld [$88f8], sp                                ; $632b: $08 $f8 $88
    ei                                            ; $632e: $fb
    ld hl, sp+$08                                 ; $632f: $f8 $08
    cp $e0                                        ; $6331: $fe $e0
    db $10                                        ; $6333: $10
    ldh a, [$f8]                                  ; $6334: $f0 $f8
    add sp, -$08                                  ; $6336: $e8 $f8
    dec hl                                        ; $6338: $2b
    ld [$36f0], sp                                ; $6339: $08 $f0 $36
    add d                                         ; $633c: $82
    ld sp, hl                                     ; $633d: $f9
    cp h                                          ; $633e: $bc
    add b                                         ; $633f: $80
    db $fc                                        ; $6340: $fc
    inc [hl]                                      ; $6341: $34
    add d                                         ; $6342: $82
    rrca                                          ; $6343: $0f
    add e                                         ; $6344: $83
    call c, Call_076_619d                         ; $6345: $dc $9d $61
    sub [hl]                                      ; $6348: $96
    ld h, e                                       ; $6349: $63
    rst $00                                       ; $634a: $c7
    cp $07                                        ; $634b: $fe $07
    ld l, [hl]                                    ; $634d: $6e
    and b                                         ; $634e: $a0

jr_076_634f:
    rrca                                          ; $634f: $0f
    rst $38                                       ; $6350: $ff
    ei                                            ; $6351: $fb
    rst $38                                       ; $6352: $ff

jr_076_6353:
    ld hl, sp-$6a                                 ; $6353: $f8 $96
    ldh [rP1], a                                  ; $6355: $e0 $00
    rst $38                                       ; $6357: $ff
    ld b, b                                       ; $6358: $40
    ldh a, [rSVBK]                                ; $6359: $f0 $70
    rst $38                                       ; $635b: $ff
    ldh a, [$80]                                  ; $635c: $f0 $80
    ldh [rP1], a                                  ; $635e: $e0 $00
    ldh [$80], a                                  ; $6360: $e0 $80
    ret nz                                        ; $6362: $c0

    ld b, b                                       ; $6363: $40
    cp $fe                                        ; $6364: $fe $fe
    db $e3                                        ; $6366: $e3
    ldh a, [$7f]                                  ; $6367: $f0 $7f
    ldh a, [$1f]                                  ; $6369: $f0 $1f
    pop af                                        ; $636b: $f1
    rra                                           ; $636c: $1f
    ldh a, [$fe]                                  ; $636d: $f0 $fe
    cp $e0                                        ; $636f: $fe $e0
    ld hl, sp+$0f                                 ; $6371: $f8 $0f
    rst $38                                       ; $6373: $ff
    rla                                           ; $6374: $17
    rst $38                                       ; $6375: $ff
    db $10                                        ; $6376: $10
    rst $38                                       ; $6377: $ff
    cp a                                          ; $6378: $bf
    call nz, $84ff                                ; $6379: $c4 $ff $84
    rst $38                                       ; $637c: $ff
    ld hl, sp-$61                                 ; $637d: $f8 $9f
    nop                                           ; $637f: $00
    add b                                         ; $6380: $80
    rst $38                                       ; $6381: $ff
    dec e                                         ; $6382: $1d
    ld b, b                                       ; $6383: $40
    cp $e2                                        ; $6384: $fe $e2
    ld c, $f1                                     ; $6386: $0e $f1
    ld bc, $e1a0                                  ; $6388: $01 $a0 $e1
    adc b                                         ; $638b: $88

jr_076_638c:
    ret nz                                        ; $638c: $c0

    cp $e2                                        ; $638d: $fe $e2
    rst $38                                       ; $638f: $ff
    db $e3                                        ; $6390: $e3
    ld a, a                                       ; $6391: $7f
    and b                                         ; $6392: $a0
    cp a                                          ; $6393: $bf
    jr nz, @+$41                                  ; $6394: $20 $3f

    ldh a, [rIE]                                  ; $6396: $f0 $ff
    dec sp                                        ; $6398: $3b
    rst $38                                       ; $6399: $ff
    rra                                           ; $639a: $1f
    ret nz                                        ; $639b: $c0

    and b                                         ; $639c: $a0
    nop                                           ; $639d: $00
    rst $38                                       ; $639e: $ff
    ld [bc], a                                    ; $639f: $02
    add b                                         ; $63a0: $80
    pop hl                                        ; $63a1: $e1
    or b                                          ; $63a2: $b0
    ld [c], a                                     ; $63a3: $e2
    ld sp, hl                                     ; $63a4: $f9
    add b                                         ; $63a5: $80
    ld d, d                                       ; $63a6: $52
    add b                                         ; $63a7: $80
    dec b                                         ; $63a8: $05
    ld h, b                                       ; $63a9: $60
    inc bc                                        ; $63aa: $03
    ld [bc], a                                    ; $63ab: $02
    add e                                         ; $63ac: $83
    ld [bc], a                                    ; $63ad: $02
    pop bc                                        ; $63ae: $c1
    ld c, d                                       ; $63af: $4a
    inc [hl]                                      ; $63b0: $34
    add b                                         ; $63b1: $80
    pop af                                        ; $63b2: $f1
    inc l                                         ; $63b3: $2c
    add b                                         ; $63b4: $80
    db $fd                                        ; $63b5: $fd
    jp z, $12e1                                   ; $63b6: $ca $e1 $12

    ld h, c                                       ; $63b9: $61
    ld [$a092], sp                                ; $63ba: $08 $92 $a0
    rst $20                                       ; $63bd: $e7
    ld [bc], a                                    ; $63be: $02
    rst $38                                       ; $63bf: $ff
    inc bc                                        ; $63c0: $03
    sub h                                         ; $63c1: $94
    ld h, c                                       ; $63c2: $61
    ld b, l                                       ; $63c3: $45
    pop hl                                        ; $63c4: $e1
    db $fd                                        ; $63c5: $fd
    add h                                         ; $63c6: $84
    db $fd                                        ; $63c7: $fd
    pop hl                                        ; $63c8: $e1
    inc b                                         ; $63c9: $04
    jr c, jr_076_638c                             ; $63ca: $38 $c0

    add [hl]                                      ; $63cc: $86
    ld h, c                                       ; $63cd: $61
    xor a                                         ; $63ce: $af
    add b                                         ; $63cf: $80
    db $10                                        ; $63d0: $10
    adc d                                         ; $63d1: $8a
    add b                                         ; $63d2: $80
    rst $38                                       ; $63d3: $ff
    ld bc, $7f1b                                  ; $63d4: $01 $1b $7f
    ld bc, $41d6                                  ; $63d7: $01 $d6 $41
    rrca                                          ; $63da: $0f
    ld bc, $c3fc                                  ; $63db: $01 $fc $c3
    inc a                                         ; $63de: $3c
    and d                                         ; $63df: $a2
    ld a, [hl-]                                   ; $63e0: $3a
    ld h, c                                       ; $63e1: $61
    ld a, [$6558]                                 ; $63e2: $fa $58 $65
    adc b                                         ; $63e5: $88
    xor d                                         ; $63e6: $aa
    add b                                         ; $63e7: $80
    and b                                         ; $63e8: $a0
    rst $38                                       ; $63e9: $ff
    and e                                         ; $63ea: $a3
    cp $1f                                        ; $63eb: $fe $1f
    rst $38                                       ; $63ed: $ff
    ld a, [c]                                     ; $63ee: $f2
    rra                                           ; $63ef: $1f
    ld hl, sp+$1f                                 ; $63f0: $f8 $1f
    rst $30                                       ; $63f2: $f7
    rra                                           ; $63f3: $1f
    ldh [rNR41], a                                ; $63f4: $e0 $20
    rst $18                                       ; $63f6: $df
    pop hl                                        ; $63f7: $e1
    jr nz, @-$1b                                  ; $63f8: $20 $e3

    ld h, b                                       ; $63fa: $60
    sbc a                                         ; $63fb: $9f
    sbc h                                         ; $63fc: $9c
    add b                                         ; $63fd: $80
    inc bc                                        ; $63fe: $03
    cp $f8                                        ; $63ff: $fe $f8
    cp $e1                                        ; $6401: $fe $e1
    jr nz, jr_076_6470                            ; $6403: $20 $6b

    ld [hl+], a                                   ; $6405: $22
    ld h, b                                       ; $6406: $60
    db $10                                        ; $6407: $10
    rst $38                                       ; $6408: $ff
    db $10                                        ; $6409: $10
    ld a, a                                       ; $640a: $7f
    ld hl, $7fef                                  ; $640b: $21 $ef $7f
    jr nz, jr_076_648f                            ; $640e: $20 $7f

    ld b, b                                       ; $6410: $40
    cp d                                          ; $6411: $ba
    db $e4                                        ; $6412: $e4
    ld b, b                                       ; $6413: $40
    cp $40                                        ; $6414: $fe $40
    pop de                                        ; $6416: $d1
    db $fc                                        ; $6417: $fc
    db $e4                                        ; $6418: $e4
    ld b, b                                       ; $6419: $40
    ld a, [$4cc0]                                 ; $641a: $fa $c0 $4c
    pop hl                                        ; $641d: $e1
    ld b, b                                       ; $641e: $40
    or d                                          ; $641f: $b2
    and c                                         ; $6420: $a1
    ccf                                           ; $6421: $3f
    ld b, $6d                                     ; $6422: $06 $6d
    add hl, de                                    ; $6424: $19
    sbc h                                         ; $6425: $9c
    add b                                         ; $6426: $80
    ld b, b                                       ; $6427: $40
    ld a, a                                       ; $6428: $7f
    cp $e1                                        ; $6429: $fe $e1
    rst $38                                       ; $642b: $ff
    ld de, $80aa                                  ; $642c: $11 $aa $80
    rst $38                                       ; $642f: $ff
    dec b                                         ; $6430: $05
    db $fd                                        ; $6431: $fd
    push bc                                       ; $6432: $c5
    ld a, b                                       ; $6433: $78
    ld hl, sp+$48                                 ; $6434: $f8 $48
    ld hl, sp+$18                                 ; $6436: $f8 $18
    sbc $9f                                       ; $6438: $de $9f
    ret nz                                        ; $643a: $c0

    add b                                         ; $643b: $80
    add b                                         ; $643c: $80
    add c                                         ; $643d: $81
    add b                                         ; $643e: $80
    ld [hl], $61                                  ; $643f: $36 $61
    adc a                                         ; $6441: $8f
    add b                                         ; $6442: $80
    xor $ec                                       ; $6443: $ee $ec
    jp $023f                                      ; $6445: $c3 $3f $02


    rrca                                          ; $6448: $0f
    ret z                                         ; $6449: $c8

    ld h, b                                       ; $644a: $60
    ld [bc], a                                    ; $644b: $02
    inc bc                                        ; $644c: $03
    inc b                                         ; $644d: $04
    rst $18                                       ; $644e: $df
    rlca                                          ; $644f: $07
    rlca                                          ; $6450: $07
    rlca                                          ; $6451: $07
    inc b                                         ; $6452: $04
    rlca                                          ; $6453: $07
    ld [hl+], a                                   ; $6454: $22
    ld b, b                                       ; $6455: $40
    ld a, b                                       ; $6456: $78
    add a                                         ; $6457: $87
    pop af                                        ; $6458: $f1
    cp $27                                        ; $6459: $fe $27
    ld [c], a                                     ; $645b: $e2
    rla                                           ; $645c: $17
    ld b, b                                       ; $645d: $40
    pop bc                                        ; $645e: $c1
    ld b, c                                       ; $645f: $41
    rst $38                                       ; $6460: $ff
    add e                                         ; $6461: $83
    db $fc                                        ; $6462: $fc
    adc a                                         ; $6463: $8f
    rst $18                                       ; $6464: $df
    ldh a, [$bf]                                  ; $6465: $f0 $bf
    ld h, b                                       ; $6467: $60
    ld a, a                                       ; $6468: $7f
    ld a, b                                       ; $6469: $78
    or a                                          ; $646a: $b7
    add b                                         ; $646b: $80
    ld a, b                                       ; $646c: $78
    ccf                                           ; $646d: $3f
    cp $f1                                        ; $646e: $fe $f1

jr_076_6470:
    ldh [$80], a                                  ; $6470: $e0 $80
    ld l, a                                       ; $6472: $6f
    ldh [$1f], a                                  ; $6473: $e0 $1f
    ldh a, [rIF]                                  ; $6475: $f0 $0f
    ld hl, sp-$04                                 ; $6477: $f8 $fc
    jp nz, $9b60                                  ; $6479: $c2 $60 $9b

    ret nz                                        ; $647c: $c0

    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    jp $f102                                      ; $647f: $c3 $02 $f1


    ld bc, $57a6                                  ; $6482: $01 $a6 $57
    pop hl                                        ; $6485: $e1
    db $fc                                        ; $6486: $fc
    rlca                                          ; $6487: $07
    ld e, h                                       ; $6488: $5c
    and b                                         ; $6489: $a0
    ret nz                                        ; $648a: $c0

    db $e3                                        ; $648b: $e3
    db $fc                                        ; $648c: $fc
    ret nz                                        ; $648d: $c0

    jp hl                                         ; $648e: $e9


jr_076_648f:
    ld hl, sp-$01                                 ; $648f: $f8 $ff
    sbc a                                         ; $6491: $9f
    or $87                                        ; $6492: $f6 $87
    db $e3                                        ; $6494: $e3
    add c                                         ; $6495: $81
    rst $20                                       ; $6496: $e7
    nop                                           ; $6497: $00
    call z, Call_000_00eb                         ; $6498: $cc $eb $00
    ret nc                                        ; $649b: $d0

    ld d, [hl]                                    ; $649c: $56
    ld b, b                                       ; $649d: $40
    rst $38                                       ; $649e: $ff
    cp $60                                        ; $649f: $fe $60
    ld [bc], a                                    ; $64a1: $02
    cp $fc                                        ; $64a2: $fe $fc
    db $fd                                        ; $64a4: $fd
    db $fc                                        ; $64a5: $fc
    and b                                         ; $64a6: $a0
    ld b, a                                       ; $64a7: $47
    ccf                                           ; $64a8: $3f
    ld bc, $070e                                  ; $64a9: $01 $0e $07
    ld [$ee0f], sp                                ; $64ac: $08 $0f $ee
    ld h, l                                       ; $64af: $65
    add c                                         ; $64b0: $81
    rrca                                          ; $64b1: $0f
    rrca                                          ; $64b2: $0f
    ld [$c029], sp                                ; $64b3: $08 $29 $c0
    rst $38                                       ; $64b6: $ff
    pop bc                                        ; $64b7: $c1
    ccf                                           ; $64b8: $3f
    rst $38                                       ; $64b9: $ff
    pop af                                        ; $64ba: $f1
    rrca                                          ; $64bb: $0f
    db $fd                                        ; $64bc: $fd
    rlca                                          ; $64bd: $07
    cp $1f                                        ; $64be: $fe $1f
    cp $e3                                        ; $64c0: $fe $e3
    scf                                           ; $64c2: $37
    cp $1d                                        ; $64c3: $fe $1d
    db $fc                                        ; $64c5: $fc
    sub d                                         ; $64c6: $92
    jr nz, jr_076_6548                            ; $64c7: $20 $7f

    ret nz                                        ; $64c9: $c0

    adc [hl]                                      ; $64ca: $8e
    add c                                         ; $64cb: $81
    sbc h                                         ; $64cc: $9c
    dec h                                         ; $64cd: $25
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    add hl, de                                    ; $64d0: $19
    ld sp, hl                                     ; $64d1: $f9
    ld [hl], c                                    ; $64d2: $71
    pop hl                                        ; $64d3: $e1
    cp c                                          ; $64d4: $b9
    add c                                         ; $64d5: $81
    jr jr_076_64e2                                ; $64d6: $18 $0a

    or b                                          ; $64d8: $b0
    ldh [$f4], a                                  ; $64d9: $e0 $f4
    ld [de], a                                    ; $64db: $12
    ld b, c                                       ; $64dc: $41
    rst $38                                       ; $64dd: $ff
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00

jr_076_64e2:
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    rst $18                                       ; $64f0: $df
    jp nz, $e200                                  ; $64f1: $c2 $00 $e2

    nop                                           ; $64f4: $00
    ldh a, [$fe]                                  ; $64f5: $f0 $fe
    ldh [$e0], a                                  ; $64f7: $e0 $e0
    nop                                           ; $64f9: $00
    rst $38                                       ; $64fa: $ff
    pop hl                                        ; $64fb: $e1
    nop                                           ; $64fc: $00
    rst $00                                       ; $64fd: $c7
    nop                                           ; $64fe: $00
    rst $08                                       ; $64ff: $cf
    nop                                           ; $6500: $00
    ld b, e                                       ; $6501: $43
    nop                                           ; $6502: $00
    rst $30                                       ; $6503: $f7
    ld b, a                                       ; $6504: $47
    nop                                           ; $6505: $00
    rrca                                          ; $6506: $0f
    cp $e0                                        ; $6507: $fe $e0
    rlca                                          ; $6509: $07
    nop                                           ; $650a: $00
    add a                                         ; $650b: $87
    nop                                           ; $650c: $00
    rst $28                                       ; $650d: $ef
    db $e3                                        ; $650e: $e3
    nop                                           ; $650f: $00
    di                                            ; $6510: $f3
    inc bc                                        ; $6511: $03
    ldh [$e9], a                                  ; $6512: $e0 $e9
    rst $38                                       ; $6514: $ff
    ld hl, sp-$19                                 ; $6515: $f8 $e7
    db $fd                                        ; $6517: $fd
    cp [hl]                                       ; $6518: $be
    ret nc                                        ; $6519: $d0

    db $eb                                        ; $651a: $eb
    rst $28                                       ; $651b: $ef
    ldh [rIE], a                                  ; $651c: $e0 $ff
    nop                                           ; $651e: $00
    rst $38                                       ; $651f: $ff
    nop                                           ; $6520: $00
    ld [hl], l                                    ; $6521: $75
    ld a, a                                       ; $6522: $7f
    cp $e0                                        ; $6523: $fe $e0
    ccf                                           ; $6525: $3f
    cp $e0                                        ; $6526: $fe $e0
    rra                                           ; $6528: $1f
    nop                                           ; $6529: $00
    ld b, c                                       ; $652a: $41
    ld a, [c]                                     ; $652b: $f2
    ldh [rIE], a                                  ; $652c: $e0 $ff
    rst $38                                       ; $652e: $ff
    rrca                                          ; $652f: $0f
    ld hl, sp+$3f                                 ; $6530: $f8 $3f
    ld hl, sp+$7f                                 ; $6532: $f8 $7f
    cp b                                          ; $6534: $b8
    rst $28                                       ; $6535: $ef
    cp a                                          ; $6536: $bf
    cp h                                          ; $6537: $bc
    rst $28                                       ; $6538: $ef
    cp $e3                                        ; $6539: $fe $e3
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    ldh [$e0], a                                  ; $653d: $e0 $e0
    add b                                         ; $653f: $80
    rst $18                                       ; $6540: $df
    ld a, a                                       ; $6541: $7f
    ld hl, sp+$07                                 ; $6542: $f8 $07
    cp $01                                        ; $6544: $fe $01
    rst $10                                       ; $6546: $d7
    pop hl                                        ; $6547: $e1

jr_076_6548:
    rst $38                                       ; $6548: $ff
    ldh [$f6], a                                  ; $6549: $e0 $f6
    ldh a, [$e1]                                  ; $654b: $f0 $e1
    nop                                           ; $654d: $00
    cp $fe                                        ; $654e: $fe $fe
    ldh [$fc], a                                  ; $6550: $e0 $fc
    add b                                         ; $6552: $80
    ld a, h                                       ; $6553: $7c
    ret nz                                        ; $6554: $c0

    rst $28                                       ; $6555: $ef
    ld a, b                                       ; $6556: $78
    ret nz                                        ; $6557: $c0

    jp nz, $c0c0                                  ; $6558: $c2 $c0 $c0

    add sp, $01                                   ; $655b: $e8 $01
    rra                                           ; $655d: $1f
    ld bc, $41fd                                  ; $655e: $01 $fd $41
    reti                                          ; $6561: $d9


    db $e3                                        ; $6562: $e3
    rra                                           ; $6563: $1f
    ldh a, [$7f]                                  ; $6564: $f0 $7f
    ldh a, [rIE]                                  ; $6566: $f0 $ff
    ld [hl], b                                    ; $6568: $70
    rst $18                                       ; $6569: $df
    rst $18                                       ; $656a: $df
    ld a, b                                       ; $656b: $78
    rst $18                                       ; $656c: $df
    db $fc                                        ; $656d: $fc
    rst $00                                       ; $656e: $c7
    and b                                         ; $656f: $a0
    db $e3                                        ; $6570: $e3
    rst $38                                       ; $6571: $ff
    ldh a, [$c7]                                  ; $6572: $f0 $c7
    rrca                                          ; $6574: $0f
    db $fc                                        ; $6575: $fc
    inc bc                                        ; $6576: $03
    cp [hl]                                       ; $6577: $be
    ld [c], a                                     ; $6578: $e2
    ret nz                                        ; $6579: $c0

    and $fe                                       ; $657a: $e6 $fe
    ldh [$f8], a                                  ; $657c: $e0 $f8
    add b                                         ; $657e: $80
    rst $38                                       ; $657f: $ff
    add d                                         ; $6580: $82
    add b                                         ; $6581: $80
    rst $38                                       ; $6582: $ff
    jr @+$01                                      ; $6583: $18 $ff

    inc h                                         ; $6585: $24
    ld a, a                                       ; $6586: $7f
    inc h                                         ; $6587: $24
    rst $38                                       ; $6588: $ff
    ld a, a                                       ; $6589: $7f
    ld [de], a                                    ; $658a: $12
    ccf                                           ; $658b: $3f
    add hl, hl                                    ; $658c: $29
    ccf                                           ; $658d: $3f
    daa                                           ; $658e: $27
    ld a, a                                       ; $658f: $7f
    ld d, h                                       ; $6590: $54
    rst $38                                       ; $6591: $ff
    ld a, a                                       ; $6592: $7f
    ld l, b                                       ; $6593: $68
    db $fc                                        ; $6594: $fc
    rrca                                          ; $6595: $0f
    ldh a, [$1f]                                  ; $6596: $f0 $1f
    pop hl                                        ; $6598: $e1
    ccf                                           ; $6599: $3f
    rst $38                                       ; $659a: $ff
    rst $20                                       ; $659b: $e7
    ccf                                           ; $659c: $3f
    db $eb                                        ; $659d: $eb
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    ld a, $ff                                     ; $65a0: $3e $ff
    ld e, c                                       ; $65a2: $59
    rst $38                                       ; $65a3: $ff
    cp a                                          ; $65a4: $bf
    cp d                                          ; $65a5: $ba
    pop af                                        ; $65a6: $f1
    cp a                                          ; $65a7: $bf
    ld hl, sp-$71                                 ; $65a8: $f8 $8f
    db $fc                                        ; $65aa: $fc
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    adc a                                         ; $65ad: $8f
    rst $38                                       ; $65ae: $ff
    cp $ff                                        ; $65af: $fe $ff
    rst $38                                       ; $65b1: $ff
    ld d, e                                       ; $65b2: $53
    rst $38                                       ; $65b3: $ff
    adc h                                         ; $65b4: $8c
    ei                                            ; $65b5: $fb
    rst $38                                       ; $65b6: $ff
    ld d, d                                       ; $65b7: $52
    ld [hl], d                                    ; $65b8: $72
    ldh [$c0], a                                  ; $65b9: $e0 $c0
    ld a, $e0                                     ; $65bb: $3e $e0
    ld a, $e0                                     ; $65bd: $3e $e0
    rst $38                                       ; $65bf: $ff
    cp h                                          ; $65c0: $bc
    ldh [$fc], a                                  ; $65c1: $e0 $fc
    ret nz                                        ; $65c3: $c0

    ld hl, sp-$40                                 ; $65c4: $f8 $c0
    ld [c], a                                     ; $65c6: $e2
    ldh [rIE], a                                  ; $65c7: $e0 $ff
    rst $38                                       ; $65c9: $ff
    ld c, $f3                                     ; $65ca: $0e $f3
    ld a, $c3                                     ; $65cc: $3e $c3
    ld a, [hl]                                    ; $65ce: $7e
    add a                                         ; $65cf: $87
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    sbc [hl]                                      ; $65d2: $9e
    rst $38                                       ; $65d3: $ff
    xor a                                         ; $65d4: $af
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    ld a, c                                       ; $65d7: $79
    rst $38                                       ; $65d8: $ff
    ld h, [hl]                                    ; $65d9: $66
    rst $38                                       ; $65da: $ff
    sbc a                                         ; $65db: $9f
    ld hl, sp-$39                                 ; $65dc: $f8 $c7
    cp $e1                                        ; $65de: $fe $e1

Call_076_65e0:
    ccf                                           ; $65e0: $3f
    ldh a, [rIE]                                  ; $65e1: $f0 $ff
    rst $38                                       ; $65e3: $ff
    inc a                                         ; $65e4: $3c
    rst $38                                       ; $65e5: $ff
    ld a, [$ffff]                                 ; $65e6: $fa $ff $ff
    ld c, a                                       ; $65e9: $4f
    rst $38                                       ; $65ea: $ff
    inc sp                                        ; $65eb: $33
    or $50                                        ; $65ec: $f6 $50
    db $e4                                        ; $65ee: $e4
    add b                                         ; $65ef: $80
    db $fc                                        ; $65f0: $fc
    cp $e0                                        ; $65f1: $fe $e0
    ld hl, sp+$00                                 ; $65f3: $f8 $00
    add d                                         ; $65f5: $82
    nop                                           ; $65f6: $00
    rst $38                                       ; $65f7: $ff
    ld b, e                                       ; $65f8: $43
    inc bc                                        ; $65f9: $03
    ld b, h                                       ; $65fa: $44
    rlca                                          ; $65fb: $07
    rra                                           ; $65fc: $1f
    rra                                           ; $65fd: $1f
    ccf                                           ; $65fe: $3f
    ld h, $ff                                     ; $65ff: $26 $ff
    ld a, a                                       ; $6601: $7f
    ld h, l                                       ; $6602: $65
    rst $38                                       ; $6603: $ff
    ld e, c                                       ; $6604: $59
    rst $38                                       ; $6605: $ff
    xor $ff                                       ; $6606: $ee $ff
    sbc h                                         ; $6608: $9c
    rst $38                                       ; $6609: $ff
    ret nz                                        ; $660a: $c0

    rst $38                                       ; $660b: $ff
    rlca                                          ; $660c: $07
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    ld sp, hl                                     ; $660f: $f9
    rst $38                                       ; $6610: $ff
    di                                            ; $6611: $f3
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    ld d, a                                       ; $6614: $57
    rst $38                                       ; $6615: $ff
    ld hl, sp-$01                                 ; $6616: $f8 $ff
    and h                                         ; $6618: $a4
    rst $38                                       ; $6619: $ff
    ld b, b                                       ; $661a: $40
    rst $28                                       ; $661b: $ef
    ld a, a                                       ; $661c: $7f
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $18                                       ; $661f: $df
    sub c                                         ; $6620: $91
    ldh [$0e], a                                  ; $6621: $e0 $0e
    rst $38                                       ; $6623: $ff
    adc l                                         ; $6624: $8d
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    ld b, $ff                                     ; $6627: $06 $ff
    inc b                                         ; $6629: $04
    rst $38                                       ; $662a: $ff
    ld h, b                                       ; $662b: $60
    jp nz, $ff80                                  ; $662c: $c2 $80 $ff

    ld [c], a                                     ; $662f: $e2
    ret nz                                        ; $6630: $c0

    ldh a, [$c0]                                  ; $6631: $f0 $c0
    ldh a, [rLCDC]                                ; $6633: $f0 $40
    ldh [rLCDC], a                                ; $6635: $e0 $40
    rst $38                                       ; $6637: $ff
    pop hl                                        ; $6638: $e1
    ld b, b                                       ; $6639: $40
    rst $00                                       ; $663a: $c7
    ld b, b                                       ; $663b: $40
    rst $08                                       ; $663c: $cf
    add b                                         ; $663d: $80
    ld b, e                                       ; $663e: $43
    ld bc, $47ff                                  ; $663f: $01 $ff $47
    rlca                                          ; $6642: $07
    ld [$0f0f], sp                                ; $6643: $08 $0f $0f
    rlca                                          ; $6646: $07
    rlca                                          ; $6647: $07
    ld bc, $87ff                                  ; $6648: $01 $ff $87
    nop                                           ; $664b: $00
    di                                            ; $664c: $f3
    db $10                                        ; $664d: $10
    ei                                            ; $664e: $fb
    ld [$ffff], sp                                ; $664f: $08 $ff $ff
    xor a                                         ; $6652: $af
    add b                                         ; $6653: $80
    rst $38                                       ; $6654: $ff
    rrca                                          ; $6655: $0f
    rst $38                                       ; $6656: $ff
    ret nz                                        ; $6657: $c0

    ldh [$e6], a                                  ; $6658: $e0 $e6
    ld a, a                                       ; $665a: $7f
    ldh [$f0], a                                  ; $665b: $e0 $f0
    rst $30                                       ; $665d: $f7
    rst $38                                       ; $665e: $ff
    ld c, b                                       ; $665f: $48
    pop bc                                        ; $6660: $c1
    call $ffc0                                    ; $6661: $cd $c0 $ff
    cp a                                          ; $6664: $bf
    rst $38                                       ; $6665: $ff
    rra                                           ; $6666: $1f
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    inc e                                         ; $6669: $1c
    rst $38                                       ; $666a: $ff
    ld a, [de]                                    ; $666b: $1a
    rst $38                                       ; $666c: $ff
    inc c                                         ; $666d: $0c
    rst $38                                       ; $666e: $ff
    ld [$c0fe], sp                                ; $666f: $08 $fe $c0
    ldh [rP1], a                                  ; $6672: $e0 $00
    ldh a, [$80]                                  ; $6674: $f0 $80
    ldh a, [$80]                                  ; $6676: $f0 $80
    ldh [$80], a                                  ; $6678: $e0 $80
    rst $38                                       ; $667a: $ff
    pop hl                                        ; $667b: $e1
    add b                                         ; $667c: $80
    rst $00                                       ; $667d: $c7
    add b                                         ; $667e: $80
    rst $08                                       ; $667f: $cf
    add b                                         ; $6680: $80
    ld a, a                                       ; $6681: $7f
    ld d, e                                       ; $6682: $53
    rst $38                                       ; $6683: $ff
    ld a, a                                       ; $6684: $7f
    jr nz, @+$21                                  ; $6685: $20 $1f

    db $10                                        ; $6687: $10
    rrca                                          ; $6688: $0f
    inc c                                         ; $6689: $0c
    rrca                                          ; $668a: $0f
    ld [$87ff], sp                                ; $668b: $08 $ff $87
    inc b                                         ; $668e: $04
    rst $20                                       ; $668f: $e7
    inc b                                         ; $6690: $04
    di                                            ; $6691: $f3
    ld [bc], a                                    ; $6692: $02
    rst $38                                       ; $6693: $ff
    jp z, $ffff                                   ; $6694: $ca $ff $ff

    jp c, Jump_076_46ff                           ; $6697: $da $ff $46

    rst $38                                       ; $669a: $ff
    ld b, l                                       ; $669b: $45
    rst $38                                       ; $669c: $ff
    ld l, a                                       ; $669d: $6f
    db $eb                                        ; $669e: $eb
    rst $38                                       ; $669f: $ff
    ccf                                           ; $66a0: $3f
    jp z, Jump_000_0ce0                           ; $66a1: $ca $e0 $0c

    ld a, [c]                                     ; $66a4: $f2
    ldh [$fa], a                                  ; $66a5: $e0 $fa
    rst $38                                       ; $66a7: $ff
    adc e                                         ; $66a8: $8b
    di                                            ; $66a9: $f3
    rst $38                                       ; $66aa: $ff
    dec b                                         ; $66ab: $05
    dec c                                         ; $66ac: $0d
    ldh [rPCM12], a                               ; $66ad: $e0 $76
    pop hl                                        ; $66af: $e1
    adc c                                         ; $66b0: $89
    ld a, [c]                                     ; $66b1: $f2
    sub b                                         ; $66b2: $90
    ld a, [c]                                     ; $66b3: $f2
    rst $38                                       ; $66b4: $ff
    ret nc                                        ; $66b5: $d0

    ldh a, [rNR10]                                ; $66b6: $f0 $10
    ldh a, [rNR10]                                ; $66b8: $f0 $10
    ldh [$a0], a                                  ; $66ba: $e0 $a0
    pop hl                                        ; $66bc: $e1
    call Call_000_20c0                            ; $66bd: $cd $c0 $20
    call nz, Call_000_0f01                        ; $66c0: $c4 $01 $0f
    cp $e0                                        ; $66c3: $fe $e0
    add b                                         ; $66c5: $80
    ldh [$03], a                                  ; $66c6: $e0 $03
    rst $20                                       ; $66c8: $e7
    rst $38                                       ; $66c9: $ff
    inc b                                         ; $66ca: $04
    rst $30                                       ; $66cb: $f7
    inc [hl]                                      ; $66cc: $34
    rst $38                                       ; $66cd: $ff
    jp hl                                         ; $66ce: $e9


    rst $38                                       ; $66cf: $ff
    dec hl                                        ; $66d0: $2b
    rst $38                                       ; $66d1: $ff
    db $dd                                        ; $66d2: $dd
    ld l, e                                       ; $66d3: $6b
    sub h                                         ; $66d4: $94
    ldh [rNR14], a                                ; $66d5: $e0 $14
    rst $38                                       ; $66d7: $ff
    cp [hl]                                       ; $66d8: $be
    ld b, l                                       ; $66d9: $45
    ldh [$9f], a                                  ; $66da: $e0 $9f
    rst $38                                       ; $66dc: $ff
    ld a, a                                       ; $66dd: $7f
    ld c, e                                       ; $66de: $4b
    rst $38                                       ; $66df: $ff
    ld l, d                                       ; $66e0: $6a
    rst $38                                       ; $66e1: $ff
    db $eb                                        ; $66e2: $eb
    rst $38                                       ; $66e3: $ff
    inc l                                         ; $66e4: $2c
    ldh a, [$e0]                                  ; $66e5: $f0 $e0
    dec [hl]                                      ; $66e7: $35
    ld a, $42                                     ; $66e8: $3e $42
    ret nz                                        ; $66ea: $c0

    ld a, h                                       ; $66eb: $7c
    ld b, b                                       ; $66ec: $40
    ldh [rLCDC], a                                ; $66ed: $e0 $40
    ldh a, [$fe]                                  ; $66ef: $f0 $fe
    ldh [rLCDC], a                                ; $66f1: $e0 $40
    ldh [$bd], a                                  ; $66f3: $e0 $bd
    add b                                         ; $66f5: $80
    ldh [$a1], a                                  ; $66f6: $e0 $a1
    rst $38                                       ; $66f8: $ff
    ld c, b                                       ; $66f9: $48
    rst $38                                       ; $66fa: $ff
    jr c, jr_076_6723                             ; $66fb: $38 $26

    ldh [rSB], a                                  ; $66fd: $e0 $01
    cp $80                                        ; $66ff: $fe $80
    ret nz                                        ; $6701: $c0

    ld hl, sp-$01                                 ; $6702: $f8 $ff
    ccf                                           ; $6704: $3f
    add e                                         ; $6705: $83
    inc bc                                        ; $6706: $03
    rst $38                                       ; $6707: $ff
    ld b, b                                       ; $6708: $40
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    db $e3                                        ; $670b: $e3
    rst $38                                       ; $670c: $ff
    ld a, a                                       ; $670d: $7f
    rst $38                                       ; $670e: $ff
    rla                                           ; $670f: $17
    rst $38                                       ; $6710: $ff
    adc b                                         ; $6711: $88
    rst $38                                       ; $6712: $ff
    ld a, a                                       ; $6713: $7f
    ld b, h                                       ; $6714: $44
    ccf                                           ; $6715: $3f
    ld h, $dd                                     ; $6716: $26 $dd
    rst $18                                       ; $6718: $df
    rst $38                                       ; $6719: $ff
    rst $20                                       ; $671a: $e7
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    add $ff                                       ; $671d: $c6 $ff
    rst $08                                       ; $671f: $cf
    db $fc                                        ; $6720: $fc
    adc a                                         ; $6721: $8f
    db $fc                                        ; $6722: $fc

jr_076_6723:
    rrca                                          ; $6723: $0f
    sbc a                                         ; $6724: $9f
    db $f4                                        ; $6725: $f4
    rra                                           ; $6726: $1f
    db $ec                                        ; $6727: $ec
    ccf                                           ; $6728: $3f
    ret                                           ; $6729: $c9


    ld hl, $fee1                                  ; $672a: $21 $e1 $fe
    and c                                         ; $672d: $a1
    ret nz                                        ; $672e: $c0

    rst $38                                       ; $672f: $ff
    ccf                                           ; $6730: $3f
    ldh a, [rIF]                                  ; $6731: $f0 $0f
    ld hl, sp+$07                                 ; $6733: $f8 $07
    db $fc                                        ; $6735: $fc
    dec c                                         ; $6736: $0d
    db $fc                                        ; $6737: $fc
    cp $ec                                        ; $6738: $fe $ec
    ret nz                                        ; $673a: $c0

    nop                                           ; $673b: $00
    rst $38                                       ; $673c: $ff
    ld bc, $e0fe                                  ; $673d: $01 $fe $e0
    db $fc                                        ; $6740: $fc
    ld a, h                                       ; $6741: $7c
    rst $18                                       ; $6742: $df
    rst $38                                       ; $6743: $ff
    rrca                                          ; $6744: $0f
    ei                                            ; $6745: $fb
    inc bc                                        ; $6746: $03
    add d                                         ; $6747: $82
    ld [c], a                                     ; $6748: $e2
    and b                                         ; $6749: $a0
    rst $38                                       ; $674a: $ff
    add c                                         ; $674b: $81
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $00                                       ; $674e: $c7
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    ccf                                           ; $6751: $3f
    cpl                                           ; $6752: $2f
    ccf                                           ; $6753: $3f
    db $10                                        ; $6754: $10
    rst $38                                       ; $6755: $ff
    sbc a                                         ; $6756: $9f
    sbc b                                         ; $6757: $98
    ld l, a                                       ; $6758: $6f
    inc a                                         ; $6759: $3c
    rst $38                                       ; $675a: $ff
    pop bc                                        ; $675b: $c1
    rst $38                                       ; $675c: $ff
    rst $08                                       ; $675d: $cf
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    adc a                                         ; $6760: $8f
    db $fc                                        ; $6761: $fc
    sbc a                                         ; $6762: $9f
    ld hl, sp+$1f                                 ; $6763: $f8 $1f
    ld hl, sp+$1f                                 ; $6765: $f8 $1f
    rst $28                                       ; $6767: $ef
    add sp, $3f                                   ; $6768: $e8 $3f
    jp c, Jump_000_007f                           ; $676a: $da $7f $00

    call nz, Call_000_3fc0                        ; $676d: $c4 $c0 $3f
    ldh [$3d], a                                  ; $6770: $e0 $3d
    rra                                           ; $6772: $1f
    cp [hl]                                       ; $6773: $be
    ldh [rNR24], a                                ; $6774: $e0 $19
    ld hl, sp-$01                                 ; $6776: $f8 $ff
    ld bc, $e0c2                                  ; $6778: $01 $c2 $e0
    nop                                           ; $677b: $00
    push bc                                       ; $677c: $c5
    db $fc                                        ; $677d: $fc
    ld [hl], b                                    ; $677e: $70
    ret nz                                        ; $677f: $c0

    ld b, b                                       ; $6780: $40
    ret nz                                        ; $6781: $c0

    ld e, $e7                                     ; $6782: $1e $e7
    cp a                                          ; $6784: $bf
    push bc                                       ; $6785: $c5
    rst $38                                       ; $6786: $ff
    add h                                         ; $6787: $84
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    ld b, e                                       ; $678a: $43
    ld a, a                                       ; $678b: $7f
    jr z, jr_076_67cd                             ; $678c: $28 $3f

    ld [hl], b                                    ; $678e: $70
    ccf                                           ; $678f: $3f
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    ld [hl], d                                    ; $6792: $72
    rst $38                                       ; $6793: $ff
    ld [bc], a                                    ; $6794: $02
    cp $24                                        ; $6795: $fe $24
    cp $06                                        ; $6797: $fe $06
    db $fd                                        ; $6799: $fd
    rst $08                                       ; $679a: $cf
    adc a                                         ; $679b: $8f
    ld hl, sp-$01                                 ; $679c: $f8 $ff
    and d                                         ; $679e: $a2
    cp $e0                                        ; $679f: $fe $e0
    ld h, b                                       ; $67a1: $60
    and a                                         ; $67a2: $a7
    cp a                                          ; $67a3: $bf
    add b                                         ; $67a4: $80
    cp a                                          ; $67a5: $bf
    ld e, a                                       ; $67a6: $5f
    ret nz                                        ; $67a7: $c0

    ld b, c                                       ; $67a8: $41
    ret nz                                        ; $67a9: $c0

    rst $38                                       ; $67aa: $ff
    ld c, h                                       ; $67ab: $4c
    jp nc, Jump_000_22c0                          ; $67ac: $d2 $c0 $22

    rst $28                                       ; $67af: $ef
    rst $38                                       ; $67b0: $ff
    db $10                                        ; $67b1: $10
    rst $38                                       ; $67b2: $ff
    dec c                                         ; $67b3: $0d
    adc c                                         ; $67b4: $89
    ret nz                                        ; $67b5: $c0

    add hl, de                                    ; $67b6: $19
    sbc a                                         ; $67b7: $9f
    rla                                           ; $67b8: $17
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    sub d                                         ; $67bb: $92
    rst $38                                       ; $67bc: $ff
    cp c                                          ; $67bd: $b9
    rst $28                                       ; $67be: $ef
    ld hl, sp-$09                                 ; $67bf: $f8 $f7
    cp h                                          ; $67c1: $bc
    rst $38                                       ; $67c2: $ff
    rst $30                                       ; $67c3: $f7
    inc e                                         ; $67c4: $1c
    di                                            ; $67c5: $f3
    ld a, $f1                                     ; $67c6: $3e $f1
    rst $38                                       ; $67c8: $ff
    pop af                                        ; $67c9: $f1
    rra                                           ; $67ca: $1f
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff

jr_076_67cd:
    inc h                                         ; $67cd: $24
    rst $38                                       ; $67ce: $ff
    ret z                                         ; $67cf: $c8

    cp $08                                        ; $67d0: $fe $08
    cp $98                                        ; $67d2: $fe $98
    ld a, a                                       ; $67d4: $7f
    or $1e                                        ; $67d5: $f6 $1e
    pop af                                        ; $67d7: $f1
    ccf                                           ; $67d8: $3f
    ret nz                                        ; $67d9: $c0

    rst $38                                       ; $67da: $ff
    ld b, h                                       ; $67db: $44
    ret nz                                        ; $67dc: $c0

    add sp, -$41                                  ; $67dd: $e8 $bf
    ccf                                           ; $67df: $3f
    nop                                           ; $67e0: $00
    sbc a                                         ; $67e1: $9f
    add b                                         ; $67e2: $80
    ld b, c                                       ; $67e3: $41
    ret nz                                        ; $67e4: $c0

    ret nc                                        ; $67e5: $d0

    add c                                         ; $67e6: $81
    pop af                                        ; $67e7: $f1
    ld a, a                                       ; $67e8: $7f
    ld bc, $07f7                                  ; $67e9: $01 $f7 $07
    db $fc                                        ; $67ec: $fc
    inc e                                         ; $67ed: $1c
    pop af                                        ; $67ee: $f1
    ld [hl], b                                    ; $67ef: $70
    ret nc                                        ; $67f0: $d0

    add c                                         ; $67f1: $81
    rst $38                                       ; $67f2: $ff
    ld c, a                                       ; $67f3: $4f
    rrca                                          ; $67f4: $0f
    ld h, h                                       ; $67f5: $64
    ld h, a                                       ; $67f6: $67
    call z, Call_000_0cc7                         ; $67f7: $cc $c7 $0c
    rlca                                          ; $67fa: $07
    rst $38                                       ; $67fb: $ff
    inc c                                         ; $67fc: $0c
    rrca                                          ; $67fd: $0f
    sbc [hl]                                      ; $67fe: $9e
    dec de                                        ; $67ff: $1b
    rst $30                                       ; $6800: $f7
    dec d                                         ; $6801: $15
    rst $30                                       ; $6802: $f7
    inc h                                         ; $6803: $24
    sub a                                         ; $6804: $97
    ld [hl], c                                    ; $6805: $71
    rst $38                                       ; $6806: $ff

jr_076_6807:
    jr nz, jr_076_6807                            ; $6807: $20 $fe

    ldh [rLCDC], a                                ; $6809: $e0 $40
    ld d, h                                       ; $680b: $54
    and e                                         ; $680c: $a3
    ld [bc], a                                    ; $680d: $02
    and b                                         ; $680e: $a0
    ccf                                           ; $680f: $3f
    rst $38                                       ; $6810: $ff
    db $f4                                        ; $6811: $f4
    rst $38                                       ; $6812: $ff
    jp nz, $c27f                                  ; $6813: $c2 $7f $c2

    ccf                                           ; $6816: $3f
    pop hl                                        ; $6817: $e1
    ccf                                           ; $6818: $3f
    ei                                            ; $6819: $fb
    rst $38                                       ; $681a: $ff
    ld h, c                                       ; $681b: $61
    dec h                                         ; $681c: $25
    ldh [$c1], a                                  ; $681d: $e0 $c1
    ld a, a                                       ; $681f: $7f
    rst $00                                       ; $6820: $c7
    rlca                                          ; $6821: $07
    cp $7f                                        ; $6822: $fe $7f
    ld a, h                                       ; $6824: $7c
    pop af                                        ; $6825: $f1
    ld bc, $02f3                                  ; $6826: $01 $f3 $02
    rst $28                                       ; $6829: $ef
    inc c                                         ; $682a: $0c
    ld a, h                                       ; $682b: $7c
    ldh [$7f], a                                  ; $682c: $e0 $7f
    ld [hl-], a                                   ; $682e: $32
    rst $38                                       ; $682f: $ff
    ld e, c                                       ; $6830: $59
    ld c, a                                       ; $6831: $4f
    ld a, a                                       ; $6832: $7f
    db $ec                                        ; $6833: $ec
    cp a                                          ; $6834: $bf
    inc d                                         ; $6835: $14
    ldh [$fd], a                                  ; $6836: $e0 $fd
    rrca                                          ; $6838: $0f
    ret nc                                        ; $6839: $d0

    ret nz                                        ; $683a: $c0

    rla                                           ; $683b: $17
    and $27                                       ; $683c: $e6 $27
    rst $30                                       ; $683e: $f7
    ld b, l                                       ; $683f: $45
    ld a, [c]                                     ; $6840: $f2
    db $d3                                        ; $6841: $d3
    rst $38                                       ; $6842: $ff
    ld b, c                                       ; $6843: $41
    xor l                                         ; $6844: $ad
    ret nz                                        ; $6845: $c0

    set 0, c                                      ; $6846: $cb $c1
    nop                                           ; $6848: $00
    and [hl]                                      ; $6849: $a6
    and c                                         ; $684a: $a1
    ld hl, sp+$7f                                 ; $684b: $f8 $7f
    or a                                          ; $684d: $b7
    db $e4                                        ; $684e: $e4
    rst $38                                       ; $684f: $ff
    add d                                         ; $6850: $82
    cp [hl]                                       ; $6851: $be
    ldh [$fe], a                                  ; $6852: $e0 $fe
    ld [hl], c                                    ; $6854: $71
    ret nz                                        ; $6855: $c0

    ld [c], a                                     ; $6856: $e2
    db $d3                                        ; $6857: $d3
    rst $38                                       ; $6858: $ff
    ld a, a                                       ; $6859: $7f
    ld d, b                                       ; $685a: $50
    rra                                           ; $685b: $1f
    ld h, b                                       ; $685c: $60
    ccf                                           ; $685d: $3f
    jr nz, @+$41                                  ; $685e: $20 $3f

jr_076_6860:
    ld b, b                                       ; $6860: $40
    rst $18                                       ; $6861: $df
    ld a, a                                       ; $6862: $7f
    ld b, b                                       ; $6863: $40
    ld a, a                                       ; $6864: $7f
    ldh a, [$7f]                                  ; $6865: $f0 $7f
    ld h, b                                       ; $6867: $60
    and b                                         ; $6868: $a0
    ld b, b                                       ; $6869: $40
    jp nz, $eff8                                  ; $686a: $c2 $f8 $ef

    pop bc                                        ; $686d: $c1
    db $fc                                        ; $686e: $fc
    ld [c], a                                     ; $686f: $e2
    ld a, b                                       ; $6870: $78
    and d                                         ; $6871: $a2
    ld bc, $e023                                  ; $6872: $01 $23 $e0
    ld h, a                                       ; $6875: $67
    ldh [rIE], a                                  ; $6876: $e0 $ff
    rst $38                                       ; $6878: $ff
    sub b                                         ; $6879: $90
    rst $38                                       ; $687a: $ff
    db $10                                        ; $687b: $10
    rst $28                                       ; $687c: $ef
    ld a, b                                       ; $687d: $78
    add a                                         ; $687e: $87
    db $fc                                        ; $687f: $fc
    cp a                                          ; $6880: $bf
    db $e3                                        ; $6881: $e3
    cp $c3                                        ; $6882: $fe $c3
    cp $cf                                        ; $6884: $fe $cf
    ld a, [bc]                                    ; $6886: $0a
    jp c, Jump_000_03a0                           ; $6887: $da $a0 $03

    cp $20                                        ; $688a: $fe $20
    add a                                         ; $688c: $87
    pop hl                                        ; $688d: $e1
    ccf                                           ; $688e: $3f
    ret nz                                        ; $688f: $c0

    ld a, a                                       ; $6890: $7f
    ret nz                                        ; $6891: $c0

    rst $38                                       ; $6892: $ff
    ret nz                                        ; $6893: $c0

    cp $57                                        ; $6894: $fe $57
    and b                                         ; $6896: $a0
    ldh [$7f], a                                  ; $6897: $e0 $7f
    rst $38                                       ; $6899: $ff
    ld e, a                                       ; $689a: $5f
    rst $38                                       ; $689b: $ff
    ld b, b                                       ; $689c: $40
    call nz, $ffef                                ; $689d: $c4 $ef $ff
    ld [bc], a                                    ; $68a0: $02
    rst $38                                       ; $68a1: $ff
    inc bc                                        ; $68a2: $03
    ret nz                                        ; $68a3: $c0

    add sp, $43                                   ; $68a4: $e8 $43
    ret nz                                        ; $68a6: $c0

    rst $20                                       ; $68a7: $e7
    db $fd                                        ; $68a8: $fd
    and b                                         ; $68a9: $a0
    ld [c], a                                     ; $68aa: $e2
    ret nz                                        ; $68ab: $c0

    jr @-$07                                      ; $68ac: $18 $f7

    inc a                                         ; $68ae: $3c
    jp $f1fe                                      ; $68af: $c3 $fe $f1


    ld d, a                                       ; $68b2: $57
    ld a, a                                       ; $68b3: $7f
    pop hl                                        ; $68b4: $e1
    ld a, a                                       ; $68b5: $7f
    db $fd                                        ; $68b6: $fd
    ret nz                                        ; $68b7: $c0

    adc b                                         ; $68b8: $88
    jp nc, Jump_000_10c0                          ; $68b9: $d2 $c0 $10

    add hl, hl                                    ; $68bc: $29
    ld [c], a                                     ; $68bd: $e2
    rst $10                                       ; $68be: $d7
    jr nc, jr_076_6860                            ; $68bf: $30 $9f

    rra                                           ; $68c1: $1f
    add hl, sp                                    ; $68c2: $39
    add d                                         ; $68c3: $82
    ld b, h                                       ; $68c4: $44
    db $fc                                        ; $68c5: $fc
    and b                                         ; $68c6: $a0
    db $10                                        ; $68c7: $10
    rst $38                                       ; $68c8: $ff
    cp l                                          ; $68c9: $bd
    ld [hl], b                                    ; $68ca: $70
    dec d                                         ; $68cb: $15
    ldh [$e0], a                                  ; $68cc: $e0 $e0
    db $e3                                        ; $68ce: $e3

jr_076_68cf:
    ld a, a                                       ; $68cf: $7f
    pop bc                                        ; $68d0: $c1
    cp $e0                                        ; $68d1: $fe $e0

jr_076_68d3:
    db $e3                                        ; $68d3: $e3
    rst $38                                       ; $68d4: $ff
    ccf                                           ; $68d5: $3f
    db $fc                                        ; $68d6: $fc
    inc a                                         ; $68d7: $3c
    db $fc                                        ; $68d8: $fc
    jr nz, jr_076_68d3                            ; $68d9: $20 $f8

    jr nz, jr_076_68cf                            ; $68db: $20 $f2

    db $fd                                        ; $68dd: $fd
    db $10                                        ; $68de: $10
    call z, Call_076_4980                         ; $68df: $cc $80 $49
    ld a, a                                       ; $68e2: $7f
    ld [hl-], a                                   ; $68e3: $32
    ld a, a                                       ; $68e4: $7f
    dec e                                         ; $68e5: $1d
    ccf                                           ; $68e6: $3f
    sub l                                         ; $68e7: $95
    ld b, $f0                                     ; $68e8: $06 $f0
    ld h, h                                       ; $68ea: $64
    add h                                         ; $68eb: $84
    ret nz                                        ; $68ec: $c0

    ldh [$90], a                                  ; $68ed: $e0 $90
    ld l, [hl]                                    ; $68ef: $6e
    ldh [$c0], a                                  ; $68f0: $e0 $c0
    db $e4                                        ; $68f2: $e4
    pop hl                                        ; $68f3: $e1
    cp [hl]                                       ; $68f4: $be
    jp nc, Jump_076_7fe1                          ; $68f5: $d2 $e1 $7f

    xor $3c                                       ; $68f8: $ee $3c
    db $fc                                        ; $68fa: $fc
    jr nc, @-$2e                                  ; $68fb: $30 $d0

    db $e4                                        ; $68fd: $e4
    ld h, b                                       ; $68fe: $60
    xor d                                         ; $68ff: $aa
    cp [hl]                                       ; $6900: $be
    and b                                         ; $6901: $a0
    add d                                         ; $6902: $82
    db $fc                                        ; $6903: $fc
    and b                                         ; $6904: $a0
    add b                                         ; $6905: $80
    scf                                           ; $6906: $37
    ld [c], a                                     ; $6907: $e2
    pop hl                                        ; $6908: $e1
    ld [hl], e                                    ; $6909: $73
    ldh [$03], a                                  ; $690a: $e0 $03
    set 7, a                                      ; $690c: $cb $ff
    ld hl, $e05f                                  ; $690e: $21 $5f $e0
    add b                                         ; $6911: $80
    dec e                                         ; $6912: $1d
    ldh [$f7], a                                  ; $6913: $e0 $f7
    ret nz                                        ; $6915: $c0

    adc e                                         ; $6916: $8b
    cp $3f                                        ; $6917: $fe $3f
    or e                                          ; $6919: $b3
    cp $e6                                        ; $691a: $fe $e6
    db $fc                                        ; $691c: $fc
    cp $98                                        ; $691d: $fe $98
    add b                                         ; $691f: $80
    add d                                         ; $6920: $82
    db $10                                        ; $6921: $10
    add c                                         ; $6922: $81
    xor d                                         ; $6923: $aa
    ret nc                                        ; $6924: $d0

    pop hl                                        ; $6925: $e1
    ld b, d                                       ; $6926: $42
    ret nc                                        ; $6927: $d0

    ld [c], a                                     ; $6928: $e2
    add c                                         ; $6929: $81
    db $f4                                        ; $692a: $f4
    and b                                         ; $692b: $a0
    pop bc                                        ; $692c: $c1
    ret nc                                        ; $692d: $d0

    db $e4                                        ; $692e: $e4
    pop bc                                        ; $692f: $c1
    cp $d0                                        ; $6930: $fe $d0
    push hl                                       ; $6932: $e5
    push bc                                       ; $6933: $c5
    ld a, a                                       ; $6934: $7f
    reti                                          ; $6935: $d9


    ld a, a                                       ; $6936: $7f
    ld a, [c]                                     ; $6937: $f2
    ld a, [hl]                                    ; $6938: $7e
    cp $b9                                        ; $6939: $fe $b9
    inc c                                         ; $693b: $0c
    ret nc                                        ; $693c: $d0

    push hl                                       ; $693d: $e5
    jr nc, jr_076_69ab                            ; $693e: $30 $6b

    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    ldh a, [rP1]                                  ; $6942: $f0 $00
    ldh [$80], a                                  ; $6944: $e0 $80
    sbc $8c                                       ; $6946: $de $8c
    add b                                         ; $6948: $80
    rst $38                                       ; $6949: $ff
    ld a, a                                       ; $694a: $7f
    ret nz                                        ; $694b: $c0

    ld a, a                                       ; $694c: $7f
    adc $80                                       ; $694d: $ce $80
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $00                                       ; $6951: $c7
    rst $00                                       ; $6952: $c7
    ld a, b                                       ; $6953: $78
    rst $18                                       ; $6954: $df
    scf                                           ; $6955: $37
    ld [c], a                                     ; $6956: $e2
    pop bc                                        ; $6957: $c1
    add b                                         ; $6958: $80
    ld h, d                                       ; $6959: $62
    ld h, b                                       ; $695a: $60
    rst $38                                       ; $695b: $ff
    ld a, [c]                                     ; $695c: $f2
    rst $30                                       ; $695d: $f7
    sub b                                         ; $695e: $90
    ld h, d                                       ; $695f: $62
    ldh [$d1], a                                  ; $6960: $e0 $d1
    add b                                         ; $6962: $80
    ldh a, [$08]                                  ; $6963: $f0 $08
    ld hl, sp-$07                                 ; $6965: $f8 $f9
    rst $18                                       ; $6967: $df
    ld hl, sp+$0f                                 ; $6968: $f8 $0f
    ld hl, sp-$01                                 ; $696a: $f8 $ff
    rst $38                                       ; $696c: $ff
    db $10                                        ; $696d: $10
    add c                                         ; $696e: $81
    ld [$fd0f], sp                                ; $696f: $08 $0f $fd
    ld [$804f], sp                                ; $6972: $08 $4f $80
    add h                                         ; $6975: $84
    rlca                                          ; $6976: $07
    db $e3                                        ; $6977: $e3
    inc bc                                        ; $6978: $03
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    ld e, a                                       ; $697b: $5f
    rra                                           ; $697c: $1f
    ld sp, hl                                     ; $697d: $f9
    rlca                                          ; $697e: $07
    db $fd                                        ; $697f: $fd
    rlca                                          ; $6980: $07
    ld a, e                                       ; $6981: $7b
    and b                                         ; $6982: $a0
    rst $38                                       ; $6983: $ff
    db $fc                                        ; $6984: $fc
    pop hl                                        ; $6985: $e1
    sub [hl]                                      ; $6986: $96
    xor e                                         ; $6987: $ab
    ld h, b                                       ; $6988: $60
    rst $38                                       ; $6989: $ff
    add e                                         ; $698a: $83
    adc [hl]                                      ; $698b: $8e
    ld h, c                                       ; $698c: $61
    ldh a, [rTAC]                                 ; $698d: $f0 $07
    add c                                         ; $698f: $81
    xor [hl]                                      ; $6990: $ae
    pop hl                                        ; $6991: $e1
    rst $38                                       ; $6992: $ff
    ei                                            ; $6993: $fb
    jp nz, $c080                                  ; $6994: $c2 $80 $c0

    pop hl                                        ; $6997: $e1
    ld [$08f8], sp                                ; $6998: $08 $f8 $08
    ld hl, sp-$0f                                 ; $699b: $f8 $f1
    rst $38                                       ; $699d: $ff
    ldh a, [rNR22]                                ; $699e: $f0 $17
    ldh a, [rIE]                                  ; $69a0: $f0 $ff
    rst $38                                       ; $69a2: $ff
    ld b, [hl]                                    ; $69a3: $46
    rlca                                          ; $69a4: $07
    ld c, b                                       ; $69a5: $48
    rst $38                                       ; $69a6: $ff
    rrca                                          ; $69a7: $0f
    db $10                                        ; $69a8: $10
    rra                                           ; $69a9: $1f
    db $10                                        ; $69aa: $10

jr_076_69ab:
    rra                                           ; $69ab: $1f
    rrca                                          ; $69ac: $0f
    rrca                                          ; $69ad: $0f
    adc b                                         ; $69ae: $88
    ei                                            ; $69af: $fb
    rrca                                          ; $69b0: $0f
    rst $20                                       ; $69b1: $e7
    push de                                       ; $69b2: $d5
    ld h, b                                       ; $69b3: $60
    ccf                                           ; $69b4: $3f
    pop af                                        ; $69b5: $f1
    rrca                                          ; $69b6: $0f
    ld sp, hl                                     ; $69b7: $f9
    rrca                                          ; $69b8: $0f
    ld a, [hl]                                    ; $69b9: $7e
    ld e, l                                       ; $69ba: $5d
    and b                                         ; $69bb: $a0
    cp $fe                                        ; $69bc: $fe $fe
    inc bc                                        ; $69be: $03
    cp $ff                                        ; $69bf: $fe $ff
    db $fc                                        ; $69c1: $fc
    inc de                                        ; $69c2: $13
    add c                                         ; $69c3: $81
    ld [hl], h                                    ; $69c4: $74
    rst $38                                       ; $69c5: $ff
    ld h, b                                       ; $69c6: $60
    ld l, a                                       ; $69c7: $6f
    ldh [$bf], a                                  ; $69c8: $e0 $bf
    cp $e0                                        ; $69ca: $fe $e0
    sbc a                                         ; $69cc: $9f
    add b                                         ; $69cd: $80
    pop bc                                        ; $69ce: $c1
    ld h, a                                       ; $69cf: $67
    ldh [rHDMA4], a                               ; $69d0: $e0 $54
    jr nz, jr_076_6a3c                            ; $69d2: $20 $68

    sub b                                         ; $69d4: $90
    ld h, b                                       ; $69d5: $60
    jp $800a                                      ; $69d6: $c3 $0a $80


    adc a                                         ; $69d9: $8f
    cp $e0                                        ; $69da: $fe $e0
    add a                                         ; $69dc: $87
    cp $e0                                        ; $69dd: $fe $e0
    rla                                           ; $69df: $17
    db $e3                                        ; $69e0: $e3
    add b                                         ; $69e1: $80
    di                                            ; $69e2: $f3
    call nc, $fee2                                ; $69e3: $d4 $e2 $fe
    cp $e0                                        ; $69e6: $fe $e0
    ldh a, [$c5]                                  ; $69e8: $f0 $c5
    and b                                         ; $69ea: $a0
    ld h, b                                       ; $69eb: $60
    nop                                           ; $69ec: $00
    ld [c], a                                     ; $69ed: $e2
    ld h, b                                       ; $69ee: $60
    ldh [$67], a                                  ; $69ef: $e0 $67
    or d                                          ; $69f1: $b2
    db $e3                                        ; $69f2: $e3
    or b                                          ; $69f3: $b0
    rst $20                                       ; $69f4: $e7
    ldh [$eb], a                                  ; $69f5: $e0 $eb
    ld [hl], c                                    ; $69f7: $71
    ld b, b                                       ; $69f8: $40
    rst $38                                       ; $69f9: $ff
    db $ec                                        ; $69fa: $ec
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    rst $38                                       ; $6a00: $ff
    di                                            ; $6a01: $f3
    nop                                           ; $6a02: $00
    rrca                                          ; $6a03: $0f
    nop                                           ; $6a04: $00
    ld a, c                                       ; $6a05: $79
    nop                                           ; $6a06: $00
    ld h, c                                       ; $6a07: $61
    nop                                           ; $6a08: $00
    rst $38                                       ; $6a09: $ff
    ld b, c                                       ; $6a0a: $41
    nop                                           ; $6a0b: $00
    inc bc                                        ; $6a0c: $03
    nop                                           ; $6a0d: $00
    rlca                                          ; $6a0e: $07
    nop                                           ; $6a0f: $00
    rra                                           ; $6a10: $1f
    nop                                           ; $6a11: $00
    db $fd                                        ; $6a12: $fd
    rst $38                                       ; $6a13: $ff
    cp $e4                                        ; $6a14: $fe $e4
    rst $30                                       ; $6a16: $f7
    rlca                                          ; $6a17: $07
    rst $18                                       ; $6a18: $df
    dec e                                         ; $6a19: $1d
    rst $20                                       ; $6a1a: $e7
    ld a, l                                       ; $6a1b: $7d
    ei                                            ; $6a1c: $fb
    add a                                         ; $6a1d: $87
    db $fc                                        ; $6a1e: $fc
    ldh a, [$e5]                                  ; $6a1f: $f0 $e5
    rst $08                                       ; $6a21: $cf
    ret nz                                        ; $6a22: $c0

    inc sp                                        ; $6a23: $33
    ldh a, [$8d]                                  ; $6a24: $f0 $8d
    rst $10                                       ; $6a26: $d7
    db $fc                                        ; $6a27: $fc
    jp nz, $d07e                                  ; $6a28: $c2 $7e $d0

    db $ec                                        ; $6a2b: $ec
    ld bc, $e4d0                                  ; $6a2c: $01 $d0 $e4
    rlca                                          ; $6a2f: $07
    rst $38                                       ; $6a30: $ff
    or $d2                                        ; $6a31: $f6 $d2
    ld [c], a                                     ; $6a33: $e2
    rrca                                          ; $6a34: $0f
    rst $38                                       ; $6a35: $ff
    ret nz                                        ; $6a36: $c0

    db $e4                                        ; $6a37: $e4
    ret nz                                        ; $6a38: $c0

    ccf                                           ; $6a39: $3f
    ldh a, [$8f]                                  ; $6a3a: $f0 $8f

jr_076_6a3c:
    rst $28                                       ; $6a3c: $ef
    db $fc                                        ; $6a3d: $fc
    jp $e17e                                      ; $6a3e: $c3 $7e $e1


    ldh a, [$e5]                                  ; $6a41: $f0 $e5
    nop                                           ; $6a43: $00
    rst $38                                       ; $6a44: $ff
    rrca                                          ; $6a45: $0f
    cp a                                          ; $6a46: $bf
    cp $3b                                        ; $6a47: $fe $3b
    rst $08                                       ; $6a49: $cf
    ei                                            ; $6a4a: $fb
    rrca                                          ; $6a4b: $0f
    ld hl, sp-$60                                 ; $6a4c: $f8 $a0
    push hl                                       ; $6a4e: $e5
    adc a                                         ; $6a4f: $8f
    rst $38                                       ; $6a50: $ff
    add b                                         ; $6a51: $80
    ld [hl], e                                    ; $6a52: $73
    ldh [rNR33], a                                ; $6a53: $e0 $1d
    ld hl, sp-$7a                                 ; $6a55: $f8 $86
    db $fc                                        ; $6a57: $fc
    rst $38                                       ; $6a58: $ff
    ld sp, hl                                     ; $6a59: $f9
    ld bc, $e2fe                                  ; $6a5a: $01 $fe $e2
    adc b                                         ; $6a5d: $88
    pop hl                                        ; $6a5e: $e1
    ld bc, $02ff                                  ; $6a5f: $01 $ff $02
    rst $38                                       ; $6a62: $ff
    ld [bc], a                                    ; $6a63: $02
    rst $38                                       ; $6a64: $ff
    rrca                                          ; $6a65: $0f
    rst $38                                       ; $6a66: $ff
    inc a                                         ; $6a67: $3c
    rst $38                                       ; $6a68: $ff
    ld e, a                                       ; $6a69: $5f
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    ld a, [c]                                     ; $6a6c: $f2
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    call z, $d2ff                                 ; $6a6f: $cc $ff $d2
    rst $38                                       ; $6a72: $ff
    ld d, [hl]                                    ; $6a73: $56
    rst $38                                       ; $6a74: $ff
    rst $10                                       ; $6a75: $d7
    rst $38                                       ; $6a76: $ff
    pop hl                                        ; $6a77: $e1
    rst $38                                       ; $6a78: $ff
    ld a, c                                       ; $6a79: $79
    rst $38                                       ; $6a7a: $ff
    push af                                       ; $6a7b: $f5
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    sbc [hl]                                      ; $6a7e: $9e
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    ld h, [hl]                                    ; $6a81: $66
    rst $38                                       ; $6a82: $ff
    sub a                                         ; $6a83: $97
    rst $38                                       ; $6a84: $ff
    call nc, $d6ff                                ; $6a85: $d4 $ff $d6
    ld h, h                                       ; $6a88: $64
    or b                                          ; $6a89: $b0
    and $56                                       ; $6a8a: $e6 $56
    pop hl                                        ; $6a8c: $e1
    add b                                         ; $6a8d: $80
    cp $e0                                        ; $6a8e: $fe $e0
    jp nz, $ffea                                  ; $6a90: $c2 $ea $ff

    ld [bc], a                                    ; $6a93: $02
    jp nz, $abeb                                  ; $6a94: $c2 $eb $ab

    rst $38                                       ; $6a97: $ff
    inc [hl]                                      ; $6a98: $34
    jp nz, $fee1                                  ; $6a99: $c2 $e1 $fe

    jp nz, $58e7                                  ; $6a9c: $c2 $e7 $58

    jp nz, $80ec                                  ; $6a9f: $c2 $ec $80

    cp d                                          ; $6aa2: $ba
    sub d                                         ; $6aa3: $92
    db $e4                                        ; $6aa4: $e4
    ret nz                                        ; $6aa5: $c0

    sub b                                         ; $6aa6: $90
    ldh [rHDMA2], a                               ; $6aa7: $e0 $52
    rst $38                                       ; $6aa9: $ff
    push bc                                       ; $6aaa: $c5
    ret nc                                        ; $6aab: $d0

    and $06                                       ; $6aac: $e6 $06
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    ld h, a                                       ; $6ab0: $67
    rst $38                                       ; $6ab1: $ff
    sub h                                         ; $6ab2: $94
    rst $38                                       ; $6ab3: $ff
    add [hl]                                      ; $6ab4: $86
    rst $38                                       ; $6ab5: $ff
    ld e, b                                       ; $6ab6: $58
    di                                            ; $6ab7: $f3
    cp $03                                        ; $6ab8: $fe $03
    cp $e1                                        ; $6aba: $fe $e1
    ld e, d                                       ; $6abc: $5a
    ld [c], a                                     ; $6abd: $e2
    inc bc                                        ; $6abe: $03
    rst $38                                       ; $6abf: $ff
    inc b                                         ; $6ac0: $04
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    dec b                                         ; $6ac3: $05
    rra                                           ; $6ac4: $1f
    rst $38                                       ; $6ac5: $ff
    ld a, b                                       ; $6ac6: $78
    rst $38                                       ; $6ac7: $ff
    cp a                                          ; $6ac8: $bf
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    push hl                                       ; $6acc: $e5
    rst $38                                       ; $6acd: $ff
    sbc b                                         ; $6ace: $98
    rst $38                                       ; $6acf: $ff
    and l                                         ; $6ad0: $a5
    rst $38                                       ; $6ad1: $ff
    xor l                                         ; $6ad2: $ad
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    xor a                                         ; $6ad5: $af
    jp nz, $f2fe                                  ; $6ad6: $c2 $fe $f2

    cp $ea                                        ; $6ad9: $fe $ea
    cp $fd                                        ; $6adb: $fe $fd
    dec e                                         ; $6add: $1d
    inc a                                         ; $6ade: $3c
    ld d, b                                       ; $6adf: $50
    ldh [$2e], a                                  ; $6ae0: $e0 $2e
    rst $38                                       ; $6ae2: $ff
    xor c                                         ; $6ae3: $a9
    xor $e0                                       ; $6ae4: $ee $e0

Jump_076_6ae6:
    ld h, b                                       ; $6ae6: $60
    jp hl                                         ; $6ae7: $e9


    or d                                          ; $6ae8: $b2
    ret nz                                        ; $6ae9: $c0

    rst $38                                       ; $6aea: $ff
    rrca                                          ; $6aeb: $0f
    ld [bc], a                                    ; $6aec: $02
    di                                            ; $6aed: $f3
    ld [bc], a                                    ; $6aee: $02
    dec e                                         ; $6aef: $1d
    ld bc, $00e6                                  ; $6af0: $01 $e6 $00
    db $fd                                        ; $6af3: $fd
    cp d                                          ; $6af4: $ba
    cp $e0                                        ; $6af5: $fe $e0
    and $00                                       ; $6af7: $e6 $00
    dec e                                         ; $6af9: $1d
    nop                                           ; $6afa: $00
    rst $38                                       ; $6afb: $ff
    inc [hl]                                      ; $6afc: $34
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    jr z, @+$01                                   ; $6aff: $28 $ff

    ld a, h                                       ; $6b01: $7c
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    ld a, $bf                                     ; $6b05: $3e $bf
    rst $38                                       ; $6b07: $ff
    inc h                                         ; $6b08: $24
    rst $38                                       ; $6b09: $ff
    inc de                                        ; $6b0a: $13
    rst $38                                       ; $6b0b: $ff
    db $10                                        ; $6b0c: $10
    ld l, [hl]                                    ; $6b0d: $6e
    ldh [$28], a                                  ; $6b0e: $e0 $28
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    ld a, l                                       ; $6b12: $7d
    rst $38                                       ; $6b13: $ff
    cp $ff                                        ; $6b14: $fe $ff
    ld hl, sp-$01                                 ; $6b16: $f8 $ff
    ld c, b                                       ; $6b18: $48
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    sub b                                         ; $6b1b: $90
    rst $38                                       ; $6b1c: $ff
    db $10                                        ; $6b1d: $10
    ldh a, [$80]                                  ; $6b1e: $f0 $80
    rst $08                                       ; $6b20: $cf
    add b                                         ; $6b21: $80
    rst $18                                       ; $6b22: $df
    cp b                                          ; $6b23: $b8
    nop                                           ; $6b24: $00
    ld h, a                                       ; $6b25: $67
    nop                                           ; $6b26: $00
    ld e, l                                       ; $6b27: $5d
    cp $e0                                        ; $6b28: $fe $e0
    ld h, a                                       ; $6b2a: $67
    nop                                           ; $6b2b: $00
    adc l                                         ; $6b2c: $8d
    cp b                                          ; $6b2d: $b8
    ret nz                                        ; $6b2e: $c0

    pop hl                                        ; $6b2f: $e1
    ld bc, $c61d                                  ; $6b30: $01 $1d $c6
    ldh [$c0], a                                  ; $6b33: $e0 $c0
    and $c2                                       ; $6b35: $e6 $c2
    rst $20                                       ; $6b37: $e7
    rla                                           ; $6b38: $17
    ld a, [hl+]                                   ; $6b39: $2a
    ret nz                                        ; $6b3a: $c0

    ldh [$08], a                                  ; $6b3b: $e0 $08
    jp nz, $d0e8                                  ; $6b3d: $c2 $e8 $d0

    ret nz                                        ; $6b40: $c0

    ldh [rNR41], a                                ; $6b41: $e0 $20
    ret nz                                        ; $6b43: $c0

    ldh [$ca], a                                  ; $6b44: $e0 $ca
    ldh [$7e], a                                  ; $6b46: $e0 $7e
    ret nz                                        ; $6b48: $c0

    pop af                                        ; $6b49: $f1
    cp [hl]                                       ; $6b4a: $be
    ld e, $ff                                     ; $6b4b: $1e $ff
    inc hl                                        ; $6b4d: $23
    ld a, a                                       ; $6b4e: $7f
    ld b, [hl]                                    ; $6b4f: $46
    add d                                         ; $6b50: $82
    ld [$90f7], a                                 ; $6b51: $ea $f7 $90
    rst $38                                       ; $6b54: $ff
    adc c                                         ; $6b55: $89
    add d                                         ; $6b56: $82
    db $eb                                        ; $6b57: $eb
    rst $38                                       ; $6b58: $ff
    jr nz, @+$11                                  ; $6b59: $20 $0f

    inc b                                         ; $6b5b: $04
    rst $38                                       ; $6b5c: $ff
    rst $30                                       ; $6b5d: $f7
    inc b                                         ; $6b5e: $04
    rra                                           ; $6b5f: $1f
    ld c, $ef                                     ; $6b60: $0e $ef
    add hl, bc                                    ; $6b62: $09
    cp a                                          ; $6b63: $bf
    db $10                                        ; $6b64: $10
    rst $38                                       ; $6b65: $ff
    cp a                                          ; $6b66: $bf
    db $10                                        ; $6b67: $10
    rst $38                                       ; $6b68: $ff
    ld de, $081f                                  ; $6b69: $11 $1f $08
    rst $38                                       ; $6b6c: $ff
    ld l, b                                       ; $6b6d: $68
    db $eb                                        ; $6b6e: $eb
    rst $38                                       ; $6b6f: $ff
    ld d, b                                       ; $6b70: $50
    ld h, h                                       ; $6b71: $64
    ldh [rIE], a                                  ; $6b72: $e0 $ff
    ld e, h                                       ; $6b74: $5c
    ldh [$c8], a                                  ; $6b75: $e0 $c8
    rst $38                                       ; $6b77: $ff
    and a                                         ; $6b78: $a7
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    jr nz, @+$01                                  ; $6b7b: $20 $ff

    or c                                          ; $6b7d: $b1
    rst $38                                       ; $6b7e: $ff
    ld d, c                                       ; $6b7f: $51
    rst $38                                       ; $6b80: $ff
    ld a, [$ff4f]                                 ; $6b81: $fa $4f $ff
    db $fc                                        ; $6b84: $fc
    rst $38                                       ; $6b85: $ff
    ldh a, [$92]                                  ; $6b86: $f0 $92
    pop hl                                        ; $6b88: $e1
    sub b                                         ; $6b89: $90
    ldh [rP1], a                                  ; $6b8a: $e0 $00
    sub b                                         ; $6b8c: $90
    db $eb                                        ; $6b8d: $eb
    ei                                            ; $6b8e: $fb
    rst $38                                       ; $6b8f: $ff
    add hl, bc                                    ; $6b90: $09
    ld l, h                                       ; $6b91: $6c
    ldh [$0c], a                                  ; $6b92: $e0 $0c
    di                                            ; $6b94: $f3
    rra                                           ; $6b95: $1f
    pop af                                        ; $6b96: $f1
    ccf                                           ; $6b97: $3f
    cp a                                          ; $6b98: $bf
    adc $7f                                       ; $6b99: $ce $7f
    and d                                         ; $6b9b: $a2
    rst $38                                       ; $6b9c: $ff
    ld [hl+], a                                   ; $6b9d: $22
    rst $38                                       ; $6b9e: $ff
    call c, $ffe1                                 ; $6b9f: $dc $e1 $ff
    rst $38                                       ; $6ba2: $ff
    ld h, b                                       ; $6ba3: $60
    sbc a                                         ; $6ba4: $9f
    ldh a, [$1f]                                  ; $6ba5: $f0 $1f
    ld hl, sp-$19                                 ; $6ba7: $f8 $e7
    db $fc                                        ; $6ba9: $fc
    adc e                                         ; $6baa: $8b
    rst $30                                       ; $6bab: $f7
    cp $89                                        ; $6bac: $fe $89
    rst $38                                       ; $6bae: $ff
    sub b                                         ; $6baf: $90
    and c                                         ; $6bb0: $a1
    ld a, e                                       ; $6bb1: $7b
    inc bc                                        ; $6bb2: $03
    ld h, a                                       ; $6bb3: $67
    inc b                                         ; $6bb4: $04
    rst $20                                       ; $6bb5: $e7
    ld c, a                                       ; $6bb6: $4f
    ld [$fe0f], sp                                ; $6bb7: $08 $0f $fe
    ldh [$a0], a                                  ; $6bba: $e0 $a0
    ldh [$09], a                                  ; $6bbc: $e0 $09
    rst $38                                       ; $6bbe: $ff
    inc e                                         ; $6bbf: $1c
    rst $38                                       ; $6bc0: $ff
    di                                            ; $6bc1: $f3
    rst $38                                       ; $6bc2: $ff
    pop af                                        ; $6bc3: $f1
    ld a, a                                       ; $6bc4: $7f
    xor $bf                                       ; $6bc5: $ee $bf
    ld [c], a                                     ; $6bc7: $e2
    cp a                                          ; $6bc8: $bf
    rst $28                                       ; $6bc9: $ef
    ld [c], a                                     ; $6bca: $e2
    ld a, a                                       ; $6bcb: $7f
    db $e3                                        ; $6bcc: $e3
    ccf                                           ; $6bcd: $3f
    jp nc, $f8e2                                  ; $6bce: $d2 $e2 $f8

    rla                                           ; $6bd1: $17
    rst $38                                       ; $6bd2: $ff
    rst $18                                       ; $6bd3: $df
    ld [$8bff], a                                 ; $6bd4: $ea $ff $8b
    rst $38                                       ; $6bd7: $ff
    adc d                                         ; $6bd8: $8a
    ld a, a                                       ; $6bd9: $7f
    ret nz                                        ; $6bda: $c0

    rst $08                                       ; $6bdb: $cf

jr_076_6bdc:
    nop                                           ; $6bdc: $00
    rst $38                                       ; $6bdd: $ff
    ldh a, [rP1]                                  ; $6bde: $f0 $00
    sbc [hl]                                      ; $6be0: $9e
    nop                                           ; $6be1: $00
    and $e0                                       ; $6be2: $e6 $e0
    ld [de], a                                    ; $6be4: $12
    ldh a, [$fd]                                  ; $6be5: $f0 $fd
    db $10                                        ; $6be7: $10
    cp $e0                                        ; $6be8: $fe $e0
    jr jr_076_6bdc                                ; $6bea: $18 $f0

    rst $38                                       ; $6bec: $ff
    ld e, l                                       ; $6bed: $5d
    rst $38                                       ; $6bee: $ff
    adc l                                         ; $6bef: $8d
    rst $28                                       ; $6bf0: $ef
    rst $38                                       ; $6bf1: $ff
    sbc a                                         ; $6bf2: $9f
    rst $38                                       ; $6bf3: $ff
    add a                                         ; $6bf4: $87
    db $fc                                        ; $6bf5: $fc
    ldh [$89], a                                  ; $6bf6: $e0 $89
    ld a, a                                       ; $6bf8: $7f
    ld b, b                                       ; $6bf9: $40
    db $db                                        ; $6bfa: $db
    ld a, a                                       ; $6bfb: $7f
    ld b, b                                       ; $6bfc: $40
    cp $c0                                        ; $6bfd: $fe $c0
    adc h                                         ; $6bff: $8c
    ld [hl], e                                    ; $6c00: $73
    or a                                          ; $6c01: $b7
    ret nz                                        ; $6c02: $c0

    adc l                                         ; $6c03: $8d
    rst $38                                       ; $6c04: $ff
    sbc a                                         ; $6c05: $9f
    dec h                                         ; $6c06: $25
    rst $38                                       ; $6c07: $ff
    and d                                         ; $6c08: $a2
    rst $38                                       ; $6c09: $ff
    jp $e190                                      ; $6c0a: $c3 $90 $e1


    sub d                                         ; $6c0d: $92
    pop hl                                        ; $6c0e: $e1
    db $fc                                        ; $6c0f: $fc
    push hl                                       ; $6c10: $e5
    ld h, e                                       ; $6c11: $63
    db $e3                                        ; $6c12: $e3
    and b                                         ; $6c13: $a0
    adc b                                         ; $6c14: $88
    cp $e0                                        ; $6c15: $fe $e0
    ret nz                                        ; $6c17: $c0

    db $e3                                        ; $6c18: $e3
    add [hl]                                      ; $6c19: $86
    nop                                           ; $6c1a: $00
    add d                                         ; $6c1b: $82
    rst $38                                       ; $6c1c: $ff
    nop                                           ; $6c1d: $00
    ret nz                                        ; $6c1e: $c0

    add b                                         ; $6c1f: $80
    ld h, b                                       ; $6c20: $60
    ret nz                                        ; $6c21: $c0

    ld a, b                                       ; $6c22: $78
    ldh [rIE], a                                  ; $6c23: $e0 $ff
    rst $38                                       ; $6c25: $ff
    ld [$0c0f], sp                                ; $6c26: $08 $0f $0c
    ld a, a                                       ; $6c29: $7f
    rlca                                          ; $6c2a: $07
    ld h, h                                       ; $6c2b: $64
    rlca                                          ; $6c2c: $07
    ld b, d                                       ; $6c2d: $42
    or a                                          ; $6c2e: $b7
    inc bc                                        ; $6c2f: $03
    inc bc                                        ; $6c30: $03
    ld bc, $a110                                  ; $6c31: $01 $10 $a1
    rst $18                                       ; $6c34: $df
    ld [hl], d                                    ; $6c35: $72
    ld h, h                                       ; $6c36: $64
    pop hl                                        ; $6c37: $e1
    rla                                           ; $6c38: $17
    ei                                            ; $6c39: $fb
    rst $38                                       ; $6c3a: $ff
    ld [hl-], a                                   ; $6c3b: $32
    ld b, c                                       ; $6c3c: $41
    ret nz                                        ; $6c3d: $c0

    push bc                                       ; $6c3e: $c5
    rst $38                                       ; $6c3f: $ff
    ld b, l                                       ; $6c40: $45
    ld a, a                                       ; $6c41: $7f
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    ld b, b                                       ; $6c44: $40
    rst $38                                       ; $6c45: $ff

jr_076_6c46:
    ld h, b                                       ; $6c46: $60
    rst $18                                       ; $6c47: $df
    ld hl, sp-$69                                 ; $6c48: $f8 $97
    cp $61                                        ; $6c4a: $fe $61
    ld a, [c]                                     ; $6c4c: $f2
    db $ed                                        ; $6c4d: $ed
    and b                                         ; $6c4e: $a0
    nop                                           ; $6c4f: $00
    and c                                         ; $6c50: $a1
    ret nz                                        ; $6c51: $c0

    ret nz                                        ; $6c52: $c0

    db $eb                                        ; $6c53: $eb
    ld hl, sp-$40                                 ; $6c54: $f8 $c0
    rst $38                                       ; $6c56: $ff
    ld bc, $f2f4                                  ; $6c57: $01 $f4 $f2
    and b                                         ; $6c5a: $a0
    or $a1                                        ; $6c5b: $f6 $a1
    inc b                                         ; $6c5d: $04
    add h                                         ; $6c5e: $84
    ret nz                                        ; $6c5f: $c0

    ld de, $10ff                                  ; $6c60: $11 $ff $10
    ld b, e                                       ; $6c63: $43
    and d                                         ; $6c64: $a2
    rst $08                                       ; $6c65: $cf
    ldh [$c0], a                                  ; $6c66: $e0 $c0
    ld [hl], a                                    ; $6c68: $77
    and d                                         ; $6c69: $a2
    inc l                                         ; $6c6a: $2c
    ret nz                                        ; $6c6b: $c0

    ld [hl], b                                    ; $6c6c: $70
    and b                                         ; $6c6d: $a0
    add l                                         ; $6c6e: $85
    db $db                                        ; $6c6f: $db
    and b                                         ; $6c70: $a0
    rlca                                          ; $6c71: $07
    adc l                                         ; $6c72: $8d
    rst $38                                       ; $6c73: $ff
    call $fea1                                    ; $6c74: $cd $a1 $fe
    rst $38                                       ; $6c77: $ff
    ld sp, hl                                     ; $6c78: $f9
    ld [c], a                                     ; $6c79: $e2
    ld e, d                                       ; $6c7a: $5a
    and e                                         ; $6c7b: $a3
    db $db                                        ; $6c7c: $db
    ldh [$3f], a                                  ; $6c7d: $e0 $3f
    rst $38                                       ; $6c7f: $ff
    ldh [$1f], a                                  ; $6c80: $e0 $1f
    ldh a, [$1f]                                  ; $6c82: $f0 $1f
    ldh a, [rIE]                                  ; $6c84: $f0 $ff
    inc c                                         ; $6c86: $0c
    rst $38                                       ; $6c87: $ff
    or c                                          ; $6c88: $b1
    dec bc                                        ; $6c89: $0b
    cp b                                          ; $6c8a: $b8
    and b                                         ; $6c8b: $a0
    add sp, -$1f                                  ; $6c8c: $e8 $e1
    sub h                                         ; $6c8e: $94
    add d                                         ; $6c8f: $82
    ldh [$3f], a                                  ; $6c90: $e0 $3f
    jp nz, $c0e1                                  ; $6c92: $c2 $e1 $c0

    inc h                                         ; $6c95: $24
    jp nz, $b9e1                                  ; $6c96: $c2 $e1 $b9

    ld [c], a                                     ; $6c99: $e2
    ld b, $fb                                     ; $6c9a: $06 $fb
    add b                                         ; $6c9c: $80
    sub l                                         ; $6c9d: $95
    and b                                         ; $6c9e: $a0
    cp $ee                                        ; $6c9f: $fe $ee
    and b                                         ; $6ca1: $a0
    jr nc, jr_076_6c46                            ; $6ca2: $30 $a2

    cp a                                          ; $6ca4: $bf
    rra                                           ; $6ca5: $1f
    ldh a, [$3f]                                  ; $6ca6: $f0 $3f
    ldh a, [rIE]                                  ; $6ca8: $f0 $ff
    ldh [$0a], a                                  ; $6caa: $e0 $0a
    xor b                                         ; $6cac: $a8
    ld sp, $ff63                                  ; $6cad: $31 $63 $ff
    rrca                                          ; $6cb0: $0f
    db $fc                                        ; $6cb1: $fc
    adc c                                         ; $6cb2: $89
    add h                                         ; $6cb3: $84
    db $e3                                        ; $6cb4: $e3
    add d                                         ; $6cb5: $82
    push hl                                       ; $6cb6: $e5
    rst $38                                       ; $6cb7: $ff
    add b                                         ; $6cb8: $80
    and l                                         ; $6cb9: $a5
    pop hl                                        ; $6cba: $e1
    rst $20                                       ; $6cbb: $e7
    inc bc                                        ; $6cbc: $03
    cp $01                                        ; $6cbd: $fe $01
    ld [hl], d                                    ; $6cbf: $72
    pop hl                                        ; $6cc0: $e1
    ld e, b                                       ; $6cc1: $58
    pop hl                                        ; $6cc2: $e1
    inc bc                                        ; $6cc3: $03
    rst $38                                       ; $6cc4: $ff
    and b                                         ; $6cc5: $a0
    cp $4c                                        ; $6cc6: $fe $4c
    ret nz                                        ; $6cc8: $c0

    db $10                                        ; $6cc9: $10
    rst $38                                       ; $6cca: $ff
    ld a, b                                       ; $6ccb: $78
    add a                                         ; $6ccc: $87
    db $fc                                        ; $6ccd: $fc
    rst $00                                       ; $6cce: $c7
    db $fc                                        ; $6ccf: $fc
    ld h, a                                       ; $6cd0: $67
    rlca                                          ; $6cd1: $07
    db $fc                                        ; $6cd2: $fc
    ld l, a                                       ; $6cd3: $6f
    add b                                         ; $6cd4: $80
    add [hl]                                      ; $6cd5: $86
    adc b                                         ; $6cd6: $88
    add h                                         ; $6cd7: $84
    ld bc, $bb47                                  ; $6cd8: $01 $47 $bb
    ret nz                                        ; $6cdb: $c0

    cp d                                          ; $6cdc: $ba
    cp [hl]                                       ; $6cdd: $be
    db $e4                                        ; $6cde: $e4
    ld a, a                                       ; $6cdf: $7f
    inc b                                         ; $6ce0: $04
    add c                                         ; $6ce1: $81
    add hl, bc                                    ; $6ce2: $09
    rst $38                                       ; $6ce3: $ff
    rlca                                          ; $6ce4: $07
    dec c                                         ; $6ce5: $0d
    and b                                         ; $6ce6: $a0
    rlca                                          ; $6ce7: $07
    ld a, e                                       ; $6ce8: $7b
    cp $07                                        ; $6ce9: $fe $07
    ld e, l                                       ; $6ceb: $5d
    and b                                         ; $6cec: $a0
    db $fc                                        ; $6ced: $fc
    rlca                                          ; $6cee: $07
    ld hl, sp+$0f                                 ; $6cef: $f8 $0f
    ldh a, [$c0]                                  ; $6cf1: $f0 $c0
    jp c, $c13e                                   ; $6cf3: $da $3e $c1

    db $10                                        ; $6cf6: $10
    ld d, [hl]                                    ; $6cf7: $56
    and b                                         ; $6cf8: $a0
    ldh [$3f], a                                  ; $6cf9: $e0 $3f
    cp $e0                                        ; $6cfb: $fe $e0
    rra                                           ; $6cfd: $1f
    inc d                                         ; $6cfe: $14
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    inc de                                        ; $6d01: $13
    rra                                           ; $6d02: $1f
    add hl, bc                                    ; $6d03: $09
    and $06                                       ; $6d04: $e6 $06
    cp d                                          ; $6d06: $ba
    nop                                           ; $6d07: $00
    cp a                                          ; $6d08: $bf
    cp e                                          ; $6d09: $bb
    ld bc, $01e7                                  ; $6d0a: $01 $e7 $01
    rra                                           ; $6d0d: $1f
    ld [bc], a                                    ; $6d0e: $02
    add $80                                       ; $6d0f: $c6 $80
    ld b, b                                       ; $6d11: $40
    cp a                                          ; $6d12: $bf
    rst $38                                       ; $6d13: $ff
    add h                                         ; $6d14: $84
    rst $38                                       ; $6d15: $ff
    add e                                         ; $6d16: $83
    rst $38                                       ; $6d17: $ff
    add c                                         ; $6d18: $81
    add b                                         ; $6d19: $80
    add e                                         ; $6d1a: $83
    cp $7f                                        ; $6d1b: $fe $7f
    rlca                                          ; $6d1d: $07
    db $fd                                        ; $6d1e: $fd
    rlca                                          ; $6d1f: $07
    rst $38                                       ; $6d20: $ff
    ld b, e                                       ; $6d21: $43
    rst $38                                       ; $6d22: $ff
    add d                                         ; $6d23: $82
    inc [hl]                                      ; $6d24: $34
    add b                                         ; $6d25: $80
    db $fd                                        ; $6d26: $fd
    add c                                         ; $6d27: $81
    db $ec                                        ; $6d28: $ec
    ldh [$80], a                                  ; $6d29: $e0 $80
    ld d, b                                       ; $6d2b: $50
    ldh a, [$9f]                                  ; $6d2c: $f0 $9f
    ldh a, [$38]                                  ; $6d2e: $f0 $38
    rst $30                                       ; $6d30: $f7

jr_076_6d31:
    ldh [$e7], a                                  ; $6d31: $e0 $e7
    ret nz                                        ; $6d33: $c0

    jr nc, @-$5a                                  ; $6d34: $30 $a4

    add b                                         ; $6d36: $80
    rrca                                          ; $6d37: $0f
    nop                                           ; $6d38: $00
    di                                            ; $6d39: $f3
    ld [hl], d                                    ; $6d3a: $72
    ld a, [$e680]                                 ; $6d3b: $fa $80 $e6
    jp nz, $c0e0                                  ; $6d3e: $c2 $e0 $c0

    ldh [rSC], a                                  ; $6d41: $e0 $02
    rra                                           ; $6d43: $1f
    inc bc                                        ; $6d44: $03
    add [hl]                                      ; $6d45: $86
    add b                                         ; $6d46: $80
    call c, $e8c2                                 ; $6d47: $dc $c2 $e8
    ret z                                         ; $6d4a: $c8

    ldh [rTMA], a                                 ; $6d4b: $e0 $06
    rst $38                                       ; $6d4d: $ff
    ld b, d                                       ; $6d4e: $42
    jp nz, $ffe7                                  ; $6d4f: $c2 $e7 $ff

    add e                                         ; $6d52: $83
    ld b, [hl]                                    ; $6d53: $46
    and b                                         ; $6d54: $a0
    xor c                                         ; $6d55: $a9
    rst $20                                       ; $6d56: $e7
    add b                                         ; $6d57: $80
    ret nz                                        ; $6d58: $c0

    rst $20                                       ; $6d59: $e7
    add b                                         ; $6d5a: $80
    add sp, -$7e                                  ; $6d5b: $e8 $82
    db $e3                                        ; $6d5d: $e3
    add c                                         ; $6d5e: $81
    db $10                                        ; $6d5f: $10
    ld [c], a                                     ; $6d60: $e2
    pop af                                        ; $6d61: $f1
    ld [bc], a                                    ; $6d62: $02
    db $fc                                        ; $6d63: $fc
    ld [c], a                                     ; $6d64: $e2
    add d                                         ; $6d65: $82
    pop hl                                        ; $6d66: $e1
    xor b                                         ; $6d67: $a8
    ld h, e                                       ; $6d68: $63
    add b                                         ; $6d69: $80
    ld c, b                                       ; $6d6a: $48
    ld hl, sp-$31                                 ; $6d6b: $f8 $cf
    rra                                           ; $6d6d: $1f
    ld hl, sp-$68                                 ; $6d6e: $f8 $98
    ldh a, [$e7]                                  ; $6d70: $f0 $e7
    ldh [$80], a                                  ; $6d72: $e0 $80

jr_076_6d74:
    db $ed                                        ; $6d74: $ed
    ld [hl], b                                    ; $6d75: $70
    add h                                         ; $6d76: $84
    sbc $e0                                       ; $6d77: $de $e0
    ld a, [c]                                     ; $6d79: $f2
    cp d                                          ; $6d7a: $ba
    ld h, b                                       ; $6d7b: $60
    adc h                                         ; $6d7c: $8c
    or b                                          ; $6d7d: $b0
    and b                                         ; $6d7e: $a0
    ld d, d                                       ; $6d7f: $52
    pop hl                                        ; $6d80: $e1
    add c                                         ; $6d81: $81
    rst $38                                       ; $6d82: $ff
    ld bc, $57f9                                  ; $6d83: $01 $f9 $57
    rrca                                          ; $6d86: $0f
    cp $0f                                        ; $6d87: $fe $0f
    ld bc, $83e0                                  ; $6d89: $01 $e0 $83
    ld [de], a                                    ; $6d8c: $12
    add b                                         ; $6d8d: $80
    ld bc, $e140                                  ; $6d8e: $01 $40 $e1
    rst $38                                       ; $6d91: $ff
    jr nc, jr_076_6d74                            ; $6d92: $30 $e0

    ld c, a                                       ; $6d94: $4f
    ret nz                                        ; $6d95: $c0

    ld a, b                                       ; $6d96: $78
    ret nz                                        ; $6d97: $c0

    rst $20                                       ; $6d98: $e7
    ret nz                                        ; $6d99: $c0

    ei                                            ; $6d9a: $fb
    db $dd                                        ; $6d9b: $dd
    add b                                         ; $6d9c: $80
    ld b, b                                       ; $6d9d: $40
    db $e3                                        ; $6d9e: $e3
    di                                            ; $6d9f: $f3
    inc bc                                        ; $6da0: $03
    inc c                                         ; $6da1: $0c
    rrca                                          ; $6da2: $0f
    ld [hl], b                                    ; $6da3: $70
    rst $38                                       ; $6da4: $ff
    rra                                           ; $6da5: $1f
    ld h, b                                       ; $6da6: $60
    ccf                                           ; $6da7: $3f
    ld h, b                                       ; $6da8: $60
    ccf                                           ; $6da9: $3f
    rra                                           ; $6daa: $1f
    rra                                           ; $6dab: $1f
    db $10                                        ; $6dac: $10
    db $fd                                        ; $6dad: $fd
    rra                                           ; $6dae: $1f
    jr c, jr_076_6d31                             ; $6daf: $38 $80

    add d                                         ; $6db1: $82
    ld a, a                                       ; $6db2: $7f
    pop hl                                        ; $6db3: $e1
    rra                                           ; $6db4: $1f
    pop af                                        ; $6db5: $f1
    rra                                           ; $6db6: $1f
    rst $10                                       ; $6db7: $d7
    cp $07                                        ; $6db8: $fe $07
    db $fc                                        ; $6dba: $fc
    pop de                                        ; $6dbb: $d1
    ret nz                                        ; $6dbc: $c0

    db $fc                                        ; $6dbd: $fc
    jr z, @-$7e                                   ; $6dbe: $28 $80

    add e                                         ; $6dc0: $83
    db $fc                                        ; $6dc1: $fc
    cp l                                          ; $6dc2: $bd
    rrca                                          ; $6dc3: $0f
    add hl, de                                    ; $6dc4: $19
    pop bc                                        ; $6dc5: $c1
    ret nz                                        ; $6dc6: $c0

    ld a, a                                       ; $6dc7: $7f
    rst $38                                       ; $6dc8: $ff
    ld a, a                                       ; $6dc9: $7f
    db $fc                                        ; $6dca: $fc
    ldh [rIE], a                                  ; $6dcb: $e0 $ff
    rst $38                                       ; $6dcd: $ff
    rst $08                                       ; $6dce: $cf
    add b                                         ; $6dcf: $80
    ld [hl], b                                    ; $6dd0: $70
    ldh [rNR34], a                                ; $6dd1: $e0 $1e
    ldh a, [$0e]                                  ; $6dd3: $f0 $0e
    ld hl, sp-$79                                 ; $6dd5: $f8 $87
    ld a, [bc]                                    ; $6dd7: $0a
    ld hl, sp-$10                                 ; $6dd8: $f8 $f0
    ld a, $a0                                     ; $6dda: $3e $a0
    daa                                           ; $6ddc: $27
    ld h, b                                       ; $6ddd: $60
    ret nz                                        ; $6dde: $c0

    db $ec                                        ; $6ddf: $ec
    jp nz, Jump_000_1fe5                          ; $6de0: $c2 $e5 $1f

    rst $08                                       ; $6de3: $cf
    db $fc                                        ; $6de4: $fc
    rst $20                                       ; $6de5: $e7
    db $fc                                        ; $6de6: $fc
    rra                                           ; $6de7: $1f
    sbc b                                         ; $6de8: $98
    add b                                         ; $6de9: $80
    jp nz, $f0e5                                  ; $6dea: $c2 $e5 $f0

    ld a, a                                       ; $6ded: $7f
    adc a                                         ; $6dee: $8f
    rst $08                                       ; $6def: $cf
    ld a, a                                       ; $6df0: $7f
    ldh a, [$3f]                                  ; $6df1: $f0 $3f
    and b                                         ; $6df3: $a0
    push hl                                       ; $6df4: $e5
    ld l, l                                       ; $6df5: $6d
    ldh [$a0], a                                  ; $6df6: $e0 $a0
    push hl                                       ; $6df8: $e5
    add a                                         ; $6df9: $87
    push af                                       ; $6dfa: $f5
    ld hl, sp-$60                                 ; $6dfb: $f8 $a0
    ldh [$e0], a                                  ; $6dfd: $e0 $e0
    and b                                         ; $6dff: $a0
    jp hl                                         ; $6e00: $e9


    ret nz                                        ; $6e01: $c0

    ld a, $e0                                     ; $6e02: $3e $e0
    ld d, $f7                                     ; $6e04: $16 $f7
    ldh a, [rNR12]                                ; $6e06: $f0 $12
    ldh a, [$a0]                                  ; $6e08: $f0 $a0
    db $e3                                        ; $6e0a: $e3
    rst $38                                       ; $6e0b: $ff
    pop bc                                        ; $6e0c: $c1
    ccf                                           ; $6e0d: $3f
    pop af                                        ; $6e0e: $f1
    pop af                                        ; $6e0f: $f1
    rrca                                          ; $6e10: $0f
    ld c, c                                       ; $6e11: $49
    ret nz                                        ; $6e12: $c0

    cp [hl]                                       ; $6e13: $be
    and c                                         ; $6e14: $a1
    cp d                                          ; $6e15: $ba
    and b                                         ; $6e16: $a0
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    adc a                                         ; $6e19: $8f
    ldh a, [$cf]                                  ; $6e1a: $f0 $cf
    cp a                                          ; $6e1c: $bf
    ldh [$bf], a                                  ; $6e1d: $e0 $bf
    ret nz                                        ; $6e1f: $c0

    sbc [hl]                                      ; $6e20: $9e
    and d                                         ; $6e21: $a2
    ld e, h                                       ; $6e22: $5c
    and c                                         ; $6e23: $a1
    rst $08                                       ; $6e24: $cf
    add b                                         ; $6e25: $80
    dec c                                         ; $6e26: $0d
    ldh a, [$d0]                                  ; $6e27: $f0 $d0
    and $20                                       ; $6e29: $e6 $20
    ldh [rWX], a                                  ; $6e2b: $e0 $4b
    and c                                         ; $6e2d: $a1
    cp a                                          ; $6e2e: $bf
    and h                                         ; $6e2f: $a4
    ld a, [$4ee5]                                 ; $6e30: $fa $e5 $4e
    ld b, a                                       ; $6e33: $47
    jr nc, @-$0a                                  ; $6e34: $30 $f4

    inc hl                                        ; $6e36: $23
    ld a, [hl]                                    ; $6e37: $7e
    add b                                         ; $6e38: $80
    ld [hl], b                                    ; $6e39: $70
    ld l, c                                       ; $6e3a: $69
    or b                                          ; $6e3b: $b0
    adc b                                         ; $6e3c: $88
    nop                                           ; $6e3d: $00
    ldh [$e2], a                                  ; $6e3e: $e0 $e2
    ldh [$c2], a                                  ; $6e40: $e0 $c2
    push hl                                       ; $6e42: $e5
    ld e, $48                                     ; $6e43: $1e $48
    ld h, d                                       ; $6e45: $62
    add b                                         ; $6e46: $80
    rst $20                                       ; $6e47: $e7
    add b                                         ; $6e48: $80
    db $dd                                        ; $6e49: $dd
    cp $e0                                        ; $6e4a: $fe $e0
    ld e, b                                       ; $6e4c: $58
    pop bc                                        ; $6e4d: $c1
    sbc b                                         ; $6e4e: $98
    ldh [rIE], a                                  ; $6e4f: $e0 $ff
    add b                                         ; $6e51: $80
    sbc [hl]                                      ; $6e52: $9e
    add b                                         ; $6e53: $80
    add [hl]                                      ; $6e54: $86
    add b                                         ; $6e55: $80
    add d                                         ; $6e56: $82
    add b                                         ; $6e57: $80
    ret nz                                        ; $6e58: $c0

    rrca                                          ; $6e59: $0f
    add b                                         ; $6e5a: $80
    ldh [$80], a                                  ; $6e5b: $e0 $80
    ld hl, sp-$64                                 ; $6e5d: $f8 $9c
    rst $20                                       ; $6e5f: $e7
    add sp, $45                                   ; $6e60: $e8 $45
    ld a, b                                       ; $6e62: $78
    set 5, d                                      ; $6e63: $cb $ea
    and b                                         ; $6e65: $a0
    nop                                           ; $6e66: $00
    ld a, b                                       ; $6e67: $78
    inc sp                                        ; $6e68: $33
    rst $38                                       ; $6e69: $ff
    db $ed                                        ; $6e6a: $ed
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00

    db $7f, $3d, $00, $fb, $00, $07, $00, $b7, $fe, $e0, $df, $ef, $00, $1f, $00, $ff
    db $fe, $e7, $07, $ff, $df, $1d, $e7, $7d, $87, $fc, $ee, $e6, $c0, $3f, $5f, $f0
    db $8f, $fc, $c3, $7e, $d0, $ec, $01, $d2, $eb, $cb, $0f, $ff, $d2, $eb, $e1, $f0
    db $e5, $a6, $e0, $fc, $00, $ef, $ff, $1f, $e7, $7d, $9e, $e7, $3f, $00, $ef, $c7
    db $e0, $1f, $f8, $be, $e0, $fe, $e1, $86, $e1, $01, $ff, $ff, $02, $ff, $02, $0f
    db $ff, $3c, $ff, $5f, $ff, $ff, $ff, $f2, $ff, $cc, $ff, $d2, $ff, $ff, $56, $ff
    db $d7, $e1, $ff, $79, $ff, $f5, $ff, $ff, $ff, $9e, $ff, $66, $ff, $97, $ff, $77
    db $d4, $ff, $d6, $5e, $e8, $00, $ff, $80, $fe, $e0, $b6, $c2, $ea, $ff, $02, $c2
    db $eb, $ff, $34, $c2, $ec, $58, $fa, $c2, $ec, $80, $88, $e2, $01, $fe, $03, $fe
    db $03, $be, $76, $e3, $87, $fd, $07, $fc, $07, $03, $e0, $18, $ff, $ff, $e0, $ff
    db $87, $ff, $ff, $ff, $87, $fe, $0c, $e0, $c3, $fe, $81, $ff, $61, $ff, $1f, $c7
    db $fe, $83, $fe, $ef, $e0, $dc, $c9, $d0, $c1, $02, $3f, $ff, $02, $cf, $01, $f7
    db $00, $33, $00, $11, $fb, $00, $19, $fe, $e0, $ff, $34, $ff, $28, $ff, $fd, $7c
    db $c7, $e0, $3e, $ff, $24, $ff, $13, $ff, $fd, $10, $8e, $e0, $28, $ff, $7d, $ff
    db $fe, $ff, $df, $f8, $ff, $48, $ff, $90, $f0, $e0, $80, $fc, $fb, $80, $f3, $94
    db $c0, $cc, $00, $88, $00, $98, $9c, $fe, $e0, $c0, $e0, $01, $cf, $00, $c0, $e8
    db $c2, $e7, $17, $aa, $c0, $e0, $08, $c2, $e8, $d0, $c0, $e0, $20, $c0, $e0, $00
    db $fe, $c0, $ec, $02, $cf, $02, $f7, $02, $33, $01, $fa, $80, $e4, $72, $dc, $c0
    db $57, $ff, $74, $ff, $68, $ff, $ff, $fc, $ff, $3f, $ff, $1e, $ff, $9c, $fe, $cc
    db $c0, $d4, $ff, $5c, $ff, $2d, $ff, $7e, $ba, $7c, $e0, $f0, $80, $e2, $80, $ef
    db $80, $80, $e6, $09, $fe, $9c, $e0, $0c, $f3, $1f, $f1, $3f, $ce, $7f, $ef, $a2
    db $ff, $22, $ff, $9e, $e0, $20, $ff, $60, $ff, $9f, $f0, $1f, $f8, $e7, $fc, $8b
    db $fe, $fb, $89, $ff, $e0, $a6, $01, $ef, $07, $1f, $09, $fe, $30, $e0, $09, $ff
    db $1c, $f3, $7f, $91, $ff, $bd, $0e, $97, $e0, $f2, $9f, $f3, $9f, $d2, $e2, $f8
    db $d7, $17, $fc, $e3, $d4, $e0, $8a, $93, $e0, $bc, $00, $df, $df, $00, $e0, $00
    db $ed, $fe, $e0, $f7, $c0, $8f, $38, $e0, $7f, $e0, $a0, $aa, $14, $c1, $90, $e3
    db $3f, $ff, $d3, $7f, $9f, $fc, $3f, $f0, $ff, $e1, $f6, $90, $e4, $f8, $57, $be
    db $e0, $eb, $7e, $f1, $3f, $fa, $70, $a8, $01, $d0, $e2, $14, $ff, $1b, $ff, $18
    db $7f, $f7, $7c, $93, $ff, $0b, $ff, $5f, $ce, $e1, $ff, $50, $ff, $b0, $ff, $30
    db $df, $7c, $d3, $e7, $fe, $23, $fe, $ce, $e1, $44, $c1, $ff, $03, $ff, $fd, $04
    db $fe, $e0, $08, $ff, $11, $ff, $10, $43, $8f, $ff, $40, $ff, $c0, $e7, $a2, $43
    db $c0, $e0, $a0, $85, $06, $e5, $e0, $07, $ff, $21, $c1, $43, $c0, $1a, $c1, $ca
    db $a3, $db, $e0, $bf, $3f, $e0, $1f, $f0, $1f, $f0, $5a, $c0, $23, $cf, $ff, $29
    db $ff, $15, $2f, $e0, $02, $a2, $e0, $bf, $47, $c0, $7f, $80, $be, $e0, $05, $c0
    db $b9, $e2, $14, $3b, $c0, $c9, $0d, $9f, $e0, $f5, $a0, $03, $9e, $a2, $ca, $e0
    db $5f, $f0, $4b, $9f, $f0, $44, $e0, $c0, $88, $a8, $f8, $85, $00, $5e, $c0, $bf
    db $02, $ff, $0b, $fc, $0f, $f0, $80, $e4, $f9, $ff, $bf, $fd, $c7, $ff, $82, $ff
    db $c2, $3f, $81, $e6, $fc, $a0, $20, $a0, $52, $e2, $ce, $e9, $fe, $c1, $ce, $e2
    db $f8, $7f, $ff, $ff, $9f, $ff, $80, $f1, $3f, $ce, $e8, $fd, $fa, $ee, $80, $14
    db $3f, $13, $cf, $09, $f7, $7d, $06, $a0, $a0, $01, $19, $01, $1b, $02, $23, $e0
    db $7f, $40, $ff, $84, $ff, $83, $ff, $81, $10, $a3, $bf, $fe, $07, $fd, $07, $ff
    db $43, $9e, $e0, $02, $fe, $ee, $e0, $81, $ff, $80, $5f, $f0, $9c, $f0, $cf, $33
    db $e0, $ef, $c0, $a0, $a4, $20, $a0, $3f, $00, $36, $a0, $a2, $01, $11, $c2, $e0
    db $1b, $03, $e3, $c0, $c2, $e8, $0e, $66, $e0, $06, $ff, $42, $c2, $e7, $a8, $e0
    db $58, $80, $60, $a6, $21, $80, $c0, $e8, $80, $e5, $e3, $c1, $be, $e9, $02, $be
    db $ec, $c0, $e9, $fe, $80, $e0, $3f, $03, $fc, $0f, $10, $1f, $a0, $7f, $3f, $a0
    db $3f, $ff, $1f, $10, $1f, $af, $80, $ff, $82, $7f, $e1, $1f, $f1, $1f, $fe, $07
    db $77, $fc, $ff, $fc, $fc, $e0, $ff, $ff, $83, $d4, $c0, $de, $79, $c0, $c0, $7f
    db $ff, $7f, $fc, $e0, $ff, $bc, $ff, $80, $7f, $e0, $10, $f0, $0d, $f8, $0d, $2f
    db $f8, $f7, $f0, $18, $bb, $c0, $3e, $c0, $ec, $c2, $e5, $af, $1f, $fc, $e7, $fc
    db $c2, $60, $ff, $c2, $e5, $f0, $1f, $7f, $cf, $7f, $f0, $3f, $0b, $c1, $28, $84
    db $fa, $e5, $32, $4e, $8d, $ff, $c0, $8b, $50, $a8, $00, $f8, $e2, $e0, $c2, $e7
    db $f6, $d8, $84, $80, $88, $fa, $c0, $98, $80, $bc, $80, $df, $df, $80, $e0, $80
    db $ed, $fe, $e0, $f7, $80, $7d, $f8, $9e, $e8, $33, $01, $13, $01, $1b, $fe, $e0
    db $7f, $3f, $01, $fb, $01, $07, $01, $b7, $f8, $a7, $10, $c8, $c7, $e8, $62, $98
    db $56, $d0, $cb, $00, $ff, $ed, $00, $00

    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    nop                                           ; $71ec: $00
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00

    db $ff, $74, $00, $f4, $00, $e4, $00, $00, $00, $f7, $04, $00, $ff, $fe, $eb, $07
    db $ff, $1d, $e7, $f7, $7d, $87, $fc, $ea, $e6, $c0, $3f, $f0, $8f, $ff, $fc, $c2
    db $7e, $83, $00, $87, $00, $c7, $cf, $00, $e3, $00, $f8, $d0, $ed, $c0, $e1, $0f
    db $fe, $dd, $7b, $ba, $ea, $c0, $3c, $f8, $aa, $e8, $03, $fc, $f7, $07, $fc, $1f
    db $9a, $e8, $fc, $7b, $ce, $f9, $f5, $9f, $b0, $ec, $80, $7a, $e8, $01, $fe, $03
    db $fe, $7d, $3f, $6a, $e8, $fe, $3d, $e7, $7c, $cf, $80, $ec, $e7, $c0, $ff, $01
    db $fe, $e2, $d0, $e2, $ff, $02, $ff, $ff, $02, $0f, $ff, $3c, $ff, $5f, $ff, $ff
    db $ff, $f2, $ff, $cc, $ff, $d2, $ff, $56, $ff, $ff, $d7, $e1, $ff, $79, $ff, $f5
    db $ff, $fe, $ff, $9e, $fe, $66, $ff, $97, $ff, $d4, $ff, $a5, $d6, $1a, $ea, $80
    db $90, $e2, $98, $e1, $03, $b8, $e4, $02, $ff, $8f, $fb, $0f, $f8, $0f, $ff, $18
    db $ff, $ef, $e0, $ff, $8f, $ff, $ff, $e0, $a7, $07, $fe, $7f, $82, $fe, $81, $ff
    db $c3, $ff, $3f, $ef, $c0, $72, $ef, $e0, $2b, $0a, $f0, $88, $e1, $03, $ff, $04
    db $fe, $e0, $7d, $05, $fa, $e0, $67, $fc, $9f, $f8, $4f, $d1, $e0, $f7, $af, $ff
    db $76, $80, $e0, $be, $fc, $c7, $fc, $6f, $ff, $30, $ff, $8c, $6f, $e0, $ff, $7f
    db $7e, $e0, $ff, $b1, $7f, $c0, $3f, $e0, $3f, $e0, $1f, $0d, $f0, $fe, $e1, $df
    db $f0, $99, $e0, $48, $e1, $46, $e2, $fc, $e4, $df, $c9, $fe, $27, $fd, $97, $3d
    db $e0, $37, $ff, $ff, $ab, $ff, $4b, $ff, $1f, $fe, $f3, $9e, $de, $35, $e0, $f2
    db $ff, $fd, $1f, $ee, $e0, $4a, $ff, $f9, $58, $c4, $e3, $5c, $e0, $f8, $cf, $f8
    db $ef, $f8, $fb, $ff, $f0, $c6, $e2, $01, $04, $00, $f3, $00, $fd, $06, $3c, $c0
    db $64, $00, $ff, $34, $ff, $28, $fb, $ff, $7c, $45, $e0, $3e, $ff, $24, $ff, $13
    db $fa, $fe, $e0, $58, $f0, $e0, $7d, $ff, $fe, $ff, $f8, $cf, $ff, $48, $ff, $90
    db $fe, $e0, $0c, $e2, $f8, $00, $ff, $e5, $00, $cc, $00, $ac, $00, $b8, $00, $fe
    db $44, $e2, $07, $1f, $18, $ff, $11, $1f, $17, $af, $1f, $12, $7f, $14, $48, $e0
    db $b8, $aa, $e0, $f8, $fb, $ff, $bf, $0d, $e0, $6d, $ff, $e7, $ff, $ad, $ff, $ff
    db $b1, $ff, $51, $ff, $fa, $ff, $fc, $8e, $94, $e0, $90, $ff, $20, $da, $a3, $c0
    db $e8, $08, $e1, $08, $df, $0f, $09, $ff, $10, $1f, $fe, $e0, $6f, $08, $eb, $ff
    db $44, $aa, $c2, $c6, $c3, $c0, $6f, $bf, $e3, $af, $9f, $f8, $ff, $b3, $fe, $e0
    db $66, $e6, $c0, $c3, $bf, $ff, $c2, $ff, $88, $ff, $1f, $a7, $c0, $e0, $ff, $ff
    db $40, $f8, $a0, $e5, $20, $cc, $40, $b3, $ac, $80, $80, $e2, $c6, $c0, $0f, $08
    db $bc, $e0, $08, $ff, $07, $04, $67, $04, $ff, $22, $ff, $40, $fa, $2a, $c0, $63
    db $d2, $c0, $37, $df, $71, $cf, $7c, $ab, $ff, $59, $fe, $e0, $33, $26, $c0, $e1
    db $fe, $e0, $c4, $fb, $ff, $0f, $0e, $e0, $f0, $ff, $20, $f8, $d0, $ff, $f5, $90
    db $ec, $20, $ec, $40, $b8, $80, $fe, $40, $ac, $01, $ff, $08, $ff, $09, $ff, $0c
    db $7f, $f3, $1f, $f1, $3f, $ce, $7f, $a2, $b3, $e0, $fe, $4e, $e0, $20, $ff, $60
    db $9f, $f0, $1f, $f8, $ff, $e7, $fc, $8b, $fe, $89, $ff, $7f, $10, $7f, $ff, $10
    db $ef, $09, $0f, $08, $1f, $f8, $e0, $fb, $ff, $11, $d4, $e0, $70, $ff, $f2, $df
    db $78, $ff, $d7, $7f, $f2, $ff, $ae, $ff, $45, $ff, $fd, $c5, $d0, $e1, $60, $df
    db $f8, $97, $fc, $63, $db, $fe, $c1, $b5, $e0, $04, $ff, $10, $aa, $80, $ff, $ff
    db $c0, $7f, $09, $f7, $05, $e7, $03, $01, $fc, $8e, $c0, $d0, $83, $1f, $f4, $1f
    db $f8, $0f, $fc, $7f, $17, $ff, $93, $ff, $ce, $7f, $c5, $fe, $e0, $7f, $ff, $18
    db $f7, $3c, $e7, $7e, $89, $95, $c0, $f2, $25, $c1, $08, $c0, $e7, $08, $c2, $7f
    db $d0, $77, $02, $fb, $f5, $01, $90, $89, $8f, $fa, $8f, $fc, $87, $ff, $fe, $8b
    db $ff, $c9, $7f, $e7, $3f, $e2, $fe, $fe, $e0, $ff, $0c, $fb, $1e, $f3, $3f, $c4
    db $bb, $ff, $c8, $67, $e0, $80, $ff, $84, $80, $e5, $80, $4d, $78, $cc, $a2, $3f
    db $e8, $ea, $81, $92, $a4, $08, $40, $e0, $43, $10, $43, $d1, $c2, $37, $a1, $51
    db $a0, $30, $a0, $85, $77, $a0, $1b, $07, $ff, $2f, $a1, $fe, $ff, $f9, $e2, $1a
    db $a3, $ac, $c0, $f0, $8a, $a3, $28, $80, $4a, $a5, $c6, $82, $c7, $7f, $c0, $7f
    db $d4, $f9, $81, $c0, $e0, $7f, $fe, $61, $05, $c4, $e1, $fe, $07, $2d, $fe, $12
    db $a1, $fc, $07, $f5, $80, $40, $be, $c2, $d2, $c1, $72, $48, $a0, $3f, $50, $a1
    db $c2, $e8, $ff, $01, $86, $bb, $84, $aa, $c0, $e5, $08, $c7, $60, $05, $53, $a0
    db $61, $65, $80, $f2, $17, $3f, $f1, $1f, $8c, $a0, $08, $08, $c0, $20, $c0, $82
    db $a0, $79, $a0, $50, $80, $98, $69, $1f, $e2, $3f, $c3, $80, $e0, $f6, $7e, $e1
    db $c0, $ff, $8e, $a0, $80, $ff, $98, $04, $ee, $b5, $80, $02, $fe, $0f, $cc, $80
    db $e0, $ff, $f9, $d6, $a5, $c0, $7f, $c8, $fb, $c0, $c4, $f7, $c0, $84, $7f, $d7
    db $c8, $7f, $d0, $69, $80, $14, $2a, $a0, $09, $06, $ff, $06, $f3, $00, $07, $01
    db $05, $01, $67, $b5, $02, $fe, $60, $40, $d9, $c1, $ff, $81, $bc, $83, $fe, $7f
    db $07, $fd, $07, $ff, $43, $ff, $82, $f4, $60, $fd, $81, $ec, $e0, $80, $5f, $f0
    db $9f, $f0, $3f, $c7, $e0, $f8, $c0, $10, $a4, $a0, $64, $d0, $85, $65, $01, $ee
    db $fc, $62, $8c, $ff, $87, $d2, $e2, $81, $ff, $01, $af, $f9, $0f, $fe, $0f, $01
    db $e0, $83, $2e, $80, $01, $10, $c0, $e1, $4c, $c0, $5f, $e0, $c0, $e0, $80, $c0
    db $f1, $90, $80, $bc, $61, $df, $88, $ff, $47, $ff, $41, $fe, $e0, $40, $ff, $ff
    db $80, $e1, $3f, $c5, $7f, $eb, $3e, $ff, $f1, $1e, $80, $e4, $10, $e4, $90, $86
    db $80, $fd, $7f, $fe, $ff, $7f, $c2, $7f, $7f, $7f, $e1, $7f, $3f, $ff, $3f, $20
    db $3f, $7f, $1f, $7f, $f0, $ff, $ff, $c0, $bf, $e0, $5f, $f0, $5f, $f1, $af, $bf
    db $f9, $af, $fb, $af, $fe, $f0, $ec, $c0, $f5, $f5, $1f, $85, $60, $a0, $46, $a2
    db $20, $77, $03, $fc, $2f, $0f, $f0, $1f, $20, $d4, $e0, $ff, $cb, $60, $6d, $60
    db $ff, $82, $7f, $e1, $1f, $f1, $1f, $fe, $07, $95, $fc, $61, $c0, $fc, $5d, $60
    db $83, $e0, $e1, $bb, $e0, $7f, $f9, $ff, $36, $c0, $f1, $e0, $80, $67, $e0, $17
    db $f0, $e7, $0b, $f8, $08, $e4, $60, $12, $c0, $ff, $75, $01, $af, $f6, $07, $e8
    db $0f, $63, $81, $ff, $27, $61, $ff, $2f, $ff, $c1, $3f, $f1, $1e, $61, $03, $c0
    db $e0, $fc, $e0, $ff, $ff, $ff, $8f, $f0, $bf, $e0, $bf, $c0, $fc, $80, $c1, $bc
    db $a2, $83, $80, $c7, $c0, $27, $e0, $e7, $13, $f0, $18, $98, $80, $12, $c0, $ff
    db $74, $00, $2f, $f7, $03, $e4, $07, $63, $80, $0f, $c0, $e4, $b8, $a1, $eb, $f8
    db $17, $d3, $20, $ff, $fc, $e2, $ff, $dc, $e3, $f3, $be, $c1, $80, $a4, $7c, $a1
    db $c3, $40, $e7, $20, $df, $e7, $20, $e3, $e0, $b8, $c8, $c2, $ff, $ff, $7d, $78
    db $88, $e0, $e4, $07, $03, $03, $06, $4a, $a0, $fe, $9a, $40, $ff, $af, $fc, $bf
    db $f8, $ef, $fe, $59, $c5, $c0, $e7, $78, $81, $10, $ef, $30, $60, $ff, $fc, $e1
    db $00, $90, $8b, $9f, $e2, $5a, $42, $fc, $e7, $89, $e1, $54, $29, $f0, $e2, $30
    db $68, $b0, $e0, $e2, $f0, $47, $20, $2c, $b2, $ec, $f8, $80, $28, $c0, $80, $fe
    db $78, $60, $80, $83, $80, $87, $80, $c7, $80, $f3, $e3, $80, $26, $a7, $a6, $21
    db $05, $01, $f3, $01, $fe, $98, $a1, $65, $01, $75, $01, $f5, $01, $e5, $03, $01
    db $01, $96, $23, $d4, $06, $98, $ef, $ba, $0b, $98, $47, $c8, $05, $00, $ff, $ed
    db $00, $00

    nop                                           ; $7712: $00
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

Call_076_77a0:
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

Jump_076_7be5:
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

Jump_076_7fe1:
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
