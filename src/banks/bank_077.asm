; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

    ld [$b440], sp                                ; $4000: $08 $40 $b4
    ld e, d                                       ; $4003: $5a

    db $7f, $65, $3e, $6e

    jr nz, jr_077_404a                            ; $4008: $20 $40

    db $10                                        ; $400a: $10
    ld b, [hl]                                    ; $400b: $46
    nop                                           ; $400c: $00
    ld c, h                                       ; $400d: $4c
    and b                                         ; $400e: $a0
    ld d, d                                       ; $400f: $52
    jr nz, jr_077_4068                            ; $4010: $20 $56

    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    nop                                           ; $401e: $00
    nop                                           ; $401f: $00
    ld l, a                                       ; $4020: $6f
    rst $38                                       ; $4021: $ff
    rst $38                                       ; $4022: $ff
    rst $38                                       ; $4023: $ff
    nop                                           ; $4024: $00
    cp $ea                                        ; $4025: $fe $ea
    rst $38                                       ; $4027: $ff
    nop                                           ; $4028: $00
    rst $38                                       ; $4029: $ff
    ld [$f0fe], a                                 ; $402a: $ea $fe $f0
    db $eb                                        ; $402d: $eb
    inc bc                                        ; $402e: $03
    inc bc                                        ; $402f: $03
    rst $38                                       ; $4030: $ff
    rst $38                                       ; $4031: $ff
    ld h, b                                       ; $4032: $60
    ld h, b                                       ; $4033: $60
    ldh a, [$7d]                                  ; $4034: $f0 $7d
    sub b                                         ; $4036: $90
    cp $e2                                        ; $4037: $fe $e2
    or b                                          ; $4039: $b0
    db $fc                                        ; $403a: $fc
    call z, $92fe                                 ; $403b: $cc $fe $92
    jp nc, $fceb                                  ; $403e: $d2 $eb $fc

    ret nc                                        ; $4041: $d0

    ldh [$fe], a                                  ; $4042: $e0 $fe
    di                                            ; $4044: $f3
    inc bc                                        ; $4045: $03
    db $fc                                        ; $4046: $fc
    rlca                                          ; $4047: $07
    ld hl, sp+$0f                                 ; $4048: $f8 $0f

jr_077_404a:
    ldh a, [$f7]                                  ; $404a: $f0 $f7
    rra                                           ; $404c: $1f
    pop af                                        ; $404d: $f1
    rra                                           ; $404e: $1f
    and d                                         ; $404f: $a2
    pop hl                                        ; $4050: $e1
    cp $fe                                        ; $4051: $fe $fe
    add hl, hl                                    ; $4053: $29
    rst $10                                       ; $4054: $d7
    rst $38                                       ; $4055: $ff
    ld a, a                                       ; $4056: $7f
    xor d                                         ; $4057: $aa
    ld a, a                                       ; $4058: $7f
    xor h                                         ; $4059: $ac
    ccf                                           ; $405a: $3f
    rst $18                                       ; $405b: $df
    ld h, b                                       ; $405c: $60
    rst $38                                       ; $405d: $ff
    rst $38                                       ; $405e: $ff
    rlca                                          ; $405f: $07
    inc b                                         ; $4060: $04
    rlca                                          ; $4061: $07
    inc b                                         ; $4062: $04
    inc bc                                        ; $4063: $03
    ld [bc], a                                    ; $4064: $02
    add e                                         ; $4065: $83
    add e                                         ; $4066: $83
    rst $38                                       ; $4067: $ff

jr_077_4068:
    ld b, e                                       ; $4068: $43
    jp nz, $c343                                  ; $4069: $c2 $43 $c3

    and e                                         ; $406c: $a3
    ld [c], a                                     ; $406d: $e2
    ld h, c                                       ; $406e: $61
    pop hl                                        ; $406f: $e1
    rst $38                                       ; $4070: $ff
    cp $a6                                        ; $4071: $fe $a6
    rst $38                                       ; $4073: $ff
    ld c, c                                       ; $4074: $49
    rst $38                                       ; $4075: $ff
    ld d, c                                       ; $4076: $51
    rst $38                                       ; $4077: $ff
    push hl                                       ; $4078: $e5
    rst $38                                       ; $4079: $ff
    rst $38                                       ; $407a: $ff
    dec h                                         ; $407b: $25
    rst $38                                       ; $407c: $ff
    sbc c                                         ; $407d: $99
    rst $38                                       ; $407e: $ff
    ld b, c                                       ; $407f: $41
    cp $02                                        ; $4080: $fe $02
    db $fc                                        ; $4082: $fc
    cp h                                          ; $4083: $bc
    db $ed                                        ; $4084: $ed
    ld l, b                                       ; $4085: $68
    rst $20                                       ; $4086: $e7
    inc d                                         ; $4087: $14
    db $eb                                        ; $4088: $eb
    ccf                                           ; $4089: $3f
    call nc, $d53f                                ; $408a: $d4 $3f $d5
    ld a, [hl]                                    ; $408d: $7e
    ld d, d                                       ; $408e: $52
    rst $20                                       ; $408f: $e7
    add b                                         ; $4090: $80
    add b                                         ; $4091: $80
    ld b, b                                       ; $4092: $40
    ret nz                                        ; $4093: $c0

    and b                                         ; $4094: $a0
    ld h, b                                       ; $4095: $60
    ld b, d                                       ; $4096: $42
    pop hl                                        ; $4097: $e1
    sub l                                         ; $4098: $95
    ld bc, $e0fe                                  ; $4099: $01 $fe $e0
    inc bc                                        ; $409c: $03
    cp $e0                                        ; $409d: $fe $e0
    rlca                                          ; $409f: $07
    cp $e0                                        ; $40a0: $fe $e0
    ld b, d                                       ; $40a2: $42
    db $eb                                        ; $40a3: $eb
    inc b                                         ; $40a4: $04
    ld [hl], c                                    ; $40a5: $71
    rlca                                          ; $40a6: $07
    ld [de], a                                    ; $40a7: $12
    add sp, $7a                                   ; $40a8: $e8 $7a
    ld [c], a                                     ; $40aa: $e2
    ld [bc], a                                    ; $40ab: $02
    ld [$7f80], a                                 ; $40ac: $ea $80 $7f
    ret nz                                        ; $40af: $c0

    ld a, [c]                                     ; $40b0: $f2
    pop bc                                        ; $40b1: $c1
    sub l                                         ; $40b2: $95
    cp $fe                                        ; $40b3: $fe $fe
    ldh [$fc], a                                  ; $40b5: $e0 $fc
    cp $e0                                        ; $40b7: $fe $e0
    ld hl, sp-$02                                 ; $40b9: $f8 $fe
    ldh [$e2], a                                  ; $40bb: $e0 $e2
    add $07                                       ; $40bd: $c6 $07
    rst $38                                       ; $40bf: $ff
    rst $38                                       ; $40c0: $ff
    add hl, bc                                    ; $40c1: $09
    rst $38                                       ; $40c2: $ff
    ld a, [bc]                                    ; $40c3: $0a
    rst $38                                       ; $40c4: $ff
    add hl, bc                                    ; $40c5: $09
    db $e3                                        ; $40c6: $e3
    ccf                                           ; $40c7: $3f
    rst $38                                       ; $40c8: $ff
    push bc                                       ; $40c9: $c5
    ld a, a                                       ; $40ca: $7f
    rst $00                                       ; $40cb: $c7
    ld a, a                                       ; $40cc: $7f
    rst $08                                       ; $40cd: $cf
    rst $38                                       ; $40ce: $ff
    rrca                                          ; $40cf: $0f
    ld a, [$1fff]                                 ; $40d0: $fa $ff $1f
    ei                                            ; $40d3: $fb
    rst $38                                       ; $40d4: $ff
    rst $38                                       ; $40d5: $ff
    rst $08                                       ; $40d6: $cf
    ld a, h                                       ; $40d7: $7c
    adc a                                         ; $40d8: $8f
    rst $38                                       ; $40d9: $ff
    db $fd                                        ; $40da: $fd
    ldh a, [$bd]                                  ; $40db: $f0 $bd
    ret nz                                        ; $40dd: $c0

    rst $38                                       ; $40de: $ff
    dec e                                         ; $40df: $1d
    rst $38                                       ; $40e0: $ff
    ld l, c                                       ; $40e1: $69
    rst $38                                       ; $40e2: $ff
    sbc a                                         ; $40e3: $9f
    cp $1e                                        ; $40e4: $fe $1e
    ldh [rIE], a                                  ; $40e6: $e0 $ff
    sub d                                         ; $40e8: $92
    di                                            ; $40e9: $f3
    ld l, d                                       ; $40ea: $6a
    ei                                            ; $40eb: $fb
    db $fc                                        ; $40ec: $fc
    rst $38                                       ; $40ed: $ff
    rst $38                                       ; $40ee: $ff
    db $fc                                        ; $40ef: $fc
    rst $30                                       ; $40f0: $f7
    db $fc                                        ; $40f1: $fc
    scf                                           ; $40f2: $37
    db $fc                                        ; $40f3: $fc
    rst $28                                       ; $40f4: $ef
    ld a, h                                       ; $40f5: $7c
    rst $28                                       ; $40f6: $ef
    rst $38                                       ; $40f7: $ff
    cp a                                          ; $40f8: $bf
    ld [hl], a                                    ; $40f9: $77
    cp $86                                        ; $40fa: $fe $86
    ld a, [hl]                                    ; $40fc: $7e
    ld [c], a                                     ; $40fd: $e2
    dec e                                         ; $40fe: $1d
    db $fc                                        ; $40ff: $fc
    rst $30                                       ; $4100: $f7
    dec b                                         ; $4101: $05
    db $fc                                        ; $4102: $fc
    rlca                                          ; $4103: $07
    cp $e0                                        ; $4104: $fe $e0
    rrca                                          ; $4106: $0f
    ld hl, sp+$0f                                 ; $4107: $f8 $0f
    ld hl, sp+$7e                                 ; $4109: $f8 $7e
    xor $c7                                       ; $410b: $ee $c7
    rst $38                                       ; $410d: $ff
    dec b                                         ; $410e: $05
    rst $38                                       ; $410f: $ff
    inc b                                         ; $4110: $04
    rst $38                                       ; $4111: $ff
    dec b                                         ; $4112: $05
    db $ec                                        ; $4113: $ec
    pop bc                                        ; $4114: $c1
    rst $38                                       ; $4115: $ff
    db $e3                                        ; $4116: $e3
    ccf                                           ; $4117: $3f
    and $ff                                       ; $4118: $e6 $ff
    cpl                                           ; $411a: $2f
    rst $38                                       ; $411b: $ff
    rrca                                          ; $411c: $0f
    rst $38                                       ; $411d: $ff
    rst $38                                       ; $411e: $ff
    sbc a                                         ; $411f: $9f
    ei                                            ; $4120: $fb
    rst $38                                       ; $4121: $ff
    ld a, c                                       ; $4122: $79
    ccf                                           ; $4123: $3f
    rst $18                                       ; $4124: $df
    ccf                                           ; $4125: $3f
    jp z, Jump_077_6d7c                           ; $4126: $ca $7c $6d

    pop bc                                        ; $4129: $c1
    xor d                                         ; $412a: $aa
    ld [c], a                                     ; $412b: $e2
    sbc l                                         ; $412c: $9d
    rst $38                                       ; $412d: $ff
    dec c                                         ; $412e: $0d
    and b                                         ; $412f: $a0
    ld h, b                                       ; $4130: $60
    cp $e0                                        ; $4131: $fe $e0
    rst $38                                       ; $4133: $ff
    ldh [rSVBK], a                                ; $4134: $e0 $70
    ldh a, [$0c]                                  ; $4136: $f0 $0c
    db $fc                                        ; $4138: $fc
    ld a, h                                       ; $4139: $7c
    db $f4                                        ; $413a: $f4
    db $fc                                        ; $413b: $fc
    rst $38                                       ; $413c: $ff
    db $f4                                        ; $413d: $f4
    ld hl, sp+$28                                 ; $413e: $f8 $28
    rrca                                          ; $4140: $0f
    nop                                           ; $4141: $00
    rrca                                          ; $4142: $0f
    nop                                           ; $4143: $00
    rra                                           ; $4144: $1f
    jp z, $e0fe                                   ; $4145: $ca $fe $e0

    ccf                                           ; $4148: $3f
    cp $e0                                        ; $4149: $fe $e0
    ld a, a                                       ; $414b: $7f
    cp $e0                                        ; $414c: $fe $e0
    ld d, d                                       ; $414e: $52
    ret                                           ; $414f: $c9


    ld bc, $ff01                                  ; $4150: $01 $01 $ff
    rlca                                          ; $4153: $07
    rlca                                          ; $4154: $07
    ld [$100f], sp                                ; $4155: $08 $0f $10
    rra                                           ; $4158: $1f
    ld de, $7f1f                                  ; $4159: $11 $1f $7f
    inc hl                                        ; $415c: $23
    ccf                                           ; $415d: $3f
    ld b, l                                       ; $415e: $45
    ld a, a                                       ; $415f: $7f
    rst $00                                       ; $4160: $c7
    rst $38                                       ; $4161: $ff
    ld c, a                                       ; $4162: $4f
    ld e, d                                       ; $4163: $5a
    ldh [$fc], a                                  ; $4164: $e0 $fc
    sbc d                                         ; $4166: $9a
    jp $e75a                                      ; $4167: $c3 $5a $e7


    ld a, a                                       ; $416a: $7f
    ret nz                                        ; $416b: $c0

    cp a                                          ; $416c: $bf
    ldh [$7f], a                                  ; $416d: $e0 $7f
    ldh [rIE], a                                  ; $416f: $e0 $ff
    sbc a                                         ; $4171: $9f
    ldh a, [$6f]                                  ; $4172: $f0 $6f
    ld hl, sp-$01                                 ; $4174: $f8 $ff
    db $fc                                        ; $4176: $fc
    rst $38                                       ; $4177: $ff
    db $f4                                        ; $4178: $f4
    ld a, a                                       ; $4179: $7f
    rst $38                                       ; $417a: $ff
    inc [hl]                                      ; $417b: $34
    ldh a, [rP1]                                  ; $417c: $f0 $00
    ldh a, [rP1]                                  ; $417e: $f0 $00
    ldh [$fe], a                                  ; $4180: $e0 $fe
    ldh [$e5], a                                  ; $4182: $e0 $e5
    ret nz                                        ; $4184: $c0

    cp $e0                                        ; $4185: $fe $e0
    add b                                         ; $4187: $80
    cp $e0                                        ; $4188: $fe $e0
    ld l, h                                       ; $418a: $6c
    ldh [rDIV], a                                 ; $418b: $e0 $04
    rst $38                                       ; $418d: $ff
    ld [bc], a                                    ; $418e: $02
    db $fc                                        ; $418f: $fc
    cp $e0                                        ; $4190: $fe $e0
    ld d, b                                       ; $4192: $50
    ret nz                                        ; $4193: $c0

    di                                            ; $4194: $f3
    rra                                           ; $4195: $1f
    rst $20                                       ; $4196: $e7
    inc a                                         ; $4197: $3c
    rst $38                                       ; $4198: $ff
    cp a                                          ; $4199: $bf
    rst $38                                       ; $419a: $ff
    db $e3                                        ; $419b: $e3
    cp a                                          ; $419c: $bf
    rst $30                                       ; $419d: $f7
    ld e, l                                       ; $419e: $5d
    rst $38                                       ; $419f: $ff
    ld l, a                                       ; $41a0: $6f
    rst $38                                       ; $41a1: $ff
    dec hl                                        ; $41a2: $2b
    rst $38                                       ; $41a3: $ff
    rst $38                                       ; $41a4: $ff
    jp hl                                         ; $41a5: $e9


    ccf                                           ; $41a6: $3f
    db $e4                                        ; $41a7: $e4
    rst $38                                       ; $41a8: $ff
    db $e3                                        ; $41a9: $e3
    db $f4                                        ; $41aa: $f4
    ld a, a                                       ; $41ab: $7f
    push hl                                       ; $41ac: $e5
    cp $10                                        ; $41ad: $fe $10
    pop hl                                        ; $41af: $e1
    ld c, c                                       ; $41b0: $49
    dec bc                                        ; $41b1: $0b
    pop hl                                        ; $41b2: $e1
    ld d, [hl]                                    ; $41b3: $56
    ret nz                                        ; $41b4: $c0

    add b                                         ; $41b5: $80
    ld e, [hl]                                    ; $41b6: $5e
    cp a                                          ; $41b7: $bf
    rst $38                                       ; $41b8: $ff
    inc a                                         ; $41b9: $3c
    rst $38                                       ; $41ba: $ff

jr_077_41bb:
    db $fc                                        ; $41bb: $fc
    rst $28                                       ; $41bc: $ef
    cp $5b                                        ; $41bd: $fe $5b
    cp $fb                                        ; $41bf: $fe $fb
    rst $38                                       ; $41c1: $ff
    cp $eb                                        ; $41c2: $fe $eb
    cp $4b                                        ; $41c4: $fe $4b
    db $fc                                        ; $41c6: $fc
    scf                                           ; $41c7: $37
    rra                                           ; $41c8: $1f
    ldh a, [$9e]                                  ; $41c9: $f0 $9e
    cp $e5                                        ; $41cb: $fe $e5
    ccf                                           ; $41cd: $3f
    ldh [$3f], a                                  ; $41ce: $e0 $3f
    ldh [$b0], a                                  ; $41d0: $e0 $b0
    ret nz                                        ; $41d2: $c0

    or b                                          ; $41d3: $b0
    ldh [$7f], a                                  ; $41d4: $e0 $7f
    rst $38                                       ; $41d6: $ff
    ld [bc], a                                    ; $41d7: $02
    ld a, a                                       ; $41d8: $7f
    ld [bc], a                                    ; $41d9: $02
    ccf                                           ; $41da: $3f
    ld [bc], a                                    ; $41db: $02
    ccf                                           ; $41dc: $3f
    ld bc, $ff1e                                  ; $41dd: $01 $1e $ff
    inc bc                                        ; $41e0: $03
    inc e                                         ; $41e1: $1c
    rlca                                          ; $41e2: $07
    rst $28                                       ; $41e3: $ef
    cp e                                          ; $41e4: $bb
    rst $20                                       ; $41e5: $e7
    cp a                                          ; $41e6: $bf
    rst $20                                       ; $41e7: $e7
    rst $18                                       ; $41e8: $df
    cp h                                          ; $41e9: $bc
    rst $38                                       ; $41ea: $ff
    ld e, a                                       ; $41eb: $5f
    rst $38                                       ; $41ec: $ff
    ld [hl], a                                    ; $41ed: $77
    ld e, $c0                                     ; $41ee: $1e $c0
    ld [c], a                                     ; $41f0: $e2
    ccf                                           ; $41f1: $3f
    rst $38                                       ; $41f2: $ff
    pop hl                                        ; $41f3: $e1
    rst $38                                       ; $41f4: $ff
    ld b, a                                       ; $41f5: $47
    ld hl, sp-$61                                 ; $41f6: $f8 $9f
    ld hl, sp-$11                                 ; $41f8: $f8 $ef
    ldh a, [$f7]                                  ; $41fa: $f0 $f7
    rra                                           ; $41fc: $1f
    db $f4                                        ; $41fd: $f4
    rst $38                                       ; $41fe: $ff
    xor b                                         ; $41ff: $a8
    ldh [$5f], a                                  ; $4200: $e0 $5f
    rst $38                                       ; $4202: $ff
    ret                                           ; $4203: $c9


    ld hl, sp-$01                                 ; $4204: $f8 $ff
    xor b                                         ; $4206: $a8
    ld a, b                                       ; $4207: $78
    add sp, -$61                                  ; $4208: $e8 $9f
    ld [hl], a                                    ; $420a: $77
    ld e, a                                       ; $420b: $5f
    cp [hl]                                       ; $420c: $be
    rra                                           ; $420d: $1f
    rst $38                                       ; $420e: $ff
    db $fc                                        ; $420f: $fc
    ccf                                           ; $4210: $3f
    ld a, [c]                                     ; $4211: $f2
    rst $38                                       ; $4212: $ff
    jp nc, Jump_077_62ff                          ; $4213: $d2 $ff $62

    rrca                                          ; $4216: $0f
    rst $38                                       ; $4217: $ff
    add hl, bc                                    ; $4218: $09
    rrca                                          ; $4219: $0f
    ld a, [bc]                                    ; $421a: $0a
    adc a                                         ; $421b: $8f
    add hl, bc                                    ; $421c: $09
    add a                                         ; $421d: $87
    inc b                                         ; $421e: $04
    rst $00                                       ; $421f: $c7
    ld a, a                                       ; $4220: $7f
    inc b                                         ; $4221: $04
    jp $e302                                      ; $4222: $c3 $02 $e3


    ld [bc], a                                    ; $4225: $02
    rst $20                                       ; $4226: $e7
    rlca                                          ; $4227: $07
    adc d                                         ; $4228: $8a
    jp Jump_077_6ace                              ; $4229: $c3 $ce $6a


    db $e4                                        ; $422c: $e4
    ld l, e                                       ; $422d: $6b
    rst $38                                       ; $422e: $ff
    jr z, jr_077_41bb                             ; $422f: $28 $8a

    jp $e86a                                      ; $4231: $c3 $6a $e8


    add sp, $7f                                   ; $4234: $e8 $7f
    rst $38                                       ; $4236: $ff
    add sp, -$41                                  ; $4237: $e8 $bf
    ld [hl], a                                    ; $4239: $77
    ld e, [hl]                                    ; $423a: $5e

Jump_077_423b:
    cp [hl]                                       ; $423b: $be
    inc a                                         ; $423c: $3c
    db $fc                                        ; $423d: $fc
    db $fc                                        ; $423e: $fc
    rst $18                                       ; $423f: $df
    db $ec                                        ; $4240: $ec
    cp $5a                                        ; $4241: $fe $5a
    cp $ea                                        ; $4243: $fe $ea
    ld [hl-], a                                   ; $4245: $32
    xor e                                         ; $4246: $ab
    jr c, jr_077_4281                             ; $4247: $38 $38

    rst $38                                       ; $4249: $ff
    rst $28                                       ; $424a: $ef
    add hl, sp                                    ; $424b: $39
    rst $18                                       ; $424c: $df
    halt                                          ; $424d: $76
    ld a, a                                       ; $424e: $7f
    ld [hl], b                                    ; $424f: $70
    rst $38                                       ; $4250: $ff
    ret nc                                        ; $4251: $d0

    rst $38                                       ; $4252: $ff
    rst $38                                       ; $4253: $ff
    call z, $eabf                                 ; $4254: $cc $bf $ea
    cp a                                          ; $4257: $bf
    push hl                                       ; $4258: $e5
    ld e, a                                       ; $4259: $5f
    ld [hl], d                                    ; $425a: $72
    rst $38                                       ; $425b: $ff
    rst $38                                       ; $425c: $ff
    jr nc, @+$01                                  ; $425d: $30 $ff

    ld e, b                                       ; $425f: $58
    rst $38                                       ; $4260: $ff
    adc [hl]                                      ; $4261: $8e
    rst $38                                       ; $4262: $ff
    rra                                           ; $4263: $1f
    cp d                                          ; $4264: $ba
    ld a, a                                       ; $4265: $7f
    ret nz                                        ; $4266: $c0

    rlca                                          ; $4267: $07
    ld a, [$06e0]                                 ; $4268: $fa $e0 $06
    rst $38                                       ; $426b: $ff
    ld a, a                                       ; $426c: $7f
    ldh a, [$82]                                  ; $426d: $f0 $82
    pop bc                                        ; $426f: $c1
    rst $38                                       ; $4270: $ff
    rst $38                                       ; $4271: $ff
    pop hl                                        ; $4272: $e1
    cp $ff                                        ; $4273: $fe $ff
    ldh [rIE], a                                  ; $4275: $e0 $ff
    rst $38                                       ; $4277: $ff
    ld a, a                                       ; $4278: $7f
    rst $38                                       ; $4279: $ff
    db $fc                                        ; $427a: $fc
    rst $00                                       ; $427b: $c7
    ld hl, sp+$2f                                 ; $427c: $f8 $2f
    db $fc                                        ; $427e: $fc
    rra                                           ; $427f: $1f
    db $fc                                        ; $4280: $fc

jr_077_4281:
    rra                                           ; $4281: $1f
    cp a                                          ; $4282: $bf
    cp $ff                                        ; $4283: $fe $ff
    rra                                           ; $4285: $1f
    ld sp, hl                                     ; $4286: $f9
    ld a, a                                       ; $4287: $7f
    ld sp, hl                                     ; $4288: $f9
    jp nc, $8080                                  ; $4289: $d2 $80 $80

    cp [hl]                                       ; $428c: $be
    cp $e8                                        ; $428d: $fe $e8
    ret nz                                        ; $428f: $c0

    rst $38                                       ; $4290: $ff
    ret nz                                        ; $4291: $c0

    ld [$8e0f], sp                                ; $4292: $08 $0f $8e
    pop bc                                        ; $4295: $c1
    db $10                                        ; $4296: $10
    rst $38                                       ; $4297: $ff
    rra                                           ; $4298: $1f
    jr nz, jr_077_42da                            ; $4299: $20 $3f

    daa                                           ; $429b: $27
    ccf                                           ; $429c: $3f
    rra                                           ; $429d: $1f
    jr @+$41                                      ; $429e: $18 $3f

    rst $38                                       ; $42a0: $ff
    jr nz, jr_077_42e2                            ; $42a1: $20 $3f

    ldh [$1f], a                                  ; $42a3: $e0 $1f
    ldh a, [$2f]                                  ; $42a5: $f0 $2f
    db $fc                                        ; $42a7: $fc
    ld h, a                                       ; $42a8: $67
    rst $28                                       ; $42a9: $ef
    rst $38                                       ; $42aa: $ff
    inc hl                                        ; $42ab: $23
    rst $38                                       ; $42ac: $ff
    and e                                         ; $42ad: $a3
    jp nz, $ffe0                                  ; $42ae: $c2 $e0 $ff

    ld c, $ff                                     ; $42b1: $0e $ff
    push af                                       ; $42b3: $f5
    ccf                                           ; $42b4: $3f
    or b                                          ; $42b5: $b0
    push hl                                       ; $42b6: $e5
    sbc $b0                                       ; $42b7: $de $b0
    ld [c], a                                     ; $42b9: $e2
    rst $38                                       ; $42ba: $ff
    add h                                         ; $42bb: $84
    ei                                            ; $42bc: $fb
    ld l, $e7                                     ; $42bd: $2e $e7
    ld sp, hl                                     ; $42bf: $f9
    rra                                           ; $42c0: $1f
    db $fd                                        ; $42c1: $fd
    or b                                          ; $42c2: $b0
    rst $20                                       ; $42c3: $e7
    sub h                                         ; $42c4: $94
    and d                                         ; $42c5: $a2
    ld hl, sp+$00                                 ; $42c6: $f8 $00
    ldh a, [$7f]                                  ; $42c8: $f0 $7f
    add b                                         ; $42ca: $80
    ldh [$80], a                                  ; $42cb: $e0 $80
    ret nz                                        ; $42cd: $c0

    ld b, b                                       ; $42ce: $40
    add b                                         ; $42cf: $80
    add b                                         ; $42d0: $80
    jp c, $ff83                                   ; $42d1: $da $83 $ff

    db $e3                                        ; $42d4: $e3
    ld a, $cf                                     ; $42d5: $3e $cf
    ld a, h                                       ; $42d7: $7c
    rst $08                                       ; $42d8: $cf
    ld a, e                                       ; $42d9: $7b

jr_077_42da:
    sbc a                                         ; $42da: $9f
    ld hl, sp-$01                                 ; $42db: $f8 $ff
    cp a                                          ; $42dd: $bf
    add sp, -$01                                  ; $42de: $e8 $ff
    db $e4                                        ; $42e0: $e4
    ccf                                           ; $42e1: $3f

jr_077_42e2:
    db $e3                                        ; $42e2: $e3
    sbc a                                         ; $42e3: $9f
    ldh a, [$2f]                                  ; $42e4: $f0 $2f
    rst $28                                       ; $42e6: $ef
    ld a, b                                       ; $42e7: $78
    rst $38                                       ; $42e8: $ff
    sbc [hl]                                      ; $42e9: $9e
    db $dd                                        ; $42ea: $dd
    and b                                         ; $42eb: $a0
    ld b, a                                       ; $42ec: $47
    db $db                                        ; $42ed: $db
    and b                                         ; $42ee: $a0
    adc h                                         ; $42ef: $8c
    ret nz                                        ; $42f0: $c0

    ld [$e55c], a                                 ; $42f1: $ea $5c $e5
    cp a                                          ; $42f4: $bf
    xor h                                         ; $42f5: $ac
    ldh [rIE], a                                  ; $42f6: $e0 $ff
    adc h                                         ; $42f8: $8c
    ret nz                                        ; $42f9: $c0

    db $fd                                        ; $42fa: $fd
    rst $00                                       ; $42fb: $c7
    ld sp, hl                                     ; $42fc: $f9
    ei                                            ; $42fd: $fb
    cpl                                           ; $42fe: $2f
    ld sp, hl                                     ; $42ff: $f9
    ld e, h                                       ; $4300: $5c
    db $e4                                        ; $4301: $e4
    ld a, h                                       ; $4302: $7c
    ld b, h                                       ; $4303: $44
    rst $38                                       ; $4304: $ff
    sbc $ff                                       ; $4305: $de $ff
    rst $38                                       ; $4307: $ff
    ld hl, $27ff                                  ; $4308: $21 $ff $27
    rst $38                                       ; $430b: $ff
    add hl, sp                                    ; $430c: $39
    rst $38                                       ; $430d: $ff
    db $e3                                        ; $430e: $e3
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    cp l                                          ; $4311: $bd
    rst $38                                       ; $4312: $ff
    and d                                         ; $4313: $a2
    ld c, a                                       ; $4314: $4f
    ld a, c                                       ; $4315: $79
    daa                                           ; $4316: $27
    ccf                                           ; $4317: $3f
    db $10                                        ; $4318: $10
    cpl                                           ; $4319: $2f
    rra                                           ; $431a: $1f
    rrca                                          ; $431b: $0f
    rrca                                          ; $431c: $0f
    inc bc                                        ; $431d: $03
    rst $38                                       ; $431e: $ff
    ldh [rSB], a                                  ; $431f: $e0 $01
    rst $38                                       ; $4321: $ff
    ldh [$b8], a                                  ; $4322: $e0 $b8
    ldh [$e2], a                                  ; $4324: $e0 $e2
    rst $38                                       ; $4326: $ff
    db $eb                                        ; $4327: $eb
    ld a, a                                       ; $4328: $7f
    ldh a, [$ec]                                  ; $4329: $f0 $ec
    pop hl                                        ; $432b: $e1
    ld [$c014], a                                 ; $432c: $ea $14 $c0
    ret nz                                        ; $432f: $c0

    cp $c0                                        ; $4330: $fe $c0
    rst $38                                       ; $4332: $ff
    db $fc                                        ; $4333: $fc
    ldh [$f8], a                                  ; $4334: $e0 $f8
    ldh [$f0], a                                  ; $4336: $e0 $f0
    ldh [$f0], a                                  ; $4338: $e0 $f0
    ret nc                                        ; $433a: $d0

    rst $38                                       ; $433b: $ff
    add sp, -$08                                  ; $433c: $e8 $f8
    ret z                                         ; $433e: $c8

    ld hl, sp+$3f                                 ; $433f: $f8 $3f
    inc l                                         ; $4341: $2c
    sbc a                                         ; $4342: $9f
    db $10                                        ; $4343: $10
    xor e                                         ; $4344: $ab
    rst $38                                       ; $4345: $ff
    jr nz, jr_077_43aa                            ; $4346: $20 $62

    add b                                         ; $4348: $80
    ld a, [hl+]                                   ; $4349: $2a
    ld a, [$10e0]                                 ; $434a: $fa $e0 $10
    xor $80                                       ; $434d: $ee $80
    ld l, [hl]                                    ; $434f: $6e
    ld [$c0c4], a                                 ; $4350: $ea $c4 $c0
    rrca                                          ; $4353: $0f
    ld [c], a                                     ; $4354: $e2
    add b                                         ; $4355: $80
    sub a                                         ; $4356: $97
    adc h                                         ; $4357: $8c
    ldh [$3f], a                                  ; $4358: $e0 $3f
    rst $38                                       ; $435a: $ff
    sbc a                                         ; $435b: $9f
    db $e4                                        ; $435c: $e4
    jp nz, $ffea                                  ; $435d: $c2 $ea $ff

    ldh [$80], a                                  ; $4360: $e0 $80
    ld a, [hl+]                                   ; $4362: $2a
    ldh [$fe], a                                  ; $4363: $e0 $fe
    pop hl                                        ; $4365: $e1
    add e                                         ; $4366: $83
    add b                                         ; $4367: $80
    rrca                                          ; $4368: $0f
    cp $4c                                        ; $4369: $fe $4c
    and b                                         ; $436b: $a0
    rst $38                                       ; $436c: $ff
    nop                                           ; $436d: $00
    cp a                                          ; $436e: $bf
    and $5f                                       ; $436f: $e6 $5f
    ld [hl], l                                    ; $4371: $75
    ld e, a                                       ; $4372: $5f
    rst $38                                       ; $4373: $ff
    ld [hl], d                                    ; $4374: $72
    cpl                                           ; $4375: $2f
    add hl, sp                                    ; $4376: $39
    rla                                           ; $4377: $17
    inc e                                         ; $4378: $1c
    rrca                                          ; $4379: $0f
    rrca                                          ; $437a: $0f
    rlca                                          ; $437b: $07
    ld d, [hl]                                    ; $437c: $56
    rst $38                                       ; $437d: $ff
    ldh [rIE], a                                  ; $437e: $e0 $ff
    inc de                                        ; $4380: $13
    adc h                                         ; $4381: $8c
    ret nz                                        ; $4382: $c0

    adc d                                         ; $4383: $8a
    and d                                         ; $4384: $a2
    add b                                         ; $4385: $80
    rst $08                                       ; $4386: $cf
    ld l, b                                       ; $4387: $68
    db $e3                                        ; $4388: $e3
    ldh a, [$dc]                                  ; $4389: $f0 $dc
    jp nz, $e86c                                  ; $438b: $c2 $6c $e8

    adc h                                         ; $438e: $8c
    jp nz, $e94d                                  ; $438f: $c2 $4d $e9

    sbc $3f                                       ; $4392: $de $3f
    db $e4                                        ; $4394: $e4
    ccf                                           ; $4395: $3f
    ld c, a                                       ; $4396: $4f
    ld hl, sp-$01                                 ; $4397: $f8 $ff
    ret nz                                        ; $4399: $c0

    db $fc                                        ; $439a: $fc
    ld c, b                                       ; $439b: $48
    and b                                         ; $439c: $a0
    ld c, [hl]                                    ; $439d: $4e
    and b                                         ; $439e: $a0
    add b                                         ; $439f: $80
    ld [$aa80], sp                                ; $43a0: $08 $80 $aa
    ld b, h                                       ; $43a3: $44
    and b                                         ; $43a4: $a0
    ldh [$3a], a                                  ; $43a5: $e0 $3a
    and b                                         ; $43a7: $a0
    ld hl, sp+$4c                                 ; $43a8: $f8 $4c

jr_077_43aa:
    add b                                         ; $43aa: $80
    cp $40                                        ; $43ab: $fe $40
    ld h, b                                       ; $43ad: $60
    rst $38                                       ; $43ae: $ff
    rst $38                                       ; $43af: $ff
    ld a, a                                       ; $43b0: $7f
    ld a, a                                       ; $43b1: $7f
    ccf                                           ; $43b2: $3f
    ld a, a                                       ; $43b3: $7f
    rra                                           ; $43b4: $1f

jr_077_43b5:
    ld a, $1f                                     ; $43b5: $3e $1f
    ld a, $df                                     ; $43b7: $3e $df
    rrca                                          ; $43b9: $0f
    ld d, $1f                                     ; $43ba: $16 $1f
    jr jr_077_43cd                                ; $43bc: $18 $0f

    ld h, e                                       ; $43be: $63
    add c                                         ; $43bf: $81
    db $fd                                        ; $43c0: $fd
    db $fc                                        ; $43c1: $fc
    rst $30                                       ; $43c2: $f7
    pop bc                                        ; $43c3: $c1
    ret nz                                        ; $43c4: $c0

    ld b, e                                       ; $43c5: $43
    cp $e0                                        ; $43c6: $fe $e0
    ld b, a                                       ; $43c8: $47
    ret nz                                        ; $43c9: $c0

    add a                                         ; $43ca: $87
    add b                                         ; $43cb: $80
    rst $30                                       ; $43cc: $f7

jr_077_43cd:
    cp $ff                                        ; $43cd: $fe $ff
    ld hl, sp-$77                                 ; $43cf: $f8 $89
    and b                                         ; $43d1: $a0
    db $e3                                        ; $43d2: $e3
    ccf                                           ; $43d3: $3f
    db $fc                                        ; $43d4: $fc
    inc e                                         ; $43d5: $1c
    cp $0c                                        ; $43d6: $fe $0c
    and c                                         ; $43d8: $a1
    add b                                         ; $43d9: $80
    nop                                           ; $43da: $00
    ld [$10f8], sp                                ; $43db: $08 $f8 $10
    ldh a, [rNR41]                                ; $43de: $f0 $20
    rst $08                                       ; $43e0: $cf
    ldh [$c0], a                                  ; $43e1: $e0 $c0
    ret nz                                        ; $43e3: $c0

    inc bc                                        ; $43e4: $03
    xor b                                         ; $43e5: $a8
    add b                                         ; $43e6: $80
    ld h, b                                       ; $43e7: $60
    pop hl                                        ; $43e8: $e1
    ccf                                           ; $43e9: $3f
    rlca                                          ; $43ea: $07
    ld a, a                                       ; $43eb: $7f
    rrca                                          ; $43ec: $0f
    ld bc, $0003                                  ; $43ed: $01 $03 $00
    dec b                                         ; $43f0: $05
    dec b                                         ; $43f1: $05
    dec bc                                        ; $43f2: $0b
    jr z, jr_077_43b5                             ; $43f3: $28 $c0

    ld a, h                                       ; $43f5: $7c
    jp nc, $d360                                  ; $43f6: $d2 $60 $d3

    call nz, $fe1f                                ; $43f9: $c4 $1f $fe
    rst $00                                       ; $43fc: $c7
    cp $81                                        ; $43fd: $fe $81
    rst $38                                       ; $43ff: $ff
    ld h, b                                       ; $4400: $60
    cp $f2                                        ; $4401: $fe $f2
    db $e4                                        ; $4403: $e4
    rlca                                          ; $4404: $07
    dec de                                        ; $4405: $1b
    inc bc                                        ; $4406: $03
    inc sp                                        ; $4407: $33
    inc bc                                        ; $4408: $03
    inc l                                         ; $4409: $2c
    rlca                                          ; $440a: $07
    ld sp, hl                                     ; $440b: $f9
    ld a, h                                       ; $440c: $7c
    ldh [$e1], a                                  ; $440d: $e0 $e1
    inc de                                        ; $440f: $13
    add b                                         ; $4410: $80
    rst $38                                       ; $4411: $ff
    ld hl, sp-$31                                 ; $4412: $f8 $cf
    ld hl, sp-$61                                 ; $4414: $f8 $9f
    ld [c], a                                     ; $4416: $e2
    inc sp                                        ; $4417: $33
    add b                                         ; $4418: $80
    ld b, b                                       ; $4419: $40
    or $61                                        ; $441a: $f6 $61
    or [hl]                                       ; $441c: $b6
    ld h, [hl]                                    ; $441d: $66
    or h                                          ; $441e: $b4
    ld h, b                                       ; $441f: $60
    add b                                         ; $4420: $80
    rst $38                                       ; $4421: $ff
    rst $38                                       ; $4422: $ff
    rst $38                                       ; $4423: $ff
    rst $00                                       ; $4424: $c7
    rlca                                          ; $4425: $07
    di                                            ; $4426: $f3
    inc bc                                        ; $4427: $03
    db $fd                                        ; $4428: $fd
    ld bc, $04ff                                  ; $4429: $01 $ff $04
    add l                                         ; $442c: $85
    ei                                            ; $442d: $fb
    inc bc                                        ; $442e: $03
    add b                                         ; $442f: $80
    db $fc                                        ; $4430: $fc
    or b                                          ; $4431: $b0
    and $e4                                       ; $4432: $e6 $e4
    pop bc                                        ; $4434: $c1
    or b                                          ; $4435: $b0
    rst $20                                       ; $4436: $e7
    cp a                                          ; $4437: $bf
    ld h, c                                       ; $4438: $61
    rst $08                                       ; $4439: $cf
    ld l, a                                       ; $443a: $6f
    inc bc                                        ; $443b: $03
    call nc, $8407                                ; $443c: $d4 $07 $84
    sub b                                         ; $443f: $90
    and $fe                                       ; $4440: $e6 $fe
    cp $b0                                        ; $4442: $fe $b0
    push hl                                       ; $4444: $e5
    cp c                                          ; $4445: $b9
    add b                                         ; $4446: $80
    rst $38                                       ; $4447: $ff
    ldh [rNR50], a                                ; $4448: $e0 $24
    ld h, e                                       ; $444a: $63
    ld b, b                                       ; $444b: $40
    ret nz                                        ; $444c: $c0

    add b                                         ; $444d: $80
    or b                                          ; $444e: $b0
    ldh [$3f], a                                  ; $444f: $e0 $3f
    ld a, [$8000]                                 ; $4451: $fa $00 $80
    inc bc                                        ; $4454: $03
    ld h, d                                       ; $4455: $62
    ld c, b                                       ; $4456: $48
    inc c                                         ; $4457: $0c
    rrca                                          ; $4458: $0f
    adc b                                         ; $4459: $88
    rrca                                          ; $445a: $0f
    ret nc                                        ; $445b: $d0

    cp $a8                                        ; $445c: $fe $a8
    ld b, b                                       ; $445e: $40

jr_077_445f:
    ld sp, $131f                                  ; $445f: $31 $1f $13
    ld e, $0d                                     ; $4462: $1e $0d
    inc c                                         ; $4464: $0c
    rst $38                                       ; $4465: $ff
    rst $38                                       ; $4466: $ff
    rst $38                                       ; $4467: $ff
    adc a                                         ; $4468: $8f
    add b                                         ; $4469: $80
    adc [hl]                                      ; $446a: $8e
    add b                                         ; $446b: $80
    sbc h                                         ; $446c: $9c
    add b                                         ; $446d: $80
    jr jr_077_44df                                ; $446e: $18 $6f

    nop                                           ; $4470: $00
    inc sp                                        ; $4471: $33
    nop                                           ; $4472: $00
    cpl                                           ; $4473: $2f
    ldh [$60], a                                  ; $4474: $e0 $60
    rst $38                                       ; $4476: $ff
    rst $38                                       ; $4477: $ff
    jr z, jr_077_445f                             ; $4478: $28 $e5

    inc e                                         ; $447a: $1c
    ld [hl+], a                                   ; $447b: $22
    ld b, l                                       ; $447c: $45
    db $10                                        ; $447d: $10
    ld c, b                                       ; $447e: $48
    ld h, b                                       ; $447f: $60
    rst $38                                       ; $4480: $ff
    sub b                                         ; $4481: $90
    cp $e0                                        ; $4482: $fe $e0
    sbc [hl]                                      ; $4484: $9e
    ld [c], a                                     ; $4485: $e2
    db $fc                                        ; $4486: $fc
    rst $20                                       ; $4487: $e7
    nop                                           ; $4488: $00
    ldh a, [rNR42]                                ; $4489: $f0 $21
    xor b                                         ; $448b: $a8
    ld h, c                                       ; $448c: $61
    and b                                         ; $448d: $a0
    ld h, c                                       ; $448e: $61
    sbc b                                         ; $448f: $98
    ld h, c                                       ; $4490: $61
    ld c, $ac                                     ; $4491: $0e $ac
    ld l, $e0                                     ; $4493: $2e $e0
    adc [hl]                                      ; $4495: $8e
    pop bc                                        ; $4496: $c1
    adc h                                         ; $4497: $8c
    pop bc                                        ; $4498: $c1
    jp c, $c18a                                   ; $4499: $da $8a $c1

    ldh [$a2], a                                  ; $449c: $e0 $a2
    ld c, h                                       ; $449e: $4c
    ld [$a20f], sp                                ; $449f: $08 $0f $a2
    ld c, e                                       ; $44a2: $4b
    ld a, a                                       ; $44a3: $7f
    xor h                                         ; $44a4: $ac
    cp $12                                        ; $44a5: $fe $12
    ld h, [hl]                                    ; $44a7: $66
    inc b                                         ; $44a8: $04
    rst $38                                       ; $44a9: $ff
    add h                                         ; $44aa: $84
    ld a, a                                       ; $44ab: $7f
    jp nz, $c37f                                  ; $44ac: $c2 $7f $c3

    ld a, [hl]                                    ; $44af: $7e
    adc h                                         ; $44b0: $8c
    ldh [$b0], a                                  ; $44b1: $e0 $b0
    rst $38                                       ; $44b3: $ff
    call z, $92ff                                 ; $44b4: $cc $ff $92
    rst $38                                       ; $44b7: $ff
    jr jr_077_44fe                                ; $44b8: $18 $44

    ldh a, [$82]                                  ; $44ba: $f0 $82
    db $eb                                        ; $44bc: $eb
    ld e, $e0                                     ; $44bd: $1e $e0
    cp $ec                                        ; $44bf: $fe $ec
    ld [hl], d                                    ; $44c1: $72
    add hl, hl                                    ; $44c2: $29
    rlca                                          ; $44c3: $07
    rlca                                          ; $44c4: $07
    rrca                                          ; $44c5: $0f
    add hl, bc                                    ; $44c6: $09
    ld a, [c]                                     ; $44c7: $f2
    ld [hl+], a                                   ; $44c8: $22
    ld h, l                                       ; $44c9: $65
    ld b, a                                       ; $44ca: $47
    ld a, h                                       ; $44cb: $7c
    ld b, h                                       ; $44cc: $44
    ld [hl+], a                                   ; $44cd: $22
    ld l, e                                       ; $44ce: $6b
    rst $38                                       ; $44cf: $ff
    sbc a                                         ; $44d0: $9f
    cp a                                          ; $44d1: $bf
    ld [c], a                                     ; $44d2: $e2

jr_077_44d3:
    rra                                           ; $44d3: $1f
    ld a, a                                       ; $44d4: $7f
    db $e3                                        ; $44d5: $e3
    sbc a                                         ; $44d6: $9f
    ld a, [c]                                     ; $44d7: $f2
    ld l, a                                       ; $44d8: $6f
    or d                                          ; $44d9: $b2
    ld h, b                                       ; $44da: $60
    ld a, h                                       ; $44db: $7c
    ld b, e                                       ; $44dc: $43
    cp b                                          ; $44dd: $b8
    inc hl                                        ; $44de: $23

jr_077_44df:
    cp $92                                        ; $44df: $fe $92
    ld b, b                                       ; $44e1: $40
    add l                                         ; $44e2: $85
    ld a, [hl]                                    ; $44e3: $7e
    ld [c], a                                     ; $44e4: $e2
    inc e                                         ; $44e5: $1c
    db $fc                                        ; $44e6: $fc
    inc b                                         ; $44e7: $04
    db $fc                                        ; $44e8: $fc
    ld l, a                                       ; $44e9: $6f
    rrca                                          ; $44ea: $0f
    ld a, [bc]                                    ; $44eb: $0a
    rrca                                          ; $44ec: $0f
    add hl, bc                                    ; $44ed: $09
    adc h                                         ; $44ee: $8c
    inc hl                                        ; $44ef: $23
    inc bc                                        ; $44f0: $03
    ld [bc], a                                    ; $44f1: $02
    jp nc, $e841                                  ; $44f2: $d2 $41 $e8

    or d                                          ; $44f5: $b2
    ld l, b                                       ; $44f6: $68
    inc e                                         ; $44f7: $1c
    ld h, d                                       ; $44f8: $62
    or d                                          ; $44f9: $b2
    ld l, h                                       ; $44fa: $6c
    rst $38                                       ; $44fb: $ff
    inc a                                         ; $44fc: $3c
    ld b, c                                       ; $44fd: $41

jr_077_44fe:
    ld e, [hl]                                    ; $44fe: $5e
    cp a                                          ; $44ff: $bf
    dec a                                         ; $4500: $3d
    ld [hl-], a                                   ; $4501: $32
    inc e                                         ; $4502: $1c
    ld h, [hl]                                    ; $4503: $66
    inc b                                         ; $4504: $04
    cp h                                          ; $4505: $bc
    ldh [$fc], a                                  ; $4506: $e0 $fc
    db $e3                                        ; $4508: $e3
    ld [$c4f8], sp                                ; $4509: $08 $f8 $c4
    and c                                         ; $450c: $a1
    ld h, b                                       ; $450d: $60
    pop bc                                        ; $450e: $c1
    db $fd                                        ; $450f: $fd
    ret nz                                        ; $4510: $c0

    ld b, h                                       ; $4511: $44
    add b                                         ; $4512: $80
    ldh a, [$80]                                  ; $4513: $f0 $80
    ld hl, sp-$80                                 ; $4515: $f8 $80
    db $fc                                        ; $4517: $fc
    add b                                         ; $4518: $80
    db $fd                                        ; $4519: $fd
    cp $e2                                        ; $451a: $fe $e2
    ld h, d                                       ; $451c: $62
    cp a                                          ; $451d: $bf
    add b                                         ; $451e: $80
    sbc a                                         ; $451f: $9f
    add b                                         ; $4520: $80
    adc a                                         ; $4521: $8f
    add b                                         ; $4522: $80
    cp a                                          ; $4523: $bf
    add a                                         ; $4524: $87
    add b                                         ; $4525: $80
    add e                                         ; $4526: $83
    add b                                         ; $4527: $80
    add c                                         ; $4528: $81
    add b                                         ; $4529: $80
    and $61                                       ; $452a: $e6 $61
    and e                                         ; $452c: $a3
    rst $38                                       ; $452d: $ff
    ccf                                           ; $452e: $3f
    rst $00                                       ; $452f: $c7
    ld a, h                                       ; $4530: $7c
    adc a                                         ; $4531: $8f
    ld sp, hl                                     ; $4532: $f9
    sbc a                                         ; $4533: $9f
    or $bf                                        ; $4534: $f6 $bf
    rst $30                                       ; $4536: $f7

jr_077_4537:
    ldh a, [rIE]                                  ; $4537: $f0 $ff
    ret nc                                        ; $4539: $d0

    ld b, d                                       ; $453a: $42
    and b                                         ; $453b: $a0
    db $e3                                        ; $453c: $e3
    rra                                           ; $453d: $1f
    ldh a, [$cf]                                  ; $453e: $f0 $cf
    rla                                           ; $4540: $17
    ld hl, sp-$11                                 ; $4541: $f8 $ef
    ld a, $fc                                     ; $4543: $3e $fc
    ld b, b                                       ; $4545: $40
    adc a                                         ; $4546: $8f
    adc b                                         ; $4547: $88
    ld h, b                                       ; $4548: $60
    jr nc, jr_077_44d3                            ; $4549: $30 $88

    adc h                                         ; $454b: $8c
    ld h, c                                       ; $454c: $61
    ld l, [hl]                                    ; $454d: $6e
    cp h                                          ; $454e: $bc
    ld b, c                                       ; $454f: $41
    db $fc                                        ; $4550: $fc
    rst $00                                       ; $4551: $c7
    db $fc                                        ; $4552: $fc
    adc h                                         ; $4553: $8c
    ld h, [hl]                                    ; $4554: $66
    jr nz, jr_077_4537                            ; $4555: $20 $e0

    ld [$d4c1], sp                                ; $4557: $08 $c1 $d4
    ld h, b                                       ; $455a: $60
    ret z                                         ; $455b: $c8

    ld h, h                                       ; $455c: $64
    jp nz, $fa1f                                  ; $455d: $c2 $1f $fa

    jr nz, jr_077_4569                            ; $4560: $20 $07

    inc e                                         ; $4562: $1c
    jr nz, jr_077_4566                            ; $4563: $20 $01

    nop                                           ; $4565: $00

jr_077_4566:
    ld a, [hl]                                    ; $4566: $7e
    jr c, jr_077_45ca                             ; $4567: $38 $61

jr_077_4569:
    rst $38                                       ; $4569: $ff
    ld h, l                                       ; $456a: $65
    rst $18                                       ; $456b: $df
    ld [hl], d                                    ; $456c: $72
    rst $28                                       ; $456d: $ef
    add hl, sp                                    ; $456e: $39
    ld a, b                                       ; $456f: $78
    add d                                         ; $4570: $82
    sbc l                                         ; $4571: $9d
    inc bc                                        ; $4572: $03
    ld b, $80                                     ; $4573: $06 $80
    ld c, $ff                                     ; $4575: $0e $ff
    ld d, $b3                                     ; $4577: $16 $b3
    ld hl, $8318                                  ; $4579: $21 $18 $83
    add b                                         ; $457c: $80
    cp $7c                                        ; $457d: $fe $7c
    ldh [$83], a                                  ; $457f: $e0 $83
    add b                                         ; $4581: $80
    rst $00                                       ; $4582: $c7
    ret nz                                        ; $4583: $c0

    rst $08                                       ; $4584: $cf
    ret nz                                        ; $4585: $c0

    rst $18                                       ; $4586: $df
    xor b                                         ; $4587: $a8
    ld d, d                                       ; $4588: $52
    ld h, b                                       ; $4589: $60
    ld c, [hl]                                    ; $458a: $4e
    ld h, b                                       ; $458b: $60
    ld b, b                                       ; $458c: $40
    ld h, h                                       ; $458d: $64
    cp a                                          ; $458e: $bf
    ld e, [hl]                                    ; $458f: $5e
    ldh [$83], a                                  ; $4590: $e0 $83
    dec b                                         ; $4592: $05
    ret z                                         ; $4593: $c8

    ret nz                                        ; $4594: $c0

    ld a, [$e03e]                                 ; $4595: $fa $3e $e0
    db $fc                                        ; $4598: $fc
    inc h                                         ; $4599: $24
    ld h, c                                       ; $459a: $61
    inc bc                                        ; $459b: $03
    ld a, a                                       ; $459c: $7f
    ld bc, HeaderManufacturerCode                 ; $459d: $01 $3f $01
    inc a                                         ; $45a0: $3c
    and b                                         ; $45a1: $a0
    add sp, -$28                                  ; $45a2: $e8 $d8
    ld h, a                                       ; $45a4: $67
    ccf                                           ; $45a5: $3f
    cp $1f                                        ; $45a6: $fe $1f
    xor $b0                                       ; $45a8: $ee $b0
    add d                                         ; $45aa: $82
    rrca                                          ; $45ab: $0f
    ld hl, $fc9f                                  ; $45ac: $21 $9f $fc
    db $fc                                        ; $45af: $fc
    db $fc                                        ; $45b0: $fc
    ret nz                                        ; $45b1: $c0

    ld a, b                                       ; $45b2: $78
    cp $e0                                        ; $45b3: $fe $e0
    or d                                          ; $45b5: $b2
    ld h, l                                       ; $45b6: $65
    ld a, h                                       ; $45b7: $7c
    ld l, e                                       ; $45b8: $6b

jr_077_45b9:
    ld a, a                                       ; $45b9: $7f
    jr nc, jr_077_4626                            ; $45ba: $30 $6a

    pop bc                                        ; $45bc: $c1
    ld a, [hl]                                    ; $45bd: $7e
    db $ec                                        ; $45be: $ec
    ld b, b                                       ; $45bf: $40
    or b                                          ; $45c0: $b0
    rst $18                                       ; $45c1: $df
    ld [bc], a                                    ; $45c2: $02
    ld b, b                                       ; $45c3: $40
    rla                                           ; $45c4: $17
    inc e                                         ; $45c5: $1c
    ldh a, [$30]                                  ; $45c6: $f0 $30

Call_077_45c8:
    xor d                                         ; $45c8: $aa
    add b                                         ; $45c9: $80

jr_077_45ca:
    nop                                           ; $45ca: $00
    ld e, b                                       ; $45cb: $58
    jr nz, jr_077_461e                            ; $45cc: $20 $50

    xor c                                         ; $45ce: $a9
    ld c, b                                       ; $45cf: $48
    nop                                           ; $45d0: $00
    inc d                                         ; $45d1: $14
    sub b                                         ; $45d2: $90
    inc b                                         ; $45d3: $04
    jr c, @-$59                                   ; $45d4: $38 $a5

jr_077_45d6:
    ret nz                                        ; $45d6: $c0

    add b                                         ; $45d7: $80
    jr nz, jr_077_45d6                            ; $45d8: $20 $fc

    ld a, h                                       ; $45da: $7c
    ld [$4550], sp                                ; $45db: $08 $50 $45
    add sp, -$1b                                  ; $45de: $e8 $e5
    rst $18                                       ; $45e0: $df
    ldh a, [$1f]                                  ; $45e1: $f0 $1f
    ld a, h                                       ; $45e3: $7c
    rrca                                          ; $45e4: $0f
    jr c, jr_077_4613                             ; $45e5: $38 $2c

    jr nz, jr_077_45b9                            ; $45e7: $20 $d0

    rra                                           ; $45e9: $1f
    rst $38                                       ; $45ea: $ff
    pop hl                                        ; $45eb: $e1
    ccf                                           ; $45ec: $3f
    add $7e                                       ; $45ed: $c6 $7e
    rst $38                                       ; $45ef: $ff
    rst $38                                       ; $45f0: $ff
    ld [hl], b                                    ; $45f1: $70
    ret nz                                        ; $45f2: $c0

    rst $38                                       ; $45f3: $ff
    pop af                                        ; $45f4: $f1
    add b                                         ; $45f5: $80
    db $e3                                        ; $45f6: $e3
    add b                                         ; $45f7: $80
    rst $20                                       ; $45f8: $e7
    add b                                         ; $45f9: $80
    call z, $1d80                                 ; $45fa: $cc $80 $1d
    ret nc                                        ; $45fd: $d0

    ld d, d                                       ; $45fe: $52
    ld hl, $fcff                                  ; $45ff: $21 $ff $fc
    jr c, @-$06                                   ; $4602: $38 $f8

    ld h, c                                       ; $4604: $61
    ldh a, [$87]                                  ; $4605: $f0 $87
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460a: $00
    nop                                           ; $460b: $00
    nop                                           ; $460c: $00
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    nop                                           ; $460f: $00
    ld e, a                                       ; $4610: $5f
    rst $38                                       ; $4611: $ff
    rst $38                                       ; $4612: $ff

jr_077_4613:
    rst $38                                       ; $4613: $ff
    nop                                           ; $4614: $00
    cp $fe                                        ; $4615: $fe $fe
    ldh [$fc], a                                  ; $4617: $e0 $fc
    cp $e0                                        ; $4619: $fe $e0
    xor a                                         ; $461b: $af
    ld hl, sp+$00                                 ; $461c: $f8 $00

jr_077_461e:
    add d                                         ; $461e: $82
    nop                                           ; $461f: $00
    ldh a, [$e1]                                  ; $4620: $f0 $e1
    ld a, a                                       ; $4622: $7f
    cp $e0                                        ; $4623: $fe $e0
    ccf                                           ; $4625: $3f

jr_077_4626:
    sbc $fe                                       ; $4626: $de $fe
    ldh [$1f], a                                  ; $4628: $e0 $1f
    nop                                           ; $462a: $00
    ld b, a                                       ; $462b: $47
    rlca                                          ; $462c: $07
    ldh [$e0], a                                  ; $462d: $e0 $e0
    rrca                                          ; $462f: $0f
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    dec d                                         ; $4632: $15
    rst $38                                       ; $4633: $ff
    ld a, [hl+]                                   ; $4634: $2a
    rst $38                                       ; $4635: $ff
    dec hl                                        ; $4636: $2b
    rst $38                                       ; $4637: $ff
    rra                                           ; $4638: $1f
    rst $38                                       ; $4639: $ff
    rst $30                                       ; $463a: $f7
    inc h                                         ; $463b: $24
    cp a                                          ; $463c: $bf
    ld [hl], $d0                                  ; $463d: $36 $d0
    ldh [$c0], a                                  ; $463f: $e0 $c0
    rst $38                                       ; $4641: $ff
    jr nz, @+$01                                  ; $4642: $20 $ff

    rst $38                                       ; $4644: $ff
    ret nc                                        ; $4645: $d0

    rst $38                                       ; $4646: $ff
    jr z, @+$01                                   ; $4647: $28 $ff

    jr @+$01                                      ; $4649: $18 $ff

    rst $08                                       ; $464b: $cf
    ei                                            ; $464c: $fb
    db $fd                                        ; $464d: $fd
    inc e                                         ; $464e: $1c
    ret nz                                        ; $464f: $c0

    ldh [rSB], a                                  ; $4650: $e0 $01
    rst $38                                       ; $4652: $ff
    ld [bc], a                                    ; $4653: $02
    rst $38                                       ; $4654: $ff
    dec b                                         ; $4655: $05
    rst $38                                       ; $4656: $ff
    ld a, a                                       ; $4657: $7f
    ld a, [bc]                                    ; $4658: $0a
    rst $38                                       ; $4659: $ff
    inc c                                         ; $465a: $0c
    rst $38                                       ; $465b: $ff
    jp hl                                         ; $465c: $e9


    ld e, a                                       ; $465d: $5f
    cp b                                          ; $465e: $b8
    or b                                          ; $465f: $b0
    ldh [rIE], a                                  ; $4660: $e0 $ff
    ld hl, sp-$01                                 ; $4662: $f8 $ff
    ld d, h                                       ; $4664: $54
    rst $38                                       ; $4665: $ff
    xor d                                         ; $4666: $aa
    rst $38                                       ; $4667: $ff
    ld l, d                                       ; $4668: $6a
    rst $38                                       ; $4669: $ff
    rst $38                                       ; $466a: $ff
    ld a, h                                       ; $466b: $7c
    rst $38                                       ; $466c: $ff
    sub d                                         ; $466d: $92
    rst $38                                       ; $466e: $ff
    ld [hl], $c2                                  ; $466f: $36 $c2
    nop                                           ; $4671: $00
    ld [c], a                                     ; $4672: $e2
    ei                                            ; $4673: $fb
    nop                                           ; $4674: $00
    ldh a, [$fe]                                  ; $4675: $f0 $fe
    ldh [$e0], a                                  ; $4677: $e0 $e0
    nop                                           ; $4679: $00
    pop hl                                        ; $467a: $e1
    nop                                           ; $467b: $00
    rst $00                                       ; $467c: $c7
    rst $30                                       ; $467d: $f7
    nop                                           ; $467e: $00
    rst $08                                       ; $467f: $cf
    nop                                           ; $4680: $00
    ldh a, [$e8]                                  ; $4681: $f0 $e8
    ld bc, $03c6                                  ; $4683: $01 $c6 $03
    adc $ff                                       ; $4686: $ce $ff
    inc bc                                        ; $4688: $03
    ld e, e                                       ; $4689: $5b
    inc e                                         ; $468a: $1c
    ld l, a                                       ; $468b: $6f
    ld sp, $754f                                  ; $468c: $31 $4f $75
    ld c, a                                       ; $468f: $4f
    rst $28                                       ; $4690: $ef
    ld [hl], a                                    ; $4691: $77
    sub a                                         ; $4692: $97
    ld a, [$a91f]                                 ; $4693: $fa $1f $a9
    ldh [$5c], a                                  ; $4696: $e0 $5c
    rst $38                                       ; $4698: $ff
    ld e, d                                       ; $4699: $5a
    rst $38                                       ; $469a: $ff
    cp b                                          ; $469b: $b8
    and $5c                                       ; $469c: $e6 $5c
    ld [c], a                                     ; $469e: $e2
    ld e, [hl]                                    ; $469f: $5e
    pop hl                                        ; $46a0: $e1
    rst $18                                       ; $46a1: $df
    pop de                                        ; $46a2: $d1
    rst $38                                       ; $46a3: $ff
    cp a                                          ; $46a4: $bf
    ld hl, sp-$01                                 ; $46a5: $f8 $ff
    inc b                                         ; $46a7: $04
    rst $38                                       ; $46a8: $ff
    ld a, $ff                                     ; $46a9: $3e $ff
    ld b, e                                       ; $46ab: $43
    rst $28                                       ; $46ac: $ef
    nop                                           ; $46ad: $00
    ld b, a                                       ; $46ae: $47
    nop                                           ; $46af: $00
    rrca                                          ; $46b0: $0f
    cp $e0                                        ; $46b1: $fe $e0
    rlca                                          ; $46b3: $07
    nop                                           ; $46b4: $00
    rst $00                                       ; $46b5: $c7
    rst $38                                       ; $46b6: $ff
    ret nz                                        ; $46b7: $c0

    inc hl                                        ; $46b8: $23
    ldh [$33], a                                  ; $46b9: $e0 $33
    ldh [rIE], a                                  ; $46bb: $e0 $ff
    ld b, c                                       ; $46bd: $41
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    ld e, h                                       ; $46c0: $5c
    db $e3                                        ; $46c1: $e3
    ld a, $e1                                     ; $46c2: $3e $e1
    ccf                                           ; $46c4: $3f
    pop hl                                        ; $46c5: $e1
    ccf                                           ; $46c6: $3f
    jp nz, Jump_077_7fff                          ; $46c7: $c2 $ff $7f

    jp nz, $ca7f                                  ; $46ca: $c2 $7f $ca

    ld a, a                                       ; $46cd: $7f
    rst $28                                       ; $46ce: $ef
    ld sp, $fbcf                                  ; $46cf: $31 $cf $fb
    push af                                       ; $46d2: $f5
    rst $08                                       ; $46d3: $cf
    jp nz, Jump_077_5ee4                          ; $46d4: $c2 $e4 $5e

    rst $38                                       ; $46d7: $ff
    cp a                                          ; $46d8: $bf
    rst $38                                       ; $46d9: $ff
    rst $20                                       ; $46da: $e7
    di                                            ; $46db: $f3
    ld e, h                                       ; $46dc: $5c
    db $e3                                        ; $46dd: $e3
    jp nz, $22e8                                  ; $46de: $c2 $e8 $22

    ldh [rSTAT], a                                ; $46e1: $e0 $41
    rst $38                                       ; $46e3: $ff
    sbc l                                         ; $46e4: $9d
    db $e3                                        ; $46e5: $e3
    rst $38                                       ; $46e6: $ff
    ccf                                           ; $46e7: $3f
    jp $c37e                                      ; $46e8: $c3 $7e $c3


    cp $21                                        ; $46eb: $fe $21
    rst $38                                       ; $46ed: $ff
    ld hl, $ff93                                  ; $46ee: $21 $93 $ff
    add hl, hl                                    ; $46f1: $29
    ld [de], a                                    ; $46f2: $12
    ldh [rNR41], a                                ; $46f3: $e0 $20
    jp hl                                         ; $46f5: $e9


    ld b, c                                       ; $46f6: $41
    ld a, [c]                                     ; $46f7: $f2
    ldh [rP1], a                                  ; $46f8: $e0 $00
    db $e3                                        ; $46fa: $e3
    rst $38                                       ; $46fb: $ff
    rst $10                                       ; $46fc: $d7
    rlca                                          ; $46fd: $07
    ei                                            ; $46fe: $fb
    inc e                                         ; $46ff: $1c
    or h                                          ; $4700: $b4
    ldh [$75], a                                  ; $4701: $e0 $75
    ldh [$e5], a                                  ; $4703: $e0 $e5
    rst $38                                       ; $4705: $ff
    ldh [$fb], a                                  ; $4706: $e0 $fb
    ld e, a                                       ; $4708: $5f
    cp b                                          ; $4709: $b8
    or h                                          ; $470a: $b4
    pop hl                                        ; $470b: $e1
    cp $0b                                        ; $470c: $fe $0b
    rst $38                                       ; $470e: $ff
    rla                                           ; $470f: $17
    ld a, [hl]                                    ; $4710: $7e
    rst $38                                       ; $4711: $ff
    inc de                                        ; $4712: $13
    ld a, a                                       ; $4713: $7f
    dec d                                         ; $4714: $15
    ccf                                           ; $4715: $3f
    inc de                                        ; $4716: $13
    ccf                                           ; $4717: $3f
    dec bc                                        ; $4718: $0b
    rra                                           ; $4719: $1f
    rst $38                                       ; $471a: $ff
    dec e                                         ; $471b: $1d
    ld l, a                                       ; $471c: $6f
    add hl, sp                                    ; $471d: $39
    cp a                                          ; $471e: $bf
    rst $38                                       ; $471f: $ff
    cp a                                          ; $4720: $bf
    ld a, [c]                                     ; $4721: $f2
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    db $fd                                        ; $4724: $fd
    ld a, a                                       ; $4725: $7f
    db $d3                                        ; $4726: $d3
    ld a, a                                       ; $4727: $7f
    pop de                                        ; $4728: $d1
    cp $cf                                        ; $4729: $fe $cf
    ldh a, [$f7]                                  ; $472b: $f0 $f7
    rst $38                                       ; $472d: $ff
    ld hl, sp+$3f                                 ; $472e: $f8 $3f
    ret nz                                        ; $4730: $c0

    ret nz                                        ; $4731: $c0

    daa                                           ; $4732: $27
    rst $38                                       ; $4733: $ff
    ld e, l                                       ; $4734: $5d
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    push hl                                       ; $4737: $e5
    ld a, a                                       ; $4738: $7f
    push bc                                       ; $4739: $c5
    cp a                                          ; $473a: $bf
    ld a, c                                       ; $473b: $79
    add a                                         ; $473c: $87
    ld a, a                                       ; $473d: $7f
    rrca                                          ; $473e: $0f
    rst $38                                       ; $473f: $ff
    cp $3f                                        ; $4740: $fe $3f
    add sp, -$01                                  ; $4742: $e8 $ff
    db $f4                                        ; $4744: $f4
    cp [hl]                                       ; $4745: $be
    db $e4                                        ; $4746: $e4
    ld a, [hl]                                    ; $4747: $7e
    rst $38                                       ; $4748: $ff
    call nc, $e47c                                ; $4749: $d4 $7c $e4
    db $fc                                        ; $474c: $fc
    add sp, -$04                                  ; $474d: $e8 $fc
    call c, $fffa                                 ; $474f: $dc $fa $ff
    ld c, [hl]                                    ; $4752: $4e
    rst $18                                       ; $4753: $df
    ld [hl], a                                    ; $4754: $77
    sbc $73                                       ; $4755: $de $73
    ld e, a                                       ; $4757: $5f
    ld [hl], l                                    ; $4758: $75
    ld e, [hl]                                    ; $4759: $5e
    rst $38                                       ; $475a: $ff
    ld [hl], e                                    ; $475b: $73
    ld c, a                                       ; $475c: $4f
    ld a, e                                       ; $475d: $7b
    ld c, a                                       ; $475e: $4f
    ld a, l                                       ; $475f: $7d
    ld c, a                                       ; $4760: $4f
    ld a, c                                       ; $4761: $79
    ld l, a                                       ; $4762: $6f
    push de                                       ; $4763: $d5
    ld a, [hl-]                                   ; $4764: $3a
    jp nz, $dde0                                  ; $4765: $c2 $e0 $dd

    jp nz, $f1e0                                  ; $4768: $c2 $e0 $f1

    jp nz, Jump_077_7fe2                          ; $476b: $c2 $e2 $7f

    cp $f5                                        ; $476e: $fe $f5
    ld e, a                                       ; $4770: $5f
    jp nz, $c7e4                                  ; $4771: $c2 $e4 $c7

    jp nz, $ffe2                                  ; $4774: $c2 $e2 $ff

    ccf                                           ; $4777: $3f
    db $fd                                        ; $4778: $fd
    db $fd                                        ; $4779: $fd
    rst $38                                       ; $477a: $ff
    rst $30                                       ; $477b: $f7
    cp l                                          ; $477c: $bd
    rst $20                                       ; $477d: $e7
    ld a, l                                       ; $477e: $7d
    rst $10                                       ; $477f: $d7
    dec a                                         ; $4780: $3d
    rst $20                                       ; $4781: $e7
    ld sp, hl                                     ; $4782: $f9
    ld a, a                                       ; $4783: $7f
    rst $28                                       ; $4784: $ef
    ld sp, hl                                     ; $4785: $f9
    rst $18                                       ; $4786: $df
    ld sp, hl                                     ; $4787: $f9
    ld c, a                                       ; $4788: $4f
    ld a, [$602e]                                 ; $4789: $fa $2e $60
    push hl                                       ; $478c: $e5
    or $60                                        ; $478d: $f6 $60
    jp Jump_000_0787                              ; $478f: $c3 $87 $07


    ldh a, [$c2]                                  ; $4792: $f0 $c2
    ld bc, $030e                                  ; $4794: $01 $0e $03
    ld b, $db                                     ; $4797: $06 $db
    inc bc                                        ; $4799: $03

jr_077_479a:
    adc [hl]                                      ; $479a: $8e
    ld h, [hl]                                    ; $479b: $66
    ldh [$fe], a                                  ; $479c: $e0 $fe
    inc de                                        ; $479e: $13
    inc b                                         ; $479f: $04
    db $e3                                        ; $47a0: $e3
    jr nc, @+$01                                  ; $47a1: $30 $ff

    rst $38                                       ; $47a3: $ff
    ld b, b                                       ; $47a4: $40
    rst $38                                       ; $47a5: $ff
    sbc a                                         ; $47a6: $9f
    rst $38                                       ; $47a7: $ff
    cp a                                          ; $47a8: $bf
    cp $ff                                        ; $47a9: $fe $ff
    di                                            ; $47ab: $f3
    xor $04                                       ; $47ac: $ee $04
    ld [$ff6b], a                                 ; $47ae: $ea $6b $ff
    ld b, l                                       ; $47b1: $45
    add b                                         ; $47b2: $80
    jp nz, $30c0                                  ; $47b3: $c2 $c0 $30

    ldh [$f7], a                                  ; $47b6: $e0 $f7
    jr nz, jr_077_479a                            ; $47b8: $20 $e0

    add hl, hl                                    ; $47ba: $29
    ld h, [hl]                                    ; $47bb: $66
    ldh [$bf], a                                  ; $47bc: $e0 $bf
    db $e4                                        ; $47be: $e4
    ld c, a                                       ; $47bf: $4f
    ld a, d                                       ; $47c0: $7a
    rst $38                                       ; $47c1: $ff
    ld b, a                                       ; $47c2: $47
    ld a, [hl]                                    ; $47c3: $7e
    ld c, a                                       ; $47c4: $4f
    ld a, [hl]                                    ; $47c5: $7e
    ld hl, $413f                                  ; $47c6: $21 $3f $41
    ld a, a                                       ; $47c9: $7f
    cp a                                          ; $47ca: $bf
    rst $08                                       ; $47cb: $cf
    ld a, a                                       ; $47cc: $7f
    rst $38                                       ; $47cd: $ff
    ld [hl], b                                    ; $47ce: $70
    rst $38                                       ; $47cf: $ff
    ld b, b                                       ; $47d0: $40
    ld a, [hl]                                    ; $47d1: $7e
    ldh [rPCM34], a                               ; $47d2: $e0 $77
    cp $89                                        ; $47d4: $fe $89
    ret nz                                        ; $47d6: $c0

    ld d, a                                       ; $47d7: $57
    rst $38                                       ; $47d8: $ff
    inc [hl]                                      ; $47d9: $34
    rst $38                                       ; $47da: $ff
    adc $ff                                       ; $47db: $ce $ff
    ld h, c                                       ; $47dd: $61
    rst $38                                       ; $47de: $ff
    rst $38                                       ; $47df: $ff
    ldh a, [$3f]                                  ; $47e0: $f0 $3f
    db $fd                                        ; $47e2: $fd
    rst $38                                       ; $47e3: $ff
    rst $30                                       ; $47e4: $f7
    rst $38                                       ; $47e5: $ff
    sbc l                                         ; $47e6: $9d
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    push af                                       ; $47e9: $f5
    rst $38                                       ; $47ea: $ff
    sub a                                         ; $47eb: $97
    rst $38                                       ; $47ec: $ff
    add hl, sp                                    ; $47ed: $39
    rst $38                                       ; $47ee: $ff
    jp $ffff                                      ; $47ef: $c3 $ff $ff


    rlca                                          ; $47f2: $07
    ld sp, hl                                     ; $47f3: $f9
    cpl                                           ; $47f4: $2f
    pop af                                        ; $47f5: $f1
    ccf                                           ; $47f6: $3f
    ld sp, hl                                     ; $47f7: $f9
    ld a, a                                       ; $47f8: $7f
    rst $38                                       ; $47f9: $ff
    add d                                         ; $47fa: $82
    cp $01                                        ; $47fb: $fe $01
    rst $38                                       ; $47fd: $ff
    ld sp, hl                                     ; $47fe: $f9
    rst $38                                       ; $47ff: $ff
    rst $38                                       ; $4800: $ff
    rlca                                          ; $4801: $07
    rst $38                                       ; $4802: $ff
    rst $38                                       ; $4803: $ff
    add c                                         ; $4804: $81
    ld h, a                                       ; $4805: $67
    ld a, $63                                     ; $4806: $3e $63
    ld a, $21                                     ; $4808: $3e $21
    ccf                                           ; $480a: $3f
    rst $38                                       ; $480b: $ff
    dec d                                         ; $480c: $15
    rra                                           ; $480d: $1f
    ld [$900f], sp                                ; $480e: $08 $0f $90
    rra                                           ; $4811: $1f
    ldh a, [$1f]                                  ; $4812: $f0 $1f
    cp a                                          ; $4814: $bf
    pop af                                        ; $4815: $f1
    ccf                                           ; $4816: $3f
    rst $38                                       ; $4817: $ff
    ld e, a                                       ; $4818: $5f
    rst $38                                       ; $4819: $ff
    ld [hl], h                                    ; $481a: $74
    ld c, c                                       ; $481b: $49
    ret nz                                        ; $481c: $c0

    scf                                           ; $481d: $37
    ei                                            ; $481e: $fb
    rst $38                                       ; $481f: $ff
    sub h                                         ; $4820: $94
    ret nz                                        ; $4821: $c0

    ldh [$f1], a                                  ; $4822: $e0 $f1
    rst $38                                       ; $4824: $ff
    ldh a, [rIE]                                  ; $4825: $f0 $ff
    db $fd                                        ; $4827: $fd
    xor $c6                                       ; $4828: $ee $c6
    ldh [$9d], a                                  ; $482a: $e0 $9d
    rst $38                                       ; $482c: $ff
    or $f0                                        ; $482d: $f6 $f0
    ldh [$39], a                                  ; $482f: $e0 $39
    rst $38                                       ; $4831: $ff
    rst $00                                       ; $4832: $c7
    ld a, a                                       ; $4833: $7f
    rst $38                                       ; $4834: $ff
    rlca                                          ; $4835: $07
    ld a, [c]                                     ; $4836: $f2
    ld a, $e2                                     ; $4837: $3e $e2
    ld a, $c2                                     ; $4839: $3e $c2
    pop af                                        ; $483b: $f1
    ret nz                                        ; $483c: $c0

    rst $38                                       ; $483d: $ff
    adc b                                         ; $483e: $88
    ld hl, sp-$7b                                 ; $483f: $f8 $85
    db $fc                                        ; $4841: $fc
    add a                                         ; $4842: $87
    db $fc                                        ; $4843: $fc
    rst $00                                       ; $4844: $c7
    cp $fe                                        ; $4845: $fe $fe
    jr nc, @-$37                                  ; $4847: $30 $c7

    add a                                         ; $4849: $87
    ld bc, $03e2                                  ; $484a: $01 $e2 $03
    ld a, [c]                                     ; $484d: $f2
    inc bc                                        ; $484e: $03
    db $db                                        ; $484f: $db
    inc e                                         ; $4850: $1c
    adc d                                         ; $4851: $8a
    jp nz, $c53e                                  ; $4852: $c2 $3e $c5

    ld c, [hl]                                    ; $4855: $4e
    rst $38                                       ; $4856: $ff
    ld e, e                                       ; $4857: $5b
    adc d                                         ; $4858: $8a
    jp nz, $c700                                  ; $4859: $c2 $00 $c7

    ret nz                                        ; $485c: $c0

    xor b                                         ; $485d: $a8
    rst $18                                       ; $485e: $df
    ret nz                                        ; $485f: $c0

    daa                                           ; $4860: $27
    ldh [$2f], a                                  ; $4861: $e0 $2f
    ldh [$74], a                                  ; $4863: $e0 $74
    and b                                         ; $4865: $a0
    inc de                                        ; $4866: $13
    rst $38                                       ; $4867: $ff
    rst $38                                       ; $4868: $ff
    dec bc                                        ; $4869: $0b
    rst $38                                       ; $486a: $ff
    dec c                                         ; $486b: $0d
    rst $38                                       ; $486c: $ff
    add hl, bc                                    ; $486d: $09
    rst $38                                       ; $486e: $ff
    ld a, [bc]                                    ; $486f: $0a
    rst $30                                       ; $4870: $f7
    rst $38                                       ; $4871: $ff
    ld e, $a3                                     ; $4872: $1e $a3
    ld a, $7f                                     ; $4874: $3e $7f
    push de                                       ; $4876: $d5
    ld a, a                                       ; $4877: $7f
    rst $18                                       ; $4878: $df
    ld a, [$763c]                                 ; $4879: $fa $3c $76
    jp nz, $e436                                  ; $487c: $c2 $36 $e4

    push de                                       ; $487f: $d5
    ld a, a                                       ; $4880: $7f
    push af                                       ; $4881: $f5
    xor a                                         ; $4882: $af
    halt                                          ; $4883: $76
    jp $e236                                      ; $4884: $c3 $36 $e2


    rst $38                                       ; $4887: $ff
    ld a, a                                       ; $4888: $7f
    call nc, $e47f                                ; $4889: $d4 $7f $e4
    rst $38                                       ; $488c: $ff

jr_077_488d:
    add sp, -$01                                  ; $488d: $e8 $ff
    ret c                                         ; $488f: $d8

    rst $38                                       ; $4890: $ff
    rst $38                                       ; $4891: $ff
    ld c, b                                       ; $4892: $48
    rst $38                                       ; $4893: $ff
    jr z, jr_077_488d                             ; $4894: $28 $f7

    inc a                                         ; $4896: $3c
    db $e3                                        ; $4897: $e3
    ld a, $af                                     ; $4898: $3e $af
    rst $38                                       ; $489a: $ff
    ld h, $ff                                     ; $489b: $26 $ff
    ld c, a                                       ; $489d: $4f
    db $f4                                        ; $489e: $f4
    ldh [rLCDC], a                                ; $489f: $e0 $40
    ld e, h                                       ; $48a1: $5c
    and b                                         ; $48a2: $a0
    ld d, h                                       ; $48a3: $54
    rst $28                                       ; $48a4: $ef
    rst $38                                       ; $48a5: $ff
    ld [hl-], a                                   ; $48a6: $32
    cp a                                          ; $48a7: $bf
    ccf                                           ; $48a8: $3f
    ld a, [hl-]                                   ; $48a9: $3a
    and b                                         ; $48aa: $a0
    cpl                                           ; $48ab: $2f
    db $fc                                        ; $48ac: $fc
    daa                                           ; $48ad: $27
    xor a                                         ; $48ae: $af
    db $fc                                        ; $48af: $fc
    sub a                                         ; $48b0: $97
    ld hl, sp-$71                                 ; $48b1: $f8 $8f
    add sp, -$20                                  ; $48b3: $e8 $e0
    ld a, a                                       ; $48b5: $7f
    ld a, [c]                                     ; $48b6: $f2
    add b                                         ; $48b7: $80
    adc h                                         ; $48b8: $8c
    rst $38                                       ; $48b9: $ff
    rst $38                                       ; $48ba: $ff
    ld a, [$f21f]                                 ; $48bb: $fa $1f $f2
    rra                                           ; $48be: $1f
    db $f4                                        ; $48bf: $f4
    rrca                                          ; $48c0: $0f
    ld hl, sp-$24                                 ; $48c1: $f8 $dc
    rrca                                          ; $48c3: $0f
    pop hl                                        ; $48c4: $e1
    ld [c], a                                     ; $48c5: $e2
    add b                                         ; $48c6: $80
    ld [hl-], a                                   ; $48c7: $32
    rst $38                                       ; $48c8: $ff
    ld a, c                                       ; $48c9: $79
    sub h                                         ; $48ca: $94
    ldh [$81], a                                  ; $48cb: $e0 $81
    rst $38                                       ; $48cd: $ff
    db $fd                                        ; $48ce: $fd
    sub l                                         ; $48cf: $95
    ld a, [$2780]                                 ; $48d0: $fa $80 $27
    rst $38                                       ; $48d3: $ff
    cp $f9                                        ; $48d4: $fe $f9
    ccf                                           ; $48d6: $3f
    rst $38                                       ; $48d7: $ff
    cp $fe                                        ; $48d8: $fe $fe
    push hl                                       ; $48da: $e5
    rra                                           ; $48db: $1f
    rst $38                                       ; $48dc: $ff
    rra                                           ; $48dd: $1f
    adc a                                         ; $48de: $8f
    rrca                                          ; $48df: $0f
    rst $28                                       ; $48e0: $ef
    ld hl, sp-$19                                 ; $48e1: $f8 $e7
    rst $20                                       ; $48e3: $e7
    ccf                                           ; $48e4: $3f
    ldh a, [$fa]                                  ; $48e5: $f0 $fa
    and c                                         ; $48e7: $a1
    db $fd                                        ; $48e8: $fd
    db $e4                                        ; $48e9: $e4
    ei                                            ; $48ea: $fb
    adc a                                         ; $48eb: $8f
    di                                            ; $48ec: $f3
    rst $30                                       ; $48ed: $f7
    cp $07                                        ; $48ee: $fe $07
    cp $f0                                        ; $48f0: $fe $f0
    rst $20                                       ; $48f2: $e7
    rst $08                                       ; $48f3: $cf
    cp $ff                                        ; $48f4: $fe $ff
    ld a, [hl]                                    ; $48f6: $7e
    ld a, [$e0fe]                                 ; $48f7: $fa $fe $e0
    cp $fe                                        ; $48fa: $fe $fe
    ldh [$fc], a                                  ; $48fc: $e0 $fc
    rst $38                                       ; $48fe: $ff
    db $fc                                        ; $48ff: $fc
    ld sp, hl                                     ; $4900: $f9
    ld hl, sp+$76                                 ; $4901: $f8 $76
    or b                                          ; $4903: $b0
    and c                                         ; $4904: $a1
    cp $13                                        ; $4905: $fe $13
    ld a, [hl-]                                   ; $4907: $3a
    db $e4                                        ; $4908: $e4
    dec e                                         ; $4909: $1d
    xor a                                         ; $490a: $af
    add hl, sp                                    ; $490b: $39
    ld c, d                                       ; $490c: $4a
    ret nz                                        ; $490d: $c0

    ld h, b                                       ; $490e: $60
    or b                                          ; $490f: $b0
    and e                                         ; $4910: $a3
    xor $a3                                       ; $4911: $ee $a3
    or b                                          ; $4913: $b0
    and a                                         ; $4914: $a7
    xor $a3                                       ; $4915: $ee $a3
    or b                                          ; $4917: $b0
    and d                                         ; $4918: $a2
    cp a                                          ; $4919: $bf
    db $e4                                        ; $491a: $e4
    ld a, [hl-]                                   ; $491b: $3a
    db $e4                                        ; $491c: $e4
    rst $38                                       ; $491d: $ff
    call c, $4efb                                 ; $491e: $dc $fb $4e
    rst $20                                       ; $4921: $e7
    ccf                                           ; $4922: $3f
    jp hl                                         ; $4923: $e9


    ccf                                           ; $4924: $3f
    ret nz                                        ; $4925: $c0

    rst $38                                       ; $4926: $ff
    ld a, a                                       ; $4927: $7f
    pop bc                                        ; $4928: $c1
    ld a, a                                       ; $4929: $7f
    jp $cf7f                                      ; $492a: $c3 $7f $cf


    ld a, h                                       ; $492d: $7c
    rst $18                                       ; $492e: $df
    rst $30                                       ; $492f: $f7
    ld [hl], c                                    ; $4930: $71
    rst $38                                       ; $4931: $ff
    ld h, d                                       ; $4932: $62
    ld b, [hl]                                    ; $4933: $46
    jp nz, Jump_077_7f8e                          ; $4934: $c2 $8e $7f

    pop hl                                        ; $4937: $e1
    rst $38                                       ; $4938: $ff
    ld a, a                                       ; $4939: $7f
    ldh a, [$ef]                                  ; $493a: $f0 $ef
    ld a, b                                       ; $493c: $78
    rst $20                                       ; $493d: $e7
    rst $38                                       ; $493e: $ff
    ldh a, [$1f]                                  ; $493f: $f0 $1f
    ld b, [hl]                                    ; $4941: $46
    ret nz                                        ; $4942: $c0

    rst $20                                       ; $4943: $e7
    sub [hl]                                      ; $4944: $96
    rst $38                                       ; $4945: $ff
    jr c, jr_077_498e                             ; $4946: $38 $46

    pop bc                                        ; $4948: $c1
    halt                                          ; $4949: $76
    ldh [rIE], a                                  ; $494a: $e0 $ff
    rlca                                          ; $494c: $07
    db $fc                                        ; $494d: $fc
    rst $18                                       ; $494e: $df
    di                                            ; $494f: $f3
    ld a, [hl]                                    ; $4950: $7e
    bit 7, [hl]                                   ; $4951: $cb $7e
    add c                                         ; $4953: $81
    res 0, b                                      ; $4954: $cb $80
    pop hl                                        ; $4956: $e1
    rst $38                                       ; $4957: $ff
    ld a, a                                       ; $4958: $7f
    ld sp, hl                                     ; $4959: $f9
    rra                                           ; $495a: $1f
    db $fd                                        ; $495b: $fd
    rst $00                                       ; $495c: $c7
    rst $38                                       ; $495d: $ff
    inc hl                                        ; $495e: $23
    rst $18                                       ; $495f: $df
    ld c, d                                       ; $4960: $4a
    ldh [$3f], a                                  ; $4961: $e0 $3f
    rst $38                                       ; $4963: $ff
    rrca                                          ; $4964: $0f
    rst $30                                       ; $4965: $f7
    rlca                                          ; $4966: $07
    db $e3                                        ; $4967: $e3
    inc bc                                        ; $4968: $03
    ld [hl], b                                    ; $4969: $70
    add e                                         ; $496a: $83
    ld b, [hl]                                    ; $496b: $46
    rst $20                                       ; $496c: $e7
    ld l, [hl]                                    ; $496d: $6e
    or $60                                        ; $496e: $f6 $60
    ccf                                           ; $4970: $3f
    cp $1f                                        ; $4971: $fe $1f
    ldh a, [$ea]                                  ; $4973: $f0 $ea
    ld a, [hl]                                    ; $4975: $7e
    cp a                                          ; $4976: $bf
    ld c, h                                       ; $4977: $4c
    ldh [$fe], a                                  ; $4978: $e0 $fe
    ld c, b                                       ; $497a: $48
    ldh [$f8], a                                  ; $497b: $e0 $f8
    rst $38                                       ; $497d: $ff
    ldh a, [$e7]                                  ; $497e: $f0 $e7
    ldh [$87], a                                  ; $4980: $e0 $87
    add b                                         ; $4982: $80
    rst $38                                       ; $4983: $ff
    db $e3                                        ; $4984: $e3
    nop                                           ; $4985: $00
    di                                            ; $4986: $f3
    nop                                           ; $4987: $00
    rst $08                                       ; $4988: $cf
    rrca                                          ; $4989: $0f
    rst $20                                       ; $498a: $e7
    rlca                                          ; $498b: $07
    rst $38                                       ; $498c: $ff
    di                                            ; $498d: $f3

jr_077_498e:
    inc bc                                        ; $498e: $03
    pop af                                        ; $498f: $f1
    ld bc, $01e1                                  ; $4990: $01 $e1 $01
    db $e3                                        ; $4993: $e3
    inc bc                                        ; $4994: $03
    rst $20                                       ; $4995: $e7
    call nz, $cc07                                ; $4996: $c4 $07 $cc
    ldh [$61], a                                  ; $4999: $e0 $61
    reti                                          ; $499b: $d9


    jp nz, $f0f7                                  ; $499c: $c2 $f7 $f0

    rst $28                                       ; $499f: $ef
    rst $18                                       ; $49a0: $df
    ld hl, sp+$4b                                 ; $49a1: $f8 $4b
    ld hl, sp+$13                                 ; $49a3: $f8 $13
    ldh a, [$f6]                                  ; $49a5: $f0 $f6
    push bc                                       ; $49a7: $c5
    rst $20                                       ; $49a8: $e7
    rlca                                          ; $49a9: $07
    rst $38                                       ; $49aa: $ff
    db $eb                                        ; $49ab: $eb
    rrca                                          ; $49ac: $0f
    ret                                           ; $49ad: $c9


    rrca                                          ; $49ae: $0f
    call z, $fb07                                 ; $49af: $cc $07 $fb
    ld hl, sp-$02                                 ; $49b2: $f8 $fe
    and $e0                                       ; $49b4: $e6 $e0
    ldh [$cf], a                                  ; $49b6: $e0 $cf
    ret nz                                        ; $49b8: $c0

    rst $00                                       ; $49b9: $c7
    ret nz                                        ; $49ba: $c0

    rst $20                                       ; $49bb: $e7
    ldh [rIE], a                                  ; $49bc: $e0 $ff
    inc de                                        ; $49be: $13
    ldh a, [rNR13]                                ; $49bf: $f0 $13
    ldh a, [$cf]                                  ; $49c1: $f0 $cf
    ld a, d                                       ; $49c3: $7a
    rst $10                                       ; $49c4: $d7
    ld a, [hl]                                    ; $49c5: $7e
    rst $38                                       ; $49c6: $ff
    jp $c77e                                      ; $49c7: $c3 $7e $c7


    ld a, a                                       ; $49ca: $7f
    rst $08                                       ; $49cb: $cf
    ld a, c                                       ; $49cc: $79
    rst $18                                       ; $49cd: $df
    ld [hl], b                                    ; $49ce: $70
    xor a                                         ; $49cf: $af
    rst $38                                       ; $49d0: $ff
    ld h, [hl]                                    ; $49d1: $66
    rst $38                                       ; $49d2: $ff
    ld c, h                                       ; $49d3: $4c
    cp $80                                        ; $49d4: $fe $80
    ld l, l                                       ; $49d6: $6d
    or [hl]                                       ; $49d7: $b6
    ld h, b                                       ; $49d8: $60
    rlca                                          ; $49d9: $07
    xor [hl]                                      ; $49da: $ae
    xor d                                         ; $49db: $aa
    ld h, d                                       ; $49dc: $62
    jr @+$01                                      ; $49dd: $18 $ff

    sub h                                         ; $49df: $94
    add b                                         ; $49e0: $80
    and b                                         ; $49e1: $a0
    db $db                                        ; $49e2: $db
    or [hl]                                       ; $49e3: $b6
    ld h, b                                       ; $49e4: $60
    ldh a, [$7e]                                  ; $49e5: $f0 $7e
    xor d                                         ; $49e7: $aa
    ld h, d                                       ; $49e8: $62
    inc c                                         ; $49e9: $0c
    rst $38                                       ; $49ea: $ff
    sub h                                         ; $49eb: $94
    ld sp, hl                                     ; $49ec: $f9
    cpl                                           ; $49ed: $2f
    push af                                       ; $49ee: $f5
    inc d                                         ; $49ef: $14
    add b                                         ; $49f0: $80
    rst $38                                       ; $49f1: $ff
    pop af                                        ; $49f2: $f1
    ld a, a                                       ; $49f3: $7f
    ld sp, hl                                     ; $49f4: $f9
    rst $08                                       ; $49f5: $cf
    db $fd                                        ; $49f6: $fd
    rlca                                          ; $49f7: $07
    rst $38                                       ; $49f8: $ff
    inc sp                                        ; $49f9: $33
    ei                                            ; $49fa: $fb
    rst $38                                       ; $49fb: $ff
    sbc c                                         ; $49fc: $99
    rla                                           ; $49fd: $17
    and b                                         ; $49fe: $a0
    ld d, e                                       ; $49ff: $53
    ld a, a                                       ; $4a00: $7f
    ld h, $7f                                     ; $4a01: $26 $7f
    inc h                                         ; $4a03: $24
    rst $38                                       ; $4a04: $ff
    ccf                                           ; $4a05: $3f
    jr nz, @+$41                                  ; $4a06: $20 $3f

    ld hl, $141f                                  ; $4a08: $21 $1f $14
    ld e, a                                       ; $4a0b: $5f
    ld a, [de]                                    ; $4a0c: $1a
    db $d3                                        ; $4a0d: $d3
    db $fc                                        ; $4a0e: $fc
    rrca                                          ; $4a0f: $0f
    add h                                         ; $4a10: $84
    and b                                         ; $4a11: $a0
    xor $a1                                       ; $4a12: $ee $a1
    ld b, a                                       ; $4a14: $47
    ld l, b                                       ; $4a15: $68
    ret nz                                        ; $4a16: $c0

    adc a                                         ; $4a17: $8f
    rst $38                                       ; $4a18: $ff
    daa                                           ; $4a19: $27
    ld a, a                                       ; $4a1a: $7f
    rra                                           ; $4a1b: $1f
    ld hl, sp-$7c                                 ; $4a1c: $f8 $84
    and b                                         ; $4a1e: $a0
    ld c, $c1                                     ; $4a1f: $0e $c1
    pop af                                        ; $4a21: $f1
    adc [hl]                                      ; $4a22: $8e
    jp nz, Jump_077_6162                          ; $4a23: $c2 $62 $61

    rst $38                                       ; $4a26: $ff
    ld h, l                                       ; $4a27: $65
    cp $32                                        ; $4a28: $fe $32
    cp $12                                        ; $4a2a: $fe $12
    cp $02                                        ; $4a2c: $fe $02
    cp $ff                                        ; $4a2e: $fe $ff
    ld b, d                                       ; $4a30: $42
    db $fc                                        ; $4a31: $fc
    sub h                                         ; $4a32: $94
    cp $2c                                        ; $4a33: $fe $2c
    and $3f                                       ; $4a35: $e6 $3f
    ldh [$fc], a                                  ; $4a37: $e0 $fc
    call nz, $ae60                                ; $4a39: $c4 $60 $ae
    ldh [$1f], a                                  ; $4a3c: $e0 $1f
    pop af                                        ; $4a3e: $f1
    rra                                           ; $4a3f: $1f
    ld sp, hl                                     ; $4a40: $f9
    rra                                           ; $4a41: $1f
    sub c                                         ; $4a42: $91
    rst $38                                       ; $4a43: $ff
    rra                                           ; $4a44: $1f
    or e                                          ; $4a45: $b3
    cp $83                                        ; $4a46: $fe $83
    cp $43                                        ; $4a48: $fe $43
    ld a, [hl]                                    ; $4a4a: $7e
    ld b, e                                       ; $4a4b: $43
    rst $38                                       ; $4a4c: $ff
    ld a, [hl]                                    ; $4a4d: $7e
    ld b, a                                       ; $4a4e: $47
    ld a, h                                       ; $4a4f: $7c
    ld b, a                                       ; $4a50: $47
    ld a, h                                       ; $4a51: $7c
    ld c, a                                       ; $4a52: $4f
    ld a, h                                       ; $4a53: $7c
    ld b, l                                       ; $4a54: $45
    rst $38                                       ; $4a55: $ff
    ld a, h                                       ; $4a56: $7c
    db $fc                                        ; $4a57: $fc
    rlca                                          ; $4a58: $07
    ld hl, sp+$0f                                 ; $4a59: $f8 $0f
    ld [hl], b                                    ; $4a5b: $70
    rra                                           ; $4a5c: $1f
    ld h, b                                       ; $4a5d: $60
    rst $38                                       ; $4a5e: $ff
    ccf                                           ; $4a5f: $3f
    jr nc, jr_077_4aa1                            ; $4a60: $30 $3f

    ld b, e                                       ; $4a62: $43
    ld a, a                                       ; $4a63: $7f
    ld c, a                                       ; $4a64: $4f
    ld a, h                                       ; $4a65: $7c
    ld [hl], c                                    ; $4a66: $71
    cp a                                          ; $4a67: $bf
    jr nc, jr_077_4aa9                            ; $4a68: $30 $3f

    ldh [$7f], a                                  ; $4a6a: $e0 $7f
    ret nz                                        ; $4a6c: $c0

    ld a, [hl]                                    ; $4a6d: $7e
    cp $e0                                        ; $4a6e: $fe $e0
    db $fc                                        ; $4a70: $fc
    ld a, l                                       ; $4a71: $7d
    add b                                         ; $4a72: $80
    ldh [rSCX], a                                 ; $4a73: $e0 $43
    cp $03                                        ; $4a75: $fe $03
    rst $38                                       ; $4a77: $ff
    ld bc, $fe7f                                  ; $4a78: $01 $7f $fe
    ldh [$fe], a                                  ; $4a7b: $e0 $fe
    ret nz                                        ; $4a7d: $c0

    ld h, l                                       ; $4a7e: $65
    rra                                           ; $4a7f: $1f
    ldh a, [rIF]                                  ; $4a80: $f0 $0f
    ld hl, sp+$06                                 ; $4a82: $f8 $06
    db $fc                                        ; $4a84: $fc
    ld [bc], a                                    ; $4a85: $02
    rst $38                                       ; $4a86: $ff
    cp $86                                        ; $4a87: $fe $86
    cp $e1                                        ; $4a89: $fe $e1
    ld a, a                                       ; $4a8b: $7f
    ld sp, hl                                     ; $4a8c: $f9
    rra                                           ; $4a8d: $1f
    add [hl]                                      ; $4a8e: $86
    db $fd                                        ; $4a8f: $fd
    ld b, $98                                     ; $4a90: $06 $98
    and b                                         ; $4a92: $a0
    ld h, d                                       ; $4a93: $62
    ld a, a                                       ; $4a94: $7f
    add hl, hl                                    ; $4a95: $29
    ld a, a                                       ; $4a96: $7f
    inc h                                         ; $4a97: $24
    ld e, a                                       ; $4a98: $5f
    rst $38                                       ; $4a99: $ff
    ld a, e                                       ; $4a9a: $7b
    ld b, a                                       ; $4a9b: $47
    ld a, a                                       ; $4a9c: $7f
    ld b, e                                       ; $4a9d: $43
    ld a, a                                       ; $4a9e: $7f

jr_077_4a9f:
    ld b, c                                       ; $4a9f: $41
    ld a, a                                       ; $4aa0: $7f

jr_077_4aa1:
    rst $38                                       ; $4aa1: $ff
    sbc l                                         ; $4aa2: $9d
    ld e, a                                       ; $4aa3: $5f
    call c, Call_000_3f60                         ; $4aa4: $dc $60 $3f
    rst $38                                       ; $4aa7: $ff
    rst $18                                       ; $4aa8: $df

jr_077_4aa9:
    ld h, c                                       ; $4aa9: $61
    add b                                         ; $4aaa: $80
    db $db                                        ; $4aab: $db
    and e                                         ; $4aac: $a3
    db $fd                                        ; $4aad: $fd
    push hl                                       ; $4aae: $e5
    rrca                                          ; $4aaf: $0f
    db $f4                                        ; $4ab0: $f4
    and c                                         ; $4ab1: $a1
    db $fd                                        ; $4ab2: $fd
    ld h, h                                       ; $4ab3: $64
    ld [c], a                                     ; $4ab4: $e2
    ld h, b                                       ; $4ab5: $60
    ld h, c                                       ; $4ab6: $61
    add hl, bc                                    ; $4ab7: $09
    rst $38                                       ; $4ab8: $ff
    inc hl                                        ; $4ab9: $23
    ld a, a                                       ; $4aba: $7f
    cp $4a                                        ; $4abb: $fe $4a
    cp $92                                        ; $4abd: $fe $92
    db $fd                                        ; $4abf: $fd
    rst $28                                       ; $4ac0: $ef
    pop af                                        ; $4ac1: $f1
    ld e, h                                       ; $4ac2: $5c
    ret nz                                        ; $4ac3: $c0

    rst $38                                       ; $4ac4: $ff
    pop bc                                        ; $4ac5: $c1
    rst $38                                       ; $4ac6: $ff
    ld c, a                                       ; $4ac7: $4f
    rrca                                          ; $4ac8: $0f
    ld c, a                                       ; $4ac9: $4f
    rrca                                          ; $4aca: $0f
    ccf                                           ; $4acb: $3f

jr_077_4acc:
    scf                                           ; $4acc: $37
    ld a, a                                       ; $4acd: $7f
    ld c, h                                       ; $4ace: $4c
    ld a, a                                       ; $4acf: $7f
    ld b, d                                       ; $4ad0: $42
    ld a, a                                       ; $4ad1: $7f
    ret nz                                        ; $4ad2: $c0

    ld a, a                                       ; $4ad3: $7f
    ldh [$a8], a                                  ; $4ad4: $e0 $a8
    and h                                         ; $4ad6: $a4
    rst $38                                       ; $4ad7: $ff
    db $fc                                        ; $4ad8: $fc
    db $fc                                        ; $4ad9: $fc
    ld a, b                                       ; $4ada: $78
    ld hl, sp+$3c                                 ; $4adb: $f8 $3c
    db $fc                                        ; $4add: $fc
    inc bc                                        ; $4ade: $03
    cp $fd                                        ; $4adf: $fe $fd
    ld b, e                                       ; $4ae1: $43
    xor b                                         ; $4ae2: $a8
    and h                                         ; $4ae3: $a4
    rra                                           ; $4ae4: $1f
    rra                                           ; $4ae5: $1f
    rrca                                          ; $4ae6: $0f
    rrca                                          ; $4ae7: $0f
    ld e, $1f                                     ; $4ae8: $1e $1f
    db $fd                                        ; $4aea: $fd
    and b                                         ; $4aeb: $a0
    db $fc                                        ; $4aec: $fc
    ld b, b                                       ; $4aed: $40
    rst $38                                       ; $4aee: $ff
    rst $38                                       ; $4aef: $ff
    ld a, [$faf8]                                 ; $4af0: $fa $f8 $fa
    ld hl, sp+$77                                 ; $4af3: $f8 $77
    cp $f6                                        ; $4af5: $fe $f6
    add hl, de                                    ; $4af7: $19
    inc h                                         ; $4af8: $24
    ld h, b                                       ; $4af9: $60
    ld bc, $03ff                                  ; $4afa: $01 $ff $03
    adc b                                         ; $4afd: $88
    and b                                         ; $4afe: $a0
    or $a0                                        ; $4aff: $f6 $a0
    adc b                                         ; $4b01: $88
    nop                                           ; $4b02: $00
    db $e3                                        ; $4b03: $e3
    ld [hl-], a                                   ; $4b04: $32
    ld b, b                                       ; $4b05: $40
    jp nc, $ee1e                                  ; $4b06: $d2 $1e $ee

    inc c                                         ; $4b09: $0c
    ld a, [hl]                                    ; $4b0a: $7e
    add b                                         ; $4b0b: $80
    ld b, a                                       ; $4b0c: $47
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    ld h, a                                       ; $4b0f: $67
    inc a                                         ; $4b10: $3c
    ld e, a                                       ; $4b11: $5f
    jr @-$1e                                      ; $4b12: $18 $e0

    jp hl                                         ; $4b14: $e9


    ld a, a                                       ; $4b15: $7f
    ld b, c                                       ; $4b16: $41
    ld a, a                                       ; $4b17: $7f
    ld b, b                                       ; $4b18: $40
    ld a, a                                       ; $4b19: $7f
    jr nz, jr_077_4b5b                            ; $4b1a: $20 $3f

    inc e                                         ; $4b1c: $1c
    jr nc, jr_077_4a9f                            ; $4b1d: $30 $80

    add hl, hl                                    ; $4b1f: $29
    adc b                                         ; $4b20: $88
    ld h, $c0                                     ; $4b21: $26 $c0
    jr c, jr_077_4acc                             ; $4b23: $38 $a7

    ld a, a                                       ; $4b25: $7f
    di                                            ; $4b26: $f3
    add b                                         ; $4b27: $80
    rst $18                                       ; $4b28: $df
    ld c, h                                       ; $4b29: $4c
    push hl                                       ; $4b2a: $e5
    ld hl, $faa5                                  ; $4b2b: $21 $a5 $fa
    or b                                          ; $4b2e: $b0
    ret nz                                        ; $4b2f: $c0

    pop bc                                        ; $4b30: $c1
    push af                                       ; $4b31: $f5
    add b                                         ; $4b32: $80
    add d                                         ; $4b33: $82
    cp $9c                                        ; $4b34: $fe $9c
    db $fc                                        ; $4b36: $fc
    ld [$f853], sp                                ; $4b37: $08 $53 $f8
    add hl, bc                                    ; $4b3a: $09
    ld h, $c0                                     ; $4b3b: $26 $c0
    sbc $82                                       ; $4b3d: $de $82
    add b                                         ; $4b3f: $80
    cp $e1                                        ; $4b40: $fe $e1
    cp a                                          ; $4b42: $bf
    cp $e0                                        ; $4b43: $fe $e0
    rst $18                                       ; $4b45: $df
    sbc a                                         ; $4b46: $9f
    add b                                         ; $4b47: $80
    pop bc                                        ; $4b48: $c1
    add b                                         ; $4b49: $80
    nop                                           ; $4b4a: $00
    rst $38                                       ; $4b4b: $ff
    db $ec                                        ; $4b4c: $ec
    jp $d780                                      ; $4b4d: $c3 $80 $d7


    rst $00                                       ; $4b50: $c7
    add b                                         ; $4b51: $80
    adc a                                         ; $4b52: $8f
    cp $e0                                        ; $4b53: $fe $e0
    add a                                         ; $4b55: $87
    cp $e0                                        ; $4b56: $fe $e0
    db $e3                                        ; $4b58: $e3
    add b                                         ; $4b59: $80
    ld a, e                                       ; $4b5a: $7b

jr_077_4b5b:
    di                                            ; $4b5b: $f3
    add b                                         ; $4b5c: $80
    jr nc, jr_077_4bc8                            ; $4b5d: $30 $69

    rst $38                                       ; $4b5f: $ff
    rlca                                          ; $4b60: $07
    sbc e                                         ; $4b61: $9b
    inc e                                         ; $4b62: $1c
    ld [hl], b                                    ; $4b63: $70
    ld c, c                                       ; $4b64: $49
    cpl                                           ; $4b65: $2f
    rst $38                                       ; $4b66: $ff
    ldh [$59], a                                  ; $4b67: $e0 $59
    cp b                                          ; $4b69: $b8
    or d                                          ; $4b6a: $b2
    pop hl                                        ; $4b6b: $e1
    cp $fe                                        ; $4b6c: $fe $fe
    ldh [$90], a                                  ; $4b6e: $e0 $90
    ret nz                                        ; $4b70: $c0

    rst $18                                       ; $4b71: $df
    add b                                         ; $4b72: $80
    ld hl, sp-$80                                 ; $4b73: $f8 $80
    add d                                         ; $4b75: $82
    add b                                         ; $4b76: $80
    nop                                           ; $4b77: $00
    ld b, [hl]                                    ; $4b78: $46
    ld bc, $5f86                                  ; $4b79: $01 $86 $5f
    inc bc                                        ; $4b7c: $03
    ld [c], a                                     ; $4b7d: $e2
    inc bc                                        ; $4b7e: $03
    ld a, [$d20b]                                 ; $4b7f: $fa $0b $d2
    ld l, e                                       ; $4b82: $6b
    sbc a                                         ; $4b83: $9f
    ldh [$67], a                                  ; $4b84: $e0 $67
    rst $30                                       ; $4b86: $f7
    ret nz                                        ; $4b87: $c0

    ld hl, $e0e0                                  ; $4b88: $21 $e0 $e0
    ld h, b                                       ; $4b8b: $60
    add sp, -$3e                                  ; $4b8c: $e8 $c2
    add b                                         ; $4b8e: $80
    ld [c], a                                     ; $4b8f: $e2
    cp e                                          ; $4b90: $bb
    add b                                         ; $4b91: $80
    ldh a, [$fe]                                  ; $4b92: $f0 $fe
    ldh [$e0], a                                  ; $4b94: $e0 $e0
    add b                                         ; $4b96: $80
    pop hl                                        ; $4b97: $e1
    add [hl]                                      ; $4b98: $86

jr_077_4b99:
    ldh [$cf], a                                  ; $4b99: $e0 $cf
    dec a                                         ; $4b9b: $3d
    add b                                         ; $4b9c: $80
    sub d                                         ; $4b9d: $92
    adc c                                         ; $4b9e: $89
    rst $28                                       ; $4b9f: $ef
    add hl, sp                                    ; $4ba0: $39
    rst $08                                       ; $4ba1: $cf
    ld a, d                                       ; $4ba2: $7a
    sub d                                         ; $4ba3: $92

jr_077_4ba4:
    adc e                                         ; $4ba4: $8b
    add b                                         ; $4ba5: $80
    ld c, h                                       ; $4ba6: $4c
    inc c                                         ; $4ba7: $0c
    call z, $9261                                 ; $4ba8: $cc $61 $92
    adc d                                         ; $4bab: $8a
    ld sp, hl                                     ; $4bac: $f9
    cpl                                           ; $4bad: $2f
    ld [hl+], a                                   ; $4bae: $22
    db $e3                                        ; $4baf: $e3
    jr nz, jr_077_4b99                            ; $4bb0: $20 $e7

    ld b, d                                       ; $4bb2: $42
    xor e                                         ; $4bb3: $ab
    xor d                                         ; $4bb4: $aa
    ld h, b                                       ; $4bb5: $60
    ld e, b                                       ; $4bb6: $58
    ld b, d                                       ; $4bb7: $42
    xor d                                         ; $4bb8: $aa
    ld a, [c]                                     ; $4bb9: $f2
    ld b, b                                       ; $4bba: $40
    ld b, d                                       ; $4bbb: $42
    xor d                                         ; $4bbc: $aa
    rst $38                                       ; $4bbd: $ff
    db $fd                                        ; $4bbe: $fd
    ld b, d                                       ; $4bbf: $42
    xor h                                         ; $4bc0: $ac
    add hl, bc                                    ; $4bc1: $09
    ld c, [hl]                                    ; $4bc2: $4e
    add b                                         ; $4bc3: $80
    sub $e2                                       ; $4bc4: $d6 $e2
    xor b                                         ; $4bc6: $a8
    ld b, c                                       ; $4bc7: $41

jr_077_4bc8:
    ld a, a                                       ; $4bc8: $7f
    ld [c], a                                     ; $4bc9: $e2
    xor h                                         ; $4bca: $ac
    rst $38                                       ; $4bcb: $ff
    ld [c], a                                     ; $4bcc: $e2
    xor h                                         ; $4bcd: $ac
    rst $38                                       ; $4bce: $ff
    rst $38                                       ; $4bcf: $ff
    ei                                            ; $4bd0: $fb
    inc hl                                        ; $4bd1: $23
    rst $38                                       ; $4bd2: $ff
    ld [c], a                                     ; $4bd3: $e2
    xor b                                         ; $4bd4: $a8
    pop bc                                        ; $4bd5: $c1
    rst $38                                       ; $4bd6: $ff
    ld b, b                                       ; $4bd7: $40
    ld a, a                                       ; $4bd8: $7f
    ld h, b                                       ; $4bd9: $60
    sbc [hl]                                      ; $4bda: $9e
    ld d, d                                       ; $4bdb: $52
    jp nz, Jump_000_0f08                          ; $4bdc: $c2 $08 $0f

    add a                                         ; $4bdf: $87
    rlca                                          ; $4be0: $07
    jr nz, jr_077_4ba4                            ; $4be1: $20 $c1

    ld d, d                                       ; $4be3: $52
    rst $00                                       ; $4be4: $c7
    rst $38                                       ; $4be5: $ff
    pop hl                                        ; $4be6: $e1
    cp a                                          ; $4be7: $bf
    inc h                                         ; $4be8: $24
    add b                                         ; $4be9: $80
    ld sp, $0089                                  ; $4bea: $31 $89 $00
    and d                                         ; $4bed: $a2
    ld d, d                                       ; $4bee: $52
    push bc                                       ; $4bef: $c5
    ld [$f1f8], sp                                ; $4bf0: $08 $f8 $f1
    add hl, de                                    ; $4bf3: $19
    ldh a, [rP1]                                  ; $4bf4: $f0 $00
    pop bc                                        ; $4bf6: $c1
    ldh [$cb], a                                  ; $4bf7: $e0 $cb
    rst $38                                       ; $4bf9: $ff
    rst $38                                       ; $4bfa: $ff
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    rst $38                                       ; $4c00: $ff
    rst $38                                       ; $4c01: $ff
    rst $38                                       ; $4c02: $ff
    di                                            ; $4c03: $f3
    nop                                           ; $4c04: $00
    dec e                                         ; $4c05: $1d
    nop                                           ; $4c06: $00
    and $00                                       ; $4c07: $e6 $00
    push af                                       ; $4c09: $f5
    cp d                                          ; $4c0a: $ba
    cp $e0                                        ; $4c0b: $fe $e0
    and $f6                                       ; $4c0d: $e6 $f6
    ldh [rIE], a                                  ; $4c0f: $e0 $ff
    rst $38                                       ; $4c11: $ff
    rst $38                                       ; $4c12: $ff
    nop                                           ; $4c13: $00
    xor $fe                                       ; $4c14: $ee $fe
    and $3e                                       ; $4c16: $e6 $3e
    rst $38                                       ; $4c18: $ff
    jp $eaf0                                      ; $4c19: $c3 $f0 $ea


    rra                                           ; $4c1c: $1f
    rst $38                                       ; $4c1d: $ff
    jr nc, @+$01                                  ; $4c1e: $30 $ff

    rst $38                                       ; $4c20: $ff
    rst $38                                       ; $4c21: $ff
    rst $08                                       ; $4c22: $cf
    nop                                           ; $4c23: $00
    cp b                                          ; $4c24: $b8
    nop                                           ; $4c25: $00
    ld h, a                                       ; $4c26: $67
    nop                                           ; $4c27: $00
    cp l                                          ; $4c28: $bd
    ld e, l                                       ; $4c29: $5d
    cp $e0                                        ; $4c2a: $fe $e0
    ld h, a                                       ; $4c2c: $67
    nop                                           ; $4c2d: $00
    ld hl, sp-$40                                 ; $4c2e: $f8 $c0
    ldh [$ec], a                                  ; $4c30: $e0 $ec
    ld h, h                                       ; $4c32: $64
    xor $c0                                       ; $4c33: $ee $c0
    ld [$ff7c], a                                 ; $4c35: $ea $7c $ff
    adc e                                         ; $4c38: $8b
    or b                                          ; $4c39: $b0
    ld [$ff0f], a                                 ; $4c3a: $ea $0f $ff
    inc d                                         ; $4c3d: $14
    xor [hl]                                      ; $4c3e: $ae
    and b                                         ; $4c3f: $a0
    ld [$fff8], a                                 ; $4c40: $ea $f8 $ff
    sub h                                         ; $4c43: $94
    and b                                         ; $4c44: $a0
    db $ec                                        ; $4c45: $ec
    ld h, [hl]                                    ; $4c46: $66
    add b                                         ; $4c47: $80
    ld [$ffbe], a                                 ; $4c48: $ea $be $ff
    rst $38                                       ; $4c4b: $ff
    ld c, c                                       ; $4c4c: $49
    di                                            ; $4c4d: $f3
    ld bc, $020f                                  ; $4c4e: $01 $0f $02
    ld a, a                                       ; $4c51: $7f
    inc b                                         ; $4c52: $04
    rst $38                                       ; $4c53: $ff
    ld h, a                                       ; $4c54: $67
    inc b                                         ; $4c55: $04
    ld c, a                                       ; $4c56: $4f
    ld [$141f], sp                                ; $4c57: $08 $1f $14
    rra                                           ; $4c5a: $1f
    ld de, $1fff                                  ; $4c5b: $11 $ff $1f
    ld [$0dff], sp                                ; $4c5e: $08 $ff $0d
    rst $38                                       ; $4c61: $ff
    ld [de], a                                    ; $4c62: $12
    rst $38                                       ; $4c63: $ff
    inc a                                         ; $4c64: $3c
    rst $38                                       ; $4c65: $ff
    rst $38                                       ; $4c66: $ff
    ld h, d                                       ; $4c67: $62
    rst $38                                       ; $4c68: $ff
    ld c, a                                       ; $4c69: $4f
    ei                                            ; $4c6a: $fb
    sbc h                                         ; $4c6b: $9c
    rst $28                                       ; $4c6c: $ef
    ld sp, $cfef                                  ; $4c6d: $31 $ef $cf
    push af                                       ; $4c70: $f5
    rst $38                                       ; $4c71: $ff
    inc l                                         ; $4c72: $2c
    ldh a, [$e0]                                  ; $4c73: $f0 $e0

jr_077_4c75:
    rrca                                          ; $4c75: $0f
    rst $38                                       ; $4c76: $ff
    ld de, $efff                                  ; $4c77: $11 $ff $ef
    add sp, $5f                                   ; $4c7a: $e8 $5f
    cp h                                          ; $4c7c: $bc
    rst $20                                       ; $4c7d: $e7
    ld e, [hl]                                    ; $4c7e: $5e
    db $e3                                        ; $4c7f: $e3
    ld e, a                                       ; $4c80: $5f
    rst $38                                       ; $4c81: $ff
    rst $28                                       ; $4c82: $ef
    jr nz, jr_077_4c75                            ; $4c83: $20 $f0

    db $10                                        ; $4c85: $10
    cp $08                                        ; $4c86: $fe $08
    cp $88                                        ; $4c88: $fe $88
    rst $38                                       ; $4c8a: $ff
    cp $84                                        ; $4c8b: $fe $84
    cp $4a                                        ; $4c8d: $fe $4a
    cp $22                                        ; $4c8f: $fe $22
    db $fc                                        ; $4c91: $fc
    call nz, $f3bf                                ; $4c92: $c4 $bf $f3
    nop                                           ; $4c95: $00
    rrca                                          ; $4c96: $0f
    ld bc, $027f                                  ; $4c97: $01 $7f $02
    ret nz                                        ; $4c9a: $c0

    pop hl                                        ; $4c9b: $e1
    rrca                                          ; $4c9c: $0f
    ld a, a                                       ; $4c9d: $7f
    ld [$101f], sp                                ; $4c9e: $08 $1f $10
    rra                                           ; $4ca1: $1f
    inc de                                        ; $4ca2: $13
    rst $38                                       ; $4ca3: $ff
    adc c                                         ; $4ca4: $89
    ret nz                                        ; $4ca5: $c0

    ldh [rIE], a                                  ; $4ca6: $e0 $ff
    inc h                                         ; $4ca8: $24
    rst $38                                       ; $4ca9: $ff
    ld e, l                                       ; $4caa: $5d
    rst $38                                       ; $4cab: $ff
    ld a, a                                       ; $4cac: $7f
    jp z, $fff5                                   ; $4cad: $ca $f5 $ff

    rst $38                                       ; $4cb0: $ff
    adc d                                         ; $4cb1: $8a
    ld a, a                                       ; $4cb2: $7f
    xor d                                         ; $4cb3: $aa
    rst $38                                       ; $4cb4: $ff
    db $e4                                        ; $4cb5: $e4
    rst $38                                       ; $4cb6: $ff
    sub b                                         ; $4cb7: $90
    rst $38                                       ; $4cb8: $ff
    rst $38                                       ; $4cb9: $ff
    ld c, e                                       ; $4cba: $4b
    rst $38                                       ; $4cbb: $ff
    and c                                         ; $4cbc: $a1
    rst $38                                       ; $4cbd: $ff
    ldh [$3f], a                                  ; $4cbe: $e0 $3f
    ldh a, [$1f]                                  ; $4cc0: $f0 $1f
    rst $38                                       ; $4cc2: $ff
    ldh a, [rIF]                                  ; $4cc3: $f0 $0f
    ld sp, hl                                     ; $4cc5: $f9
    rst $08                                       ; $4cc6: $cf
    add b                                         ; $4cc7: $80
    ldh a, [rLCDC]                                ; $4cc8: $f0 $40
    cp $ff                                        ; $4cca: $fe $ff
    and b                                         ; $4ccc: $a0
    or $d0                                        ; $4ccd: $f6 $d0
    ld a, [c]                                     ; $4ccf: $f2
    db $10                                        ; $4cd0: $10
    ld hl, sp+$38                                 ; $4cd1: $f8 $38
    db $fc                                        ; $4cd3: $fc
    rst $30                                       ; $4cd4: $f7
    inc b                                         ; $4cd5: $04
    cp $1a                                        ; $4cd6: $fe $1a
    ret nz                                        ; $4cd8: $c0

    ldh [rP1], a                                  ; $4cd9: $e0 $00
    ld a, c                                       ; $4cdb: $79
    nop                                           ; $4cdc: $00
    ld h, e                                       ; $4cdd: $63
    rst $38                                       ; $4cde: $ff
    inc bc                                        ; $4cdf: $03
    ld b, h                                       ; $4ce0: $44
    rlca                                          ; $4ce1: $07
    rrca                                          ; $4ce2: $0f
    ld [$0d0f], sp                                ; $4ce3: $08 $0f $0d
    rra                                           ; $4ce6: $1f
    rst $38                                       ; $4ce7: $ff
    dec c                                         ; $4ce8: $0d
    rst $38                                       ; $4ce9: $ff
    ld a, [hl+]                                   ; $4cea: $2a
    rst $38                                       ; $4ceb: $ff
    add hl, hl                                    ; $4cec: $29
    rst $38                                       ; $4ced: $ff
    ld c, b                                       ; $4cee: $48
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    db $e4                                        ; $4cf1: $e4
    rra                                           ; $4cf2: $1f
    db $fc                                        ; $4cf3: $fc
    rlca                                          ; $4cf4: $07
    db $fc                                        ; $4cf5: $fc
    add e                                         ; $4cf6: $83
    ld a, [hl]                                    ; $4cf7: $7e
    add c                                         ; $4cf8: $81
    rst $38                                       ; $4cf9: $ff
    ld a, a                                       ; $4cfa: $7f
    rst $38                                       ; $4cfb: $ff
    ld c, d                                       ; $4cfc: $4a
    rst $38                                       ; $4cfd: $ff
    ld [bc], a                                    ; $4cfe: $02
    rst $38                                       ; $4cff: $ff
    ld [hl], c                                    ; $4d00: $71
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    add hl, sp                                    ; $4d03: $39
    rst $38                                       ; $4d04: $ff
    ld bc, $03ff                                  ; $4d05: $01 $ff $03
    rst $38                                       ; $4d08: $ff
    ld h, b                                       ; $4d09: $60
    rst $38                                       ; $4d0a: $ff
    rst $38                                       ; $4d0b: $ff
    adc a                                         ; $4d0c: $8f
    rst $08                                       ; $4d0d: $cf
    nop                                           ; $4d0e: $00
    ldh a, [rP1]                                  ; $4d0f: $f0 $00
    sbc [hl]                                      ; $4d11: $9e
    nop                                           ; $4d12: $00
    add [hl]                                      ; $4d13: $86
    rst $38                                       ; $4d14: $ff
    nop                                           ; $4d15: $00
    add d                                         ; $4d16: $82
    nop                                           ; $4d17: $00
    ret nz                                        ; $4d18: $c0

    add b                                         ; $4d19: $80
    ldh [rLCDC], a                                ; $4d1a: $e0 $40
    ld hl, sp-$43                                 ; $4d1c: $f8 $bd
    ret nz                                        ; $4d1e: $c0

    add b                                         ; $4d1f: $80
    pop hl                                        ; $4d20: $e1
    ld a, e                                       ; $4d21: $7b
    ld [bc], a                                    ; $4d22: $02
    ld h, a                                       ; $4d23: $67
    dec b                                         ; $4d24: $05
    add b                                         ; $4d25: $80
    ldh [$0c], a                                  ; $4d26: $e0 $0c
    xor $80                                       ; $4d28: $ee $80
    ldh [rNR10], a                                ; $4d2a: $e0 $10
    rst $38                                       ; $4d2c: $ff
    adc b                                         ; $4d2d: $88
    sub $e0                                       ; $4d2e: $d6 $e0
    and $ff                                       ; $4d30: $e6 $ff
    ret nz                                        ; $4d32: $c0

    cp [hl]                                       ; $4d33: $be
    sbc d                                         ; $4d34: $9a
    ret nz                                        ; $4d35: $c0

    inc bc                                        ; $4d36: $03
    db $fc                                        ; $4d37: $fc
    rlca                                          ; $4d38: $07
    ld hl, sp+$3f                                 ; $4d39: $f8 $3f
    adc $c0                                       ; $4d3b: $ce $c0
    db $d3                                        ; $4d3d: $d3
    rst $38                                       ; $4d3e: $ff
    rst $38                                       ; $4d3f: $ff
    ld l, h                                       ; $4d40: $6c
    rst $38                                       ; $4d41: $ff
    ld d, h                                       ; $4d42: $54
    rst $38                                       ; $4d43: $ff
    ld a, [$f90f]                                 ; $4d44: $fa $0f $f9
    rst $28                                       ; $4d47: $ef
    rlca                                          ; $4d48: $07
    db $fd                                        ; $4d49: $fd
    inc bc                                        ; $4d4a: $03
    cp $80                                        ; $4d4b: $fe $80
    ld [c], a                                     ; $4d4d: $e2
    ldh [$e6], a                                  ; $4d4e: $e0 $e6

jr_077_4d50:
    jr nz, jr_077_4d50                            ; $4d50: $20 $fe

    add b                                         ; $4d52: $80
    ldh [rNR23], a                                ; $4d53: $e0 $18
    db $fc                                        ; $4d55: $fc
    inc d                                         ; $4d56: $14
    db $fc                                        ; $4d57: $fc
    inc h                                         ; $4d58: $24
    rst $30                                       ; $4d59: $f7
    ld e, $ff                                     ; $4d5a: $1e $ff
    pop hl                                        ; $4d5c: $e1
    ccf                                           ; $4d5d: $3f
    pop hl                                        ; $4d5e: $e1
    ccf                                           ; $4d5f: $3f
    ld [c], a                                     ; $4d60: $e2
    ccf                                           ; $4d61: $3f
    jp nz, $ff7f                                  ; $4d62: $c2 $7f $ff

    jp z, $df7f                                   ; $4d65: $ca $7f $df

    ld [hl], a                                    ; $4d68: $77
    sbc $73                                       ; $4d69: $de $73
    rst $08                                       ; $4d6b: $cf
    ld [hl], a                                    ; $4d6c: $77
    rst $38                                       ; $4d6d: $ff
    sub a                                         ; $4d6e: $97
    ld a, [$ff1f]                                 ; $4d6f: $fa $1f $ff
    jr nz, @+$01                                  ; $4d72: $20 $ff

    ld e, [hl]                                    ; $4d74: $5e
    rst $38                                       ; $4d75: $ff
    rst $38                                       ; $4d76: $ff
    cp a                                          ; $4d77: $bf
    rst $38                                       ; $4d78: $ff
    cp a                                          ; $4d79: $bf
    ld a, [c]                                     ; $4d7a: $f2
    rst $38                                       ; $4d7b: $ff
    pop de                                        ; $4d7c: $d1
    pop hl                                        ; $4d7d: $e1
    rst $18                                       ; $4d7e: $df
    sbc a                                         ; $4d7f: $9f
    pop de                                        ; $4d80: $d1
    cp a                                          ; $4d81: $bf
    ld hl, sp-$01                                 ; $4d82: $f8 $ff
    inc b                                         ; $4d84: $04
    ld d, l                                       ; $4d85: $55
    ret nz                                        ; $4d86: $c0

    ld b, [hl]                                    ; $4d87: $46
    ret nz                                        ; $4d88: $c0

    daa                                           ; $4d89: $27
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    ld b, l                                       ; $4d8c: $45
    ei                                            ; $4d8d: $fb
    ld e, $e3                                     ; $4d8e: $1e $e3
    ld a, [hl]                                    ; $4d90: $7e
    jp $f7fe                                      ; $4d91: $c3 $fe $f7


    inc hl                                        ; $4d94: $23
    cp $21                                        ; $4d95: $fe $21
    ld e, c                                       ; $4d97: $59
    ldh [$fd], a                                  ; $4d98: $e0 $fd
    rst $30                                       ; $4d9a: $f7
    cp l                                          ; $4d9b: $bd
    rst $20                                       ; $4d9c: $e7
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    add hl, bc                                    ; $4d9f: $09
    rst $30                                       ; $4da0: $f7
    dec e                                         ; $4da1: $1d
    di                                            ; $4da2: $f3
    rra                                           ; $4da3: $1f
    di                                            ; $4da4: $f3
    rra                                           ; $4da5: $1f
    rst $38                                       ; $4da6: $ff
    xor $3f                                       ; $4da7: $ee $3f
    rst $28                                       ; $4da9: $ef
    dec sp                                        ; $4daa: $3b
    rst $28                                       ; $4dab: $ef
    dec sp                                        ; $4dac: $3b
    rst $20                                       ; $4dad: $e7
    dec a                                         ; $4dae: $3d
    ld a, a                                       ; $4daf: $7f
    ld a, a                                       ; $4db0: $7f
    cp [hl]                                       ; $4db1: $be
    ld a, $d5                                     ; $4db2: $3e $d5
    ld a, a                                       ; $4db4: $7f
    rst $38                                       ; $4db5: $ff
    add b                                         ; $4db6: $80
    ld d, c                                       ; $4db7: $51
    ldh [$fe], a                                  ; $4db8: $e0 $fe
    ld d, $c0                                     ; $4dba: $16 $c0
    ld l, $ff                                     ; $4dbc: $2e $ff
    inc l                                         ; $4dbe: $2c
    rlca                                          ; $4dbf: $07
    cp $27                                        ; $4dc0: $fe $27
    db $fc                                        ; $4dc2: $fc
    rst $38                                       ; $4dc3: $ff
    di                                            ; $4dc4: $f3
    rst $38                                       ; $4dc5: $ff
    add hl, de                                    ; $4dc6: $19
    rst $38                                       ; $4dc7: $ff
    db $fd                                        ; $4dc8: $fd
    rst $38                                       ; $4dc9: $ff
    db $fc                                        ; $4dca: $fc
    rst $38                                       ; $4dcb: $ff
    ld a, a                                       ; $4dcc: $7f
    cp $37                                        ; $4dcd: $fe $37
    rst $38                                       ; $4dcf: $ff
    daa                                           ; $4dd0: $27
    rst $20                                       ; $4dd1: $e7
    ld a, [hl]                                    ; $4dd2: $7e
    add a                                         ; $4dd3: $87
    ld h, $e0                                     ; $4dd4: $26 $e0
    rst $38                                       ; $4dd6: $ff
    rlca                                          ; $4dd7: $07
    db $fc                                        ; $4dd8: $fc
    inc de                                        ; $4dd9: $13
    cp $bb                                        ; $4dda: $fe $bb
    xor $fb                                       ; $4ddc: $ee $fb
    adc $ff                                       ; $4dde: $ce $ff

Call_077_4de0:
    ei                                            ; $4de0: $fb
    xor [hl]                                      ; $4de1: $ae
    rst $38                                       ; $4de2: $ff
    ld b, $ff                                     ; $4de3: $06 $ff
    rlca                                          ; $4de5: $07
    db $fc                                        ; $4de6: $fc
    rrca                                          ; $4de7: $0f
    rst $38                                       ; $4de8: $ff
    ldh a, [$3f]                                  ; $4de9: $f0 $3f
    pop bc                                        ; $4deb: $c1
    ld a, a                                       ; $4dec: $7f
    rst $38                                       ; $4ded: $ff
    ccf                                           ; $4dee: $3f
    rst $38                                       ; $4def: $ff
    rlca                                          ; $4df0: $07
    rst $38                                       ; $4df1: $ff
    rst $38                                       ; $4df2: $ff
    ld e, $81                                     ; $4df3: $1e $81
    ld a, a                                       ; $4df5: $7f
    add c                                         ; $4df6: $81
    rst $38                                       ; $4df7: $ff
    ld [hl], b                                    ; $4df8: $70
    rst $38                                       ; $4df9: $ff
    cp a                                          ; $4dfa: $bf
    inc c                                         ; $4dfb: $0c
    rst $38                                       ; $4dfc: $ff
    ld a, [c]                                     ; $4dfd: $f2
    rst $38                                       ; $4dfe: $ff
    ei                                            ; $4dff: $fb
    rst $38                                       ; $4e00: $ff
    xor $e0                                       ; $4e01: $ee $e0
    ld de, $f07f                                  ; $4e03: $11 $7f $f0
    ccf                                           ; $4e06: $3f
    ret nz                                        ; $4e07: $c0

    ld a, a                                       ; $4e08: $7f
    ret nz                                        ; $4e09: $c0

    rst $38                                       ; $4e0a: $ff
    ld b, b                                       ; $4e0b: $40
    ld l, [hl]                                    ; $4e0c: $6e
    ldh [$7f], a                                  ; $4e0d: $e0 $7f
    jr nz, @+$01                                  ; $4e0f: $20 $ff

    and b                                         ; $4e11: $a0
    rst $38                                       ; $4e12: $ff
    ldh [rIE], a                                  ; $4e13: $e0 $ff
    ld a, a                                       ; $4e15: $7f
    pop af                                        ; $4e16: $f1
    ldh [$f6], a                                  ; $4e17: $e0 $f6
    db $fc                                        ; $4e19: $fc
    pop hl                                        ; $4e1a: $e1
    ccf                                           ; $4e1b: $3f
    ldh [$fe], a                                  ; $4e1c: $e0 $fe
    db $e3                                        ; $4e1e: $e3
    rst $38                                       ; $4e1f: $ff
    ld c, $f9                                     ; $4e20: $0e $f9
    rra                                           ; $4e22: $1f
    ld a, [$c0a7]                                 ; $4e23: $fa $a7 $c0
    rra                                           ; $4e26: $1f
    pop af                                        ; $4e27: $f1
    db $e4                                        ; $4e28: $e4
    ccf                                           ; $4e29: $3f
    ld hl, sp+$1f                                 ; $4e2a: $f8 $1f
    ldh a, [$9f]                                  ; $4e2c: $f0 $9f
    ld d, a                                       ; $4e2e: $57
    ld [hl], b                                    ; $4e2f: $70
    rst $38                                       ; $4e30: $ff
    db $10                                        ; $4e31: $10
    cp $e6                                        ; $4e32: $fe $e6
    inc bc                                        ; $4e34: $03
    ret                                           ; $4e35: $c9


    ret nz                                        ; $4e36: $c0

    cp c                                          ; $4e37: $b9
    and a                                         ; $4e38: $a7
    ldh [$7d], a                                  ; $4e39: $e0 $7d
    ld bc, $a489                                  ; $4e3b: $01 $89 $a4
    rst $38                                       ; $4e3e: $ff
    adc b                                         ; $4e3f: $88
    rst $30                                       ; $4e40: $f7
    inc a                                         ; $4e41: $3c
    rst $00                                       ; $4e42: $c7
    and h                                         ; $4e43: $a4
    ret nz                                        ; $4e44: $c0

    rst $30                                       ; $4e45: $f7
    add a                                         ; $4e46: $87
    db $fc                                        ; $4e47: $fc
    ld b, e                                       ; $4e48: $43
    ld a, [hl-]                                   ; $4e49: $3a
    ldh [rNR44], a                                ; $4e4a: $e0 $23
    cp $5f                                        ; $4e4c: $fe $5f
    ld [hl], l                                    ; $4e4e: $75
    rst $38                                       ; $4e4f: $ff
    sbc $73                                       ; $4e50: $de $73
    ld c, a                                       ; $4e52: $4f
    ld a, e                                       ; $4e53: $7b
    rst $08                                       ; $4e54: $cf
    ld a, l                                       ; $4e55: $7d
    rst $08                                       ; $4e56: $cf
    ld a, c                                       ; $4e57: $79
    rst $38                                       ; $4e58: $ff
    xor a                                         ; $4e59: $af
    ld a, [hl-]                                   ; $4e5a: $3a
    rst $20                                       ; $4e5b: $e7
    ld a, $23                                     ; $4e5c: $3e $23
    ld a, $7f                                     ; $4e5e: $3e $7f
    rst $18                                       ; $4e60: $df
    rst $38                                       ; $4e61: $ff
    ld a, a                                       ; $4e62: $7f
    pop af                                        ; $4e63: $f1
    cp $cf                                        ; $4e64: $fe $cf
    ldh a, [rIE]                                  ; $4e66: $f0 $ff
    ld hl, sp+$7f                                 ; $4e68: $f8 $7f
    rst $38                                       ; $4e6a: $ff
    cp $5f                                        ; $4e6b: $fe $5f
    rst $38                                       ; $4e6d: $ff
    ld e, a                                       ; $4e6e: $5f
    rst $38                                       ; $4e6f: $ff
    inc [hl]                                      ; $4e70: $34
    rst $38                                       ; $4e71: $ff
    db $fd                                        ; $4e72: $fd
    rst $38                                       ; $4e73: $ff
    ld a, a                                       ; $4e74: $7f
    rst $00                                       ; $4e75: $c7
    cp a                                          ; $4e76: $bf
    ld a, c                                       ; $4e77: $79
    add a                                         ; $4e78: $87
    ld a, a                                       ; $4e79: $7f
    rrca                                          ; $4e7a: $0f
    rst $38                                       ; $4e7b: $ff
    ei                                            ; $4e7c: $fb
    ccf                                           ; $4e7d: $3f
    db $fd                                        ; $4e7e: $fd
    dec sp                                        ; $4e7f: $3b
    ldh [$96], a                                  ; $4e80: $e0 $96
    ld a, l                                       ; $4e82: $7d
    rst $10                                       ; $4e83: $d7
    dec a                                         ; $4e84: $3d
    rst $20                                       ; $4e85: $e7
    rst $38                                       ; $4e86: $ff
    ld sp, hl                                     ; $4e87: $f9
    rst $28                                       ; $4e88: $ef
    ld sp, hl                                     ; $4e89: $f9
    rst $18                                       ; $4e8a: $df
    ld sp, hl                                     ; $4e8b: $f9
    ld c, a                                       ; $4e8c: $4f
    ei                                            ; $4e8d: $fb
    ld l, $ff                                     ; $4e8e: $2e $ff
    di                                            ; $4e90: $f3
    ld a, $e2                                     ; $4e91: $3e $e2
    ld a, $27                                     ; $4e93: $3e $27
    dec a                                         ; $4e95: $3d
    rst $20                                       ; $4e96: $e7
    dec a                                         ; $4e97: $3d
    rst $38                                       ; $4e98: $ff
    ld [hl], $3f                                  ; $4e99: $36 $3f
    xor $3f                                       ; $4e9b: $ee $3f
    xor [hl]                                      ; $4e9d: $ae
    ccf                                           ; $4e9e: $3f
    cp a                                          ; $4e9f: $bf
    dec de                                        ; $4ea0: $1b
    rst $38                                       ; $4ea1: $ff
    rst $38                                       ; $4ea2: $ff
    ld a, [de]                                    ; $4ea3: $1a
    rra                                           ; $4ea4: $1f
    add hl, de                                    ; $4ea5: $19
    rst $38                                       ; $4ea6: $ff
    ei                                            ; $4ea7: $fb
    add a                                         ; $4ea8: $87
    db $fc                                        ; $4ea9: $fc
    rst $18                                       ; $4eaa: $df
    ld b, a                                       ; $4eab: $47
    cp a                                          ; $4eac: $bf
    add e                                         ; $4ead: $83
    ld a, [hl]                                    ; $4eae: $7e
    dec bc                                        ; $4eaf: $0b
    inc sp                                        ; $4eb0: $33
    and b                                         ; $4eb1: $a0
    rst $38                                       ; $4eb2: $ff
    cp $ff                                        ; $4eb3: $fe $ff
    rst $38                                       ; $4eb5: $ff
    and h                                         ; $4eb6: $a4
    db $fd                                        ; $4eb7: $fd
    rst $30                                       ; $4eb8: $f7
    ld sp, hl                                     ; $4eb9: $f9
    ccf                                           ; $4eba: $3f
    ld sp, hl                                     ; $4ebb: $f9
    rst $08                                       ; $4ebc: $cf
    ei                                            ; $4ebd: $fb
    rst $38                                       ; $4ebe: $ff
    ld e, $31                                     ; $4ebf: $1e $31
    ldh [$e9], a                                  ; $4ec1: $e0 $e9
    rst $38                                       ; $4ec3: $ff
    sub c                                         ; $4ec4: $91
    rst $38                                       ; $4ec5: $ff
    pop hl                                        ; $4ec6: $e1
    rst $38                                       ; $4ec7: $ff
    ld a, [$fb4e]                                 ; $4ec8: $fa $4e $fb
    ld c, [hl]                                    ; $4ecb: $4e
    ld a, [c]                                     ; $4ecc: $f2
    ld e, [hl]                                    ; $4ecd: $5e
    di                                            ; $4ece: $f3
    sbc [hl]                                      ; $4ecf: $9e
    rst $30                                       ; $4ed0: $f7
    di                                            ; $4ed1: $f3
    sbc [hl]                                      ; $4ed2: $9e
    push af                                       ; $4ed3: $f5
    ld a, b                                       ; $4ed4: $78
    ldh [rDIV], a                                 ; $4ed5: $e0 $04
    db $fc                                        ; $4ed7: $fc
    inc hl                                        ; $4ed8: $23
    ccf                                           ; $4ed9: $3f
    rst $38                                       ; $4eda: $ff
    pop de                                        ; $4edb: $d1
    ld l, a                                       ; $4edc: $6f
    and b                                         ; $4edd: $a0
    rst $18                                       ; $4ede: $df
    add c                                         ; $4edf: $81
    rst $38                                       ; $4ee0: $ff
    rst $00                                       ; $4ee1: $c7
    ld a, a                                       ; $4ee2: $7f
    rst $38                                       ; $4ee3: $ff
    cp a                                          ; $4ee4: $bf
    ccf                                           ; $4ee5: $3f
    rst $38                                       ; $4ee6: $ff
    rra                                           ; $4ee7: $1f
    ccf                                           ; $4ee8: $3f
    dec [hl]                                      ; $4ee9: $35
    rst $38                                       ; $4eea: $ff

jr_077_4eeb:
    ld sp, hl                                     ; $4eeb: $f9
    rst $38                                       ; $4eec: $ff
    cp $1b                                        ; $4eed: $fe $1b
    cp $e3                                        ; $4eef: $fe $e3
    db $fc                                        ; $4ef1: $fc
    rlca                                          ; $4ef2: $07
    cp $df                                        ; $4ef3: $fe $df
    ld e, e                                       ; $4ef5: $5b
    rst $38                                       ; $4ef6: $ff
    ld sp, hl                                     ; $4ef7: $f9
    ld hl, sp-$60                                 ; $4ef8: $f8 $a0
    ldh a, [rNR41]                                ; $4efa: $f0 $20
    db $ed                                        ; $4efc: $ed
    add b                                         ; $4efd: $80
    jr nz, @+$09                                  ; $4efe: $20 $07

    ret nz                                        ; $4f00: $c0

    rst $18                                       ; $4f01: $df
    ld h, b                                       ; $4f02: $60
    rst $38                                       ; $4f03: $ff
    ldh [$bf], a                                  ; $4f04: $e0 $bf
    ldh [$f4], a                                  ; $4f06: $e0 $f4
    ret nz                                        ; $4f08: $c0

    jr nc, jr_077_4eeb                            ; $4f09: $30 $e0

    ld a, a                                       ; $4f0b: $7f
    cpl                                           ; $4f0c: $2f
    ldh [$38], a                                  ; $4f0d: $e0 $38
    ldh [$27], a                                  ; $4f0f: $e0 $27
    ldh [$3d], a                                  ; $4f11: $e0 $3d
    cp $e0                                        ; $4f13: $fe $e0
    push hl                                       ; $4f15: $e5
    daa                                           ; $4f16: $27
    or $e0                                        ; $4f17: $f6 $e0
    jr nz, @-$07                                  ; $4f19: $20 $f7

    ret nz                                        ; $4f1b: $c0

    db $fc                                        ; $4f1c: $fc
    pop hl                                        ; $4f1d: $e1
    and b                                         ; $4f1e: $a0
    ccf                                           ; $4f1f: $3f
    or b                                          ; $4f20: $b0
    ld l, $f8                                     ; $4f21: $2e $f8
    ret nz                                        ; $4f23: $c0

    db $10                                        ; $4f24: $10
    rra                                           ; $4f25: $1f
    jr jr_077_4f45                                ; $4f26: $18 $1d

    and b                                         ; $4f28: $a0
    ld hl, $c2d2                                  ; $4f29: $21 $d2 $c2
    db $fc                                        ; $4f2c: $fc
    pop bc                                        ; $4f2d: $c1
    ld e, l                                       ; $4f2e: $5d
    inc e                                         ; $4f2f: $1c
    sub e                                         ; $4f30: $93
    add d                                         ; $4f31: $82
    add b                                         ; $4f32: $80
    rst $38                                       ; $4f33: $ff
    ld a, a                                       ; $4f34: $7f
    adc e                                         ; $4f35: $8b
    add d                                         ; $4f36: $82
    ld bc, $c068                                  ; $4f37: $01 $68 $c0
    ld a, l                                       ; $4f3a: $7d
    ld [hl+], a                                   ; $4f3b: $22
    ld b, h                                       ; $4f3c: $44
    ret nz                                        ; $4f3d: $c0

    ld b, d                                       ; $4f3e: $42
    cp $c3                                        ; $4f3f: $fe $c3
    cp $83                                        ; $4f41: $fe $83
    cp $e0                                        ; $4f43: $fe $e0

jr_077_4f45:
    rst $38                                       ; $4f45: $ff
    db $e3                                        ; $4f46: $e3
    cp $24                                        ; $4f47: $fe $24
    db $fc                                        ; $4f49: $fc
    pop hl                                        ; $4f4a: $e1
    ccf                                           ; $4f4b: $3f
    db $10                                        ; $4f4c: $10
    rra                                           ; $4f4d: $1f
    rst $38                                       ; $4f4e: $ff
    ld a, b                                       ; $4f4f: $78
    rrca                                          ; $4f50: $0f
    ld [hl], b                                    ; $4f51: $70
    rra                                           ; $4f52: $1f
    ld d, b                                       ; $4f53: $50
    rra                                           ; $4f54: $1f
    ld hl, $2f3f                                  ; $4f55: $21 $3f $2f
    ld hl, $333f                                  ; $4f58: $21 $3f $33
    ccf                                           ; $4f5b: $3f
    call $83e0                                    ; $4f5c: $cd $e0 $83
    adc a                                         ; $4f5f: $8f
    ret nz                                        ; $4f60: $c0

    rst $38                                       ; $4f61: $ff
    ret nz                                        ; $4f62: $c0

    cp l                                          ; $4f63: $bd
    rst $20                                       ; $4f64: $e7
    sub d                                         ; $4f65: $92
    ret nz                                        ; $4f66: $c0

    ldh [rIE], a                                  ; $4f67: $e0 $ff

jr_077_4f69:
    rst $38                                       ; $4f69: $ff
    sbc h                                         ; $4f6a: $9c
    db $f4                                        ; $4f6b: $f4
    ldh [rSB], a                                  ; $4f6c: $e0 $01
    or $66                                        ; $4f6e: $f6 $66
    ret nz                                        ; $4f70: $c0

    adc a                                         ; $4f71: $8f
    di                                            ; $4f72: $f3
    or h                                          ; $4f73: $b4
    jp nz, Jump_077_7ec3                          ; $4f74: $c2 $c3 $7e

    add h                                         ; $4f77: $84
    db $fc                                        ; $4f78: $fc
    rst $38                                       ; $4f79: $ff
    ld c, $f8                                     ; $4f7a: $0e $f8
    add [hl]                                      ; $4f7c: $86
    db $fc                                        ; $4f7d: $fc
    add [hl]                                      ; $4f7e: $86
    db $fc                                        ; $4f7f: $fc
    jp nz, $fffe                                  ; $4f80: $c2 $fe $ff

    jp nz, $e6fe                                  ; $4f83: $c2 $fe $e6

    cp $ff                                        ; $4f86: $fe $ff
    jr jr_077_4fa1                                ; $4f88: $18 $17

    dec e                                         ; $4f8a: $1d
    rst $38                                       ; $4f8b: $ff
    ld h, a                                       ; $4f8c: $67
    ld a, $6f                                     ; $4f8d: $3e $6f
    ld a, $6f                                     ; $4f8f: $3e $6f
    ccf                                           ; $4f91: $3f
    ld a, $3f                                     ; $4f92: $3e $3f
    cpl                                           ; $4f94: $2f
    ld a, h                                       ; $4f95: $7c
    ld a, a                                       ; $4f96: $7f
    ld a, h                                       ; $4f97: $7c
    ld [hl], a                                    ; $4f98: $77
    sub l                                         ; $4f99: $95
    db $e4                                        ; $4f9a: $e4
    jr nz, @+$7d                                  ; $4f9b: $20 $7b

    ldh [rVBK], a                                 ; $4f9d: $e0 $4f
    and b                                         ; $4f9f: $a0
    ccf                                           ; $4fa0: $3f

jr_077_4fa1:
    rlca                                          ; $4fa1: $07
    rst $38                                       ; $4fa2: $ff
    rst $38                                       ; $4fa3: $ff
    ld bc, $03fe                                  ; $4fa4: $01 $fe $03
    jr nz, jr_077_4f69                            ; $4fa7: $20 $c0

    xor a                                         ; $4fa9: $af
    ldh [$fa], a                                  ; $4faa: $e0 $fa
    or d                                          ; $4fac: $b2
    pop hl                                        ; $4fad: $e1
    ldh [rNR13], a                                ; $4fae: $e0 $13
    ret nz                                        ; $4fb0: $c0

    ld [$36f8], sp                                ; $4fb1: $08 $f8 $36
    db $fc                                        ; $4fb4: $fc
    ld b, $ff                                     ; $4fb5: $06 $ff
    db $fc                                        ; $4fb7: $fc
    ld [bc], a                                    ; $4fb8: $02
    cp $02                                        ; $4fb9: $fe $02
    cp $06                                        ; $4fbb: $fe $06
    cp $1e                                        ; $4fbd: $fe $1e
    rst $38                                       ; $4fbf: $ff
    cp $ff                                        ; $4fc0: $fe $ff
    ld l, $7f                                     ; $4fc2: $2e $7f
    ld b, b                                       ; $4fc4: $40
    ld a, a                                       ; $4fc5: $7f
    ld d, b                                       ; $4fc6: $50
    ld a, a                                       ; $4fc7: $7f
    rst $38                                       ; $4fc8: $ff
    jr nc, @+$71                                  ; $4fc9: $30 $6f

    ccf                                           ; $4fcb: $3f
    ld b, c                                       ; $4fcc: $41
    ld a, a                                       ; $4fcd: $7f
    ld b, c                                       ; $4fce: $41
    ld a, a                                       ; $4fcf: $7f
    ld b, e                                       ; $4fd0: $43
    ld c, [hl]                                    ; $4fd1: $4e
    ld d, a                                       ; $4fd2: $57
    db $e3                                        ; $4fd3: $e3
    nop                                           ; $4fd4: $00
    rst $38                                       ; $4fd5: $ff
    ld a, a                                       ; $4fd6: $7f
    adc $e5                                       ; $4fd7: $ce $e5
    ld de, $80c1                                  ; $4fd9: $11 $c1 $80
    nop                                           ; $4fdc: $00
    ret nz                                        ; $4fdd: $c0

    cp $cb                                        ; $4fde: $fe $cb
    ld h, l                                       ; $4fe0: $65
    ccf                                           ; $4fe1: $3f
    ldh a, [$50]                                  ; $4fe2: $f0 $50
    ldh a, [$5e]                                  ; $4fe4: $f0 $5e
    ld hl, sp-$62                                 ; $4fe6: $f8 $9e
    rst $38                                       ; $4fe8: $ff
    ld hl, sp+$0e                                 ; $4fe9: $f8 $0e
    db $fc                                        ; $4feb: $fc
    inc c                                         ; $4fec: $0c
    db $fc                                        ; $4fed: $fc
    inc e                                         ; $4fee: $1c
    db $fc                                        ; $4fef: $fc
    inc a                                         ; $4ff0: $3c
    rst $38                                       ; $4ff1: $ff
    db $fc                                        ; $4ff2: $fc
    ldh a, [$1f]                                  ; $4ff3: $f0 $1f
    jr jr_077_5016                                ; $4ff5: $18 $1f

    ld l, b                                       ; $4ff7: $68
    ccf                                           ; $4ff8: $3f
    ld h, h                                       ; $4ff9: $64
    ei                                            ; $4ffa: $fb
    ccf                                           ; $4ffb: $3f
    ld h, b                                       ; $4ffc: $60
    ld a, [$60c0]                                 ; $4ffd: $fa $c0 $60
    ld a, a                                       ; $5000: $7f
    ld [hl], b                                    ; $5001: $70
    ld a, a                                       ; $5002: $7f
    dec d                                         ; $5003: $15
    di                                            ; $5004: $f3
    rst $38                                       ; $5005: $ff
    inc de                                        ; $5006: $13
    rst $10                                       ; $5007: $d7
    add b                                         ; $5008: $80
    ld [de], a                                    ; $5009: $12
    push bc                                       ; $500a: $c5
    ld bc, $92ff                                  ; $500b: $01 $ff $92
    rst $38                                       ; $500e: $ff
    push de                                       ; $500f: $d5
    cp e                                          ; $5010: $bb
    ld a, l                                       ; $5011: $7d
    add b                                         ; $5012: $80
    pop af                                        ; $5013: $f1
    add b                                         ; $5014: $80
    and b                                         ; $5015: $a0

jr_077_5016:
    ld a, a                                       ; $5016: $7f
    ld a, [$f9c0]                                 ; $5017: $fa $c0 $f9
    rst $38                                       ; $501a: $ff
    rst $38                                       ; $501b: $ff
    ld b, a                                       ; $501c: $47
    db $fc                                        ; $501d: $fc
    ret z                                         ; $501e: $c8

    ld hl, sp-$3a                                 ; $501f: $f8 $c6
    db $fc                                        ; $5021: $fc
    add $fc                                       ; $5022: $c6 $fc
    ld c, l                                       ; $5024: $4d
    add d                                         ; $5025: $82
    ld b, d                                       ; $5026: $42
    ld [c], a                                     ; $5027: $e2
    cp $fe                                        ; $5028: $fe $fe
    adc d                                         ; $502a: $8a
    and b                                         ; $502b: $a0
    cp $e5                                        ; $502c: $fe $e5
    rra                                           ; $502e: $1f
    add b                                         ; $502f: $80
    ld h, b                                       ; $5030: $60
    sbc b                                         ; $5031: $98
    halt                                          ; $5032: $76
    and b                                         ; $5033: $a0
    ld a, b                                       ; $5034: $78
    and b                                         ; $5035: $a0
    rst $38                                       ; $5036: $ff
    add sp, $07                                   ; $5037: $e8 $07
    cp $3a                                        ; $5039: $fe $3a
    ret nz                                        ; $503b: $c0

    rst $28                                       ; $503c: $ef
    jp hl                                         ; $503d: $e9


    ld a, [hl]                                    ; $503e: $7e
    inc d                                         ; $503f: $14
    cp $e0                                        ; $5040: $fe $e0
    db $ec                                        ; $5042: $ec
    pop hl                                        ; $5043: $e1
    cp $2f                                        ; $5044: $fe $2f
    and b                                         ; $5046: $a0
    db $fc                                        ; $5047: $fc
    sbc [hl]                                      ; $5048: $9e
    ld h, b                                       ; $5049: $60
    ld c, $e1                                     ; $504a: $0e $e1
    ld b, h                                       ; $504c: $44
    and c                                         ; $504d: $a1
    ld e, $c0                                     ; $504e: $1e $c0
    pop hl                                        ; $5050: $e1
    rrca                                          ; $5051: $0f
    rst $38                                       ; $5052: $ff
    rlca                                          ; $5053: $07
    pop hl                                        ; $5054: $e1
    sbc c                                         ; $5055: $99
    pop hl                                        ; $5056: $e1
    cp a                                          ; $5057: $bf
    jp hl                                         ; $5058: $e9


    call nc, Call_077_72e9                        ; $5059: $d4 $e9 $72
    ei                                            ; $505c: $fb
    ret nz                                        ; $505d: $c0

    db $e3                                        ; $505e: $e3
    ret nz                                        ; $505f: $c0

    pop hl                                        ; $5060: $e1
    ret nc                                        ; $5061: $d0

    add sp, -$20                                  ; $5062: $e8 $e0
    ld a, a                                       ; $5064: $7f
    ldh [$d0], a                                  ; $5065: $e0 $d0
    ld [$0141], a                                 ; $5067: $ea $41 $01
    ret z                                         ; $506a: $c8

    and c                                         ; $506b: $a1
    ld a, a                                       ; $506c: $7f
    jp hl                                         ; $506d: $e9


    sbc d                                         ; $506e: $9a
    pop hl                                        ; $506f: $e1
    sub [hl]                                      ; $5070: $96
    db $e3                                        ; $5071: $e3
    ret nz                                        ; $5072: $c0

    ld [c], a                                     ; $5073: $e2
    db $fc                                        ; $5074: $fc
    add hl, sp                                    ; $5075: $39
    pop hl                                        ; $5076: $e1
    ld a, [c]                                     ; $5077: $f2
    sub b                                         ; $5078: $90
    add sp, $0f                                   ; $5079: $e8 $0f
    jp nc, $f2eb                                  ; $507b: $d2 $eb $f2

    xor $0f                                       ; $507e: $ee $0f
    rlca                                          ; $5080: $07
    di                                            ; $5081: $f3
    inc bc                                        ; $5082: $03
    db $f4                                        ; $5083: $f4
    add b                                         ; $5084: $80
    ld c, h                                       ; $5085: $4c
    ld l, c                                       ; $5086: $69
    and b                                         ; $5087: $a0
    db $ec                                        ; $5088: $ec
    pop bc                                        ; $5089: $c1
    add b                                         ; $508a: $80
    pop hl                                        ; $508b: $e1
    ccf                                           ; $508c: $3f
    pop af                                        ; $508d: $f1
    rra                                           ; $508e: $1f
    cp l                                          ; $508f: $bd
    pop af                                        ; $5090: $f1
    sub e                                         ; $5091: $93
    push hl                                       ; $5092: $e5
    cp $bf                                        ; $5093: $fe $bf
    db $fc                                        ; $5095: $fc
    sbc e                                         ; $5096: $9b
    db $ec                                        ; $5097: $ec
    and b                                         ; $5098: $a0
    jp Jump_077_7e7f                              ; $5099: $c3 $7f $7e


    ldh a, [$f0]                                  ; $509c: $f0 $f0
    rst $28                                       ; $509e: $ef
    ldh [$b8], a                                  ; $509f: $e0 $b8
    add b                                         ; $50a1: $80
    add b                                         ; $50a2: $80
    ld b, l                                       ; $50a3: $45
    jp hl                                         ; $50a4: $e9


    cp b                                          ; $50a5: $b8
    ld [hl+], a                                   ; $50a6: $22
    ld h, b                                       ; $50a7: $60
    ld b, b                                       ; $50a8: $40
    ld c, [hl]                                    ; $50a9: $4e
    rst $38                                       ; $50aa: $ff

jr_077_50ab:
    db $10                                        ; $50ab: $10
    ld [c], a                                     ; $50ac: $e2
    rra                                           ; $50ad: $1f
    cp $0f                                        ; $50ae: $fe $0f
    daa                                           ; $50b0: $27
    or $1f                                        ; $50b1: $f6 $1f
    or $53                                        ; $50b3: $f6 $53
    db $e3                                        ; $50b5: $e3
    ld hl, sp-$40                                 ; $50b6: $f8 $c0
    rst $08                                       ; $50b8: $cf
    cp $e0                                        ; $50b9: $fe $e0
    ld [hl], a                                    ; $50bb: $77
    add c                                         ; $50bc: $81
    db $eb                                        ; $50bd: $eb
    ldh a, [$c0]                                  ; $50be: $f0 $c0
    ld b, b                                       ; $50c0: $40
    ld c, c                                       ; $50c1: $49
    cp b                                          ; $50c2: $b8
    ret nc                                        ; $50c3: $d0

    add sp, -$01                                  ; $50c4: $e8 $ff
    rrca                                          ; $50c6: $0f
    ld sp, hl                                     ; $50c7: $f9
    db $d3                                        ; $50c8: $d3
    rrca                                          ; $50c9: $0f
    db $fc                                        ; $50ca: $fc
    rst $28                                       ; $50cb: $ef
    and b                                         ; $50cc: $a0
    cp $20                                        ; $50cd: $fe $20
    ld hl, sp+$42                                 ; $50cf: $f8 $42
    add l                                         ; $50d1: $85
    ccf                                           ; $50d2: $3f
    ldh a, [$fe]                                  ; $50d3: $f0 $fe
    or b                                          ; $50d5: $b0
    db $e3                                        ; $50d6: $e3
    cp $3f                                        ; $50d7: $fe $3f
    cp $1f                                        ; $50d9: $fe $1f
    db $fc                                        ; $50db: $fc
    rrca                                          ; $50dc: $0f
    push af                                       ; $50dd: $f5
    ei                                            ; $50de: $fb
    rra                                           ; $50df: $1f
    ld hl, sp+$31                                 ; $50e0: $f8 $31
    db $e3                                        ; $50e2: $e3
    db $fc                                        ; $50e3: $fc
    ccf                                           ; $50e4: $3f
    ld hl, sp+$3f                                 ; $50e5: $f8 $3f
    ld hl, sp-$41                                 ; $50e7: $f8 $bf
    ld h, a                                       ; $50e9: $67
    db $fc                                        ; $50ea: $fc
    rst $20                                       ; $50eb: $e7
    db $fc                                        ; $50ec: $fc
    ld c, a                                       ; $50ed: $4f
    ld hl, sp-$20                                 ; $50ee: $f8 $e0
    ld b, e                                       ; $50f0: $43
    ld h, c                                       ; $50f1: $61
    cp a                                          ; $50f2: $bf
    nop                                           ; $50f3: $00
    ld b, c                                       ; $50f4: $41
    nop                                           ; $50f5: $00
    inc bc                                        ; $50f6: $03
    nop                                           ; $50f7: $00
    rlca                                          ; $50f8: $07
    jp nz, $f820                                  ; $50f9: $c2 $20 $f8

    ld l, e                                       ; $50fc: $6b
    rrca                                          ; $50fd: $0f
    ld hl, sp-$46                                 ; $50fe: $f8 $ba
    pop hl                                        ; $5100: $e1
    inc bc                                        ; $5101: $03
    ld sp, $c785                                  ; $5102: $31 $85 $c7
    db $fc                                        ; $5105: $fc
    cp $e1                                        ; $5106: $fe $e1
    ld [hl], e                                    ; $5108: $73
    rst $08                                       ; $5109: $cf
    ld a, b                                       ; $510a: $78
    cp $e1                                        ; $510b: $fe $e1
    jp nz, $f121                                  ; $510d: $c2 $21 $f1

    rra                                           ; $5110: $1f
    ld sp, hl                                     ; $5111: $f9
    sbc $e0                                       ; $5112: $de $e0
    db $f4                                        ; $5114: $f4
    call c, $dae1                                 ; $5115: $dc $e1 $da
    ld [c], a                                     ; $5118: $e2
    rst $38                                       ; $5119: $ff
    db $e3                                        ; $511a: $e3
    ld h, c                                       ; $511b: $61
    adc a                                         ; $511c: $8f
    ld hl, sp-$71                                 ; $511d: $f8 $8f
    ld hl, sp-$1d                                 ; $511f: $f8 $e3
    rst $18                                       ; $5121: $df
    ldh a, [$c1]                                  ; $5122: $f0 $c1
    ld h, b                                       ; $5124: $60
    add d                                         ; $5125: $82
    jr nz, jr_077_50ab                            ; $5126: $20 $83

    ld h, d                                       ; $5128: $62
    rlca                                          ; $5129: $07
    cp $03                                        ; $512a: $fe $03
    db $fc                                        ; $512c: $fc
    cp $e1                                        ; $512d: $fe $e1
    ld e, e                                       ; $512f: $5b
    ld h, c                                       ; $5130: $61
    ld e, a                                       ; $5131: $5f
    ldh a, [rVBK]                                 ; $5132: $f0 $4f
    ld hl, sp+$4f                                 ; $5134: $f8 $4f
    ld hl, sp+$03                                 ; $5136: $f8 $03
    ld a, a                                       ; $5138: $7f
    ldh a, [$a8]                                  ; $5139: $f0 $a8
    ld h, c                                       ; $513b: $61
    ld c, c                                       ; $513c: $49
    ld h, b                                       ; $513d: $60
    and b                                         ; $513e: $a0
    ldh [$e0], a                                  ; $513f: $e0 $e0
    db $e3                                        ; $5141: $e3
    rst $08                                       ; $5142: $cf
    ld h, h                                       ; $5143: $64
    ld [hl], a                                    ; $5144: $77
    and b                                         ; $5145: $a0
    add l                                         ; $5146: $85
    ld e, a                                       ; $5147: $5f
    cp $e2                                        ; $5148: $fe $e2
    sbc a                                         ; $514a: $9f
    cp $e0                                        ; $514b: $fe $e0
    add b                                         ; $514d: $80
    ld b, b                                       ; $514e: $40
    ld a, [$4041]                                 ; $514f: $fa $41 $40
    add hl, hl                                    ; $5152: $29
    reti                                          ; $5153: $d9


    ld a, [bc]                                    ; $5154: $0a
    jr nc, jr_077_5183                            ; $5155: $30 $2c

    ld c, l                                       ; $5157: $4d
    ld b, b                                       ; $5158: $40
    dec hl                                        ; $5159: $2b
    cp b                                          ; $515a: $b8
    xor [hl]                                      ; $515b: $ae
    ldh [$f3], a                                  ; $515c: $e0 $f3
    ld b, b                                       ; $515e: $40
    cp $e9                                        ; $515f: $fe $e9
    nop                                           ; $5161: $00
    add hl, hl                                    ; $5162: $29
    cp b                                          ; $5163: $b8
    or $00                                        ; $5164: $f6 $00
    rst $38                                       ; $5166: $ff
    db $ed                                        ; $5167: $ed
    ld [hl], b                                    ; $5168: $70
    ld [hl+], a                                   ; $5169: $22
    rlca                                          ; $516a: $07
    ld h, a                                       ; $516b: $67
    rlca                                          ; $516c: $07
    ld [hl], b                                    ; $516d: $70
    ld h, $21                                     ; $516e: $26 $21
    ei                                            ; $5170: $fb
    rst $38                                       ; $5171: $ff
    ld c, $3b                                     ; $5172: $0e $3b
    and b                                         ; $5174: $a0
    ld [hl+], a                                   ; $5175: $22
    db $fd                                        ; $5176: $fd
    dec c                                         ; $5177: $0d
    cp $17                                        ; $5178: $fe $17
    cp [hl]                                       ; $517a: $be
    ret                                           ; $517b: $c9


    ret nz                                        ; $517c: $c0

    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
    ld b, d                                       ; $517f: $42
    rst $38                                       ; $5180: $ff
    jr c, @-$5e                                   ; $5181: $38 $a0

jr_077_5183:
    jr nz, jr_077_51a7                            ; $5183: $20 $22

    rst $18                                       ; $5185: $df
    rst $18                                       ; $5186: $df
    ret c                                         ; $5187: $d8

    scf                                           ; $5188: $37
    db $f4                                        ; $5189: $f4
    rrca                                          ; $518a: $0f
    dec a                                         ; $518b: $3d
    ldh [$cf], a                                  ; $518c: $e0 $cf
    ld b, b                                       ; $518e: $40
    rst $38                                       ; $518f: $ff
    ldh a, [rNR41]                                ; $5190: $f0 $20
    cp $f0                                        ; $5192: $fe $f0
    or $70                                        ; $5194: $f6 $70
    ld a, [$ee08]                                 ; $5196: $fa $08 $ee
    ld [hl-], a                                   ; $5199: $32
    ld b, b                                       ; $519a: $40
    ld b, h                                       ; $519b: $44
    ld hl, sp-$78                                 ; $519c: $f8 $88
    sub d                                         ; $519e: $92
    push hl                                       ; $519f: $e5
    ldh a, [$80]                                  ; $51a0: $f0 $80
    rst $08                                       ; $51a2: $cf
    rst $18                                       ; $51a3: $df
    add b                                         ; $51a4: $80
    cp b                                          ; $51a5: $b8
    add b                                         ; $51a6: $80

jr_077_51a7:
    rst $20                                       ; $51a7: $e7
    add b                                         ; $51a8: $80
    sub d                                         ; $51a9: $92
    dec b                                         ; $51aa: $05
    rrca                                          ; $51ab: $0f
    nop                                           ; $51ac: $00
    ld a, h                                       ; $51ad: $7c
    ld a, b                                       ; $51ae: $78
    inc bc                                        ; $51af: $03
    ret nz                                        ; $51b0: $c0

    jr z, jr_077_51b3                             ; $51b1: $28 $00

jr_077_51b3:
    ldh [rP1], a                                  ; $51b3: $e0 $00
    ld hl, sp+$00                                 ; $51b5: $f8 $00
    nop                                           ; $51b7: $00
    ld b, c                                       ; $51b8: $41
    adc [hl]                                      ; $51b9: $8e
    or l                                          ; $51ba: $b5
    ld b, c                                       ; $51bb: $41
    ret nz                                        ; $51bc: $c0

    ld a, a                                       ; $51bd: $7f
    pop bc                                        ; $51be: $c1
    cp $e2                                        ; $51bf: $fe $e2
    sub d                                         ; $51c1: $92
    add c                                         ; $51c2: $81
    ld c, a                                       ; $51c3: $4f
    pop hl                                        ; $51c4: $e1
    sbc h                                         ; $51c5: $9c
    ld h, h                                       ; $51c6: $64
    sbc l                                         ; $51c7: $9d
    call nz, Call_077_45c8                        ; $51c8: $c4 $c8 $45
    inc e                                         ; $51cb: $1c
    add h                                         ; $51cc: $84
    ld b, b                                       ; $51cd: $40
    ld b, a                                       ; $51ce: $47
    ld bc, $3cf7                                  ; $51cf: $01 $f7 $3c
    call nz, Call_077_7763                        ; $51d2: $c4 $63 $77
    add c                                         ; $51d5: $81
    rst $38                                       ; $51d6: $ff
    ld b, c                                       ; $51d7: $41
    cp $e2                                        ; $51d8: $fe $e2
    db $dd                                        ; $51da: $dd
    add b                                         ; $51db: $80
    db $dd                                        ; $51dc: $dd
    sbc d                                         ; $51dd: $9a
    ldh [$fd], a                                  ; $51de: $e0 $fd
    cp b                                          ; $51e0: $b8
    sub d                                         ; $51e1: $92
    ldh [$f0], a                                  ; $51e2: $e0 $f0
    add b                                         ; $51e4: $80
    sbc [hl]                                      ; $51e5: $9e
    add b                                         ; $51e6: $80
    add [hl]                                      ; $51e7: $86
    add b                                         ; $51e8: $80
    cp b                                          ; $51e9: $b8
    ret c                                         ; $51ea: $d8

    and l                                         ; $51eb: $a5
    ld c, b                                       ; $51ec: $48
    push bc                                       ; $51ed: $c5
    ld [de], a                                    ; $51ee: $12
    db $eb                                        ; $51ef: $eb
    rst $38                                       ; $51f0: $ff
    nop                                           ; $51f1: $00
    ld b, b                                       ; $51f2: $40
    sbc b                                         ; $51f3: $98
    ldh [rLCDC], a                                ; $51f4: $e0 $40
    jp c, Jump_077_423b                           ; $51f6: $da $3b $42

    and b                                         ; $51f9: $a0
    adc b                                         ; $51fa: $88
    jr nz, jr_077_521e                            ; $51fb: $20 $21

    ccf                                           ; $51fd: $3f
    db $e3                                        ; $51fe: $e3
    pop bc                                        ; $51ff: $c1
    ret nz                                        ; $5200: $c0

    rst $38                                       ; $5201: $ff
    ld b, a                                       ; $5202: $47
    or b                                          ; $5203: $b0
    rst $38                                       ; $5204: $ff
    adc a                                         ; $5205: $8f
    inc e                                         ; $5206: $1c
    ld b, b                                       ; $5207: $40
    ld c, e                                       ; $5208: $4b
    ld hl, $6358                                  ; $5209: $21 $58 $63
    ld c, $8b                                     ; $520c: $0e $8b
    ld h, d                                       ; $520e: $62
    sbc l                                         ; $520f: $9d
    nop                                           ; $5210: $00
    adc b                                         ; $5211: $88
    jr nz, @-$7d                                  ; $5212: $20 $81

    rst $38                                       ; $5214: $ff
    pop bc                                        ; $5215: $c1
    db $fc                                        ; $5216: $fc
    ldh [$fe], a                                  ; $5217: $e0 $fe
    pop hl                                        ; $5219: $e1
    inc bc                                        ; $521a: $03
    sbc $4a                                       ; $521b: $de $4a
    ld h, b                                       ; $521d: $60

jr_077_521e:
    ld b, d                                       ; $521e: $42
    cp $82                                        ; $521f: $fe $82
    add b                                         ; $5221: $80
    ld [$8020], sp                                ; $5222: $08 $20 $80
    ld hl, sp+$14                                 ; $5225: $f8 $14
    xor h                                         ; $5227: $ac
    add $e8                                       ; $5228: $c6 $e8
    and e                                         ; $522a: $a3
    rra                                           ; $522b: $1f
    ld a, h                                       ; $522c: $7c
    add $f0                                       ; $522d: $c6 $f0
    ld e, $e0                                     ; $522f: $1e $e0
    add b                                         ; $5231: $80
    xor c                                         ; $5232: $a9
    db $ec                                        ; $5233: $ec
    ld b, c                                       ; $5234: $41
    cp $20                                        ; $5235: $fe $20
    ld h, e                                       ; $5237: $63
    jr nz, jr_077_5279                            ; $5238: $20 $3f

    jr nc, jr_077_527b                            ; $523a: $30 $3f

    jr c, @+$41                                   ; $523c: $38 $3f

    sub d                                         ; $523e: $92
    xor e                                         ; $523f: $ab
    rst $38                                       ; $5240: $ff
    rst $20                                       ; $5241: $e7
    ld a, [c]                                     ; $5242: $f2
    ld b, b                                       ; $5243: $40
    dec a                                         ; $5244: $3d
    ld l, a                                       ; $5245: $6f
    ld b, b                                       ; $5246: $40
    rrca                                          ; $5247: $0f
    rrca                                          ; $5248: $0f
    add b                                         ; $5249: $80
    ld a, a                                       ; $524a: $7f
    cp d                                          ; $524b: $ba
    jp nc, Jump_000_1f60                          ; $524c: $d2 $60 $1f

    add a                                         ; $524f: $87
    jr nz, @-$20                                  ; $5250: $20 $de

    rst $38                                       ; $5252: $ff
    inc a                                         ; $5253: $3c
    dec [hl]                                      ; $5254: $35
    add b                                         ; $5255: $80
    db $fc                                        ; $5256: $fc
    ld d, $33                                     ; $5257: $16 $33
    ret nz                                        ; $5259: $c0

    add a                                         ; $525a: $87
    db $fc                                        ; $525b: $fc
    jr nz, jr_077_52bf                            ; $525c: $20 $61

    ld b, $5e                                     ; $525e: $06 $5e
    ld h, d                                       ; $5260: $62
    ld h, b                                       ; $5261: $60
    ld h, c                                       ; $5262: $61
    inc bc                                        ; $5263: $03
    adc e                                         ; $5264: $8b
    ld b, b                                       ; $5265: $40
    ld l, l                                       ; $5266: $6d
    ld hl, $8c8f                                  ; $5267: $21 $8f $8c
    db $f4                                        ; $526a: $f4
    ld h, e                                       ; $526b: $63
    ldh a, [$67]                                  ; $526c: $f0 $67
    reti                                          ; $526e: $d9


    db $e4                                        ; $526f: $e4
    ld l, [hl]                                    ; $5270: $6e
    inc hl                                        ; $5271: $23
    pop hl                                        ; $5272: $e1
    or h                                          ; $5273: $b4
    ld h, b                                       ; $5274: $60
    rst $28                                       ; $5275: $ef
    ld a, a                                       ; $5276: $7f
    ld a, a                                       ; $5277: $7f
    add a                                         ; $5278: $87

jr_077_5279:
    rst $38                                       ; $5279: $ff
    and [hl]                                      ; $527a: $a6

jr_077_527b:
    add b                                         ; $527b: $80
    cp $f3                                        ; $527c: $fe $f3
    cp $06                                        ; $527e: $fe $06
    ld d, h                                       ; $5280: $54
    and b                                         ; $5281: $a0
    ld a, h                                       ; $5282: $7c
    rst $30                                       ; $5283: $f7
    adc h                                         ; $5284: $8c
    add b                                         ; $5285: $80
    ld e, h                                       ; $5286: $5c
    and c                                         ; $5287: $a1
    cp $e1                                        ; $5288: $fe $e1
    pop hl                                        ; $528a: $e1
    ld b, c                                       ; $528b: $41
    ld h, h                                       ; $528c: $64
    and c                                         ; $528d: $a1
    nop                                           ; $528e: $00
    and [hl]                                      ; $528f: $a6
    and d                                         ; $5290: $a2
    ld h, c                                       ; $5291: $61
    inc h                                         ; $5292: $24
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    db $fc                                        ; $52a3: $fc
    nop                                           ; $52a4: $00
    di                                            ; $52a5: $f3
    nop                                           ; $52a6: $00
    rst $28                                       ; $52a7: $ef
    nop                                           ; $52a8: $00
    rst $18                                       ; $52a9: $df
    call z, $8800                                 ; $52aa: $cc $00 $88
    nop                                           ; $52ad: $00
    sbc b                                         ; $52ae: $98
    cp $e0                                        ; $52af: $fe $e0
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    di                                            ; $52b3: $f3
    rst $38                                       ; $52b4: $ff
    nop                                           ; $52b5: $00
    cp $e9                                        ; $52b6: $fe $e9
    rst $38                                       ; $52b8: $ff
    db $ed                                        ; $52b9: $ed
    cp h                                          ; $52ba: $bc
    nop                                           ; $52bb: $00
    rst $18                                       ; $52bc: $df
    nop                                           ; $52bd: $00
    ld [hl], a                                    ; $52be: $77

jr_077_52bf:
    ldh [rP1], a                                  ; $52bf: $e0 $00
    db $ed                                        ; $52c1: $ed
    cp $e0                                        ; $52c2: $fe $e0
    rst $30                                       ; $52c4: $f7
    nop                                           ; $52c5: $00
    ld hl, sp-$2a                                 ; $52c6: $f8 $d6
    ld [$b8e8], a                                 ; $52c8: $ea $e8 $b8
    db $e3                                        ; $52cb: $e3
    jp nz, $f2eb                                  ; $52cc: $c2 $eb $f2

    xor $01                                       ; $52cf: $ee $01
    sbc b                                         ; $52d1: $98
    push hl                                       ; $52d2: $e5
    cp a                                          ; $52d3: $bf
    ccf                                           ; $52d4: $3f
    jp z, Jump_077_75ff                           ; $52d5: $ca $ff $75

    rst $38                                       ; $52d8: $ff
    adc d                                         ; $52d9: $8a
    ld a, a                                       ; $52da: $7f
    xor d                                         ; $52db: $aa
    inc sp                                        ; $52dc: $33
    nop                                           ; $52dd: $00
    ld de, $00fb                                  ; $52de: $11 $fb $00
    add hl, de                                    ; $52e1: $19
    cp $e0                                        ; $52e2: $fe $e0
    db $fd                                        ; $52e4: $fd
    ret nz                                        ; $52e5: $c0

    dec sp                                        ; $52e6: $3b
    ldh a, [rIF]                                  ; $52e7: $f0 $0f
    rst $00                                       ; $52e9: $c7
    ld hl, sp+$07                                 ; $52ea: $f8 $07
    db $fc                                        ; $52ec: $fc
    jp nc, $d0eb                                  ; $52ed: $d2 $eb $d0

    push hl                                       ; $52f0: $e5
    jp nc, Jump_077_7fe5                          ; $52f1: $d2 $e5 $7f

    cp [hl]                                       ; $52f4: $be
    cp [hl]                                       ; $52f5: $be
    ret nc                                        ; $52f6: $d0

    db $e3                                        ; $52f7: $e3
    reti                                          ; $52f8: $d9


    ret nz                                        ; $52f9: $c0

    dec a                                         ; $52fa: $3d
    ldh a, [$0b]                                  ; $52fb: $f0 $0b
    jp nc, $03e0                                  ; $52fd: $d2 $e0 $03

    ld sp, hl                                     ; $5300: $f9
    cp $88                                        ; $5301: $fe $88
    push hl                                       ; $5303: $e5
    ld b, b                                       ; $5304: $40
    and $01                                       ; $5305: $e6 $01
    ccf                                           ; $5307: $3f
    ld bc, $01cf                                  ; $5308: $01 $cf $01
    cp a                                          ; $530b: $bf
    rst $30                                       ; $530c: $f7
    inc bc                                        ; $530d: $03
    inc a                                         ; $530e: $3c
    rrca                                          ; $530f: $0f
    rra                                           ; $5310: $1f
    dec bc                                        ; $5311: $0b
    cp $e0                                        ; $5312: $fe $e0
    dec b                                         ; $5314: $05
    rst $38                                       ; $5315: $ff
    ld a, a                                       ; $5316: $7f
    cp [hl]                                       ; $5317: $be
    ld a, $d5                                     ; $5318: $3e $d5
    ld a, a                                       ; $531a: $7f
    rst $38                                       ; $531b: $ff
    add b                                         ; $531c: $80
    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    inc bc                                        ; $531f: $03
    rst $38                                       ; $5320: $ff
    cp a                                          ; $5321: $bf
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    xor $ff                                       ; $5324: $ee $ff
    inc l                                         ; $5326: $2c
    rst $38                                       ; $5327: $ff
    inc bc                                        ; $5328: $03
    cp $23                                        ; $5329: $fe $23
    cp $f1                                        ; $532b: $fe $f1
    rst $38                                       ; $532d: $ff
    add hl, de                                    ; $532e: $19
    rst $38                                       ; $532f: $ff
    rst $38                                       ; $5330: $ff
    db $fd                                        ; $5331: $fd
    rst $38                                       ; $5332: $ff
    db $fc                                        ; $5333: $fc
    rst $38                                       ; $5334: $ff
    cp $77                                        ; $5335: $fe $77
    rst $38                                       ; $5337: $ff
    daa                                           ; $5338: $27
    cp $48                                        ; $5339: $fe $48
    db $e4                                        ; $533b: $e4
    ret nz                                        ; $533c: $c0

    inc a                                         ; $533d: $3c
    ld hl, sp+$38                                 ; $533e: $f8 $38
    add sp, $78                                   ; $5340: $e8 $78
    ret z                                         ; $5342: $c8

    ei                                            ; $5343: $fb
    ld hl, sp-$58                                 ; $5344: $f8 $a8
    ld [bc], a                                    ; $5346: $02
    ldh [$03], a                                  ; $5347: $e0 $03
    rst $38                                       ; $5349: $ff
    inc c                                         ; $534a: $0c
    rst $38                                       ; $534b: $ff
    inc d                                         ; $534c: $14
    rst $38                                       ; $534d: $ff
    rst $18                                       ; $534e: $df
    inc d                                         ; $534f: $14
    cp a                                          ; $5350: $bf
    ld [hl-], a                                   ; $5351: $32
    rst $38                                       ; $5352: $ff
    ld d, d                                       ; $5353: $52
    rst $38                                       ; $5354: $ff
    ld c, e                                       ; $5355: $4b
    cp $b0                                        ; $5356: $fe $b0
    ld [c], a                                     ; $5358: $e2
    add e                                         ; $5359: $83
    db $fc                                        ; $535a: $fc
    adc a                                         ; $535b: $8f
    cp a                                          ; $535c: $bf
    adc e                                         ; $535d: $8b
    rst $38                                       ; $535e: $ff
    db $eb                                        ; $535f: $eb
    ld l, a                                       ; $5360: $6f
    rst $38                                       ; $5361: $ff
    sub l                                         ; $5362: $95
    rst $38                                       ; $5363: $ff
    adc l                                         ; $5364: $8d
    or d                                          ; $5365: $b2
    db $eb                                        ; $5366: $eb
    rst $38                                       ; $5367: $ff
    ld a, b                                       ; $5368: $78
    or d                                          ; $5369: $b2
    db $eb                                        ; $536a: $eb
    ld a, e                                       ; $536b: $7b
    db $fd                                        ; $536c: $fd
    or a                                          ; $536d: $b7
    ld hl, sp-$3e                                 ; $536e: $f8 $c2
    ret nz                                        ; $5370: $c0

    ccf                                           ; $5371: $3f
    ld hl, sp+$3c                                 ; $5372: $f8 $3c
    or d                                          ; $5374: $b2
    ld [c], a                                     ; $5375: $e2
    ei                                            ; $5376: $fb
    ld hl, sp+$48                                 ; $5377: $f8 $48
    add sp, -$3e                                  ; $5379: $e8 $c2
    jr nc, @+$01                                  ; $537b: $30 $ff

    ld c, b                                       ; $537d: $48
    db $fc                                        ; $537e: $fc
    and h                                         ; $537f: $a4
    cp a                                          ; $5380: $bf
    cp $92                                        ; $5381: $fe $92
    rst $38                                       ; $5383: $ff
    call $b1ff                                    ; $5384: $cd $ff $b1
    ld h, b                                       ; $5387: $60
    ld [c], a                                     ; $5388: $e2
    inc bc                                        ; $5389: $03
    or a                                          ; $538a: $b7
    db $fc                                        ; $538b: $fc
    rrca                                          ; $538c: $0f
    ccf                                           ; $538d: $3f
    ld h, d                                       ; $538e: $62
    ld [c], a                                     ; $538f: $e2
    sbc a                                         ; $5390: $9f
    add l                                         ; $5391: $85
    or b                                          ; $5392: $b0
    call z, $ff01                                 ; $5393: $cc $01 $ff
    ccf                                           ; $5396: $3f
    dec b                                         ; $5397: $05
    rst $38                                       ; $5398: $ff
    ld c, l                                       ; $5399: $4d
    ld a, $3f                                     ; $539a: $3e $3f
    cp [hl]                                       ; $539c: $be
    rra                                           ; $539d: $1f
    rst $38                                       ; $539e: $ff
    cp [hl]                                       ; $539f: $be
    rrca                                          ; $53a0: $0f
    rst $38                                       ; $53a1: $ff
    inc sp                                        ; $53a2: $33
    rst $18                                       ; $53a3: $df
    ld a, [c]                                     ; $53a4: $f2
    rra                                           ; $53a5: $1f
    pop af                                        ; $53a6: $f1
    rst $38                                       ; $53a7: $ff
    rst $38                                       ; $53a8: $ff
    ld a, b                                       ; $53a9: $78
    add a                                         ; $53aa: $87
    cp $47                                        ; $53ab: $fe $47
    cp l                                          ; $53ad: $bd
    add e                                         ; $53ae: $83
    ld a, [hl]                                    ; $53af: $7e
    rst $38                                       ; $53b0: $ff
    dec bc                                        ; $53b1: $0b

jr_077_53b2:
    rst $38                                       ; $53b2: $ff
    rra                                           ; $53b3: $1f
    rst $38                                       ; $53b4: $ff
    rst $38                                       ; $53b5: $ff
    cp $ff                                        ; $53b6: $fe $ff
    and h                                         ; $53b8: $a4
    rst $38                                       ; $53b9: $ff
    db $fd                                        ; $53ba: $fd
    or a                                          ; $53bb: $b7
    ld sp, hl                                     ; $53bc: $f9
    ld a, a                                       ; $53bd: $7f
    ld sp, hl                                     ; $53be: $f9
    rst $08                                       ; $53bf: $cf
    rst $38                                       ; $53c0: $ff
    ld e, $ff                                     ; $53c1: $1e $ff
    rst $38                                       ; $53c3: $ff
    ei                                            ; $53c4: $fb
    rst $38                                       ; $53c5: $ff
    jp hl                                         ; $53c6: $e9


    rst $38                                       ; $53c7: $ff
    sub c                                         ; $53c8: $91
    rst $38                                       ; $53c9: $ff
    pop hl                                        ; $53ca: $e1
    rst $38                                       ; $53cb: $ff
    db $fc                                        ; $53cc: $fc
    ld c, b                                       ; $53cd: $48
    rst $38                                       ; $53ce: $ff
    ld c, b                                       ; $53cf: $48
    ldh a, [$50]                                  ; $53d0: $f0 $50
    db $fd                                        ; $53d2: $fd
    sub b                                         ; $53d3: $90
    rst $18                                       ; $53d4: $df
    db $fd                                        ; $53d5: $fd
    sub b                                         ; $53d6: $90
    rst $30                                       ; $53d7: $f7
    jr nz, jr_077_53b2                            ; $53d8: $20 $d8

    cp [hl]                                       ; $53da: $be
    ret nz                                        ; $53db: $c0

    rst $38                                       ; $53dc: $ff
    ld c, h                                       ; $53dd: $4c
    rst $38                                       ; $53de: $ff
    rst $38                                       ; $53df: $ff
    inc h                                         ; $53e0: $24
    rst $38                                       ; $53e1: $ff
    ld hl, $11ff                                  ; $53e2: $21 $ff $11
    rst $38                                       ; $53e5: $ff
    jr @+$01                                      ; $53e6: $18 $ff

jr_077_53e8:
    rst $38                                       ; $53e8: $ff
    ld d, $ff                                     ; $53e9: $16 $ff
    ld [$0fff], sp                                ; $53eb: $08 $ff $0f
    rst $38                                       ; $53ee: $ff
    call $feff                                    ; $53ef: $cd $ff $fe
    rst $38                                       ; $53f2: $ff
    cp $87                                        ; $53f3: $fe $87
    cp $1f                                        ; $53f5: $fe $1f
    rst $38                                       ; $53f7: $ff
    ld [hl], e                                    ; $53f8: $73
    cp a                                          ; $53f9: $bf
    rst $38                                       ; $53fa: $ff
    ld [hl-], a                                   ; $53fb: $32
    rst $18                                       ; $53fc: $df
    pop af                                        ; $53fd: $f1
    rrca                                          ; $53fe: $0f
    ld hl, sp-$4e                                 ; $53ff: $f8 $b2
    add sp, -$04                                  ; $5401: $e8 $fc
    db $fc                                        ; $5403: $fc
    inc d                                         ; $5404: $14
    pop bc                                        ; $5405: $c1
    or d                                          ; $5406: $b2
    and $d1                                       ; $5407: $e6 $d1
    rst $38                                       ; $5409: $ff
    ld sp, $c1ff                                  ; $540a: $31 $ff $c1
    rst $38                                       ; $540d: $ff
    db $ed                                        ; $540e: $ed
    ld bc, $e0b0                                  ; $540f: $01 $b0 $e0
    ld d, b                                       ; $5412: $50
    ldh a, [$b2]                                  ; $5413: $f0 $b2
    ldh [$fd], a                                  ; $5415: $e0 $fd
    jr nc, jr_077_53e8                            ; $5417: $30 $cf

    ei                                            ; $5419: $fb
    ld hl, sp+$04                                 ; $541a: $f8 $04
    and b                                         ; $541c: $a0
    pop bc                                        ; $541d: $c1
    ld d, d                                       ; $541e: $52
    rst $38                                       ; $541f: $ff
    ld e, a                                       ; $5420: $5f
    rst $38                                       ; $5421: $ff
    ld c, b                                       ; $5422: $48
    cp $ac                                        ; $5423: $fe $ac
    ldh [$3b], a                                  ; $5425: $e0 $3b
    rst $38                                       ; $5427: $ff
    ld hl, $1ffe                                  ; $5428: $21 $fe $1f
    ld hl, sp+$0f                                 ; $542b: $f8 $0f
    ei                                            ; $542d: $fb
    cp a                                          ; $542e: $bf
    add l                                         ; $542f: $85
    or b                                          ; $5430: $b0
    ldh [rIE], a                                  ; $5431: $e0 $ff
    cp $ab                                        ; $5433: $fe $ab
    rst $38                                       ; $5435: $ff
    ld [hl], e                                    ; $5436: $73
    db $fd                                        ; $5437: $fd
    sbc a                                         ; $5438: $9f
    ld h, d                                       ; $5439: $62
    ldh [rIF], a                                  ; $543a: $e0 $0f
    ld hl, sp-$02                                 ; $543c: $f8 $fe
    inc bc                                        ; $543e: $03
    cp $03                                        ; $543f: $fe $03
    di                                            ; $5441: $f3
    db $fc                                        ; $5442: $fc
    rlca                                          ; $5443: $07
    cp $e1                                        ; $5444: $fe $e1
    sbc l                                         ; $5446: $9d
    ret nz                                        ; $5447: $c0

    ld [bc], a                                    ; $5448: $02
    rst $38                                       ; $5449: $ff
    inc b                                         ; $544a: $04
    rrca                                          ; $544b: $0f
    ld a, a                                       ; $544c: $7f
    ld hl, sp-$29                                 ; $544d: $f8 $d7
    db $fd                                        ; $544f: $fd
    daa                                           ; $5450: $27
    cp $2f                                        ; $5451: $fe $2f
    cp $53                                        ; $5453: $fe $53
    ldh [$dd], a                                  ; $5455: $e0 $dd
    ccf                                           ; $5457: $3f
    ei                                            ; $5458: $fb
    ldh [$73], a                                  ; $5459: $e0 $73
    rst $38                                       ; $545b: $ff
    ld a, a                                       ; $545c: $7f
    or b                                          ; $545d: $b0
    and d                                         ; $545e: $a2
    jr nz, @+$01                                  ; $545f: $20 $ff

    ei                                            ; $5461: $fb
    pop hl                                        ; $5462: $e1
    rra                                           ; $5463: $1f
    ld sp, $83c0                                  ; $5464: $31 $c0 $83
    rst $38                                       ; $5467: $ff
    rst $38                                       ; $5468: $ff
    ld bc, $fffe                                  ; $5469: $01 $fe $ff
    inc bc                                        ; $546c: $03
    db $fd                                        ; $546d: $fd
    rrca                                          ; $546e: $0f
    pop af                                        ; $546f: $f1
    rst $38                                       ; $5470: $ff
    pop af                                        ; $5471: $f1
    rst $38                                       ; $5472: $ff
    pop hl                                        ; $5473: $e1
    sbc a                                         ; $5474: $9f
    rst $38                                       ; $5475: $ff
    db $e3                                        ; $5476: $e3
    rst $38                                       ; $5477: $ff
    di                                            ; $5478: $f3
    ld a, $c5                                     ; $5479: $3e $c5
    pop hl                                        ; $547b: $e1
    cp l                                          ; $547c: $bd
    ldh [$fe], a                                  ; $547d: $e0 $fe
    db $fd                                        ; $547f: $fd
    add c                                         ; $5480: $81
    inc de                                        ; $5481: $13
    ret nz                                        ; $5482: $c0

    inc bc                                        ; $5483: $03
    cp $83                                        ; $5484: $fe $83
    cp $f8                                        ; $5486: $fe $f8
    rrca                                          ; $5488: $0f
    ccf                                           ; $5489: $3f
    ld hl, sp+$0f                                 ; $548a: $f8 $0f
    db $fc                                        ; $548c: $fc
    rlca                                          ; $548d: $07
    cp $03                                        ; $548e: $fe $03
    inc b                                         ; $5490: $04
    ret nz                                        ; $5491: $c0

    ld a, b                                       ; $5492: $78
    and d                                         ; $5493: $a2
    ld d, l                                       ; $5494: $55
    rla                                           ; $5495: $17
    or d                                          ; $5496: $b2
    ld [c], a                                     ; $5497: $e2
    ld a, a                                       ; $5498: $7f
    adc h                                         ; $5499: $8c
    pop hl                                        ; $549a: $e1
    ld a, a                                       ; $549b: $7f
    inc a                                         ; $549c: $3c
    ldh [$73], a                                  ; $549d: $e0 $73
    or d                                          ; $549f: $b2
    db $ec                                        ; $54a0: $ec
    db $fd                                        ; $54a1: $fd
    rst $38                                       ; $54a2: $ff
    or d                                          ; $54a3: $b2
    db $e3                                        ; $54a4: $e3
    di                                            ; $54a5: $f3
    rst $38                                       ; $54a6: $ff
    ld [c], a                                     ; $54a7: $e2
    rst $38                                       ; $54a8: $ff
    rst $20                                       ; $54a9: $e7
    db $fd                                        ; $54aa: $fd
    ld a, a                                       ; $54ab: $7f
    rst $28                                       ; $54ac: $ef
    inc a                                         ; $54ad: $3c
    rst $38                                       ; $54ae: $ff
    jr c, jr_077_54b4                             ; $54af: $38 $03

    cp $01                                        ; $54b1: $fe $01
    add hl, sp                                    ; $54b3: $39

jr_077_54b4:
    pop hl                                        ; $54b4: $e1
    ld a, [hl]                                    ; $54b5: $7e
    or h                                          ; $54b6: $b4
    ldh [$03], a                                  ; $54b7: $e0 $03
    cp $c7                                        ; $54b9: $fe $c7
    db $fc                                        ; $54bb: $fc
    rst $38                                       ; $54bc: $ff
    inc a                                         ; $54bd: $3c
    or h                                          ; $54be: $b4
    jp hl                                         ; $54bf: $e9


    db $f4                                        ; $54c0: $f4
    or b                                          ; $54c1: $b0
    rst $20                                       ; $54c2: $e7
    or l                                          ; $54c3: $b5
    ret nz                                        ; $54c4: $c0

    ld a, a                                       ; $54c5: $7f
    or b                                          ; $54c6: $b0
    db $e4                                        ; $54c7: $e4
    ld [bc], a                                    ; $54c8: $02
    rst $38                                       ; $54c9: $ff
    ld [bc], a                                    ; $54ca: $02
    rst $30                                       ; $54cb: $f7
    ld a, a                                       ; $54cc: $7f
    dec b                                         ; $54cd: $05
    rst $28                                       ; $54ce: $ef
    inc b                                         ; $54cf: $04
    rst $08                                       ; $54d0: $cf
    ld [bc], a                                    ; $54d1: $02
    adc c                                         ; $54d2: $89
    ld bc, $a200                                  ; $54d3: $01 $00 $a2
    ld a, [de]                                    ; $54d6: $1a
    ld c, [hl]                                    ; $54d7: $4e
    pop hl                                        ; $54d8: $e1
    ccf                                           ; $54d9: $3f
    cp $e2                                        ; $54da: $fe $e2
    rst $38                                       ; $54dc: $ff
    ccf                                           ; $54dd: $3f
    rst $38                                       ; $54de: $ff
    ldh [$f0], a                                  ; $54df: $e0 $f0
    add b                                         ; $54e1: $80
    db $fd                                        ; $54e2: $fd
    db $eb                                        ; $54e3: $eb
    push hl                                       ; $54e4: $e5
    ld a, $c7                                     ; $54e5: $3e $c7
    and b                                         ; $54e7: $a0
    ld hl, sp-$02                                 ; $54e8: $f8 $fe
    db $e4                                        ; $54ea: $e4
    cp l                                          ; $54eb: $bd
    and b                                         ; $54ec: $a0
    db $e3                                        ; $54ed: $e3
    ld a, [hl]                                    ; $54ee: $7e
    db $fc                                        ; $54ef: $fc
    rst $38                                       ; $54f0: $ff
    inc e                                         ; $54f1: $1c
    rst $38                                       ; $54f2: $ff
    add h                                         ; $54f3: $84
    rst $38                                       ; $54f4: $ff
    ld a, h                                       ; $54f5: $7c
    cp $f2                                        ; $54f6: $fe $f2
    cp $ff                                        ; $54f8: $fe $ff
    cp d                                          ; $54fa: $ba
    db $fc                                        ; $54fb: $fc
    inc h                                         ; $54fc: $24
    db $fc                                        ; $54fd: $fc
    ld c, h                                       ; $54fe: $4c
    rst $38                                       ; $54ff: $ff
    ld a, a                                       ; $5500: $7f
    ld a, a                                       ; $5501: $7f
    ld d, [hl]                                    ; $5502: $56
    ret nz                                        ; $5503: $c0

    ld [c], a                                     ; $5504: $e2
    ccf                                           ; $5505: $3f
    rra                                           ; $5506: $1f
    rst $38                                       ; $5507: $ff
    ld [c], a                                     ; $5508: $e2
    rrca                                          ; $5509: $0f
    rla                                           ; $550a: $17
    ldh [$f0], a                                  ; $550b: $e0 $f0
    inc de                                        ; $550d: $13
    ldh [$f9], a                                  ; $550e: $e0 $f9
    pop af                                        ; $5510: $f1
    jp nc, $b3e2                                  ; $5511: $d2 $e2 $b3

    pop hl                                        ; $5514: $e1
    ld [$fcfc], sp                                ; $5515: $08 $fc $fc
    rst $38                                       ; $5518: $ff
    db $e4                                        ; $5519: $e4
    rst $38                                       ; $551a: $ff
    rst $38                                       ; $551b: $ff
    ld [hl], h                                    ; $551c: $74
    db $fc                                        ; $551d: $fc
    ld c, b                                       ; $551e: $48
    ld hl, sp-$68                                 ; $551f: $f8 $98
    ld hl, sp-$10                                 ; $5521: $f8 $f0
    ei                                            ; $5523: $fb
    ld hl, sp-$20                                 ; $5524: $f8 $e0
    or b                                          ; $5526: $b0
    add c                                         ; $5527: $81
    pop hl                                        ; $5528: $e1
    ld bc, $03ee                                  ; $5529: $01 $ee $03
    xor $df                                       ; $552c: $ee $df
    inc bc                                        ; $552e: $03
    or $03                                        ; $552f: $f6 $03
    ld sp, hl                                     ; $5531: $f9
    ld bc, $e08c                                  ; $5532: $01 $8c $e0
    rra                                           ; $5535: $1f
    rst $38                                       ; $5536: $ff
    cp a                                          ; $5537: $bf
    rra                                           ; $5538: $1f
    rrca                                          ; $5539: $0f
    rrca                                          ; $553a: $0f
    di                                            ; $553b: $f3
    rst $38                                       ; $553c: $ff
    db $10                                        ; $553d: $10
    ld a, c                                       ; $553e: $79
    add b                                         ; $553f: $80
    ld [bc], a                                    ; $5540: $02
    ld a, [$e383]                                 ; $5541: $fa $83 $e3
    rst $08                                       ; $5544: $cf
    ld b, c                                       ; $5545: $41
    and b                                         ; $5546: $a0
    ret nz                                        ; $5547: $c0

    rst $38                                       ; $5548: $ff
    ret nz                                        ; $5549: $c0

    ccf                                           ; $554a: $3f
    ldh [$7b], a                                  ; $554b: $e0 $7b
    ccf                                           ; $554d: $3f
    ldh [$72], a                                  ; $554e: $e0 $72
    db $e4                                        ; $5550: $e4
    rra                                           ; $5551: $1f
    db $fc                                        ; $5552: $fc
    rrca                                          ; $5553: $0f
    ld sp, hl                                     ; $5554: $f9
    ret c                                         ; $5555: $d8

    ret nz                                        ; $5556: $c0

    ei                                            ; $5557: $fb
    ld a, [$420f]                                 ; $5558: $fa $0f $42
    add b                                         ; $555b: $80
    ldh a, [rIE]                                  ; $555c: $f0 $ff
    ldh [$f8], a                                  ; $555e: $e0 $f8
    ld hl, sp-$29                                 ; $5560: $f8 $d7
    ld h, l                                       ; $5562: $65
    db $fc                                        ; $5563: $fc
    add e                                         ; $5564: $83
    ld [hl], a                                    ; $5565: $77
    ret nz                                        ; $5566: $c0

    inc b                                         ; $5567: $04
    ld l, $c0                                     ; $5568: $2e $c0
    ccf                                           ; $556a: $3f
    rrca                                          ; $556b: $0f
    set 7, a                                      ; $556c: $cb $ff
    rrca                                          ; $556e: $0f
    ret nz                                        ; $556f: $c0

    db $ec                                        ; $5570: $ec
    ldh [$fe], a                                  ; $5571: $e0 $fe
    ldh [$c0], a                                  ; $5573: $e0 $c0
    jp hl                                         ; $5575: $e9


    rra                                           ; $5576: $1f
    rst $38                                       ; $5577: $ff
    and c                                         ; $5578: $a1
    rrca                                          ; $5579: $0f
    ret nz                                        ; $557a: $c0

    add sp, -$1e                                  ; $557b: $e8 $e2
    ldh [$c0], a                                  ; $557d: $e0 $c0
    jp hl                                         ; $557f: $e9


    nop                                           ; $5580: $00
    add b                                         ; $5581: $80
    add b                                         ; $5582: $80
    cp $f3                                        ; $5583: $fe $f3
    db $fc                                        ; $5585: $fc
    rst $38                                       ; $5586: $ff
    add b                                         ; $5587: $80
    di                                            ; $5588: $f3
    add b                                         ; $5589: $80
    rst $28                                       ; $558a: $ef
    add b                                         ; $558b: $80
    call z, $8880                                 ; $558c: $cc $80 $88
    ei                                            ; $558f: $fb
    add b                                         ; $5590: $80
    sbc b                                         ; $5591: $98
    cp $e0                                        ; $5592: $fe $e0
    cp h                                          ; $5594: $bc
    add b                                         ; $5595: $80
    rst $18                                       ; $5596: $df
    add b                                         ; $5597: $80
    ldh [$f7], a                                  ; $5598: $e0 $f7
    add b                                         ; $559a: $80
    db $ed                                        ; $559b: $ed
    add b                                         ; $559c: $80
    ld b, b                                       ; $559d: $40
    add l                                         ; $559e: $85
    dec a                                         ; $559f: $3d
    nop                                           ; $55a0: $00
    ei                                            ; $55a1: $fb
    nop                                           ; $55a2: $00
    ld [hl], a                                    ; $55a3: $77
    rlca                                          ; $55a4: $07
    nop                                           ; $55a5: $00
    or a                                          ; $55a6: $b7
    ld hl, sp+$63                                 ; $55a7: $f8 $63
    inc bc                                        ; $55a9: $03
    rst $38                                       ; $55aa: $ff
    inc [hl]                                      ; $55ab: $34
    ld a, b                                       ; $55ac: $78
    and b                                         ; $55ad: $a0
    sbc a                                         ; $55ae: $9f
    and h                                         ; $55af: $a4
    rst $38                                       ; $55b0: $ff
    sub h                                         ; $55b1: $94
    rst $38                                       ; $55b2: $ff
    adc $10                                       ; $55b3: $ce $10
    and h                                         ; $55b5: $a4
    ret nz                                        ; $55b6: $c0

    add b                                         ; $55b7: $80
    sbc a                                         ; $55b8: $9f
    rst $18                                       ; $55b9: $df
    adc e                                         ; $55ba: $8b
    sbc a                                         ; $55bb: $9f
    add l                                         ; $55bc: $85
    sbc a                                         ; $55bd: $9f
    add l                                         ; $55be: $85
    ld [hl], d                                    ; $55bf: $72
    adc b                                         ; $55c0: $88
    rst $28                                       ; $55c1: $ef
    rst $38                                       ; $55c2: $ff
    rst $10                                       ; $55c3: $d7
    ld l, h                                       ; $55c4: $6c
    rst $38                                       ; $55c5: $ff
    ld a, c                                       ; $55c6: $79
    ld [hl], d                                    ; $55c7: $72
    adc b                                         ; $55c8: $88
    rst $30                                       ; $55c9: $f7
    ret nz                                        ; $55ca: $c0

    add b                                         ; $55cb: $80
    rst $30                                       ; $55cc: $f7
    db $ed                                        ; $55cd: $ed
    xor a                                         ; $55ce: $af
    add b                                         ; $55cf: $80
    rst $30                                       ; $55d0: $f7
    add b                                         ; $55d1: $80
    ld hl, sp+$7e                                 ; $55d2: $f8 $7e
    add sp, -$49                                  ; $55d4: $e8 $b7
    ld h, h                                       ; $55d6: $64
    ld h, b                                       ; $55d7: $60
    rra                                           ; $55d8: $1f
    cp $6e                                        ; $55d9: $fe $6e
    ld l, c                                       ; $55db: $69
    or b                                          ; $55dc: $b0
    rst $38                                       ; $55dd: $ff
    ld b, b                                       ; $55de: $40
    rst $38                                       ; $55df: $ff
    ld b, c                                       ; $55e0: $41
    rst $38                                       ; $55e1: $ff
    ld c, c                                       ; $55e2: $49
    cp [hl]                                       ; $55e3: $be
    ld a, [de]                                    ; $55e4: $1a
    and b                                         ; $55e5: $a0
    inc [hl]                                      ; $55e6: $34
    rst $38                                       ; $55e7: $ff
    inc hl                                        ; $55e8: $23
    db $fc                                        ; $55e9: $fc
    rra                                           ; $55ea: $1f
    jr nz, @-$5e                                  ; $55eb: $20 $a0

    cp a                                          ; $55ed: $bf
    ccf                                           ; $55ee: $3f
    cp $9f                                        ; $55ef: $fe $9f
    cp $cf                                        ; $55f1: $fe $cf
    cp a                                          ; $55f3: $bf
    di                                            ; $55f4: $f3
    ld [hl], b                                    ; $55f5: $70
    and e                                         ; $55f6: $a3
    jp nc, $bd80                                  ; $55f7: $d2 $80 $bd

    cp a                                          ; $55fa: $bf
    jp nc, $ff87                                  ; $55fb: $d2 $87 $ff

    ld a, a                                       ; $55fe: $7f
    ld sp, hl                                     ; $55ff: $f9
    ccf                                           ; $5600: $3f
    jp nc, $ff89                                  ; $5601: $d2 $89 $ff

    dec e                                         ; $5604: $1d
    ld bc, $a1b0                                  ; $5605: $01 $b0 $a1
    xor a                                         ; $5608: $af
    cp $ff                                        ; $5609: $fe $ff
    ld [bc], a                                    ; $560b: $02
    ret nz                                        ; $560c: $c0

    or b                                          ; $560d: $b0
    and e                                         ; $560e: $a3
    ld c, b                                       ; $560f: $48
    push hl                                       ; $5610: $e5
    ld [bc], a                                    ; $5611: $02
    sbc b                                         ; $5612: $98
    db $e4                                        ; $5613: $e4
    rst $38                                       ; $5614: $ff
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    rst $38                                       ; $5620: $ff
    rst $38                                       ; $5621: $ff
    rst $38                                       ; $5622: $ff
    rst $38                                       ; $5623: $ff
    nop                                           ; $5624: $00
    rst $38                                       ; $5625: $ff
    nop                                           ; $5626: $00
    ld hl, sp+$00                                 ; $5627: $f8 $00
    rst $38                                       ; $5629: $ff
    push hl                                       ; $562a: $e5
    nop                                           ; $562b: $00
    call z, $ac00                                 ; $562c: $cc $00 $ac
    nop                                           ; $562f: $00
    cp b                                          ; $5630: $b8
    nop                                           ; $5631: $00
    cp [hl]                                       ; $5632: $be
    ldh a, [$e3]                                  ; $5633: $f0 $e3
    inc b                                         ; $5635: $04
    nop                                           ; $5636: $00
    di                                            ; $5637: $f3
    nop                                           ; $5638: $00
    ld b, $fa                                     ; $5639: $06 $fa
    ldh [$64], a                                  ; $563b: $e0 $64
    ld hl, sp-$10                                 ; $563d: $f8 $f0
    db $e4                                        ; $563f: $e4
    db $fc                                        ; $5640: $fc
    rst $20                                       ; $5641: $e7
    rst $38                                       ; $5642: $ff
    db $ed                                        ; $5643: $ed
    add e                                         ; $5644: $83
    nop                                           ; $5645: $00
    add a                                         ; $5646: $87
    nop                                           ; $5647: $00
    rst $00                                       ; $5648: $c7
    di                                            ; $5649: $f3
    nop                                           ; $564a: $00
    db $e3                                        ; $564b: $e3
    cp [hl]                                       ; $564c: $be
    ldh [$d8], a                                  ; $564d: $e0 $d8
    db $e3                                        ; $564f: $e3
    ld [hl], h                                    ; $5650: $74
    nop                                           ; $5651: $00
    db $f4                                        ; $5652: $f4
    nop                                           ; $5653: $00
    dec b                                         ; $5654: $05
    db $e4                                        ; $5655: $e4
    jp c, Jump_000_04e0                           ; $5656: $da $e0 $04

    jp z, $bcea                                   ; $5659: $ca $ea $bc

    push hl                                       ; $565c: $e5
    jp c, $ace5                                   ; $565d: $da $e5 $ac

    push hl                                       ; $5660: $e5
    jp c, $bef3                                   ; $5661: $da $f3 $be

    adc [hl]                                      ; $5664: $8e
    db $e4                                        ; $5665: $e4

jr_077_5666:
    ld bc, $03fe                                  ; $5666: $01 $fe $03
    db $fc                                        ; $5669: $fc
    rlca                                          ; $566a: $07
    ld l, b                                       ; $566b: $68
    and $7c                                       ; $566c: $e6 $7c
    ccf                                           ; $566e: $3f
    add e                                         ; $566f: $83
    rst $38                                       ; $5670: $ff
    ld l, d                                       ; $5671: $6a
    sub l                                         ; $5672: $95
    rst $38                                       ; $5673: $ff
    ld l, d                                       ; $5674: $6a
    ld l, b                                       ; $5675: $68
    push hl                                       ; $5676: $e5
    sbc b                                         ; $5677: $98
    ld [c], a                                     ; $5678: $e2
    or a                                          ; $5679: $b7
    add b                                         ; $567a: $80
    ld b, b                                       ; $567b: $40
    ret nz                                        ; $567c: $c0

    jp nc, $f8eb                                  ; $567d: $d2 $eb $f8

    rrca                                          ; $5680: $0f
    jr c, jr_077_5666                             ; $5681: $38 $e3

    db $fc                                        ; $5683: $fc
    or $d2                                        ; $5684: $f6 $d2
    db $e4                                        ; $5686: $e4
    ld a, a                                       ; $5687: $7f
    or a                                          ; $5688: $b7
    ret nc                                        ; $5689: $d0

    add sp, -$80                                  ; $568a: $e8 $80
    ld h, h                                       ; $568c: $64
    ret nz                                        ; $568d: $c0

    and b                                         ; $568e: $a0
    ld a, l                                       ; $568f: $7d
    ld h, b                                       ; $5690: $60
    call nc, $f0e9                                ; $5691: $d4 $e9 $f0
    rra                                           ; $5694: $1f
    ldh a, [$1f]                                  ; $5695: $f0 $1f
    push hl                                       ; $5697: $e5
    call nc, $efe8                                ; $5698: $d4 $e8 $ef
    cp a                                          ; $569b: $bf
    sbc $e1                                       ; $569c: $de $e1
    rst $38                                       ; $569e: $ff
    ld [$e4e3], sp                                ; $569f: $08 $e3 $e4
    add b                                         ; $56a2: $80
    ld [hl], h                                    ; $56a3: $74
    ld a, a                                       ; $56a4: $7f
    ret nz                                        ; $56a5: $c0

    or h                                          ; $56a6: $b4
    ld h, b                                       ; $56a7: $60
    inc h                                         ; $56a8: $24
    ldh [$a6], a                                  ; $56a9: $e0 $a6
    and $48                                       ; $56ab: $e6 $48
    push hl                                       ; $56ad: $e5
    rst $38                                       ; $56ae: $ff
    push hl                                       ; $56af: $e5
    ld bc, $1fdf                                  ; $56b0: $01 $df $1f
    cp a                                          ; $56b3: $bf
    ld de, $10bf                                  ; $56b4: $11 $bf $10
    cp $ca                                        ; $56b7: $fe $ca
    db $e3                                        ; $56b9: $e3
    db $e3                                        ; $56ba: $e3
    rst $38                                       ; $56bb: $ff
    dec h                                         ; $56bc: $25
    rst $38                                       ; $56bd: $ff
    rlca                                          ; $56be: $07
    rst $38                                       ; $56bf: $ff
    adc a                                         ; $56c0: $8f
    rst $30                                       ; $56c1: $f7
    rst $38                                       ; $56c2: $ff
    rst $08                                       ; $56c3: $cf
    ld a, d                                       ; $56c4: $7a
    jp z, Jump_000_00e3                           ; $56c5: $ca $e3 $00

    rst $38                                       ; $56c8: $ff
    rst $18                                       ; $56c9: $df
    rst $38                                       ; $56ca: $ff
    rst $38                                       ; $56cb: $ff
    rst $38                                       ; $56cc: $ff
    db $eb                                        ; $56cd: $eb
    rst $38                                       ; $56ce: $ff
    dec sp                                        ; $56cf: $3b
    rst $38                                       ; $56d0: $ff
    ld e, $a4                                     ; $56d1: $1e $a4
    ld h, b                                       ; $56d3: $60
    rst $38                                       ; $56d4: $ff
    ccf                                           ; $56d5: $3f
    ldh [$bf], a                                  ; $56d6: $e0 $bf
    and $7f                                       ; $56d8: $e6 $7f
    ld [$f21f], a                                 ; $56da: $ea $1f $f2
    ccf                                           ; $56dd: $3f
    rst $28                                       ; $56de: $ef
    ld a, [$3aff]                                 ; $56df: $fa $ff $3a
    rst $38                                       ; $56e2: $ff
    and h                                         ; $56e3: $a4
    ret nz                                        ; $56e4: $c0

    and $a0                                       ; $56e5: $e6 $a0
    push bc                                       ; $56e7: $c5
    cp [hl]                                       ; $56e8: $be
    or d                                          ; $56e9: $b2
    jp nz, $01f9                                  ; $56ea: $c2 $f9 $01

    rst $38                                       ; $56ed: $ff
    rra                                           ; $56ee: $1f
    rst $18                                       ; $56ef: $df
    or d                                          ; $56f0: $b2
    ldh [$bf], a                                  ; $56f1: $e0 $bf
    db $ed                                        ; $56f3: $ed
    add hl, bc                                    ; $56f4: $09
    or d                                          ; $56f5: $b2
    db $eb                                        ; $56f6: $eb
    rst $38                                       ; $56f7: $ff
    ld a, [hl-]                                   ; $56f8: $3a
    or d                                          ; $56f9: $b2
    db $eb                                        ; $56fa: $eb
    rst $38                                       ; $56fb: $ff
    ld d, a                                       ; $56fc: $57
    inc h                                         ; $56fd: $24
    ld a, [$ebb2]                                 ; $56fe: $fa $b2 $eb
    ld [hl], a                                    ; $5701: $77
    add sp, -$3f                                  ; $5702: $e8 $c1
    rst $38                                       ; $5704: $ff
    rra                                           ; $5705: $1f
    rst $38                                       ; $5706: $ff
    ld de, $7fff                                  ; $5707: $11 $ff $7f
    db $10                                        ; $570a: $10
    rst $08                                       ; $570b: $cf
    add hl, bc                                    ; $570c: $09
    xor a                                         ; $570d: $af
    inc b                                         ; $570e: $04
    cp e                                          ; $570f: $bb
    ld [bc], a                                    ; $5710: $02
    call nz, $efe9                                ; $5711: $c4 $e9 $ef
    rst $28                                       ; $5714: $ef
    cp c                                          ; $5715: $b9
    rst $30                                       ; $5716: $f7
    ld a, h                                       ; $5717: $7c
    call nz, $fae9                                ; $5718: $c4 $e9 $fa
    dec a                                         ; $571b: $3d
    pop hl                                        ; $571c: $e1
    ei                                            ; $571d: $fb
    cp $6e                                        ; $571e: $fe $6e
    call nz, $cee9                                ; $5720: $c4 $e9 $ce
    ccf                                           ; $5723: $3f
    db $ec                                        ; $5724: $ec
    adc a                                         ; $5725: $8f
    add hl, bc                                    ; $5726: $09
    cp a                                          ; $5727: $bf
    add a                                         ; $5728: $87
    inc b                                         ; $5729: $04
    rst $00                                       ; $572a: $c7
    ld [bc], a                                    ; $572b: $02
    db $e3                                        ; $572c: $e3
    ld bc, $e07e                                  ; $572d: $01 $7e $e0
    ld bc, $26fc                                  ; $5730: $01 $fc $26
    jp nz, $e2ca                                  ; $5733: $c2 $ca $e2

    rst $28                                       ; $5736: $ef
    ld a, a                                       ; $5737: $7f
    di                                            ; $5738: $f3
    ccf                                           ; $5739: $3f
    rst $38                                       ; $573a: $ff
    inc l                                         ; $573b: $2c
    rst $28                                       ; $573c: $ef
    rst $38                                       ; $573d: $ff
    sub c                                         ; $573e: $91
    rst $38                                       ; $573f: $ff
    pop af                                        ; $5740: $f1
    jp z, $e8e3                                   ; $5741: $ca $e3 $e8

    cp a                                          ; $5744: $bf
    db $fc                                        ; $5745: $fc
    sbc $e7                                       ; $5746: $de $e7
    and b                                         ; $5748: $a0
    rst $38                                       ; $5749: $ff
    sub h                                         ; $574a: $94
    rst $38                                       ; $574b: $ff
    jp $e3ca                                      ; $574c: $c3 $ca $e3


    ccf                                           ; $574f: $3f
    ld a, [$7fff]                                 ; $5750: $fa $ff $7f
    ld a, [c]                                     ; $5753: $f2
    rst $38                                       ; $5754: $ff
    and d                                         ; $5755: $a2
    rst $38                                       ; $5756: $ff
    call nz, Call_000_0efe                        ; $5757: $c4 $fe $0e
    ccf                                           ; $575a: $3f
    add a                                         ; $575b: $87
    inc b                                         ; $575c: $04
    add a                                         ; $575d: $87
    ld [bc], a                                    ; $575e: $02
    rst $00                                       ; $575f: $c7
    ld bc, $e2c0                                  ; $5760: $01 $c0 $e2
    ld e, [hl]                                    ; $5763: $5e
    jp nz, $c2f6                                  ; $5764: $c2 $f6 $c2

    db $eb                                        ; $5767: $eb
    rra                                           ; $5768: $1f
    ldh a, [$c2]                                  ; $5769: $f0 $c2
    add sp, -$6b                                  ; $576b: $e8 $95
    rst $38                                       ; $576d: $ff
    adc [hl]                                      ; $576e: $8e
    rst $38                                       ; $576f: $ff
    db $fd                                        ; $5770: $fd
    ldh a, [$c2]                                  ; $5771: $f0 $c2
    jp hl                                         ; $5773: $e9


    rst $38                                       ; $5774: $ff
    ld c, $f9                                     ; $5775: $0e $f9
    rra                                           ; $5777: $1f
    sbc a                                         ; $5778: $9f
    rra                                           ; $5779: $1f
    rst $38                                       ; $577a: $ff
    and b                                         ; $577b: $a0
    ccf                                           ; $577c: $3f
    ret nz                                        ; $577d: $c0

    ld a, a                                       ; $577e: $7f
    sbc a                                         ; $577f: $9f
    rst $38                                       ; $5780: $ff
    cp a                                          ; $5781: $bf
    db $ec                                        ; $5782: $ec
    cp a                                          ; $5783: $bf
    rst $38                                       ; $5784: $ff
    ld e, b                                       ; $5785: $58
    rst $38                                       ; $5786: $ff
    ld d, d                                       ; $5787: $52
    rst $38                                       ; $5788: $ff
    add c                                         ; $5789: $81
    add [hl]                                      ; $578a: $86
    ldh [rIE], a                                  ; $578b: $e0 $ff
    rst $38                                       ; $578d: $ff
    ccf                                           ; $578e: $3f
    db $ec                                        ; $578f: $ec
    rst $18                                       ; $5790: $df
    ld sp, hl                                     ; $5791: $f9
    rst $38                                       ; $5792: $ff
    ld sp, $49ff                                  ; $5793: $31 $ff $49
    rst $28                                       ; $5796: $ef
    rst $38                                       ; $5797: $ff
    jr z, @+$01                                   ; $5798: $28 $ff

    inc l                                         ; $579a: $2c
    add [hl]                                      ; $579b: $86
    add sp, -$74                                  ; $579c: $e8 $8c
    rst $38                                       ; $579e: $ff
    ld [hl], b                                    ; $579f: $70
    rst $38                                       ; $57a0: $ff
    rst $38                                       ; $57a1: $ff
    add c                                         ; $57a2: $81
    ccf                                           ; $57a3: $3f
    ei                                            ; $57a4: $fb
    ld a, [hl]                                    ; $57a5: $7e
    di                                            ; $57a6: $f3
    cp $a3                                        ; $57a7: $fe $a3
    rst $38                                       ; $57a9: $ff
    db $fd                                        ; $57aa: $fd
    rst $00                                       ; $57ab: $c7
    db $fd                                        ; $57ac: $fd
    rrca                                          ; $57ad: $0f
    db $fd                                        ; $57ae: $fd
    rra                                           ; $57af: $1f
    rst $38                                       ; $57b0: $ff
    rra                                           ; $57b1: $1f
    rst $38                                       ; $57b2: $ff
    ei                                            ; $57b3: $fb
    ccf                                           ; $57b4: $3f
    db $e3                                        ; $57b5: $e3
    ldh [rNR22], a                                ; $57b6: $e0 $17
    ldh a, [$1f]                                  ; $57b8: $f0 $1f
    db $fc                                        ; $57ba: $fc
    rst $38                                       ; $57bb: $ff
    ld a, a                                       ; $57bc: $7f
    ld [c], a                                     ; $57bd: $e2
    cp $8e                                        ; $57be: $fe $8e
    rst $38                                       ; $57c0: $ff
    ld b, d                                       ; $57c1: $42
    rst $38                                       ; $57c2: $ff
    add c                                         ; $57c3: $81
    ld hl, sp-$36                                 ; $57c4: $f8 $ca
    ldh [$0a], a                                  ; $57c6: $e0 $0a
    jp nz, $c134                                  ; $57c8: $c2 $34 $c1

    di                                            ; $57cb: $f3
    rra                                           ; $57cc: $1f

jr_077_57cd:
    rst $38                                       ; $57cd: $ff
    inc c                                         ; $57ce: $0c
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    db $10                                        ; $57d1: $10
    rra                                           ; $57d2: $1f
    pop af                                        ; $57d3: $f1
    rrca                                          ; $57d4: $0f
    ld hl, sp+$07                                 ; $57d5: $f8 $07
    db $fc                                        ; $57d7: $fc
    daa                                           ; $57d8: $27
    rst $38                                       ; $57d9: $ff
    rst $38                                       ; $57da: $ff
    inc de                                        ; $57db: $13
    rst $38                                       ; $57dc: $ff
    db $d3                                        ; $57dd: $d3
    rst $38                                       ; $57de: $ff
    rst $38                                       ; $57df: $ff
    ccf                                           ; $57e0: $3f
    rst $38                                       ; $57e1: $ff
    ld a, l                                       ; $57e2: $7d
    rrca                                          ; $57e3: $0f
    cp d                                          ; $57e4: $ba
    db $e3                                        ; $57e5: $e3
    rst $38                                       ; $57e6: $ff
    jp $fffc                                      ; $57e7: $c3 $fc $ff


    ldh [$73], a                                  ; $57ea: $e0 $73
    ldh [rIE], a                                  ; $57ec: $e0 $ff
    rst $38                                       ; $57ee: $ff
    ccf                                           ; $57ef: $3f
    ld sp, hl                                     ; $57f0: $f9
    rra                                           ; $57f1: $1f
    db $fc                                        ; $57f2: $fc
    rra                                           ; $57f3: $1f
    ld a, [$dd3f]                                 ; $57f4: $fa $3f $dd
    db $dd                                        ; $57f7: $dd
    rst $20                                       ; $57f8: $e7
    ldh [rIF], a                                  ; $57f9: $e0 $0f
    db $fc                                        ; $57fb: $fc
    ccf                                           ; $57fc: $3f
    dec de                                        ; $57fd: $1b
    pop hl                                        ; $57fe: $e1
    nop                                           ; $57ff: $00
    rst $38                                       ; $5800: $ff
    ld a, a                                       ; $5801: $7f
    add b                                         ; $5802: $80
    rst $38                                       ; $5803: $ff
    add b                                         ; $5804: $80
    ld a, a                                       ; $5805: $7f
    ret nz                                        ; $5806: $c0

    ld a, a                                       ; $5807: $7f
    ret nz                                        ; $5808: $c0

    rst $18                                       ; $5809: $df
    ldh [$df], a                                  ; $580a: $e0 $df
    and b                                         ; $580c: $a0
    rst $38                                       ; $580d: $ff
    ldh [$fc], a                                  ; $580e: $e0 $fc
    rlca                                          ; $5810: $07
    and $a5                                       ; $5811: $e6 $a5
    rst $30                                       ; $5813: $f7
    rra                                           ; $5814: $1f
    rst $28                                       ; $5815: $ef
    rst $38                                       ; $5816: $ff
    jr @+$01                                      ; $5817: $18 $ff

    jr nz, jr_077_57cd                            ; $5819: $20 $b2

    pop hl                                        ; $581b: $e1
    ld b, a                                       ; $581c: $47
    rst $38                                       ; $581d: $ff
    inc hl                                        ; $581e: $23
    ld e, [hl]                                    ; $581f: $5e
    cp $e0                                        ; $5820: $fe $e0
    and e                                         ; $5822: $a3
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    ld a, a                                       ; $5825: $7f
    add [hl]                                      ; $5826: $86
    ret nz                                        ; $5827: $c0

    nop                                           ; $5828: $00
    or d                                          ; $5829: $b2
    push hl                                       ; $582a: $e5
    db $e4                                        ; $582b: $e4
    or b                                          ; $582c: $b0
    db $e3                                        ; $582d: $e3
    or d                                          ; $582e: $b2
    db $e3                                        ; $582f: $e3
    dec c                                         ; $5830: $0d
    or b                                          ; $5831: $b0
    rst $20                                       ; $5832: $e7
    or d                                          ; $5833: $b2
    rst $20                                       ; $5834: $e7
    sub b                                         ; $5835: $90
    rst $38                                       ; $5836: $ff
    or b                                          ; $5837: $b0
    cp d                                          ; $5838: $ba
    db $fc                                        ; $5839: $fc
    ldh [$89], a                                  ; $583a: $e0 $89
    db $fc                                        ; $583c: $fc
    and b                                         ; $583d: $a0
    ld d, d                                       ; $583e: $52
    rst $38                                       ; $583f: $ff
    cpl                                           ; $5840: $2f
    ld c, h                                       ; $5841: $4c
    ret nz                                        ; $5842: $c0

    inc bc                                        ; $5843: $03
    adc [hl]                                      ; $5844: $8e
    cp $e1                                        ; $5845: $fe $e1
    rst $30                                       ; $5847: $f7
    ccf                                           ; $5848: $3f
    db $e3                                        ; $5849: $e3
    xor e                                         ; $584a: $ab
    ret nz                                        ; $584b: $c0

    rst $38                                       ; $584c: $ff
    add sp, $66                                   ; $584d: $e8 $66
    ld [c], a                                     ; $584f: $e2
    ld hl, sp-$1e                                 ; $5850: $f8 $e2
    ld d, h                                       ; $5852: $54
    pop hl                                        ; $5853: $e1
    ccf                                           ; $5854: $3f
    adc l                                         ; $5855: $8d
    pop bc                                        ; $5856: $c1
    ld h, [hl]                                    ; $5857: $66
    add sp, -$26                                  ; $5858: $e8 $da
    db $e3                                        ; $585a: $e3
    add hl, hl                                    ; $585b: $29
    rst $38                                       ; $585c: $ff
    sub d                                         ; $585d: $92
    ei                                            ; $585e: $fb
    rst $38                                       ; $585f: $ff
    db $fc                                        ; $5860: $fc
    ld e, h                                       ; $5861: $5c
    ldh [$c0], a                                  ; $5862: $e0 $c0
    rst $38                                       ; $5864: $ff
    ret nc                                        ; $5865: $d0

    rst $28                                       ; $5866: $ef
    ld hl, sp-$01                                 ; $5867: $f8 $ff
    ld c, a                                       ; $5869: $4f
    ld hl, sp-$01                                 ; $586a: $f8 $ff
    ld d, $ff                                     ; $586c: $16 $ff
    ld [$10ff], sp                                ; $586e: $08 $ff $10
    rst $38                                       ; $5871: $ff
    rst $38                                       ; $5872: $ff
    ld [de], a                                    ; $5873: $12
    rst $38                                       ; $5874: $ff

jr_077_5875:
    dec d                                         ; $5875: $15
    rst $18                                       ; $5876: $df
    db $10                                        ; $5877: $10
    xor a                                         ; $5878: $af
    ld [$bfef], sp                                ; $5879: $08 $ef $bf
    dec b                                         ; $587c: $05
    rst $38                                       ; $587d: $ff
    scf                                           ; $587e: $37
    inc e                                         ; $587f: $1c
    ldh [rTAC], a                                 ; $5880: $e0 $07
    rst $38                                       ; $5882: $ff
    add e                                         ; $5883: $83
    dec sp                                        ; $5884: $3b
    rst $38                                       ; $5885: $ff
    ld c, e                                       ; $5886: $4b
    dec c                                         ; $5887: $0d
    ldh [$1f], a                                  ; $5888: $e0 $1f
    rst $38                                       ; $588a: $ff
    ld c, a                                       ; $588b: $4f
    cp d                                          ; $588c: $ba
    db $e3                                        ; $588d: $e3
    db $fc                                        ; $588e: $fc
    ld hl, sp-$03                                 ; $588f: $f8 $fd
    and b                                         ; $5891: $a0
    cp $e1                                        ; $5892: $fe $e1
    ld hl, sp-$40                                 ; $5894: $f8 $c0
    push hl                                       ; $5896: $e5
    add b                                         ; $5897: $80
    call z, $ea80                                 ; $5898: $cc $80 $ea
    db $10                                        ; $589b: $10
    add d                                         ; $589c: $82
    inc l                                         ; $589d: $2c
    or d                                          ; $589e: $b2
    ldh [rNR41], a                                ; $589f: $e0 $20
    ld sp, $2aa0                                  ; $58a1: $31 $a0 $2a
    rst $38                                       ; $58a4: $ff
    jr nz, jr_077_5875                            ; $58a5: $20 $ce

    ld [hl], b                                    ; $58a7: $70
    and b                                         ; $58a8: $a0
    ld a, [bc]                                    ; $58a9: $0a
    rst $38                                       ; $58aa: $ff
    ld l, a                                       ; $58ab: $6f
    and d                                         ; $58ac: $a2
    and b                                         ; $58ad: $a0
    xor [hl]                                      ; $58ae: $ae
    pop hl                                        ; $58af: $e1
    sub a                                         ; $58b0: $97
    rst $38                                       ; $58b1: $ff
    dec d                                         ; $58b2: $15
    daa                                           ; $58b3: $27
    ret nz                                        ; $58b4: $c0

    ret nz                                        ; $58b5: $c0

    sbc a                                         ; $58b6: $9f
    ld a, [hl-]                                   ; $58b7: $3a
    ldh [$90], a                                  ; $58b8: $e0 $90
    ret nc                                        ; $58ba: $d0

    ld [$e13a], a                                 ; $58bb: $ea $3a $e1
    jp nz, $e4a0                                  ; $58be: $c2 $a0 $e4

    ret nc                                        ; $58c1: $d0

    ld l, b                                       ; $58c2: $68
    ld [hl-], a                                   ; $58c3: $32
    and $7f                                       ; $58c4: $e6 $7f
    rst $38                                       ; $58c6: $ff
    ldh [$82], a                                  ; $58c7: $e0 $82
    ld [$fffe], a                                 ; $58c9: $ea $fe $ff
    ld hl, sp-$29                                 ; $58cc: $f8 $d7
    cp $ff                                        ; $58ce: $fe $ff
    db $fd                                        ; $58d0: $fd
    ld [hl+], a                                   ; $58d1: $22
    ldh [$f0], a                                  ; $58d2: $e0 $f0
    and a                                         ; $58d4: $a7
    and b                                         ; $58d5: $a0
    ldh a, [$9f]                                  ; $58d6: $f0 $9f
    rst $18                                       ; $58d8: $df
    pop af                                        ; $58d9: $f1
    rra                                           ; $58da: $1f
    rst $38                                       ; $58db: $ff
    ld c, $8f                                     ; $58dc: $0e $8f
    ld d, e                                       ; $58de: $53
    pop bc                                        ; $58df: $c1
    ld hl, sp+$18                                 ; $58e0: $f8 $18
    or a                                          ; $58e2: $b7
    ldh a, [$e5]                                  ; $58e3: $f0 $e5
    ldh [$80], a                                  ; $58e5: $e0 $80
    db $e3                                        ; $58e7: $e3
    add e                                         ; $58e8: $83
    inc bc                                        ; $58e9: $03
    ret nz                                        ; $58ea: $c0

    ld h, d                                       ; $58eb: $62
    ld [bc], a                                    ; $58ec: $02
    db $ed                                        ; $58ed: $ed
    db $fd                                        ; $58ee: $fd
    adc b                                         ; $58ef: $88
    ret nz                                        ; $58f0: $c0

    cp $03                                        ; $58f1: $fe $03
    or a                                          ; $58f3: $b7
    push hl                                       ; $58f4: $e5
    adc a                                         ; $58f5: $8f
    rst $38                                       ; $58f6: $ff
    db $e3                                        ; $58f7: $e3
    rst $08                                       ; $58f8: $cf
    rst $38                                       ; $58f9: $ff
    ld b, b                                       ; $58fa: $40
    rst $38                                       ; $58fb: $ff
    inc b                                         ; $58fc: $04
    call c, Call_000_16c6                         ; $58fd: $dc $c6 $16
    ret nz                                        ; $5900: $c0

    ld bc, $e7fe                                  ; $5901: $01 $fe $e7
    add e                                         ; $5904: $83
    cp $83                                        ; $5905: $fe $83
    xor h                                         ; $5907: $ac
    ld [c], a                                     ; $5908: $e2
    cp $e0                                        ; $5909: $fe $e0
    rst $20                                       ; $590b: $e7
    db $fc                                        ; $590c: $fc
    rst $08                                       ; $590d: $cf
    db $db                                        ; $590e: $db
    rst $38                                       ; $590f: $ff
    ld [bc], a                                    ; $5910: $02
    ld c, c                                       ; $5911: $49
    ldh [rIE], a                                  ; $5912: $e0 $ff
    rst $38                                       ; $5914: $ff
    add b                                         ; $5915: $80
    ld h, h                                       ; $5916: $64
    ld b, b                                       ; $5917: $40
    cp b                                          ; $5918: $b8
    ld [hl], a                                    ; $5919: $77
    ldh [$3f], a                                  ; $591a: $e0 $3f
    ldh [$3c], a                                  ; $591c: $e0 $3c
    ret nz                                        ; $591e: $c0

    rst $38                                       ; $591f: $ff
    add a                                         ; $5920: $87
    rlca                                          ; $5921: $07
    or b                                          ; $5922: $b0
    db $eb                                        ; $5923: $eb
    jp c, Jump_077_6560                           ; $5924: $da $60 $65

    rst $38                                       ; $5927: $ff
    db $e4                                        ; $5928: $e4
    ld h, b                                       ; $5929: $60
    db $fc                                        ; $592a: $fc
    rlca                                          ; $592b: $07
    ld e, h                                       ; $592c: $5c
    pop hl                                        ; $592d: $e1
    sbc a                                         ; $592e: $9f
    rst $38                                       ; $592f: $ff
    ld [hl], a                                    ; $5930: $77
    add $7f                                       ; $5931: $c6 $7f
    and b                                         ; $5933: $a0
    cp e                                          ; $5934: $bb
    add b                                         ; $5935: $80
    add e                                         ; $5936: $83
    cp $07                                        ; $5937: $fe $07
    dec de                                        ; $5939: $1b
    and c                                         ; $593a: $a1
    ld bc, $00c0                                  ; $593b: $01 $c0 $00
    pop bc                                        ; $593e: $c1
    db $fc                                        ; $593f: $fc
    and b                                         ; $5940: $a0
    ld a, [de]                                    ; $5941: $1a
    ld h, e                                       ; $5942: $63
    ret nc                                        ; $5943: $d0

    and $30                                       ; $5944: $e6 $30
    ld h, h                                       ; $5946: $64
    ld a, [$e081]                                 ; $5947: $fa $81 $e0
    db $e3                                        ; $594a: $e3
    ld h, $fa                                     ; $594b: $26 $fa
    ld a, [c]                                     ; $594d: $f2
    ld hl, sp-$80                                 ; $594e: $f8 $80
    ld [hl], d                                    ; $5950: $72
    add b                                         ; $5951: $80
    cp $e8                                        ; $5952: $fe $e8
    dec b                                         ; $5954: $05
    add sp, -$3a                                  ; $5955: $e8 $c6
    add sp, $43                                   ; $5957: $e8 $43
    db $e3                                        ; $5959: $e3
    rst $38                                       ; $595a: $ff
    ld a, $50                                     ; $595b: $3e $50
    ld l, d                                       ; $595d: $6a
    jp nz, $8840                                  ; $595e: $c2 $40 $88

    jp nz, $b880                                  ; $5961: $c2 $80 $b8

    add b                                         ; $5964: $80
    rst $38                                       ; $5965: $ff
    add e                                         ; $5966: $83
    add b                                         ; $5967: $80
    add a                                         ; $5968: $87
    add b                                         ; $5969: $80
    rst $00                                       ; $596a: $c7
    add b                                         ; $596b: $80
    db $e3                                        ; $596c: $e3
    add b                                         ; $596d: $80
    cp [hl]                                       ; $596e: $be
    ret nc                                        ; $596f: $d0

    db $eb                                        ; $5970: $eb
    db $e3                                        ; $5971: $e3
    nop                                           ; $5972: $00
    di                                            ; $5973: $f3
    ld bc, $ba07                                  ; $5974: $01 $07 $ba
    ldh [$65], a                                  ; $5977: $e0 $65
    rst $38                                       ; $5979: $ff
    ld bc, $0175                                  ; $597a: $01 $75 $01
    push af                                       ; $597d: $f5
    ld bc, $01e5                                  ; $597e: $01 $e5 $01
    ld bc, $9afa                                  ; $5981: $01 $fa $9a
    add h                                         ; $5984: $84
    inc b                                         ; $5985: $04
    ld h, $60                                     ; $5986: $26 $60
    ld [$710f], sp                                ; $5988: $08 $0f $71
    ld a, a                                       ; $598b: $7f
    sub d                                         ; $598c: $92
    rst $38                                       ; $598d: $ff
    rst $38                                       ; $598e: $ff
    pop bc                                        ; $598f: $c1
    rst $38                                       ; $5990: $ff
    dec [hl]                                      ; $5991: $35
    jp z, $b57f                                   ; $5992: $ca $7f $b5

    ccf                                           ; $5995: $3f
    rst $28                                       ; $5996: $ef
    db $db                                        ; $5997: $db
    ld e, a                                       ; $5998: $5f
    rst $28                                       ; $5999: $ef
    ld [hl], b                                    ; $599a: $70
    ld b, a                                       ; $599b: $47
    and b                                         ; $599c: $a0
    rst $28                                       ; $599d: $ef
    rst $38                                       ; $599e: $ff
    add h                                         ; $599f: $84
    cp $44                                        ; $59a0: $fe $44
    and b                                         ; $59a2: $a0
    cp a                                          ; $59a3: $bf
    ld h, b                                       ; $59a4: $60
    rst $18                                       ; $59a5: $df
    or b                                          ; $59a6: $b0
    sbc a                                         ; $59a7: $9f
    ld [hl], b                                    ; $59a8: $70
    rst $18                                       ; $59a9: $df
    sbc a                                         ; $59aa: $9f
    di                                            ; $59ab: $f3
    ccf                                           ; $59ac: $3f
    push af                                       ; $59ad: $f5
    adc a                                         ; $59ae: $8f
    ld sp, hl                                     ; $59af: $f9
    xor b                                         ; $59b0: $a8
    ld b, l                                       ; $59b1: $45
    ld b, b                                       ; $59b2: $40
    ld b, l                                       ; $59b3: $45
    adc a                                         ; $59b4: $8f
    rst $38                                       ; $59b5: $ff
    rrca                                          ; $59b6: $0f
    adc a                                         ; $59b7: $8f
    ld [$08cf], sp                                ; $59b8: $08 $cf $08
    rst $20                                       ; $59bb: $e7
    inc b                                         ; $59bc: $04
    ei                                            ; $59bd: $fb
    db $fd                                        ; $59be: $fd
    ld [bc], a                                    ; $59bf: $02
    db $10                                        ; $59c0: $10
    add e                                         ; $59c1: $83
    add e                                         ; $59c2: $83
    rst $38                                       ; $59c3: $ff
    rst $00                                       ; $59c4: $c7
    rst $38                                       ; $59c5: $ff
    rst $20                                       ; $59c6: $e7
    dec a                                         ; $59c7: $3d
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    sbc l                                         ; $59ca: $9d
    rst $30                                       ; $59cb: $f7
    ld e, h                                       ; $59cc: $5c
    ei                                            ; $59cd: $fb
    ld a, $f7                                     ; $59ce: $3e $f7
    cp a                                          ; $59d0: $bf
    cp a                                          ; $59d1: $bf
    ld sp, hl                                     ; $59d2: $f9
    sbc a                                         ; $59d3: $9f
    rst $38                                       ; $59d4: $ff
    push af                                       ; $59d5: $f5
    rst $38                                       ; $59d6: $ff
    sbc l                                         ; $59d7: $9d
    jp c, $fb80                                   ; $59d8: $da $80 $fb

    rst $38                                       ; $59db: $ff
    db $fd                                        ; $59dc: $fd
    sbc [hl]                                      ; $59dd: $9e
    ldh a, [$7f]                                  ; $59de: $f0 $7f
    db $f4                                        ; $59e0: $f4
    rst $18                                       ; $59e1: $df
    cp $ff                                        ; $59e2: $fe $ff
    ei                                            ; $59e4: $fb
    rst $30                                       ; $59e5: $f7
    db $fd                                        ; $59e6: $fd
    ldh a, [$e0]                                  ; $59e7: $f0 $e0
    ld a, [c]                                     ; $59e9: $f2
    rst $38                                       ; $59ea: $ff
    cp e                                          ; $59eb: $bb
    ld a, a                                       ; $59ec: $7f
    rst $20                                       ; $59ed: $e7
    cp a                                          ; $59ee: $bf
    sbc a                                         ; $59ef: $9f
    halt                                          ; $59f0: $76
    rra                                           ; $59f1: $1f
    db $fd                                        ; $59f2: $fd
    ccf                                           ; $59f3: $3f
    jp hl                                         ; $59f4: $e9


jr_077_59f5:
    jr nz, jr_077_5a3b                            ; $59f5: $20 $44

    add b                                         ; $59f7: $80
    ldh a, [rDMA]                                 ; $59f8: $f0 $46
    ld b, [hl]                                    ; $59fa: $46
    ld l, d                                       ; $59fb: $6a
    ld b, d                                       ; $59fc: $42
    cp $e3                                        ; $59fd: $fe $e3
    adc b                                         ; $59ff: $88
    add c                                         ; $5a00: $81
    rst $38                                       ; $5a01: $ff
    sub [hl]                                      ; $5a02: $96
    ld a, a                                       ; $5a03: $7f
    ret                                           ; $5a04: $c9


    rst $38                                       ; $5a05: $ff
    ccf                                           ; $5a06: $3f
    ld sp, hl                                     ; $5a07: $f9
    rrca                                          ; $5a08: $0f
    ld hl, sp+$17                                 ; $5a09: $f8 $17
    db $fc                                        ; $5a0b: $fc
    dec sp                                        ; $5a0c: $3b
    cp $af                                        ; $5a0d: $fe $af
    ld b, a                                       ; $5a0f: $47
    rst $38                                       ; $5a10: $ff
    rrca                                          ; $5a11: $0f
    ld sp, hl                                     ; $5a12: $f9
    or b                                          ; $5a13: $b0
    jr nz, jr_077_59f5                            ; $5a14: $20 $df

    ld [$e0a0], sp                                ; $5a16: $08 $a0 $e0
    ld a, d                                       ; $5a19: $7a
    xor d                                         ; $5a1a: $aa
    jr nz, jr_077_5a5d                            ; $5a1b: $20 $40

    adc d                                         ; $5a1d: $8a
    add c                                         ; $5a1e: $81
    rst $38                                       ; $5a1f: $ff
    pop af                                        ; $5a20: $f1
    cp $c3                                        ; $5a21: $fe $c3
    xor h                                         ; $5a23: $ac
    add b                                         ; $5a24: $80
    ccf                                           ; $5a25: $3f
    rrca                                          ; $5a26: $0f
    db $fc                                        ; $5a27: $fc
    rrca                                          ; $5a28: $0f
    rst $38                                       ; $5a29: $ff
    sbc a                                         ; $5a2a: $9f
    db $ec                                        ; $5a2b: $ec
    ld [hl], c                                    ; $5a2c: $71
    add b                                         ; $5a2d: $80
    sub b                                         ; $5a2e: $90
    add c                                         ; $5a2f: $81
    rst $30                                       ; $5a30: $f7
    ld a, a                                       ; $5a31: $7f
    ret nz                                        ; $5a32: $c0

    ccf                                           ; $5a33: $3f
    ld d, d                                       ; $5a34: $52
    ret nz                                        ; $5a35: $c0

    ccf                                           ; $5a36: $3f
    ldh [$1f], a                                  ; $5a37: $e0 $1f
    ldh a, [$fb]                                  ; $5a39: $f0 $fb

jr_077_5a3b:
    rst $18                                       ; $5a3b: $df
    ldh a, [$90]                                  ; $5a3c: $f0 $90
    add c                                         ; $5a3e: $81
    cp $03                                        ; $5a3f: $fe $03
    ld a, [$e703]                                 ; $5a41: $fa $03 $e7
    rst $38                                       ; $5a44: $ff
    inc bc                                        ; $5a45: $03
    rst $08                                       ; $5a46: $cf
    inc bc                                        ; $5a47: $03
    xor a                                         ; $5a48: $af
    inc bc                                        ; $5a49: $03
    cp c                                          ; $5a4a: $b9
    ld bc, $f71f                                  ; $5a4b: $01 $1f $f7
    ld a, [c]                                     ; $5a4e: $f2
    ccf                                           ; $5a4f: $3f
    db $e4                                        ; $5a50: $e4
    ld [hl], $c0                                  ; $5a51: $36 $c0
    jp $d67f                                      ; $5a53: $c3 $7f $d6


    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    call nc, $e1ff                                ; $5a58: $d4 $ff $e1
    rst $38                                       ; $5a5b: $ff
    db $e4                                        ; $5a5c: $e4

jr_077_5a5d:
    ld hl, sp+$3f                                 ; $5a5d: $f8 $3f
    rst $38                                       ; $5a5f: $ff
    push af                                       ; $5a60: $f5
    ld e, a                                       ; $5a61: $5f
    jp nz, $4f82                                  ; $5a62: $c2 $82 $4f

    cp h                                          ; $5a65: $bc
    add d                                         ; $5a66: $82
    sbc a                                         ; $5a67: $9f
    ccf                                           ; $5a68: $3f
    ldh a, [rIE]                                  ; $5a69: $f0 $ff
    ld d, l                                       ; $5a6b: $55
    db $ec                                        ; $5a6c: $ec
    ld e, d                                       ; $5a6d: $5a
    ld h, b                                       ; $5a6e: $60
    db $ed                                        ; $5a6f: $ed
    and [hl]                                      ; $5a70: $a6
    ld h, b                                       ; $5a71: $60
    and $c9                                       ; $5a72: $e6 $c9
    add b                                         ; $5a74: $80
    di                                            ; $5a75: $f3
    sbc h                                         ; $5a76: $9c
    add b                                         ; $5a77: $80
    rst $38                                       ; $5a78: $ff
    ld d, b                                       ; $5a79: $50
    rst $38                                       ; $5a7a: $ff
    db $10                                        ; $5a7b: $10
    ld hl, sp-$70                                 ; $5a7c: $f8 $90

jr_077_5a7e:
    push af                                       ; $5a7e: $f5
    or b                                          ; $5a7f: $b0
    db $fc                                        ; $5a80: $fc
    rst $38                                       ; $5a81: $ff
    db $10                                        ; $5a82: $10
    db $ec                                        ; $5a83: $ec
    jr nz, jr_077_5a7e                            ; $5a84: $20 $f8

    ld b, b                                       ; $5a86: $40
    add e                                         ; $5a87: $83
    ld bc, $b587                                  ; $5a88: $01 $87 $b5
    ld bc, $2070                                  ; $5a8b: $01 $70 $20
    inc bc                                        ; $5a8e: $03
    or b                                          ; $5a8f: $b0
    and [hl]                                      ; $5a90: $a6
    ld a, [c]                                     ; $5a91: $f2
    rst $38                                       ; $5a92: $ff
    ld l, h                                       ; $5a93: $6c
    ldh [$3f], a                                  ; $5a94: $e0 $3f
    ld [de], a                                    ; $5a96: $12
    ld d, h                                       ; $5a97: $54
    ld b, b                                       ; $5a98: $40
    ld h, b                                       ; $5a99: $60
    or b                                          ; $5a9a: $b0
    and e                                         ; $5a9b: $a3
    ld e, [hl]                                    ; $5a9c: $5e
    and l                                         ; $5a9d: $a5
    pop bc                                        ; $5a9e: $c1
    or b                                          ; $5a9f: $b0
    and h                                         ; $5aa0: $a4
    sub [hl]                                      ; $5aa1: $96
    add h                                         ; $5aa2: $84
    or b                                          ; $5aa3: $b0
    and l                                         ; $5aa4: $a5
    adc a                                         ; $5aa5: $8f
    jp $c7c0                                      ; $5aa6: $c3 $c0 $c7


    ret nz                                        ; $5aa9: $c0

    ld l, b                                       ; $5aaa: $68
    ret nz                                        ; $5aab: $c0

    or b                                          ; $5aac: $b0
    and [hl]                                      ; $5aad: $a6
    jr nc, jr_077_5adc                            ; $5aae: $30 $2c

    rst $38                                       ; $5ab0: $ff
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    inc b                                         ; $5ab4: $04
    ld e, e                                       ; $5ab5: $5b
    ld a, [hl]                                    ; $5ab6: $7e
    ld e, e                                       ; $5ab7: $5b
    ld hl, sp+$5b                                 ; $5ab8: $f8 $5b
    ld [hl], e                                    ; $5aba: $73
    ld e, h                                       ; $5abb: $5c
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    xor $5c                                       ; $5ac4: $ee $5c
    ld c, a                                       ; $5ac6: $4f
    ld e, l                                       ; $5ac7: $5d
    cp a                                          ; $5ac8: $bf
    ld e, l                                       ; $5ac9: $5d
    daa                                           ; $5aca: $27
    ld e, [hl]                                    ; $5acb: $5e
    adc c                                         ; $5acc: $89
    ld e, [hl]                                    ; $5acd: $5e
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    ld [$555e], a                                 ; $5ad4: $ea $5e $55
    ld e, a                                       ; $5ad7: $5f
    cp a                                          ; $5ad8: $bf
    ld e, a                                       ; $5ad9: $5f
    add hl, hl                                    ; $5ada: $29
    ld h, b                                       ; $5adb: $60

jr_077_5adc:
    sub e                                         ; $5adc: $93
    ld h, b                                       ; $5add: $60
    cp $60                                        ; $5ade: $fe $60
    ld l, c                                       ; $5ae0: $69
    ld h, c                                       ; $5ae1: $61
    call nc, Call_000_3f61                        ; $5ae2: $d4 $61 $3f
    ld h, d                                       ; $5ae5: $62
    xor h                                         ; $5ae6: $ac
    ld h, d                                       ; $5ae7: $62
    add hl, de                                    ; $5ae8: $19
    ld h, e                                       ; $5ae9: $63
    add [hl]                                      ; $5aea: $86
    ld h, e                                       ; $5aeb: $63
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    di                                            ; $5af4: $f3
    ld h, e                                       ; $5af5: $63
    ld d, l                                       ; $5af6: $55
    ld h, h                                       ; $5af7: $64
    or a                                          ; $5af8: $b7
    ld h, h                                       ; $5af9: $64
    dec e                                         ; $5afa: $1d
    ld h, l                                       ; $5afb: $65
    nop                                           ; $5afc: $00
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    nop                                           ; $5aff: $00
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    dec a                                         ; $5b04: $3d
    dec c                                         ; $5b05: $0d
    rst $38                                       ; $5b06: $ff
    db $e4                                        ; $5b07: $e4
    dec l                                         ; $5b08: $2d
    dec l                                         ; $5b09: $2d
    dec c                                         ; $5b0a: $0d
    dec l                                         ; $5b0b: $2d
    push af                                       ; $5b0c: $f5
    push hl                                       ; $5b0d: $e5
    db $fd                                        ; $5b0e: $fd
    ld [c], a                                     ; $5b0f: $e2
    ld [hl], b                                    ; $5b10: $70
    db $ec                                        ; $5b11: $ec
    db $e3                                        ; $5b12: $e3
    or $e8                                        ; $5b13: $f6 $e8
    ret c                                         ; $5b15: $d8

    and $f6                                       ; $5b16: $e6 $f6
    ldh a, [rKEY1]                                ; $5b18: $f0 $4d
    ld c, l                                       ; $5b1a: $4d
    ld c, l                                       ; $5b1b: $4d
    or a                                          ; $5b1c: $b7
    ld [c], a                                     ; $5b1d: $e2
    rst $38                                       ; $5b1e: $ff
    ld l, l                                       ; $5b1f: $6d
    ld l, l                                       ; $5b20: $6d
    ld h, b                                       ; $5b21: $60
    ld h, c                                       ; $5b22: $61
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    ld bc, $01ff                                  ; $5b26: $01 $ff $01
    ld bc, $6263                                  ; $5b29: $01 $63 $62
    ld l, b                                       ; $5b2c: $68
    jr nz, jr_077_5b34                            ; $5b2d: $20 $05

    dec b                                         ; $5b2f: $05
    rst $38                                       ; $5b30: $ff
    dec b                                         ; $5b31: $05
    inc b                                         ; $5b32: $04
    inc b                                         ; $5b33: $04

jr_077_5b34:
    inc b                                         ; $5b34: $04
    dec de                                        ; $5b35: $1b
    ld l, c                                       ; $5b36: $69
    ld l, b                                       ; $5b37: $68
    inc b                                         ; $5b38: $04
    rst $38                                       ; $5b39: $ff
    ld de, $0a05                                  ; $5b3a: $11 $05 $0a
    dec bc                                        ; $5b3d: $0b
    inc c                                         ; $5b3e: $0c
    dec c                                         ; $5b3f: $0d
    dec b                                         ; $5b40: $05
    ld l, c                                       ; $5b41: $69
    rst $38                                       ; $5b42: $ff
    ld [hl], h                                    ; $5b43: $74
    inc b                                         ; $5b44: $04
    jr nz, jr_077_5b5e                            ; $5b45: $20 $17

    jr @+$1b                                      ; $5b47: $18 $19

    ld a, [de]                                    ; $5b49: $1a
    dec de                                        ; $5b4a: $1b
    rst $38                                       ; $5b4b: $ff
    dec b                                         ; $5b4c: $05
    ld [hl], l                                    ; $5b4d: $75
    ld l, c                                       ; $5b4e: $69
    ld c, h                                       ; $5b4f: $4c
    inc b                                         ; $5b50: $04
    ld h, $27                                     ; $5b51: $26 $27
    jr z, @+$01                                   ; $5b53: $28 $ff

    add hl, hl                                    ; $5b55: $29
    dec b                                         ; $5b56: $05
    ld a, e                                       ; $5b57: $7b
    ld l, b                                       ; $5b58: $68
    ld a, a                                       ; $5b59: $7f
    dec b                                         ; $5b5a: $05
    ld c, h                                       ; $5b5b: $4c
    inc [hl]                                      ; $5b5c: $34
    rst $38                                       ; $5b5d: $ff

jr_077_5b5e:
    dec [hl]                                      ; $5b5e: $35
    ld [hl], $37                                  ; $5b5f: $36 $37
    jr c, jr_077_5b67                             ; $5b61: $38 $04

    add b                                         ; $5b63: $80
    ld l, b                                       ; $5b64: $68
    add [hl]                                      ; $5b65: $86
    rst $38                                       ; $5b66: $ff

jr_077_5b67:
    add a                                         ; $5b67: $87
    ld b, e                                       ; $5b68: $43
    ld b, h                                       ; $5b69: $44
    ld b, b                                       ; $5b6a: $40
    ld b, l                                       ; $5b6b: $45
    ld b, [hl]                                    ; $5b6c: $46
    adc b                                         ; $5b6d: $88
    ld l, c                                       ; $5b6e: $69
    rst $38                                       ; $5b6f: $ff
    ld h, b                                       ; $5b70: $60
    ld bc, $5101                                  ; $5b71: $01 $01 $51
    ld d, d                                       ; $5b74: $52
    ld d, e                                       ; $5b75: $53
    ld d, h                                       ; $5b76: $54
    ld d, l                                       ; $5b77: $55
    inc bc                                        ; $5b78: $03
    nop                                           ; $5b79: $00
    ld h, d                                       ; $5b7a: $62
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    dec a                                         ; $5b7e: $3d
    dec c                                         ; $5b7f: $0d
    rst $38                                       ; $5b80: $ff
    db $e4                                        ; $5b81: $e4
    dec l                                         ; $5b82: $2d
    dec l                                         ; $5b83: $2d
    dec c                                         ; $5b84: $0d
    dec l                                         ; $5b85: $2d
    push af                                       ; $5b86: $f5
    push hl                                       ; $5b87: $e5
    db $fd                                        ; $5b88: $fd
    ld [c], a                                     ; $5b89: $e2
    ld [hl], b                                    ; $5b8a: $70
    db $ec                                        ; $5b8b: $ec
    db $e3                                        ; $5b8c: $e3
    or $e8                                        ; $5b8d: $f6 $e8
    ret c                                         ; $5b8f: $d8

    and $f6                                       ; $5b90: $e6 $f6
    ldh a, [rKEY1]                                ; $5b92: $f0 $4d
    ld c, l                                       ; $5b94: $4d
    ld c, l                                       ; $5b95: $4d
    or a                                          ; $5b96: $b7
    ld [c], a                                     ; $5b97: $e2
    rst $38                                       ; $5b98: $ff
    ld l, l                                       ; $5b99: $6d
    ld l, l                                       ; $5b9a: $6d
    ld h, d                                       ; $5b9b: $62
    ld h, e                                       ; $5b9c: $63
    ld bc, $0101                                  ; $5b9d: $01 $01 $01
    nop                                           ; $5ba0: $00
    rst $38                                       ; $5ba1: $ff
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ld h, c                                       ; $5ba4: $61
    ld h, b                                       ; $5ba5: $60
    ld l, c                                       ; $5ba6: $69
    dec de                                        ; $5ba7: $1b
    inc b                                         ; $5ba8: $04
    inc b                                         ; $5ba9: $04
    rst $38                                       ; $5baa: $ff
    inc b                                         ; $5bab: $04
    dec b                                         ; $5bac: $05
    dec b                                         ; $5bad: $05
    dec b                                         ; $5bae: $05
    jr nz, jr_077_5c19                            ; $5baf: $20 $68

    ld l, c                                       ; $5bb1: $69
    dec b                                         ; $5bb2: $05
    rst $38                                       ; $5bb3: $ff
    dec c                                         ; $5bb4: $0d
    inc b                                         ; $5bb5: $04
    ld c, $0f                                     ; $5bb6: $0e $0f
    db $10                                        ; $5bb8: $10
    ld de, $6804                                  ; $5bb9: $11 $04 $68
    rst $38                                       ; $5bbc: $ff
    ld [hl], l                                    ; $5bbd: $75
    dec b                                         ; $5bbe: $05
    dec de                                        ; $5bbf: $1b
    inc e                                         ; $5bc0: $1c
    dec e                                         ; $5bc1: $1d
    ld e, $1f                                     ; $5bc2: $1e $1f
    jr nz, @+$01                                  ; $5bc4: $20 $ff

    inc b                                         ; $5bc6: $04
    ld [hl], h                                    ; $5bc7: $74
    ld l, b                                       ; $5bc8: $68
    ld a, e                                       ; $5bc9: $7b
    dec b                                         ; $5bca: $05
    ld a, [hl+]                                   ; $5bcb: $2a
    dec hl                                        ; $5bcc: $2b
    inc l                                         ; $5bcd: $2c
    rst $38                                       ; $5bce: $ff
    dec l                                         ; $5bcf: $2d
    ld l, $4c                                     ; $5bd0: $2e $4c
    ld l, c                                       ; $5bd2: $69
    add b                                         ; $5bd3: $80
    inc b                                         ; $5bd4: $04
    ld a, e                                       ; $5bd5: $7b
    add hl, sp                                    ; $5bd6: $39
    rst $38                                       ; $5bd7: $ff
    ld a, [hl-]                                   ; $5bd8: $3a
    dec sp                                        ; $5bd9: $3b
    inc a                                         ; $5bda: $3c
    dec a                                         ; $5bdb: $3d
    dec b                                         ; $5bdc: $05
    ld a, a                                       ; $5bdd: $7f
    ld l, c                                       ; $5bde: $69
    adc b                                         ; $5bdf: $88
    rst $38                                       ; $5be0: $ff
    adc c                                         ; $5be1: $89
    ld b, a                                       ; $5be2: $47
    ld c, b                                       ; $5be3: $48
    ld c, c                                       ; $5be4: $49
    ld c, d                                       ; $5be5: $4a
    ld c, e                                       ; $5be6: $4b
    add [hl]                                      ; $5be7: $86
    ld l, b                                       ; $5be8: $68
    rst $38                                       ; $5be9: $ff
    ld h, d                                       ; $5bea: $62
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    ld d, [hl]                                    ; $5bed: $56
    ld d, a                                       ; $5bee: $57
    ld e, b                                       ; $5bef: $58
    ld e, c                                       ; $5bf0: $59
    ld e, d                                       ; $5bf1: $5a
    inc bc                                        ; $5bf2: $03
    ld bc, $0060                                  ; $5bf3: $01 $60 $00
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    dec a                                         ; $5bf8: $3d
    dec c                                         ; $5bf9: $0d
    rst $38                                       ; $5bfa: $ff
    db $e4                                        ; $5bfb: $e4
    dec l                                         ; $5bfc: $2d
    dec l                                         ; $5bfd: $2d
    dec c                                         ; $5bfe: $0d
    dec l                                         ; $5bff: $2d
    push af                                       ; $5c00: $f5
    push hl                                       ; $5c01: $e5
    db $fd                                        ; $5c02: $fd
    ld [c], a                                     ; $5c03: $e2
    ld [hl], b                                    ; $5c04: $70
    db $ec                                        ; $5c05: $ec
    db $e3                                        ; $5c06: $e3
    or $e8                                        ; $5c07: $f6 $e8
    ret c                                         ; $5c09: $d8

    and $f6                                       ; $5c0a: $e6 $f6
    ldh a, [rKEY1]                                ; $5c0c: $f0 $4d
    ld c, l                                       ; $5c0e: $4d
    ld c, l                                       ; $5c0f: $4d
    or a                                          ; $5c10: $b7
    pop hl                                        ; $5c11: $e1
    rst $38                                       ; $5c12: $ff
    ld c, l                                       ; $5c13: $4d
    ld l, l                                       ; $5c14: $6d
    ld l, l                                       ; $5c15: $6d
    ld h, b                                       ; $5c16: $60
    ld h, c                                       ; $5c17: $61
    nop                                           ; $5c18: $00

jr_077_5c19:
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    rst $38                                       ; $5c1b: $ff
    ld bc, $0302                                  ; $5c1c: $01 $02 $03
    ld h, e                                       ; $5c1f: $63
    ld h, d                                       ; $5c20: $62
    ld l, b                                       ; $5c21: $68
    jr nz, @+$07                                  ; $5c22: $20 $05

    rst $38                                       ; $5c24: $ff
    dec b                                         ; $5c25: $05
    ld b, $07                                     ; $5c26: $06 $07
    ld [$1b09], sp                                ; $5c28: $08 $09 $1b
    ld l, c                                       ; $5c2b: $69
    ld l, b                                       ; $5c2c: $68
    rst $38                                       ; $5c2d: $ff
    inc b                                         ; $5c2e: $04
    ld de, $1312                                  ; $5c2f: $11 $12 $13
    inc d                                         ; $5c32: $14
    dec d                                         ; $5c33: $15
    ld d, $05                                     ; $5c34: $16 $05
    rst $38                                       ; $5c36: $ff
    ld l, c                                       ; $5c37: $69
    ld [hl], h                                    ; $5c38: $74
    inc b                                         ; $5c39: $04
    jr nz, jr_077_5c5d                            ; $5c3a: $20 $21

    ld [hl+], a                                   ; $5c3c: $22
    inc hl                                        ; $5c3d: $23
    inc h                                         ; $5c3e: $24
    rst $38                                       ; $5c3f: $ff
    dec h                                         ; $5c40: $25
    dec b                                         ; $5c41: $05
    ld [hl], l                                    ; $5c42: $75
    ld l, c                                       ; $5c43: $69
    ld c, h                                       ; $5c44: $4c
    inc b                                         ; $5c45: $04
    cpl                                           ; $5c46: $2f
    jr nc, @+$01                                  ; $5c47: $30 $ff

    ld sp, $3332                                  ; $5c49: $31 $32 $33
    ld a, e                                       ; $5c4c: $7b
    ld l, b                                       ; $5c4d: $68
    ld a, a                                       ; $5c4e: $7f
    dec b                                         ; $5c4f: $05
    ld c, h                                       ; $5c50: $4c
    rst $38                                       ; $5c51: $ff
    ld a, $3f                                     ; $5c52: $3e $3f
    ld b, b                                       ; $5c54: $40
    ld b, c                                       ; $5c55: $41
    ld b, d                                       ; $5c56: $42
    inc b                                         ; $5c57: $04
    add b                                         ; $5c58: $80
    ld l, b                                       ; $5c59: $68
    rst $38                                       ; $5c5a: $ff
    add [hl]                                      ; $5c5b: $86
    add a                                         ; $5c5c: $87

jr_077_5c5d:
    ld c, h                                       ; $5c5d: $4c
    ld c, l                                       ; $5c5e: $4d
    ld c, [hl]                                    ; $5c5f: $4e
    ld c, a                                       ; $5c60: $4f
    ld d, b                                       ; $5c61: $50
    adc b                                         ; $5c62: $88
    rst $38                                       ; $5c63: $ff
    ld l, c                                       ; $5c64: $69
    ld h, b                                       ; $5c65: $60
    ld bc, $5b01                                  ; $5c66: $01 $01 $5b
    ld e, h                                       ; $5c69: $5c
    ld e, l                                       ; $5c6a: $5d
    ld e, [hl]                                    ; $5c6b: $5e
    rlca                                          ; $5c6c: $07
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    ld h, d                                       ; $5c6f: $62
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    dec a                                         ; $5c73: $3d
    dec c                                         ; $5c74: $0d
    rst $38                                       ; $5c75: $ff
    db $e4                                        ; $5c76: $e4
    dec l                                         ; $5c77: $2d
    dec l                                         ; $5c78: $2d
    dec c                                         ; $5c79: $0d
    dec l                                         ; $5c7a: $2d
    push af                                       ; $5c7b: $f5
    push hl                                       ; $5c7c: $e5
    db $fd                                        ; $5c7d: $fd
    ld [c], a                                     ; $5c7e: $e2
    ld [hl], b                                    ; $5c7f: $70
    db $ec                                        ; $5c80: $ec
    db $e3                                        ; $5c81: $e3
    or $e8                                        ; $5c82: $f6 $e8
    ret c                                         ; $5c84: $d8

    and $f6                                       ; $5c85: $e6 $f6
    ldh a, [rKEY1]                                ; $5c87: $f0 $4d
    ld c, l                                       ; $5c89: $4d
    ld c, l                                       ; $5c8a: $4d
    jp nz, $ffe1                                  ; $5c8b: $c2 $e1 $ff

    ld c, l                                       ; $5c8e: $4d
    ld l, l                                       ; $5c8f: $6d
    ld l, l                                       ; $5c90: $6d
    ld h, d                                       ; $5c91: $62
    ld h, e                                       ; $5c92: $63
    ld bc, $0101                                  ; $5c93: $01 $01 $01
    rst $38                                       ; $5c96: $ff
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    ld e, a                                       ; $5c99: $5f
    ld h, c                                       ; $5c9a: $61
    ld h, b                                       ; $5c9b: $60
    ld l, c                                       ; $5c9c: $69
    dec de                                        ; $5c9d: $1b
    inc b                                         ; $5c9e: $04
    rst $38                                       ; $5c9f: $ff
    inc b                                         ; $5ca0: $04
    ld h, h                                       ; $5ca1: $64
    ld h, l                                       ; $5ca2: $65
    ld h, [hl]                                    ; $5ca3: $66
    ld h, a                                       ; $5ca4: $67
    jr nz, jr_077_5d0f                            ; $5ca5: $20 $68

    ld l, c                                       ; $5ca7: $69
    rst $38                                       ; $5ca8: $ff
    dec b                                         ; $5ca9: $05
    dec c                                         ; $5caa: $0d
    ld l, d                                       ; $5cab: $6a
    ld l, e                                       ; $5cac: $6b
    ld l, h                                       ; $5cad: $6c
    ld l, l                                       ; $5cae: $6d
    ld l, [hl]                                    ; $5caf: $6e
    inc b                                         ; $5cb0: $04
    rst $38                                       ; $5cb1: $ff
    ld l, b                                       ; $5cb2: $68
    ld [hl], l                                    ; $5cb3: $75
    dec b                                         ; $5cb4: $05
    dec de                                        ; $5cb5: $1b
    ld l, a                                       ; $5cb6: $6f
    ld [hl], b                                    ; $5cb7: $70
    ld [hl], c                                    ; $5cb8: $71
    ld [hl], d                                    ; $5cb9: $72
    rst $38                                       ; $5cba: $ff
    ld [hl], e                                    ; $5cbb: $73
    inc b                                         ; $5cbc: $04
    ld [hl], h                                    ; $5cbd: $74
    ld l, b                                       ; $5cbe: $68
    ld a, e                                       ; $5cbf: $7b
    dec b                                         ; $5cc0: $05
    halt                                          ; $5cc1: $76
    ld [hl], a                                    ; $5cc2: $77
    rst $38                                       ; $5cc3: $ff
    ld a, b                                       ; $5cc4: $78
    ld a, c                                       ; $5cc5: $79
    ld a, d                                       ; $5cc6: $7a
    ld c, h                                       ; $5cc7: $4c
    ld l, c                                       ; $5cc8: $69
    add b                                         ; $5cc9: $80
    inc b                                         ; $5cca: $04
    ld a, e                                       ; $5ccb: $7b
    rst $38                                       ; $5ccc: $ff
    ld a, h                                       ; $5ccd: $7c
    ld a, l                                       ; $5cce: $7d
    ld c, c                                       ; $5ccf: $49
    ld c, d                                       ; $5cd0: $4a
    ld a, [hl]                                    ; $5cd1: $7e
    dec b                                         ; $5cd2: $05
    ld a, a                                       ; $5cd3: $7f
    ld l, c                                       ; $5cd4: $69
    rst $38                                       ; $5cd5: $ff
    adc b                                         ; $5cd6: $88
    adc c                                         ; $5cd7: $89
    add c                                         ; $5cd8: $81
    add d                                         ; $5cd9: $82
    add e                                         ; $5cda: $83
    add h                                         ; $5cdb: $84
    add l                                         ; $5cdc: $85
    add [hl]                                      ; $5cdd: $86
    rst $38                                       ; $5cde: $ff
    ld l, b                                       ; $5cdf: $68
    ld h, d                                       ; $5ce0: $62
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    ld e, [hl]                                    ; $5ce3: $5e
    adc d                                         ; $5ce4: $8a
    adc e                                         ; $5ce5: $8b
    adc h                                         ; $5ce6: $8c
    rlca                                          ; $5ce7: $07
    ld bc, $6001                                  ; $5ce8: $01 $01 $60
    nop                                           ; $5ceb: $00
    nop                                           ; $5cec: $00
    nop                                           ; $5ced: $00
    rla                                           ; $5cee: $17
    dec c                                         ; $5cef: $0d
    dec c                                         ; $5cf0: $0d
    dec l                                         ; $5cf1: $2d
    cp $e3                                        ; $5cf2: $fe $e3
    dec l                                         ; $5cf4: $2d
    or $eb                                        ; $5cf5: $f6 $eb
    add sp, -$1e                                  ; $5cf7: $e8 $e2
    push hl                                       ; $5cf9: $e5
    pop hl                                        ; $5cfa: $e1
    ld h, b                                       ; $5cfb: $60
    rst $38                                       ; $5cfc: $ff
    pop hl                                        ; $5cfd: $e1
    db $dd                                        ; $5cfe: $dd
    db $e3                                        ; $5cff: $e3
    or $e5                                        ; $5d00: $f6 $e5
    db $eb                                        ; $5d02: $eb
    push hl                                       ; $5d03: $e5
    or $f2                                        ; $5d04: $f6 $f2
    ld h, h                                       ; $5d06: $64
    nop                                           ; $5d07: $00
    rst $38                                       ; $5d08: $ff
    db $e4                                        ; $5d09: $e4
    rst $30                                       ; $5d0a: $f7
    ld h, h                                       ; $5d0b: $64
    ld h, [hl]                                    ; $5d0c: $66
    ld b, $ff                                     ; $5d0d: $06 $ff

jr_077_5d0f:
    db $e4                                        ; $5d0f: $e4
    ld h, [hl]                                    ; $5d10: $66
    ld l, c                                       ; $5d11: $69
    rrca                                          ; $5d12: $0f
    rrca                                          ; $5d13: $0f
    rst $30                                       ; $5d14: $f7
    rrca                                          ; $5d15: $0f
    db $10                                        ; $5d16: $10
    ld de, $e0fb                                  ; $5d17: $11 $fb $e0
    ld l, c                                       ; $5d1a: $69
    ld l, l                                       ; $5d1b: $6d
    ld b, $06                                     ; $5d1c: $06 $06
    rst $38                                       ; $5d1e: $ff
    dec de                                        ; $5d1f: $1b
    inc e                                         ; $5d20: $1c
    dec e                                         ; $5d21: $1d
    ld e, $06                                     ; $5d22: $1e $06
    ld b, $6d                                     ; $5d24: $06 $6d
    ld [hl], d                                    ; $5d26: $72
    rst $38                                       ; $5d27: $ff
    rrca                                          ; $5d28: $0f
    rrca                                          ; $5d29: $0f
    dec hl                                        ; $5d2a: $2b
    inc l                                         ; $5d2b: $2c
    dec l                                         ; $5d2c: $2d
    ld l, $0f                                     ; $5d2d: $2e $0f
    rrca                                          ; $5d2f: $0f
    cp l                                          ; $5d30: $bd
    ld [hl], d                                    ; $5d31: $72
    ret c                                         ; $5d32: $d8

    ldh [$3b], a                                  ; $5d33: $e0 $3b
    inc a                                         ; $5d35: $3c
    dec a                                         ; $5d36: $3d
    ld a, $d8                                     ; $5d37: $3e $d8
    db $e3                                        ; $5d39: $e3
    ld c, e                                       ; $5d3a: $4b
    rst $30                                       ; $5d3b: $f7
    ld c, h                                       ; $5d3c: $4c
    ld c, l                                       ; $5d3d: $4d
    ld c, [hl]                                    ; $5d3e: $4e
    ret c                                         ; $5d3f: $d8

    ldh [$7f], a                                  ; $5d40: $e0 $7f
    ld e, l                                       ; $5d42: $5d
    ld e, l                                       ; $5d43: $5d
    ld e, c                                       ; $5d44: $59
    ccf                                           ; $5d45: $3f
    ld e, d                                       ; $5d46: $5a
    ld e, e                                       ; $5d47: $5b
    ld e, h                                       ; $5d48: $5c
    ld e, l                                       ; $5d49: $5d
    ld e, l                                       ; $5d4a: $5d
    ld a, a                                       ; $5d4b: $7f
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    rla                                           ; $5d4f: $17
    dec c                                         ; $5d50: $0d
    dec c                                         ; $5d51: $0d
    dec l                                         ; $5d52: $2d
    db $fd                                        ; $5d53: $fd
    ldh [$2d], a                                  ; $5d54: $e0 $2d
    db $fd                                        ; $5d56: $fd
    pop hl                                        ; $5d57: $e1
    or $e1                                        ; $5d58: $f6 $e1
    cp $e0                                        ; $5d5a: $fe $e0
    add b                                         ; $5d5c: $80
    or $ea                                        ; $5d5d: $f6 $ea
    db $ed                                        ; $5d5f: $ed
    db $e4                                        ; $5d60: $e4
    cp $e2                                        ; $5d61: $fe $e2
    or $e5                                        ; $5d63: $f6 $e5
    ret c                                         ; $5d65: $d8

    db $ec                                        ; $5d66: $ec
    call nz, $bae7                                ; $5d67: $c4 $e7 $ba
    pop hl                                        ; $5d6a: $e1
    ld h, h                                       ; $5d6b: $64
    rst $18                                       ; $5d6c: $df
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    ld bc, $fb01                                  ; $5d70: $01 $01 $fb
    ldh [$64], a                                  ; $5d73: $e0 $64
    ld h, [hl]                                    ; $5d75: $66
    rst $38                                       ; $5d76: $ff
    ld b, $06                                     ; $5d77: $06 $06
    rlca                                          ; $5d79: $07
    ld [$0a09], sp                                ; $5d7a: $08 $09 $0a
    ld b, $06                                     ; $5d7d: $06 $06
    rst $38                                       ; $5d7f: $ff
    ld h, [hl]                                    ; $5d80: $66
    ld l, c                                       ; $5d81: $69
    rrca                                          ; $5d82: $0f
    rrca                                          ; $5d83: $0f
    ld [de], a                                    ; $5d84: $12
    inc de                                        ; $5d85: $13
    inc d                                         ; $5d86: $14
    dec d                                         ; $5d87: $15
    rst $38                                       ; $5d88: $ff
    rrca                                          ; $5d89: $0f
    rrca                                          ; $5d8a: $0f
    ld l, c                                       ; $5d8b: $69
    ld l, l                                       ; $5d8c: $6d
    ld b, $06                                     ; $5d8d: $06 $06
    rra                                           ; $5d8f: $1f
    jr nz, @+$01                                  ; $5d90: $20 $ff

    ld hl, $0622                                  ; $5d92: $21 $22 $06
    ld b, $6d                                     ; $5d95: $06 $6d
    ld [hl], d                                    ; $5d97: $72
    rrca                                          ; $5d98: $0f
    rrca                                          ; $5d99: $0f
    ld a, a                                       ; $5d9a: $7f
    cpl                                           ; $5d9b: $2f
    jr nc, @+$33                                  ; $5d9c: $30 $31

    ld [hl-], a                                   ; $5d9e: $32
    rrca                                          ; $5d9f: $0f
    rrca                                          ; $5da0: $0f
    ld [hl], d                                    ; $5da1: $72
    ret c                                         ; $5da2: $d8

    ldh [$ef], a                                  ; $5da3: $e0 $ef
    ccf                                           ; $5da5: $3f
    ld b, b                                       ; $5da6: $40
    ld b, c                                       ; $5da7: $41
    ld b, d                                       ; $5da8: $42
    ret c                                         ; $5da9: $d8

    db $e3                                        ; $5daa: $e3
    rrca                                          ; $5dab: $0f
    ld c, a                                       ; $5dac: $4f
    ld d, b                                       ; $5dad: $50
    cp $fb                                        ; $5dae: $fe $fb
    ldh [rBCPD], a                                ; $5db0: $e0 $69
    ld a, a                                       ; $5db2: $7f
    ld e, l                                       ; $5db3: $5d
    ld e, l                                       ; $5db4: $5d
    ld e, l                                       ; $5db5: $5d
    ld e, [hl]                                    ; $5db6: $5e
    ld e, a                                       ; $5db7: $5f
    ld [bc], a                                    ; $5db8: $02
    ei                                            ; $5db9: $fb
    ldh [$7f], a                                  ; $5dba: $e0 $7f
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    cpl                                           ; $5dbf: $2f
    dec c                                         ; $5dc0: $0d
    dec c                                         ; $5dc1: $0d
    dec l                                         ; $5dc2: $2d
    dec c                                         ; $5dc3: $0d
    rst $38                                       ; $5dc4: $ff
    pop hl                                        ; $5dc5: $e1
    dec l                                         ; $5dc6: $2d
    ld sp, hl                                     ; $5dc7: $f9
    ldh [$f6], a                                  ; $5dc8: $e0 $f6
    ldh a, [$e0]                                  ; $5dca: $f0 $e0
    db $e3                                        ; $5dcc: $e3
    db $e4                                        ; $5dcd: $e4
    cp $e2                                        ; $5dce: $fe $e2
    or $e5                                        ; $5dd0: $f6 $e5
    adc $f4                                       ; $5dd2: $ce $f4
    db $db                                        ; $5dd4: $db
    ld [c], a                                     ; $5dd5: $e2
    dec l                                         ; $5dd6: $2d
    ld h, h                                       ; $5dd7: $64
    nop                                           ; $5dd8: $00
    rst $38                                       ; $5dd9: $ff
    nop                                           ; $5dda: $00
    ld [bc], a                                    ; $5ddb: $02
    inc bc                                        ; $5ddc: $03
    inc b                                         ; $5ddd: $04
    dec b                                         ; $5dde: $05
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    ld h, h                                       ; $5de1: $64
    rst $38                                       ; $5de2: $ff
    ld h, [hl]                                    ; $5de3: $66
    ld b, $06                                     ; $5de4: $06 $06
    dec bc                                        ; $5de6: $0b
    inc c                                         ; $5de7: $0c
    dec c                                         ; $5de8: $0d
    ld c, $06                                     ; $5de9: $0e $06
    rst $38                                       ; $5deb: $ff
    ld b, $66                                     ; $5dec: $06 $66
    ld l, c                                       ; $5dee: $69
    rrca                                          ; $5def: $0f
    rrca                                          ; $5df0: $0f
    ld d, $17                                     ; $5df1: $16 $17
    jr @+$01                                      ; $5df3: $18 $ff

    add hl, de                                    ; $5df5: $19
    rrca                                          ; $5df6: $0f
    rrca                                          ; $5df7: $0f
    ld l, c                                       ; $5df8: $69
    ld l, l                                       ; $5df9: $6d
    ld b, $06                                     ; $5dfa: $06 $06
    inc hl                                        ; $5dfc: $23
    rst $38                                       ; $5dfd: $ff
    inc h                                         ; $5dfe: $24
    dec h                                         ; $5dff: $25
    ld h, $06                                     ; $5e00: $26 $06
    ld b, $6d                                     ; $5e02: $06 $6d
    ld [hl], d                                    ; $5e04: $72
    rrca                                          ; $5e05: $0f
    rst $38                                       ; $5e06: $ff
    rrca                                          ; $5e07: $0f
    inc sp                                        ; $5e08: $33
    inc [hl]                                      ; $5e09: $34
    dec [hl]                                      ; $5e0a: $35
    ld [hl], $0f                                  ; $5e0b: $36 $0f
    rrca                                          ; $5e0d: $0f
    ld [hl], d                                    ; $5e0e: $72
    sbc $d8                                       ; $5e0f: $de $d8
    ldh [rSCX], a                                 ; $5e11: $e0 $43
    ld b, h                                       ; $5e13: $44
    ld b, l                                       ; $5e14: $45
    ld b, [hl]                                    ; $5e15: $46
    ret c                                         ; $5e16: $d8

    db $e3                                        ; $5e17: $e3
    ld d, c                                       ; $5e18: $51
    ld d, d                                       ; $5e19: $52
    ld e, e                                       ; $5e1a: $5b
    ld d, e                                       ; $5e1b: $53
    ld d, h                                       ; $5e1c: $54
    ret c                                         ; $5e1d: $d8

    ldh [$7f], a                                  ; $5e1e: $e0 $7f
    ld e, l                                       ; $5e20: $5d
    rst $38                                       ; $5e21: $ff
    db $e4                                        ; $5e22: $e4
    ld a, a                                       ; $5e23: $7f
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    rla                                           ; $5e27: $17
    dec c                                         ; $5e28: $0d
    dec c                                         ; $5e29: $0d
    dec l                                         ; $5e2a: $2d
    cp $e3                                        ; $5e2b: $fe $e3
    dec l                                         ; $5e2d: $2d
    or $eb                                        ; $5e2e: $f6 $eb
    rst $28                                       ; $5e30: $ef
    pop hl                                        ; $5e31: $e1
    db $fd                                        ; $5e32: $fd
    pop hl                                        ; $5e33: $e1
    pop bc                                        ; $5e34: $c1
    dec c                                         ; $5e35: $0d
    rst $38                                       ; $5e36: $ff
    pop hl                                        ; $5e37: $e1
    db $dd                                        ; $5e38: $dd
    db $e3                                        ; $5e39: $e3
    or $e5                                        ; $5e3a: $f6 $e5
    db $eb                                        ; $5e3c: $eb
    push hl                                       ; $5e3d: $e5
    or $f2                                        ; $5e3e: $f6 $f2
    ld h, h                                       ; $5e40: $64
    nop                                           ; $5e41: $00
    xor $ff                                       ; $5e42: $ee $ff
    db $e4                                        ; $5e44: $e4
    ld h, h                                       ; $5e45: $64
    ld h, [hl]                                    ; $5e46: $66
    ld b, $ff                                     ; $5e47: $06 $ff
    db $e4                                        ; $5e49: $e4
    ld h, [hl]                                    ; $5e4a: $66
    ld l, c                                       ; $5e4b: $69
    rrca                                          ; $5e4c: $0f
    rst $28                                       ; $5e4d: $ef
    rrca                                          ; $5e4e: $0f
    rrca                                          ; $5e4f: $0f
    ld a, [de]                                    ; $5e50: $1a
    ld a, [de]                                    ; $5e51: $1a
    ei                                            ; $5e52: $fb
    ldh [rBCPD], a                                ; $5e53: $e0 $69
    ld l, l                                       ; $5e55: $6d
    ld b, $ff                                     ; $5e56: $06 $ff
    ld b, $27                                     ; $5e58: $06 $27
    jr z, jr_077_5e85                             ; $5e5a: $28 $29

    ld a, [hl+]                                   ; $5e5c: $2a
    ld b, $06                                     ; $5e5d: $06 $06
    ld l, l                                       ; $5e5f: $6d
    rst $38                                       ; $5e60: $ff
    ld [hl], d                                    ; $5e61: $72
    rrca                                          ; $5e62: $0f
    rrca                                          ; $5e63: $0f
    scf                                           ; $5e64: $37
    jr c, @+$3b                                   ; $5e65: $38 $39

    ld a, [hl-]                                   ; $5e67: $3a
    rrca                                          ; $5e68: $0f
    ld a, e                                       ; $5e69: $7b
    rrca                                          ; $5e6a: $0f
    ld [hl], d                                    ; $5e6b: $72
    ret c                                         ; $5e6c: $d8

    ldh [rBGP], a                                 ; $5e6d: $e0 $47
    ld c, b                                       ; $5e6f: $48
    ld c, c                                       ; $5e70: $49
    ld c, d                                       ; $5e71: $4a
    ret c                                         ; $5e72: $d8

    db $e3                                        ; $5e73: $e3
    rst $28                                       ; $5e74: $ef
    ld d, l                                       ; $5e75: $55
    ld d, [hl]                                    ; $5e76: $56
    ld d, a                                       ; $5e77: $57
    ld e, b                                       ; $5e78: $58
    ret c                                         ; $5e79: $d8

    ldh [$7f], a                                  ; $5e7a: $e0 $7f
    ld e, l                                       ; $5e7c: $5d
    ld e, l                                       ; $5e7d: $5d
    ld a, a                                       ; $5e7e: $7f
    ld h, b                                       ; $5e7f: $60
    ld h, c                                       ; $5e80: $61
    ld h, d                                       ; $5e81: $62
    ld h, e                                       ; $5e82: $63
    ld e, l                                       ; $5e83: $5d
    ld e, l                                       ; $5e84: $5d

jr_077_5e85:
    ld a, a                                       ; $5e85: $7f
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    rla                                           ; $5e89: $17
    dec c                                         ; $5e8a: $0d
    dec c                                         ; $5e8b: $0d
    dec l                                         ; $5e8c: $2d
    cp $e3                                        ; $5e8d: $fe $e3
    dec l                                         ; $5e8f: $2d
    or $eb                                        ; $5e90: $f6 $eb
    add sp, -$1e                                  ; $5e92: $e8 $e2
    push hl                                       ; $5e94: $e5
    pop hl                                        ; $5e95: $e1
    ld h, b                                       ; $5e96: $60
    rst $38                                       ; $5e97: $ff
    pop hl                                        ; $5e98: $e1
    db $dd                                        ; $5e99: $dd
    db $e3                                        ; $5e9a: $e3
    or $e5                                        ; $5e9b: $f6 $e5
    db $eb                                        ; $5e9d: $eb
    push hl                                       ; $5e9e: $e5
    or $f2                                        ; $5e9f: $f6 $f2
    ld h, h                                       ; $5ea1: $64
    nop                                           ; $5ea2: $00
    rst $38                                       ; $5ea3: $ff
    db $e4                                        ; $5ea4: $e4
    rst $30                                       ; $5ea5: $f7
    ld h, h                                       ; $5ea6: $64
    ld h, [hl]                                    ; $5ea7: $66
    ld b, $ff                                     ; $5ea8: $06 $ff
    db $e4                                        ; $5eaa: $e4
    ld h, [hl]                                    ; $5eab: $66
    ld l, c                                       ; $5eac: $69
    rrca                                          ; $5ead: $0f
    rrca                                          ; $5eae: $0f
    rst $30                                       ; $5eaf: $f7
    rrca                                          ; $5eb0: $0f
    ld h, a                                       ; $5eb1: $67
    ld l, b                                       ; $5eb2: $68
    ei                                            ; $5eb3: $fb
    ldh [rBCPD], a                                ; $5eb4: $e0 $69
    ld l, l                                       ; $5eb6: $6d
    ld b, $06                                     ; $5eb7: $06 $06
    rst $38                                       ; $5eb9: $ff
    ld l, d                                       ; $5eba: $6a
    ld l, e                                       ; $5ebb: $6b
    dec c                                         ; $5ebc: $0d
    ld l, h                                       ; $5ebd: $6c
    ld b, $06                                     ; $5ebe: $06 $06
    ld l, l                                       ; $5ec0: $6d
    ld [hl], d                                    ; $5ec1: $72
    rst $38                                       ; $5ec2: $ff
    rrca                                          ; $5ec3: $0f
    rrca                                          ; $5ec4: $0f
    ld l, [hl]                                    ; $5ec5: $6e
    ld l, a                                       ; $5ec6: $6f
    ld [hl], b                                    ; $5ec7: $70
    ld [hl], c                                    ; $5ec8: $71
    rrca                                          ; $5ec9: $0f
    rrca                                          ; $5eca: $0f
    cp l                                          ; $5ecb: $bd
    ld [hl], d                                    ; $5ecc: $72
    ret c                                         ; $5ecd: $d8

    ldh [$73], a                                  ; $5ece: $e0 $73
    ld [hl], h                                    ; $5ed0: $74
    ld [hl], l                                    ; $5ed1: $75
    halt                                          ; $5ed2: $76
    ret c                                         ; $5ed3: $d8

    db $e3                                        ; $5ed4: $e3
    ld [hl], a                                    ; $5ed5: $77
    rst $30                                       ; $5ed6: $f7
    ld a, b                                       ; $5ed7: $78
    ld a, c                                       ; $5ed8: $79
    ld a, d                                       ; $5ed9: $7a
    ret c                                         ; $5eda: $d8

    ldh [$7f], a                                  ; $5edb: $e0 $7f
    ld e, l                                       ; $5edd: $5d
    ld e, l                                       ; $5ede: $5d
    ld a, e                                       ; $5edf: $7b
    ccf                                           ; $5ee0: $3f
    ld a, h                                       ; $5ee1: $7c
    ld a, l                                       ; $5ee2: $7d
    ld a, [hl]                                    ; $5ee3: $7e

Jump_077_5ee4:
    ld e, l                                       ; $5ee4: $5d
    ld e, l                                       ; $5ee5: $5d
    ld a, a                                       ; $5ee6: $7f
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    cpl                                           ; $5eea: $2f
    dec c                                         ; $5eeb: $0d
    dec c                                         ; $5eec: $0d
    dec l                                         ; $5eed: $2d
    dec c                                         ; $5eee: $0d
    rst $38                                       ; $5eef: $ff
    pop hl                                        ; $5ef0: $e1
    dec l                                         ; $5ef1: $2d
    ld sp, hl                                     ; $5ef2: $f9
    db $e3                                        ; $5ef3: $e3
    rst $30                                       ; $5ef4: $f7
    pop hl                                        ; $5ef5: $e1
    db $ec                                        ; $5ef6: $ec
    or $ff                                        ; $5ef7: $f6 $ff
    db $ec                                        ; $5ef9: $ec
    xor $4d                                       ; $5efa: $ee $4d
    ld c, l                                       ; $5efc: $4d
    cp d                                          ; $5efd: $ba
    pop hl                                        ; $5efe: $e1
    dec l                                         ; $5eff: $2d
    dec c                                         ; $5f00: $0d
    ld l, l                                       ; $5f01: $6d
    rst $38                                       ; $5f02: $ff
    ld l, l                                       ; $5f03: $6d
    ld [hl], b                                    ; $5f04: $70
    ld [hl], c                                    ; $5f05: $71
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    ld bc, $0302                                  ; $5f08: $01 $02 $03
    rst $38                                       ; $5f0b: $ff
    nop                                           ; $5f0c: $00
    ld [hl], c                                    ; $5f0d: $71
    ld [hl], b                                    ; $5f0e: $70
    ld [hl], a                                    ; $5f0f: $77
    ld a, b                                       ; $5f10: $78
    ld a, c                                       ; $5f11: $79
    ld a, [bc]                                    ; $5f12: $0a
    dec bc                                        ; $5f13: $0b
    rst $38                                       ; $5f14: $ff
    inc c                                         ; $5f15: $0c
    dec c                                         ; $5f16: $0d
    ld a, c                                       ; $5f17: $79
    ld a, b                                       ; $5f18: $78
    ld [hl], a                                    ; $5f19: $77
    ld a, [hl]                                    ; $5f1a: $7e
    ld a, a                                       ; $5f1b: $7f
    add b                                         ; $5f1c: $80
    rst $38                                       ; $5f1d: $ff
    ld a, [de]                                    ; $5f1e: $1a
    dec de                                        ; $5f1f: $1b
    inc e                                         ; $5f20: $1c
    dec e                                         ; $5f21: $1d
    add b                                         ; $5f22: $80
    ld a, a                                       ; $5f23: $7f
    ld a, [hl]                                    ; $5f24: $7e
    add l                                         ; $5f25: $85
    rst $38                                       ; $5f26: $ff
    add [hl]                                      ; $5f27: $86
    add a                                         ; $5f28: $87
    ld a, [hl+]                                   ; $5f29: $2a
    dec hl                                        ; $5f2a: $2b
    inc l                                         ; $5f2b: $2c
    dec l                                         ; $5f2c: $2d
    add a                                         ; $5f2d: $87
    add [hl]                                      ; $5f2e: $86
    cp l                                          ; $5f2f: $bd
    add l                                         ; $5f30: $85
    ld [c], a                                     ; $5f31: $e2
    ldh [$3a], a                                  ; $5f32: $e0 $3a
    dec sp                                        ; $5f34: $3b
    inc a                                         ; $5f35: $3c
    dec a                                         ; $5f36: $3d
    ld [c], a                                     ; $5f37: $e2
    db $e3                                        ; $5f38: $e3
    ld c, d                                       ; $5f39: $4a
    rst $30                                       ; $5f3a: $f7
    ld c, e                                       ; $5f3b: $4b
    ld c, h                                       ; $5f3c: $4c
    ld c, l                                       ; $5f3d: $4d
    ld [c], a                                     ; $5f3e: $e2
    db $e3                                        ; $5f3f: $e3
    ld e, b                                       ; $5f40: $58
    ld e, c                                       ; $5f41: $59
    ld e, d                                       ; $5f42: $5a
    ld e, e                                       ; $5f43: $5b
    cp $e2                                        ; $5f44: $fe $e2
    ldh [rSVBK], a                                ; $5f46: $e0 $70
    ld [hl], c                                    ; $5f48: $71
    ld h, h                                       ; $5f49: $64
    ld h, h                                       ; $5f4a: $64
    ld h, l                                       ; $5f4b: $65
    ld h, [hl]                                    ; $5f4c: $66
    ld h, h                                       ; $5f4d: $64
    rlca                                          ; $5f4e: $07
    ld h, h                                       ; $5f4f: $64
    ld [hl], c                                    ; $5f50: $71
    ld [hl], b                                    ; $5f51: $70
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    cpl                                           ; $5f55: $2f
    dec c                                         ; $5f56: $0d
    dec c                                         ; $5f57: $0d
    dec l                                         ; $5f58: $2d
    dec c                                         ; $5f59: $0d
    db $fc                                        ; $5f5a: $fc
    pop hl                                        ; $5f5b: $e1
    dec l                                         ; $5f5c: $2d
    ld sp, hl                                     ; $5f5d: $f9
    pop hl                                        ; $5f5e: $e1
    db $fd                                        ; $5f5f: $fd
    pop hl                                        ; $5f60: $e1
    reti                                          ; $5f61: $d9


    dec l                                         ; $5f62: $2d
    or $ff                                        ; $5f63: $f6 $ff
    db $ec                                        ; $5f65: $ec
    rst $28                                       ; $5f66: $ef
    ld c, l                                       ; $5f67: $4d
    ld c, l                                       ; $5f68: $4d
    cp d                                          ; $5f69: $ba
    db $e3                                        ; $5f6a: $e3
    ld l, l                                       ; $5f6b: $6d
    ld l, l                                       ; $5f6c: $6d
    rst $38                                       ; $5f6d: $ff
    ld [hl], b                                    ; $5f6e: $70
    ld [hl], c                                    ; $5f6f: $71
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    inc b                                         ; $5f72: $04
    dec b                                         ; $5f73: $05
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    rst $38                                       ; $5f76: $ff
    ld [hl], c                                    ; $5f77: $71
    ld [hl], b                                    ; $5f78: $70
    ld [hl], a                                    ; $5f79: $77
    ld a, b                                       ; $5f7a: $78
    ld a, c                                       ; $5f7b: $79
    ld c, $0f                                     ; $5f7c: $0e $0f
    db $10                                        ; $5f7e: $10
    rst $38                                       ; $5f7f: $ff
    ld de, $7879                                  ; $5f80: $11 $79 $78
    ld [hl], a                                    ; $5f83: $77
    ld a, [hl]                                    ; $5f84: $7e
    ld a, a                                       ; $5f85: $7f
    add b                                         ; $5f86: $80
    ld e, $ff                                     ; $5f87: $1e $ff
    rra                                           ; $5f89: $1f
    jr nz, jr_077_5fad                            ; $5f8a: $20 $21

    add b                                         ; $5f8c: $80
    ld a, a                                       ; $5f8d: $7f
    ld a, [hl]                                    ; $5f8e: $7e
    add l                                         ; $5f8f: $85
    add [hl]                                      ; $5f90: $86
    rst $38                                       ; $5f91: $ff
    add a                                         ; $5f92: $87
    ld l, $2f                                     ; $5f93: $2e $2f
    jr nc, jr_077_5fc8                            ; $5f95: $30 $31

    add a                                         ; $5f97: $87
    add [hl]                                      ; $5f98: $86
    add l                                         ; $5f99: $85
    sbc $e2                                       ; $5f9a: $de $e2
    ldh [$3e], a                                  ; $5f9c: $e0 $3e
    ccf                                           ; $5f9e: $3f
    ld b, b                                       ; $5f9f: $40
    ld b, c                                       ; $5fa0: $41
    ld [c], a                                     ; $5fa1: $e2
    db $e3                                        ; $5fa2: $e3
    ld c, [hl]                                    ; $5fa3: $4e
    ld c, h                                       ; $5fa4: $4c
    ld a, e                                       ; $5fa5: $7b
    ld c, a                                       ; $5fa6: $4f
    ld d, b                                       ; $5fa7: $50
    ld [c], a                                     ; $5fa8: $e2
    db $e3                                        ; $5fa9: $e3
    ld e, h                                       ; $5faa: $5c
    ld e, l                                       ; $5fab: $5d
    ld e, [hl]                                    ; $5fac: $5e

jr_077_5fad:
    ld e, a                                       ; $5fad: $5f
    ld [c], a                                     ; $5fae: $e2
    ldh [rIE], a                                  ; $5faf: $e0 $ff
    ld [hl], b                                    ; $5fb1: $70
    ld [hl], c                                    ; $5fb2: $71
    ld h, h                                       ; $5fb3: $64
    ld h, h                                       ; $5fb4: $64
    ld h, a                                       ; $5fb5: $67
    ld l, b                                       ; $5fb6: $68
    ld h, h                                       ; $5fb7: $64
    ld h, h                                       ; $5fb8: $64
    inc bc                                        ; $5fb9: $03
    ld [hl], c                                    ; $5fba: $71
    ld [hl], b                                    ; $5fbb: $70
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    cpl                                           ; $5fbf: $2f
    dec c                                         ; $5fc0: $0d
    dec c                                         ; $5fc1: $0d
    dec l                                         ; $5fc2: $2d
    dec c                                         ; $5fc3: $0d
    db $fc                                        ; $5fc4: $fc
    pop hl                                        ; $5fc5: $e1
    dec l                                         ; $5fc6: $2d
    ld sp, hl                                     ; $5fc7: $f9

jr_077_5fc8:
    pop hl                                        ; $5fc8: $e1
    db $fd                                        ; $5fc9: $fd
    pop hl                                        ; $5fca: $e1
    reti                                          ; $5fcb: $d9


    dec l                                         ; $5fcc: $2d
    or $ff                                        ; $5fcd: $f6 $ff
    db $ec                                        ; $5fcf: $ec
    rst $28                                       ; $5fd0: $ef
    ld c, l                                       ; $5fd1: $4d
    ld c, l                                       ; $5fd2: $4d
    cp d                                          ; $5fd3: $ba
    db $e3                                        ; $5fd4: $e3
    ld l, l                                       ; $5fd5: $6d
    ld l, l                                       ; $5fd6: $6d
    rst $38                                       ; $5fd7: $ff
    ld [hl], b                                    ; $5fd8: $70
    ld [hl], c                                    ; $5fd9: $71
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    ld b, $07                                     ; $5fdc: $06 $07
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    rst $38                                       ; $5fe0: $ff
    ld [hl], c                                    ; $5fe1: $71
    ld [hl], b                                    ; $5fe2: $70
    ld [hl], a                                    ; $5fe3: $77
    ld a, b                                       ; $5fe4: $78
    ld a, c                                       ; $5fe5: $79
    ld [de], a                                    ; $5fe6: $12
    inc de                                        ; $5fe7: $13
    inc d                                         ; $5fe8: $14
    rst $38                                       ; $5fe9: $ff
    dec d                                         ; $5fea: $15
    ld a, c                                       ; $5feb: $79
    ld a, b                                       ; $5fec: $78
    ld [hl], a                                    ; $5fed: $77
    ld a, [hl]                                    ; $5fee: $7e
    ld a, a                                       ; $5fef: $7f
    add b                                         ; $5ff0: $80
    ld [hl+], a                                   ; $5ff1: $22
    rst $38                                       ; $5ff2: $ff
    inc hl                                        ; $5ff3: $23
    inc h                                         ; $5ff4: $24
    dec h                                         ; $5ff5: $25
    add b                                         ; $5ff6: $80
    ld a, a                                       ; $5ff7: $7f
    ld a, [hl]                                    ; $5ff8: $7e
    add l                                         ; $5ff9: $85
    add [hl]                                      ; $5ffa: $86
    rst $38                                       ; $5ffb: $ff
    add a                                         ; $5ffc: $87
    ld [hl-], a                                   ; $5ffd: $32
    inc sp                                        ; $5ffe: $33
    inc [hl]                                      ; $5fff: $34
    dec [hl]                                      ; $6000: $35
    add a                                         ; $6001: $87
    add [hl]                                      ; $6002: $86
    add l                                         ; $6003: $85
    sbc $e2                                       ; $6004: $de $e2
    ldh [rSCY], a                                 ; $6006: $e0 $42
    ld b, e                                       ; $6008: $43
    ld b, h                                       ; $6009: $44
    ld b, l                                       ; $600a: $45
    ld [c], a                                     ; $600b: $e2
    db $e3                                        ; $600c: $e3
    ld d, c                                       ; $600d: $51
    ld d, d                                       ; $600e: $52
    ld a, e                                       ; $600f: $7b
    ld d, e                                       ; $6010: $53
    ld d, h                                       ; $6011: $54
    ld [c], a                                     ; $6012: $e2
    db $e3                                        ; $6013: $e3
    ld e, h                                       ; $6014: $5c
    ld h, b                                       ; $6015: $60
    ld h, c                                       ; $6016: $61
    ld e, a                                       ; $6017: $5f
    ld [c], a                                     ; $6018: $e2
    ldh [rIE], a                                  ; $6019: $e0 $ff
    ld [hl], b                                    ; $601b: $70
    ld [hl], c                                    ; $601c: $71
    ld h, h                                       ; $601d: $64
    ld h, h                                       ; $601e: $64
    ld l, c                                       ; $601f: $69
    ld l, d                                       ; $6020: $6a
    ld h, h                                       ; $6021: $64
    ld h, h                                       ; $6022: $64
    inc bc                                        ; $6023: $03
    ld [hl], c                                    ; $6024: $71
    ld [hl], b                                    ; $6025: $70
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    cpl                                           ; $6029: $2f
    dec c                                         ; $602a: $0d
    dec c                                         ; $602b: $0d
    dec l                                         ; $602c: $2d
    dec c                                         ; $602d: $0d
    db $fc                                        ; $602e: $fc
    pop hl                                        ; $602f: $e1
    dec l                                         ; $6030: $2d
    ld sp, hl                                     ; $6031: $f9
    pop hl                                        ; $6032: $e1
    db $fd                                        ; $6033: $fd
    pop hl                                        ; $6034: $e1
    reti                                          ; $6035: $d9


    dec l                                         ; $6036: $2d
    or $ff                                        ; $6037: $f6 $ff
    db $ec                                        ; $6039: $ec
    rst $28                                       ; $603a: $ef
    ld c, l                                       ; $603b: $4d
    ld c, l                                       ; $603c: $4d
    cp d                                          ; $603d: $ba
    db $e3                                        ; $603e: $e3
    ld l, l                                       ; $603f: $6d
    ld l, l                                       ; $6040: $6d
    rst $38                                       ; $6041: $ff
    ld [hl], b                                    ; $6042: $70
    ld [hl], c                                    ; $6043: $71
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    ld [$0009], sp                                ; $6046: $08 $09 $00
    nop                                           ; $6049: $00
    rst $38                                       ; $604a: $ff
    ld [hl], c                                    ; $604b: $71
    ld [hl], b                                    ; $604c: $70
    ld [hl], a                                    ; $604d: $77
    ld a, b                                       ; $604e: $78
    ld a, c                                       ; $604f: $79
    ld d, $17                                     ; $6050: $16 $17
    jr @+$01                                      ; $6052: $18 $ff

    add hl, de                                    ; $6054: $19
    ld a, c                                       ; $6055: $79
    ld a, b                                       ; $6056: $78
    ld [hl], a                                    ; $6057: $77
    ld a, [hl]                                    ; $6058: $7e
    ld a, a                                       ; $6059: $7f
    add b                                         ; $605a: $80
    ld h, $ff                                     ; $605b: $26 $ff
    daa                                           ; $605d: $27
    jr z, jr_077_6089                             ; $605e: $28 $29

    add b                                         ; $6060: $80
    ld a, a                                       ; $6061: $7f
    ld a, [hl]                                    ; $6062: $7e
    add l                                         ; $6063: $85
    add [hl]                                      ; $6064: $86
    rst $38                                       ; $6065: $ff
    add a                                         ; $6066: $87
    ld [hl], $37                                  ; $6067: $36 $37
    jr c, @+$3b                                   ; $6069: $38 $39

    add a                                         ; $606b: $87
    add [hl]                                      ; $606c: $86
    add l                                         ; $606d: $85
    sbc $e2                                       ; $606e: $de $e2
    ldh [rDMA], a                                 ; $6070: $e0 $46
    ld b, a                                       ; $6072: $47
    ld c, b                                       ; $6073: $48
    ld c, c                                       ; $6074: $49
    ld [c], a                                     ; $6075: $e2
    db $e3                                        ; $6076: $e3
    ld d, l                                       ; $6077: $55
    ld d, [hl]                                    ; $6078: $56
    ld a, e                                       ; $6079: $7b
    ld d, a                                       ; $607a: $57
    ld d, b                                       ; $607b: $50
    ld [c], a                                     ; $607c: $e2
    db $e3                                        ; $607d: $e3
    ld e, h                                       ; $607e: $5c
    ld h, d                                       ; $607f: $62
    ld h, e                                       ; $6080: $63
    ld e, a                                       ; $6081: $5f
    ld [c], a                                     ; $6082: $e2
    ldh [rIE], a                                  ; $6083: $e0 $ff
    ld [hl], b                                    ; $6085: $70
    ld [hl], c                                    ; $6086: $71
    ld h, h                                       ; $6087: $64
    ld h, h                                       ; $6088: $64

jr_077_6089:
    ld l, e                                       ; $6089: $6b
    ld l, h                                       ; $608a: $6c
    ld h, h                                       ; $608b: $64
    ld h, h                                       ; $608c: $64
    inc bc                                        ; $608d: $03
    ld [hl], c                                    ; $608e: $71
    ld [hl], b                                    ; $608f: $70
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    cpl                                           ; $6093: $2f
    dec c                                         ; $6094: $0d
    dec c                                         ; $6095: $0d
    dec l                                         ; $6096: $2d
    dec c                                         ; $6097: $0d
    rst $38                                       ; $6098: $ff
    pop hl                                        ; $6099: $e1
    dec l                                         ; $609a: $2d
    ld sp, hl                                     ; $609b: $f9
    db $e3                                        ; $609c: $e3
    rst $30                                       ; $609d: $f7
    pop hl                                        ; $609e: $e1
    db $ec                                        ; $609f: $ec
    or $ff                                        ; $60a0: $f6 $ff
    db $ec                                        ; $60a2: $ec
    xor $4d                                       ; $60a3: $ee $4d
    ld c, l                                       ; $60a5: $4d
    cp d                                          ; $60a6: $ba
    pop hl                                        ; $60a7: $e1
    dec l                                         ; $60a8: $2d
    dec c                                         ; $60a9: $0d
    ld l, l                                       ; $60aa: $6d
    rst $38                                       ; $60ab: $ff
    ld l, l                                       ; $60ac: $6d
    ld [hl], b                                    ; $60ad: $70
    ld [hl], c                                    ; $60ae: $71
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    ld l, l                                       ; $60b1: $6d
    ld l, [hl]                                    ; $60b2: $6e
    ld l, a                                       ; $60b3: $6f
    rst $38                                       ; $60b4: $ff
    nop                                           ; $60b5: $00
    ld [hl], c                                    ; $60b6: $71
    ld [hl], b                                    ; $60b7: $70
    ld [hl], a                                    ; $60b8: $77
    ld a, b                                       ; $60b9: $78
    ld a, c                                       ; $60ba: $79
    ld [hl], e                                    ; $60bb: $73
    ld [hl], h                                    ; $60bc: $74
    rst $38                                       ; $60bd: $ff
    ld [hl], l                                    ; $60be: $75
    halt                                          ; $60bf: $76
    ld a, c                                       ; $60c0: $79
    ld a, b                                       ; $60c1: $78
    ld [hl], a                                    ; $60c2: $77
    ld a, [hl]                                    ; $60c3: $7e
    ld a, a                                       ; $60c4: $7f
    add b                                         ; $60c5: $80
    rst $38                                       ; $60c6: $ff
    ld a, d                                       ; $60c7: $7a
    ld a, e                                       ; $60c8: $7b
    ld a, h                                       ; $60c9: $7c
    ld a, l                                       ; $60ca: $7d
    add b                                         ; $60cb: $80
    ld a, a                                       ; $60cc: $7f
    ld a, [hl]                                    ; $60cd: $7e
    add l                                         ; $60ce: $85
    rst $38                                       ; $60cf: $ff
    add [hl]                                      ; $60d0: $86
    add a                                         ; $60d1: $87
    add c                                         ; $60d2: $81
    add d                                         ; $60d3: $82
    add e                                         ; $60d4: $83
    add h                                         ; $60d5: $84
    add a                                         ; $60d6: $87
    add [hl]                                      ; $60d7: $86
    cp l                                          ; $60d8: $bd
    add l                                         ; $60d9: $85
    ld [c], a                                     ; $60da: $e2
    ldh [$88], a                                  ; $60db: $e0 $88
    adc c                                         ; $60dd: $89
    adc d                                         ; $60de: $8a
    adc e                                         ; $60df: $8b
    ld [c], a                                     ; $60e0: $e2
    db $e3                                        ; $60e1: $e3
    ld c, d                                       ; $60e2: $4a
    rst $30                                       ; $60e3: $f7
    adc h                                         ; $60e4: $8c
    adc l                                         ; $60e5: $8d
    adc [hl]                                      ; $60e6: $8e
    ld [c], a                                     ; $60e7: $e2
    db $e3                                        ; $60e8: $e3
    ld e, b                                       ; $60e9: $58
    adc a                                         ; $60ea: $8f
    sub b                                         ; $60eb: $90
    ld e, e                                       ; $60ec: $5b
    cp $e2                                        ; $60ed: $fe $e2
    ldh [rSVBK], a                                ; $60ef: $e0 $70
    ld [hl], c                                    ; $60f1: $71
    ld h, h                                       ; $60f2: $64
    ld h, h                                       ; $60f3: $64
    sub c                                         ; $60f4: $91
    sub d                                         ; $60f5: $92
    ld h, h                                       ; $60f6: $64
    rlca                                          ; $60f7: $07
    ld h, h                                       ; $60f8: $64
    ld [hl], c                                    ; $60f9: $71
    ld [hl], b                                    ; $60fa: $70
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    nop                                           ; $60fd: $00
    cp a                                          ; $60fe: $bf
    dec c                                         ; $60ff: $0d
    dec c                                         ; $6100: $0d
    dec l                                         ; $6101: $2d
    dec c                                         ; $6102: $0d
    dec l                                         ; $6103: $2d
    dec l                                         ; $6104: $2d
    db $fc                                        ; $6105: $fc
    pop hl                                        ; $6106: $e1
    dec c                                         ; $6107: $0d
    or b                                          ; $6108: $b0
    push af                                       ; $6109: $f5
    ldh [rIE], a                                  ; $610a: $e0 $ff
    db $e3                                        ; $610c: $e3
    or $ff                                        ; $610d: $f6 $ff
    db $ec                                        ; $610f: $ec
    db $ed                                        ; $6110: $ed
    ld c, l                                       ; $6111: $4d
    ld c, l                                       ; $6112: $4d
    cp d                                          ; $6113: $ba
    db $e3                                        ; $6114: $e3
    ld l, l                                       ; $6115: $6d
    rst $38                                       ; $6116: $ff
    ld l, l                                       ; $6117: $6d
    ld [hl], b                                    ; $6118: $70
    ld [hl], c                                    ; $6119: $71
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    add hl, bc                                    ; $611c: $09
    ld [$ff00], sp                                ; $611d: $08 $00 $ff
    nop                                           ; $6120: $00
    ld [hl], c                                    ; $6121: $71
    ld [hl], b                                    ; $6122: $70
    ld [hl], a                                    ; $6123: $77
    ld a, b                                       ; $6124: $78
    ld a, c                                       ; $6125: $79
    add hl, de                                    ; $6126: $19
    jr @+$01                                      ; $6127: $18 $ff

    rla                                           ; $6129: $17
    ld d, $79                                     ; $612a: $16 $79
    ld a, b                                       ; $612c: $78
    ld [hl], a                                    ; $612d: $77
    ld a, [hl]                                    ; $612e: $7e
    ld a, a                                       ; $612f: $7f
    add b                                         ; $6130: $80
    rst $38                                       ; $6131: $ff
    add hl, hl                                    ; $6132: $29
    jr z, jr_077_615c                             ; $6133: $28 $27

    ld h, $80                                     ; $6135: $26 $80
    ld a, a                                       ; $6137: $7f
    ld a, [hl]                                    ; $6138: $7e
    add l                                         ; $6139: $85
    rst $38                                       ; $613a: $ff
    add [hl]                                      ; $613b: $86
    add a                                         ; $613c: $87
    add hl, sp                                    ; $613d: $39
    jr c, jr_077_6177                             ; $613e: $38 $37

    ld [hl], $87                                  ; $6140: $36 $87
    add [hl]                                      ; $6142: $86
    cp l                                          ; $6143: $bd
    add l                                         ; $6144: $85
    ld [c], a                                     ; $6145: $e2
    ldh [rOBP1], a                                ; $6146: $e0 $49
    ld c, b                                       ; $6148: $48
    ld b, a                                       ; $6149: $47
    ld b, [hl]                                    ; $614a: $46
    ld [c], a                                     ; $614b: $e2
    db $e3                                        ; $614c: $e3
    ld d, b                                       ; $614d: $50
    rst $30                                       ; $614e: $f7
    ld d, a                                       ; $614f: $57
    ld d, [hl]                                    ; $6150: $56
    ld d, l                                       ; $6151: $55
    ld [c], a                                     ; $6152: $e2
    db $e3                                        ; $6153: $e3
    ld e, a                                       ; $6154: $5f
    ld h, e                                       ; $6155: $63
    ld h, d                                       ; $6156: $62
    ld e, h                                       ; $6157: $5c
    cp $e2                                        ; $6158: $fe $e2
    ldh [rSVBK], a                                ; $615a: $e0 $70

jr_077_615c:
    ld [hl], c                                    ; $615c: $71
    ld h, h                                       ; $615d: $64
    ld h, h                                       ; $615e: $64
    ld l, h                                       ; $615f: $6c
    ld l, e                                       ; $6160: $6b
    ld h, h                                       ; $6161: $64

Jump_077_6162:
    rlca                                          ; $6162: $07
    ld h, h                                       ; $6163: $64
    ld [hl], c                                    ; $6164: $71
    ld [hl], b                                    ; $6165: $70
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    cp a                                          ; $6169: $bf
    dec c                                         ; $616a: $0d
    dec c                                         ; $616b: $0d
    dec l                                         ; $616c: $2d
    dec c                                         ; $616d: $0d
    dec l                                         ; $616e: $2d
    dec l                                         ; $616f: $2d
    db $fc                                        ; $6170: $fc
    pop hl                                        ; $6171: $e1
    dec c                                         ; $6172: $0d
    or b                                          ; $6173: $b0
    push af                                       ; $6174: $f5
    ldh [rIE], a                                  ; $6175: $e0 $ff

jr_077_6177:
    db $e3                                        ; $6177: $e3
    or $ff                                        ; $6178: $f6 $ff
    db $ec                                        ; $617a: $ec
    db $ed                                        ; $617b: $ed
    ld c, l                                       ; $617c: $4d
    ld c, l                                       ; $617d: $4d
    cp d                                          ; $617e: $ba
    db $e3                                        ; $617f: $e3
    ld l, l                                       ; $6180: $6d
    rst $38                                       ; $6181: $ff
    ld l, l                                       ; $6182: $6d
    ld [hl], b                                    ; $6183: $70
    ld [hl], c                                    ; $6184: $71
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    rlca                                          ; $6187: $07
    ld b, $00                                     ; $6188: $06 $00
    rst $38                                       ; $618a: $ff
    nop                                           ; $618b: $00
    ld [hl], c                                    ; $618c: $71
    ld [hl], b                                    ; $618d: $70
    ld [hl], a                                    ; $618e: $77
    ld a, b                                       ; $618f: $78
    ld a, c                                       ; $6190: $79
    dec d                                         ; $6191: $15
    inc d                                         ; $6192: $14
    rst $38                                       ; $6193: $ff
    inc de                                        ; $6194: $13
    ld [de], a                                    ; $6195: $12
    ld a, c                                       ; $6196: $79
    ld a, b                                       ; $6197: $78
    ld [hl], a                                    ; $6198: $77
    ld a, [hl]                                    ; $6199: $7e
    ld a, a                                       ; $619a: $7f
    add b                                         ; $619b: $80
    rst $38                                       ; $619c: $ff
    dec h                                         ; $619d: $25
    inc h                                         ; $619e: $24
    inc hl                                        ; $619f: $23
    ld [hl+], a                                   ; $61a0: $22
    add b                                         ; $61a1: $80
    ld a, a                                       ; $61a2: $7f
    ld a, [hl]                                    ; $61a3: $7e
    add l                                         ; $61a4: $85
    rst $38                                       ; $61a5: $ff
    add [hl]                                      ; $61a6: $86
    add a                                         ; $61a7: $87
    dec [hl]                                      ; $61a8: $35
    inc [hl]                                      ; $61a9: $34
    inc sp                                        ; $61aa: $33
    ld [hl-], a                                   ; $61ab: $32
    add a                                         ; $61ac: $87
    add [hl]                                      ; $61ad: $86
    cp l                                          ; $61ae: $bd
    add l                                         ; $61af: $85
    ld [c], a                                     ; $61b0: $e2
    ldh [rLYC], a                                 ; $61b1: $e0 $45
    ld b, h                                       ; $61b3: $44
    ld b, e                                       ; $61b4: $43
    ld b, d                                       ; $61b5: $42
    ld [c], a                                     ; $61b6: $e2
    db $e3                                        ; $61b7: $e3
    ld d, h                                       ; $61b8: $54
    rst $30                                       ; $61b9: $f7
    ld d, e                                       ; $61ba: $53
    ld d, d                                       ; $61bb: $52
    ld d, c                                       ; $61bc: $51
    ld [c], a                                     ; $61bd: $e2
    db $e3                                        ; $61be: $e3
    ld e, a                                       ; $61bf: $5f
    ld h, c                                       ; $61c0: $61
    ld h, b                                       ; $61c1: $60
    ld e, h                                       ; $61c2: $5c
    cp $e2                                        ; $61c3: $fe $e2
    ldh [rSVBK], a                                ; $61c5: $e0 $70
    ld [hl], c                                    ; $61c7: $71
    ld h, h                                       ; $61c8: $64
    ld h, h                                       ; $61c9: $64
    ld l, d                                       ; $61ca: $6a
    ld l, c                                       ; $61cb: $69
    ld h, h                                       ; $61cc: $64
    rlca                                          ; $61cd: $07
    ld h, h                                       ; $61ce: $64
    ld [hl], c                                    ; $61cf: $71
    ld [hl], b                                    ; $61d0: $70
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    nop                                           ; $61d3: $00
    cp a                                          ; $61d4: $bf
    dec c                                         ; $61d5: $0d
    dec c                                         ; $61d6: $0d
    dec l                                         ; $61d7: $2d
    dec c                                         ; $61d8: $0d
    dec l                                         ; $61d9: $2d
    dec l                                         ; $61da: $2d
    db $fc                                        ; $61db: $fc
    pop hl                                        ; $61dc: $e1
    dec c                                         ; $61dd: $0d
    or b                                          ; $61de: $b0
    push af                                       ; $61df: $f5
    ldh [rIE], a                                  ; $61e0: $e0 $ff
    db $e3                                        ; $61e2: $e3
    or $ff                                        ; $61e3: $f6 $ff
    db $ec                                        ; $61e5: $ec
    db $ed                                        ; $61e6: $ed
    ld c, l                                       ; $61e7: $4d
    ld c, l                                       ; $61e8: $4d
    cp d                                          ; $61e9: $ba
    db $e3                                        ; $61ea: $e3
    ld l, l                                       ; $61eb: $6d
    rst $38                                       ; $61ec: $ff
    ld l, l                                       ; $61ed: $6d
    ld [hl], b                                    ; $61ee: $70
    ld [hl], c                                    ; $61ef: $71
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    dec b                                         ; $61f2: $05
    inc b                                         ; $61f3: $04
    nop                                           ; $61f4: $00
    rst $38                                       ; $61f5: $ff
    nop                                           ; $61f6: $00
    ld [hl], c                                    ; $61f7: $71
    ld [hl], b                                    ; $61f8: $70
    ld [hl], a                                    ; $61f9: $77
    ld a, b                                       ; $61fa: $78
    ld a, c                                       ; $61fb: $79
    ld de, $ff10                                  ; $61fc: $11 $10 $ff
    rrca                                          ; $61ff: $0f
    ld c, $79                                     ; $6200: $0e $79
    ld a, b                                       ; $6202: $78
    ld [hl], a                                    ; $6203: $77
    ld a, [hl]                                    ; $6204: $7e
    ld a, a                                       ; $6205: $7f
    add b                                         ; $6206: $80
    rst $38                                       ; $6207: $ff
    ld hl, $1f20                                  ; $6208: $21 $20 $1f
    ld e, $80                                     ; $620b: $1e $80
    ld a, a                                       ; $620d: $7f
    ld a, [hl]                                    ; $620e: $7e
    add l                                         ; $620f: $85
    rst $38                                       ; $6210: $ff
    add [hl]                                      ; $6211: $86
    add a                                         ; $6212: $87
    ld sp, $2f30                                  ; $6213: $31 $30 $2f
    ld l, $87                                     ; $6216: $2e $87
    add [hl]                                      ; $6218: $86
    cp l                                          ; $6219: $bd
    add l                                         ; $621a: $85
    ld [c], a                                     ; $621b: $e2
    ldh [rSTAT], a                                ; $621c: $e0 $41
    ld b, b                                       ; $621e: $40
    ccf                                           ; $621f: $3f
    ld a, $e2                                     ; $6220: $3e $e2
    db $e3                                        ; $6222: $e3
    ld d, b                                       ; $6223: $50
    rst $30                                       ; $6224: $f7
    ld c, a                                       ; $6225: $4f
    ld c, h                                       ; $6226: $4c
    ld c, [hl]                                    ; $6227: $4e
    ld [c], a                                     ; $6228: $e2
    db $e3                                        ; $6229: $e3
    ld e, a                                       ; $622a: $5f
    ld e, [hl]                                    ; $622b: $5e
    ld e, l                                       ; $622c: $5d
    ld e, h                                       ; $622d: $5c
    cp $e2                                        ; $622e: $fe $e2
    ldh [rSVBK], a                                ; $6230: $e0 $70
    ld [hl], c                                    ; $6232: $71
    ld h, h                                       ; $6233: $64
    ld h, h                                       ; $6234: $64
    ld l, b                                       ; $6235: $68
    ld h, a                                       ; $6236: $67
    ld h, h                                       ; $6237: $64
    rlca                                          ; $6238: $07
    ld h, h                                       ; $6239: $64
    ld [hl], c                                    ; $623a: $71
    ld [hl], b                                    ; $623b: $70
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    adc a                                         ; $623f: $8f
    dec c                                         ; $6240: $0d
    dec c                                         ; $6241: $0d
    dec c                                         ; $6242: $0d
    dec l                                         ; $6243: $2d
    db $fc                                        ; $6244: $fc
    ld [c], a                                     ; $6245: $e2
    cp $e9                                        ; $6246: $fe $e9
    rst $38                                       ; $6248: $ff
    db $e4                                        ; $6249: $e4
    dec l                                         ; $624a: $2d
    ld h, d                                       ; $624b: $62
    or $e5                                        ; $624c: $f6 $e5
    dec l                                         ; $624e: $2d
    or $e0                                        ; $624f: $f6 $e0
    ld [$e2e3], a                                 ; $6251: $ea $e3 $e2
    db $f4                                        ; $6254: $f4
    ld c, l                                       ; $6255: $4d
    ld c, l                                       ; $6256: $4d
    call z, Call_077_7fe3                         ; $6257: $cc $e3 $7f
    ld c, l                                       ; $625a: $4d
    ld l, l                                       ; $625b: $6d
    ld b, c                                       ; $625c: $41
    ld bc, $0000                                  ; $625d: $01 $00 $00
    ld bc, $e1fc                                  ; $6260: $01 $fc $e1
    cp a                                          ; $6263: $bf
    ld b, c                                       ; $6264: $41
    ld b, d                                       ; $6265: $42
    inc b                                         ; $6266: $04
    inc bc                                        ; $6267: $03
    inc bc                                        ; $6268: $03
    inc b                                         ; $6269: $04
    db $fc                                        ; $626a: $fc
    pop hl                                        ; $626b: $e1
    ld b, d                                       ; $626c: $42
    rst $38                                       ; $626d: $ff
    ld b, e                                       ; $626e: $43
    ld b, h                                       ; $626f: $44
    dec b                                         ; $6270: $05
    ld b, $07                                     ; $6271: $06 $07
    ld [$0505], sp                                ; $6273: $08 $05 $05
    rst $38                                       ; $6276: $ff

jr_077_6277:
    ld b, h                                       ; $6277: $44
    ld b, e                                       ; $6278: $43
    ld c, c                                       ; $6279: $49
    ld c, d                                       ; $627a: $4a
    inc c                                         ; $627b: $0c
    dec c                                         ; $627c: $0d
    ld c, $0f                                     ; $627d: $0e $0f
    rst $38                                       ; $627f: $ff
    db $10                                        ; $6280: $10
    inc c                                         ; $6281: $0c
    ld c, d                                       ; $6282: $4a
    ld c, c                                       ; $6283: $49
    ld b, d                                       ; $6284: $42
    inc b                                         ; $6285: $04
    jr @+$1b                                      ; $6286: $18 $19

    rst $30                                       ; $6288: $f7
    ld a, [de]                                    ; $6289: $1a
    dec de                                        ; $628a: $1b
    inc e                                         ; $628b: $1c
    ld [c], a                                     ; $628c: $e2
    ld [c], a                                     ; $628d: $e2
    inc h                                         ; $628e: $24
    dec h                                         ; $628f: $25
    ld h, $27                                     ; $6290: $26 $27
    ld a, l                                       ; $6292: $7d
    jr z, jr_077_6277                             ; $6293: $28 $e2

    ld [c], a                                     ; $6295: $e2
    jr nc, jr_077_62c9                            ; $6296: $30 $31

    ld [hl-], a                                   ; $6298: $32
    inc sp                                        ; $6299: $33
    inc [hl]                                      ; $629a: $34
    ld [c], a                                     ; $629b: $e2
    ldh [rIE], a                                  ; $629c: $e0 $ff
    ld b, c                                       ; $629e: $41
    ld bc, $3938                                  ; $629f: $01 $38 $39
    ld a, [hl-]                                   ; $62a2: $3a
    dec sp                                        ; $62a3: $3b
    inc a                                         ; $62a4: $3c
    ld d, b                                       ; $62a5: $50
    inc bc                                        ; $62a6: $03
    ld bc, $0041                                  ; $62a7: $01 $41 $00
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    adc a                                         ; $62ac: $8f
    dec c                                         ; $62ad: $0d
    dec c                                         ; $62ae: $0d
    dec c                                         ; $62af: $0d
    dec l                                         ; $62b0: $2d
    db $fc                                        ; $62b1: $fc
    ld [c], a                                     ; $62b2: $e2
    cp $e9                                        ; $62b3: $fe $e9
    rst $38                                       ; $62b5: $ff
    db $e4                                        ; $62b6: $e4
    dec l                                         ; $62b7: $2d
    ld h, d                                       ; $62b8: $62
    or $e5                                        ; $62b9: $f6 $e5
    dec l                                         ; $62bb: $2d
    or $e0                                        ; $62bc: $f6 $e0
    ld [$e2e3], a                                 ; $62be: $ea $e3 $e2
    db $f4                                        ; $62c1: $f4
    ld c, l                                       ; $62c2: $4d
    ld c, l                                       ; $62c3: $4d
    call z, Call_077_7fe3                         ; $62c4: $cc $e3 $7f
    ld c, l                                       ; $62c7: $4d
    ld l, l                                       ; $62c8: $6d

jr_077_62c9:
    ld b, c                                       ; $62c9: $41
    ld bc, $0000                                  ; $62ca: $01 $00 $00
    ld bc, $e1fc                                  ; $62cd: $01 $fc $e1
    cp a                                          ; $62d0: $bf
    ld b, c                                       ; $62d1: $41
    ld b, d                                       ; $62d2: $42
    inc b                                         ; $62d3: $04
    inc bc                                        ; $62d4: $03
    inc bc                                        ; $62d5: $03
    inc b                                         ; $62d6: $04
    db $fc                                        ; $62d7: $fc
    pop hl                                        ; $62d8: $e1
    ld b, d                                       ; $62d9: $42
    rst $38                                       ; $62da: $ff
    ld b, e                                       ; $62db: $43
    ld b, h                                       ; $62dc: $44
    dec b                                         ; $62dd: $05
    add hl, bc                                    ; $62de: $09
    ld a, [bc]                                    ; $62df: $0a
    dec bc                                        ; $62e0: $0b
    dec b                                         ; $62e1: $05
    dec b                                         ; $62e2: $05
    rst $38                                       ; $62e3: $ff
    ld b, h                                       ; $62e4: $44
    ld b, e                                       ; $62e5: $43
    ld c, c                                       ; $62e6: $49
    ld c, d                                       ; $62e7: $4a
    ld de, $1312                                  ; $62e8: $11 $12 $13
    inc d                                         ; $62eb: $14
    rst $38                                       ; $62ec: $ff
    dec d                                         ; $62ed: $15
    inc c                                         ; $62ee: $0c
    ld c, d                                       ; $62ef: $4a
    ld c, c                                       ; $62f0: $49
    ld b, d                                       ; $62f1: $42
    inc b                                         ; $62f2: $04
    dec e                                         ; $62f3: $1d
    ld e, $f7                                     ; $62f4: $1e $f7
    rra                                           ; $62f6: $1f
    jr nz, jr_077_631a                            ; $62f7: $20 $21

    ld [c], a                                     ; $62f9: $e2
    ld [c], a                                     ; $62fa: $e2
    add hl, hl                                    ; $62fb: $29
    ld a, [hl+]                                   ; $62fc: $2a
    dec hl                                        ; $62fd: $2b
    inc l                                         ; $62fe: $2c

Jump_077_62ff:
    ld a, l                                       ; $62ff: $7d
    dec l                                         ; $6300: $2d
    ld [c], a                                     ; $6301: $e2
    ld [c], a                                     ; $6302: $e2
    inc c                                         ; $6303: $0c
    dec [hl]                                      ; $6304: $35
    ld [hl-], a                                   ; $6305: $32
    ld [hl], $37                                  ; $6306: $36 $37
    ld [c], a                                     ; $6308: $e2
    ldh [rIE], a                                  ; $6309: $e0 $ff
    ld b, c                                       ; $630b: $41
    ld bc, $3d38                                  ; $630c: $01 $38 $3d
    ld a, $3f                                     ; $630f: $3e $3f
    ld b, b                                       ; $6311: $40
    ld d, b                                       ; $6312: $50
    inc bc                                        ; $6313: $03
    ld bc, $0041                                  ; $6314: $01 $41 $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    adc a                                         ; $6319: $8f

jr_077_631a:
    dec c                                         ; $631a: $0d
    dec c                                         ; $631b: $0d
    dec c                                         ; $631c: $0d
    dec l                                         ; $631d: $2d
    db $fc                                        ; $631e: $fc
    ld [c], a                                     ; $631f: $e2
    cp $e9                                        ; $6320: $fe $e9
    rst $38                                       ; $6322: $ff
    db $e4                                        ; $6323: $e4
    dec l                                         ; $6324: $2d
    ld h, d                                       ; $6325: $62
    or $e5                                        ; $6326: $f6 $e5
    dec l                                         ; $6328: $2d
    or $e0                                        ; $6329: $f6 $e0
    ld [$e2e3], a                                 ; $632b: $ea $e3 $e2
    db $f4                                        ; $632e: $f4
    ld c, l                                       ; $632f: $4d
    ld c, l                                       ; $6330: $4d
    call z, Call_077_7fe3                         ; $6331: $cc $e3 $7f
    ld c, l                                       ; $6334: $4d
    ld l, l                                       ; $6335: $6d
    ld b, c                                       ; $6336: $41
    ld bc, $0000                                  ; $6337: $01 $00 $00
    ld bc, $e1fc                                  ; $633a: $01 $fc $e1
    cp a                                          ; $633d: $bf
    ld b, c                                       ; $633e: $41
    ld b, d                                       ; $633f: $42
    inc b                                         ; $6340: $04
    inc bc                                        ; $6341: $03
    inc bc                                        ; $6342: $03
    inc b                                         ; $6343: $04
    db $fc                                        ; $6344: $fc
    pop hl                                        ; $6345: $e1
    ld b, d                                       ; $6346: $42
    rst $38                                       ; $6347: $ff
    ld b, e                                       ; $6348: $43
    ld b, h                                       ; $6349: $44
    dec b                                         ; $634a: $05
    add hl, bc                                    ; $634b: $09
    ld a, [bc]                                    ; $634c: $0a
    dec bc                                        ; $634d: $0b
    dec b                                         ; $634e: $05
    dec b                                         ; $634f: $05
    rst $38                                       ; $6350: $ff
    ld b, h                                       ; $6351: $44
    ld b, e                                       ; $6352: $43
    ld c, c                                       ; $6353: $49
    ld c, d                                       ; $6354: $4a
    ld d, $17                                     ; $6355: $16 $17
    inc de                                        ; $6357: $13
    inc d                                         ; $6358: $14
    rst $38                                       ; $6359: $ff
    dec d                                         ; $635a: $15
    inc c                                         ; $635b: $0c
    ld c, d                                       ; $635c: $4a
    ld c, c                                       ; $635d: $49
    ld b, d                                       ; $635e: $42
    inc b                                         ; $635f: $04
    ld [hl+], a                                   ; $6360: $22
    inc hl                                        ; $6361: $23
    rst $30                                       ; $6362: $f7
    rra                                           ; $6363: $1f
    jr nz, jr_077_6387                            ; $6364: $20 $21

    ld [c], a                                     ; $6366: $e2
    ld [c], a                                     ; $6367: $e2
    ld l, $2f                                     ; $6368: $2e $2f
    dec hl                                        ; $636a: $2b
    inc l                                         ; $636b: $2c
    ld a, l                                       ; $636c: $7d
    dec l                                         ; $636d: $2d
    ld [c], a                                     ; $636e: $e2
    ld [c], a                                     ; $636f: $e2
    inc c                                         ; $6370: $0c
    dec [hl]                                      ; $6371: $35
    ld [hl-], a                                   ; $6372: $32
    ld [hl], $37                                  ; $6373: $36 $37
    ld [c], a                                     ; $6375: $e2
    ldh [rIE], a                                  ; $6376: $e0 $ff
    ld b, c                                       ; $6378: $41
    ld bc, $3d38                                  ; $6379: $01 $38 $3d
    ld a, $3f                                     ; $637c: $3e $3f
    ld b, b                                       ; $637e: $40
    ld d, b                                       ; $637f: $50
    inc bc                                        ; $6380: $03
    ld bc, $0041                                  ; $6381: $01 $41 $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    adc a                                         ; $6386: $8f

jr_077_6387:
    dec c                                         ; $6387: $0d
    dec c                                         ; $6388: $0d
    dec c                                         ; $6389: $0d
    dec l                                         ; $638a: $2d
    db $fc                                        ; $638b: $fc
    ld [c], a                                     ; $638c: $e2
    cp $e9                                        ; $638d: $fe $e9
    rst $38                                       ; $638f: $ff
    db $e4                                        ; $6390: $e4
    dec l                                         ; $6391: $2d
    ld h, d                                       ; $6392: $62
    or $e5                                        ; $6393: $f6 $e5
    dec l                                         ; $6395: $2d
    or $e0                                        ; $6396: $f6 $e0
    ld [$e2e3], a                                 ; $6398: $ea $e3 $e2
    db $f4                                        ; $639b: $f4
    ld c, l                                       ; $639c: $4d
    ld c, l                                       ; $639d: $4d
    call z, Call_077_7fe3                         ; $639e: $cc $e3 $7f
    ld c, l                                       ; $63a1: $4d
    ld l, l                                       ; $63a2: $6d
    ld b, c                                       ; $63a3: $41
    ld bc, $0000                                  ; $63a4: $01 $00 $00
    ld bc, $e1fc                                  ; $63a7: $01 $fc $e1
    cp a                                          ; $63aa: $bf
    ld b, c                                       ; $63ab: $41
    ld b, d                                       ; $63ac: $42
    inc b                                         ; $63ad: $04
    inc bc                                        ; $63ae: $03
    inc bc                                        ; $63af: $03
    inc b                                         ; $63b0: $04
    db $fc                                        ; $63b1: $fc
    pop hl                                        ; $63b2: $e1
    ld b, d                                       ; $63b3: $42
    rst $38                                       ; $63b4: $ff
    ld b, e                                       ; $63b5: $43
    ld b, h                                       ; $63b6: $44
    dec b                                         ; $63b7: $05
    add hl, bc                                    ; $63b8: $09
    ld a, [bc]                                    ; $63b9: $0a
    dec bc                                        ; $63ba: $0b
    dec b                                         ; $63bb: $05
    dec b                                         ; $63bc: $05
    rst $38                                       ; $63bd: $ff
    ld b, h                                       ; $63be: $44
    ld b, e                                       ; $63bf: $43
    ld c, c                                       ; $63c0: $49
    ld c, d                                       ; $63c1: $4a
    ld b, l                                       ; $63c2: $45
    ld b, [hl]                                    ; $63c3: $46
    ld b, a                                       ; $63c4: $47
    ld c, b                                       ; $63c5: $48
    rst $38                                       ; $63c6: $ff
    dec d                                         ; $63c7: $15
    inc c                                         ; $63c8: $0c
    ld c, d                                       ; $63c9: $4a
    ld c, c                                       ; $63ca: $49
    ld b, d                                       ; $63cb: $42
    inc b                                         ; $63cc: $04
    ld c, e                                       ; $63cd: $4b
    ld c, h                                       ; $63ce: $4c
    rst $30                                       ; $63cf: $f7
    ld c, l                                       ; $63d0: $4d
    ld c, [hl]                                    ; $63d1: $4e
    ld hl, $e2e2                                  ; $63d2: $21 $e2 $e2
    ld l, $4f                                     ; $63d5: $2e $4f
    dec hl                                        ; $63d7: $2b
    inc l                                         ; $63d8: $2c
    ld a, l                                       ; $63d9: $7d
    dec l                                         ; $63da: $2d
    ld [c], a                                     ; $63db: $e2
    ld [c], a                                     ; $63dc: $e2
    inc c                                         ; $63dd: $0c
    dec [hl]                                      ; $63de: $35
    ld [hl-], a                                   ; $63df: $32
    ld [hl], $37                                  ; $63e0: $36 $37
    ld [c], a                                     ; $63e2: $e2
    ldh [rIE], a                                  ; $63e3: $e0 $ff
    ld b, c                                       ; $63e5: $41
    ld bc, $3d38                                  ; $63e6: $01 $38 $3d
    ld a, $3f                                     ; $63e9: $3e $3f
    ld b, b                                       ; $63eb: $40
    ld d, b                                       ; $63ec: $50
    inc bc                                        ; $63ed: $03
    ld bc, $0041                                  ; $63ee: $01 $41 $00
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    ld h, l                                       ; $63f3: $65
    dec c                                         ; $63f4: $0d
    rst $38                                       ; $63f5: $ff
    push hl                                       ; $63f6: $e5
    dec l                                         ; $63f7: $2d
    or $e6                                        ; $63f8: $f6 $e6
    rst $30                                       ; $63fa: $f7
    add sp, $4d                                   ; $63fb: $e8 $4d
    ld c, l                                       ; $63fd: $4d
    ld hl, sp-$15                                 ; $63fe: $f8 $eb
    db $fc                                        ; $6400: $fc
    ld [c], a                                     ; $6401: $e2
    push af                                       ; $6402: $f5
    ret c                                         ; $6403: $d8

    and $6d                                       ; $6404: $e6 $6d
    ld d, d                                       ; $6406: $52
    ld [bc], a                                    ; $6407: $02
    nop                                           ; $6408: $00
    ld bc, $7e02                                  ; $6409: $01 $02 $7e
    db $fc                                        ; $640c: $fc
    pop hl                                        ; $640d: $e1
    ld d, d                                       ; $640e: $52
    ld d, e                                       ; $640f: $53
    rlca                                          ; $6410: $07
    inc b                                         ; $6411: $04
    dec b                                         ; $6412: $05
    ld b, $fc                                     ; $6413: $06 $fc
    pop hl                                        ; $6415: $e1
    rst $38                                       ; $6416: $ff
    ld d, h                                       ; $6417: $54
    ld d, a                                       ; $6418: $57
    ld d, [hl]                                    ; $6419: $56
    ld [$0a09], sp                                ; $641a: $08 $09 $0a
    dec bc                                        ; $641d: $0b
    ld [$08ff], sp                                ; $641e: $08 $ff $08
    ld e, b                                       ; $6421: $58
    ld e, c                                       ; $6422: $59
    ld d, e                                       ; $6423: $53
    rlca                                          ; $6424: $07
    ld [de], a                                    ; $6425: $12
    inc de                                        ; $6426: $13
    inc d                                         ; $6427: $14
    rst $38                                       ; $6428: $ff
    dec d                                         ; $6429: $15
    ld d, $5d                                     ; $642a: $16 $5d
    ld b, $54                                     ; $642c: $06 $54
    ld d, e                                       ; $642e: $53
    rlca                                          ; $642f: $07
    rra                                           ; $6430: $1f
    rst $30                                       ; $6431: $f7
    jr nz, jr_077_6455                            ; $6432: $20 $21

    ld [hl+], a                                   ; $6434: $22
    ld [c], a                                     ; $6435: $e2
    db $e3                                        ; $6436: $e3
    inc l                                         ; $6437: $2c
    dec l                                         ; $6438: $2d
    ld l, $2f                                     ; $6439: $2e $2f
    ld a, l                                       ; $643b: $7d
    jr nc, @-$1c                                  ; $643c: $30 $e2

    ld [c], a                                     ; $643e: $e2
    dec sp                                        ; $643f: $3b
    inc a                                         ; $6440: $3c
    dec a                                         ; $6441: $3d
    ld a, $3f                                     ; $6442: $3e $3f
    ld [c], a                                     ; $6444: $e2
    ldh [rIE], a                                  ; $6445: $e0 $ff
    ld d, d                                       ; $6447: $52
    ld [bc], a                                    ; $6448: $02
    ld c, b                                       ; $6449: $48
    ld c, c                                       ; $644a: $49
    ld c, d                                       ; $644b: $4a
    ld c, e                                       ; $644c: $4b
    ld c, h                                       ; $644d: $4c
    ld [hl], d                                    ; $644e: $72
    inc bc                                        ; $644f: $03
    ld [bc], a                                    ; $6450: $02
    ld d, d                                       ; $6451: $52
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00

jr_077_6455:
    ld h, l                                       ; $6455: $65
    dec c                                         ; $6456: $0d
    rst $38                                       ; $6457: $ff
    push hl                                       ; $6458: $e5
    dec l                                         ; $6459: $2d
    or $e6                                        ; $645a: $f6 $e6
    rst $30                                       ; $645c: $f7
    add sp, $4d                                   ; $645d: $e8 $4d
    ld c, l                                       ; $645f: $4d
    ld hl, sp-$15                                 ; $6460: $f8 $eb
    db $fc                                        ; $6462: $fc
    ld [c], a                                     ; $6463: $e2
    push af                                       ; $6464: $f5
    ret c                                         ; $6465: $d8

    and $6d                                       ; $6466: $e6 $6d
    ld d, d                                       ; $6468: $52
    ld [bc], a                                    ; $6469: $02
    nop                                           ; $646a: $00
    ld bc, $7e02                                  ; $646b: $01 $02 $7e
    db $fc                                        ; $646e: $fc
    pop hl                                        ; $646f: $e1
    ld d, d                                       ; $6470: $52
    ld d, e                                       ; $6471: $53
    rlca                                          ; $6472: $07
    inc b                                         ; $6473: $04
    dec b                                         ; $6474: $05
    ld b, $fc                                     ; $6475: $06 $fc
    pop hl                                        ; $6477: $e1
    rst $38                                       ; $6478: $ff
    ld d, h                                       ; $6479: $54
    ld d, a                                       ; $647a: $57
    ld d, [hl]                                    ; $647b: $56
    ld [$0d0c], sp                                ; $647c: $08 $0c $0d
    ld c, $08                                     ; $647f: $0e $08
    rst $38                                       ; $6481: $ff
    ld [$5958], sp                                ; $6482: $08 $58 $59
    ld d, e                                       ; $6485: $53
    rlca                                          ; $6486: $07
    rla                                           ; $6487: $17
    jr jr_077_64a3                                ; $6488: $18 $19

    rst $38                                       ; $648a: $ff
    ld a, [de]                                    ; $648b: $1a
    ld d, $5d                                     ; $648c: $16 $5d
    ld b, $54                                     ; $648e: $06 $54
    ld d, e                                       ; $6490: $53
    rlca                                          ; $6491: $07
    inc hl                                        ; $6492: $23
    rst $30                                       ; $6493: $f7
    inc h                                         ; $6494: $24
    dec h                                         ; $6495: $25
    ld h, $e2                                     ; $6496: $26 $e2
    db $e3                                        ; $6498: $e3
    ld sp, $3332                                  ; $6499: $31 $32 $33
    inc [hl]                                      ; $649c: $34
    ld a, l                                       ; $649d: $7d
    dec [hl]                                      ; $649e: $35
    ld [c], a                                     ; $649f: $e2
    ld [c], a                                     ; $64a0: $e2
    ld b, b                                       ; $64a1: $40
    ld b, c                                       ; $64a2: $41

jr_077_64a3:
    dec a                                         ; $64a3: $3d
    ld a, $42                                     ; $64a4: $3e $42
    ld [c], a                                     ; $64a6: $e2
    ldh [rIE], a                                  ; $64a7: $e0 $ff
    ld d, d                                       ; $64a9: $52
    ld [bc], a                                    ; $64aa: $02
    ld c, l                                       ; $64ab: $4d
    ld c, c                                       ; $64ac: $49
    ld c, d                                       ; $64ad: $4a
    ld c, e                                       ; $64ae: $4b
    ld c, h                                       ; $64af: $4c
    ld [hl], d                                    ; $64b0: $72
    inc bc                                        ; $64b1: $03
    ld [bc], a                                    ; $64b2: $02
    ld d, d                                       ; $64b3: $52
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    ld h, l                                       ; $64b7: $65
    dec c                                         ; $64b8: $0d
    rst $38                                       ; $64b9: $ff
    push hl                                       ; $64ba: $e5
    dec l                                         ; $64bb: $2d
    or $e6                                        ; $64bc: $f6 $e6
    rst $30                                       ; $64be: $f7
    add sp, $4d                                   ; $64bf: $e8 $4d
    ld c, l                                       ; $64c1: $4d
    ld hl, sp-$15                                 ; $64c2: $f8 $eb
    ld hl, sp-$1e                                 ; $64c4: $f8 $e2
    push af                                       ; $64c6: $f5
    ret c                                         ; $64c7: $d8

    ld [c], a                                     ; $64c8: $e2
    call nc, Call_077_4de0                        ; $64c9: $d4 $e0 $4d
    ld l, l                                       ; $64cc: $6d
    ld d, d                                       ; $64cd: $52
    ld [bc], a                                    ; $64ce: $02
    nop                                           ; $64cf: $00
    ei                                            ; $64d0: $fb
    ld bc, $fc02                                  ; $64d1: $01 $02 $fc
    pop hl                                        ; $64d4: $e1
    ld d, d                                       ; $64d5: $52
    ld d, e                                       ; $64d6: $53
    rlca                                          ; $64d7: $07
    inc b                                         ; $64d8: $04
    dec b                                         ; $64d9: $05
    db $fd                                        ; $64da: $fd
    ld b, $fc                                     ; $64db: $06 $fc
    pop hl                                        ; $64dd: $e1
    ld d, h                                       ; $64de: $54
    ld d, a                                       ; $64df: $57
    ld d, [hl]                                    ; $64e0: $56
    ld [$100f], sp                                ; $64e1: $08 $0f $10
    rst $38                                       ; $64e4: $ff
    ld de, $0808                                  ; $64e5: $11 $08 $08
    ld e, b                                       ; $64e8: $58
    ld e, c                                       ; $64e9: $59
    ld d, e                                       ; $64ea: $53
    rlca                                          ; $64eb: $07
    dec de                                        ; $64ec: $1b
    rst $38                                       ; $64ed: $ff
    inc e                                         ; $64ee: $1c
    dec e                                         ; $64ef: $1d
    ld e, $16                                     ; $64f0: $1e $16
    ld e, l                                       ; $64f2: $5d
    ld b, $54                                     ; $64f3: $06 $54
    ld d, e                                       ; $64f5: $53
    cp a                                          ; $64f6: $bf
    rlca                                          ; $64f7: $07
    daa                                           ; $64f8: $27
    jr z, jr_077_6524                             ; $64f9: $28 $29

    ld a, [hl+]                                   ; $64fb: $2a
    dec hl                                        ; $64fc: $2b
    ld [c], a                                     ; $64fd: $e2
    ld [c], a                                     ; $64fe: $e2
    ld [hl], $ef                                  ; $64ff: $36 $ef
    scf                                           ; $6501: $37
    jr c, jr_077_653d                             ; $6502: $38 $39

    ld a, [hl-]                                   ; $6504: $3a
    ld [c], a                                     ; $6505: $e2
    ld [c], a                                     ; $6506: $e2
    ld b, e                                       ; $6507: $43
    ld b, h                                       ; $6508: $44
    ld b, l                                       ; $6509: $45
    ei                                            ; $650a: $fb
    ld b, [hl]                                    ; $650b: $46
    ld b, a                                       ; $650c: $47
    ld [c], a                                     ; $650d: $e2
    ldh [rHDMA2], a                               ; $650e: $e0 $52
    ld [bc], a                                    ; $6510: $02
    ld c, [hl]                                    ; $6511: $4e
    ld c, a                                       ; $6512: $4f
    ld d, b                                       ; $6513: $50
    rra                                           ; $6514: $1f
    ld [bc], a                                    ; $6515: $02
    ld d, c                                       ; $6516: $51
    ld [hl], d                                    ; $6517: $72
    ld [bc], a                                    ; $6518: $02
    ld d, d                                       ; $6519: $52
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    ld h, l                                       ; $651d: $65
    dec c                                         ; $651e: $0d
    rst $38                                       ; $651f: $ff
    push hl                                       ; $6520: $e5
    dec l                                         ; $6521: $2d
    or $e6                                        ; $6522: $f6 $e6

jr_077_6524:
    rst $30                                       ; $6524: $f7
    add sp, $4d                                   ; $6525: $e8 $4d
    ld c, l                                       ; $6527: $4d
    ld hl, sp-$15                                 ; $6528: $f8 $eb
    db $fc                                        ; $652a: $fc
    ld [c], a                                     ; $652b: $e2
    push af                                       ; $652c: $f5
    ret c                                         ; $652d: $d8

    and $6d                                       ; $652e: $e6 $6d
    ld d, d                                       ; $6530: $52
    ld [bc], a                                    ; $6531: $02
    nop                                           ; $6532: $00
    ld bc, $7e02                                  ; $6533: $01 $02 $7e
    db $fc                                        ; $6536: $fc
    pop hl                                        ; $6537: $e1
    ld d, d                                       ; $6538: $52
    ld d, e                                       ; $6539: $53
    rlca                                          ; $653a: $07
    inc b                                         ; $653b: $04
    dec b                                         ; $653c: $05

jr_077_653d:
    ld b, $fc                                     ; $653d: $06 $fc
    pop hl                                        ; $653f: $e1
    cp a                                          ; $6540: $bf
    ld d, h                                       ; $6541: $54
    ld d, a                                       ; $6542: $57
    ld d, [hl]                                    ; $6543: $56
    ld [$5508], sp                                ; $6544: $08 $08 $55
    db $fc                                        ; $6547: $fc
    ldh [$58], a                                  ; $6548: $e0 $58
    rst $38                                       ; $654a: $ff
    ld e, c                                       ; $654b: $59
    ld d, e                                       ; $654c: $53
    rlca                                          ; $654d: $07
    ld d, $5a                                     ; $654e: $16 $5a
    ld e, e                                       ; $6550: $5b
    ld e, h                                       ; $6551: $5c
    ld d, $ff                                     ; $6552: $16 $ff
    ld e, l                                       ; $6554: $5d
    ld b, $54                                     ; $6555: $06 $54
    ld d, e                                       ; $6557: $53
    rlca                                          ; $6558: $07
    ld e, [hl]                                    ; $6559: $5e
    ld e, a                                       ; $655a: $5f
    ld h, b                                       ; $655b: $60
    ei                                            ; $655c: $fb
    ld h, c                                       ; $655d: $61
    ld h, d                                       ; $655e: $62
    ld [c], a                                     ; $655f: $e2

Jump_077_6560:
    ld [c], a                                     ; $6560: $e2
    ld h, e                                       ; $6561: $63
    ld h, h                                       ; $6562: $64
    ld h, l                                       ; $6563: $65
    ld h, [hl]                                    ; $6564: $66
    ld h, a                                       ; $6565: $67
    cp [hl]                                       ; $6566: $be
    ld [c], a                                     ; $6567: $e2
    ld [c], a                                     ; $6568: $e2
    ld l, b                                       ; $6569: $68
    ld l, c                                       ; $656a: $69
    ld l, d                                       ; $656b: $6a
    ld l, e                                       ; $656c: $6b
    ld l, h                                       ; $656d: $6c
    ld [c], a                                     ; $656e: $e2
    ldh [rHDMA2], a                               ; $656f: $e0 $52
    rst $38                                       ; $6571: $ff
    ld [bc], a                                    ; $6572: $02
    ld l, l                                       ; $6573: $6d
    ld l, [hl]                                    ; $6574: $6e
    ld l, a                                       ; $6575: $6f
    ld [hl], b                                    ; $6576: $70
    ld [hl], c                                    ; $6577: $71
    ld [hl], d                                    ; $6578: $72
    ld [bc], a                                    ; $6579: $02
    ld bc, $0052                                  ; $657a: $01 $52 $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    rst $08                                       ; $657f: $cf
    ld h, l                                       ; $6580: $65
    ld b, l                                       ; $6581: $45
    ld h, [hl]                                    ; $6582: $66
    cp a                                          ; $6583: $bf
    ld h, [hl]                                    ; $6584: $66
    add hl, sp                                    ; $6585: $39
    ld h, a                                       ; $6586: $67
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    cp b                                          ; $658f: $b8
    ld h, a                                       ; $6590: $67
    add hl, de                                    ; $6591: $19
    ld l, b                                       ; $6592: $68
    ld a, e                                       ; $6593: $7b
    ld l, b                                       ; $6594: $68
    push hl                                       ; $6595: $e5
    ld l, b                                       ; $6596: $68
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    ld d, h                                       ; $659f: $54
    ld l, c                                       ; $65a0: $69
    cp a                                          ; $65a1: $bf
    ld l, c                                       ; $65a2: $69
    ld l, $6a                                     ; $65a3: $2e $6a
    sbc l                                         ; $65a5: $9d
    ld l, d                                       ; $65a6: $6a
    nop                                           ; $65a7: $00
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00

    db $0c, $6b, $76, $6b

    db $e4                                        ; $65b3: $e4
    ld l, e                                       ; $65b4: $6b
    ld c, [hl]                                    ; $65b5: $4e
    ld l, h                                       ; $65b6: $6c
    nop                                           ; $65b7: $00
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    nop                                           ; $65be: $00

    db $b7, $6c, $18, $6d

    ld a, d                                       ; $65c3: $7a
    ld l, l                                       ; $65c4: $6d
    call c, Call_000_006d                         ; $65c5: $dc $6d $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    ld a, l                                       ; $65cf: $7d
    dec c                                         ; $65d0: $0d
    rst $38                                       ; $65d1: $ff
    pop hl                                        ; $65d2: $e1
    ld c, l                                       ; $65d3: $4d
    ld c, l                                       ; $65d4: $4d
    ld c, l                                       ; $65d5: $4d
    dec c                                         ; $65d6: $0d
    ld c, l                                       ; $65d7: $4d
    or $e2                                        ; $65d8: $f6 $e2
    add d                                         ; $65da: $82
    pop af                                        ; $65db: $f1
    pop hl                                        ; $65dc: $e1
    dec l                                         ; $65dd: $2d
    or $f0                                        ; $65de: $f6 $f0
    rst $30                                       ; $65e0: $f7
    rst $20                                       ; $65e1: $e7
    db $ec                                        ; $65e2: $ec
    ld a, [c]                                     ; $65e3: $f2
    jp $b9e4                                      ; $65e4: $c3 $e4 $b9


    ldh [rP1], a                                  ; $65e7: $e0 $00
    rst $38                                       ; $65e9: $ff
    ld bc, $0202                                  ; $65ea: $01 $02 $02
    ld [bc], a                                    ; $65ed: $02
    rrca                                          ; $65ee: $0f
    rrca                                          ; $65ef: $0f
    rrca                                          ; $65f0: $0f
    db $10                                        ; $65f1: $10
    rst $38                                       ; $65f2: $ff
    dec bc                                        ; $65f3: $0b
    inc bc                                        ; $65f4: $03
    inc b                                         ; $65f5: $04
    dec b                                         ; $65f6: $05
    dec b                                         ; $65f7: $05
    dec b                                         ; $65f8: $05
    ld b, $06                                     ; $65f9: $06 $06
    rst $38                                       ; $65fb: $ff
    ld b, $11                                     ; $65fc: $06 $11
    add hl, bc                                    ; $65fe: $09
    inc bc                                        ; $65ff: $03
    ld b, $07                                     ; $6600: $06 $07
    dec b                                         ; $6602: $05
    inc e                                         ; $6603: $1c
    rst $38                                       ; $6604: $ff
    dec e                                         ; $6605: $1d
    ld e, $12                                     ; $6606: $1e $12
    dec b                                         ; $6608: $05
    add hl, bc                                    ; $6609: $09
    ld [$0406], sp                                ; $660a: $08 $06 $04
    rst $38                                       ; $660d: $ff
    jr z, jr_077_6639                             ; $660e: $28 $29

    ld a, [hl+]                                   ; $6610: $2a
    dec hl                                        ; $6611: $2b
    ld de, $1305                                  ; $6612: $11 $05 $13
    add hl, bc                                    ; $6615: $09
    rst $38                                       ; $6616: $ff
    ld a, [bc]                                    ; $6617: $0a
    ld b, $36                                     ; $6618: $06 $36
    scf                                           ; $661a: $37
    jr c, @+$3b                                   ; $661b: $38 $39

    dec b                                         ; $661d: $05
    inc d                                         ; $661e: $14
    rst $38                                       ; $661f: $ff
    inc bc                                        ; $6620: $03
    inc c                                         ; $6621: $0c
    dec b                                         ; $6622: $05
    ld a, [bc]                                    ; $6623: $0a
    ld b, h                                       ; $6624: $44
    ld b, l                                       ; $6625: $45
    ld b, [hl]                                    ; $6626: $46
    ld de, $14ff                                  ; $6627: $11 $ff $14
    ld b, $15                                     ; $662a: $06 $15
    inc bc                                        ; $662c: $03
    dec c                                         ; $662d: $0d
    ld c, $50                                     ; $662e: $0e $50
    ld d, c                                       ; $6630: $51
    rst $38                                       ; $6631: $ff
    ld d, d                                       ; $6632: $52
    ld d, e                                       ; $6633: $53
    ld d, $17                                     ; $6634: $16 $17
    add hl, bc                                    ; $6636: $09
    nop                                           ; $6637: $00
    rrca                                          ; $6638: $0f

jr_077_6639:
    rrca                                          ; $6639: $0f
    ld a, a                                       ; $663a: $7f
    ld e, [hl]                                    ; $663b: $5e
    ld e, a                                       ; $663c: $5f
    ld h, b                                       ; $663d: $60
    ld h, c                                       ; $663e: $61
    ld [bc], a                                    ; $663f: $02
    ld [bc], a                                    ; $6640: $02
    dec bc                                        ; $6641: $0b
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    cp a                                          ; $6645: $bf
    ld l, l                                       ; $6646: $6d
    dec l                                         ; $6647: $2d
    ld l, l                                       ; $6648: $6d
    ld l, l                                       ; $6649: $6d
    ld l, l                                       ; $664a: $6d
    dec l                                         ; $664b: $2d
    rst $38                                       ; $664c: $ff
    pop hl                                        ; $664d: $e1
    dec c                                         ; $664e: $0d
    ret nz                                        ; $664f: $c0

    db $fd                                        ; $6650: $fd
    ldh [rIE], a                                  ; $6651: $e0 $ff
    ldh [$f6], a                                  ; $6653: $e0 $f6
    ld [$e1e9], a                                 ; $6655: $ea $e9 $e1
    db $ec                                        ; $6658: $ec
    rst $38                                       ; $6659: $ff
    pop bc                                        ; $665a: $c1
    ldh [$6d], a                                  ; $665b: $e0 $6d
    ld l, l                                       ; $665d: $6d
    cp $d8                                        ; $665e: $fe $d8
    db $e3                                        ; $6660: $e3
    ld l, l                                       ; $6661: $6d
    dec bc                                        ; $6662: $0b
    db $10                                        ; $6663: $10
    rrca                                          ; $6664: $0f
    rrca                                          ; $6665: $0f
    rrca                                          ; $6666: $0f
    ld [bc], a                                    ; $6667: $02
    rst $38                                       ; $6668: $ff
    ld [bc], a                                    ; $6669: $02
    ld [bc], a                                    ; $666a: $02
    ld bc, $0900                                  ; $666b: $01 $00 $09
    ld de, $0606                                  ; $666e: $11 $06 $06
    rst $38                                       ; $6671: $ff
    jr jr_077_668d                                ; $6672: $18 $19

    dec b                                         ; $6674: $05
    dec b                                         ; $6675: $05
    inc b                                         ; $6676: $04
    inc bc                                        ; $6677: $03
    add hl, bc                                    ; $6678: $09
    dec b                                         ; $6679: $05
    rst $38                                       ; $667a: $ff
    ld [de], a                                    ; $667b: $12
    rra                                           ; $667c: $1f
    jr nz, jr_077_66a0                            ; $667d: $20 $21

    dec b                                         ; $667f: $05
    rlca                                          ; $6680: $07
    ld b, $03                                     ; $6681: $06 $03
    rst $38                                       ; $6683: $ff
    inc de                                        ; $6684: $13
    dec b                                         ; $6685: $05
    ld de, $2d2c                                  ; $6686: $11 $2c $2d
    ld l, $2f                                     ; $6689: $2e $2f
    inc b                                         ; $668b: $04
    rst $38                                       ; $668c: $ff

jr_077_668d:
    ld b, $08                                     ; $668d: $06 $08
    inc bc                                        ; $668f: $03
    inc d                                         ; $6690: $14
    dec b                                         ; $6691: $05
    ld a, [hl-]                                   ; $6692: $3a
    dec sp                                        ; $6693: $3b
    inc a                                         ; $6694: $3c
    rst $38                                       ; $6695: $ff
    dec a                                         ; $6696: $3d
    ld b, $0a                                     ; $6697: $06 $0a
    add hl, bc                                    ; $6699: $09
    dec d                                         ; $669a: $15
    ld b, $14                                     ; $669b: $06 $14
    ld b, a                                       ; $669d: $47
    rst $38                                       ; $669e: $ff
    ld c, b                                       ; $669f: $48

jr_077_66a0:
    ld c, c                                       ; $66a0: $49
    ld c, d                                       ; $66a1: $4a
    ld a, [bc]                                    ; $66a2: $0a
    dec b                                         ; $66a3: $05
    inc c                                         ; $66a4: $0c
    add hl, bc                                    ; $66a5: $09
    rla                                           ; $66a6: $17
    rst $38                                       ; $66a7: $ff
    ld d, $54                                     ; $66a8: $16 $54
    ld d, l                                       ; $66aa: $55
    ld d, [hl]                                    ; $66ab: $56
    ld d, a                                       ; $66ac: $57
    ld c, $0d                                     ; $66ad: $0e $0d
    inc bc                                        ; $66af: $03
    rst $38                                       ; $66b0: $ff
    dec bc                                        ; $66b1: $0b
    ld [bc], a                                    ; $66b2: $02
    ld [bc], a                                    ; $66b3: $02
    ld h, d                                       ; $66b4: $62
    ld h, e                                       ; $66b5: $63
    ld h, h                                       ; $66b6: $64
    ld h, l                                       ; $66b7: $65
    rrca                                          ; $66b8: $0f
    inc bc                                        ; $66b9: $03
    rrca                                          ; $66ba: $0f
    nop                                           ; $66bb: $00
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    ld a, l                                       ; $66bf: $7d
    dec c                                         ; $66c0: $0d
    rst $38                                       ; $66c1: $ff
    pop hl                                        ; $66c2: $e1
    ld c, l                                       ; $66c3: $4d
    ld c, l                                       ; $66c4: $4d
    ld c, l                                       ; $66c5: $4d
    dec c                                         ; $66c6: $0d
    ld c, l                                       ; $66c7: $4d
    or $e2                                        ; $66c8: $f6 $e2
    and d                                         ; $66ca: $a2
    pop af                                        ; $66cb: $f1
    pop hl                                        ; $66cc: $e1
    dec l                                         ; $66cd: $2d
    or $eb                                        ; $66ce: $f6 $eb
    pop af                                        ; $66d0: $f1
    ld a, [c]                                     ; $66d1: $f2
    call c, $2deb                                 ; $66d2: $dc $eb $2d
    jp $2de2                                      ; $66d5: $c3 $e2 $2d


    db $fd                                        ; $66d8: $fd
    dec l                                         ; $66d9: $2d
    cp c                                          ; $66da: $b9
    ldh [rP1], a                                  ; $66db: $e0 $00
    ld bc, $0202                                  ; $66dd: $01 $02 $02
    ld [bc], a                                    ; $66e0: $02
    rrca                                          ; $66e1: $0f
    rst $38                                       ; $66e2: $ff
    rrca                                          ; $66e3: $0f
    rrca                                          ; $66e4: $0f
    db $10                                        ; $66e5: $10
    dec bc                                        ; $66e6: $0b
    inc bc                                        ; $66e7: $03
    inc b                                         ; $66e8: $04
    dec b                                         ; $66e9: $05
    dec b                                         ; $66ea: $05
    rst $38                                       ; $66eb: $ff
    dec b                                         ; $66ec: $05
    ld b, $06                                     ; $66ed: $06 $06
    ld b, $11                                     ; $66ef: $06 $11
    add hl, bc                                    ; $66f1: $09
    inc bc                                        ; $66f2: $03
    ld b, $ff                                     ; $66f3: $06 $ff
    rlca                                          ; $66f5: $07
    ld [hl+], a                                   ; $66f6: $22
    inc hl                                        ; $66f7: $23
    inc h                                         ; $66f8: $24
    ld b, $12                                     ; $66f9: $06 $12
    dec b                                         ; $66fb: $05
    add hl, bc                                    ; $66fc: $09
    rst $38                                       ; $66fd: $ff
    ld [$0406], sp                                ; $66fe: $08 $06 $04
    jr nc, jr_077_672d                            ; $6701: $30 $2a

    ld sp, $1132                                  ; $6703: $31 $32 $11
    rst $38                                       ; $6706: $ff
    dec b                                         ; $6707: $05
    inc de                                        ; $6708: $13
    add hl, bc                                    ; $6709: $09
    ld a, [bc]                                    ; $670a: $0a
    ld b, $3e                                     ; $670b: $06 $3e
    jr c, @+$41                                   ; $670d: $38 $3f

    rst $38                                       ; $670f: $ff
    ld b, b                                       ; $6710: $40
    dec b                                         ; $6711: $05
    inc d                                         ; $6712: $14
    inc bc                                        ; $6713: $03
    inc c                                         ; $6714: $0c
    dec b                                         ; $6715: $05
    ld a, [bc]                                    ; $6716: $0a
    inc b                                         ; $6717: $04
    rst $38                                       ; $6718: $ff
    ld c, e                                       ; $6719: $4b
    ld b, l                                       ; $671a: $45
    ld c, h                                       ; $671b: $4c
    inc d                                         ; $671c: $14
    ld b, $15                                     ; $671d: $06 $15
    inc bc                                        ; $671f: $03
    dec c                                         ; $6720: $0d
    rst $38                                       ; $6721: $ff
    ld c, $58                                     ; $6722: $0e $58
    ld e, c                                       ; $6724: $59
    ld d, c                                       ; $6725: $51
    ld e, d                                       ; $6726: $5a
    ld d, $17                                     ; $6727: $16 $17
    add hl, bc                                    ; $6729: $09
    rst $38                                       ; $672a: $ff
    nop                                           ; $672b: $00
    rrca                                          ; $672c: $0f

jr_077_672d:
    rrca                                          ; $672d: $0f
    ld h, [hl]                                    ; $672e: $66
    ld h, a                                       ; $672f: $67
    ld e, a                                       ; $6730: $5f
    ld h, d                                       ; $6731: $62
    ld [bc], a                                    ; $6732: $02
    inc bc                                        ; $6733: $03
    ld [bc], a                                    ; $6734: $02
    dec bc                                        ; $6735: $0b
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    cp a                                          ; $6739: $bf
    ld l, l                                       ; $673a: $6d
    dec l                                         ; $673b: $2d
    ld l, l                                       ; $673c: $6d
    ld l, l                                       ; $673d: $6d
    ld l, l                                       ; $673e: $6d
    dec l                                         ; $673f: $2d
    rst $38                                       ; $6740: $ff
    pop hl                                        ; $6741: $e1
    dec c                                         ; $6742: $0d
    db $10                                        ; $6743: $10
    db $fd                                        ; $6744: $fd
    ldh [rIE], a                                  ; $6745: $e0 $ff
    ldh [$f6], a                                  ; $6747: $e0 $f6
    ld [$e1e9], a                                 ; $6749: $ea $e9 $e1
    dec c                                         ; $674c: $0d
    and $e1                                       ; $674d: $e6 $e1
    ld [c], a                                     ; $674f: $e2
    db $e3                                        ; $6750: $e3
    or $e2                                        ; $6751: $f6 $e2
    or $ec                                        ; $6753: $f6 $ec
    ld a, [c]                                     ; $6755: $f2
    ld l, l                                       ; $6756: $6d
    ld l, l                                       ; $6757: $6d
    ret nc                                        ; $6758: $d0

    db $e3                                        ; $6759: $e3
    ld l, l                                       ; $675a: $6d
    dec bc                                        ; $675b: $0b
    db $10                                        ; $675c: $10
    rrca                                          ; $675d: $0f
    rst $38                                       ; $675e: $ff
    rrca                                          ; $675f: $0f
    rrca                                          ; $6760: $0f
    ld [bc], a                                    ; $6761: $02
    ld [bc], a                                    ; $6762: $02
    ld [bc], a                                    ; $6763: $02
    ld bc, $0900                                  ; $6764: $01 $00 $09
    rst $38                                       ; $6767: $ff
    ld de, $0606                                  ; $6768: $11 $06 $06
    ld a, [de]                                    ; $676b: $1a
    dec de                                        ; $676c: $1b
    dec b                                         ; $676d: $05
    dec b                                         ; $676e: $05
    inc b                                         ; $676f: $04
    rst $38                                       ; $6770: $ff
    inc bc                                        ; $6771: $03
    add hl, bc                                    ; $6772: $09
    dec b                                         ; $6773: $05
    ld [de], a                                    ; $6774: $12
    ld b, $25                                     ; $6775: $06 $25
    ld h, $27                                     ; $6777: $26 $27
    rst $38                                       ; $6779: $ff
    rlca                                          ; $677a: $07
    ld b, $03                                     ; $677b: $06 $03
    inc de                                        ; $677d: $13
    dec b                                         ; $677e: $05
    ld de, $3433                                  ; $677f: $11 $33 $34
    rst $38                                       ; $6782: $ff
    dec l                                         ; $6783: $2d
    dec [hl]                                      ; $6784: $35
    inc b                                         ; $6785: $04
    ld b, $08                                     ; $6786: $06 $08
    inc bc                                        ; $6788: $03
    inc d                                         ; $6789: $14
    dec b                                         ; $678a: $05
    rst $38                                       ; $678b: $ff
    ld b, c                                       ; $678c: $41
    ld b, d                                       ; $678d: $42
    dec sp                                        ; $678e: $3b
    ld b, e                                       ; $678f: $43
    ld b, $0a                                     ; $6790: $06 $0a
    add hl, bc                                    ; $6792: $09
    dec d                                         ; $6793: $15
    rst $38                                       ; $6794: $ff
    ld b, $14                                     ; $6795: $06 $14
    ld c, l                                       ; $6797: $4d
    ld c, [hl]                                    ; $6798: $4e
    ld c, b                                       ; $6799: $48
    ld c, a                                       ; $679a: $4f
    ld a, [bc]                                    ; $679b: $0a
    dec b                                         ; $679c: $05
    rst $38                                       ; $679d: $ff
    inc c                                         ; $679e: $0c
    add hl, bc                                    ; $679f: $09
    rla                                           ; $67a0: $17
    ld d, $5b                                     ; $67a1: $16 $5b
    ld e, h                                       ; $67a3: $5c
    ld d, l                                       ; $67a4: $55
    ld e, l                                       ; $67a5: $5d
    rst $38                                       ; $67a6: $ff
    ld c, $0d                                     ; $67a7: $0e $0d
    inc bc                                        ; $67a9: $03
    dec bc                                        ; $67aa: $0b
    ld [bc], a                                    ; $67ab: $02
    ld [bc], a                                    ; $67ac: $02
    ld l, b                                       ; $67ad: $68
    ld l, c                                       ; $67ae: $69
    rra                                           ; $67af: $1f
    ld h, e                                       ; $67b0: $63
    ld e, [hl]                                    ; $67b1: $5e
    rrca                                          ; $67b2: $0f
    rrca                                          ; $67b3: $0f
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    rla                                           ; $67b8: $17
    dec c                                         ; $67b9: $0d
    dec c                                         ; $67ba: $0d
    dec l                                         ; $67bb: $2d
    cp $e3                                        ; $67bc: $fe $e3
    dec l                                         ; $67be: $2d
    or $eb                                        ; $67bf: $f6 $eb
    rst $38                                       ; $67c1: $ff
    pop hl                                        ; $67c2: $e1
    db $ec                                        ; $67c3: $ec
    ldh [$60], a                                  ; $67c4: $e0 $60
    rst $30                                       ; $67c6: $f7
    db $e4                                        ; $67c7: $e4
    db $db                                        ; $67c8: $db
    ld [c], a                                     ; $67c9: $e2
    or $e5                                        ; $67ca: $f6 $e5
    ld [c], a                                     ; $67cc: $e2
    rst $20                                       ; $67cd: $e7
    or $f0                                        ; $67ce: $f6 $f0
    ld e, b                                       ; $67d0: $58
    ld e, c                                       ; $67d1: $59
    rst $38                                       ; $67d2: $ff
    db $e4                                        ; $67d3: $e4
    rst $30                                       ; $67d4: $f7
    ld e, b                                       ; $67d5: $58
    ld e, d                                       ; $67d6: $5a
    nop                                           ; $67d7: $00
    rst $38                                       ; $67d8: $ff
    db $e4                                        ; $67d9: $e4
    ld e, d                                       ; $67da: $5a
    ld e, e                                       ; $67db: $5b
    inc b                                         ; $67dc: $04
    inc b                                         ; $67dd: $04
    rst $38                                       ; $67de: $ff
    inc b                                         ; $67df: $04
    dec b                                         ; $67e0: $05
    ld b, $07                                     ; $67e1: $06 $07
    inc b                                         ; $67e3: $04
    inc b                                         ; $67e4: $04
    ld e, e                                       ; $67e5: $5b
    ld e, h                                       ; $67e6: $5c
    rst $38                                       ; $67e7: $ff
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    inc de                                        ; $67ea: $13
    inc d                                         ; $67eb: $14
    dec d                                         ; $67ec: $15
    ld d, $00                                     ; $67ed: $16 $00
    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    ld e, h                                       ; $67f1: $5c
    ld e, l                                       ; $67f2: $5d
    inc b                                         ; $67f3: $04
    inc b                                         ; $67f4: $04
    inc hl                                        ; $67f5: $23
    inc h                                         ; $67f6: $24
    dec h                                         ; $67f7: $25
    ld h, $f7                                     ; $67f8: $26 $f7
    inc b                                         ; $67fa: $04
    inc b                                         ; $67fb: $04
    ld e, l                                       ; $67fc: $5d
    ret c                                         ; $67fd: $d8

    ldh [$33], a                                  ; $67fe: $e0 $33
    inc [hl]                                      ; $6800: $34
    dec [hl]                                      ; $6801: $35
    ld [hl], $ee                                  ; $6802: $36 $ee
    ret c                                         ; $6804: $d8

    db $e4                                        ; $6805: $e4
    ld b, d                                       ; $6806: $42
    ld b, e                                       ; $6807: $43
    ld b, h                                       ; $6808: $44
    ret c                                         ; $6809: $d8

    ldh [$5e], a                                  ; $680a: $e0 $5e
    ld c, [hl]                                    ; $680c: $4e
    ld c, [hl]                                    ; $680d: $4e
    ld a, a                                       ; $680e: $7f
    ld c, [hl]                                    ; $680f: $4e
    ld c, a                                       ; $6810: $4f
    ld d, b                                       ; $6811: $50
    ld d, c                                       ; $6812: $51
    ld c, [hl]                                    ; $6813: $4e
    ld c, [hl]                                    ; $6814: $4e
    ld e, [hl]                                    ; $6815: $5e
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    rla                                           ; $6819: $17
    dec c                                         ; $681a: $0d
    dec c                                         ; $681b: $0d
    dec l                                         ; $681c: $2d
    cp $e3                                        ; $681d: $fe $e3
    dec l                                         ; $681f: $2d
    or $eb                                        ; $6820: $f6 $eb
    rst $38                                       ; $6822: $ff
    pop hl                                        ; $6823: $e1
    db $ec                                        ; $6824: $ec
    ldh [$60], a                                  ; $6825: $e0 $60
    rst $30                                       ; $6827: $f7
    db $e4                                        ; $6828: $e4
    db $db                                        ; $6829: $db
    ld [c], a                                     ; $682a: $e2
    or $e5                                        ; $682b: $f6 $e5
    ld [c], a                                     ; $682d: $e2
    rst $20                                       ; $682e: $e7
    or $f0                                        ; $682f: $f6 $f0
    ld e, b                                       ; $6831: $58
    ld e, c                                       ; $6832: $59
    rst $38                                       ; $6833: $ff
    db $e4                                        ; $6834: $e4
    rst $30                                       ; $6835: $f7
    ld e, b                                       ; $6836: $58
    ld e, d                                       ; $6837: $5a
    nop                                           ; $6838: $00
    rst $38                                       ; $6839: $ff
    db $e4                                        ; $683a: $e4
    ld e, d                                       ; $683b: $5a
    ld e, e                                       ; $683c: $5b
    inc b                                         ; $683d: $04
    inc b                                         ; $683e: $04
    rst $38                                       ; $683f: $ff
    ld [$0a09], sp                                ; $6840: $08 $09 $0a
    dec bc                                        ; $6843: $0b
    inc b                                         ; $6844: $04
    inc b                                         ; $6845: $04
    ld e, e                                       ; $6846: $5b
    ld e, h                                       ; $6847: $5c
    rst $38                                       ; $6848: $ff
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    rla                                           ; $684b: $17
    jr jr_077_6867                                ; $684c: $18 $19

    ld a, [de]                                    ; $684e: $1a
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    rst $38                                       ; $6851: $ff
    ld e, h                                       ; $6852: $5c
    ld e, l                                       ; $6853: $5d
    inc b                                         ; $6854: $04
    inc b                                         ; $6855: $04
    daa                                           ; $6856: $27
    jr z, jr_077_6882                             ; $6857: $28 $29

    ld a, [hl+]                                   ; $6859: $2a
    rst $30                                       ; $685a: $f7
    inc b                                         ; $685b: $04
    inc b                                         ; $685c: $04
    ld e, l                                       ; $685d: $5d
    ret c                                         ; $685e: $d8

    ldh [$37], a                                  ; $685f: $e0 $37
    jr c, jr_077_689c                             ; $6861: $38 $39

    ld a, [hl-]                                   ; $6863: $3a
    sbc $d8                                       ; $6864: $de $d8
    db $e3                                        ; $6866: $e3

jr_077_6867:
    ld b, l                                       ; $6867: $45
    ld b, [hl]                                    ; $6868: $46
    ld b, e                                       ; $6869: $43
    ld b, a                                       ; $686a: $47
    ret c                                         ; $686b: $d8

    ldh [$5e], a                                  ; $686c: $e0 $5e
    ld c, [hl]                                    ; $686e: $4e
    rst $38                                       ; $686f: $ff
    ld c, [hl]                                    ; $6870: $4e
    ld c, [hl]                                    ; $6871: $4e
    ld c, a                                       ; $6872: $4f
    ld d, b                                       ; $6873: $50
    ld d, c                                       ; $6874: $51
    ld c, [hl]                                    ; $6875: $4e
    ld c, [hl]                                    ; $6876: $4e
    ld e, [hl]                                    ; $6877: $5e
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    rla                                           ; $687b: $17
    dec c                                         ; $687c: $0d
    dec c                                         ; $687d: $0d
    dec l                                         ; $687e: $2d
    cp $e3                                        ; $687f: $fe $e3
    dec l                                         ; $6881: $2d

jr_077_6882:
    or $e1                                        ; $6882: $f6 $e1
    ld a, [c]                                     ; $6884: $f2
    ld [c], a                                     ; $6885: $e2
    or $e4                                        ; $6886: $f6 $e4
    add b                                         ; $6888: $80
    and $e0                                       ; $6889: $e6 $e0
    push hl                                       ; $688b: $e5
    pop hl                                        ; $688c: $e1
    rst $30                                       ; $688d: $f7
    ld [c], a                                     ; $688e: $e2
    db $db                                        ; $688f: $db
    ld [c], a                                     ; $6890: $e2
    or $e5                                        ; $6891: $f6 $e5
    ld [c], a                                     ; $6893: $e2
    rst $20                                       ; $6894: $e7
    or $f0                                        ; $6895: $f6 $f0
    ld e, b                                       ; $6897: $58
    db $fd                                        ; $6898: $fd
    ld e, c                                       ; $6899: $59
    rst $38                                       ; $689a: $ff
    db $e4                                        ; $689b: $e4

jr_077_689c:
    ld e, b                                       ; $689c: $58
    ld e, d                                       ; $689d: $5a
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    ld bc, $02fd                                  ; $68a1: $01 $fd $02
    ei                                            ; $68a4: $fb
    ldh [$5a], a                                  ; $68a5: $e0 $5a
    ld e, e                                       ; $68a7: $5b
    inc b                                         ; $68a8: $04
    inc b                                         ; $68a9: $04
    inc c                                         ; $68aa: $0c
    dec c                                         ; $68ab: $0d
    rst $38                                       ; $68ac: $ff
    ld c, $0f                                     ; $68ad: $0e $0f
    inc b                                         ; $68af: $04
    inc b                                         ; $68b0: $04
    ld e, e                                       ; $68b1: $5b
    ld e, h                                       ; $68b2: $5c
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    rst $38                                       ; $68b5: $ff
    dec de                                        ; $68b6: $1b
    inc e                                         ; $68b7: $1c
    dec e                                         ; $68b8: $1d
    ld e, $00                                     ; $68b9: $1e $00
    nop                                           ; $68bb: $00
    ld e, h                                       ; $68bc: $5c
    ld e, l                                       ; $68bd: $5d
    rst $38                                       ; $68be: $ff
    inc b                                         ; $68bf: $04
    inc b                                         ; $68c0: $04
    dec hl                                        ; $68c1: $2b
    inc l                                         ; $68c2: $2c
    dec l                                         ; $68c3: $2d
    ld l, $04                                     ; $68c4: $2e $04
    inc b                                         ; $68c6: $04
    db $dd                                        ; $68c7: $dd
    ld e, l                                       ; $68c8: $5d
    ret c                                         ; $68c9: $d8

    pop hl                                        ; $68ca: $e1
    dec sp                                        ; $68cb: $3b
    inc a                                         ; $68cc: $3c
    dec a                                         ; $68cd: $3d
    ret c                                         ; $68ce: $d8

    db $e3                                        ; $68cf: $e3
    ld [$fb48], sp                                ; $68d0: $08 $48 $fb
    ld c, c                                       ; $68d3: $49
    ld c, d                                       ; $68d4: $4a
    ret c                                         ; $68d5: $d8

    ldh [$5e], a                                  ; $68d6: $e0 $5e
    ld c, [hl]                                    ; $68d8: $4e
    ld c, [hl]                                    ; $68d9: $4e
    ld d, d                                       ; $68da: $52
    ld d, e                                       ; $68db: $53
    rra                                           ; $68dc: $1f
    ld d, h                                       ; $68dd: $54
    ld d, l                                       ; $68de: $55
    ld c, [hl]                                    ; $68df: $4e
    ld c, [hl]                                    ; $68e0: $4e
    ld e, [hl]                                    ; $68e1: $5e
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    rla                                           ; $68e5: $17
    dec c                                         ; $68e6: $0d
    dec c                                         ; $68e7: $0d
    dec l                                         ; $68e8: $2d
    cp $e3                                        ; $68e9: $fe $e3
    dec l                                         ; $68eb: $2d
    or $e1                                        ; $68ec: $f6 $e1
    ld a, [c]                                     ; $68ee: $f2
    ld [c], a                                     ; $68ef: $e2
    or $e4                                        ; $68f0: $f6 $e4
    nop                                           ; $68f2: $00
    and $e0                                       ; $68f3: $e6 $e0
    push hl                                       ; $68f5: $e5
    pop hl                                        ; $68f6: $e1
    rst $30                                       ; $68f7: $f7
    ld [c], a                                     ; $68f8: $e2
    db $db                                        ; $68f9: $db
    ld [c], a                                     ; $68fa: $e2
    or $e5                                        ; $68fb: $f6 $e5
    ld [c], a                                     ; $68fd: $e2
    rst $20                                       ; $68fe: $e7
    jp z, $f6e2                                   ; $68ff: $ca $e2 $f6

    db $e4                                        ; $6902: $e4
    or $ce                                        ; $6903: $f6 $ce
    db $e4                                        ; $6905: $e4
    ld e, b                                       ; $6906: $58
    ld e, c                                       ; $6907: $59
    rst $38                                       ; $6908: $ff
    db $e4                                        ; $6909: $e4
    ld e, b                                       ; $690a: $58
    ld e, d                                       ; $690b: $5a
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    rst $30                                       ; $690e: $f7
    nop                                           ; $690f: $00
    ld bc, $fb03                                  ; $6910: $01 $03 $fb
    ldh [$5a], a                                  ; $6913: $e0 $5a
    ld e, e                                       ; $6915: $5b
    inc b                                         ; $6916: $04
    inc b                                         ; $6917: $04
    rst $38                                       ; $6918: $ff
    inc b                                         ; $6919: $04
    db $10                                        ; $691a: $10
    ld de, $0412                                  ; $691b: $11 $12 $04
    inc b                                         ; $691e: $04
    ld e, e                                       ; $691f: $5b
    ld e, h                                       ; $6920: $5c
    rst $38                                       ; $6921: $ff
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    rra                                           ; $6924: $1f
    jr nz, jr_077_6948                            ; $6925: $20 $21

    ld [hl+], a                                   ; $6927: $22
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    rst $38                                       ; $692a: $ff
    ld e, h                                       ; $692b: $5c
    ld e, l                                       ; $692c: $5d
    inc b                                         ; $692d: $04
    inc b                                         ; $692e: $04
    cpl                                           ; $692f: $2f
    jr nc, jr_077_6963                            ; $6930: $30 $31

    ld [hl-], a                                   ; $6932: $32
    rst $30                                       ; $6933: $f7
    inc b                                         ; $6934: $04
    inc b                                         ; $6935: $04
    ld e, l                                       ; $6936: $5d
    ret c                                         ; $6937: $d8

    ldh [$3e], a                                  ; $6938: $e0 $3e
    ccf                                           ; $693a: $3f
    ld b, b                                       ; $693b: $40
    ld b, c                                       ; $693c: $41
    sbc $d8                                       ; $693d: $de $d8
    db $e3                                        ; $693f: $e3
    dec bc                                        ; $6940: $0b
    ld c, e                                       ; $6941: $4b
    ld c, h                                       ; $6942: $4c
    ld c, l                                       ; $6943: $4d
    ret c                                         ; $6944: $d8

    ldh [$5e], a                                  ; $6945: $e0 $5e
    ld c, [hl]                                    ; $6947: $4e

jr_077_6948:
    rst $38                                       ; $6948: $ff
    ld c, [hl]                                    ; $6949: $4e
    ld d, [hl]                                    ; $694a: $56
    ld d, a                                       ; $694b: $57
    ld d, h                                       ; $694c: $54
    ld d, l                                       ; $694d: $55
    ld c, [hl]                                    ; $694e: $4e
    ld c, [hl]                                    ; $694f: $4e
    ld e, [hl]                                    ; $6950: $5e
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    rrca                                          ; $6954: $0f
    dec c                                         ; $6955: $0d
    dec c                                         ; $6956: $0d
    dec c                                         ; $6957: $0d
    dec l                                         ; $6958: $2d
    db $fc                                        ; $6959: $fc
    ld [c], a                                     ; $695a: $e2
    ld a, [$f7e0]                                 ; $695b: $fa $e0 $f7
    db $e4                                        ; $695e: $e4
    ldh a, [$e1]                                  ; $695f: $f0 $e1
    ld h, h                                       ; $6961: $64
    db $fd                                        ; $6962: $fd

jr_077_6963:
    ld [c], a                                     ; $6963: $e2
    or $e6                                        ; $6964: $f6 $e6
    dec l                                         ; $6966: $2d
    db $ec                                        ; $6967: $ec
    pop hl                                        ; $6968: $e1
    ld [c], a                                     ; $6969: $e2
    ld sp, hl                                     ; $696a: $f9
    ld c, l                                       ; $696b: $4d
    ld c, l                                       ; $696c: $4d
    rst $08                                       ; $696d: $cf
    db $e3                                        ; $696e: $e3
    ld a, a                                       ; $696f: $7f
    ld c, l                                       ; $6970: $4d
    ld l, l                                       ; $6971: $6d
    ld h, b                                       ; $6972: $60
    ld h, c                                       ; $6973: $61
    ld h, d                                       ; $6974: $62
    ld h, d                                       ; $6975: $62
    ld h, c                                       ; $6976: $61
    db $fc                                        ; $6977: $fc
    pop hl                                        ; $6978: $e1
    rst $38                                       ; $6979: $ff
    ld h, b                                       ; $697a: $60
    ld h, h                                       ; $697b: $64
    ld h, a                                       ; $697c: $67
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    ld bc, $0002                                  ; $697f: $01 $02 $00
    rst $38                                       ; $6982: $ff
    nop                                           ; $6983: $00
    ld h, a                                       ; $6984: $67
    ld h, h                                       ; $6985: $64
    ld h, l                                       ; $6986: $65
    ld l, b                                       ; $6987: $68
    dec d                                         ; $6988: $15
    ld [$ff09], sp                                ; $6989: $08 $09 $ff
    ld a, [bc]                                    ; $698c: $0a
    dec bc                                        ; $698d: $0b
    dec d                                         ; $698e: $15
    ld l, b                                       ; $698f: $68
    ld h, l                                       ; $6990: $65
    ld h, [hl]                                    ; $6991: $66
    ld l, c                                       ; $6992: $69
    inc h                                         ; $6993: $24
    ld a, a                                       ; $6994: $7f
    ld d, $17                                     ; $6995: $16 $17
    jr jr_077_69b2                                ; $6997: $18 $19

    inc h                                         ; $6999: $24
    ld l, c                                       ; $699a: $69
    ld h, [hl]                                    ; $699b: $66
    ld [c], a                                     ; $699c: $e2
    ldh [$f7], a                                  ; $699d: $e0 $f7
    inc bc                                        ; $699f: $03
    dec h                                         ; $69a0: $25
    ld h, $e2                                     ; $69a1: $26 $e2
    db $e4                                        ; $69a3: $e4
    inc sp                                        ; $69a4: $33
    inc [hl]                                      ; $69a5: $34
    dec [hl]                                      ; $69a6: $35
    ld [hl], $de                                  ; $69a7: $36 $de
    ld [c], a                                     ; $69a9: $e2
    db $e3                                        ; $69aa: $e3
    ld b, e                                       ; $69ab: $43
    ld b, h                                       ; $69ac: $44
    ld b, l                                       ; $69ad: $45
    ld b, [hl]                                    ; $69ae: $46
    ld [c], a                                     ; $69af: $e2
    ldh [$60], a                                  ; $69b0: $e0 $60

jr_077_69b2:
    ld h, c                                       ; $69b2: $61
    rst $38                                       ; $69b3: $ff
    ld h, e                                       ; $69b4: $63
    ld d, e                                       ; $69b5: $53
    ld d, h                                       ; $69b6: $54
    ld d, l                                       ; $69b7: $55
    ld d, [hl]                                    ; $69b8: $56
    ld h, e                                       ; $69b9: $63
    ld h, c                                       ; $69ba: $61
    ld h, b                                       ; $69bb: $60
    nop                                           ; $69bc: $00
    nop                                           ; $69bd: $00
    nop                                           ; $69be: $00
    rrca                                          ; $69bf: $0f
    dec c                                         ; $69c0: $0d
    dec c                                         ; $69c1: $0d
    dec c                                         ; $69c2: $0d
    dec l                                         ; $69c3: $2d
    db $fc                                        ; $69c4: $fc
    ld [c], a                                     ; $69c5: $e2
    ld a, [$f7e0]                                 ; $69c6: $fa $e0 $f7
    db $e4                                        ; $69c9: $e4
    ldh a, [$e1]                                  ; $69ca: $f0 $e1
    call nz, $e2fd                                ; $69cc: $c4 $fd $e2
    or $e6                                        ; $69cf: $f6 $e6
    dec l                                         ; $69d1: $2d
    db $ec                                        ; $69d2: $ec
    pop hl                                        ; $69d3: $e1
    jp hl                                         ; $69d4: $e9


    db $e3                                        ; $69d5: $e3
    ld [c], a                                     ; $69d6: $e2
    di                                            ; $69d7: $f3
    ld c, l                                       ; $69d8: $4d
    ld c, l                                       ; $69d9: $4d
    cp $cf                                        ; $69da: $fe $cf
    db $e3                                        ; $69dc: $e3
    ld c, l                                       ; $69dd: $4d
    ld l, l                                       ; $69de: $6d
    ld h, b                                       ; $69df: $60
    ld h, c                                       ; $69e0: $61
    ld h, d                                       ; $69e1: $62
    ld h, d                                       ; $69e2: $62
    ld h, c                                       ; $69e3: $61
    cp $fc                                        ; $69e4: $fe $fc
    pop hl                                        ; $69e6: $e1
    ld h, b                                       ; $69e7: $60
    ld h, h                                       ; $69e8: $64
    ld h, a                                       ; $69e9: $67
    nop                                           ; $69ea: $00
    inc bc                                        ; $69eb: $03
    inc b                                         ; $69ec: $04
    dec b                                         ; $69ed: $05
    rst $38                                       ; $69ee: $ff
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    ld h, a                                       ; $69f1: $67
    ld h, h                                       ; $69f2: $64
    ld h, l                                       ; $69f3: $65
    ld l, b                                       ; $69f4: $68
    dec d                                         ; $69f5: $15
    inc c                                         ; $69f6: $0c
    rst $38                                       ; $69f7: $ff
    dec c                                         ; $69f8: $0d
    ld c, $0f                                     ; $69f9: $0e $0f
    dec d                                         ; $69fb: $15
    ld l, b                                       ; $69fc: $68
    ld h, l                                       ; $69fd: $65
    ld h, [hl]                                    ; $69fe: $66
    ld l, c                                       ; $69ff: $69
    rst $38                                       ; $6a00: $ff
    inc h                                         ; $6a01: $24
    ld a, [de]                                    ; $6a02: $1a
    dec de                                        ; $6a03: $1b
    inc e                                         ; $6a04: $1c
    dec e                                         ; $6a05: $1d
    inc h                                         ; $6a06: $24
    ld l, c                                       ; $6a07: $69
    ld h, [hl]                                    ; $6a08: $66
    sbc $e2                                       ; $6a09: $de $e2
    ldh [$27], a                                  ; $6a0b: $e0 $27
    jr z, jr_077_6a38                             ; $6a0d: $28 $29

    ld a, [hl+]                                   ; $6a0f: $2a
    ld [c], a                                     ; $6a10: $e2
    db $e3                                        ; $6a11: $e3
    scf                                           ; $6a12: $37
    jr c, jr_077_6a90                             ; $6a13: $38 $7b

    add hl, sp                                    ; $6a15: $39
    ld a, [hl-]                                   ; $6a16: $3a
    ld [c], a                                     ; $6a17: $e2
    db $e3                                        ; $6a18: $e3
    ld b, a                                       ; $6a19: $47
    ld c, b                                       ; $6a1a: $48
    ld c, c                                       ; $6a1b: $49
    ld c, d                                       ; $6a1c: $4a
    ld [c], a                                     ; $6a1d: $e2
    ldh [rIE], a                                  ; $6a1e: $e0 $ff
    ld h, b                                       ; $6a20: $60
    ld h, c                                       ; $6a21: $61
    ld h, e                                       ; $6a22: $63
    ld d, a                                       ; $6a23: $57
    ld e, b                                       ; $6a24: $58
    ld e, c                                       ; $6a25: $59
    ld d, [hl]                                    ; $6a26: $56
    ld h, e                                       ; $6a27: $63
    inc bc                                        ; $6a28: $03
    ld h, c                                       ; $6a29: $61
    ld h, b                                       ; $6a2a: $60
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    rrca                                          ; $6a2e: $0f
    dec c                                         ; $6a2f: $0d
    dec c                                         ; $6a30: $0d
    dec c                                         ; $6a31: $0d
    dec l                                         ; $6a32: $2d
    db $fc                                        ; $6a33: $fc
    ld [c], a                                     ; $6a34: $e2
    ld a, [$f7e0]                                 ; $6a35: $fa $e0 $f7

jr_077_6a38:
    db $e4                                        ; $6a38: $e4
    ldh a, [$e1]                                  ; $6a39: $f0 $e1
    call nz, $e2fd                                ; $6a3b: $c4 $fd $e2
    or $e6                                        ; $6a3e: $f6 $e6
    dec l                                         ; $6a40: $2d
    db $ec                                        ; $6a41: $ec
    pop hl                                        ; $6a42: $e1
    jp hl                                         ; $6a43: $e9


    db $e3                                        ; $6a44: $e3
    ld [c], a                                     ; $6a45: $e2
    di                                            ; $6a46: $f3
    ld c, l                                       ; $6a47: $4d
    ld c, l                                       ; $6a48: $4d
    cp $cf                                        ; $6a49: $fe $cf
    db $e3                                        ; $6a4b: $e3
    ld c, l                                       ; $6a4c: $4d
    ld l, l                                       ; $6a4d: $6d
    ld h, b                                       ; $6a4e: $60
    ld h, c                                       ; $6a4f: $61
    ld h, d                                       ; $6a50: $62
    ld h, d                                       ; $6a51: $62
    ld h, c                                       ; $6a52: $61
    cp $fc                                        ; $6a53: $fe $fc
    pop hl                                        ; $6a55: $e1
    ld h, b                                       ; $6a56: $60
    ld h, h                                       ; $6a57: $64
    ld h, a                                       ; $6a58: $67
    nop                                           ; $6a59: $00
    inc bc                                        ; $6a5a: $03
    inc b                                         ; $6a5b: $04
    dec b                                         ; $6a5c: $05
    rst $38                                       ; $6a5d: $ff
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    ld h, a                                       ; $6a60: $67
    ld h, h                                       ; $6a61: $64
    ld h, l                                       ; $6a62: $65
    ld l, b                                       ; $6a63: $68
    dec d                                         ; $6a64: $15
    inc c                                         ; $6a65: $0c
    rst $38                                       ; $6a66: $ff
    db $10                                        ; $6a67: $10
    ld de, $150f                                  ; $6a68: $11 $0f $15
    ld l, b                                       ; $6a6b: $68
    ld h, l                                       ; $6a6c: $65
    ld h, [hl]                                    ; $6a6d: $66
    ld l, c                                       ; $6a6e: $69
    rst $38                                       ; $6a6f: $ff
    inc h                                         ; $6a70: $24
    ld e, $1f                                     ; $6a71: $1e $1f
    jr nz, jr_077_6a92                            ; $6a73: $20 $1d

    inc h                                         ; $6a75: $24
    ld l, c                                       ; $6a76: $69
    ld h, [hl]                                    ; $6a77: $66
    sbc $e2                                       ; $6a78: $de $e2
    ldh [$2b], a                                  ; $6a7a: $e0 $2b
    inc l                                         ; $6a7c: $2c
    dec l                                         ; $6a7d: $2d
    ld l, $e2                                     ; $6a7e: $2e $e2
    db $e3                                        ; $6a80: $e3
    dec sp                                        ; $6a81: $3b
    inc a                                         ; $6a82: $3c
    ld a, e                                       ; $6a83: $7b
    dec a                                         ; $6a84: $3d
    ld a, $e2                                     ; $6a85: $3e $e2
    db $e3                                        ; $6a87: $e3
    ld c, e                                       ; $6a88: $4b
    ld c, h                                       ; $6a89: $4c
    ld c, l                                       ; $6a8a: $4d
    ld c, [hl]                                    ; $6a8b: $4e
    ld [c], a                                     ; $6a8c: $e2
    ldh [rIE], a                                  ; $6a8d: $e0 $ff
    ld h, b                                       ; $6a8f: $60

jr_077_6a90:
    ld h, c                                       ; $6a90: $61
    ld h, e                                       ; $6a91: $63

jr_077_6a92:
    ld d, e                                       ; $6a92: $53
    ld e, d                                       ; $6a93: $5a
    ld e, e                                       ; $6a94: $5b
    ld e, h                                       ; $6a95: $5c
    ld h, e                                       ; $6a96: $63
    inc bc                                        ; $6a97: $03
    ld h, c                                       ; $6a98: $61
    ld h, b                                       ; $6a99: $60
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    rrca                                          ; $6a9d: $0f
    dec c                                         ; $6a9e: $0d
    dec c                                         ; $6a9f: $0d
    dec c                                         ; $6aa0: $0d
    dec l                                         ; $6aa1: $2d
    db $fc                                        ; $6aa2: $fc
    ld [c], a                                     ; $6aa3: $e2
    ld a, [$f7e0]                                 ; $6aa4: $fa $e0 $f7
    db $e4                                        ; $6aa7: $e4
    ldh a, [$e1]                                  ; $6aa8: $f0 $e1
    call nz, $e2fd                                ; $6aaa: $c4 $fd $e2
    or $e6                                        ; $6aad: $f6 $e6
    dec l                                         ; $6aaf: $2d
    db $ec                                        ; $6ab0: $ec
    pop hl                                        ; $6ab1: $e1
    jp hl                                         ; $6ab2: $e9


    db $e3                                        ; $6ab3: $e3
    ld [c], a                                     ; $6ab4: $e2
    di                                            ; $6ab5: $f3
    ld c, l                                       ; $6ab6: $4d
    ld c, l                                       ; $6ab7: $4d
    cp $ba                                        ; $6ab8: $fe $ba
    db $e3                                        ; $6aba: $e3
    ld c, l                                       ; $6abb: $4d
    ld l, l                                       ; $6abc: $6d
    ld h, b                                       ; $6abd: $60
    ld h, c                                       ; $6abe: $61
    ld h, d                                       ; $6abf: $62
    ld h, d                                       ; $6ac0: $62
    ld h, c                                       ; $6ac1: $61
    cp $fc                                        ; $6ac2: $fe $fc
    pop hl                                        ; $6ac4: $e1
    ld h, b                                       ; $6ac5: $60
    ld h, h                                       ; $6ac6: $64
    ld h, a                                       ; $6ac7: $67
    nop                                           ; $6ac8: $00
    inc bc                                        ; $6ac9: $03
    ld b, $07                                     ; $6aca: $06 $07
    rst $38                                       ; $6acc: $ff
    nop                                           ; $6acd: $00

Jump_077_6ace:
    nop                                           ; $6ace: $00
    ld h, a                                       ; $6acf: $67
    ld h, h                                       ; $6ad0: $64
    ld h, l                                       ; $6ad1: $65
    ld l, b                                       ; $6ad2: $68
    dec d                                         ; $6ad3: $15
    ld [de], a                                    ; $6ad4: $12
    rst $38                                       ; $6ad5: $ff
    inc de                                        ; $6ad6: $13
    inc d                                         ; $6ad7: $14
    dec d                                         ; $6ad8: $15
    dec d                                         ; $6ad9: $15
    ld l, b                                       ; $6ada: $68
    ld h, l                                       ; $6adb: $65
    ld h, [hl]                                    ; $6adc: $66
    ld l, c                                       ; $6add: $69
    rst $38                                       ; $6ade: $ff
    inc h                                         ; $6adf: $24
    ld hl, $2322                                  ; $6ae0: $21 $22 $23
    inc h                                         ; $6ae3: $24
    inc h                                         ; $6ae4: $24
    ld l, c                                       ; $6ae5: $69
    ld h, [hl]                                    ; $6ae6: $66
    sbc $e2                                       ; $6ae7: $de $e2
    ldh [$2f], a                                  ; $6ae9: $e0 $2f
    jr nc, @+$33                                  ; $6aeb: $30 $31

    ld [hl-], a                                   ; $6aed: $32
    ld [c], a                                     ; $6aee: $e2
    db $e3                                        ; $6aef: $e3
    ccf                                           ; $6af0: $3f
    ld b, b                                       ; $6af1: $40
    ld a, e                                       ; $6af2: $7b
    ld b, c                                       ; $6af3: $41
    ld b, d                                       ; $6af4: $42
    ld [c], a                                     ; $6af5: $e2
    db $e3                                        ; $6af6: $e3
    ld c, a                                       ; $6af7: $4f
    ld d, b                                       ; $6af8: $50
    ld d, c                                       ; $6af9: $51
    ld d, d                                       ; $6afa: $52
    ld [c], a                                     ; $6afb: $e2
    ldh [rIE], a                                  ; $6afc: $e0 $ff
    ld h, b                                       ; $6afe: $60
    ld h, c                                       ; $6aff: $61
    ld h, e                                       ; $6b00: $63
    ld d, [hl]                                    ; $6b01: $56
    ld e, l                                       ; $6b02: $5d
    ld e, [hl]                                    ; $6b03: $5e
    ld e, a                                       ; $6b04: $5f
    ld h, e                                       ; $6b05: $63
    inc bc                                        ; $6b06: $03
    ld h, c                                       ; $6b07: $61
    ld h, b                                       ; $6b08: $60
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00

    db $0f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e0, $f7, $e4, $f0, $e1, $b0, $fd, $e2
    db $f7, $e7, $ec, $e1, $e2, $f9, $4d, $4d, $cf, $e3, $4d, $bf, $6d, $4d, $4e, $4f
    db $4f, $4e, $fc, $e1, $4d, $ff, $51, $55, $00, $00, $01, $02, $00, $00, $ff, $55
    db $51, $52, $56, $13, $08, $09, $0a, $ff, $0b, $13, $56, $54, $53, $57, $58, $14
    db $bf, $15, $16, $17, $58, $57, $53, $e2, $e0, $03, $7b, $20, $21, $e2, $e4, $2c
    db $2d, $2e, $2f, $e2, $e3, $ef, $3a, $3b, $3c, $3d, $e2, $e0, $4d, $4e, $50, $7f
    db $46, $47, $48, $49, $50, $4e, $4d, $00, $00

    nop                                           ; $6b75: $00

    db $0f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e0, $f7, $e4, $f0, $e1, $60, $fd, $e2
    db $f7, $e7, $ec, $e1, $e9, $e3, $e2, $f3, $4d, $4d, $cf, $e3, $7f, $4d, $6d, $4d
    db $4e, $4f, $4f, $4e, $fc, $e1, $ff, $4d, $51, $55, $00, $03, $04, $05, $00, $ff
    db $00, $55, $51, $52, $56, $13, $0c, $0d, $ff, $0e, $0f, $13, $56, $54, $53, $57
    db $58, $7f, $18, $19, $1a, $1b, $58, $57, $53, $e2, $e0, $ef, $22, $23, $24, $25
    db $e2, $e3, $30, $31, $32, $bd, $33, $e2, $e3, $3e, $3f, $40, $41, $e2, $e0, $4d
    db $ff, $4e, $50, $4a, $4b, $4c, $49, $50, $4e, $01, $4d, $00, $00

    nop                                           ; $6be3: $00
    rrca                                          ; $6be4: $0f
    dec c                                         ; $6be5: $0d
    dec c                                         ; $6be6: $0d
    dec c                                         ; $6be7: $0d
    dec l                                         ; $6be8: $2d
    db $fc                                        ; $6be9: $fc
    ld [c], a                                     ; $6bea: $e2
    ld a, [$f7e0]                                 ; $6beb: $fa $e0 $f7
    db $e4                                        ; $6bee: $e4
    ldh a, [$e1]                                  ; $6bef: $f0 $e1
    or b                                          ; $6bf1: $b0
    db $fd                                        ; $6bf2: $fd
    ld [c], a                                     ; $6bf3: $e2
    rst $30                                       ; $6bf4: $f7
    rst $20                                       ; $6bf5: $e7
    db $ec                                        ; $6bf6: $ec
    pop hl                                        ; $6bf7: $e1
    ld [c], a                                     ; $6bf8: $e2
    ld sp, hl                                     ; $6bf9: $f9
    ld c, l                                       ; $6bfa: $4d
    ld c, l                                       ; $6bfb: $4d
    rst $08                                       ; $6bfc: $cf
    db $e3                                        ; $6bfd: $e3
    ld c, l                                       ; $6bfe: $4d
    cp a                                          ; $6bff: $bf
    ld l, l                                       ; $6c00: $6d
    ld c, l                                       ; $6c01: $4d
    ld c, [hl]                                    ; $6c02: $4e
    ld c, a                                       ; $6c03: $4f
    ld c, a                                       ; $6c04: $4f
    ld c, [hl]                                    ; $6c05: $4e
    db $fc                                        ; $6c06: $fc
    pop hl                                        ; $6c07: $e1
    ld c, l                                       ; $6c08: $4d
    rst $38                                       ; $6c09: $ff
    ld d, c                                       ; $6c0a: $51
    ld d, l                                       ; $6c0b: $55
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    ld bc, $0002                                  ; $6c0e: $01 $02 $00
    nop                                           ; $6c11: $00
    rst $38                                       ; $6c12: $ff
    ld d, l                                       ; $6c13: $55

jr_077_6c14:
    ld d, c                                       ; $6c14: $51
    ld d, d                                       ; $6c15: $52
    ld d, [hl]                                    ; $6c16: $56
    inc de                                        ; $6c17: $13
    ld [$0a09], sp                                ; $6c18: $08 $09 $0a
    rst $38                                       ; $6c1b: $ff
    dec bc                                        ; $6c1c: $0b
    inc de                                        ; $6c1d: $13
    ld d, [hl]                                    ; $6c1e: $56
    ld d, h                                       ; $6c1f: $54
    ld d, e                                       ; $6c20: $53
    ld d, a                                       ; $6c21: $57
    ld e, b                                       ; $6c22: $58
    inc d                                         ; $6c23: $14
    cp a                                          ; $6c24: $bf
    dec d                                         ; $6c25: $15
    ld d, $17                                     ; $6c26: $16 $17
    ld e, b                                       ; $6c28: $58
    ld d, a                                       ; $6c29: $57
    ld d, e                                       ; $6c2a: $53
    ld [c], a                                     ; $6c2b: $e2
    ldh [rNR52], a                                ; $6c2c: $e0 $26
    ld a, e                                       ; $6c2e: $7b
    daa                                           ; $6c2f: $27
    jr z, jr_077_6c14                             ; $6c30: $28 $e2

    db $e4                                        ; $6c32: $e4
    inc [hl]                                      ; $6c33: $34
    dec [hl]                                      ; $6c34: $35
    ld [hl], $13                                  ; $6c35: $36 $13
    ld [c], a                                     ; $6c37: $e2
    db $e3                                        ; $6c38: $e3
    rst $28                                       ; $6c39: $ef
    ld b, d                                       ; $6c3a: $42
    ld b, e                                       ; $6c3b: $43
    ld b, h                                       ; $6c3c: $44
    ld b, l                                       ; $6c3d: $45
    ld [c], a                                     ; $6c3e: $e2
    ldh [rKEY1], a                                ; $6c3f: $e0 $4d
    ld c, [hl]                                    ; $6c41: $4e
    ld d, b                                       ; $6c42: $50
    ld a, a                                       ; $6c43: $7f
    ld b, [hl]                                    ; $6c44: $46
    ld b, a                                       ; $6c45: $47
    ld c, b                                       ; $6c46: $48
    ld c, c                                       ; $6c47: $49
    ld d, b                                       ; $6c48: $50
    ld c, [hl]                                    ; $6c49: $4e
    ld c, l                                       ; $6c4a: $4d
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    rrca                                          ; $6c4e: $0f
    dec c                                         ; $6c4f: $0d
    dec c                                         ; $6c50: $0d
    dec c                                         ; $6c51: $0d
    dec l                                         ; $6c52: $2d
    db $fc                                        ; $6c53: $fc
    ld [c], a                                     ; $6c54: $e2
    ld a, [$f7e0]                                 ; $6c55: $fa $e0 $f7
    db $e4                                        ; $6c58: $e4
    ldh a, [$e1]                                  ; $6c59: $f0 $e1
    or b                                          ; $6c5b: $b0
    db $fd                                        ; $6c5c: $fd
    ld [c], a                                     ; $6c5d: $e2
    rst $30                                       ; $6c5e: $f7
    rst $20                                       ; $6c5f: $e7
    db $ec                                        ; $6c60: $ec
    pop hl                                        ; $6c61: $e1
    ld [c], a                                     ; $6c62: $e2
    ld sp, hl                                     ; $6c63: $f9
    ld c, l                                       ; $6c64: $4d
    ld c, l                                       ; $6c65: $4d
    rst $08                                       ; $6c66: $cf
    db $e3                                        ; $6c67: $e3
    ld c, l                                       ; $6c68: $4d
    cp a                                          ; $6c69: $bf
    ld l, l                                       ; $6c6a: $6d
    ld c, l                                       ; $6c6b: $4d
    ld c, [hl]                                    ; $6c6c: $4e
    ld c, a                                       ; $6c6d: $4f
    ld c, a                                       ; $6c6e: $4f
    ld c, [hl]                                    ; $6c6f: $4e
    db $fc                                        ; $6c70: $fc
    pop hl                                        ; $6c71: $e1
    ld c, l                                       ; $6c72: $4d
    rst $38                                       ; $6c73: $ff
    ld d, c                                       ; $6c74: $51
    ld d, l                                       ; $6c75: $55
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    ld b, $07                                     ; $6c78: $06 $07
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    rst $38                                       ; $6c7c: $ff
    ld d, l                                       ; $6c7d: $55
    ld d, c                                       ; $6c7e: $51
    ld d, d                                       ; $6c7f: $52
    ld d, [hl]                                    ; $6c80: $56
    inc de                                        ; $6c81: $13
    db $10                                        ; $6c82: $10
    ld de, $ff12                                  ; $6c83: $11 $12 $ff
    inc de                                        ; $6c86: $13
    inc de                                        ; $6c87: $13
    ld d, [hl]                                    ; $6c88: $56
    ld d, h                                       ; $6c89: $54
    ld d, e                                       ; $6c8a: $53
    ld d, a                                       ; $6c8b: $57
    ld e, b                                       ; $6c8c: $58
    inc e                                         ; $6c8d: $1c
    cp a                                          ; $6c8e: $bf
    dec e                                         ; $6c8f: $1d
    ld e, $1f                                     ; $6c90: $1e $1f
    ld e, b                                       ; $6c92: $58
    ld d, a                                       ; $6c93: $57
    ld d, e                                       ; $6c94: $53
    ld [c], a                                     ; $6c95: $e2
    ldh [$29], a                                  ; $6c96: $e0 $29
    cp e                                          ; $6c98: $bb
    ld a, [hl+]                                   ; $6c99: $2a
    dec hl                                        ; $6c9a: $2b
    ld [c], a                                     ; $6c9b: $e2
    db $e4                                        ; $6c9c: $e4
    scf                                           ; $6c9d: $37
    jr c, @+$3b                                   ; $6c9e: $38 $39

    ld [c], a                                     ; $6ca0: $e2
    db $e4                                        ; $6ca1: $e4
    ld b, d                                       ; $6ca2: $42
    rst $30                                       ; $6ca3: $f7
    ld b, e                                       ; $6ca4: $43
    ld b, h                                       ; $6ca5: $44
    ld b, l                                       ; $6ca6: $45
    ld [c], a                                     ; $6ca7: $e2
    ldh [rKEY1], a                                ; $6ca8: $e0 $4d
    ld c, [hl]                                    ; $6caa: $4e
    ld d, b                                       ; $6cab: $50
    ld b, [hl]                                    ; $6cac: $46
    ccf                                           ; $6cad: $3f
    ld b, a                                       ; $6cae: $47
    ld c, b                                       ; $6caf: $48
    ld c, c                                       ; $6cb0: $49
    ld d, b                                       ; $6cb1: $50
    ld c, [hl]                                    ; $6cb2: $4e
    ld c, l                                       ; $6cb3: $4d
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    nop                                           ; $6cb6: $00

    db $65, $0d, $ff, $e5, $2d, $f6, $e6, $f7, $e8, $4d, $4d, $f8, $eb, $fc, $e2, $f5
    db $d8, $e6, $6d, $6a, $6b, $6c, $6d, $6b, $fe, $fc, $e1, $6a, $6f, $73, $03, $00
    db $01, $02, $ff, $03, $00, $75, $71, $70, $74, $13, $0c, $ff, $0d, $0e, $0f, $13
    db $76, $72, $6f, $73, $ff, $23, $1c, $1d, $1e, $1f, $53, $75, $71, $ee, $e2, $e0
    db $2c, $2d, $2e, $e2, $e4, $3b, $3c, $3d, $bd, $3e, $e2, $e3, $4b, $4c, $4d, $4e
    db $e2, $e0, $6a, $ff, $6b, $69, $5a, $5b, $5c, $5d, $6e, $6b, $01, $6a, $00, $00

    nop                                           ; $6d17: $00

    db $65, $0d, $ff, $e5, $2d, $f6, $e6, $f7, $e8, $4d, $4d, $f8, $eb, $fc, $e2, $f5
    db $d8, $e6, $6d, $6a, $6b, $6c, $6d, $6b, $fe, $fc, $e1, $6a, $6f, $73, $03, $00
    db $04, $05, $ff, $03, $00, $75, $71, $70, $74, $13, $10, $ff, $11, $12, $13, $13
    db $76, $72, $6f, $73, $ff, $23, $20, $21, $22, $23, $53, $75, $71, $de, $e2, $e0
    db $2f, $30, $31, $32, $e2, $e3, $3f, $40, $7b, $41, $42, $e2, $e3, $4f, $50, $51
    db $52, $e2, $e0, $ff, $6a, $6b, $69, $5e, $5f, $60, $61, $6e, $03, $6b, $6a, $00
    db $00

    nop                                           ; $6d79: $00
    ld h, l                                       ; $6d7a: $65
    dec c                                         ; $6d7b: $0d

Jump_077_6d7c:
    rst $38                                       ; $6d7c: $ff
    push hl                                       ; $6d7d: $e5
    dec l                                         ; $6d7e: $2d
    or $e6                                        ; $6d7f: $f6 $e6
    rst $30                                       ; $6d81: $f7
    add sp, $4d                                   ; $6d82: $e8 $4d
    ld c, l                                       ; $6d84: $4d
    ld hl, sp-$15                                 ; $6d85: $f8 $eb
    db $fc                                        ; $6d87: $fc
    ld [c], a                                     ; $6d88: $e2
    push af                                       ; $6d89: $f5
    ret c                                         ; $6d8a: $d8

    and $6d                                       ; $6d8b: $e6 $6d
    ld l, d                                       ; $6d8d: $6a
    ld l, e                                       ; $6d8e: $6b
    ld l, h                                       ; $6d8f: $6c
    ld l, l                                       ; $6d90: $6d
    ld l, e                                       ; $6d91: $6b
    cp $fc                                        ; $6d92: $fe $fc
    pop hl                                        ; $6d94: $e1
    ld l, d                                       ; $6d95: $6a
    ld l, a                                       ; $6d96: $6f
    ld [hl], e                                    ; $6d97: $73
    inc bc                                        ; $6d98: $03
    nop                                           ; $6d99: $00
    ld b, $07                                     ; $6d9a: $06 $07
    rst $38                                       ; $6d9c: $ff
    ld [$7500], sp                                ; $6d9d: $08 $00 $75
    ld [hl], c                                    ; $6da0: $71
    ld [hl], b                                    ; $6da1: $70
    ld [hl], h                                    ; $6da2: $74
    inc de                                        ; $6da3: $13
    inc d                                         ; $6da4: $14
    rst $38                                       ; $6da5: $ff
    dec d                                         ; $6da6: $15
    ld d, $17                                     ; $6da7: $16 $17
    inc de                                        ; $6da9: $13
    halt                                          ; $6daa: $76
    ld [hl], d                                    ; $6dab: $72
    ld l, a                                       ; $6dac: $6f
    ld [hl], e                                    ; $6dad: $73
    rst $38                                       ; $6dae: $ff
    inc hl                                        ; $6daf: $23
    inc h                                         ; $6db0: $24
    dec h                                         ; $6db1: $25
    ld h, $27                                     ; $6db2: $26 $27
    ld d, e                                       ; $6db4: $53
    ld [hl], l                                    ; $6db5: $75
    ld [hl], c                                    ; $6db6: $71
    sbc $e2                                       ; $6db7: $de $e2
    ldh [$33], a                                  ; $6db9: $e0 $33
    inc [hl]                                      ; $6dbb: $34
    dec [hl]                                      ; $6dbc: $35
    ld [hl], $e2                                  ; $6dbd: $36 $e2
    db $e3                                        ; $6dbf: $e3
    ld b, e                                       ; $6dc0: $43
    ld b, h                                       ; $6dc1: $44
    ld a, e                                       ; $6dc2: $7b
    ld b, l                                       ; $6dc3: $45
    ld b, [hl]                                    ; $6dc4: $46
    ld [c], a                                     ; $6dc5: $e2
    db $e3                                        ; $6dc6: $e3
    ld d, e                                       ; $6dc7: $53
    ld d, h                                       ; $6dc8: $54
    ld d, l                                       ; $6dc9: $55
    ld d, [hl]                                    ; $6dca: $56
    ld [c], a                                     ; $6dcb: $e2
    ldh [rIE], a                                  ; $6dcc: $e0 $ff
    ld l, d                                       ; $6dce: $6a
    ld l, e                                       ; $6dcf: $6b
    ld l, c                                       ; $6dd0: $69
    ld h, d                                       ; $6dd1: $62
    ld h, e                                       ; $6dd2: $63
    ld h, h                                       ; $6dd3: $64
    ld h, l                                       ; $6dd4: $65
    ld l, [hl]                                    ; $6dd5: $6e
    inc bc                                        ; $6dd6: $03
    ld l, e                                       ; $6dd7: $6b
    ld l, d                                       ; $6dd8: $6a
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    ld h, l                                       ; $6ddc: $65
    dec c                                         ; $6ddd: $0d
    rst $38                                       ; $6dde: $ff
    push hl                                       ; $6ddf: $e5
    dec l                                         ; $6de0: $2d
    or $e6                                        ; $6de1: $f6 $e6
    rst $30                                       ; $6de3: $f7
    add sp, $4d                                   ; $6de4: $e8 $4d
    ld c, l                                       ; $6de6: $4d
    ld hl, sp-$15                                 ; $6de7: $f8 $eb
    db $fc                                        ; $6de9: $fc
    ld [c], a                                     ; $6dea: $e2
    push af                                       ; $6deb: $f5
    ret c                                         ; $6dec: $d8

    and $6d                                       ; $6ded: $e6 $6d
    ld l, d                                       ; $6def: $6a
    ld l, e                                       ; $6df0: $6b
    ld l, h                                       ; $6df1: $6c
    ld l, l                                       ; $6df2: $6d
    ld l, e                                       ; $6df3: $6b
    cp $fc                                        ; $6df4: $fe $fc
    pop hl                                        ; $6df6: $e1
    ld l, d                                       ; $6df7: $6a
    ld l, a                                       ; $6df8: $6f
    ld [hl], e                                    ; $6df9: $73
    inc bc                                        ; $6dfa: $03
    nop                                           ; $6dfb: $00
    add hl, bc                                    ; $6dfc: $09
    ld a, [bc]                                    ; $6dfd: $0a
    rst $38                                       ; $6dfe: $ff
    dec bc                                        ; $6dff: $0b
    nop                                           ; $6e00: $00
    ld [hl], l                                    ; $6e01: $75
    ld [hl], c                                    ; $6e02: $71
    ld [hl], b                                    ; $6e03: $70
    ld [hl], h                                    ; $6e04: $74
    inc de                                        ; $6e05: $13
    jr @+$01                                      ; $6e06: $18 $ff

    add hl, de                                    ; $6e08: $19
    ld a, [de]                                    ; $6e09: $1a
    dec de                                        ; $6e0a: $1b
    inc de                                        ; $6e0b: $13
    halt                                          ; $6e0c: $76
    ld [hl], d                                    ; $6e0d: $72
    ld l, a                                       ; $6e0e: $6f
    ld [hl], e                                    ; $6e0f: $73
    rst $38                                       ; $6e10: $ff
    inc hl                                        ; $6e11: $23
    jr z, jr_077_6e3d                             ; $6e12: $28 $29

    ld a, [hl+]                                   ; $6e14: $2a
    dec hl                                        ; $6e15: $2b
    ld d, e                                       ; $6e16: $53
    ld [hl], l                                    ; $6e17: $75
    ld [hl], c                                    ; $6e18: $71
    sbc $e2                                       ; $6e19: $de $e2
    ldh [$37], a                                  ; $6e1b: $e0 $37
    jr c, @+$3b                                   ; $6e1d: $38 $39

    ld a, [hl-]                                   ; $6e1f: $3a
    ld [c], a                                     ; $6e20: $e2
    db $e3                                        ; $6e21: $e3
    ld b, a                                       ; $6e22: $47
    ld c, b                                       ; $6e23: $48
    ld a, e                                       ; $6e24: $7b
    ld c, c                                       ; $6e25: $49
    ld c, d                                       ; $6e26: $4a
    ld [c], a                                     ; $6e27: $e2
    db $e3                                        ; $6e28: $e3
    ld d, a                                       ; $6e29: $57
    ld e, b                                       ; $6e2a: $58
    ld e, c                                       ; $6e2b: $59
    rra                                           ; $6e2c: $1f
    ld [c], a                                     ; $6e2d: $e2
    ldh [rIE], a                                  ; $6e2e: $e0 $ff
    ld l, d                                       ; $6e30: $6a
    ld l, e                                       ; $6e31: $6b
    ld l, c                                       ; $6e32: $69
    ld h, [hl]                                    ; $6e33: $66
    ld h, a                                       ; $6e34: $67
    ld l, b                                       ; $6e35: $68
    ld l, c                                       ; $6e36: $69
    ld l, [hl]                                    ; $6e37: $6e
    inc bc                                        ; $6e38: $03
    ld l, e                                       ; $6e39: $6b
    ld l, d                                       ; $6e3a: $6a
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00

jr_077_6e3d:
    nop                                           ; $6e3d: $00

    push bc                                       ; $6e3e: $c5
    ld hl, $6f86                                  ; $6e3f: $21 $86 $6f
    ld a, b                                       ; $6e42: $78
    add l                                         ; $6e43: $85
    ld l, a                                       ; $6e44: $6f
    jr nc, jr_077_6e48                            ; $6e45: $30 $01

    inc h                                         ; $6e47: $24

jr_077_6e48:
    ld b, [hl]                                    ; $6e48: $46
    ld a, c                                       ; $6e49: $79
    and $0f                                       ; $6e4a: $e6 $0f
    cp $0b                                        ; $6e4c: $fe $0b
    jr c, jr_077_6e68                             ; $6e4e: $38 $18

    push af                                       ; $6e50: $f5
    ld a, $06                                     ; $6e51: $3e $06
    ldh [$96], a                                  ; $6e53: $e0 $96
    ldh [rSVBK], a                                ; $6e55: $e0 $70
    ld a, $ff                                     ; $6e57: $3e $ff
    ld [$d444], a                                 ; $6e59: $ea $44 $d4
    pop af                                        ; $6e5c: $f1
    ld a, $01                                     ; $6e5d: $3e $01
    ld hl, $70b6                                  ; $6e5f: $21 $b6 $70
    call Call_000_23e8                            ; $6e62: $cd $e8 $23
    jp Jump_077_6f7c                              ; $6e65: $c3 $7c $6f


jr_077_6e68:
    push bc                                       ; $6e68: $c5
    ld a, $06                                     ; $6e69: $3e $06
    ldh [$96], a                                  ; $6e6b: $e0 $96
    ldh [rSVBK], a                                ; $6e6d: $e0 $70
    ld a, b                                       ; $6e6f: $78
    ld [$d34c], a                                 ; $6e70: $ea $4c $d3
    ld a, c                                       ; $6e73: $79
    and $0f                                       ; $6e74: $e6 $0f
    ld [$d34b], a                                 ; $6e76: $ea $4b $d3
    ld l, a                                       ; $6e79: $6f
    ld a, $01                                     ; $6e7a: $3e $01
    ldh [$96], a                                  ; $6e7c: $e0 $96
    ldh [rSVBK], a                                ; $6e7e: $e0 $70
    ld a, c                                       ; $6e80: $79
    and $0f                                       ; $6e81: $e6 $0f
    sla a                                         ; $6e83: $cb $27
    ld hl, $7346                                  ; $6e85: $21 $46 $73
    add l                                         ; $6e88: $85
    ld l, a                                       ; $6e89: $6f
    jr nc, jr_077_6e8d                            ; $6e8a: $30 $01

    inc h                                         ; $6e8c: $24

jr_077_6e8d:
    ld a, [hl+]                                   ; $6e8d: $2a
    ld h, [hl]                                    ; $6e8e: $66
    ld l, a                                       ; $6e8f: $6f
    ld de, $d000                                  ; $6e90: $11 $00 $d0
    ld a, b                                       ; $6e93: $78
    call Call_000_069a                            ; $6e94: $cd $9a $06
    call Call_000_2e3b                            ; $6e97: $cd $3b $2e
    ld hl, $d000                                  ; $6e9a: $21 $00 $d0
    ld de, $9200                                  ; $6e9d: $11 $00 $92
    ld c, $20                                     ; $6ea0: $0e $20
    call Call_000_0468                            ; $6ea2: $cd $68 $04
    call Call_000_2e3b                            ; $6ea5: $cd $3b $2e
    ld hl, $d200                                  ; $6ea8: $21 $00 $d2
    ld de, $9400                                  ; $6eab: $11 $00 $94
    ld c, $20                                     ; $6eae: $0e $20
    call Call_000_0468                            ; $6eb0: $cd $68 $04
    call Call_000_2e3b                            ; $6eb3: $cd $3b $2e
    ld hl, $d400                                  ; $6eb6: $21 $00 $d4
    ld de, $9600                                  ; $6eb9: $11 $00 $96
    ld c, $20                                     ; $6ebc: $0e $20
    call Call_000_0468                            ; $6ebe: $cd $68 $04
    call Call_000_2e3b                            ; $6ec1: $cd $3b $2e
    ld hl, $d600                                  ; $6ec4: $21 $00 $d6
    ld de, $8800                                  ; $6ec7: $11 $00 $88
    ld c, $20                                     ; $6eca: $0e $20
    call Call_000_0468                            ; $6ecc: $cd $68 $04
    call Call_000_2e3b                            ; $6ecf: $cd $3b $2e
    ld hl, $d800                                  ; $6ed2: $21 $00 $d8
    ld de, $8a00                                  ; $6ed5: $11 $00 $8a
    ld c, $20                                     ; $6ed8: $0e $20
    call Call_000_0468                            ; $6eda: $cd $68 $04
    call Call_000_2e3b                            ; $6edd: $cd $3b $2e
    ld hl, $da00                                  ; $6ee0: $21 $00 $da
    ld de, $8c00                                  ; $6ee3: $11 $00 $8c
    ld c, $20                                     ; $6ee6: $0e $20
    call Call_000_0468                            ; $6ee8: $cd $68 $04
    call Call_000_2e3b                            ; $6eeb: $cd $3b $2e
    ld a, $06                                     ; $6eee: $3e $06
    ldh [$96], a                                  ; $6ef0: $e0 $96
    ldh [rSVBK], a                                ; $6ef2: $e0 $70
    ld a, $ff                                     ; $6ef4: $3e $ff
    ld [$d444], a                                 ; $6ef6: $ea $44 $d4
    pop bc                                        ; $6ef9: $c1
    ld a, c                                       ; $6efa: $79
    and $0f                                       ; $6efb: $e6 $0f
    ld h, $00                                     ; $6efd: $26 $00
    ld l, a                                       ; $6eff: $6f
    add hl, hl                                    ; $6f00: $29
    add hl, hl                                    ; $6f01: $29
    add hl, hl                                    ; $6f02: $29
    ld d, h                                       ; $6f03: $54
    ld e, l                                       ; $6f04: $5d
    add hl, hl                                    ; $6f05: $29
    add hl, hl                                    ; $6f06: $29
    add hl, de                                    ; $6f07: $19
    ld d, h                                       ; $6f08: $54
    ld e, l                                       ; $6f09: $5d
    ld h, $00                                     ; $6f0a: $26 $00
    ld a, b                                       ; $6f0c: $78
    ld l, a                                       ; $6f0d: $6f
    add hl, hl                                    ; $6f0e: $29
    add hl, hl                                    ; $6f0f: $29
    add hl, hl                                    ; $6f10: $29
    add hl, de                                    ; $6f11: $19
    bit 4, c                                      ; $6f12: $cb $61
    jr nz, jr_077_6f1b                            ; $6f14: $20 $05

    ld de, $7376                                  ; $6f16: $11 $76 $73
    jr jr_077_6f1e                                ; $6f19: $18 $03

jr_077_6f1b:
    ld de, $752e                                  ; $6f1b: $11 $2e $75

jr_077_6f1e:
    add hl, de                                    ; $6f1e: $19
    push hl                                       ; $6f1f: $e5
    ld a, $06                                     ; $6f20: $3e $06
    ldh [$96], a                                  ; $6f22: $e0 $96
    ldh [rSVBK], a                                ; $6f24: $e0 $70
    ld a, [$d34b]                                 ; $6f26: $fa $4b $d3
    ld h, $00                                     ; $6f29: $26 $00
    ld l, a                                       ; $6f2b: $6f
    add hl, hl                                    ; $6f2c: $29
    add hl, hl                                    ; $6f2d: $29
    add hl, hl                                    ; $6f2e: $29
    add hl, hl                                    ; $6f2f: $29
    ld de, $76e6                                  ; $6f30: $11 $e6 $76
    add hl, de                                    ; $6f33: $19
    ld d, h                                       ; $6f34: $54
    ld e, l                                       ; $6f35: $5d
    ld a, [$d34c]                                 ; $6f36: $fa $4c $d3
    ld h, $00                                     ; $6f39: $26 $00
    ld l, a                                       ; $6f3b: $6f
    add hl, hl                                    ; $6f3c: $29
    add hl, de                                    ; $6f3d: $19
    ld a, [hl+]                                   ; $6f3e: $2a
    ld h, [hl]                                    ; $6f3f: $66
    ld l, a                                       ; $6f40: $6f
    ld a, l                                       ; $6f41: $7d
    ld [$d347], a                                 ; $6f42: $ea $47 $d3
    ld [$d349], a                                 ; $6f45: $ea $49 $d3
    ld a, h                                       ; $6f48: $7c
    ld [$d348], a                                 ; $6f49: $ea $48 $d3
    ld [$d34a], a                                 ; $6f4c: $ea $4a $d3
    call Call_000_2e3b                            ; $6f4f: $cd $3b $2e
    xor a                                         ; $6f52: $af
    ld [$d346], a                                 ; $6f53: $ea $46 $d3
    ld a, $01                                     ; $6f56: $3e $01
    ld hl, $7033                                  ; $6f58: $21 $33 $70
    call Call_000_23e8                            ; $6f5b: $cd $e8 $23
    pop hl                                        ; $6f5e: $e1
    ld de, $0601                                  ; $6f5f: $11 $01 $06
    call Call_000_056c                            ; $6f62: $cd $6c $05
    ld a, [$d34c]                                 ; $6f65: $fa $4c $d3
    cp $01                                        ; $6f68: $fe $01
    jr c, jr_077_6f7c                             ; $6f6a: $38 $10

    cp $05                                        ; $6f6c: $fe $05
    jr nc, jr_077_6f7c                            ; $6f6e: $30 $0c

    xor a                                         ; $6f70: $af
    ld [$c3f4], a                                 ; $6f71: $ea $f4 $c3
    ld a, $01                                     ; $6f74: $3e $01
    ld hl, $6f8e                                  ; $6f76: $21 $8e $6f
    call Call_000_23e8                            ; $6f79: $cd $e8 $23

Jump_077_6f7c:
jr_077_6f7c:
    pop bc                                        ; $6f7c: $c1
    ld a, b                                       ; $6f7d: $78
    rst $18                                       ; $6f7e: $df

    db $02, $4a

    call Call_000_2ed5                            ; $6f81: $cd $d5 $2e

    db $0a

    ret                                           ; $6f85: $c9


    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    db $01                                        ; $6f88: $01
    ld [bc], a                                    ; $6f89: $02

    db $03, $04

    inc b                                         ; $6f8c: $04
    inc b                                         ; $6f8d: $04

    ld a, [$c3f4]                                 ; $6f8e: $fa $f4 $c3
    cp $27                                        ; $6f91: $fe $27
    jr c, jr_077_6f99                             ; $6f93: $38 $04

    xor a                                         ; $6f95: $af
    ld [$c3f4], a                                 ; $6f96: $ea $f4 $c3

jr_077_6f99:
    sla a                                         ; $6f99: $cb $27
    ld hl, $6fd5                                  ; $6f9b: $21 $d5 $6f
    ld e, a                                       ; $6f9e: $5f
    ld d, $00                                     ; $6f9f: $16 $00
    add hl, de                                    ; $6fa1: $19
    ld d, $06                                     ; $6fa2: $16 $06
    ld e, $00                                     ; $6fa4: $1e $00
    call Call_077_6fae                            ; $6fa6: $cd $ae $6f
    ld hl, $c3f4                                  ; $6fa9: $21 $f4 $c3
    inc [hl]                                      ; $6fac: $34
    ret                                           ; $6fad: $c9


Call_077_6fae:
    push de                                       ; $6fae: $d5
    ld c, $02                                     ; $6faf: $0e $02
    ld a, d                                       ; $6fb1: $7a
    add a                                         ; $6fb2: $87
    add a                                         ; $6fb3: $87
    add e                                         ; $6fb4: $83
    add a                                         ; $6fb5: $87
    ld e, a                                       ; $6fb6: $5f
    ld d, $c1                                     ; $6fb7: $16 $c1

jr_077_6fb9:
    ld a, [hl+]                                   ; $6fb9: $2a
    ld [de], a                                    ; $6fba: $12
    inc d                                         ; $6fbb: $14
    ld [de], a                                    ; $6fbc: $12
    dec d                                         ; $6fbd: $15
    inc e                                         ; $6fbe: $1c
    dec c                                         ; $6fbf: $0d
    jr nz, jr_077_6fb9                            ; $6fc0: $20 $f7

    ld hl, $ff9d                                  ; $6fc2: $21 $9d $ff
    pop de                                        ; $6fc5: $d1
    bit 3, d                                      ; $6fc6: $cb $5a
    jr nz, jr_077_6fcc                            ; $6fc8: $20 $02

    set 0, [hl]                                   ; $6fca: $cb $c6

jr_077_6fcc:
    ld a, e                                       ; $6fcc: $7b
    add d                                         ; $6fcd: $82
    cp $09                                        ; $6fce: $fe $09
    jr c, jr_077_6fd4                             ; $6fd0: $38 $02

    set 1, [hl]                                   ; $6fd2: $cb $ce

jr_077_6fd4:
    ret                                           ; $6fd4: $c9


    db $20, $7e, $40, $72, $60, $66, $81, $5a, $a4, $4e, $c7, $42, $ea, $36, $0d, $2b
    db $30, $1f, $53, $13, $76, $07, $b9, $03, $dc, $03, $ff, $03, $bf, $03, $7f, $03
    db $3f, $0b, $df, $12, $bf, $1a, $7f, $22, $3f, $2a, $ff, $31, $bf, $39, $7f, $41
    db $3f, $49, $ff, $50, $bf, $58, $bc, $5c, $d9, $60, $f6, $64, $13, $69, $30, $6d
    db $4d, $71, $6a, $75, $87, $79, $a4, $7d, $c1, $7d, $e0, $7d, $00, $7e

    jr nz, @+$80                                  ; $7023: $20 $7e

    ld b, b                                       ; $7025: $40
    ld [hl], d                                    ; $7026: $72
    ld h, b                                       ; $7027: $60
    ld h, [hl]                                    ; $7028: $66
    add c                                         ; $7029: $81
    ld e, d                                       ; $702a: $5a
    and h                                         ; $702b: $a4
    ld c, [hl]                                    ; $702c: $4e
    rst $00                                       ; $702d: $c7
    ld b, d                                       ; $702e: $42
    ld [$0d36], a                                 ; $702f: $ea $36 $0d
    dec hl                                        ; $7032: $2b

    call Call_000_068a                            ; $7033: $cd $8a $06
    ld a, $06                                     ; $7036: $3e $06
    ldh [$96], a                                  ; $7038: $e0 $96
    ldh [rSVBK], a                                ; $703a: $e0 $70
    ld a, [$d34d]                                 ; $703c: $fa $4d $d3
    cp $ff                                        ; $703f: $fe $ff
    jr z, jr_077_7053                             ; $7041: $28 $10

    or a                                          ; $7043: $b7
    jr nz, jr_077_7053                            ; $7044: $20 $0d

    ld hl, $7033                                  ; $7046: $21 $33 $70
    call Call_000_2449                            ; $7049: $cd $49 $24
    ld hl, $6f8e                                  ; $704c: $21 $8e $6f
    call Call_000_2449                            ; $704f: $cd $49 $24
    ret                                           ; $7052: $c9


jr_077_7053:
    ld hl, $d346                                  ; $7053: $21 $46 $d3
    ld a, [hl]                                    ; $7056: $7e
    or a                                          ; $7057: $b7
    jr nz, jr_077_70a0                            ; $7058: $20 $46

    ld hl, $d347                                  ; $705a: $21 $47 $d3
    ld a, [hl+]                                   ; $705d: $2a
    ld h, [hl]                                    ; $705e: $66
    ld l, a                                       ; $705f: $6f
    ld a, [hl+]                                   ; $7060: $2a
    cp $ff                                        ; $7061: $fe $ff
    jr nz, jr_077_7077                            ; $7063: $20 $12

    xor a                                         ; $7065: $af
    ld [$d34d], a                                 ; $7066: $ea $4d $d3
    ld hl, $7033                                  ; $7069: $21 $33 $70
    call Call_000_2449                            ; $706c: $cd $49 $24
    ld hl, $6f8e                                  ; $706f: $21 $8e $6f
    call Call_000_2449                            ; $7072: $cd $49 $24
    jr jr_077_70a0                                ; $7075: $18 $29

jr_077_7077:
    cp $fe                                        ; $7077: $fe $fe
    jr nz, jr_077_7089                            ; $7079: $20 $0e

    ld b, [hl]                                    ; $707b: $46
    ld hl, $d349                                  ; $707c: $21 $49 $d3
    ld a, [hl+]                                   ; $707f: $2a
    ld h, [hl]                                    ; $7080: $66
    ld l, a                                       ; $7081: $6f
    ld a, b                                       ; $7082: $78
    add l                                         ; $7083: $85
    ld l, a                                       ; $7084: $6f
    jr nc, jr_077_7088                            ; $7085: $30 $01

    inc h                                         ; $7087: $24

jr_077_7088:
    ld a, [hl+]                                   ; $7088: $2a

jr_077_7089:
    ld b, a                                       ; $7089: $47
    ld a, [hl+]                                   ; $708a: $2a
    ld [$d346], a                                 ; $708b: $ea $46 $d3
    ld a, [$d34b]                                 ; $708e: $fa $4b $d3
    ld c, a                                       ; $7091: $4f
    ld a, l                                       ; $7092: $7d
    ld [$d347], a                                 ; $7093: $ea $47 $d3
    ld a, h                                       ; $7096: $7c
    ld [$d348], a                                 ; $7097: $ea $48 $d3
    call Call_077_70d0                            ; $709a: $cd $d0 $70
    call Call_000_0684                            ; $709d: $cd $84 $06

jr_077_70a0:
    ld a, $06                                     ; $70a0: $3e $06
    ldh [$96], a                                  ; $70a2: $e0 $96
    ldh [rSVBK], a                                ; $70a4: $e0 $70
    ld hl, $d346                                  ; $70a6: $21 $46 $d3
    dec [hl]                                      ; $70a9: $35
    ld a, [$d34d]                                 ; $70aa: $fa $4d $d3
    cp $ff                                        ; $70ad: $fe $ff
    jr z, jr_077_70b5                             ; $70af: $28 $04

    dec a                                         ; $70b1: $3d
    ld [$d34d], a                                 ; $70b2: $ea $4d $d3

jr_077_70b5:
    ret                                           ; $70b5: $c9


    ld a, $06                                     ; $70b6: $3e $06
    ldh [$96], a                                  ; $70b8: $e0 $96
    ldh [rSVBK], a                                ; $70ba: $e0 $70
    ld a, [$d34d]                                 ; $70bc: $fa $4d $d3
    dec a                                         ; $70bf: $3d
    ld [$d34d], a                                 ; $70c0: $ea $4d $d3
    or a                                          ; $70c3: $b7
    ret nz                                        ; $70c4: $c0

    xor a                                         ; $70c5: $af
    ld [$d34d], a                                 ; $70c6: $ea $4d $d3
    ld hl, $70b6                                  ; $70c9: $21 $b6 $70
    call Call_000_2449                            ; $70cc: $cd $49 $24
    ret                                           ; $70cf: $c9


Call_077_70d0:
    ld a, $06                                     ; $70d0: $3e $06
    ldh [$96], a                                  ; $70d2: $e0 $96
    ldh [rSVBK], a                                ; $70d4: $e0 $70
    ld a, $ff                                     ; $70d6: $3e $ff
    ld [$d444], a                                 ; $70d8: $ea $44 $d4
    ld a, [$d34c]                                 ; $70db: $fa $4c $d3
    push af                                       ; $70de: $f5
    ld a, $01                                     ; $70df: $3e $01
    ldh [$96], a                                  ; $70e1: $e0 $96
    ldh [rSVBK], a                                ; $70e3: $e0 $70
    ld a, c                                       ; $70e5: $79
    sla a                                         ; $70e6: $cb $27
    ld hl, $735e                                  ; $70e8: $21 $5e $73
    add l                                         ; $70eb: $85
    ld l, a                                       ; $70ec: $6f
    jr nc, jr_077_70f0                            ; $70ed: $30 $01

    inc h                                         ; $70ef: $24

jr_077_70f0:
    ld a, [hl+]                                   ; $70f0: $2a
    ld h, [hl]                                    ; $70f1: $66
    ld l, a                                       ; $70f2: $6f
    pop af                                        ; $70f3: $f1
    sla a                                         ; $70f4: $cb $27
    sla a                                         ; $70f6: $cb $27
    sla a                                         ; $70f8: $cb $27
    add b                                         ; $70fa: $80
    ld de, $d000                                  ; $70fb: $11 $00 $d0
    call Call_000_069a                            ; $70fe: $cd $9a $06
    ld de, $d000                                  ; $7101: $11 $00 $d0
    ld hl, $ffb0                                  ; $7104: $21 $b0 $ff
    ld a, e                                       ; $7107: $7b
    ld [hl+], a                                   ; $7108: $22
    ld a, d                                       ; $7109: $7a
    ld [hl], a                                    ; $710a: $77
    ld de, $c600                                  ; $710b: $11 $00 $c6
    ld b, $02                                     ; $710e: $06 $02
    ld hl, $d100                                  ; $7110: $21 $00 $d1
    ld c, $08                                     ; $7113: $0e $08

Jump_077_7115:
    push bc                                       ; $7115: $c5
    ld a, $02                                     ; $7116: $3e $02
    ldh [$96], a                                  ; $7118: $e0 $96
    ldh [rSVBK], a                                ; $711a: $e0 $70
    ld a, [hl+]                                   ; $711c: $2a
    ld [de], a                                    ; $711d: $12
    inc de                                        ; $711e: $13
    ld a, [hl+]                                   ; $711f: $2a
    ld [de], a                                    ; $7120: $12
    inc de                                        ; $7121: $13
    ld a, [hl+]                                   ; $7122: $2a
    ld [de], a                                    ; $7123: $12
    inc de                                        ; $7124: $13
    ld a, [hl+]                                   ; $7125: $2a
    ld [de], a                                    ; $7126: $12
    inc de                                        ; $7127: $13
    ld a, [hl+]                                   ; $7128: $2a
    ld [de], a                                    ; $7129: $12
    inc de                                        ; $712a: $13
    ld bc, $000a                                  ; $712b: $01 $0a $00
    add hl, bc                                    ; $712e: $09
    push hl                                       ; $712f: $e5
    ld a, $01                                     ; $7130: $3e $01
    ldh [$96], a                                  ; $7132: $e0 $96
    ldh [rSVBK], a                                ; $7134: $e0 $70
    ld hl, $ffb0                                  ; $7136: $21 $b0 $ff
    ld a, [hl+]                                   ; $7139: $2a
    ld h, [hl]                                    ; $713a: $66
    ld l, a                                       ; $713b: $6f
    ld a, [hl+]                                   ; $713c: $2a
    and $f0                                       ; $713d: $e6 $f0
    or $06                                        ; $713f: $f6 $06
    ld [de], a                                    ; $7141: $12
    inc de                                        ; $7142: $13
    ld a, [hl+]                                   ; $7143: $2a
    and $f0                                       ; $7144: $e6 $f0
    or $06                                        ; $7146: $f6 $06
    ld [de], a                                    ; $7148: $12
    inc de                                        ; $7149: $13
    ld a, [hl+]                                   ; $714a: $2a
    and $f0                                       ; $714b: $e6 $f0
    or $06                                        ; $714d: $f6 $06
    ld [de], a                                    ; $714f: $12
    inc de                                        ; $7150: $13
    ld a, [hl+]                                   ; $7151: $2a
    and $f0                                       ; $7152: $e6 $f0
    or $06                                        ; $7154: $f6 $06
    ld [de], a                                    ; $7156: $12
    inc de                                        ; $7157: $13
    ld a, [hl+]                                   ; $7158: $2a
    and $f0                                       ; $7159: $e6 $f0
    or $06                                        ; $715b: $f6 $06
    ld [de], a                                    ; $715d: $12
    inc de                                        ; $715e: $13
    ld a, [hl+]                                   ; $715f: $2a
    and $f0                                       ; $7160: $e6 $f0
    or $06                                        ; $7162: $f6 $06
    ld [de], a                                    ; $7164: $12
    inc de                                        ; $7165: $13
    ld a, [hl+]                                   ; $7166: $2a
    and $f0                                       ; $7167: $e6 $f0
    or $06                                        ; $7169: $f6 $06
    ld [de], a                                    ; $716b: $12
    inc de                                        ; $716c: $13
    ld a, [hl+]                                   ; $716d: $2a
    and $f0                                       ; $716e: $e6 $f0
    or $06                                        ; $7170: $f6 $06
    ld [de], a                                    ; $7172: $12
    inc de                                        ; $7173: $13
    ld a, [hl+]                                   ; $7174: $2a
    and $f0                                       ; $7175: $e6 $f0
    or $06                                        ; $7177: $f6 $06
    ld [de], a                                    ; $7179: $12
    inc de                                        ; $717a: $13
    ld a, [hl+]                                   ; $717b: $2a
    and $f0                                       ; $717c: $e6 $f0
    or $06                                        ; $717e: $f6 $06
    ld [de], a                                    ; $7180: $12
    inc de                                        ; $7181: $13
    ld a, l                                       ; $7182: $7d
    ldh [$b0], a                                  ; $7183: $e0 $b0
    ld a, h                                       ; $7185: $7c
    ldh [$b1], a                                  ; $7186: $e0 $b1
    pop hl                                        ; $7188: $e1
    ld a, $02                                     ; $7189: $3e $02
    ldh [$96], a                                  ; $718b: $e0 $96
    ldh [rSVBK], a                                ; $718d: $e0 $70
    ld a, [hl+]                                   ; $718f: $2a
    ld [de], a                                    ; $7190: $12
    inc de                                        ; $7191: $13
    ld a, [hl+]                                   ; $7192: $2a
    ld [de], a                                    ; $7193: $12
    inc de                                        ; $7194: $13
    ld a, [hl+]                                   ; $7195: $2a
    ld [de], a                                    ; $7196: $12
    inc de                                        ; $7197: $13
    ld a, [hl+]                                   ; $7198: $2a
    ld [de], a                                    ; $7199: $12
    inc de                                        ; $719a: $13
    ld a, [hl+]                                   ; $719b: $2a
    ld [de], a                                    ; $719c: $12
    inc de                                        ; $719d: $13
    ld bc, $002c                                  ; $719e: $01 $2c $00
    add hl, bc                                    ; $71a1: $09
    ld a, $0c                                     ; $71a2: $3e $0c
    add e                                         ; $71a4: $83
    ld e, a                                       ; $71a5: $5f
    ld a, d                                       ; $71a6: $7a
    adc $00                                       ; $71a7: $ce $00
    ld d, a                                       ; $71a9: $57
    pop bc                                        ; $71aa: $c1
    dec c                                         ; $71ab: $0d
    jp nz, Jump_077_7115                          ; $71ac: $c2 $15 $71

    dec b                                         ; $71af: $05
    ld hl, $d100                                  ; $71b0: $21 $00 $d1
    ld c, $08                                     ; $71b3: $0e $08

Jump_077_71b5:
    push bc                                       ; $71b5: $c5
    ld a, $03                                     ; $71b6: $3e $03
    ldh [$96], a                                  ; $71b8: $e0 $96
    ldh [rSVBK], a                                ; $71ba: $e0 $70
    ld a, [hl+]                                   ; $71bc: $2a
    ld [de], a                                    ; $71bd: $12
    inc de                                        ; $71be: $13
    ld a, [hl+]                                   ; $71bf: $2a
    ld [de], a                                    ; $71c0: $12
    inc de                                        ; $71c1: $13
    ld a, [hl+]                                   ; $71c2: $2a
    ld [de], a                                    ; $71c3: $12
    inc de                                        ; $71c4: $13
    ld a, [hl+]                                   ; $71c5: $2a
    ld [de], a                                    ; $71c6: $12
    inc de                                        ; $71c7: $13
    ld a, [hl+]                                   ; $71c8: $2a
    ld [de], a                                    ; $71c9: $12
    inc de                                        ; $71ca: $13
    ld bc, $000a                                  ; $71cb: $01 $0a $00
    add hl, bc                                    ; $71ce: $09
    push hl                                       ; $71cf: $e5
    ld a, $01                                     ; $71d0: $3e $01
    ldh [$96], a                                  ; $71d2: $e0 $96
    ldh [rSVBK], a                                ; $71d4: $e0 $70
    ld hl, $ffb0                                  ; $71d6: $21 $b0 $ff
    ld a, [hl+]                                   ; $71d9: $2a
    ld h, [hl]                                    ; $71da: $66
    ld l, a                                       ; $71db: $6f
    ld a, [hl+]                                   ; $71dc: $2a
    add $20                                       ; $71dd: $c6 $20
    ld [de], a                                    ; $71df: $12
    inc de                                        ; $71e0: $13
    ld a, [hl+]                                   ; $71e1: $2a
    add $20                                       ; $71e2: $c6 $20
    ld [de], a                                    ; $71e4: $12
    inc de                                        ; $71e5: $13
    ld a, [hl+]                                   ; $71e6: $2a
    add $20                                       ; $71e7: $c6 $20
    ld [de], a                                    ; $71e9: $12
    inc de                                        ; $71ea: $13
    ld a, [hl+]                                   ; $71eb: $2a
    add $20                                       ; $71ec: $c6 $20
    ld [de], a                                    ; $71ee: $12
    inc de                                        ; $71ef: $13
    ld a, [hl+]                                   ; $71f0: $2a
    add $20                                       ; $71f1: $c6 $20
    ld [de], a                                    ; $71f3: $12
    inc de                                        ; $71f4: $13
    ld a, [hl+]                                   ; $71f5: $2a
    add $20                                       ; $71f6: $c6 $20
    ld [de], a                                    ; $71f8: $12
    inc de                                        ; $71f9: $13
    ld a, [hl+]                                   ; $71fa: $2a
    add $20                                       ; $71fb: $c6 $20
    ld [de], a                                    ; $71fd: $12
    inc de                                        ; $71fe: $13
    ld a, [hl+]                                   ; $71ff: $2a
    add $20                                       ; $7200: $c6 $20
    ld [de], a                                    ; $7202: $12
    inc de                                        ; $7203: $13
    ld a, [hl+]                                   ; $7204: $2a
    add $20                                       ; $7205: $c6 $20
    ld [de], a                                    ; $7207: $12
    inc de                                        ; $7208: $13
    ld a, [hl+]                                   ; $7209: $2a
    add $20                                       ; $720a: $c6 $20
    ld [de], a                                    ; $720c: $12
    inc de                                        ; $720d: $13
    ld a, l                                       ; $720e: $7d
    ldh [$b0], a                                  ; $720f: $e0 $b0
    ld a, h                                       ; $7211: $7c
    ldh [$b1], a                                  ; $7212: $e0 $b1
    pop hl                                        ; $7214: $e1
    ld a, $03                                     ; $7215: $3e $03
    ldh [$96], a                                  ; $7217: $e0 $96
    ldh [rSVBK], a                                ; $7219: $e0 $70
    ld a, [hl+]                                   ; $721b: $2a
    ld [de], a                                    ; $721c: $12
    inc de                                        ; $721d: $13
    ld a, [hl+]                                   ; $721e: $2a
    ld [de], a                                    ; $721f: $12
    inc de                                        ; $7220: $13
    ld a, [hl+]                                   ; $7221: $2a
    ld [de], a                                    ; $7222: $12
    inc de                                        ; $7223: $13
    ld a, [hl+]                                   ; $7224: $2a
    ld [de], a                                    ; $7225: $12
    inc de                                        ; $7226: $13
    ld a, [hl+]                                   ; $7227: $2a
    ld [de], a                                    ; $7228: $12
    inc de                                        ; $7229: $13
    ld bc, $002c                                  ; $722a: $01 $2c $00
    add hl, bc                                    ; $722d: $09
    ld a, $0c                                     ; $722e: $3e $0c
    add e                                         ; $7230: $83
    ld e, a                                       ; $7231: $5f
    ld a, d                                       ; $7232: $7a
    adc $00                                       ; $7233: $ce $00
    ld d, a                                       ; $7235: $57
    pop bc                                        ; $7236: $c1
    dec c                                         ; $7237: $0d
    jp nz, Jump_077_71b5                          ; $7238: $c2 $b5 $71

    ld hl, $c600                                  ; $723b: $21 $00 $c6
    ld de, $b880                                  ; $723e: $11 $80 $b8
    ld c, $10                                     ; $7241: $0e $10
    call Call_000_0468                            ; $7243: $cd $68 $04
    ld hl, $c700                                  ; $7246: $21 $00 $c7
    ld de, $9880                                  ; $7249: $11 $80 $98
    ld c, $10                                     ; $724c: $0e $10
    call Call_000_0468                            ; $724e: $cd $68 $04
    call Call_000_0460                            ; $7251: $cd $60 $04
    ret                                           ; $7254: $c9


    ret                                           ; $7255: $c9


    ldh a, [$96]                                  ; $7256: $f0 $96
    push af                                       ; $7258: $f5
    ld a, $06                                     ; $7259: $3e $06
    ldh [$96], a                                  ; $725b: $e0 $96
    ldh [rSVBK], a                                ; $725d: $e0 $70
    ld a, $ff                                     ; $725f: $3e $ff
    ld [$d444], a                                 ; $7261: $ea $44 $d4
    ld a, $02                                     ; $7264: $3e $02
    ldh [$96], a                                  ; $7266: $e0 $96
    ldh [rSVBK], a                                ; $7268: $e0 $70
    ld de, $c600                                  ; $726a: $11 $00 $c6
    ld hl, $d100                                  ; $726d: $21 $00 $d1
    ld c, $08                                     ; $7270: $0e $08

jr_077_7272:
    push bc                                       ; $7272: $c5
    ld a, [hl+]                                   ; $7273: $2a
    ld [de], a                                    ; $7274: $12
    inc de                                        ; $7275: $13
    ld a, [hl+]                                   ; $7276: $2a
    ld [de], a                                    ; $7277: $12
    inc de                                        ; $7278: $13
    ld a, [hl+]                                   ; $7279: $2a
    ld [de], a                                    ; $727a: $12
    inc de                                        ; $727b: $13
    ld a, [hl+]                                   ; $727c: $2a
    ld [de], a                                    ; $727d: $12
    inc de                                        ; $727e: $13
    ld a, [hl+]                                   ; $727f: $2a
    ld [de], a                                    ; $7280: $12
    inc de                                        ; $7281: $13
    ld a, [hl+]                                   ; $7282: $2a
    ld [de], a                                    ; $7283: $12
    inc de                                        ; $7284: $13
    ld a, [hl+]                                   ; $7285: $2a
    ld [de], a                                    ; $7286: $12
    inc de                                        ; $7287: $13
    ld a, [hl+]                                   ; $7288: $2a
    ld [de], a                                    ; $7289: $12
    inc de                                        ; $728a: $13
    ld a, [hl+]                                   ; $728b: $2a
    ld [de], a                                    ; $728c: $12
    inc de                                        ; $728d: $13
    ld a, [hl+]                                   ; $728e: $2a
    ld [de], a                                    ; $728f: $12
    inc de                                        ; $7290: $13
    ld a, [hl+]                                   ; $7291: $2a
    ld [de], a                                    ; $7292: $12
    inc de                                        ; $7293: $13
    ld a, [hl+]                                   ; $7294: $2a
    ld [de], a                                    ; $7295: $12
    inc de                                        ; $7296: $13
    ld a, [hl+]                                   ; $7297: $2a
    ld [de], a                                    ; $7298: $12
    inc de                                        ; $7299: $13
    ld a, [hl+]                                   ; $729a: $2a
    ld [de], a                                    ; $729b: $12
    inc de                                        ; $729c: $13
    ld a, [hl+]                                   ; $729d: $2a
    ld [de], a                                    ; $729e: $12
    inc de                                        ; $729f: $13
    ld a, [hl+]                                   ; $72a0: $2a
    ld [de], a                                    ; $72a1: $12
    inc de                                        ; $72a2: $13
    ld a, [hl+]                                   ; $72a3: $2a
    ld [de], a                                    ; $72a4: $12
    inc de                                        ; $72a5: $13
    ld a, [hl+]                                   ; $72a6: $2a
    ld [de], a                                    ; $72a7: $12
    inc de                                        ; $72a8: $13
    ld a, [hl+]                                   ; $72a9: $2a
    ld [de], a                                    ; $72aa: $12
    inc de                                        ; $72ab: $13
    ld a, [hl+]                                   ; $72ac: $2a
    ld [de], a                                    ; $72ad: $12
    inc de                                        ; $72ae: $13
    ld bc, $002c                                  ; $72af: $01 $2c $00
    add hl, bc                                    ; $72b2: $09
    ld a, $0c                                     ; $72b3: $3e $0c
    add e                                         ; $72b5: $83
    ld e, a                                       ; $72b6: $5f
    ld a, d                                       ; $72b7: $7a
    adc $00                                       ; $72b8: $ce $00
    ld d, a                                       ; $72ba: $57
    pop bc                                        ; $72bb: $c1
    dec c                                         ; $72bc: $0d
    jr nz, jr_077_7272                            ; $72bd: $20 $b3

    ld a, $03                                     ; $72bf: $3e $03
    ldh [$96], a                                  ; $72c1: $e0 $96
    ldh [rSVBK], a                                ; $72c3: $e0 $70
    ld hl, $d100                                  ; $72c5: $21 $00 $d1
    ld c, $08                                     ; $72c8: $0e $08

jr_077_72ca:
    push bc                                       ; $72ca: $c5
    ld a, [hl+]                                   ; $72cb: $2a
    ld [de], a                                    ; $72cc: $12
    inc de                                        ; $72cd: $13
    ld a, [hl+]                                   ; $72ce: $2a
    ld [de], a                                    ; $72cf: $12
    inc de                                        ; $72d0: $13
    ld a, [hl+]                                   ; $72d1: $2a
    ld [de], a                                    ; $72d2: $12
    inc de                                        ; $72d3: $13
    ld a, [hl+]                                   ; $72d4: $2a
    ld [de], a                                    ; $72d5: $12
    inc de                                        ; $72d6: $13
    ld a, [hl+]                                   ; $72d7: $2a
    ld [de], a                                    ; $72d8: $12
    inc de                                        ; $72d9: $13
    ld a, [hl+]                                   ; $72da: $2a
    ld [de], a                                    ; $72db: $12
    inc de                                        ; $72dc: $13
    ld a, [hl+]                                   ; $72dd: $2a
    ld [de], a                                    ; $72de: $12
    inc de                                        ; $72df: $13
    ld a, [hl+]                                   ; $72e0: $2a
    ld [de], a                                    ; $72e1: $12
    inc de                                        ; $72e2: $13
    ld a, [hl+]                                   ; $72e3: $2a
    ld [de], a                                    ; $72e4: $12
    inc de                                        ; $72e5: $13
    ld a, [hl+]                                   ; $72e6: $2a
    ld [de], a                                    ; $72e7: $12
    inc de                                        ; $72e8: $13

Call_077_72e9:
    ld a, [hl+]                                   ; $72e9: $2a
    ld [de], a                                    ; $72ea: $12
    inc de                                        ; $72eb: $13
    ld a, [hl+]                                   ; $72ec: $2a
    ld [de], a                                    ; $72ed: $12
    inc de                                        ; $72ee: $13
    ld a, [hl+]                                   ; $72ef: $2a
    ld [de], a                                    ; $72f0: $12
    inc de                                        ; $72f1: $13
    ld a, [hl+]                                   ; $72f2: $2a
    ld [de], a                                    ; $72f3: $12
    inc de                                        ; $72f4: $13
    ld a, [hl+]                                   ; $72f5: $2a
    ld [de], a                                    ; $72f6: $12
    inc de                                        ; $72f7: $13
    ld a, [hl+]                                   ; $72f8: $2a
    ld [de], a                                    ; $72f9: $12
    inc de                                        ; $72fa: $13
    ld a, [hl+]                                   ; $72fb: $2a
    ld [de], a                                    ; $72fc: $12
    inc de                                        ; $72fd: $13
    ld a, [hl+]                                   ; $72fe: $2a
    ld [de], a                                    ; $72ff: $12
    inc de                                        ; $7300: $13
    ld a, [hl+]                                   ; $7301: $2a
    ld [de], a                                    ; $7302: $12
    inc de                                        ; $7303: $13
    ld a, [hl+]                                   ; $7304: $2a
    ld [de], a                                    ; $7305: $12
    inc de                                        ; $7306: $13
    ld bc, $002c                                  ; $7307: $01 $2c $00
    add hl, bc                                    ; $730a: $09
    ld a, $0c                                     ; $730b: $3e $0c
    add e                                         ; $730d: $83
    ld e, a                                       ; $730e: $5f
    ld a, d                                       ; $730f: $7a
    adc $00                                       ; $7310: $ce $00
    ld d, a                                       ; $7312: $57
    pop bc                                        ; $7313: $c1
    dec c                                         ; $7314: $0d
    jr nz, jr_077_72ca                            ; $7315: $20 $b3

    ld hl, $c600                                  ; $7317: $21 $00 $c6
    ld de, $b880                                  ; $731a: $11 $80 $b8
    ld c, $10                                     ; $731d: $0e $10
    call Call_000_0468                            ; $731f: $cd $68 $04
    ld hl, $c700                                  ; $7322: $21 $00 $c7
    ld de, $9880                                  ; $7325: $11 $80 $98
    ld c, $10                                     ; $7328: $0e $10
    call Call_000_0468                            ; $732a: $cd $68 $04
    call Call_000_0460                            ; $732d: $cd $60 $04
    pop af                                        ; $7330: $f1
    ldh [$96], a                                  ; $7331: $e0 $96
    ldh [rSVBK], a                                ; $7333: $e0 $70
    ret                                           ; $7335: $c9


    or $03                                        ; $7336: $f6 $03
    adc h                                         ; $7338: $8c
    inc bc                                        ; $7339: $03
    ret z                                         ; $733a: $c8

    ld [bc], a                                    ; $733b: $02
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    ret z                                         ; $733e: $c8

    ld [bc], a                                    ; $733f: $02
    and $01                                       ; $7340: $e6 $01
    inc b                                         ; $7342: $04
    ld bc, $0000                                  ; $7343: $01 $00 $00
    nop                                           ; $7346: $00
    db $36                                        ; $7347: $36

    db $04, $36

    nop                                           ; $734a: $00
    scf                                           ; $734b: $37
    inc b                                         ; $734c: $04
    scf                                           ; $734d: $37
    nop                                           ; $734e: $00
    ld b, e                                       ; $734f: $43
    inc b                                         ; $7350: $04
    ld b, e                                       ; $7351: $43
    nop                                           ; $7352: $00
    ld [hl], l                                    ; $7353: $75
    inc b                                         ; $7354: $04
    ld [hl], l                                    ; $7355: $75
    nop                                           ; $7356: $00
    halt                                          ; $7357: $76

    db $04, $76

    nop                                           ; $735a: $00
    ld [hl], a                                    ; $735b: $77
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    ld [bc], a                                    ; $735e: $02
    db $36                                        ; $735f: $36

    db $06, $36

    ld [bc], a                                    ; $7362: $02
    scf                                           ; $7363: $37
    ld b, $37                                     ; $7364: $06 $37
    ld [bc], a                                    ; $7366: $02
    ld b, e                                       ; $7367: $43
    ld b, $43                                     ; $7368: $06 $43
    ld [bc], a                                    ; $736a: $02
    ld [hl], l                                    ; $736b: $75
    ld b, $75                                     ; $736c: $06 $75
    ld [bc], a                                    ; $736e: $02
    halt                                          ; $736f: $76

    db $04, $77

    ld [bc], a                                    ; $7372: $02
    ld [hl], a                                    ; $7373: $77
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    rst $38                                       ; $7376: $ff
    inc bc                                        ; $7377: $03
    rst $38                                       ; $7378: $ff
    ld l, e                                       ; $7379: $6b
    rst $18                                       ; $737a: $df
    jr jr_077_737d                                ; $737b: $18 $00

jr_077_737d:
    nop                                           ; $737d: $00
    rst $38                                       ; $737e: $ff
    inc bc                                        ; $737f: $03
    rst $38                                       ; $7380: $ff
    ld l, e                                       ; $7381: $6b
    ld a, [hl]                                    ; $7382: $7e
    ld hl, $0000                                  ; $7383: $21 $00 $00
    rst $38                                       ; $7386: $ff
    inc bc                                        ; $7387: $03
    rst $38                                       ; $7388: $ff
    ld l, e                                       ; $7389: $6b
    ld a, [hl]                                    ; $738a: $7e
    ld hl, $0000                                  ; $738b: $21 $00 $00
    rst $38                                       ; $738e: $ff
    inc bc                                        ; $738f: $03
    rst $38                                       ; $7390: $ff
    ld l, e                                       ; $7391: $6b
    ld a, [hl]                                    ; $7392: $7e
    ld hl, $0000                                  ; $7393: $21 $00 $00
    nop                                           ; $7396: $00
    ld h, e                                       ; $7397: $63
    rst $38                                       ; $7398: $ff
    ld l, e                                       ; $7399: $6b
    ld a, [hl]                                    ; $739a: $7e
    ld hl, $0000                                  ; $739b: $21 $00 $00
    rst $38                                       ; $739e: $ff
    inc bc                                        ; $739f: $03
    rst $38                                       ; $73a0: $ff
    ld l, e                                       ; $73a1: $6b
    ld e, a                                       ; $73a2: $5f
    ld bc, $0000                                  ; $73a3: $01 $00 $00
    rst $38                                       ; $73a6: $ff
    inc bc                                        ; $73a7: $03
    rst $38                                       ; $73a8: $ff
    ld l, e                                       ; $73a9: $6b
    ld e, a                                       ; $73aa: $5f
    ld bc, $0000                                  ; $73ab: $01 $00 $00
    rst $38                                       ; $73ae: $ff
    inc bc                                        ; $73af: $03
    rst $38                                       ; $73b0: $ff
    ld l, e                                       ; $73b1: $6b
    ld e, a                                       ; $73b2: $5f
    ld bc, $0000                                  ; $73b3: $01 $00 $00

    db $ff, $03, $ff, $6b, $5f, $01, $00, $00

    nop                                           ; $73be: $00
    ld h, e                                       ; $73bf: $63
    rst $38                                       ; $73c0: $ff
    ld l, e                                       ; $73c1: $6b
    ld e, a                                       ; $73c2: $5f
    ld bc, $0000                                  ; $73c3: $01 $00 $00
    rst $38                                       ; $73c6: $ff
    inc bc                                        ; $73c7: $03
    rst $38                                       ; $73c8: $ff
    ld l, e                                       ; $73c9: $6b
    ld e, a                                       ; $73ca: $5f
    ld bc, $0000                                  ; $73cb: $01 $00 $00
    rst $38                                       ; $73ce: $ff
    inc bc                                        ; $73cf: $03
    rst $38                                       ; $73d0: $ff
    ld l, e                                       ; $73d1: $6b
    ld e, a                                       ; $73d2: $5f
    ld bc, $0000                                  ; $73d3: $01 $00 $00
    rst $38                                       ; $73d6: $ff
    inc bc                                        ; $73d7: $03
    rst $38                                       ; $73d8: $ff
    ld l, e                                       ; $73d9: $6b
    ld e, a                                       ; $73da: $5f
    ld bc, $0000                                  ; $73db: $01 $00 $00
    rst $38                                       ; $73de: $ff
    inc bc                                        ; $73df: $03
    rst $38                                       ; $73e0: $ff
    ld l, e                                       ; $73e1: $6b
    ld e, a                                       ; $73e2: $5f
    ld bc, $0000                                  ; $73e3: $01 $00 $00
    nop                                           ; $73e6: $00
    ld h, e                                       ; $73e7: $63
    rst $38                                       ; $73e8: $ff
    ld l, e                                       ; $73e9: $6b
    ld e, a                                       ; $73ea: $5f
    ld bc, $0000                                  ; $73eb: $01 $00 $00
    rst $38                                       ; $73ee: $ff
    inc bc                                        ; $73ef: $03
    rst $38                                       ; $73f0: $ff
    ld l, e                                       ; $73f1: $6b
    rra                                           ; $73f2: $1f
    ld [bc], a                                    ; $73f3: $02
    nop                                           ; $73f4: $00
    nop                                           ; $73f5: $00
    rst $38                                       ; $73f6: $ff
    inc bc                                        ; $73f7: $03
    rst $38                                       ; $73f8: $ff
    ld l, e                                       ; $73f9: $6b
    rra                                           ; $73fa: $1f
    ld [bc], a                                    ; $73fb: $02
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    rst $38                                       ; $73fe: $ff
    inc bc                                        ; $73ff: $03
    rst $38                                       ; $7400: $ff
    ld l, e                                       ; $7401: $6b
    rra                                           ; $7402: $1f
    ld [bc], a                                    ; $7403: $02
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    rst $38                                       ; $7406: $ff
    inc bc                                        ; $7407: $03
    rst $38                                       ; $7408: $ff
    ld l, e                                       ; $7409: $6b
    rra                                           ; $740a: $1f
    ld [bc], a                                    ; $740b: $02
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    ld h, e                                       ; $740f: $63
    rst $38                                       ; $7410: $ff
    ld l, e                                       ; $7411: $6b
    rra                                           ; $7412: $1f
    ld [bc], a                                    ; $7413: $02
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    rst $38                                       ; $7416: $ff
    inc bc                                        ; $7417: $03
    rst $38                                       ; $7418: $ff
    ld l, e                                       ; $7419: $6b
    rra                                           ; $741a: $1f
    ld [bc], a                                    ; $741b: $02
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00
    rst $38                                       ; $741e: $ff
    inc bc                                        ; $741f: $03
    rst $38                                       ; $7420: $ff
    ld l, e                                       ; $7421: $6b
    rra                                           ; $7422: $1f
    ld [bc], a                                    ; $7423: $02
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    rst $38                                       ; $7426: $ff
    inc bc                                        ; $7427: $03
    rst $38                                       ; $7428: $ff
    ld l, e                                       ; $7429: $6b
    rra                                           ; $742a: $1f
    ld [bc], a                                    ; $742b: $02
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    rst $38                                       ; $742e: $ff
    inc bc                                        ; $742f: $03
    rst $38                                       ; $7430: $ff
    ld l, e                                       ; $7431: $6b
    rra                                           ; $7432: $1f
    ld [bc], a                                    ; $7433: $02
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    ld h, e                                       ; $7437: $63
    rst $38                                       ; $7438: $ff
    ld l, e                                       ; $7439: $6b
    rra                                           ; $743a: $1f
    ld [bc], a                                    ; $743b: $02
    nop                                           ; $743c: $00
    nop                                           ; $743d: $00
    rst $38                                       ; $743e: $ff
    inc bc                                        ; $743f: $03
    rst $38                                       ; $7440: $ff
    ld l, e                                       ; $7441: $6b
    rst $18                                       ; $7442: $df
    jr jr_077_7445                                ; $7443: $18 $00

jr_077_7445:
    nop                                           ; $7445: $00
    rst $38                                       ; $7446: $ff
    inc bc                                        ; $7447: $03
    rst $38                                       ; $7448: $ff
    ld l, e                                       ; $7449: $6b
    ld a, [hl]                                    ; $744a: $7e
    ld hl, $0000                                  ; $744b: $21 $00 $00
    rst $38                                       ; $744e: $ff
    inc bc                                        ; $744f: $03
    rst $38                                       ; $7450: $ff
    ld l, e                                       ; $7451: $6b
    ld a, [hl]                                    ; $7452: $7e
    ld hl, $0000                                  ; $7453: $21 $00 $00
    rst $38                                       ; $7456: $ff
    inc bc                                        ; $7457: $03
    rst $38                                       ; $7458: $ff
    ld l, e                                       ; $7459: $6b
    ld a, [hl]                                    ; $745a: $7e
    ld hl, $0000                                  ; $745b: $21 $00 $00
    nop                                           ; $745e: $00
    ld h, e                                       ; $745f: $63
    rst $38                                       ; $7460: $ff
    ld l, e                                       ; $7461: $6b
    ld a, [hl]                                    ; $7462: $7e
    ld hl, $0000                                  ; $7463: $21 $00 $00
    rst $38                                       ; $7466: $ff
    inc bc                                        ; $7467: $03
    rst $38                                       ; $7468: $ff
    ld l, e                                       ; $7469: $6b
    ld e, a                                       ; $746a: $5f
    ld bc, $0000                                  ; $746b: $01 $00 $00
    rst $38                                       ; $746e: $ff
    inc bc                                        ; $746f: $03
    rst $38                                       ; $7470: $ff
    ld l, e                                       ; $7471: $6b
    ld e, a                                       ; $7472: $5f
    ld bc, $0000                                  ; $7473: $01 $00 $00
    rst $38                                       ; $7476: $ff
    inc bc                                        ; $7477: $03
    rst $38                                       ; $7478: $ff
    ld l, e                                       ; $7479: $6b
    ld e, a                                       ; $747a: $5f
    ld bc, $0000                                  ; $747b: $01 $00 $00
    rst $38                                       ; $747e: $ff
    inc bc                                        ; $747f: $03
    rst $38                                       ; $7480: $ff
    ld l, e                                       ; $7481: $6b
    ld e, a                                       ; $7482: $5f
    ld bc, $0000                                  ; $7483: $01 $00 $00
    nop                                           ; $7486: $00
    ld h, e                                       ; $7487: $63
    rst $38                                       ; $7488: $ff
    ld l, e                                       ; $7489: $6b
    ld e, a                                       ; $748a: $5f
    ld bc, $0000                                  ; $748b: $01 $00 $00
    rst $38                                       ; $748e: $ff
    inc bc                                        ; $748f: $03
    rst $38                                       ; $7490: $ff
    ld l, e                                       ; $7491: $6b
    ret c                                         ; $7492: $d8

    ld a, h                                       ; $7493: $7c
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    rst $38                                       ; $7496: $ff
    inc bc                                        ; $7497: $03
    rst $38                                       ; $7498: $ff
    ld l, e                                       ; $7499: $6b
    ret c                                         ; $749a: $d8

    ld a, h                                       ; $749b: $7c
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    rst $38                                       ; $749e: $ff
    inc bc                                        ; $749f: $03
    rst $38                                       ; $74a0: $ff
    ld l, e                                       ; $74a1: $6b
    ret c                                         ; $74a2: $d8

    ld a, h                                       ; $74a3: $7c
    nop                                           ; $74a4: $00
    nop                                           ; $74a5: $00
    rst $38                                       ; $74a6: $ff
    inc bc                                        ; $74a7: $03
    rst $38                                       ; $74a8: $ff
    ld l, e                                       ; $74a9: $6b
    ret c                                         ; $74aa: $d8

    ld a, h                                       ; $74ab: $7c
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    nop                                           ; $74ae: $00
    ld h, e                                       ; $74af: $63
    rst $38                                       ; $74b0: $ff
    ld l, e                                       ; $74b1: $6b
    ret c                                         ; $74b2: $d8

    ld a, h                                       ; $74b3: $7c
    nop                                           ; $74b4: $00
    nop                                           ; $74b5: $00
    rst $38                                       ; $74b6: $ff
    inc bc                                        ; $74b7: $03
    rst $38                                       ; $74b8: $ff
    ld l, e                                       ; $74b9: $6b
    rst $38                                       ; $74ba: $ff
    jr nz, jr_077_74bd                            ; $74bb: $20 $00

jr_077_74bd:
    nop                                           ; $74bd: $00
    rst $38                                       ; $74be: $ff
    inc bc                                        ; $74bf: $03
    rst $38                                       ; $74c0: $ff
    ld l, e                                       ; $74c1: $6b
    rst $38                                       ; $74c2: $ff
    jr nz, jr_077_74c5                            ; $74c3: $20 $00

jr_077_74c5:
    nop                                           ; $74c5: $00
    rst $38                                       ; $74c6: $ff
    inc bc                                        ; $74c7: $03
    rst $38                                       ; $74c8: $ff
    ld l, e                                       ; $74c9: $6b
    rst $38                                       ; $74ca: $ff
    jr nz, jr_077_74cd                            ; $74cb: $20 $00

jr_077_74cd:
    nop                                           ; $74cd: $00
    rst $38                                       ; $74ce: $ff
    inc bc                                        ; $74cf: $03
    rst $38                                       ; $74d0: $ff
    ld l, e                                       ; $74d1: $6b
    rst $38                                       ; $74d2: $ff
    jr nz, jr_077_74d5                            ; $74d3: $20 $00

jr_077_74d5:
    nop                                           ; $74d5: $00
    nop                                           ; $74d6: $00
    ld h, e                                       ; $74d7: $63
    rst $38                                       ; $74d8: $ff
    ld l, e                                       ; $74d9: $6b
    rst $38                                       ; $74da: $ff
    jr nz, jr_077_74dd                            ; $74db: $20 $00

jr_077_74dd:
    nop                                           ; $74dd: $00
    rst $38                                       ; $74de: $ff
    inc bc                                        ; $74df: $03
    rst $38                                       ; $74e0: $ff
    ld l, e                                       ; $74e1: $6b
    add b                                         ; $74e2: $80
    ld [de], a                                    ; $74e3: $12
    nop                                           ; $74e4: $00
    nop                                           ; $74e5: $00
    rst $38                                       ; $74e6: $ff
    inc bc                                        ; $74e7: $03
    rst $38                                       ; $74e8: $ff
    ld l, e                                       ; $74e9: $6b
    add b                                         ; $74ea: $80
    ld [de], a                                    ; $74eb: $12
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    rst $38                                       ; $74ee: $ff
    inc bc                                        ; $74ef: $03
    rst $38                                       ; $74f0: $ff
    ld l, e                                       ; $74f1: $6b
    add b                                         ; $74f2: $80
    ld [de], a                                    ; $74f3: $12
    nop                                           ; $74f4: $00
    nop                                           ; $74f5: $00

    db $ff, $03, $ff, $6b, $80, $12, $00, $00, $00, $63, $ff, $6b, $80, $12, $00, $00

    rst $38                                       ; $7506: $ff
    inc bc                                        ; $7507: $03
    rst $38                                       ; $7508: $ff
    ld l, e                                       ; $7509: $6b
    rra                                           ; $750a: $1f
    ld [bc], a                                    ; $750b: $02
    nop                                           ; $750c: $00
    nop                                           ; $750d: $00
    rst $38                                       ; $750e: $ff
    inc bc                                        ; $750f: $03
    rst $38                                       ; $7510: $ff
    ld l, e                                       ; $7511: $6b
    rra                                           ; $7512: $1f
    ld [bc], a                                    ; $7513: $02
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    rst $38                                       ; $7516: $ff
    inc bc                                        ; $7517: $03
    rst $38                                       ; $7518: $ff
    ld l, e                                       ; $7519: $6b
    rra                                           ; $751a: $1f
    ld [bc], a                                    ; $751b: $02
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    rst $38                                       ; $751e: $ff
    inc bc                                        ; $751f: $03
    rst $38                                       ; $7520: $ff
    ld l, e                                       ; $7521: $6b
    rra                                           ; $7522: $1f
    ld [bc], a                                    ; $7523: $02
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    ld h, e                                       ; $7527: $63
    rst $38                                       ; $7528: $ff
    ld l, e                                       ; $7529: $6b
    rra                                           ; $752a: $1f
    ld [bc], a                                    ; $752b: $02
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    rst $38                                       ; $752e: $ff
    inc bc                                        ; $752f: $03
    rst $38                                       ; $7530: $ff
    ld l, e                                       ; $7531: $6b
    sbc a                                         ; $7532: $9f
    ld d, c                                       ; $7533: $51
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    rst $38                                       ; $7536: $ff
    inc bc                                        ; $7537: $03
    rst $38                                       ; $7538: $ff
    ld l, e                                       ; $7539: $6b
    sbc a                                         ; $753a: $9f
    ld d, c                                       ; $753b: $51
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    rst $38                                       ; $753e: $ff
    inc bc                                        ; $753f: $03
    rst $38                                       ; $7540: $ff
    ld l, e                                       ; $7541: $6b
    sbc a                                         ; $7542: $9f
    ld d, c                                       ; $7543: $51
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    rst $38                                       ; $7546: $ff
    inc bc                                        ; $7547: $03
    rst $38                                       ; $7548: $ff
    ld l, e                                       ; $7549: $6b
    sbc a                                         ; $754a: $9f
    ld d, c                                       ; $754b: $51
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    ld h, e                                       ; $754f: $63
    rst $38                                       ; $7550: $ff
    ld l, e                                       ; $7551: $6b
    sbc a                                         ; $7552: $9f
    ld d, c                                       ; $7553: $51
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    rst $38                                       ; $7556: $ff
    inc bc                                        ; $7557: $03
    rst $38                                       ; $7558: $ff
    ld l, e                                       ; $7559: $6b
    sbc a                                         ; $755a: $9f
    jr nz, jr_077_755d                            ; $755b: $20 $00

jr_077_755d:
    nop                                           ; $755d: $00
    rst $38                                       ; $755e: $ff
    inc bc                                        ; $755f: $03
    rst $38                                       ; $7560: $ff
    ld l, e                                       ; $7561: $6b
    sbc a                                         ; $7562: $9f
    jr nz, jr_077_7565                            ; $7563: $20 $00

jr_077_7565:
    nop                                           ; $7565: $00
    rst $38                                       ; $7566: $ff
    inc bc                                        ; $7567: $03
    rst $38                                       ; $7568: $ff
    ld l, e                                       ; $7569: $6b
    sbc a                                         ; $756a: $9f
    jr nz, jr_077_756d                            ; $756b: $20 $00

jr_077_756d:
    nop                                           ; $756d: $00
    rst $38                                       ; $756e: $ff
    inc bc                                        ; $756f: $03
    rst $38                                       ; $7570: $ff
    ld l, e                                       ; $7571: $6b
    sbc a                                         ; $7572: $9f
    jr nz, jr_077_7575                            ; $7573: $20 $00

jr_077_7575:
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    ld h, e                                       ; $7577: $63
    rst $38                                       ; $7578: $ff
    ld l, e                                       ; $7579: $6b
    sbc a                                         ; $757a: $9f
    jr nz, jr_077_757d                            ; $757b: $20 $00

jr_077_757d:
    nop                                           ; $757d: $00
    rst $38                                       ; $757e: $ff
    inc bc                                        ; $757f: $03
    rst $38                                       ; $7580: $ff
    ld l, e                                       ; $7581: $6b
    sbc a                                         ; $7582: $9f
    jr nz, jr_077_7585                            ; $7583: $20 $00

jr_077_7585:
    nop                                           ; $7585: $00
    rst $38                                       ; $7586: $ff
    inc bc                                        ; $7587: $03
    rst $38                                       ; $7588: $ff
    ld l, e                                       ; $7589: $6b
    sbc a                                         ; $758a: $9f
    jr nz, jr_077_758d                            ; $758b: $20 $00

jr_077_758d:
    nop                                           ; $758d: $00
    rst $38                                       ; $758e: $ff
    inc bc                                        ; $758f: $03
    rst $38                                       ; $7590: $ff
    ld l, e                                       ; $7591: $6b
    sbc a                                         ; $7592: $9f
    jr nz, jr_077_7595                            ; $7593: $20 $00

jr_077_7595:
    nop                                           ; $7595: $00
    rst $38                                       ; $7596: $ff
    inc bc                                        ; $7597: $03
    rst $38                                       ; $7598: $ff
    ld l, e                                       ; $7599: $6b
    sbc a                                         ; $759a: $9f
    jr nz, jr_077_759d                            ; $759b: $20 $00

jr_077_759d:
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    ld h, e                                       ; $759f: $63
    rst $38                                       ; $75a0: $ff
    ld l, e                                       ; $75a1: $6b
    sbc a                                         ; $75a2: $9f
    jr nz, jr_077_75a5                            ; $75a3: $20 $00

jr_077_75a5:
    nop                                           ; $75a5: $00
    rst $38                                       ; $75a6: $ff
    inc bc                                        ; $75a7: $03
    rst $38                                       ; $75a8: $ff
    ld l, e                                       ; $75a9: $6b
    nop                                           ; $75aa: $00
    ld a, d                                       ; $75ab: $7a
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    rst $38                                       ; $75ae: $ff
    inc bc                                        ; $75af: $03
    rst $38                                       ; $75b0: $ff
    ld l, e                                       ; $75b1: $6b
    nop                                           ; $75b2: $00
    ld a, d                                       ; $75b3: $7a
    nop                                           ; $75b4: $00
    nop                                           ; $75b5: $00
    rst $38                                       ; $75b6: $ff
    inc bc                                        ; $75b7: $03
    rst $38                                       ; $75b8: $ff
    ld l, e                                       ; $75b9: $6b
    nop                                           ; $75ba: $00
    ld a, d                                       ; $75bb: $7a
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    rst $38                                       ; $75be: $ff
    inc bc                                        ; $75bf: $03
    rst $38                                       ; $75c0: $ff
    ld l, e                                       ; $75c1: $6b
    nop                                           ; $75c2: $00
    ld a, d                                       ; $75c3: $7a
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    ld h, e                                       ; $75c7: $63
    rst $38                                       ; $75c8: $ff
    ld l, e                                       ; $75c9: $6b
    nop                                           ; $75ca: $00
    ld a, d                                       ; $75cb: $7a
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    rst $38                                       ; $75ce: $ff
    inc bc                                        ; $75cf: $03
    rst $38                                       ; $75d0: $ff
    ld l, e                                       ; $75d1: $6b
    nop                                           ; $75d2: $00
    ld a, d                                       ; $75d3: $7a
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    rst $38                                       ; $75d6: $ff
    inc bc                                        ; $75d7: $03
    rst $38                                       ; $75d8: $ff
    ld l, e                                       ; $75d9: $6b
    nop                                           ; $75da: $00
    ld a, d                                       ; $75db: $7a
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    rst $38                                       ; $75de: $ff
    inc bc                                        ; $75df: $03
    rst $38                                       ; $75e0: $ff
    ld l, e                                       ; $75e1: $6b
    nop                                           ; $75e2: $00
    ld a, d                                       ; $75e3: $7a
    nop                                           ; $75e4: $00
    nop                                           ; $75e5: $00
    rst $38                                       ; $75e6: $ff
    inc bc                                        ; $75e7: $03
    rst $38                                       ; $75e8: $ff
    ld l, e                                       ; $75e9: $6b
    nop                                           ; $75ea: $00
    ld a, d                                       ; $75eb: $7a
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    ld h, e                                       ; $75ef: $63
    rst $38                                       ; $75f0: $ff
    ld l, e                                       ; $75f1: $6b
    nop                                           ; $75f2: $00
    ld a, d                                       ; $75f3: $7a
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    rst $38                                       ; $75f6: $ff
    inc bc                                        ; $75f7: $03
    rst $38                                       ; $75f8: $ff
    ld l, e                                       ; $75f9: $6b
    sbc a                                         ; $75fa: $9f
    ld d, c                                       ; $75fb: $51
    nop                                           ; $75fc: $00
    nop                                           ; $75fd: $00
    rst $38                                       ; $75fe: $ff

Jump_077_75ff:
    inc bc                                        ; $75ff: $03
    rst $38                                       ; $7600: $ff
    ld l, e                                       ; $7601: $6b
    sbc a                                         ; $7602: $9f
    ld d, c                                       ; $7603: $51
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    rst $38                                       ; $7606: $ff
    inc bc                                        ; $7607: $03
    rst $38                                       ; $7608: $ff
    ld l, e                                       ; $7609: $6b
    sbc a                                         ; $760a: $9f
    ld d, c                                       ; $760b: $51
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    rst $38                                       ; $760e: $ff
    inc bc                                        ; $760f: $03
    rst $38                                       ; $7610: $ff
    ld l, e                                       ; $7611: $6b
    sbc a                                         ; $7612: $9f
    ld d, c                                       ; $7613: $51
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    ld h, e                                       ; $7617: $63
    rst $38                                       ; $7618: $ff
    ld l, e                                       ; $7619: $6b
    sbc a                                         ; $761a: $9f
    ld d, c                                       ; $761b: $51
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    rst $38                                       ; $761e: $ff
    inc bc                                        ; $761f: $03
    rst $38                                       ; $7620: $ff
    ld l, e                                       ; $7621: $6b
    sbc a                                         ; $7622: $9f
    jr nz, jr_077_7625                            ; $7623: $20 $00

jr_077_7625:
    nop                                           ; $7625: $00
    rst $38                                       ; $7626: $ff
    inc bc                                        ; $7627: $03
    rst $38                                       ; $7628: $ff
    ld l, e                                       ; $7629: $6b
    sbc a                                         ; $762a: $9f
    jr nz, jr_077_762d                            ; $762b: $20 $00

jr_077_762d:
    nop                                           ; $762d: $00
    rst $38                                       ; $762e: $ff
    inc bc                                        ; $762f: $03
    rst $38                                       ; $7630: $ff
    ld l, e                                       ; $7631: $6b
    sbc a                                         ; $7632: $9f
    jr nz, jr_077_7635                            ; $7633: $20 $00

jr_077_7635:
    nop                                           ; $7635: $00
    rst $38                                       ; $7636: $ff
    inc bc                                        ; $7637: $03
    rst $38                                       ; $7638: $ff
    ld l, e                                       ; $7639: $6b
    sbc a                                         ; $763a: $9f
    jr nz, jr_077_763d                            ; $763b: $20 $00

jr_077_763d:
    nop                                           ; $763d: $00
    nop                                           ; $763e: $00
    ld h, e                                       ; $763f: $63
    rst $38                                       ; $7640: $ff
    ld l, e                                       ; $7641: $6b
    sbc a                                         ; $7642: $9f
    jr nz, jr_077_7645                            ; $7643: $20 $00

jr_077_7645:
    nop                                           ; $7645: $00
    rst $38                                       ; $7646: $ff
    inc bc                                        ; $7647: $03
    rst $38                                       ; $7648: $ff
    ld l, e                                       ; $7649: $6b
    sbc a                                         ; $764a: $9f
    ld bc, $0000                                  ; $764b: $01 $00 $00
    rst $38                                       ; $764e: $ff
    inc bc                                        ; $764f: $03
    rst $38                                       ; $7650: $ff
    ld l, e                                       ; $7651: $6b
    sbc a                                         ; $7652: $9f
    ld bc, $0000                                  ; $7653: $01 $00 $00
    rst $38                                       ; $7656: $ff
    inc bc                                        ; $7657: $03
    rst $38                                       ; $7658: $ff
    ld l, e                                       ; $7659: $6b
    sbc a                                         ; $765a: $9f
    ld bc, $0000                                  ; $765b: $01 $00 $00
    rst $38                                       ; $765e: $ff
    inc bc                                        ; $765f: $03
    rst $38                                       ; $7660: $ff
    ld l, e                                       ; $7661: $6b
    sbc a                                         ; $7662: $9f
    ld bc, $0000                                  ; $7663: $01 $00 $00
    nop                                           ; $7666: $00
    ld h, e                                       ; $7667: $63
    rst $38                                       ; $7668: $ff
    ld l, e                                       ; $7669: $6b
    sbc a                                         ; $766a: $9f
    ld bc, $0000                                  ; $766b: $01 $00 $00
    rst $38                                       ; $766e: $ff
    inc bc                                        ; $766f: $03
    rst $38                                       ; $7670: $ff
    ld l, e                                       ; $7671: $6b
    sbc a                                         ; $7672: $9f
    ld d, c                                       ; $7673: $51
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    rst $38                                       ; $7676: $ff
    inc bc                                        ; $7677: $03
    rst $38                                       ; $7678: $ff
    ld l, e                                       ; $7679: $6b
    sbc a                                         ; $767a: $9f
    ld d, c                                       ; $767b: $51
    nop                                           ; $767c: $00
    nop                                           ; $767d: $00
    rst $38                                       ; $767e: $ff
    inc bc                                        ; $767f: $03
    rst $38                                       ; $7680: $ff
    ld l, e                                       ; $7681: $6b
    sbc a                                         ; $7682: $9f
    ld d, c                                       ; $7683: $51
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    rst $38                                       ; $7686: $ff
    inc bc                                        ; $7687: $03
    rst $38                                       ; $7688: $ff
    ld l, e                                       ; $7689: $6b
    sbc a                                         ; $768a: $9f
    ld d, c                                       ; $768b: $51
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    ld h, e                                       ; $768f: $63
    rst $38                                       ; $7690: $ff
    ld l, e                                       ; $7691: $6b
    sbc a                                         ; $7692: $9f
    ld d, c                                       ; $7693: $51
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    rst $38                                       ; $7696: $ff
    inc bc                                        ; $7697: $03
    rst $38                                       ; $7698: $ff
    ld l, e                                       ; $7699: $6b
    inc b                                         ; $769a: $04
    ld a, a                                       ; $769b: $7f
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    rst $38                                       ; $769e: $ff
    inc bc                                        ; $769f: $03
    rst $38                                       ; $76a0: $ff
    ld l, e                                       ; $76a1: $6b
    inc b                                         ; $76a2: $04
    ld a, a                                       ; $76a3: $7f
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    rst $38                                       ; $76a6: $ff
    inc bc                                        ; $76a7: $03
    rst $38                                       ; $76a8: $ff
    ld l, e                                       ; $76a9: $6b
    inc b                                         ; $76aa: $04
    ld a, a                                       ; $76ab: $7f
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    rst $38                                       ; $76ae: $ff
    inc bc                                        ; $76af: $03
    rst $38                                       ; $76b0: $ff
    ld l, e                                       ; $76b1: $6b
    inc b                                         ; $76b2: $04
    ld a, a                                       ; $76b3: $7f
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    ld h, e                                       ; $76b7: $63
    rst $38                                       ; $76b8: $ff
    ld l, e                                       ; $76b9: $6b
    inc b                                         ; $76ba: $04
    ld a, a                                       ; $76bb: $7f
    nop                                           ; $76bc: $00
    nop                                           ; $76bd: $00
    rst $38                                       ; $76be: $ff
    inc bc                                        ; $76bf: $03
    rst $38                                       ; $76c0: $ff
    ld l, e                                       ; $76c1: $6b
    nop                                           ; $76c2: $00
    ld a, d                                       ; $76c3: $7a
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    rst $38                                       ; $76c6: $ff
    inc bc                                        ; $76c7: $03
    rst $38                                       ; $76c8: $ff
    ld l, e                                       ; $76c9: $6b
    nop                                           ; $76ca: $00
    ld a, d                                       ; $76cb: $7a
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    rst $38                                       ; $76ce: $ff
    inc bc                                        ; $76cf: $03
    rst $38                                       ; $76d0: $ff
    ld l, e                                       ; $76d1: $6b
    nop                                           ; $76d2: $00
    ld a, d                                       ; $76d3: $7a
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    rst $38                                       ; $76d6: $ff
    inc bc                                        ; $76d7: $03
    rst $38                                       ; $76d8: $ff
    ld l, e                                       ; $76d9: $6b
    nop                                           ; $76da: $00
    ld a, d                                       ; $76db: $7a
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    ld h, e                                       ; $76df: $63
    rst $38                                       ; $76e0: $ff
    ld l, e                                       ; $76e1: $6b
    nop                                           ; $76e2: $00
    ld a, d                                       ; $76e3: $7a
    nop                                           ; $76e4: $00
    nop                                           ; $76e5: $00
    sub [hl]                                      ; $76e6: $96
    ld [hl], a                                    ; $76e7: $77
    and b                                         ; $76e8: $a0
    ld [hl], a                                    ; $76e9: $77
    xor d                                         ; $76ea: $aa
    ld [hl], a                                    ; $76eb: $77
    or h                                          ; $76ec: $b4
    ld [hl], a                                    ; $76ed: $77
    add $77                                       ; $76ee: $c6 $77
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    jp nc, $e077                                  ; $76f6: $d2 $77 $e0

    ld [hl], a                                    ; $76f9: $77
    db $ec                                        ; $76fa: $ec
    ld [hl], a                                    ; $76fb: $77

    db $04, $78

    inc d                                         ; $76fe: $14
    ld a, b                                       ; $76ff: $78
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    jr nz, jr_077_7780                            ; $7706: $20 $78

    ld a, [hl+]                                   ; $7708: $2a
    ld a, b                                       ; $7709: $78
    inc [hl]                                      ; $770a: $34
    ld a, b                                       ; $770b: $78
    ld a, $78                                     ; $770c: $3e $78
    ld d, h                                       ; $770e: $54
    ld a, b                                       ; $770f: $78
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    ld l, b                                       ; $7716: $68
    ld a, b                                       ; $7717: $78
    halt                                          ; $7718: $76
    ld a, b                                       ; $7719: $78
    add b                                         ; $771a: $80
    ld a, b                                       ; $771b: $78
    sub [hl]                                      ; $771c: $96
    ld a, b                                       ; $771d: $78
    xor h                                         ; $771e: $ac
    ld a, b                                       ; $771f: $78
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    jp nz, $cc78                                  ; $7726: $c2 $78 $cc

    ld a, b                                       ; $7729: $78
    ldh [$78], a                                  ; $772a: $e0 $78
    db $f4                                        ; $772c: $f4
    ld a, b                                       ; $772d: $78
    ld b, $79                                     ; $772e: $06 $79
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    jr jr_077_77b1                                ; $7736: $18 $79

    ld [hl+], a                                   ; $7738: $22
    ld a, c                                       ; $7739: $79
    ld l, $79                                     ; $773a: $2e $79
    ld a, [hl-]                                   ; $773c: $3a
    ld a, c                                       ; $773d: $79
    ld b, h                                       ; $773e: $44
    ld a, c                                       ; $773f: $79
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    ld c, [hl]                                    ; $7746: $4e
    ld a, c                                       ; $7747: $79
    ld h, h                                       ; $7748: $64
    ld a, c                                       ; $7749: $79
    ld l, [hl]                                    ; $774a: $6e
    ld a, c                                       ; $774b: $79
    add b                                         ; $774c: $80
    ld a, c                                       ; $774d: $79
    sub h                                         ; $774e: $94
    ld a, c                                       ; $774f: $79
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    xor d                                         ; $7756: $aa
    ld a, c                                       ; $7757: $79
    call nz, $ce79                                ; $7758: $c4 $79 $ce
    ld a, c                                       ; $775b: $79
    call c, $ee79                                 ; $775c: $dc $79 $ee
    ld a, c                                       ; $775f: $79
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00

Call_077_7763:
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    ld a, d                                       ; $7767: $7a
    ld [de], a                                    ; $7768: $12
    ld a, d                                       ; $7769: $7a
    inc h                                         ; $776a: $24
    ld a, d                                       ; $776b: $7a
    jr nc, @+$7c                                  ; $776c: $30 $7a

    ld c, d                                       ; $776e: $4a
    ld a, d                                       ; $776f: $7a
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    ld e, [hl]                                    ; $7776: $5e
    ld a, d                                       ; $7777: $7a
    ld [hl], b                                    ; $7778: $70
    ld a, d                                       ; $7779: $7a
    add d                                         ; $777a: $82
    ld a, d                                       ; $777b: $7a

    db $94, $7a, $a6, $7a

jr_077_7780:
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    or h                                          ; $7786: $b4
    ld a, d                                       ; $7787: $7a
    cp [hl]                                       ; $7788: $be
    ld a, d                                       ; $7789: $7a
    adc $7a                                       ; $778a: $ce $7a
    ldh [$7a], a                                  ; $778c: $e0 $7a
    xor $7a                                       ; $778e: $ee $7a
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    inc c                                         ; $7797: $0c
    ld bc, $020c                                  ; $7798: $01 $0c $02
    inc c                                         ; $779b: $0c
    inc bc                                        ; $779c: $03
    inc c                                         ; $779d: $0c
    cp $00                                        ; $779e: $fe $00
    nop                                           ; $77a0: $00
    inc d                                         ; $77a1: $14
    ld bc, $020a                                  ; $77a2: $01 $0a $02
    ld [$2803], sp                                ; $77a5: $08 $03 $28
    cp $00                                        ; $77a8: $fe $00
    nop                                           ; $77aa: $00
    inc d                                         ; $77ab: $14
    ld bc, $020f                                  ; $77ac: $01 $0f $02
    ld a, [bc]                                    ; $77af: $0a
    inc bc                                        ; $77b0: $03

jr_077_77b1:
    inc a                                         ; $77b1: $3c
    cp $00                                        ; $77b2: $fe $00
    nop                                           ; $77b4: $00
    db $10                                        ; $77b5: $10
    ld bc, $0210                                  ; $77b6: $01 $10 $02
    db $10                                        ; $77b9: $10
    ld bc, $0210                                  ; $77ba: $01 $10 $02
    db $10                                        ; $77bd: $10
    ld bc, $001e                                  ; $77be: $01 $1e $00
    ld [$3c03], sp                                ; $77c1: $08 $03 $3c
    cp $00                                        ; $77c4: $fe $00
    nop                                           ; $77c6: $00
    db $10                                        ; $77c7: $10
    ld bc, $020a                                  ; $77c8: $01 $0a $02
    ld a, [bc]                                    ; $77cb: $0a
    ld bc, $030a                                  ; $77cc: $01 $0a $03
    ld a, [bc]                                    ; $77cf: $0a
    cp $02                                        ; $77d0: $fe $02
    nop                                           ; $77d2: $00
    rrca                                          ; $77d3: $0f
    ld bc, $000f                                  ; $77d4: $01 $0f $00
    rrca                                          ; $77d7: $0f
    ld bc, $020f                                  ; $77d8: $01 $0f $02
    rrca                                          ; $77db: $0f
    inc bc                                        ; $77dc: $03
    rrca                                          ; $77dd: $0f
    cp $00                                        ; $77de: $fe $00
    nop                                           ; $77e0: $00
    rrca                                          ; $77e1: $0f
    ld bc, $020f                                  ; $77e2: $01 $0f $02
    rrca                                          ; $77e5: $0f
    ld bc, $030f                                  ; $77e6: $01 $0f $03
    rrca                                          ; $77e9: $0f
    cp $02                                        ; $77ea: $fe $02
    nop                                           ; $77ec: $00
    ld e, $01                                     ; $77ed: $1e $01
    ld a, [bc]                                    ; $77ef: $0a
    ld [bc], a                                    ; $77f0: $02
    rrca                                          ; $77f1: $0f
    inc bc                                        ; $77f2: $03
    rrca                                          ; $77f3: $0f
    ld [bc], a                                    ; $77f4: $02
    rrca                                          ; $77f5: $0f
    inc bc                                        ; $77f6: $03
    rrca                                          ; $77f7: $0f
    ld [bc], a                                    ; $77f8: $02
    rrca                                          ; $77f9: $0f
    inc bc                                        ; $77fa: $03
    rrca                                          ; $77fb: $0f
    ld [bc], a                                    ; $77fc: $02
    rrca                                          ; $77fd: $0f
    inc bc                                        ; $77fe: $03
    rrca                                          ; $77ff: $0f
    ld bc, $fe0a                                  ; $7800: $01 $0a $fe
    nop                                           ; $7803: $00

    db $00, $28, $01, $0e, $04, $07, $02, $07, $03, $0e, $02, $07, $04, $07, $fe, $02

    nop                                           ; $7814: $00
    rrca                                          ; $7815: $0f
    ld bc, $020f                                  ; $7816: $01 $0f $02
    rrca                                          ; $7819: $0f
    ld bc, $030f                                  ; $781a: $01 $0f $03
    rrca                                          ; $781d: $0f
    cp $02                                        ; $781e: $fe $02
    nop                                           ; $7820: $00
    inc d                                         ; $7821: $14
    ld bc, $0214                                  ; $7822: $01 $14 $02
    inc d                                         ; $7825: $14
    inc bc                                        ; $7826: $03
    inc d                                         ; $7827: $14
    cp $00                                        ; $7828: $fe $00
    nop                                           ; $782a: $00
    inc d                                         ; $782b: $14
    ld bc, $0214                                  ; $782c: $01 $14 $02
    inc d                                         ; $782f: $14
    inc bc                                        ; $7830: $03
    inc d                                         ; $7831: $14
    cp $00                                        ; $7832: $fe $00
    nop                                           ; $7834: $00
    ld [$1401], sp                                ; $7835: $08 $01 $14
    ld [bc], a                                    ; $7838: $02
    ld e, $03                                     ; $7839: $1e $03
    ld a, [bc]                                    ; $783b: $0a
    cp $00                                        ; $783c: $fe $00
    nop                                           ; $783e: $00
    inc d                                         ; $783f: $14
    ld bc, $0214                                  ; $7840: $01 $14 $02
    ld a, [bc]                                    ; $7843: $0a
    inc bc                                        ; $7844: $03
    ld a, [bc]                                    ; $7845: $0a
    ld [bc], a                                    ; $7846: $02
    ld a, [bc]                                    ; $7847: $0a
    inc bc                                        ; $7848: $03
    ld a, [bc]                                    ; $7849: $0a
    ld [bc], a                                    ; $784a: $02
    ld a, [bc]                                    ; $784b: $0a
    inc bc                                        ; $784c: $03
    ld a, [bc]                                    ; $784d: $0a
    ld [bc], a                                    ; $784e: $02
    ld a, [bc]                                    ; $784f: $0a
    inc bc                                        ; $7850: $03
    ld a, [bc]                                    ; $7851: $0a
    cp $00                                        ; $7852: $fe $00
    nop                                           ; $7854: $00
    jr z, jr_077_7858                             ; $7855: $28 $01

    ld a, [bc]                                    ; $7857: $0a

jr_077_7858:
    ld [bc], a                                    ; $7858: $02
    rrca                                          ; $7859: $0f
    inc bc                                        ; $785a: $03
    rrca                                          ; $785b: $0f
    ld [bc], a                                    ; $785c: $02
    rrca                                          ; $785d: $0f
    inc bc                                        ; $785e: $03
    rrca                                          ; $785f: $0f
    ld [bc], a                                    ; $7860: $02
    rrca                                          ; $7861: $0f
    inc bc                                        ; $7862: $03
    rrca                                          ; $7863: $0f
    ld bc, $fe28                                  ; $7864: $01 $28 $fe
    inc b                                         ; $7867: $04
    nop                                           ; $7868: $00
    inc c                                         ; $7869: $0c
    ld bc, $020c                                  ; $786a: $01 $0c $02
    inc c                                         ; $786d: $0c
    inc bc                                        ; $786e: $03
    inc c                                         ; $786f: $0c
    ld [bc], a                                    ; $7870: $02
    inc c                                         ; $7871: $0c
    ld bc, $fe0c                                  ; $7872: $01 $0c $fe
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    rrca                                          ; $7877: $0f
    ld bc, $020a                                  ; $7878: $01 $0a $02
    rrca                                          ; $787b: $0f
    inc bc                                        ; $787c: $03
    ld a, [bc]                                    ; $787d: $0a
    cp $00                                        ; $787e: $fe $00
    nop                                           ; $7880: $00
    rrca                                          ; $7881: $0f
    ld bc, $0214                                  ; $7882: $01 $14 $02
    add hl, de                                    ; $7885: $19
    inc bc                                        ; $7886: $03
    inc d                                         ; $7887: $14
    ld [bc], a                                    ; $7888: $02
    inc d                                         ; $7889: $14
    inc bc                                        ; $788a: $03
    inc d                                         ; $788b: $14
    ld [bc], a                                    ; $788c: $02
    inc d                                         ; $788d: $14
    inc bc                                        ; $788e: $03
    inc d                                         ; $788f: $14
    ld [bc], a                                    ; $7890: $02
    inc d                                         ; $7891: $14
    inc bc                                        ; $7892: $03
    inc d                                         ; $7893: $14
    cp $00                                        ; $7894: $fe $00
    nop                                           ; $7896: $00
    add hl, de                                    ; $7897: $19
    ld bc, $0214                                  ; $7898: $01 $14 $02
    rrca                                          ; $789b: $0f
    inc bc                                        ; $789c: $03
    rrca                                          ; $789d: $0f
    ld [bc], a                                    ; $789e: $02
    rrca                                          ; $789f: $0f
    inc bc                                        ; $78a0: $03
    rrca                                          ; $78a1: $0f
    ld [bc], a                                    ; $78a2: $02
    rrca                                          ; $78a3: $0f
    inc bc                                        ; $78a4: $03
    rrca                                          ; $78a5: $0f
    ld [bc], a                                    ; $78a6: $02
    rrca                                          ; $78a7: $0f
    inc bc                                        ; $78a8: $03
    rrca                                          ; $78a9: $0f
    cp $00                                        ; $78aa: $fe $00
    nop                                           ; $78ac: $00
    dec b                                         ; $78ad: $05
    ld bc, $020a                                  ; $78ae: $01 $0a $02
    rrca                                          ; $78b1: $0f
    inc bc                                        ; $78b2: $03
    ld a, [bc]                                    ; $78b3: $0a
    ld [bc], a                                    ; $78b4: $02
    ld a, [bc]                                    ; $78b5: $0a
    inc bc                                        ; $78b6: $03
    ld a, [bc]                                    ; $78b7: $0a
    ld [bc], a                                    ; $78b8: $02
    ld a, [bc]                                    ; $78b9: $0a
    inc bc                                        ; $78ba: $03
    ld a, [bc]                                    ; $78bb: $0a
    ld [bc], a                                    ; $78bc: $02
    ld a, [bc]                                    ; $78bd: $0a
    inc bc                                        ; $78be: $03
    ld a, [bc]                                    ; $78bf: $0a
    cp $08                                        ; $78c0: $fe $08
    nop                                           ; $78c2: $00
    inc d                                         ; $78c3: $14
    ld bc, $0214                                  ; $78c4: $01 $14 $02
    inc d                                         ; $78c7: $14
    inc bc                                        ; $78c8: $03
    inc d                                         ; $78c9: $14
    cp $00                                        ; $78ca: $fe $00
    nop                                           ; $78cc: $00
    inc d                                         ; $78cd: $14
    ld bc, $0028                                  ; $78ce: $01 $28 $00
    inc d                                         ; $78d1: $14
    ld [bc], a                                    ; $78d2: $02
    inc d                                         ; $78d3: $14
    inc bc                                        ; $78d4: $03
    inc d                                         ; $78d5: $14
    ld [bc], a                                    ; $78d6: $02
    inc d                                         ; $78d7: $14
    inc bc                                        ; $78d8: $03
    inc d                                         ; $78d9: $14
    ld [bc], a                                    ; $78da: $02
    inc d                                         ; $78db: $14
    inc bc                                        ; $78dc: $03
    inc d                                         ; $78dd: $14
    cp $00                                        ; $78de: $fe $00
    nop                                           ; $78e0: $00
    inc d                                         ; $78e1: $14
    ld bc, $000a                                  ; $78e2: $01 $0a $00
    jr z, jr_077_78e9                             ; $78e5: $28 $02

    rrca                                          ; $78e7: $0f
    inc bc                                        ; $78e8: $03

jr_077_78e9:
    rrca                                          ; $78e9: $0f
    ld [bc], a                                    ; $78ea: $02
    rrca                                          ; $78eb: $0f
    inc bc                                        ; $78ec: $03
    rrca                                          ; $78ed: $0f
    ld [bc], a                                    ; $78ee: $02
    rrca                                          ; $78ef: $0f
    inc bc                                        ; $78f0: $03
    rrca                                          ; $78f1: $0f
    cp $00                                        ; $78f2: $fe $00
    nop                                           ; $78f4: $00
    inc d                                         ; $78f5: $14
    ld bc, $0014                                  ; $78f6: $01 $14 $00
    inc d                                         ; $78f9: $14
    ld bc, $0214                                  ; $78fa: $01 $14 $02
    inc d                                         ; $78fd: $14
    inc bc                                        ; $78fe: $03
    inc d                                         ; $78ff: $14
    ld [bc], a                                    ; $7900: $02
    inc d                                         ; $7901: $14
    inc bc                                        ; $7902: $03
    inc d                                         ; $7903: $14
    cp $00                                        ; $7904: $fe $00
    nop                                           ; $7906: $00
    rrca                                          ; $7907: $0f
    ld bc, $020f                                  ; $7908: $01 $0f $02
    ld a, [bc]                                    ; $790b: $0a
    inc bc                                        ; $790c: $03
    ld a, [bc]                                    ; $790d: $0a
    ld [bc], a                                    ; $790e: $02
    ld a, [bc]                                    ; $790f: $0a
    inc bc                                        ; $7910: $03
    ld a, [bc]                                    ; $7911: $0a
    ld [bc], a                                    ; $7912: $02
    ld a, [bc]                                    ; $7913: $0a
    inc bc                                        ; $7914: $03
    ld a, [bc]                                    ; $7915: $0a
    cp $00                                        ; $7916: $fe $00
    nop                                           ; $7918: $00
    rrca                                          ; $7919: $0f
    ld bc, $020f                                  ; $791a: $01 $0f $02
    rrca                                          ; $791d: $0f
    inc bc                                        ; $791e: $03
    rrca                                          ; $791f: $0f
    cp $00                                        ; $7920: $fe $00
    nop                                           ; $7922: $00
    jr z, jr_077_7926                             ; $7923: $28 $01

    ld a, [bc]                                    ; $7925: $0a

jr_077_7926:
    ld [bc], a                                    ; $7926: $02
    ld a, [bc]                                    ; $7927: $0a
    inc bc                                        ; $7928: $03
    inc a                                         ; $7929: $3c
    ld bc, $fe0f                                  ; $792a: $01 $0f $fe
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    rrca                                          ; $792f: $0f
    ld bc, $020f                                  ; $7930: $01 $0f $02
    rrca                                          ; $7933: $0f
    inc bc                                        ; $7934: $03
    rrca                                          ; $7935: $0f
    inc b                                         ; $7936: $04

jr_077_7937:
    jr z, jr_077_7937                             ; $7937: $28 $fe

    nop                                           ; $7939: $00
    nop                                           ; $793a: $00
    rrca                                          ; $793b: $0f
    ld bc, $020f                                  ; $793c: $01 $0f $02
    rrca                                          ; $793f: $0f
    inc bc                                        ; $7940: $03
    rrca                                          ; $7941: $0f
    cp $04                                        ; $7942: $fe $04
    nop                                           ; $7944: $00
    jr z, jr_077_7948                             ; $7945: $28 $01

    rrca                                          ; $7947: $0f

jr_077_7948:
    ld [bc], a                                    ; $7948: $02
    rrca                                          ; $7949: $0f
    inc bc                                        ; $794a: $03
    inc a                                         ; $794b: $3c
    cp $00                                        ; $794c: $fe $00
    nop                                           ; $794e: $00
    rrca                                          ; $794f: $0f
    ld bc, $020f                                  ; $7950: $01 $0f $02
    rrca                                          ; $7953: $0f
    ld bc, $020f                                  ; $7954: $01 $0f $02
    rrca                                          ; $7957: $0f
    ld bc, $020f                                  ; $7958: $01 $0f $02
    rrca                                          ; $795b: $0f
    ld bc, $020f                                  ; $795c: $01 $0f $02
    rrca                                          ; $795f: $0f
    ld bc, $fe0f                                  ; $7960: $01 $0f $fe
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    rrca                                          ; $7965: $0f
    ld bc, $020f                                  ; $7966: $01 $0f $02
    rrca                                          ; $7969: $0f
    inc bc                                        ; $796a: $03
    rrca                                          ; $796b: $0f
    cp $00                                        ; $796c: $fe $00
    nop                                           ; $796e: $00
    rrca                                          ; $796f: $0f
    ld bc, $020f                                  ; $7970: $01 $0f $02
    rrca                                          ; $7973: $0f
    inc bc                                        ; $7974: $03
    rrca                                          ; $7975: $0f
    ld [bc], a                                    ; $7976: $02
    rrca                                          ; $7977: $0f
    inc bc                                        ; $7978: $03
    rrca                                          ; $7979: $0f
    ld [bc], a                                    ; $797a: $02
    rrca                                          ; $797b: $0f
    inc bc                                        ; $797c: $03
    rrca                                          ; $797d: $0f
    cp $00                                        ; $797e: $fe $00
    nop                                           ; $7980: $00
    inc d                                         ; $7981: $14
    ld bc, $020f                                  ; $7982: $01 $0f $02
    rrca                                          ; $7985: $0f
    ld bc, $020f                                  ; $7986: $01 $0f $02
    rrca                                          ; $7989: $0f
    ld bc, $020f                                  ; $798a: $01 $0f $02
    rrca                                          ; $798d: $0f
    ld bc, $020f                                  ; $798e: $01 $0f $02
    rrca                                          ; $7991: $0f
    cp $00                                        ; $7992: $fe $00
    nop                                           ; $7994: $00
    inc d                                         ; $7995: $14
    ld bc, $0214                                  ; $7996: $01 $14 $02
    rrca                                          ; $7999: $0f
    inc bc                                        ; $799a: $03
    ld a, [bc]                                    ; $799b: $0a
    ld [bc], a                                    ; $799c: $02
    ld a, [bc]                                    ; $799d: $0a
    inc bc                                        ; $799e: $03
    ld a, [bc]                                    ; $799f: $0a
    ld [bc], a                                    ; $79a0: $02
    ld a, [bc]                                    ; $79a1: $0a
    inc bc                                        ; $79a2: $03
    ld a, [bc]                                    ; $79a3: $0a
    ld [bc], a                                    ; $79a4: $02
    ld a, [bc]                                    ; $79a5: $0a
    inc bc                                        ; $79a6: $03
    ld a, [bc]                                    ; $79a7: $0a
    cp $08                                        ; $79a8: $fe $08
    nop                                           ; $79aa: $00
    rrca                                          ; $79ab: $0f
    ld bc, $020f                                  ; $79ac: $01 $0f $02
    rrca                                          ; $79af: $0f
    ld bc, $030f                                  ; $79b0: $01 $0f $03
    rrca                                          ; $79b3: $0f
    ld bc, $030f                                  ; $79b4: $01 $0f $03
    rrca                                          ; $79b7: $0f
    ld bc, $030f                                  ; $79b8: $01 $0f $03
    rrca                                          ; $79bb: $0f
    ld bc, $030f                                  ; $79bc: $01 $0f $03
    rrca                                          ; $79bf: $0f
    ld bc, $fe0f                                  ; $79c0: $01 $0f $fe
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    ld e, $01                                     ; $79c5: $1e $01
    rrca                                          ; $79c7: $0f
    ld [bc], a                                    ; $79c8: $02
    ld e, $03                                     ; $79c9: $1e $03
    dec l                                         ; $79cb: $2d
    cp $00                                        ; $79cc: $fe $00
    nop                                           ; $79ce: $00
    ld e, $01                                     ; $79cf: $1e $01
    ld a, [bc]                                    ; $79d1: $0a
    ld [bc], a                                    ; $79d2: $02
    ld a, [bc]                                    ; $79d3: $0a
    inc bc                                        ; $79d4: $03
    inc a                                         ; $79d5: $3c
    ld [bc], a                                    ; $79d6: $02
    ld a, [bc]                                    ; $79d7: $0a
    ld bc, $fe0a                                  ; $79d8: $01 $0a $fe
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    ld e, $01                                     ; $79dd: $1e $01
    ld [$1e02], sp                                ; $79df: $08 $02 $1e
    inc bc                                        ; $79e2: $03
    dec l                                         ; $79e3: $2d
    ld [bc], a                                    ; $79e4: $02
    ld e, $03                                     ; $79e5: $1e $03
    dec l                                         ; $79e7: $2d
    ld [bc], a                                    ; $79e8: $02
    ld e, $01                                     ; $79e9: $1e $01
    ld [$00fe], sp                                ; $79eb: $08 $fe $00
    nop                                           ; $79ee: $00
    dec l                                         ; $79ef: $2d
    ld bc, $020f                                  ; $79f0: $01 $0f $02
    rrca                                          ; $79f3: $0f
    inc bc                                        ; $79f4: $03
    ld e, $02                                     ; $79f5: $1e $02
    rrca                                          ; $79f7: $0f
    ld bc, $020f                                  ; $79f8: $01 $0f $02
    rrca                                          ; $79fb: $0f
    inc bc                                        ; $79fc: $03
    ld e, $fe                                     ; $79fd: $1e $fe
    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    inc c                                         ; $7a01: $0c
    ld bc, $000c                                  ; $7a02: $01 $0c $00
    inc c                                         ; $7a05: $0c
    ld bc, $020c                                  ; $7a06: $01 $0c $02
    inc c                                         ; $7a09: $0c
    ld bc, $000c                                  ; $7a0a: $01 $0c $00
    inc c                                         ; $7a0d: $0c
    inc bc                                        ; $7a0e: $03
    inc c                                         ; $7a0f: $0c
    cp $00                                        ; $7a10: $fe $00
    nop                                           ; $7a12: $00
    inc d                                         ; $7a13: $14
    ld bc, $0014                                  ; $7a14: $01 $14 $00
    inc d                                         ; $7a17: $14
    ld bc, $0014                                  ; $7a18: $01 $14 $00
    inc d                                         ; $7a1b: $14
    ld bc, $0314                                  ; $7a1c: $01 $14 $03
    ld e, $02                                     ; $7a1f: $1e $02
    ld [hl-], a                                   ; $7a21: $32
    cp $00                                        ; $7a22: $fe $00
    nop                                           ; $7a24: $00
    inc d                                         ; $7a25: $14
    ld bc, $0214                                  ; $7a26: $01 $14 $02
    ld [$3c03], sp                                ; $7a29: $08 $03 $3c
    ld [bc], a                                    ; $7a2c: $02
    ld a, [bc]                                    ; $7a2d: $0a
    cp $00                                        ; $7a2e: $fe $00
    nop                                           ; $7a30: $00
    inc d                                         ; $7a31: $14
    ld bc, $020f                                  ; $7a32: $01 $0f $02
    ld a, [bc]                                    ; $7a35: $0a
    inc bc                                        ; $7a36: $03
    rrca                                          ; $7a37: $0f
    ld [bc], a                                    ; $7a38: $02
    ld a, [bc]                                    ; $7a39: $0a
    ld bc, $020f                                  ; $7a3a: $01 $0f $02
    ld a, [bc]                                    ; $7a3d: $0a
    inc bc                                        ; $7a3e: $03
    rrca                                          ; $7a3f: $0f
    ld [bc], a                                    ; $7a40: $02
    ld a, [bc]                                    ; $7a41: $0a
    ld bc, $041e                                  ; $7a42: $01 $1e $04
    ld e, $01                                     ; $7a45: $1e $01
    ld [hl-], a                                   ; $7a47: $32
    cp $02                                        ; $7a48: $fe $02
    nop                                           ; $7a4a: $00
    inc d                                         ; $7a4b: $14
    ld bc, $0014                                  ; $7a4c: $01 $14 $00
    inc d                                         ; $7a4f: $14
    ld bc, $0014                                  ; $7a50: $01 $14 $00
    inc d                                         ; $7a53: $14
    ld bc, $0214                                  ; $7a54: $01 $14 $02
    rrca                                          ; $7a57: $0f
    inc bc                                        ; $7a58: $03
    jr z, @+$04                                   ; $7a59: $28 $02

    rrca                                          ; $7a5b: $0f
    cp $00                                        ; $7a5c: $fe $00
    nop                                           ; $7a5e: $00
    rrca                                          ; $7a5f: $0f
    ld bc, $000f                                  ; $7a60: $01 $0f $00
    rrca                                          ; $7a63: $0f
    ld bc, $020f                                  ; $7a64: $01 $0f $02
    rrca                                          ; $7a67: $0f
    inc bc                                        ; $7a68: $03
    rrca                                          ; $7a69: $0f
    ld [bc], a                                    ; $7a6a: $02
    rrca                                          ; $7a6b: $0f
    inc bc                                        ; $7a6c: $03
    rrca                                          ; $7a6d: $0f
    cp $00                                        ; $7a6e: $fe $00
    nop                                           ; $7a70: $00
    ld a, [bc]                                    ; $7a71: $0a
    ld bc, $000a                                  ; $7a72: $01 $0a $00
    ld a, [bc]                                    ; $7a75: $0a
    ld bc, $000a                                  ; $7a76: $01 $0a $00
    ld a, [bc]                                    ; $7a79: $0a
    ld bc, $020a                                  ; $7a7a: $01 $0a $02
    rrca                                          ; $7a7d: $0f
    inc bc                                        ; $7a7e: $03
    inc a                                         ; $7a7f: $3c
    cp $00                                        ; $7a80: $fe $00
    nop                                           ; $7a82: $00
    ld e, $01                                     ; $7a83: $1e $01
    rrca                                          ; $7a85: $0f
    nop                                           ; $7a86: $00
    rrca                                          ; $7a87: $0f
    ld bc, $000f                                  ; $7a88: $01 $0f $00
    rrca                                          ; $7a8b: $0f
    ld [bc], a                                    ; $7a8c: $02
    ld a, [bc]                                    ; $7a8d: $0a
    inc bc                                        ; $7a8e: $03
    inc a                                         ; $7a8f: $3c
    ld [bc], a                                    ; $7a90: $02
    ld a, [bc]                                    ; $7a91: $0a
    cp $00                                        ; $7a92: $fe $00

    db $00, $1e, $01, $0a

    ld [bc], a                                    ; $7a98: $02
    ld e, $03                                     ; $7a99: $1e $03
    rrca                                          ; $7a9b: $0f
    ld [bc], a                                    ; $7a9c: $02
    rrca                                          ; $7a9d: $0f
    inc bc                                        ; $7a9e: $03
    rrca                                          ; $7a9f: $0f
    ld [bc], a                                    ; $7aa0: $02
    rrca                                          ; $7aa1: $0f
    ld bc, $fe0a                                  ; $7aa2: $01 $0a $fe
    nop                                           ; $7aa5: $00

    db $00, $2d, $01, $0a

    ld [bc], a                                    ; $7aaa: $02
    ld e, $03                                     ; $7aab: $1e $03
    ld e, $02                                     ; $7aad: $1e $02
    ld e, $03                                     ; $7aaf: $1e $03
    ld e, $fe                                     ; $7ab1: $1e $fe
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    inc d                                         ; $7ab5: $14
    ld bc, $0214                                  ; $7ab6: $01 $14 $02
    inc d                                         ; $7ab9: $14
    inc bc                                        ; $7aba: $03
    inc d                                         ; $7abb: $14
    cp $00                                        ; $7abc: $fe $00
    nop                                           ; $7abe: $00
    inc d                                         ; $7abf: $14
    ld bc, $020a                                  ; $7ac0: $01 $0a $02
    inc d                                         ; $7ac3: $14
    inc bc                                        ; $7ac4: $03
    ld b, $04                                     ; $7ac5: $06 $04
    ld b, $03                                     ; $7ac7: $06 $03
    ld b, $04                                     ; $7ac9: $06 $04
    inc d                                         ; $7acb: $14
    cp $00                                        ; $7acc: $fe $00
    nop                                           ; $7ace: $00
    ld [$0801], sp                                ; $7acf: $08 $01 $08
    ld [bc], a                                    ; $7ad2: $02
    ld [$0803], sp                                ; $7ad3: $08 $03 $08
    inc b                                         ; $7ad6: $04
    ld [$0805], sp                                ; $7ad7: $08 $05 $08
    ld b, $08                                     ; $7ada: $06 $08
    rlca                                          ; $7adc: $07
    ld [$00fe], sp                                ; $7add: $08 $fe $00
    nop                                           ; $7ae0: $00
    ld e, $01                                     ; $7ae1: $1e $01
    ld a, [bc]                                    ; $7ae3: $0a
    ld [bc], a                                    ; $7ae4: $02
    rrca                                          ; $7ae5: $0f
    ld bc, $020a                                  ; $7ae6: $01 $0a $02
    inc d                                         ; $7ae9: $14
    inc bc                                        ; $7aea: $03

jr_077_7aeb:
    jr z, jr_077_7aeb                             ; $7aeb: $28 $fe

    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    ld b, $01                                     ; $7aef: $06 $01
    ld b, $00                                     ; $7af1: $06 $00
    ld b, $01                                     ; $7af3: $06 $01
    ld b, $00                                     ; $7af5: $06 $00
    ld b, $01                                     ; $7af7: $06 $01
    ld b, $02                                     ; $7af9: $06 $02
    inc d                                         ; $7afb: $14
    inc bc                                        ; $7afc: $03
    ld a, [bc]                                    ; $7afd: $0a
    ld [bc], a                                    ; $7afe: $02
    inc d                                         ; $7aff: $14
    inc bc                                        ; $7b00: $03

jr_077_7b01:
    jr z, jr_077_7b01                             ; $7b01: $28 $fe

    nop                                           ; $7b03: $00
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

Jump_077_7e7f:
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

Jump_077_7ec3:
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

Jump_077_7f8e:
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

Jump_077_7fe2:
    rst $38                                       ; $7fe2: $ff

Call_077_7fe3:
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff

Jump_077_7fe5:
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

Jump_077_7fff:
    rst $38                                       ; $7fff: $ff
