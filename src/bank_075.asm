; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $075", ROMX[$4000], BANK[$75]

    ld [$2040], sp                                ; $4000: $08 $40 $20
    ld e, b                                       ; $4003: $58
    scf                                           ; $4004: $37
    ld h, b                                       ; $4005: $60
    inc bc                                        ; $4006: $03
    halt                                          ; $4007: $76
    jr nz, jr_075_404a                            ; $4008: $20 $40

    db $10                                        ; $400a: $10
    ld b, [hl]                                    ; $400b: $46
    ld b, b                                       ; $400c: $40
    ld c, e                                       ; $400d: $4b
    jr nz, jr_075_4060                            ; $400e: $20 $50

    ret nz                                        ; $4010: $c0

    ld d, e                                       ; $4011: $53
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
    ld c, a                                       ; $4020: $4f
    rst $38                                       ; $4021: $ff
    rst $38                                       ; $4022: $ff
    rst $38                                       ; $4023: $ff
    nop                                           ; $4024: $00
    cp $ea                                        ; $4025: $fe $ea
    ldh a, [$eb]                                  ; $4027: $f0 $eb
    inc bc                                        ; $4029: $03
    pop hl                                        ; $402a: $e1
    ldh [rIE], a                                  ; $402b: $e0 $ff
    nop                                           ; $402d: $00
    ld l, $2e                                     ; $402e: $2e $2e
    inc a                                         ; $4030: $3c
    inc a                                         ; $4031: $3c
    ccf                                           ; $4032: $3f
    ccf                                           ; $4033: $3f
    rra                                           ; $4034: $1f
    rra                                           ; $4035: $1f
    rra                                           ; $4036: $1f
    ccf                                           ; $4037: $3f
    scf                                           ; $4038: $37
    ld sp, hl                                     ; $4039: $f9
    jp hl                                         ; $403a: $e9


    ldh a, [$e1]                                  ; $403b: $f0 $e1
    cp $e9                                        ; $403d: $fe $e9
    ldh a, [$e9]                                  ; $403f: $f0 $e9
    rst $38                                       ; $4041: $ff
    rlca                                          ; $4042: $07
    rlca                                          ; $4043: $07
    add hl, de                                    ; $4044: $19
    rra                                           ; $4045: $1f
    rst $38                                       ; $4046: $ff
    rst $38                                       ; $4047: $ff
    ld e, h                                       ; $4048: $5c
    ld e, h                                       ; $4049: $5c

jr_075_404a:
    rst $38                                       ; $404a: $ff
    ld a, b                                       ; $404b: $78
    ld a, b                                       ; $404c: $78
    ld a, [hl]                                    ; $404d: $7e
    ld a, [hl]                                    ; $404e: $7e
    ld a, $3e                                     ; $404f: $3e $3e
    ld a, [hl]                                    ; $4051: $7e
    ld l, [hl]                                    ; $4052: $6e
    ld l, a                                       ; $4053: $6f
    ld a, [c]                                     ; $4054: $f2
    jp nc, $f0f0                                  ; $4055: $d2 $f0 $f0

    and b                                         ; $4058: $a0
    ld [$f907], a                                 ; $4059: $ea $07 $f9
    ldh [$e0], a                                  ; $405c: $e0 $e0
    rst $38                                       ; $405e: $ff
    rst $38                                       ; $405f: $ff

jr_075_4060:
    ld e, h                                       ; $4060: $5c
    rst $38                                       ; $4061: $ff
    ld a, b                                       ; $4062: $78
    rst $38                                       ; $4063: $ff
    ld a, [hl]                                    ; $4064: $7e
    rst $38                                       ; $4065: $ff
    ld a, $3f                                     ; $4066: $3e $3f
    rst $38                                       ; $4068: $ff
    ld l, [hl]                                    ; $4069: $6e
    rst $38                                       ; $406a: $ff
    jp nc, $f0ff                                  ; $406b: $d2 $ff $f0

    or d                                          ; $406e: $b2
    db $eb                                        ; $406f: $eb
    or b                                          ; $4070: $b0
    ldh [$fe], a                                  ; $4071: $e0 $fe
    cp $ec                                        ; $4073: $fe $ec
    db $fc                                        ; $4075: $fc
    rrca                                          ; $4076: $0f
    ldh a, [$1f]                                  ; $4077: $f0 $1f
    ldh [$3f], a                                  ; $4079: $e0 $3f
    ldh [rIE], a                                  ; $407b: $e0 $ff
    ccf                                           ; $407d: $3f
    call z, $d07f                                 ; $407e: $cc $7f $d0
    ld a, a                                       ; $4081: $7f
    call z, $9f7f                                 ; $4082: $cc $7f $9f
    rst $38                                       ; $4085: $ff
    di                                            ; $4086: $f3
    ld hl, sp-$08                                 ; $4087: $f8 $f8
    inc e                                         ; $4089: $1c
    db $fc                                        ; $408a: $fc
    ld [bc], a                                    ; $408b: $02
    cp $02                                        ; $408c: $fe $02
    rst $38                                       ; $408e: $ff
    cp $61                                        ; $408f: $fe $61
    rst $38                                       ; $4091: $ff
    ld de, $c0ff                                  ; $4092: $11 $ff $c0
    rst $38                                       ; $4095: $ff
    ldh [$f5], a                                  ; $4096: $e0 $f5
    ccf                                           ; $4098: $3f
    ld [hl], d                                    ; $4099: $72
    jp hl                                         ; $409a: $e9


    add b                                         ; $409b: $80
    rst $38                                       ; $409c: $ff
    ldh [rNR41], a                                ; $409d: $e0 $20
    ccf                                           ; $409f: $3f
    ld b, b                                       ; $40a0: $40
    ld a, a                                       ; $40a1: $7f
    rst $38                                       ; $40a2: $ff
    ld e, b                                       ; $40a3: $58
    ld a, a                                       ; $40a4: $7f
    and l                                         ; $40a5: $a5
    rst $38                                       ; $40a6: $ff
    add b                                         ; $40a7: $80
    rst $38                                       ; $40a8: $ff
    sbc c                                         ; $40a9: $99

jr_075_40aa:
    rst $38                                       ; $40aa: $ff
    rst $38                                       ; $40ab: $ff
    ccf                                           ; $40ac: $3f
    and $3f                                       ; $40ad: $e6 $3f
    rst $28                                       ; $40af: $ef
    jr c, jr_075_40aa                             ; $40b0: $38 $f8

    inc b                                         ; $40b2: $04
    db $fc                                        ; $40b3: $fc
    rst $30                                       ; $40b4: $f7
    add $fe                                       ; $40b5: $c6 $fe
    inc hl                                        ; $40b7: $23
    scf                                           ; $40b8: $37
    ldh [$81], a                                  ; $40b9: $e0 $81
    rst $38                                       ; $40bb: $ff
    pop bc                                        ; $40bc: $c1
    ld a, a                                       ; $40bd: $7f
    ei                                            ; $40be: $fb
    pop bc                                        ; $40bf: $c1
    ld a, a                                       ; $40c0: $7f
    ld [de], a                                    ; $40c1: $12
    and $c0                                       ; $40c2: $e6 $c0
    ccf                                           ; $40c4: $3f
    ld hl, sp+$07                                 ; $40c5: $f8 $07
    cp $eb                                        ; $40c7: $fe $eb
    add a                                         ; $40c9: $87
    ld sp, hl                                     ; $40ca: $f9
    ld [bc], a                                    ; $40cb: $02
    db $ec                                        ; $40cc: $ec
    add b                                         ; $40cd: $80
    ld a, [c]                                     ; $40ce: $f2
    jp z, $ff01                                   ; $40cf: $ca $01 $ff

    inc bc                                        ; $40d2: $03
    rst $18                                       ; $40d3: $df
    ldh [$3f], a                                  ; $40d4: $e0 $3f
    ret nz                                        ; $40d6: $c0

    ld a, a                                       ; $40d7: $7f
    ret c                                         ; $40d8: $d8

    or b                                          ; $40d9: $b0
    ld [c], a                                     ; $40da: $e2
    sub b                                         ; $40db: $90
    rst $38                                       ; $40dc: $ff
    ld l, a                                       ; $40dd: $6f
    add hl, bc                                    ; $40de: $09
    rst $38                                       ; $40df: $ff

Jump_075_40e0:
    ccf                                           ; $40e0: $3f

Call_075_40e1:
    rst $38                                       ; $40e1: $ff

Jump_075_40e2:
    jp z, $fce0                                   ; $40e2: $ca $e0 $fc

    rst $00                                       ; $40e5: $c7
    or b                                          ; $40e6: $b0
    ld [c], a                                     ; $40e7: $e2
    push af                                       ; $40e8: $f5
    ld bc, $e0ae                                  ; $40e9: $01 $ae $e0
    ld bc, $c4f2                                  ; $40ec: $01 $f2 $c4
    ret nz                                        ; $40ef: $c0

    ret nz                                        ; $40f0: $c0

    jr c, @-$06                                   ; $40f1: $38 $f8

    cp a                                          ; $40f3: $bf
    ld b, $fe                                     ; $40f4: $06 $fe
    rlca                                          ; $40f6: $07
    db $fd                                        ; $40f7: $fd
    adc h                                         ; $40f8: $8c
    ei                                            ; $40f9: $fb
    ld [c], a                                     ; $40fa: $e2
    set 4, b                                      ; $40fb: $cb $e0
    ld d, l                                       ; $40fd: $55
    ldh [$a2], a                                  ; $40fe: $e0 $a2
    pop bc                                        ; $4100: $c1
    ld a, a                                       ; $4101: $7f
    cp $e0                                        ; $4102: $fe $e0
    ccf                                           ; $4104: $3f
    cp $e0                                        ; $4105: $fe $e0
    rra                                           ; $4107: $1f
    cp $e0                                        ; $4108: $fe $e0
    cp b                                          ; $410a: $b8
    xor b                                         ; $410b: $a8
    db $e4                                        ; $410c: $e4
    rst $00                                       ; $410d: $c7
    ldh [$ee], a                                  ; $410e: $e0 $ee
    jp $f79f                                      ; $4110: $c3 $9f $f7


    adc h                                         ; $4113: $8c
    xor b                                         ; $4114: $a8
    ldh [rNR10], a                                ; $4115: $e0 $10
    cp a                                          ; $4117: $bf
    rst $38                                       ; $4118: $ff
    adc e                                         ; $4119: $8b
    rst $38                                       ; $411a: $ff
    db $f4                                        ; $411b: $f4
    rst $38                                       ; $411c: $ff
    adc a                                         ; $411d: $8f
    ld c, d                                       ; $411e: $4a
    ldh [$e0], a                                  ; $411f: $e0 $e0
    db $eb                                        ; $4121: $eb
    cp a                                          ; $4122: $bf
    ret nz                                        ; $4123: $c0

    adc e                                         ; $4124: $8b
    ret nz                                        ; $4125: $c0

    add b                                         ; $4126: $80
    add a                                         ; $4127: $87
    ret nz                                        ; $4128: $c0

    db $10                                        ; $4129: $10
    rst $38                                       ; $412a: $ff
    ld [c], a                                     ; $412b: $e2
    db $ec                                        ; $412c: $ec
    or $e1                                        ; $412d: $f6 $e1
    rst $38                                       ; $412f: $ff
    ld [c], a                                     ; $4130: $e2
    ld b, b                                       ; $4131: $40
    ret nz                                        ; $4132: $c0

    cp $e1                                        ; $4133: $fe $e1
    add b                                         ; $4135: $80
    add b                                         ; $4136: $80
    nop                                           ; $4137: $00
    rst $38                                       ; $4138: $ff
    nop                                           ; $4139: $00
    ld bc, $0201                                  ; $413a: $01 $01 $02
    inc bc                                        ; $413d: $03
    add [hl]                                      ; $413e: $86
    rlca                                          ; $413f: $07
    adc c                                         ; $4140: $89
    rst $38                                       ; $4141: $ff
    rrca                                          ; $4142: $0f
    push de                                       ; $4143: $d5
    dec de                                        ; $4144: $1b
    reti                                          ; $4145: $d9


    rla                                           ; $4146: $17
    pop hl                                        ; $4147: $e1
    ccf                                           ; $4148: $3f
    pop hl                                        ; $4149: $e1
    rst $38                                       ; $414a: $ff
    ccf                                           ; $414b: $3f
    add hl, de                                    ; $414c: $19
    rst $38                                       ; $414d: $ff
    ld [de], a                                    ; $414e: $12
    rst $38                                       ; $414f: $ff
    ld hl, $16ff                                  ; $4150: $21 $ff $16
    cp a                                          ; $4153: $bf
    rst $38                                       ; $4154: $ff
    adc b                                         ; $4155: $88
    rst $38                                       ; $4156: $ff
    ld h, b                                       ; $4157: $60
    rst $38                                       ; $4158: $ff
    rra                                           ; $4159: $1f
    ld a, [bc]                                    ; $415a: $0a
    ldh [$81], a                                  ; $415b: $e0 $81
    ei                                            ; $415d: $fb
    rst $38                                       ; $415e: $ff
    rlca                                          ; $415f: $07
    cpl                                           ; $4160: $2f
    ret nz                                        ; $4161: $c0

    ld b, [hl]                                    ; $4162: $46
    rst $38                                       ; $4163: $ff
    jr nz, @+$01                                  ; $4164: $20 $ff

    ld h, l                                       ; $4166: $65
    rst $38                                       ; $4167: $ff
    rst $38                                       ; $4168: $ff
    add [hl]                                      ; $4169: $86
    rst $38                                       ; $416a: $ff
    dec c                                         ; $416b: $0d
    rst $38                                       ; $416c: $ff
    ld c, a                                       ; $416d: $4f
    rst $38                                       ; $416e: $ff
    ld a, h                                       ; $416f: $7c
    rst $38                                       ; $4170: $ff
    rst $20                                       ; $4171: $e7
    or b                                          ; $4172: $b0
    rst $08                                       ; $4173: $cf
    ldh [$df], a                                  ; $4174: $e0 $df
    ldh a, [$bf]                                  ; $4176: $f0 $bf
    ldh [rIE], a                                  ; $4178: $e0 $ff
    rra                                           ; $417a: $1f
    ret nz                                        ; $417b: $c0

    cp a                                          ; $417c: $bf
    ret nz                                        ; $417d: $c0

    ld a, a                                       ; $417e: $7f
    rst $38                                       ; $417f: $ff
    ldh [$1f], a                                  ; $4180: $e0 $1f
    ld a, a                                       ; $4182: $7f
    ld hl, sp+$47                                 ; $4183: $f8 $47
    cp h                                          ; $4185: $bc
    inc bc                                        ; $4186: $03
    cp $03                                        ; $4187: $fe $03
    cp $7b                                        ; $4189: $fe $7b
    pop hl                                        ; $418b: $e1
    rst $38                                       ; $418c: $ff
    ld bc, $ffff                                  ; $418d: $01 $ff $ff
    rlca                                          ; $4190: $07
    ld a, [$720f]                                 ; $4191: $fa $0f $72
    rra                                           ; $4194: $1f
    rst $38                                       ; $4195: $ff
    ld [hl], l                                    ; $4196: $75
    dec de                                        ; $4197: $1b
    dec l                                         ; $4198: $2d
    inc sp                                        ; $4199: $33
    add hl, hl                                    ; $419a: $29
    scf                                           ; $419b: $37
    ld hl, $f73f                                  ; $419c: $21 $3f $f7
    ld hl, $183f                                  ; $419f: $21 $3f $18
    or b                                          ; $41a2: $b0
    ld [c], a                                     ; $41a3: $e2
    ld d, [hl]                                    ; $41a4: $56
    rst $38                                       ; $41a5: $ff
    jp hl                                         ; $41a6: $e9


    cp a                                          ; $41a7: $bf
    cp a                                          ; $41a8: $bf
    rst $38                                       ; $41a9: $ff
    sbc $ff                                       ; $41aa: $de $ff
    and b                                         ; $41ac: $a0
    rst $38                                       ; $41ad: $ff
    sbc $b0                                       ; $41ae: $de $b0
    pop hl                                        ; $41b0: $e1
    ld b, b                                       ; $41b1: $40
    rst $38                                       ; $41b2: $ff
    rst $38                                       ; $41b3: $ff
    ld h, $ff                                     ; $41b4: $26 $ff
    ldh [rIE], a                                  ; $41b6: $e0 $ff
    push hl                                       ; $41b8: $e5
    ccf                                           ; $41b9: $3f
    rst $20                                       ; $41ba: $e7
    rst $38                                       ; $41bb: $ff
    rst $38                                       ; $41bc: $ff
    db $ed                                        ; $41bd: $ed
    ld a, a                                       ; $41be: $7f
    ld a, h                                       ; $41bf: $7c
    rst $30                                       ; $41c0: $f7
    ld l, h                                       ; $41c1: $6c
    di                                            ; $41c2: $f3
    ld hl, sp-$09                                 ; $41c3: $f8 $f7
    rst $20                                       ; $41c5: $e7
    cp b                                          ; $41c6: $b8
    rst $38                                       ; $41c7: $ff
    xor h                                         ; $41c8: $ac
    ldh [$9f], a                                  ; $41c9: $e0 $9f
    ld h, b                                       ; $41cb: $60
    rst $18                                       ; $41cc: $df
    ldh [rIE], a                                  ; $41cd: $e0 $ff
    cp a                                          ; $41cf: $bf
    jr @-$06                                      ; $41d0: $18 $f8

    call nz, $e23c                                ; $41d2: $c4 $3c $e2
    ld e, $22                                     ; $41d5: $1e $22
    db $fd                                        ; $41d7: $fd
    sbc $2d                                       ; $41d8: $de $2d
    pop hl                                        ; $41da: $e1
    add hl, bc                                    ; $41db: $09
    rst $38                                       ; $41dc: $ff
    dec b                                         ; $41dd: $05
    rst $38                                       ; $41de: $ff
    rrca                                          ; $41df: $0f
    nop                                           ; $41e0: $00
    sub a                                         ; $41e1: $97

jr_075_41e2:
    rrca                                          ; $41e2: $0f
    nop                                           ; $41e3: $00
    rlca                                          ; $41e4: $07
    cp $e0                                        ; $41e5: $fe $e0
    inc bc                                        ; $41e7: $03
    cp $e0                                        ; $41e8: $fe $e0
    ld d, h                                       ; $41ea: $54
    pop hl                                        ; $41eb: $e1
    ld hl, sp-$02                                 ; $41ec: $f8 $fe
    ld b, b                                       ; $41ee: $40
    ret nz                                        ; $41ef: $c0

    pop hl                                        ; $41f0: $e1
    ccf                                           ; $41f1: $3f
    ld [c], a                                     ; $41f2: $e2
    ccf                                           ; $41f3: $3f
    jp nz, $e27f                                  ; $41f4: $c2 $7f $e2

jr_075_41f7:
    cp a                                          ; $41f7: $bf
    rst $38                                       ; $41f8: $ff
    inc de                                        ; $41f9: $13
    rst $38                                       ; $41fa: $ff
    db $d3                                        ; $41fb: $d3
    rst $38                                       ; $41fc: $ff
    ret z                                         ; $41fd: $c8

    or d                                          ; $41fe: $b2
    ldh [rNR41], a                                ; $41ff: $e0 $20
    cp $10                                        ; $4201: $fe $10
    ldh [$1f], a                                  ; $4203: $e0 $1f
    rst $38                                       ; $4205: $ff
    jr c, jr_075_41f7                             ; $4206: $38 $ef

    ld [hl], b                                    ; $4208: $70
    rst $18                                       ; $4209: $df
    rst $38                                       ; $420a: $ff
    rst $28                                       ; $420b: $ef
    sbc a                                         ; $420c: $9f
    ld b, $fe                                     ; $420d: $06 $fe
    inc bc                                        ; $420f: $03
    jp z, $18e0                                   ; $4210: $ca $e0 $18

    rst $38                                       ; $4213: $ff
    ld hl, sp-$01                                 ; $4214: $f8 $ff
    rst $28                                       ; $4216: $ef
    ld [hl], d                                    ; $4217: $72
    rst $18                                       ; $4218: $df
    db $e3                                        ; $4219: $e3
    cp a                                          ; $421a: $bf
    db $ed                                        ; $421b: $ed
    ccf                                           ; $421c: $3f
    ld a, h                                       ; $421d: $7c
    ei                                            ; $421e: $fb
    ld a, h                                       ; $421f: $7c
    add d                                         ; $4220: $82
    ld h, [hl]                                    ; $4221: $66
    ldh [$31], a                                  ; $4222: $e0 $31
    rst $38                                       ; $4224: $ff
    ld b, c                                       ; $4225: $41
    rst $38                                       ; $4226: $ff
    pop bc                                        ; $4227: $c1
    cp $4e                                        ; $4228: $fe $4e
    ret nz                                        ; $422a: $c0

    pop hl                                        ; $422b: $e1
    rst $38                                       ; $422c: $ff
    db $e3                                        ; $422d: $e3
    ccf                                           ; $422e: $3f
    rst $20                                       ; $422f: $e7
    ccf                                           ; $4230: $3f
    db $e3                                        ; $4231: $e3
    ei                                            ; $4232: $fb
    ccf                                           ; $4233: $3f
    pop af                                        ; $4234: $f1
    cp $a0                                        ; $4235: $fe $a0
    ret nc                                        ; $4237: $d0

    ld l, a                                       ; $4238: $6f
    ret nz                                        ; $4239: $c0

    ld a, a                                       ; $423a: $7f
    ret nz                                        ; $423b: $c0

    db $eb                                        ; $423c: $eb
    ld a, a                                       ; $423d: $7f
    add b                                         ; $423e: $80
    ld h, $c0                                     ; $423f: $26 $c0
    ld b, b                                       ; $4241: $40
    ld h, a                                       ; $4242: $67
    ldh [$df], a                                  ; $4243: $e0 $df
    rst $38                                       ; $4245: $ff
    adc $ff                                       ; $4246: $ce $ff
    ei                                            ; $4248: $fb
    rst $08                                       ; $4249: $cf
    ld sp, hl                                     ; $424a: $f9
    ld h, a                                       ; $424b: $67
    db $fc                                        ; $424c: $fc
    dec b                                         ; $424d: $05
    cp $0b                                        ; $424e: $fe $0b
    rst $38                                       ; $4250: $ff
    cp $0f                                        ; $4251: $fe $0f
    db $fc                                        ; $4253: $fc
    ld [hl], a                                    ; $4254: $77
    db $fd                                        ; $4255: $fd
    add a                                         ; $4256: $87
    db $fd                                        ; $4257: $fd
    rlca                                          ; $4258: $07
    cp a                                          ; $4259: $bf
    db $fd                                        ; $425a: $fd
    rst $38                                       ; $425b: $ff
    ld hl, sp-$01                                 ; $425c: $f8 $ff
    jr z, jr_075_41e2                             ; $425e: $28 $82

Jump_075_4260:
    ld b, $c0                                     ; $4260: $06 $c0
    adc b                                         ; $4262: $88

jr_075_4263:
    cp $54                                        ; $4263: $fe $54
    ret nz                                        ; $4265: $c0

    ld d, d                                       ; $4266: $52
    db $fd                                        ; $4267: $fd
    jr nz, @+$01                                  ; $4268: $20 $ff

    or b                                          ; $426a: $b0
    rst $38                                       ; $426b: $ff
    ldh a, [$fd]                                  ; $426c: $f0 $fd
    ld a, a                                       ; $426e: $7f
    sub l                                         ; $426f: $95
    pop bc                                        ; $4270: $c1
    ld b, l                                       ; $4271: $45
    rst $38                                       ; $4272: $ff

jr_075_4273:
    dec h                                         ; $4273: $25
    rst $38                                       ; $4274: $ff
    rla                                           ; $4275: $17
    cp $77                                        ; $4276: $fe $77
    dec de                                        ; $4278: $1b
    cp $13                                        ; $4279: $fe $13
    cp $e0                                        ; $427b: $fe $e0
    dec hl                                        ; $427d: $2b
    ccf                                           ; $427e: $3f
    ld sp, $e01a                                  ; $427f: $31 $1a $e0
    rst $38                                       ; $4282: $ff
    ld e, b                                       ; $4283: $58
    ld h, a                                       ; $4284: $67
    ld e, b                                       ; $4285: $58
    ld h, a                                       ; $4286: $67
    ld d, b                                       ; $4287: $50
    ld l, a                                       ; $4288: $6f
    ld b, b                                       ; $4289: $40
    ld a, a                                       ; $428a: $7f
    ld e, a                                       ; $428b: $5f
    ld b, b                                       ; $428c: $40
    ld a, a                                       ; $428d: $7f
    cp a                                          ; $428e: $bf
    ldh [$9f], a                                  ; $428f: $e0 $9f
    jr nz, jr_075_4273                            ; $4291: $20 $e0

    ldh [$f9], a                                  ; $4293: $e0 $f9
    add b                                         ; $4295: $80
    rst $38                                       ; $4296: $ff
    call c, $eff7                                 ; $4297: $dc $f7 $ef
    ei                                            ; $429a: $fb
    rst $38                                       ; $429b: $ff
    db $fc                                        ; $429c: $fc
    add $ff                                       ; $429d: $c6 $ff
    db $dd                                        ; $429f: $dd
    rrca                                          ; $42a0: $0f
    jr jr_075_4263                                ; $42a1: $18 $c0

    ld [hl], e                                    ; $42a3: $73
    cp $83                                        ; $42a4: $fe $83
    sbc $c0                                       ; $42a6: $de $c0
    cpl                                           ; $42a8: $2f
    db $fc                                        ; $42a9: $fc
    rst $38                                       ; $42aa: $ff
    rst $38                                       ; $42ab: $ff
    rst $28                                       ; $42ac: $ef
    jp nz, $ccff                                  ; $42ad: $c2 $ff $cc

    ccf                                           ; $42b0: $3f
    ret c                                         ; $42b1: $d8

    cp a                                          ; $42b2: $bf
    rst $38                                       ; $42b3: $ff
    pop de                                        ; $42b4: $d1
    cp $f3                                        ; $42b5: $fe $f3
    ld a, h                                       ; $42b7: $7c
    db $e3                                        ; $42b8: $e3
    ld a, h                                       ; $42b9: $7c
    ldh [rIE], a                                  ; $42ba: $e0 $ff
    db $fd                                        ; $42bc: $fd
    ldh a, [rNR34]                                ; $42bd: $f0 $1e
    ldh [rLYC], a                                 ; $42bf: $e0 $45
    rst $38                                       ; $42c1: $ff
    cpl                                           ; $42c2: $2f
    rst $38                                       ; $42c3: $ff
    ld e, $fe                                     ; $42c4: $1e $fe
    rst $38                                       ; $42c6: $ff
    ld a, [de]                                    ; $42c7: $1a
    cp $12                                        ; $42c8: $fe $12
    cp $32                                        ; $42ca: $fe $32
    cp $7a                                        ; $42cc: $fe $7a
    cp $bf                                        ; $42ce: $fe $bf
    ld [bc], a                                    ; $42d0: $02
    inc bc                                        ; $42d1: $03
    ld [bc], a                                    ; $42d2: $02
    inc bc                                        ; $42d3: $03
    ld bc, $ec01                                  ; $42d4: $01 $01 $ec
    add a                                         ; $42d7: $87
    cpl                                           ; $42d8: $2f
    rst $38                                       ; $42d9: $ff
    db $fd                                        ; $42da: $fd
    rra                                           ; $42db: $1f
    ld sp, hl                                     ; $42dc: $f9
    rrca                                          ; $42dd: $0f
    ld sp, hl                                     ; $42de: $f9
    sbc a                                         ; $42df: $9f

jr_075_42e0:
    pop af                                        ; $42e0: $f1
    ld a, a                                       ; $42e1: $7f
    rst $30                                       ; $42e2: $f7
    ld h, c                                       ; $42e3: $61
    ccf                                           ; $42e4: $3f
    ld bc, $c210                                  ; $42e5: $01 $10 $c2
    add b                                         ; $42e8: $80
    rst $28                                       ; $42e9: $ef
    db $10                                        ; $42ea: $10
    rst $00                                       ; $42eb: $c7
    rst $38                                       ; $42ec: $ff
    jr c, @-$2f                                   ; $42ed: $38 $cf

    jr nc, jr_075_42e0                            ; $42ef: $30 $ef

    jr c, @+$01                                   ; $42f1: $38 $ff

    ld b, h                                       ; $42f3: $44
    rst $38                                       ; $42f4: $ff
    rst $38                                       ; $42f5: $ff
    add d                                         ; $42f6: $82
    rst $38                                       ; $42f7: $ff
    add e                                         ; $42f8: $83
    pop af                                        ; $42f9: $f1
    ccf                                           ; $42fa: $3f
    db $e3                                        ; $42fb: $e3
    ld a, $e7                                     ; $42fc: $3e $e7
    ld a, a                                       ; $42fe: $7f
    dec a                                         ; $42ff: $3d
    rst $20                                       ; $4300: $e7
    ld a, $ff                                     ; $4301: $3e $ff
    inc e                                         ; $4303: $1c
    rst $38                                       ; $4304: $ff
    ld b, $6b                                     ; $4305: $06 $6b
    and c                                         ; $4307: $a1
    rst $38                                       ; $4308: $ff
    ld a, [c]                                     ; $4309: $f2
    cp [hl]                                       ; $430a: $be
    ld a, [$fd2e]                                 ; $430b: $fa $2e $fd
    inc d                                         ; $430e: $14
    ld sp, hl                                     ; $430f: $f9
    ld [$fbfd], sp                                ; $4310: $08 $fd $fb
    cp $e0                                        ; $4313: $fe $e0
    rst $30                                       ; $4315: $f7
    db $10                                        ; $4316: $10
    rst $20                                       ; $4317: $e7
    ldh [$e1], a                                  ; $4318: $e0 $e1
    ld a, a                                       ; $431a: $7f
    rst $18                                       ; $431b: $df
    and d                                         ; $431c: $a2
    rst $38                                       ; $431d: $ff
    sbc a                                         ; $431e: $9f
    rst $38                                       ; $431f: $ff
    and c                                         ; $4320: $a1
    ld [hl], $c2                                  ; $4321: $36 $c2
    add d                                         ; $4323: $82
    rst $38                                       ; $4324: $ff
    rst $38                                       ; $4325: $ff
    ret nz                                        ; $4326: $c0

    ld a, a                                       ; $4327: $7f
    ld a, e                                       ; $4328: $7b
    cp $c7                                        ; $4329: $fe $c7
    rst $00                                       ; $432b: $c7
    ret nz                                        ; $432c: $c0

    ret nz                                        ; $432d: $c0

    rst $38                                       ; $432e: $ff
    cp b                                          ; $432f: $b8
    cp b                                          ; $4330: $b8
    call nz, $0ffc                                ; $4331: $c4 $fc $0f
    rst $38                                       ; $4334: $ff
    dec de                                        ; $4335: $1b
    rst $38                                       ; $4336: $ff
    ccf                                           ; $4337: $3f
    inc bc                                        ; $4338: $03
    cp $c7                                        ; $4339: $fe $c7
    cp $e7                                        ; $433b: $fe $e7
    sbc e                                         ; $433d: $9b
    dec [hl]                                      ; $433e: $35
    and c                                         ; $433f: $a1
    ld c, b                                       ; $4340: $48
    add b                                         ; $4341: $80
    rst $30                                       ; $4342: $f7
    adc [hl]                                      ; $4343: $8e
    rst $38                                       ; $4344: $ff
    db $e4                                        ; $4345: $e4
    reti                                          ; $4346: $d9


    ret nz                                        ; $4347: $c0

    ccf                                           ; $4348: $3f
    db $fc                                        ; $4349: $fc
    sbc a                                         ; $434a: $9f
    ldh a, [$b8]                                  ; $434b: $f0 $b8
    ld e, h                                       ; $434d: $5c
    and b                                         ; $434e: $a0
    add sp, -$3f                                  ; $434f: $e8 $c1
    db $e4                                        ; $4351: $e4

jr_075_4352:
    pop bc                                        ; $4352: $c1
    xor e                                         ; $4353: $ab
    cp $07                                        ; $4354: $fe $07
    ld [c], a                                     ; $4356: $e2
    add b                                         ; $4357: $80
    ld a, [bc]                                    ; $4358: $0a
    cp $60                                        ; $4359: $fe $60
    ldh [$32], a                                  ; $435b: $e0 $32
    cp $4c                                        ; $435d: $fe $4c
    db $fc                                        ; $435f: $fc
    jr c, jr_075_4352                             ; $4360: $38 $f0

    ld h, c                                       ; $4362: $61
    ei                                            ; $4363: $fb
    ld a, a                                       ; $4364: $7f
    or a                                          ; $4365: $b7
    or d                                          ; $4366: $b2
    ldh [$98], a                                  ; $4367: $e0 $98
    rst $20                                       ; $4369: $e7
    adc c                                         ; $436a: $89
    rst $30                                       ; $436b: $f7
    and d                                         ; $436c: $a2
    cp $3e                                        ; $436d: $fe $3e
    and b                                         ; $436f: $a0
    ld h, b                                       ; $4370: $60
    ld a, a                                       ; $4371: $7f
    rst $38                                       ; $4372: $ff
    rst $28                                       ; $4373: $ef
    rst $38                                       ; $4374: $ff
    jp $dfff                                      ; $4375: $c3 $ff $df


    ld hl, sp-$39                                 ; $4378: $f8 $c7
    db $fc                                        ; $437a: $fc
    rrca                                          ; $437b: $0f
    db $fc                                        ; $437c: $fc
    or d                                          ; $437d: $b2
    pop hl                                        ; $437e: $e1
    rlca                                          ; $437f: $07
    cp $af                                        ; $4380: $fe $af
    db $e3                                        ; $4382: $e3
    rst $18                                       ; $4383: $df
    di                                            ; $4384: $f3
    adc l                                         ; $4385: $8d
    sub l                                         ; $4386: $95
    ret nz                                        ; $4387: $c0

    ld a, c                                       ; $4388: $79
    or d                                          ; $4389: $b2
    db $e4                                        ; $438a: $e4
    add c                                         ; $438b: $81
    rst $38                                       ; $438c: $ff
    cp $ff                                        ; $438d: $fe $ff
    ldh a, [$3f]                                  ; $438f: $f0 $3f
    and $79                                       ; $4391: $e6 $79
    call z, Call_075_7ef3                         ; $4393: $cc $f3 $7e
    or [hl]                                       ; $4396: $b6
    and c                                         ; $4397: $a1
    add b                                         ; $4398: $80
    rst $38                                       ; $4399: $ff
    jp $067f                                      ; $439a: $c3 $7f $06


    cp $5e                                        ; $439d: $fe $5e
    ret nz                                        ; $439f: $c0

    cp $9c                                        ; $43a0: $fe $9c
    ret nz                                        ; $43a2: $c0

    dec sp                                        ; $43a3: $3b
    cp $e3                                        ; $43a4: $fe $e3
    cp $1f                                        ; $43a6: $fe $1f
    db $fc                                        ; $43a8: $fc
    rst $20                                       ; $43a9: $e7
    db $fd                                        ; $43aa: $fd
    ldh [$9a], a                                  ; $43ab: $e0 $9a
    add b                                         ; $43ad: $80
    nop                                           ; $43ae: $00
    ret nz                                        ; $43af: $c0

    nop                                           ; $43b0: $00
    ldh [rP1], a                                  ; $43b1: $e0 $00
    ldh a, [$bf]                                  ; $43b3: $f0 $bf
    nop                                           ; $43b5: $00
    ld hl, sp+$00                                 ; $43b6: $f8 $00
    db $fc                                        ; $43b8: $fc
    nop                                           ; $43b9: $00
    cp $12                                        ; $43ba: $fe $12
    ret nz                                        ; $43bc: $c0

jr_075_43bd:
    rrca                                          ; $43bd: $0f
    sbc a                                         ; $43be: $9f
    ld bc, $0107                                  ; $43bf: $01 $07 $01
    rlca                                          ; $43c2: $07
    inc bc                                        ; $43c3: $03
    rst $38                                       ; $43c4: $ff
    push hl                                       ; $43c5: $e5
    inc e                                         ; $43c6: $1c
    ldh [$e0], a                                  ; $43c7: $e0 $e0
    di                                            ; $43c9: $f3
    rst $38                                       ; $43ca: $ff
    db $fc                                        ; $43cb: $fc
    xor d                                         ; $43cc: $aa
    ld h, b                                       ; $43cd: $60
    db $fd                                        ; $43ce: $fd
    ld [c], a                                     ; $43cf: $e2
    rst $28                                       ; $43d0: $ef
    rst $38                                       ; $43d1: $ff
    cp $06                                        ; $43d2: $fe $06
    rst $38                                       ; $43d4: $ff
    ld hl, sp+$08                                 ; $43d5: $f8 $08
    ldh a, [rNR10]                                ; $43d7: $f0 $10
    ldh a, [$d0]                                  ; $43d9: $f0 $d0
    or b                                          ; $43db: $b0
    ldh a, [rTAC]                                 ; $43dc: $f0 $07
    ret c                                         ; $43de: $d8

    ld hl, sp-$18                                 ; $43df: $f8 $e8
    cp $e0                                        ; $43e1: $fe $e0
    ldh [$a1], a                                  ; $43e3: $e0 $a1
    ld hl, sp-$7f                                 ; $43e5: $f8 $81
    ldh a, [$81]                                  ; $43e7: $f0 $81
    add sp, -$7f                                  ; $43e9: $e8 $81
    rst $38                                       ; $43eb: $ff
    ldh [$3f], a                                  ; $43ec: $e0 $3f
    ld a, b                                       ; $43ee: $78
    rra                                           ; $43ef: $1f
    ld a, $07                                     ; $43f0: $3e $07
    rra                                           ; $43f2: $1f
    ld bc, $cacc                                  ; $43f3: $01 $cc $ca
    and c                                         ; $43f6: $a1
    adc $a0                                       ; $43f7: $ce $a0

jr_075_43f9:
    nop                                           ; $43f9: $00
    rlca                                          ; $43fa: $07
    jr nc, jr_075_43bd                            ; $43fb: $30 $c0

    ld a, [de]                                    ; $43fd: $1a
    ldh [rIE], a                                  ; $43fe: $e0 $ff
    db $fd                                        ; $4400: $fd
    db $e3                                        ; $4401: $e3
    add hl, sp                                    ; $4402: $39
    db $fd                                        ; $4403: $fd
    ld e, a                                       ; $4404: $5f
    and e                                         ; $4405: $a3
    sbc e                                         ; $4406: $9b
    add d                                         ; $4407: $82
    halt                                          ; $4408: $76
    ld h, c                                       ; $4409: $61
    cp $cf                                        ; $440a: $fe $cf
    ld a, [hl]                                    ; $440c: $7e
    ld e, e                                       ; $440d: $5b
    rst $38                                       ; $440e: $ff
    ld a, l                                       ; $440f: $7d
    inc a                                         ; $4410: $3c
    add b                                         ; $4411: $80
    rst $20                                       ; $4412: $e7
    ccf                                           ; $4413: $3f
    ld c, h                                       ; $4414: $4c
    ld h, b                                       ; $4415: $60
    ld a, a                                       ; $4416: $7f
    ld c, b                                       ; $4417: $48
    ld h, b                                       ; $4418: $60
    cp l                                          ; $4419: $bd
    cp $fe                                        ; $441a: $fe $fe
    ldh [$fc], a                                  ; $441c: $e0 $fc
    ldh a, [$c0]                                  ; $441e: $f0 $c0
    ldh a, [$72]                                  ; $4420: $f0 $72
    ldh [$e0], a                                  ; $4422: $e0 $e0
    ld a, [$e06c]                                 ; $4424: $fa $6c $e0
    ret nz                                        ; $4427: $c0

    ld h, [hl]                                    ; $4428: $66
    ldh [$80], a                                  ; $4429: $e0 $80
    nop                                           ; $442b: $00
    jr @+$21                                      ; $442c: $18 $1f

    add [hl]                                      ; $442e: $86
    rst $20                                       ; $442f: $e7
    rlca                                          ; $4430: $07
    pop bc                                        ; $4431: $c1
    ld bc, $e760                                  ; $4432: $01 $60 $e7
    or d                                          ; $4435: $b2
    db $e3                                        ; $4436: $e3
    ccf                                           ; $4437: $3f
    ccf                                           ; $4438: $3f
    inc bc                                        ; $4439: $03
    add c                                         ; $443a: $81
    ld bc, $c059                                  ; $443b: $01 $59 $c0
    cp $e0                                        ; $443e: $fe $e0
    or d                                          ; $4440: $b2
    jp hl                                         ; $4441: $e9


    or b                                          ; $4442: $b0
    pop hl                                        ; $4443: $e1
    dec l                                         ; $4444: $2d
    add b                                         ; $4445: $80
    or d                                          ; $4446: $b2
    db $e3                                        ; $4447: $e3
    rst $38                                       ; $4448: $ff
    dec a                                         ; $4449: $3d
    cp $ff                                        ; $444a: $fe $ff
    ldh [$fc], a                                  ; $444c: $e0 $fc
    db $fc                                        ; $444e: $fc
    rst $08                                       ; $444f: $cf
    ret nz                                        ; $4450: $c0

    ld h, b                                       ; $4451: $60
    db $eb                                        ; $4452: $eb
    ld [c], a                                     ; $4453: $e2
    ld b, l                                       ; $4454: $45
    push af                                       ; $4455: $f5
    ccf                                           ; $4456: $3f
    jr z, jr_075_43f9                             ; $4457: $28 $a0

    inc bc                                        ; $4459: $03
    dec b                                         ; $445a: $05
    ld h, b                                       ; $445b: $60
    inc bc                                        ; $445c: $03
    inc bc                                        ; $445d: $03
    add e                                         ; $445e: $83
    inc bc                                        ; $445f: $03
    cp a                                          ; $4460: $bf
    pop bc                                        ; $4461: $c1
    ld bc, $01e1                                  ; $4462: $01 $e1 $01
    pop af                                        ; $4465: $f1
    ld bc, $e300                                  ; $4466: $01 $00 $e3
    di                                            ; $4469: $f3
    db $eb                                        ; $446a: $eb
    rst $38                                       ; $446b: $ff
    rst $30                                       ; $446c: $f7
    cp $e4                                        ; $446d: $fe $e4
    ei                                            ; $446f: $fb
    cp $e0                                        ; $4470: $fe $e0
    db $fd                                        ; $4472: $fd
    rst $38                                       ; $4473: $ff
    ret nc                                        ; $4474: $d0

    rst $28                                       ; $4475: $ef
    ldh a, [$d0]                                  ; $4476: $f0 $d0
    ldh a, [$d1]                                  ; $4478: $f0 $d1
    cp $e0                                        ; $447a: $fe $e0
    db $eb                                        ; $447c: $eb
    ld hl, sp-$15                                 ; $447d: $f8 $eb
    cp a                                          ; $447f: $bf
    ld hl, sp-$09                                 ; $4480: $f8 $f7
    db $fc                                        ; $4482: $fc
    rst $30                                       ; $4483: $f7
    db $fc                                        ; $4484: $fc
    rst $38                                       ; $4485: $ff
    call c, $fcc0                                 ; $4486: $dc $c0 $fc
    ld d, b                                       ; $4489: $50
    call nc, Call_075_5ac0                        ; $448a: $d4 $c0 $5a
    pop hl                                        ; $448d: $e1
    ld e, [hl]                                    ; $448e: $5e
    pop hl                                        ; $448f: $e1
    jp nz, $c045                                  ; $4490: $c2 $45 $c0

    cp [hl]                                       ; $4493: $be
    ret nz                                        ; $4494: $c0

    db $fc                                        ; $4495: $fc
    add [hl]                                      ; $4496: $86
    ld b, b                                       ; $4497: $40
    rst $38                                       ; $4498: $ff
    cp $03                                        ; $4499: $fe $03
    ld a, [hl]                                    ; $449b: $7e
    inc bc                                        ; $449c: $03
    dec a                                         ; $449d: $3d
    rlca                                          ; $449e: $07
    dec e                                         ; $449f: $1d
    rrca                                          ; $44a0: $0f
    xor a                                         ; $44a1: $af
    dec bc                                        ; $44a2: $0b
    rrca                                          ; $44a3: $0f
    dec de                                        ; $44a4: $1b
    rra                                           ; $44a5: $1f
    rst $38                                       ; $44a6: $ff
    pop hl                                        ; $44a7: $e1

jr_075_44a8:
    db $fd                                        ; $44a8: $fd
    cp h                                          ; $44a9: $bc
    ldh [$fe], a                                  ; $44aa: $e0 $fe
    ld a, [hl]                                    ; $44ac: $7e
    ld l, e                                       ; $44ad: $6b
    ld b, b                                       ; $44ae: $40
    db $fd                                        ; $44af: $fd
    db $fd                                        ; $44b0: $fd
    db $fc                                        ; $44b1: $fc
    db $fc                                        ; $44b2: $fc
    ld hl, sp-$08                                 ; $44b3: $f8 $f8
    ret nz                                        ; $44b5: $c0

    ld b, b                                       ; $44b6: $40
    sbc l                                         ; $44b7: $9d
    db $fc                                        ; $44b8: $fc
    pop af                                        ; $44b9: $f1
    pop hl                                        ; $44ba: $e1
    ld a, a                                       ; $44bb: $7f
    rst $38                                       ; $44bc: $ff
    cp a                                          ; $44bd: $bf
    ld c, $a0                                     ; $44be: $0e $a0
    ld a, [bc]                                    ; $44c0: $0a
    ldh [$7f], a                                  ; $44c1: $e0 $7f
    ld a, [hl]                                    ; $44c3: $7e
    cp $60                                        ; $44c4: $fe $60
    nop                                           ; $44c6: $00
    add e                                         ; $44c7: $83
    add b                                         ; $44c8: $80
    rst $00                                       ; $44c9: $c7
    ret nz                                        ; $44ca: $c0

    rst $28                                       ; $44cb: $ef
    ld [hl], e                                    ; $44cc: $73
    and c                                         ; $44cd: $a1
    rst $38                                       ; $44ce: $ff
    ld hl, sp-$01                                 ; $44cf: $f8 $ff
    ld hl, sp+$02                                 ; $44d1: $f8 $02
    inc bc                                        ; $44d3: $03
    add d                                         ; $44d4: $82
    inc bc                                        ; $44d5: $03
    push bc                                       ; $44d6: $c5
    ld a, a                                       ; $44d7: $7f
    rlca                                          ; $44d8: $07
    db $ed                                        ; $44d9: $ed
    rrca                                          ; $44da: $0f
    ei                                            ; $44db: $fb
    rrca                                          ; $44dc: $0f
    ei                                            ; $44dd: $fb
    rra                                           ; $44de: $1f
    rst $38                                       ; $44df: $ff
    ld h, b                                       ; $44e0: $60
    db $f4                                        ; $44e1: $f4
    ret nz                                        ; $44e2: $c0

    and $75                                       ; $44e3: $e6 $75
    ldh [$fc], a                                  ; $44e5: $e0 $fc
    ldh a, [$80]                                  ; $44e7: $f0 $80
    ldh a, [$fc]                                  ; $44e9: $f0 $fc
    db $fc                                        ; $44eb: $fc
    cp $f2                                        ; $44ec: $fe $f2
    ret nz                                        ; $44ee: $c0

    and $7f                                       ; $44ef: $e6 $7f
    rst $38                                       ; $44f1: $ff
    ldh [rSVBK], a                                ; $44f2: $e0 $70
    ld [c], a                                     ; $44f4: $e2
    add b                                         ; $44f5: $80
    ld hl, sp-$40                                 ; $44f6: $f8 $c0
    ldh a, [$cf]                                  ; $44f8: $f0 $cf
    ldh [$f0], a                                  ; $44fa: $e0 $f0
    ldh a, [$f8]                                  ; $44fc: $f0 $f8
    rst $38                                       ; $44fe: $ff
    ldh [$28], a                                  ; $44ff: $e0 $28
    ldh [$03], a                                  ; $4501: $e0 $03
    inc b                                         ; $4503: $04
    ccf                                           ; $4504: $3f
    rlca                                          ; $4505: $07
    ld [$080f], sp                                ; $4506: $08 $0f $08
    rrca                                          ; $4509: $0f
    rrca                                          ; $450a: $0f
    db $fc                                        ; $450b: $fc
    ldh [$c9], a                                  ; $450c: $e0 $c9
    pop hl                                        ; $450e: $e1
    ld e, l                                       ; $450f: $5d
    rst $38                                       ; $4510: $ff
    cp b                                          ; $4511: $b8
    ld h, b                                       ; $4512: $60
    ld c, $ff                                     ; $4513: $0e $ff
    ld e, $e7                                     ; $4515: $1e $e7
    jr nz, @+$10                                  ; $4517: $20 $0e

    jp hl                                         ; $4519: $e9


    jp nz, $dda8                                  ; $451a: $c2 $a8 $dd

    ld h, b                                       ; $451d: $60

jr_075_451e:
    ld sp, hl                                     ; $451e: $f9
    jr nz, @-$17                                  ; $451f: $20 $e7

    ld hl, $d302                                  ; $4521: $21 $02 $d3
    jr nz, jr_075_4529                            ; $4524: $20 $03

    jr nz, jr_075_44a8                            ; $4526: $20 $80

    ccf                                           ; $4528: $3f

jr_075_4529:
    db $fc                                        ; $4529: $fc
    ret c                                         ; $452a: $d8

    ld b, c                                       ; $452b: $41
    adc a                                         ; $452c: $8f
    and e                                         ; $452d: $a3
    rst $38                                       ; $452e: $ff
    rst $10                                       ; $452f: $d7
    rra                                           ; $4530: $1f
    rst $30                                       ; $4531: $f7
    rra                                           ; $4532: $1f
    or $ef                                        ; $4533: $f6 $ef
    rra                                           ; $4535: $1f
    db $f4                                        ; $4536: $f4
    rra                                           ; $4537: $1f
    ld a, [$e07e]                                 ; $4538: $fa $7e $e0
    db $fc                                        ; $453b: $fc
    rlca                                          ; $453c: $07
    rst $38                                       ; $453d: $ff
    ei                                            ; $453e: $fb
    rst $38                                       ; $453f: $ff
    ldh a, [rIE]                                  ; $4540: $f0 $ff
    ldh [rNR23], a                                ; $4542: $e0 $18
    ld hl, sp+$08                                 ; $4544: $f8 $08
    ld hl, sp+$0c                                 ; $4546: $f8 $0c
    sbc a                                         ; $4548: $9f
    ld hl, sp-$04                                 ; $4549: $f8 $fc
    ld hl, sp+$0e                                 ; $454b: $f8 $0e
    ld hl, sp-$5e                                 ; $454d: $f8 $a2
    jr nz, jr_075_451e                            ; $454f: $20 $cd

    ld b, b                                       ; $4551: $40
    ldh a, [$aa]                                  ; $4552: $f0 $aa
    ld b, b                                       ; $4554: $40
    ld b, b                                       ; $4555: $40
    ldh [$c5], a                                  ; $4556: $e0 $c5
    ld b, b                                       ; $4558: $40
    and b                                         ; $4559: $a0
    ld b, [hl]                                    ; $455a: $46
    ret nz                                        ; $455b: $c0

    db $fc                                        ; $455c: $fc
    adc d                                         ; $455d: $8a
    ldh [$a8], a                                  ; $455e: $e0 $a8
    rst $38                                       ; $4560: $ff
    ld hl, sp+$68                                 ; $4561: $f8 $68
    ld hl, sp+$28                                 ; $4563: $f8 $28
    ld hl, sp-$30                                 ; $4565: $f8 $d0
    ldh a, [rNR41]                                ; $4567: $f0 $20
    cp $89                                        ; $4569: $fe $89
    add b                                         ; $456b: $80
    scf                                           ; $456c: $37
    rra                                           ; $456d: $1f
    rla                                           ; $456e: $17
    rra                                           ; $456f: $1f
    ld d, $1f                                     ; $4570: $16 $1f
    inc d                                         ; $4572: $14
    rr a                                          ; $4573: $cb $1f
    ld a, [bc]                                    ; $4575: $0a
    cp $c0                                        ; $4576: $fe $c0
    inc b                                         ; $4578: $04
    ret nz                                        ; $4579: $c0

    ldh [$9d], a                                  ; $457a: $e0 $9d
    add b                                         ; $457c: $80
    ldh a, [$1f]                                  ; $457d: $f0 $1f
    rst $38                                       ; $457f: $ff
    ld hl, sp+$0f                                 ; $4580: $f8 $0f
    ld hl, sp+$0b                                 ; $4582: $f8 $0b
    ld hl, sp-$05                                 ; $4584: $f8 $fb
    ld hl, sp+$09                                 ; $4586: $f8 $09
    cp d                                          ; $4588: $ba
    ret nz                                        ; $4589: $c0

    ldh [$3f], a                                  ; $458a: $e0 $3f
    rst $38                                       ; $458c: $ff
    ldh [$30], a                                  ; $458d: $e0 $30
    ccf                                           ; $458f: $3f

jr_075_4590:
    jr nz, jr_075_4590                            ; $4590: $20 $fe

    ldh [$3f], a                                  ; $4592: $e0 $3f
    db $eb                                        ; $4594: $eb
    ccf                                           ; $4595: $3f
    ld h, b                                       ; $4596: $60
    ld b, $c0                                     ; $4597: $06 $c0
    di                                            ; $4599: $f3
    ld a, [bc]                                    ; $459a: $0a
    ldh [$af], a                                  ; $459b: $e0 $af
    ld hl, sp+$6f                                 ; $459d: $f8 $6f
    adc a                                         ; $459f: $8f
    ld hl, sp+$2f                                 ; $45a0: $f8 $2f
    ld hl, sp-$21                                 ; $45a2: $f8 $df
    xor c                                         ; $45a4: $a9
    ldh [$98], a                                  ; $45a5: $e0 $98
    and c                                         ; $45a7: $a1
    xor $c1                                       ; $45a8: $ee $c1
    ld bc, $9040                                  ; $45aa: $01 $40 $90
    ld h, d                                       ; $45ad: $62
    adc b                                         ; $45ae: $88
    ld h, c                                       ; $45af: $61
    jr nc, @+$22                                  ; $45b0: $30 $20

    daa                                           ; $45b2: $27
    ld h, e                                       ; $45b3: $63
    ld a, [$20e5]                                 ; $45b4: $fa $e5 $20

jr_075_45b7:
    jr nz, jr_075_45b7                            ; $45b7: $20 $fe

    ld a, h                                       ; $45b9: $7c
    jp nz, Jump_075_7ac2                          ; $45ba: $c2 $c2 $7a

    pop bc                                        ; $45bd: $c1
    ld hl, sp+$20                                 ; $45be: $f8 $20
    jr nz, @-$05                                  ; $45c0: $20 $f9

    and d                                         ; $45c2: $a2
    ei                                            ; $45c3: $fb
    or $c2                                        ; $45c4: $f6 $c2
    db $ec                                        ; $45c6: $ec
    ld bc, $f8f0                                  ; $45c7: $01 $f0 $f8
    ld b, [hl]                                    ; $45ca: $46
    jp nz, $a7a0                                  ; $45cb: $c2 $a0 $a7

    jp nz, Jump_000_03e5                          ; $45ce: $c2 $e5 $03

    ld bc, $010f                                  ; $45d1: $01 $0f $01
    ccf                                           ; $45d4: $3f
    ld a, [bc]                                    ; $45d5: $0a
    sub [hl]                                      ; $45d6: $96
    add sp, -$03                                  ; $45d7: $e8 $fd
    xor $a0                                       ; $45d9: $ee $a0
    pop bc                                        ; $45db: $c1
    sbc [hl]                                      ; $45dc: $9e
    and b                                         ; $45dd: $a0
    ld [c], a                                     ; $45de: $e2
    ld bc, $e970                                  ; $45df: $01 $70 $e9
    ret nc                                        ; $45e2: $d0

    call nz, Call_000_30a4                        ; $45e3: $c4 $a4 $30
    daa                                           ; $45e6: $27
    add $80                                       ; $45e7: $c6 $80
    ret nz                                        ; $45e9: $c0

    ret nz                                        ; $45ea: $c0

    add hl, bc                                    ; $45eb: $09
    call nz, $f9e2                                ; $45ec: $c4 $e2 $f9
    or b                                          ; $45ef: $b0
    and b                                         ; $45f0: $a0
    pop hl                                        ; $45f1: $e1
    xor d                                         ; $45f2: $aa
    ret nz                                        ; $45f3: $c0

    ldh [$81], a                                  ; $45f4: $e0 $81
    and h                                         ; $45f6: $a4
    db $e4                                        ; $45f7: $e4
    rlca                                          ; $45f8: $07
    and d                                         ; $45f9: $a2
    ldh [$1f], a                                  ; $45fa: $e0 $1f
    and b                                         ; $45fc: $a0
    ldh [$7f], a                                  ; $45fd: $e0 $7f
    ld bc, $0001                                  ; $45ff: $01 $01 $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
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
    rst $38                                       ; $4613: $ff
    nop                                           ; $4614: $00
    cp $fe                                        ; $4615: $fe $fe
    ldh [$fc], a                                  ; $4617: $e0 $fc
    cp $e0                                        ; $4619: $fe $e0
    xor a                                         ; $461b: $af
    ld hl, sp+$00                                 ; $461c: $f8 $00
    add d                                         ; $461e: $82
    nop                                           ; $461f: $00
    ldh a, [$e1]                                  ; $4620: $f0 $e1
    ld a, a                                       ; $4622: $7f
    cp $e0                                        ; $4623: $fe $e0
    ccf                                           ; $4625: $3f
    ld a, a                                       ; $4626: $7f
    nop                                           ; $4627: $00
    ccf                                           ; $4628: $3f
    ld bc, $011f                                  ; $4629: $01 $1f $01
    ld b, c                                       ; $462c: $41
    ld bc, $e8e0                                  ; $462d: $01 $e0 $e8
    rst $18                                       ; $4630: $df
    ld [hl], b                                    ; $4631: $70
    ld hl, sp-$20                                 ; $4632: $f8 $e0
    ld a, [$d0f8]                                 ; $4634: $fa $f8 $d0
    ldh [rSB], a                                  ; $4637: $e0 $01
    ld a, a                                       ; $4639: $7f
    call c, $e0fe                                 ; $463a: $dc $fe $e0
    ldh [$e2], a                                  ; $463d: $e0 $e2
    rra                                           ; $463f: $1f
    ld h, a                                       ; $4640: $67
    ld a, a                                       ; $4641: $7f
    ret nz                                        ; $4642: $c0

    ldh [rSVBK], a                                ; $4643: $e0 $70
    cp $ff                                        ; $4645: $fe $ff
    ldh [$fe], a                                  ; $4647: $e0 $fe
    ld hl, sp-$04                                 ; $4649: $f8 $fc
    ld hl, sp-$04                                 ; $464b: $f8 $fc
    cp b                                          ; $464d: $b8
    ld hl, sp-$59                                 ; $464e: $f8 $a7
    ld c, b                                       ; $4650: $48
    jp nz, $e0c0                                  ; $4651: $c2 $c0 $e0

    db $e4                                        ; $4654: $e4
    jp nz, Jump_000_3fe0                          ; $4655: $c2 $e0 $3f

    ld [c], a                                     ; $4658: $e2
    ldh [$80], a                                  ; $4659: $e0 $80
    jp c, $e0a1                                   ; $465b: $da $a1 $e0

    rst $38                                       ; $465e: $ff
    ld [c], a                                     ; $465f: $e2
    ldh [$fe], a                                  ; $4660: $e0 $fe
    cp b                                          ; $4662: $b8
    ldh [$e0], a                                  ; $4663: $e0 $e0
    ld c, b                                       ; $4665: $48
    ld hl, sp-$01                                 ; $4666: $f8 $ff
    ret nz                                        ; $4668: $c0

    ld [c], a                                     ; $4669: $e2
    ldh [$c2], a                                  ; $466a: $e0 $c2
    nop                                           ; $466c: $00
    ld [c], a                                     ; $466d: $e2
    nop                                           ; $466e: $00
    ldh a, [$fe]                                  ; $466f: $f0 $fe
    cp $e0                                        ; $4671: $fe $e0
    ldh [rP1], a                                  ; $4673: $e0 $00
    pop hl                                        ; $4675: $e1
    nop                                           ; $4676: $00
    rst $00                                       ; $4677: $c7
    nop                                           ; $4678: $00
    rst $08                                       ; $4679: $cf
    rst $38                                       ; $467a: $ff
    nop                                           ; $467b: $00
    ld b, e                                       ; $467c: $43
    ld bc, HeaderCartridgeType                    ; $467d: $01 $47 $01
    rrca                                          ; $4680: $0f
    ld bc, $bf0f                                  ; $4681: $01 $0f $bf
    nop                                           ; $4684: $00
    rlca                                          ; $4685: $07
    ld bc, $1f9f                                  ; $4686: $01 $9f $1f
    rst $20                                       ; $4689: $e7
    ret nc                                        ; $468a: $d0

    ldh [$f2], a                                  ; $468b: $e0 $f2
    rst $28                                       ; $468d: $ef
    ld [hl], b                                    ; $468e: $70
    ld [c], a                                     ; $468f: $e2
    ldh [$f8], a                                  ; $4690: $e0 $f8
    rst $38                                       ; $4692: $ff
    pop hl                                        ; $4693: $e1
    cp b                                          ; $4694: $b8
    jp hl                                         ; $4695: $e9


    ld c, b                                       ; $4696: $48
    rst $30                                       ; $4697: $f7
    rst $00                                       ; $4698: $c7
    ret nz                                        ; $4699: $c0

    rst $28                                       ; $469a: $ef
    ret nc                                        ; $469b: $d0

    jp hl                                         ; $469c: $e9


    ld bc, $01c7                                  ; $469d: $01 $c7 $01
    adc $ef                                       ; $46a0: $ce $ef
    inc bc                                        ; $46a2: $03
    ld b, e                                       ; $46a3: $43
    nop                                           ; $46a4: $00
    ld b, a                                       ; $46a5: $47
    adc b                                         ; $46a6: $88
    ld [c], a                                     ; $46a7: $e2
    add b                                         ; $46a8: $80
    rst $38                                       ; $46a9: $ff
    nop                                           ; $46aa: $00
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    inc bc                                        ; $46ad: $03
    rst $38                                       ; $46ae: $ff
    ld h, h                                       ; $46af: $64
    rst $38                                       ; $46b0: $ff
    ld a, [$faf8]                                 ; $46b1: $fa $f8 $fa
    cp $88                                        ; $46b4: $fe $88
    ldh [$f0], a                                  ; $46b6: $e0 $f0
    ret nz                                        ; $46b8: $c0

    ldh [$e0], a                                  ; $46b9: $e0 $e0
    ld de, $17f0                                  ; $46bb: $11 $f0 $17
    rst $38                                       ; $46be: $ff
    ldh a, [$8f]                                  ; $46bf: $f0 $8f
    ld hl, sp-$3e                                 ; $46c1: $f8 $c2
    nop                                           ; $46c3: $00
    db $e3                                        ; $46c4: $e3
    ld bc, $eff1                                  ; $46c5: $01 $f1 $ef
    ld bc, $03f2                                  ; $46c8: $01 $f2 $03
    ld [c], a                                     ; $46cb: $e2
    cp $e0                                        ; $46cc: $fe $e0
    call nz, $cc07                                ; $46ce: $c4 $07 $cc
    ei                                            ; $46d1: $fb
    rlca                                          ; $46d2: $07
    add b                                         ; $46d3: $80
    jp c, Jump_000_04e0                           ; $46d4: $da $e0 $04

    rst $38                                       ; $46d7: $ff
    ld h, b                                       ; $46d8: $60
    rst $38                                       ; $46d9: $ff
    add b                                         ; $46da: $80
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    ld h, [hl]                                    ; $46dd: $66
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    db $dd                                        ; $46e0: $dd
    rst $38                                       ; $46e1: $ff
    sbc c                                         ; $46e2: $99
    ld [c], a                                     ; $46e3: $e2
    rst $38                                       ; $46e4: $ff
    ldh [rNR12], a                                ; $46e5: $e0 $12
    ldh a, [$90]                                  ; $46e7: $f0 $90
    ldh a, [$08]                                  ; $46e9: $f0 $08
    ld hl, sp+$08                                 ; $46eb: $f8 $08
    rst $28                                       ; $46ed: $ef
    ld hl, sp+$05                                 ; $46ee: $f8 $05
    db $fc                                        ; $46f0: $fc
    rlca                                          ; $46f1: $07
    cp $e0                                        ; $46f2: $fe $e0
    jp $e301                                      ; $46f4: $c3 $01 $e3


    call z, $e0d2                                 ; $46f7: $cc $d2 $e0
    ret nc                                        ; $46fa: $d0

    pop hl                                        ; $46fb: $e1
    db $e4                                        ; $46fc: $e4
    rlca                                          ; $46fd: $07
    ret nc                                        ; $46fe: $d0

    pop hl                                        ; $46ff: $e1
    jp nc, Jump_075_66eb                          ; $4700: $d2 $eb $66

    rst $38                                       ; $4703: $ff
    rst $30                                       ; $4704: $f7
    ld [de], a                                    ; $4705: $12
    ldh a, [$92]                                  ; $4706: $f0 $92
    jp nc, Jump_000_04e2                          ; $4708: $d2 $e2 $04

    db $fc                                        ; $470b: $fc
    dec b                                         ; $470c: $05
    db $fd                                        ; $470d: $fd
    ld l, a                                       ; $470e: $6f
    rlca                                          ; $470f: $07
    cp $07                                        ; $4710: $fe $07
    db $fc                                        ; $4712: $fc
    add b                                         ; $4713: $80
    ldh [rP1], a                                  ; $4714: $e0 $00
    rrca                                          ; $4716: $0f
    cp $e0                                        ; $4717: $fe $e0
    rst $28                                       ; $4719: $ef
    ld [hl], a                                    ; $471a: $77
    ld [hl], b                                    ; $471b: $70
    rst $38                                       ; $471c: $ff
    adc b                                         ; $471d: $88
    and a                                         ; $471e: $a7
    ldh [rSC], a                                  ; $471f: $e0 $02
    rst $38                                       ; $4721: $ff
    ld bc, $ffff                                  ; $4722: $01 $ff $ff
    ld bc, $037e                                  ; $4725: $01 $7e $03
    ld a, [hl]                                    ; $4728: $7e
    inc bc                                        ; $4729: $03
    ld a, $03                                     ; $472a: $3e $03
    ld a, a                                       ; $472c: $7f
    inc a                                         ; $472d: $3c
    rlca                                          ; $472e: $07
    inc e                                         ; $472f: $1c
    rlca                                          ; $4730: $07
    ld b, h                                       ; $4731: $44
    rlca                                          ; $4732: $07
    nop                                           ; $4733: $00
    ld l, b                                       ; $4734: $68
    ldh [$fd], a                                  ; $4735: $e0 $fd
    ld h, a                                       ; $4737: $67
    ret nz                                        ; $4738: $c0

    add sp, $1f                                   ; $4739: $e8 $1f
    ldh a, [$1f]                                  ; $473b: $f0 $1f
    ldh a, [rIF]                                  ; $473d: $f0 $0f
    ld hl, sp+$7b                                 ; $473f: $f8 $7b
    adc a                                         ; $4741: $8f
    ld hl, sp-$6c                                 ; $4742: $f8 $94
    pop hl                                        ; $4744: $e1
    rlca                                          ; $4745: $07
    db $fc                                        ; $4746: $fc
    dec b                                         ; $4747: $05
    db $fc                                        ; $4748: $fc
    ld c, c                                       ; $4749: $49
    ldh [$fe], a                                  ; $474a: $e0 $fe
    sub b                                         ; $474c: $90
    jp z, Jump_000_03fe                           ; $474d: $ca $fe $03

    cp $03                                        ; $4750: $fe $03
    ld a, h                                       ; $4752: $7c
    rlca                                          ; $4753: $07
    ld a, h                                       ; $4754: $7c
    rst $38                                       ; $4755: $ff
    rlca                                          ; $4756: $07
    inc a                                         ; $4757: $3c
    rlca                                          ; $4758: $07
    jr c, jr_075_476a                             ; $4759: $38 $0f

    jr @+$11                                      ; $475b: $18 $0f

    ld b, h                                       ; $475d: $44
    db $fc                                        ; $475e: $fc
    ld d, b                                       ; $475f: $50
    ldh [$86], a                                  ; $4760: $e0 $86
    push hl                                       ; $4762: $e5
    ld c, b                                       ; $4763: $48
    rst $38                                       ; $4764: $ff
    add h                                         ; $4765: $84
    rst $38                                       ; $4766: $ff
    ld e, b                                       ; $4767: $58
    rst $38                                       ; $4768: $ff
    db $fd                                        ; $4769: $fd

jr_075_476a:
    rrca                                          ; $476a: $0f
    add $e4                                       ; $476b: $c6 $e4
    rlca                                          ; $476d: $07
    db $fc                                        ; $476e: $fc
    rra                                           ; $476f: $1f
    db $fc                                        ; $4770: $fc
    inc bc                                        ; $4771: $03
    cp $ff                                        ; $4772: $fe $ff
    dec de                                        ; $4774: $1b
    cp $fc                                        ; $4775: $fe $fc
    rlca                                          ; $4777: $07
    ld hl, sp+$0f                                 ; $4778: $f8 $0f
    ld a, b                                       ; $477a: $78
    rrca                                          ; $477b: $0f
    rst $30                                       ; $477c: $f7
    ld a, h                                       ; $477d: $7c
    rlca                                          ; $477e: $07
    ccf                                           ; $477f: $3f
    adc $e0                                       ; $4780: $ce $e0
    inc e                                         ; $4782: $1c
    rlca                                          ; $4783: $07
    ld b, d                                       ; $4784: $42
    inc bc                                        ; $4785: $03
    cp d                                          ; $4786: $ba
    ret c                                         ; $4787: $d8

    push hl                                       ; $4788: $e5
    jr nz, jr_075_47c2                            ; $4789: $20 $37

    pop bc                                        ; $478b: $c1
    rst $38                                       ; $478c: $ff
    ld b, b                                       ; $478d: $40
    rst $38                                       ; $478e: $ff
    ret c                                         ; $478f: $d8

    push hl                                       ; $4790: $e5
    add e                                         ; $4791: $83
    ld a, a                                       ; $4792: $7f
    cp $17                                        ; $4793: $fe $17
    db $fd                                        ; $4795: $fd
    rra                                           ; $4796: $1f
    ld a, [$f417]                                 ; $4797: $fa $17 $f4
    sub b                                         ; $479a: $90
    and $ff                                       ; $479b: $e6 $ff
    ld [hl], b                                    ; $479d: $70
    db $fc                                        ; $479e: $fc
    adc b                                         ; $479f: $88
    db $fc                                        ; $47a0: $fc
    inc b                                         ; $47a1: $04
    cp $02                                        ; $47a2: $fe $02
    ld hl, sp-$05                                 ; $47a4: $f8 $fb
    rrca                                          ; $47a6: $0f
    ld hl, sp-$3e                                 ; $47a7: $f8 $c2
    ldh [$7f], a                                  ; $47a9: $e0 $7f
    inc bc                                        ; $47ab: $03
    dec a                                         ; $47ac: $3d
    rlca                                          ; $47ad: $07
    dec a                                         ; $47ae: $3d
    cp a                                          ; $47af: $bf
    rlca                                          ; $47b0: $07
    ld e, $03                                     ; $47b1: $1e $03
    ld b, d                                       ; $47b3: $42
    inc bc                                        ; $47b4: $03
    ret z                                         ; $47b5: $c8

    sbc d                                         ; $47b6: $9a
    ld [c], a                                     ; $47b7: $e2
    inc hl                                        ; $47b8: $23
    rst $30                                       ; $47b9: $f7
    rst $38                                       ; $47ba: $ff
    rst $38                                       ; $47bb: $ff
    db $fc                                        ; $47bc: $fc
    ld [hl], $e0                                  ; $47bd: $36 $e0
    ret nz                                        ; $47bf: $c0

    ccf                                           ; $47c0: $3f
    rst $38                                       ; $47c1: $ff

jr_075_47c2:
    rra                                           ; $47c2: $1f
    rst $38                                       ; $47c3: $ff
    db $fd                                        ; $47c4: $fd
    rlca                                          ; $47c5: $07
    db $fd                                        ; $47c6: $fd
    sbc e                                         ; $47c7: $9b
    cp $83                                        ; $47c8: $fe $83
    rst $38                                       ; $47ca: $ff
    sub a                                         ; $47cb: $97
    ld a, a                                       ; $47cc: $7f
    db $fc                                        ; $47cd: $fc
    sbc a                                         ; $47ce: $9f
    ld hl, sp-$61                                 ; $47cf: $f8 $9f
    rst $30                                       ; $47d1: $f7
    add hl, de                                    ; $47d2: $19
    rst $38                                       ; $47d3: $ff
    ld e, $e0                                     ; $47d4: $1e $e0
    rst $38                                       ; $47d6: $ff
    dec h                                         ; $47d7: $25
    rst $38                                       ; $47d8: $ff
    xor l                                         ; $47d9: $ad
    rst $38                                       ; $47da: $ff
    ei                                            ; $47db: $fb
    db $fd                                        ; $47dc: $fd
    ccf                                           ; $47dd: $3f
    jp hl                                         ; $47de: $e9


    rst $38                                       ; $47df: $ff
    ccf                                           ; $47e0: $3f
    ret                                           ; $47e1: $c9


    rst $38                                       ; $47e2: $ff
    ld b, l                                       ; $47e3: $45
    rst $38                                       ; $47e4: $ff
    ld c, b                                       ; $47e5: $48
    rrca                                          ; $47e6: $0f
    ld c, b                                       ; $47e7: $48
    rst $38                                       ; $47e8: $ff
    rrca                                          ; $47e9: $0f
    inc c                                         ; $47ea: $0c
    rlca                                          ; $47eb: $07
    rrca                                          ; $47ec: $0f
    rlca                                          ; $47ed: $07
    inc b                                         ; $47ee: $04
    rlca                                          ; $47ef: $07
    add h                                         ; $47f0: $84
    or e                                          ; $47f1: $b3
    rlca                                          ; $47f2: $07
    ld [c], a                                     ; $47f3: $e2
    ret z                                         ; $47f4: $c8

    ret nz                                        ; $47f5: $c0

    add d                                         ; $47f6: $82
    db $eb                                        ; $47f7: $eb
    nop                                           ; $47f8: $00
    rst $38                                       ; $47f9: $ff
    add d                                         ; $47fa: $82
    and $fc                                       ; $47fb: $e6 $fc
    cp a                                          ; $47fd: $bf
    rra                                           ; $47fe: $1f
    ei                                            ; $47ff: $fb
    dec d                                         ; $4800: $15
    rst $30                                       ; $4801: $f7
    jr @+$01                                      ; $4802: $18 $ff

    db $10                                        ; $4804: $10
    add $e0                                       ; $4805: $c6 $e0
    ld a, a                                       ; $4807: $7f
    cp c                                          ; $4808: $b9
    ld hl, sp+$47                                 ; $4809: $f8 $47
    db $fc                                        ; $480b: $fc
    ld b, e                                       ; $480c: $43
    cp $47                                        ; $480d: $fe $47
    call c, $ffc0                                 ; $480f: $dc $c0 $ff
    inc c                                         ; $4812: $0c
    rlca                                          ; $4813: $07
    ld c, $03                                     ; $4814: $0e $03
    ld b, $03                                     ; $4816: $06 $03
    add a                                         ; $4818: $87
    ld bc, $e2ef                                  ; $4819: $01 $ef $e2
    inc bc                                        ; $481c: $03
    db $f4                                        ; $481d: $f4
    rlca                                          ; $481e: $07
    add $e7                                       ; $481f: $c6 $e7
    ret nz                                        ; $4821: $c0

    rst $38                                       ; $4822: $ff
    jr nc, @-$27                                  ; $4823: $30 $d7

    rst $38                                       ; $4825: $ff
    rrca                                          ; $4826: $0f
    rst $38                                       ; $4827: $ff
    add $e2                                       ; $4828: $c6 $e2
    ld hl, sp-$36                                 ; $482a: $f8 $ca
    ret nz                                        ; $482c: $c0

    ld hl, sp+$3f                                 ; $482d: $f8 $3f
    rst $28                                       ; $482f: $ef
    rst $38                                       ; $4830: $ff
    reti                                          ; $4831: $d9


    rst $38                                       ; $4832: $ff
    db $10                                        ; $4833: $10
    ret nz                                        ; $4834: $c0

    rst $20                                       ; $4835: $e7
    nop                                           ; $4836: $00
    pop hl                                        ; $4837: $e1
    ret nz                                        ; $4838: $c0

    rst $38                                       ; $4839: $ff
    daa                                           ; $483a: $27
    ldh [$7f], a                                  ; $483b: $e0 $7f
    ld hl, sp+$42                                 ; $483d: $f8 $42
    inc bc                                        ; $483f: $03

jr_075_4840:
    ld b, a                                       ; $4840: $47
    ld bc, $0ef7                                  ; $4841: $01 $f7 $0e
    inc bc                                        ; $4844: $03
    inc c                                         ; $4845: $0c
    add b                                         ; $4846: $80
    ldh [$88], a                                  ; $4847: $e0 $88
    rrca                                          ; $4849: $0f
    add sp, $0f                                   ; $484a: $e8 $0f
    rst $38                                       ; $484c: $ff
    db $fc                                        ; $484d: $fc
    rrca                                          ; $484e: $0f
    nop                                           ; $484f: $00
    rst $38                                       ; $4850: $ff
    ldh [rIE], a                                  ; $4851: $e0 $ff
    jr @+$01                                      ; $4853: $18 $ff

    push af                                       ; $4855: $f5
    rlca                                          ; $4856: $07
    inc e                                         ; $4857: $1c
    ret nz                                        ; $4858: $c0

    nop                                           ; $4859: $00
    ld [hl], e                                    ; $485a: $73
    jp nz, $fd1f                                  ; $485b: $c2 $1f $fd

    scf                                           ; $485e: $37
    db $fd                                        ; $485f: $fd
    rst $20                                       ; $4860: $e7
    db $d3                                        ; $4861: $d3
    cp $a1                                        ; $4862: $fe $a1
    ld c, $c0                                     ; $4864: $0e $c0
    ld h, a                                       ; $4866: $67
    ret nz                                        ; $4867: $c0

    rst $38                                       ; $4868: $ff
    jp $fdff                                      ; $4869: $c3 $ff $fd


    cp $40                                        ; $486c: $fe $40
    push hl                                       ; $486e: $e5
    rst $38                                       ; $486f: $ff
    pop hl                                        ; $4870: $e1
    rst $38                                       ; $4871: $ff
    ld h, c                                       ; $4872: $61
    rst $38                                       ; $4873: $ff
    ld de, $ffef                                  ; $4874: $11 $ef $ff
    ld b, e                                       ; $4877: $43
    ld bc, $c246                                  ; $4878: $01 $46 $c2
    ldh [$0c], a                                  ; $487b: $e0 $0c
    rlca                                          ; $487d: $07
    ld [$0f8f], sp                                ; $487e: $08 $8f $0f
    adc b                                         ; $4881: $88
    rrca                                          ; $4882: $0f
    db $ec                                        ; $4883: $ec
    db $f4                                        ; $4884: $f4
    ret nz                                        ; $4885: $c0

    adc d                                         ; $4886: $8a
    db $e3                                        ; $4887: $e3
    ret nz                                        ; $4888: $c0

    db $e3                                        ; $4889: $e3
    inc b                                         ; $488a: $04
    cp [hl]                                       ; $488b: $be
    xor [hl]                                      ; $488c: $ae
    and b                                         ; $488d: $a0
    jr nc, @+$01                                  ; $488e: $30 $ff

    ret nc                                        ; $4890: $d0

    rst $38                                       ; $4891: $ff
    jr c, jr_075_4840                             ; $4892: $38 $ac

    ldh [rSTAT], a                                ; $4894: $e0 $41
    cp e                                          ; $4896: $bb
    rst $38                                       ; $4897: $ff
    ld hl, $e0fe                                  ; $4898: $21 $fe $e0
    add e                                         ; $489b: $83
    cp $45                                        ; $489c: $fe $45
    or $e0                                        ; $489e: $f6 $e0
    ld b, c                                       ; $48a0: $41
    cp $c4                                        ; $48a1: $fe $c4
    ldh [$d1], a                                  ; $48a3: $e0 $d1
    rst $38                                       ; $48a5: $ff
    jp $fffe                                      ; $48a6: $c3 $fe $ff


    db $fc                                        ; $48a9: $fc
    rst $08                                       ; $48aa: $cf
    sbc a                                         ; $48ab: $9f
    ret nz                                        ; $48ac: $c0

    rst $38                                       ; $48ad: $ff
    ld bc, $03fe                                  ; $48ae: $01 $fe $03
    rst $00                                       ; $48b1: $c7
    and c                                         ; $48b2: $a1
    cp b                                          ; $48b3: $b8
    pop bc                                        ; $48b4: $c1
    db $fc                                        ; $48b5: $fc
    sub b                                         ; $48b6: $90
    cp h                                          ; $48b7: $bc
    ldh [$82], a                                  ; $48b8: $e0 $82
    db $e3                                        ; $48ba: $e3
    sbc h                                         ; $48bb: $9c
    and c                                         ; $48bc: $a1
    ret nz                                        ; $48bd: $c0

    jp hl                                         ; $48be: $e9


    ldh a, [$94]                                  ; $48bf: $f0 $94
    ldh [$c0], a                                  ; $48c1: $e0 $c0
    ld [c], a                                     ; $48c3: $e2
    rst $38                                       ; $48c4: $ff
    ld a, a                                       ; $48c5: $7f
    ld b, e                                       ; $48c6: $43
    cp $81                                        ; $48c7: $fe $81
    rst $38                                       ; $48c9: $ff
    and c                                         ; $48ca: $a1
    rst $38                                       ; $48cb: $ff
    pop bc                                        ; $48cc: $c1
    cp $e0                                        ; $48cd: $fe $e0
    ccf                                           ; $48cf: $3f
    db $fd                                        ; $48d0: $fd
    rst $38                                       ; $48d1: $ff
    rst $38                                       ; $48d2: $ff
    set 7, a                                      ; $48d3: $cb $ff
    cp c                                          ; $48d5: $b9
    add b                                         ; $48d6: $80
    pop bc                                        ; $48d7: $c1
    add $e1                                       ; $48d8: $c6 $e1
    rst $38                                       ; $48da: $ff
    ld hl, sp+$0f                                 ; $48db: $f8 $0f
    db $fd                                        ; $48dd: $fd
    rrca                                          ; $48de: $0f
    cp $0b                                        ; $48df: $fe $0b
    adc a                                         ; $48e1: $8f
    add hl, bc                                    ; $48e2: $09
    call c, $e18c                                 ; $48e3: $dc $8c $e1
    add h                                         ; $48e6: $84
    push hl                                       ; $48e7: $e5
    ldh a, [rIE]                                  ; $48e8: $f0 $ff
    ld hl, sp-$04                                 ; $48ea: $f8 $fc
    ret nz                                        ; $48ec: $c0

    cp b                                          ; $48ed: $b8
    rst $28                                       ; $48ee: $ef
    or a                                          ; $48ef: $b7
    ld [hl], b                                    ; $48f0: $70
    rst $18                                       ; $48f1: $df
    jr nz, @-$7c                                  ; $48f2: $20 $82

    ldh [$81], a                                  ; $48f4: $e0 $81
    rst $38                                       ; $48f6: $ff
    push hl                                       ; $48f7: $e5
    and b                                         ; $48f8: $a0
    cp $7f                                        ; $48f9: $fe $7f
    ld b, a                                       ; $48fb: $47
    db $fc                                        ; $48fc: $fc
    add e                                         ; $48fd: $83
    cp $a3                                        ; $48fe: $fe $a3
    cp $c1                                        ; $4900: $fe $c1
    ld b, d                                       ; $4902: $42
    ldh [$bf], a                                  ; $4903: $e0 $bf
    ld sp, hl                                     ; $4905: $f9
    rra                                           ; $4906: $1f
    db $fd                                        ; $4907: $fd
    rrca                                          ; $4908: $0f
    db $fd                                        ; $4909: $fd
    rst $00                                       ; $490a: $c7
    ret z                                         ; $490b: $c8

    pop hl                                        ; $490c: $e1
    rst $38                                       ; $490d: $ff
    rst $30                                       ; $490e: $f7
    dec bc                                        ; $490f: $0b
    rst $38                                       ; $4910: $ff
    add hl, bc                                    ; $4911: $09
    dec hl                                        ; $4912: $2b
    and b                                         ; $4913: $a0
    inc b                                         ; $4914: $04
    ei                                            ; $4915: $fb
    ld [bc], a                                    ; $4916: $02
    add e                                         ; $4917: $83
    db $d3                                        ; $4918: $d3
    ld bc, $7900                                  ; $4919: $01 $00 $79
    and b                                         ; $491c: $a0
    ld a, e                                       ; $491d: $7b
    add b                                         ; $491e: $80
    ldh [$f1], a                                  ; $491f: $e0 $f1
    add b                                         ; $4921: $80
    add b                                         ; $4922: $80
    rst $38                                       ; $4923: $ff
    rst $08                                       ; $4924: $cf
    ld [hl], e                                    ; $4925: $73
    rst $38                                       ; $4926: $ff
    ld bc, $5c03                                  ; $4927: $01 $03 $5c
    and b                                         ; $492a: $a0
    cp c                                          ; $492b: $b9
    ldh [rSTAT], a                                ; $492c: $e0 $41
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    add l                                         ; $4930: $85
    cp $82                                        ; $4931: $fe $82
    cp $02                                        ; $4933: $fe $02
    cp $02                                        ; $4935: $fe $02
    pop bc                                        ; $4937: $c1
    rst $18                                       ; $4938: $df
    rst $38                                       ; $4939: $ff
    db $e3                                        ; $493a: $e3
    cp $ff                                        ; $493b: $fe $ff
    sbc h                                         ; $493d: $9c
    jr nc, @-$7c                                  ; $493e: $30 $82

    nop                                           ; $4940: $00
    rra                                           ; $4941: $1f
    rst $20                                       ; $4942: $e7
    nop                                           ; $4943: $00
    ld b, c                                       ; $4944: $41
    nop                                           ; $4945: $00
    adc d                                         ; $4946: $8a
    pop hl                                        ; $4947: $e1
    jp nz, $ffe3                                  ; $4948: $c2 $e3 $ff

    ld [bc], a                                    ; $494b: $02
    ld sp, hl                                     ; $494c: $f9
    ccf                                           ; $494d: $3f
    ld bc, $0082                                  ; $494e: $01 $82 $00
    adc b                                         ; $4951: $88
    rst $38                                       ; $4952: $ff
    ld [hl], b                                    ; $4953: $70
    dec b                                         ; $4954: $05
    ret nz                                        ; $4955: $c0

    or l                                          ; $4956: $b5
    add b                                         ; $4957: $80
    or $c2                                        ; $4958: $f6 $c2
    ld [c], a                                     ; $495a: $e2
    rst $38                                       ; $495b: $ff
    add c                                         ; $495c: $81
    ret nz                                        ; $495d: $c0

    pop hl                                        ; $495e: $e1
    rrca                                          ; $495f: $0f

jr_075_4960:
    ld sp, hl                                     ; $4960: $f9
    cp $f6                                        ; $4961: $fe $f6
    sbc h                                         ; $4963: $9c
    jp nz, $c2e3                                  ; $4964: $c2 $e3 $c2

    ret nz                                        ; $4967: $c0

    add b                                         ; $4968: $80
    rst $38                                       ; $4969: $ff
    add b                                         ; $496a: $80
    ldh a, [$64]                                  ; $496b: $f0 $64
    ret nz                                        ; $496d: $c0

    ld [c], a                                     ; $496e: $e2
    call $0ffb                                    ; $496f: $cd $fb $0f
    xor $82                                       ; $4972: $ee $82
    ldh [$f7], a                                  ; $4974: $e0 $f7
    inc b                                         ; $4976: $04
    rst $20                                       ; $4977: $e7
    inc b                                         ; $4978: $04
    db $e3                                        ; $4979: $e3
    ccf                                           ; $497a: $3f
    ld [bc], a                                    ; $497b: $02
    rst $00                                       ; $497c: $c7
    ld bc, $00cf                                  ; $497d: $01 $cf $00
    nop                                           ; $4980: $00
    inc d                                         ; $4981: $14
    ldh [$c0], a                                  ; $4982: $e0 $c0
    ldh [$ed], a                                  ; $4984: $e0 $ed
    rlca                                          ; $4986: $07
    ret nz                                        ; $4987: $c0

    db $e4                                        ; $4988: $e4
    add b                                         ; $4989: $80
    inc bc                                        ; $498a: $03
    ld [hl], h                                    ; $498b: $74
    ret nz                                        ; $498c: $c0

    rrca                                          ; $498d: $0f
    ld sp, hl                                     ; $498e: $f9
    rst $38                                       ; $498f: $ff
    ld d, l                                       ; $4990: $55
    push af                                       ; $4991: $f5
    dec b                                         ; $4992: $05
    ldh [rSC], a                                  ; $4993: $e0 $02
    ld [c], a                                     ; $4995: $e2
    add b                                         ; $4996: $80
    rrca                                          ; $4997: $0f
    ldh [$80], a                                  ; $4998: $e0 $80
    inc bc                                        ; $499a: $03
    ld d, a                                       ; $499b: $57
    add b                                         ; $499c: $80
    rst $38                                       ; $499d: $ff
    ld b, l                                       ; $499e: $45
    rst $38                                       ; $499f: $ff
    pop de                                        ; $49a0: $d1
    cp a                                          ; $49a1: $bf
    ld a, $e3                                     ; $49a2: $3e $e3
    nop                                           ; $49a4: $00
    di                                            ; $49a5: $f3
    ld a, e                                       ; $49a6: $7b
    nop                                           ; $49a7: $00
    rst $00                                       ; $49a8: $c7
    add $e0                                       ; $49a9: $c6 $e0
    di                                            ; $49ab: $f3
    ld [bc], a                                    ; $49ac: $02
    pop af                                        ; $49ad: $f1
    ld bc, $8500                                  ; $49ae: $01 $00 $85
    db $e3                                        ; $49b1: $e3
    cp $1f                                        ; $49b2: $fe $1f
    rla                                           ; $49b4: $17
    ldh [$c6], a                                  ; $49b5: $e0 $c6
    ld [c], a                                     ; $49b7: $e2
    ld e, e                                       ; $49b8: $5b
    add b                                         ; $49b9: $80
    ccf                                           ; $49ba: $3f
    rst $30                                       ; $49bb: $f7
    rra                                           ; $49bc: $1f
    rst $28                                       ; $49bd: $ef
    rlca                                          ; $49be: $07
    cp $ff                                        ; $49bf: $fe $ff
    ei                                            ; $49c1: $fb
    xor d                                         ; $49c2: $aa
    add b                                         ; $49c3: $80
    inc bc                                        ; $49c4: $03
    cp $0e                                        ; $49c5: $fe $0e
    rst $28                                       ; $49c7: $ef
    rst $38                                       ; $49c8: $ff
    ld a, [hl]                                    ; $49c9: $7e
    rst $38                                       ; $49ca: $ff
    cp $62                                        ; $49cb: $fe $62
    ld h, b                                       ; $49cd: $60
    sub e                                         ; $49ce: $93
    rst $38                                       ; $49cf: $ff
    and e                                         ; $49d0: $a3
    rst $38                                       ; $49d1: $ff
    rst $38                                       ; $49d2: $ff
    xor e                                         ; $49d3: $ab
    rst $38                                       ; $49d4: $ff
    xor $3f                                       ; $49d5: $ee $3f
    jr c, jr_075_4960                             ; $49d7: $38 $87

    nop                                           ; $49d9: $00
    cp $c0                                        ; $49da: $fe $c0
    pop hl                                        ; $49dc: $e1
    rst $38                                       ; $49dd: $ff
    add c                                         ; $49de: $81
    ld a, a                                       ; $49df: $7f
    ld b, b                                       ; $49e0: $40
    ccf                                           ; $49e1: $3f
    jr nz, jr_075_4a03                            ; $49e2: $20 $1f

    ccf                                           ; $49e4: $3f
    rra                                           ; $49e5: $1f
    rla                                           ; $49e6: $17
    rra                                           ; $49e7: $1f
    xor a                                         ; $49e8: $af
    ccf                                           ; $49e9: $3f
    rst $28                                       ; $49ea: $ef
    cp $e0                                        ; $49eb: $fe $e0
    ld e, d                                       ; $49ed: $5a
    ld [c], a                                     ; $49ee: $e2
    di                                            ; $49ef: $f3
    ld a, [hl]                                    ; $49f0: $7e
    cp $ff                                        ; $49f1: $fe $ff
    ldh [$95], a                                  ; $49f3: $e0 $95
    ld h, c                                       ; $49f5: $61
    rst $28                                       ; $49f6: $ef
    rst $38                                       ; $49f7: $ff
    ld a, a                                       ; $49f8: $7f
    ld b, b                                       ; $49f9: $40
    ld c, l                                       ; $49fa: $4d
    ld a, a                                       ; $49fb: $7f
    ld [c], a                                     ; $49fc: $e2
    ld [c], a                                     ; $49fd: $e2
    cpl                                           ; $49fe: $2f
    ccf                                           ; $49ff: $3f
    ldh [$e6], a                                  ; $4a00: $e0 $e6
    ld [c], a                                     ; $4a02: $e2

jr_075_4a03:
    add sp, -$61                                  ; $4a03: $e8 $9f
    db $db                                        ; $4a05: $db
    add c                                         ; $4a06: $81
    cp $20                                        ; $4a07: $fe $20
    ld h, e                                       ; $4a09: $63
    ld bc, $033e                                  ; $4a0a: $01 $3e $03
    ld e, $03                                     ; $4a0d: $1e $03
    ld b, e                                       ; $4a0f: $43
    inc bc                                        ; $4a10: $03
    ld e, [hl]                                    ; $4a11: $5e
    push hl                                       ; $4a12: $e5
    ld h, b                                       ; $4a13: $60
    rra                                           ; $4a14: $1f
    rst $28                                       ; $4a15: $ef
    ld a, a                                       ; $4a16: $7f
    sbc a                                         ; $4a17: $9f
    cp h                                          ; $4a18: $bc
    pop bc                                        ; $4a19: $c1
    rst $38                                       ; $4a1a: $ff
    cp h                                          ; $4a1b: $bc
    db $e3                                        ; $4a1c: $e3
    cp [hl]                                       ; $4a1d: $be
    sub $e6                                       ; $4a1e: $d6 $e6
    rst $38                                       ; $4a20: $ff
    rra                                           ; $4a21: $1f
    rra                                           ; $4a22: $1f
    ld a, a                                       ; $4a23: $7f
    ccf                                           ; $4a24: $3f
    nop                                           ; $4a25: $00
    pop hl                                        ; $4a26: $e1
    cp $ff                                        ; $4a27: $fe $ff
    add b                                         ; $4a29: $80
    cp $c0                                        ; $4a2a: $fe $c0
    db $fc                                        ; $4a2c: $fc
    ldh [$fc], a                                  ; $4a2d: $e0 $fc
    ldh a, [$f8]                                  ; $4a2f: $f0 $f8
    rst $38                                       ; $4a31: $ff
    ldh a, [$f2]                                  ; $4a32: $f0 $f2
    ldh a, [$ef]                                  ; $4a34: $f0 $ef
    ccf                                           ; $4a36: $3f
    rst $18                                       ; $4a37: $df
    ld a, a                                       ; $4a38: $7f
    rst $18                                       ; $4a39: $df
    cp a                                          ; $4a3a: $bf
    ld a, a                                       ; $4a3b: $7f
    cp a                                          ; $4a3c: $bf
    rst $38                                       ; $4a3d: $ff
    cp [hl]                                       ; $4a3e: $be
    cp $be                                        ; $4a3f: $fe $be
    ld h, d                                       ; $4a41: $62
    pop hl                                        ; $4a42: $e1
    ld a, a                                       ; $4a43: $7f
    cp $ac                                        ; $4a44: $fe $ac
    pop hl                                        ; $4a46: $e1
    rst $28                                       ; $4a47: $ef
    rst $38                                       ; $4a48: $ff
    ld [hl], a                                    ; $4a49: $77
    ccf                                           ; $4a4a: $3f
    scf                                           ; $4a4b: $37
    rra                                           ; $4a4c: $1f
    ccf                                           ; $4a4d: $3f
    add a                                         ; $4a4e: $87
    rra                                           ; $4a4f: $1f
    ccf                                           ; $4a50: $3f
    ccf                                           ; $4a51: $3f
    ret nc                                        ; $4a52: $d0

    ldh [$78], a                                  ; $4a53: $e0 $78
    ret nz                                        ; $4a55: $c0

    ret nc                                        ; $4a56: $d0

    ld [c], a                                     ; $4a57: $e2
    cp $e0                                        ; $4a58: $fe $e0
    ld hl, sp+$47                                 ; $4a5a: $f8 $47
    ret nz                                        ; $4a5c: $c0

    add d                                         ; $4a5d: $82
    add b                                         ; $4a5e: $80
    ld e, h                                       ; $4a5f: $5c
    pop hl                                        ; $4a60: $e1
    adc $e1                                       ; $4a61: $ce $e1
    jp z, $bfe3                                   ; $4a63: $ca $e3 $bf

    ld a, [hl]                                    ; $4a66: $7e
    ldh [$b0], a                                  ; $4a67: $e0 $b0
    ld a, [$fce1]                                 ; $4a69: $fa $e1 $fc
    rst $20                                       ; $4a6c: $e7
    ldh a, [$62]                                  ; $4a6d: $f0 $62
    sbc [hl]                                      ; $4a6f: $9e
    ldh [$fc], a                                  ; $4a70: $e0 $fc
    add b                                         ; $4a72: $80
    ret nc                                        ; $4a73: $d0

    pop hl                                        ; $4a74: $e1
    jp nz, $c081                                  ; $4a75: $c2 $81 $c0

    jp nc, $fceb                                  ; $4a78: $d2 $eb $fc

    rst $28                                       ; $4a7b: $ef
    and b                                         ; $4a7c: $a0
    db $e4                                        ; $4a7d: $e4
    jp nc, $d0e0                                  ; $4a7e: $d2 $e0 $d0

    db $e3                                        ; $4a81: $e3
    ret nz                                        ; $4a82: $c0

    ld b, b                                       ; $4a83: $40

jr_075_4a84:
    nop                                           ; $4a84: $00
    ld bc, $ee0f                                  ; $4a85: $01 $0f $ee
    add b                                         ; $4a88: $80
    or b                                          ; $4a89: $b0
    add b                                         ; $4a8a: $80
    inc c                                         ; $4a8b: $0c
    ld h, b                                       ; $4a8c: $60
    ld b, b                                       ; $4a8d: $40
    db $e3                                        ; $4a8e: $e3
    ld [hl], b                                    ; $4a8f: $70
    and c                                         ; $4a90: $a1
    scf                                           ; $4a91: $37
    ld b, d                                       ; $4a92: $42
    ld sp, $f1e4                                  ; $4a93: $31 $e4 $f1
    ld hl, sp+$70                                 ; $4a96: $f8 $70
    and b                                         ; $4a98: $a0
    ld h, a                                       ; $4a99: $67
    ld b, c                                       ; $4a9a: $41
    ld h, e                                       ; $4a9b: $63
    ld b, c                                       ; $4a9c: $41
    ld [c], a                                     ; $4a9d: $e2
    ldh [$e2], a                                  ; $4a9e: $e0 $e2
    ret nz                                        ; $4aa0: $c0

    ld a, a                                       ; $4aa1: $7f
    jr nc, jr_075_4a84                            ; $4aa2: $30 $e0

    db $10                                        ; $4aa4: $10
    ldh a, [rNR10]                                ; $4aa5: $f0 $10
    ldh a, [$f1]                                  ; $4aa7: $f0 $f1
    ret nc                                        ; $4aa9: $d0

    ld b, b                                       ; $4aaa: $40
    jp $ffff                                      ; $4aab: $c3 $ff $ff


    jr nc, jr_075_4b12                            ; $4aae: $30 $62

    ret nz                                        ; $4ab0: $c0

    jp hl                                         ; $4ab1: $e9


    ld l, $40                                     ; $4ab2: $2e $40
    ret nz                                        ; $4ab4: $c0

    jp hl                                         ; $4ab5: $e9


    jp nz, Jump_000_00c0                          ; $4ab6: $c2 $c0 $00

    ret nc                                        ; $4ab9: $d0

    xor $50                                       ; $4aba: $ee $50
    ld b, b                                       ; $4abc: $40
    sub b                                         ; $4abd: $90
    rst $20                                       ; $4abe: $e7
    ld a, $e0                                     ; $4abf: $3e $e0
    nop                                           ; $4ac1: $00
    and d                                         ; $4ac2: $a2
    rst $10                                       ; $4ac3: $d7
    ld [hl+], a                                   ; $4ac4: $22
    or e                                          ; $4ac5: $b3
    jr nz, jr_075_4ae4                            ; $4ac6: $20 $1c

    pop hl                                        ; $4ac8: $e1
    adc c                                         ; $4ac9: $89
    cp b                                          ; $4aca: $b8
    sub b                                         ; $4acb: $90
    add sp, -$40                                  ; $4acc: $e8 $c0
    ldh [$e0], a                                  ; $4ace: $e0 $e0
    sub b                                         ; $4ad0: $90
    jp hl                                         ; $4ad1: $e9


    ret nc                                        ; $4ad2: $d0

    pop hl                                        ; $4ad3: $e1
    jp nc, Jump_000_03e1                          ; $4ad4: $d2 $e1 $03

    add sp, $23                                   ; $4ad7: $e8 $23
    ret nz                                        ; $4ad9: $c0

    and e                                         ; $4ada: $a3
    ld hl, $c1ec                                  ; $4adb: $21 $ec $c1
    ldh [rDIV], a                                 ; $4ade: $e0 $04
    add b                                         ; $4ae0: $80
    ldh a, [rIE]                                  ; $4ae1: $f0 $ff
    rst $08                                       ; $4ae3: $cf

jr_075_4ae4:
    rst $20                                       ; $4ae4: $e7
    rst $38                                       ; $4ae5: $ff
    ldh a, [$3f]                                  ; $4ae6: $f0 $3f
    add b                                         ; $4ae8: $80
    jp nz, $a08e                                  ; $4ae9: $c2 $8e $a0

    rst $38                                       ; $4aec: $ff
    add b                                         ; $4aed: $80
    cp a                                          ; $4aee: $bf
    ld c, [hl]                                    ; $4aef: $4e
    cp $e0                                        ; $4af0: $fe $e0
    sbc a                                         ; $4af2: $9f
    add b                                         ; $4af3: $80
    pop bc                                        ; $4af4: $c1
    db $f4                                        ; $4af5: $f4
    ld [c], a                                     ; $4af6: $e2
    ldh a, [$e9]                                  ; $4af7: $f0 $e9
    nop                                           ; $4af9: $00
    rst $38                                       ; $4afa: $ff
    db $ec                                        ; $4afb: $ec
    ld e, a                                       ; $4afc: $5f
    jp $c780                                      ; $4afd: $c3 $80 $c7


    add b                                         ; $4b00: $80
    adc a                                         ; $4b01: $8f
    cp $e0                                        ; $4b02: $fe $e0
    add a                                         ; $4b04: $87
    cp $e0                                        ; $4b05: $fe $e0
    rst $20                                       ; $4b07: $e7
    db $e3                                        ; $4b08: $e3
    add b                                         ; $4b09: $80
    di                                            ; $4b0a: $f3
    call nz, $b0e2                                ; $4b0b: $c4 $e2 $b0
    call nz, $f880                                ; $4b0e: $c4 $80 $f8
    add b                                         ; $4b11: $80

jr_075_4b12:
    ld a, a                                       ; $4b12: $7f
    add d                                         ; $4b13: $82
    add b                                         ; $4b14: $80
    jp nz, $e280                                  ; $4b15: $c2 $80 $e2

    add b                                         ; $4b18: $80
    ldh a, [$fe]                                  ; $4b19: $f0 $fe
    ldh [rNR22], a                                ; $4b1b: $e0 $17
    ldh [$80], a                                  ; $4b1d: $e0 $80
    pop hl                                        ; $4b1f: $e1
    sub $e0                                       ; $4b20: $d6 $e0
    rst $08                                       ; $4b22: $cf
    ldh a, [$ec]                                  ; $4b23: $f0 $ec
    nop                                           ; $4b25: $00
    db $e4                                        ; $4b26: $e4
    ld l, $40                                     ; $4b27: $2e $40
    dec de                                        ; $4b29: $1b
    rlca                                          ; $4b2a: $07
    nop                                           ; $4b2b: $00
    and b                                         ; $4b2c: $a0
    and c                                         ; $4b2d: $a1
    rst $38                                       ; $4b2e: $ff
    rst $38                                       ; $4b2f: $ff
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
    nop                                           ; $4b3f: $00
    rst $38                                       ; $4b40: $ff
    rst $38                                       ; $4b41: $ff
    rst $38                                       ; $4b42: $ff
    di                                            ; $4b43: $f3
    nop                                           ; $4b44: $00
    dec e                                         ; $4b45: $1d
    nop                                           ; $4b46: $00
    and $00                                       ; $4b47: $e6 $00
    push af                                       ; $4b49: $f5
    cp d                                          ; $4b4a: $ba
    cp $e0                                        ; $4b4b: $fe $e0
    and $f6                                       ; $4b4d: $e6 $f6
    ldh [rIE], a                                  ; $4b4f: $e0 $ff
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    nop                                           ; $4b53: $00
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    ld bc, $03ff                                  ; $4b56: $01 $ff $03
    rst $38                                       ; $4b59: $ff
    rrca                                          ; $4b5a: $0f
    rst $38                                       ; $4b5b: $ff
    ld b, $fa                                     ; $4b5c: $06 $fa
    cp $e0                                        ; $4b5e: $fe $e0
    inc bc                                        ; $4b60: $03
    ldh a, [$e2]                                  ; $4b61: $f0 $e2
    nop                                           ; $4b63: $00
    rst $38                                       ; $4b64: $ff
    add b                                         ; $4b65: $80
    rst $38                                       ; $4b66: $ff
    ldh [$0b], a                                  ; $4b67: $e0 $0b
    rst $38                                       ; $4b69: $ff
    ret nz                                        ; $4b6a: $c0

    cp $e0                                        ; $4b6b: $fe $e0
    add b                                         ; $4b6d: $80
    ldh a, [$e4]                                  ; $4b6e: $f0 $e4
    sbc $e7                                       ; $4b70: $de $e7
    ldh [$e3], a                                  ; $4b72: $e0 $e3
    sbc $e6                                       ; $4b74: $de $e6
    rst $38                                       ; $4b76: $ff
    di                                            ; $4b77: $f3
    nop                                           ; $4b78: $00
    rrca                                          ; $4b79: $0f
    nop                                           ; $4b7a: $00
    ld a, c                                       ; $4b7b: $79
    nop                                           ; $4b7c: $00
    ld h, c                                       ; $4b7d: $61
    nop                                           ; $4b7e: $00
    rst $38                                       ; $4b7f: $ff
    ld b, c                                       ; $4b80: $41
    nop                                           ; $4b81: $00
    inc bc                                        ; $4b82: $03
    nop                                           ; $4b83: $00
    rlca                                          ; $4b84: $07
    nop                                           ; $4b85: $00
    rra                                           ; $4b86: $1f
    ld bc, $ffff                                  ; $4b87: $01 $ff $ff
    rrca                                          ; $4b8a: $0f
    ldh a, [$1f]                                  ; $4b8b: $f0 $1f
    ldh [$3f], a                                  ; $4b8d: $e0 $3f
    ret nz                                        ; $4b8f: $c0

    ld a, a                                       ; $4b90: $7f
    rst $30                                       ; $4b91: $f7
    call z, $927f                                 ; $4b92: $cc $7f $92
    cp e                                          ; $4b95: $bb
    ldh [$0c], a                                  ; $4b96: $e0 $0c
    rst $38                                       ; $4b98: $ff
    rst $38                                       ; $4b99: $ff
    ldh [rIE], a                                  ; $4b9a: $e0 $ff
    rra                                           ; $4b9c: $1f
    ldh a, [rIF]                                  ; $4b9d: $f0 $0f
    ld hl, sp+$07                                 ; $4b9f: $f8 $07
    db $fc                                        ; $4ba1: $fc
    ld h, a                                       ; $4ba2: $67
    db $fc                                        ; $4ba3: $fc
    rst $38                                       ; $4ba4: $ff
    sub e                                         ; $4ba5: $93
    cp $03                                        ; $4ba6: $fe $03
    cp $61                                        ; $4ba8: $fe $61
    rst $38                                       ; $4baa: $ff
    rst $08                                       ; $4bab: $cf
    nop                                           ; $4bac: $00
    rst $38                                       ; $4bad: $ff
    ldh a, [rP1]                                  ; $4bae: $f0 $00
    sbc [hl]                                      ; $4bb0: $9e
    nop                                           ; $4bb1: $00
    add [hl]                                      ; $4bb2: $86
    nop                                           ; $4bb3: $00
    add d                                         ; $4bb4: $82
    nop                                           ; $4bb5: $00
    ccf                                           ; $4bb6: $3f
    ret nz                                        ; $4bb7: $c0

    nop                                           ; $4bb8: $00
    ldh [rP1], a                                  ; $4bb9: $e0 $00
    ld hl, sp+$00                                 ; $4bbb: $f8 $00
    add [hl]                                      ; $4bbd: $86
    pop hl                                        ; $4bbe: $e1
    adc $e9                                       ; $4bbf: $ce $e9
    db $ec                                        ; $4bc1: $ec
    add [hl]                                      ; $4bc2: $86
    pop hl                                        ; $4bc3: $e1
    adc $e7                                       ; $4bc4: $ce $e7
    ld [bc], a                                    ; $4bc6: $02
    cp $b0                                        ; $4bc7: $fe $b0
    db $e3                                        ; $4bc9: $e3
    call z, $d27f                                 ; $4bca: $cc $7f $d2
    ei                                            ; $4bcd: $fb
    ld a, a                                       ; $4bce: $7f
    add b                                         ; $4bcf: $80
    or b                                          ; $4bd0: $b0
    add sp, $67                                   ; $4bd1: $e8 $67
    db $fc                                        ; $4bd3: $fc
    sub a                                         ; $4bd4: $97
    db $fc                                        ; $4bd5: $fc
    inc bc                                        ; $4bd6: $03
    ld hl, sp-$50                                 ; $4bd7: $f8 $b0
    ld [c], a                                     ; $4bd9: $e2
    ld b, h                                       ; $4bda: $44
    ldh [$fe], a                                  ; $4bdb: $e0 $fe
    pop hl                                        ; $4bdd: $e1
    rlca                                          ; $4bde: $07
    ld sp, hl                                     ; $4bdf: $f9
    rrca                                          ; $4be0: $0f
    ei                                            ; $4be1: $fb
    rrca                                          ; $4be2: $0f
    rst $38                                       ; $4be3: $ff
    ld hl, sp+$0f                                 ; $4be4: $f8 $0f
    db $fc                                        ; $4be6: $fc
    rlca                                          ; $4be7: $07
    ld e, $f3                                     ; $4be8: $1e $f3
    ld e, $f7                                     ; $4bea: $1e $f7
    push af                                       ; $4bec: $f5
    dec c                                         ; $4bed: $0d
    dec [hl]                                      ; $4bee: $35
    ldh [$08], a                                  ; $4bef: $e0 $08
    ld sp, $a1e0                                  ; $4bf1: $31 $e0 $a1
    rst $38                                       ; $4bf4: $ff
    sbc a                                         ; $4bf5: $9f
    rst $38                                       ; $4bf6: $ff
    rst $38                                       ; $4bf7: $ff
    pop af                                        ; $4bf8: $f1
    sbc a                                         ; $4bf9: $9f
    pop af                                        ; $4bfa: $f1
    rst $18                                       ; $4bfb: $df
    ld h, c                                       ; $4bfc: $61
    rst $38                                       ; $4bfd: $ff
    pop bc                                        ; $4bfe: $c1
    rst $38                                       ; $4bff: $ff
    db $dd                                        ; $4c00: $dd
    ld hl, $e0fc                                  ; $4c01: $21 $fc $e0
    ld a, [bc]                                    ; $4c04: $0a
    rst $38                                       ; $4c05: $ff
    ld a, [c]                                     ; $4c06: $f2
    ld b, d                                       ; $4c07: $42
    push hl                                       ; $4c08: $e5
    ret nz                                        ; $4c09: $c0

    ccf                                           ; $4c0a: $3f
    ld a, a                                       ; $4c0b: $7f
    ldh [$bf], a                                  ; $4c0c: $e0 $bf
    ldh [$3f], a                                  ; $4c0e: $e0 $3f
    ldh [$7f], a                                  ; $4c10: $e0 $7f
    ret nz                                        ; $4c12: $c0

    ret nz                                        ; $4c13: $c0

    db $e4                                        ; $4c14: $e4
    sub $be                                       ; $4c15: $d6 $be
    and $0c                                       ; $4c17: $e6 $0c
    rst $38                                       ; $4c19: $ff
    cp [hl]                                       ; $4c1a: $be
    pop hl                                        ; $4c1b: $e1
    dec a                                         ; $4c1c: $3d
    cp [hl]                                       ; $4c1d: $be
    db $e4                                        ; $4c1e: $e4
    sbc a                                         ; $4c1f: $9f
    rst $38                                       ; $4c20: $ff
    add l                                         ; $4c21: $85
    ld h, c                                       ; $4c22: $61
    cp [hl]                                       ; $4c23: $be
    ld [c], a                                     ; $4c24: $e2
    ld a, c                                       ; $4c25: $79
    cp [hl]                                       ; $4c26: $be
    db $e4                                        ; $4c27: $e4
    ret nz                                        ; $4c28: $c0

    and $be                                       ; $4c29: $e6 $be
    and $d2                                       ; $4c2b: $e6 $d2
    rst $20                                       ; $4c2d: $e7
    ld h, $df                                     ; $4c2e: $26 $df
    rst $38                                       ; $4c30: $ff
    cp a                                          ; $4c31: $bf
    rst $38                                       ; $4c32: $ff
    cp a                                          ; $4c33: $bf
    ldh [$d2], a                                  ; $4c34: $e0 $d2
    rst $20                                       ; $4c36: $e7
    ret                                           ; $4c37: $c9


    rst $38                                       ; $4c38: $ff
    ld l, a                                       ; $4c39: $6f
    ld a, [$faff]                                 ; $4c3a: $fa $ff $fa
    rrca                                          ; $4c3d: $0f
    sub b                                         ; $4c3e: $90
    db $ec                                        ; $4c3f: $ec
    ldh [$0b], a                                  ; $4c40: $e0 $0b
    ldh [$c0], a                                  ; $4c42: $e0 $c0
    ei                                            ; $4c44: $fb
    jr nz, jr_075_4c86                            ; $4c45: $20 $3f

    sbc $c1                                       ; $4c47: $de $c1
    pop bc                                        ; $4c49: $c1
    ld a, a                                       ; $4c4a: $7f
    db $e3                                        ; $4c4b: $e3
    ld a, [hl]                                    ; $4c4c: $7e
    add a                                         ; $4c4d: $87
    rst $38                                       ; $4c4e: $ff
    cp $80                                        ; $4c4f: $fe $80
    rst $38                                       ; $4c51: $ff
    ld b, c                                       ; $4c52: $41
    rst $38                                       ; $4c53: $ff
    ld b, b                                       ; $4c54: $40
    rst $38                                       ; $4c55: $ff
    ldh [rIE], a                                  ; $4c56: $e0 $ff
    cp a                                          ; $4c58: $bf
    ld hl, sp-$61                                 ; $4c59: $f8 $9f
    rst $30                                       ; $4c5b: $f7
    rra                                           ; $4c5c: $1f
    ldh a, [$1f]                                  ; $4c5d: $f0 $1f
    ld sp, hl                                     ; $4c5f: $f9
    rst $28                                       ; $4c60: $ef
    rrca                                          ; $4c61: $0f
    inc bc                                        ; $4c62: $03
    rst $38                                       ; $4c63: $ff
    inc b                                         ; $4c64: $04
    cp $e0                                        ; $4c65: $fe $e0
    ld c, $fb                                     ; $4c67: $0e $fb
    ld a, $ff                                     ; $4c69: $3e $ff
    di                                            ; $4c6b: $f3
    rst $18                                       ; $4c6c: $df
    pop af                                        ; $4c6d: $f1
    rra                                           ; $4c6e: $1f
    ldh a, [$3f]                                  ; $4c6f: $f0 $3f
    ldh [$b0], a                                  ; $4c71: $e0 $b0
    cp $c0                                        ; $4c73: $fe $c0
    ret nz                                        ; $4c75: $c0

    ld [$0ff8], sp                                ; $4c76: $08 $f8 $0f
    ld hl, sp+$05                                 ; $4c79: $f8 $05
    db $fc                                        ; $4c7b: $fc
    dec b                                         ; $4c7c: $05
    rst $38                                       ; $4c7d: $ff
    db $fc                                        ; $4c7e: $fc
    adc a                                         ; $4c7f: $8f
    db $fc                                        ; $4c80: $fc
    jp nz, $0ffe                                  ; $4c81: $c2 $fe $0f

    inc bc                                        ; $4c84: $03
    di                                            ; $4c85: $f3

jr_075_4c86:
    rst $38                                       ; $4c86: $ff
    inc bc                                        ; $4c87: $03
    inc e                                         ; $4c88: $1c
    rlca                                          ; $4c89: $07
    add sp, $0f                                   ; $4c8a: $e8 $0f
    or b                                          ; $4c8c: $b0
    rra                                           ; $4c8d: $1f
    or b                                          ; $4c8e: $b0
    xor a                                         ; $4c8f: $af
    ccf                                           ; $4c90: $3f
    ret nc                                        ; $4c91: $d0

    ld a, a                                       ; $4c92: $7f
    ld d, b                                       ; $4c93: $50
    ld [$c1c0], a                                 ; $4c94: $ea $c0 $c1
    ret nz                                        ; $4c97: $c0

    ldh [$60], a                                  ; $4c98: $e0 $60
    ccf                                           ; $4c9a: $3f
    rst $38                                       ; $4c9b: $ff
    jr c, @+$01                                   ; $4c9c: $38 $ff

    rra                                           ; $4c9e: $1f
    rst $30                                       ; $4c9f: $f7
    rra                                           ; $4ca0: $1f
    adc $e0                                       ; $4ca1: $ce $e0
    ret nz                                        ; $4ca3: $c0

    push hl                                       ; $4ca4: $e5
    rst $38                                       ; $4ca5: $ff
    ccf                                           ; $4ca6: $3f
    ld sp, hl                                     ; $4ca7: $f9
    rst $08                                       ; $4ca8: $cf
    ld sp, hl                                     ; $4ca9: $f9
    rrca                                          ; $4caa: $0f
    ld hl, sp-$01                                 ; $4cab: $f8 $ff
    ldh a, [rIE]                                  ; $4cad: $f0 $ff
    ldh a, [$c0]                                  ; $4caf: $f0 $c0
    ld c, a                                       ; $4cb1: $4f
    ret nz                                        ; $4cb2: $c0

    jr c, @-$1e                                   ; $4cb3: $38 $e0

    daa                                           ; $4cb5: $27
    ldh [rIE], a                                  ; $4cb6: $e0 $ff
    dec e                                         ; $4cb8: $1d
    ldh a, [$0d]                                  ; $4cb9: $f0 $0d
    ld hl, sp-$71                                 ; $4cbb: $f8 $8f
    ld hl, sp-$3c                                 ; $4cbd: $f8 $c4
    db $fc                                        ; $4cbf: $fc
    rst $38                                       ; $4cc0: $ff
    inc c                                         ; $4cc1: $0c
    rlca                                          ; $4cc2: $07
    di                                            ; $4cc3: $f3
    inc bc                                        ; $4cc4: $03
    dec e                                         ; $4cc5: $1d
    ld bc, $02e7                                  ; $4cc6: $01 $e7 $02
    rst $30                                       ; $4cc9: $f7
    cp a                                          ; $4cca: $bf
    rlca                                          ; $4ccb: $07
    cp b                                          ; $4ccc: $b8
    ld d, [hl]                                    ; $4ccd: $56
    ret nz                                        ; $4cce: $c0

    db $10                                        ; $4ccf: $10
    rra                                           ; $4cd0: $1f
    sbc a                                         ; $4cd1: $9f
    ldh a, [$ef]                                  ; $4cd2: $f0 $ef
    sbc a                                         ; $4cd4: $9f
    ld hl, sp-$71                                 ; $4cd5: $f8 $8f
    rst $38                                       ; $4cd7: $ff
    ld [hl], d                                    ; $4cd8: $72
    ldh [rIE], a                                  ; $4cd9: $e0 $ff
    jr nz, @+$01                                  ; $4cdb: $20 $ff

    rst $38                                       ; $4cdd: $ff
    inc e                                         ; $4cde: $1c
    rst $38                                       ; $4cdf: $ff
    rrca                                          ; $4ce0: $0f
    ei                                            ; $4ce1: $fb
    ld a, [c]                                     ; $4ce2: $f2
    rra                                           ; $4ce3: $1f
    di                                            ; $4ce4: $f3
    cp a                                          ; $4ce5: $bf
    rst $30                                       ; $4ce6: $f7
    ld [c], a                                     ; $4ce7: $e2
    rst $38                                       ; $4ce8: $ff
    dec b                                         ; $4ce9: $05
    di                                            ; $4cea: $f3
    and b                                         ; $4ceb: $a0
    rrca                                          ; $4cec: $0f
    db $fd                                        ; $4ced: $fd
    scf                                           ; $4cee: $37
    db $fc                                        ; $4cef: $fc
    rst $38                                       ; $4cf0: $ff
    rst $08                                       ; $4cf1: $cf
    ld hl, sp+$70                                 ; $4cf2: $f8 $70
    ret nz                                        ; $4cf4: $c0

    xor a                                         ; $4cf5: $af
    ldh [rNR23], a                                ; $4cf6: $e0 $18
    ldh a, [$fd]                                  ; $4cf8: $f0 $fd
    rla                                           ; $4cfa: $17
    jp nz, Jump_000_05e0                          ; $4cfb: $c2 $e0 $05

    db $fc                                        ; $4cfe: $fc
    add e                                         ; $4cff: $83
    cp $b9                                        ; $4d00: $fe $b9
    rst $38                                       ; $4d02: $ff
    or $80                                        ; $4d03: $f6 $80
    ldh [rSB], a                                  ; $4d05: $e0 $01
    rra                                           ; $4d07: $1f
    add b                                         ; $4d08: $80
    ldh [$b3], a                                  ; $4d09: $e0 $b3
    inc e                                         ; $4d0b: $1c
    or [hl]                                       ; $4d0c: $b6
    add hl, de                                    ; $4d0d: $19
    ld l, a                                       ; $4d0e: $6f
    db $e4                                        ; $4d0f: $e4
    dec sp                                        ; $4d10: $3b
    jr nz, jr_075_4d52                            ; $4d11: $20 $3f

    ld b, a                                       ; $4d13: $47
    ldh [$f0], a                                  ; $4d14: $e0 $f0
    rst $08                                       ; $4d16: $cf
    jp nz, $ffe6                                  ; $4d17: $c2 $e6 $ff

    rrca                                          ; $4d1a: $0f
    ld hl, sp-$05                                 ; $4d1b: $f8 $fb
    rst $18                                       ; $4d1d: $df
    ld a, [c]                                     ; $4d1e: $f2
    rra                                           ; $4d1f: $1f
    push hl                                       ; $4d20: $e5
    rst $38                                       ; $4d21: $ff
    rst $28                                       ; $4d22: $ef
    rlca                                          ; $4d23: $07
    rst $38                                       ; $4d24: $ff
    rrca                                          ; $4d25: $0f
    db $fc                                        ; $4d26: $fc
    jp nz, $ffe1                                  ; $4d27: $c2 $e1 $ff

    ld sp, $ff90                                  ; $4d2a: $31 $90 $ff
    ldh a, [$1f]                                  ; $4d2d: $f0 $1f
    ld hl, sp+$24                                 ; $4d2f: $f8 $24
    call c, $ee13                                 ; $4d31: $dc $13 $ee
    add e                                         ; $4d34: $83
    rst $28                                       ; $4d35: $ef
    cp $f1                                        ; $4d36: $fe $f1
    ld a, a                                       ; $4d38: $7f
    add c                                         ; $4d39: $81
    sub a                                         ; $4d3a: $97
    and b                                         ; $4d3b: $a0
    add e                                         ; $4d3c: $83
    cp $83                                        ; $4d3d: $fe $83
    cp a                                          ; $4d3f: $bf
    cp $97                                        ; $4d40: $fe $97
    cp $d3                                        ; $4d42: $fe $d3
    rst $38                                       ; $4d44: $ff
    add e                                         ; $4d45: $83
    or $e2                                        ; $4d46: $f6 $e2
    add a                                         ; $4d48: $87
    jp hl                                         ; $4d49: $e9


    cp $d5                                        ; $4d4a: $fe $d5
    ldh [$3e], a                                  ; $4d4c: $e0 $3e
    pop bc                                        ; $4d4e: $c1
    inc bc                                        ; $4d4f: $03

jr_075_4d50:
    push de                                       ; $4d50: $d5
    and b                                         ; $4d51: $a0

jr_075_4d52:
    sub b                                         ; $4d52: $90
    rst $38                                       ; $4d53: $ff
    add b                                         ; $4d54: $80
    di                                            ; $4d55: $f3
    ld a, a                                       ; $4d56: $7f
    ld b, b                                       ; $4d57: $40
    adc d                                         ; $4d58: $8a
    and b                                         ; $4d59: $a0
    sub b                                         ; $4d5a: $90
    and e                                         ; $4d5b: $a3
    ld h, c                                       ; $4d5c: $61
    rst $38                                       ; $4d5d: $ff
    ld [de], a                                    ; $4d5e: $12
    rst $38                                       ; $4d5f: $ff
    rst $38                                       ; $4d60: $ff
    ld [bc], a                                    ; $4d61: $02
    cp $04                                        ; $4d62: $fe $04
    add e                                         ; $4d64: $83
    cp $82                                        ; $4d65: $fe $82
    cp $d2                                        ; $4d67: $fe $d2
    db $d3                                        ; $4d69: $d3
    cp $96                                        ; $4d6a: $fe $96
    ld a, [$fee0]                                 ; $4d6c: $fa $e0 $fe
    pop hl                                        ; $4d6f: $e1
    ld a, [$c0d0]                                 ; $4d70: $fa $d0 $c0
    add b                                         ; $4d73: $80
    rst $38                                       ; $4d74: $ff
    push af                                       ; $4d75: $f5
    push bc                                       ; $4d76: $c5
    jp nz, $81e0                                  ; $4d77: $c2 $e0 $81

    cp $e0                                        ; $4d7a: $fe $e0
    and b                                         ; $4d7c: $a0
    rst $38                                       ; $4d7d: $ff
    ld b, b                                       ; $4d7e: $40
    ld a, a                                       ; $4d7f: $7f
    xor $dc                                       ; $4d80: $ee $dc
    ret nz                                        ; $4d82: $c0

    ldh a, [$9f]                                  ; $4d83: $f0 $9f
    ldh a, [$c5]                                  ; $4d85: $f0 $c5
    ret nz                                        ; $4d87: $c0

    ldh a, [rIE]                                  ; $4d88: $f0 $ff
    pop hl                                        ; $4d8a: $e1
    push af                                       ; $4d8b: $f5
    rst $38                                       ; $4d8c: $ff
    jr nc, jr_075_4d50                            ; $4d8d: $30 $c1

    db $10                                        ; $4d8f: $10
    cp $e2                                        ; $4d90: $fe $e2
    add hl, de                                    ; $4d92: $19
    rst $38                                       ; $4d93: $ff
    ld [c], a                                     ; $4d94: $e2
    rst $38                                       ; $4d95: $ff
    rst $30                                       ; $4d96: $f7
    ld [bc], a                                    ; $4d97: $02
    db $fd                                        ; $4d98: $fd
    inc b                                         ; $4d99: $04
    ret nz                                        ; $4d9a: $c0

    db $e3                                        ; $4d9b: $e3
    sbc [hl]                                      ; $4d9c: $9e
    cp $fe                                        ; $4d9d: $fe $fe
    ld h, d                                       ; $4d9f: $62
    db $eb                                        ; $4da0: $eb
    rst $38                                       ; $4da1: $ff
    ld e, l                                       ; $4da2: $5d
    call $81e2                                    ; $4da3: $cd $e2 $81
    inc c                                         ; $4da6: $0c
    pop hl                                        ; $4da7: $e1
    ld h, b                                       ; $4da8: $60
    ccf                                           ; $4da9: $3f
    ld b, b                                       ; $4daa: $40
    call $fe7f                                    ; $4dab: $cd $7f $fe
    db $e3                                        ; $4dae: $e3
    ld b, c                                       ; $4daf: $41
    ld a, a                                       ; $4db0: $7f
    res 4, b                                      ; $4db1: $cb $a0
    and d                                         ; $4db3: $a2
    ret nz                                        ; $4db4: $c0

    cpl                                           ; $4db5: $2f
    ld hl, sp-$41                                 ; $4db6: $f8 $bf
    rst $08                                       ; $4db8: $cf
    ld hl, sp+$4f                                 ; $4db9: $f8 $4f
    ld hl, sp+$5f                                 ; $4dbb: $f8 $5f
    ldh a, [$0a]                                  ; $4dbd: $f0 $0a
    and b                                         ; $4dbf: $a0
    ld [hl], b                                    ; $4dc0: $70
    rst $38                                       ; $4dc1: $ff
    rst $38                                       ; $4dc2: $ff
    add hl, bc                                    ; $4dc3: $09
    cp $0b                                        ; $4dc4: $fe $0b
    rst $38                                       ; $4dc6: $ff
    dec c                                         ; $4dc7: $0d
    rst $38                                       ; $4dc8: $ff
    ld a, [de]                                    ; $4dc9: $1a
    db $db                                        ; $4dca: $db
    rst $38                                       ; $4dcb: $ff
    ld [hl], c                                    ; $4dcc: $71
    sbc a                                         ; $4dcd: $9f
    ldh [rNR41], a                                ; $4dce: $e0 $20
    pop bc                                        ; $4dd0: $c1
    db $e3                                        ; $4dd1: $e3
    add b                                         ; $4dd2: $80
    ld [bc], a                                    ; $4dd3: $02
    cp $ff                                        ; $4dd4: $fe $ff
    ld b, $fc                                     ; $4dd6: $06 $fc
    add [hl]                                      ; $4dd8: $86
    db $fc                                        ; $4dd9: $fc
    adc b                                         ; $4dda: $88
    ld hl, sp-$10                                 ; $4ddb: $f8 $f0
    ld [hl], b                                    ; $4ddd: $70
    rst $38                                       ; $4dde: $ff
    ld hl, sp+$40                                 ; $4ddf: $f8 $40
    ldh a, [$3f]                                  ; $4de1: $f0 $3f
    jr z, jr_075_4e24                             ; $4de3: $28 $3f

    ld c, b                                       ; $4de5: $48
    ld a, a                                       ; $4de6: $7f
    rst $10                                       ; $4de7: $d7
    ld d, h                                       ; $4de8: $54
    ld a, e                                       ; $4de9: $7b
    ld d, b                                       ; $4dea: $50
    jp nz, Jump_075_40e2                          ; $4deb: $c2 $e2 $40

    ret nz                                        ; $4dee: $c0

    ld [c], a                                     ; $4def: $e2
    ld e, a                                       ; $4df0: $5f
    ld hl, sp-$01                                 ; $4df1: $f8 $ff
    cpl                                           ; $4df3: $2f
    db $fc                                        ; $4df4: $fc
    cpl                                           ; $4df5: $2f
    ld hl, sp-$01                                 ; $4df6: $f8 $ff
    pop af                                        ; $4df8: $f1
    rrca                                          ; $4df9: $0f
    db $fc                                        ; $4dfa: $fc
    xor e                                         ; $4dfb: $ab
    inc bc                                        ; $4dfc: $03
    rst $38                                       ; $4dfd: $ff
    call nz, $12e2                                ; $4dfe: $c4 $e2 $12
    sub c                                         ; $4e01: $91
    and b                                         ; $4e02: $a0
    ldh [$af], a                                  ; $4e03: $e0 $af
    ret nz                                        ; $4e05: $c0

    inc hl                                        ; $4e06: $23
    rst $30                                       ; $4e07: $f7
    rst $38                                       ; $4e08: $ff
    ld [hl+], a                                   ; $4e09: $22
    inc bc                                        ; $4e0a: $03
    inc a                                         ; $4e0b: $3c
    and b                                         ; $4e0c: $a0
    add [hl]                                      ; $4e0d: $86
    db $fc                                        ; $4e0e: $fc
    sbc [hl]                                      ; $4e0f: $9e
    ld hl, sp-$01                                 ; $4e10: $f8 $ff
    ld [c], a                                     ; $4e12: $e2
    ld h, b                                       ; $4e13: $60
    ret nz                                        ; $4e14: $c0

    ld b, b                                       ; $4e15: $40
    ldh [$80], a                                  ; $4e16: $e0 $80
    ld hl, sp-$80                                 ; $4e18: $f8 $80
    ld a, a                                       ; $4e1a: $7f
    add a                                         ; $4e1b: $87
    cp $c1                                        ; $4e1c: $fe $c1
    ld a, a                                       ; $4e1e: $7f
    ret nz                                        ; $4e1f: $c0

    ld a, a                                       ; $4e20: $7f
    jp nz, $c002                                  ; $4e21: $c2 $02 $c0

jr_075_4e24:
    ccf                                           ; $4e24: $3f
    ldh [$3f], a                                  ; $4e25: $e0 $3f
    ld [$f73f], a                                 ; $4e27: $ea $3f $f7
    rra                                           ; $4e2a: $1f
    ld [hl], a                                    ; $4e2b: $77
    pop hl                                        ; $4e2c: $e1
    ld a, h                                       ; $4e2d: $7c
    add b                                         ; $4e2e: $80
    ld e, d                                       ; $4e2f: $5a
    ld a, c                                       ; $4e30: $79
    add b                                         ; $4e31: $80
    ld a, a                                       ; $4e32: $7f
    ld sp, hl                                     ; $4e33: $f9
    ld [c], a                                     ; $4e34: $e2
    cp $04                                        ; $4e35: $fe $04
    add e                                         ; $4e37: $83
    ret nz                                        ; $4e38: $c0

    cp $fe                                        ; $4e39: $fe $fe
    ldh [$d7], a                                  ; $4e3b: $e0 $d7
    rst $38                                       ; $4e3d: $ff
    rst $38                                       ; $4e3e: $ff
    db $fc                                        ; $4e3f: $fc
    ld a, [$c6e2]                                 ; $4e40: $fa $e2 $c6
    halt                                          ; $4e43: $76
    ldh [rNR14], a                                ; $4e44: $e0 $14
    rst $38                                       ; $4e46: $ff
    ld a, l                                       ; $4e47: $7d
    adc h                                         ; $4e48: $8c
    jp hl                                         ; $4e49: $e9


    and b                                         ; $4e4a: $a0
    ld [$a8ff], sp                                ; $4e4b: $08 $ff $a8
    rst $38                                       ; $4e4e: $ff
    ret nc                                        ; $4e4f: $d0

    call nz, Call_075_6de1                        ; $4e50: $c4 $e1 $6d
    ld [$e0c6], a                                 ; $4e53: $ea $c6 $e0
    rst $38                                       ; $4e56: $ff
    rra                                           ; $4e57: $1f
    ld a, b                                       ; $4e58: $78
    add e                                         ; $4e59: $83
    ld a, a                                       ; $4e5a: $7f
    ldh [$c2], a                                  ; $4e5b: $e0 $c2
    db $e3                                        ; $4e5d: $e3
    dec d                                         ; $4e5e: $15
    cp a                                          ; $4e5f: $bf
    db $fc                                        ; $4e60: $fc
    ld [c], a                                     ; $4e61: $e2
    cp a                                          ; $4e62: $bf
    ret nz                                        ; $4e63: $c0

    ldh [$fe], a                                  ; $4e64: $e0 $fe
    rst $38                                       ; $4e66: $ff
    ldh [$ae], a                                  ; $4e67: $e0 $ae
    db $e3                                        ; $4e69: $e3
    xor b                                         ; $4e6a: $a8
    ld [c], a                                     ; $4e6b: $e2
    sbc a                                         ; $4e6c: $9f
    and c                                         ; $4e6d: $a1
    rst $38                                       ; $4e6e: $ff
    ld l, d                                       ; $4e6f: $6a
    rst $38                                       ; $4e70: $ff
    inc l                                         ; $4e71: $2c
    ld [$4ac0], a                                 ; $4e72: $ea $c0 $4a
    add h                                         ; $4e75: $84
    ld [c], a                                     ; $4e76: $e2
    sbc [hl]                                      ; $4e77: $9e
    add h                                         ; $4e78: $84
    and b                                         ; $4e79: $a0
    ldh a, [$1f]                                  ; $4e7a: $f0 $1f
    db $fc                                        ; $4e7c: $fc
    rrca                                          ; $4e7d: $0f
    ld c, $80                                     ; $4e7e: $0e $80
    jr c, @-$7c                                   ; $4e80: $38 $82

    ccf                                           ; $4e82: $3f
    ld sp, hl                                     ; $4e83: $f9
    ldh a, [rWY]                                  ; $4e84: $f0 $4a
    pop hl                                        ; $4e86: $e1
    cp e                                          ; $4e87: $bb
    add c                                         ; $4e88: $81
    pop bc                                        ; $4e89: $c1
    rst $38                                       ; $4e8a: $ff
    pop af                                        ; $4e8b: $f1
    ld a, a                                       ; $4e8c: $7f
    jp Jump_075_7f95                              ; $4e8d: $c3 $95 $7f


    rst $10                                       ; $4e90: $d7
    add b                                         ; $4e91: $80
    inc hl                                        ; $4e92: $23
    call nz, $f1c0                                ; $4e93: $c4 $c0 $f1
    cp [hl]                                       ; $4e96: $be
    and $89                                       ; $4e97: $e6 $89
    add c                                         ; $4e99: $81
    add b                                         ; $4e9a: $80
    ld a, $0c                                     ; $4e9b: $3e $0c
    add [hl]                                      ; $4e9d: $86
    add b                                         ; $4e9e: $80

jr_075_4e9f:
    ldh [$3f], a                                  ; $4e9f: $e0 $3f
    ld hl, sp+$1f                                 ; $4ea1: $f8 $1f
    ld hl, $fac0                                  ; $4ea3: $21 $c0 $fa
    add l                                         ; $4ea6: $85
    db $fd                                        ; $4ea7: $fd
    nop                                           ; $4ea8: $00
    di                                            ; $4ea9: $f3
    ld h, e                                       ; $4eaa: $63
    call z, $f0ff                                 ; $4eab: $cc $ff $f0
    ld a, a                                       ; $4eae: $7f
    rst $38                                       ; $4eaf: $ff
    ld a, a                                       ; $4eb0: $7f
    ld bc, $fedf                                  ; $4eb1: $01 $df $fe
    ldh [$bb], a                                  ; $4eb4: $e0 $bb
    ldh [$36], a                                  ; $4eb6: $e0 $36
    ldh [$34], a                                  ; $4eb8: $e0 $34
    db $e3                                        ; $4eba: $e3
    jr z, jr_075_4e9f                             ; $4ebb: $28 $e2

    ret nc                                        ; $4ebd: $d0

    add l                                         ; $4ebe: $85
    cp b                                          ; $4ebf: $b8
    db $e3                                        ; $4ec0: $e3
    rst $38                                       ; $4ec1: $ff
    ret nz                                        ; $4ec2: $c0

    rrca                                          ; $4ec3: $0f
    rrca                                          ; $4ec4: $0f
    di                                            ; $4ec5: $f3
    ld bc, $011d                                  ; $4ec6: $01 $1d $01
    and $fb                                       ; $4ec9: $e6 $fb
    inc bc                                        ; $4ecb: $03
    cp d                                          ; $4ecc: $ba
    cp $e0                                        ; $4ecd: $fe $e0
    push hl                                       ; $4ecf: $e5
    rlca                                          ; $4ed0: $07
    dec e                                         ; $4ed1: $1d
    rlca                                          ; $4ed2: $07
    rst $38                                       ; $4ed3: $ff
    cpl                                           ; $4ed4: $2f
    rst $38                                       ; $4ed5: $ff
    ld a, [hl]                                    ; $4ed6: $7e
    cp $7e                                        ; $4ed7: $fe $7e
    ld c, [hl]                                    ; $4ed9: $4e
    pop hl                                        ; $4eda: $e1
    cp $10                                        ; $4edb: $fe $10
    ldh [$fe], a                                  ; $4edd: $e0 $fe
    pop hl                                        ; $4edf: $e1
    or $32                                        ; $4ee0: $f6 $32
    db $e4                                        ; $4ee2: $e4
    cp a                                          ; $4ee3: $bf
    rst $38                                       ; $4ee4: $ff
    or d                                          ; $4ee5: $b2
    pop hl                                        ; $4ee6: $e1
    rst $18                                       ; $4ee7: $df
    ld a, a                                       ; $4ee8: $7f
    ldh a, [$e0]                                  ; $4ee9: $f0 $e0
    ld a, a                                       ; $4eeb: $7f
    rst $08                                       ; $4eec: $cf
    nop                                           ; $4eed: $00
    cp b                                          ; $4eee: $b8
    nop                                           ; $4eef: $00
    rst $20                                       ; $4ef0: $e7
    add b                                         ; $4ef1: $80
    db $dd                                        ; $4ef2: $dd
    cp $e0                                        ; $4ef3: $fe $e0
    cp a                                          ; $4ef5: $bf
    rst $20                                       ; $4ef6: $e7
    ret nz                                        ; $4ef7: $c0

    ld hl, sp-$40                                 ; $4ef8: $f8 $c0
    rrca                                          ; $4efa: $0f
    nop                                           ; $4efb: $00
    ld b, b                                       ; $4efc: $40
    ld h, l                                       ; $4efd: $65
    cp e                                          ; $4efe: $bb
    add e                                         ; $4eff: $83
    ld bc, $b6e7                                  ; $4f00: $01 $e7 $b6
    ldh [$0c], a                                  ; $4f03: $e0 $0c
    pop hl                                        ; $4f05: $e1
    db $fc                                        ; $4f06: $fc
    db $e3                                        ; $4f07: $e3
    adc b                                         ; $4f08: $88
    db $e3                                        ; $4f09: $e3
    db $fc                                        ; $4f0a: $fc
    pop bc                                        ; $4f0b: $c1
    ld e, a                                       ; $4f0c: $5f
    di                                            ; $4f0d: $f3
    ld a, a                                       ; $4f0e: $7f
    ld e, a                                       ; $4f0f: $5f
    ld [hl], h                                    ; $4f10: $74
    ldh [$ee], a                                  ; $4f11: $e0 $ee
    pop hl                                        ; $4f13: $e1
    rst $38                                       ; $4f14: $ff
    rst $38                                       ; $4f15: $ff
    ldh a, [$80]                                  ; $4f16: $f0 $80
    ld l, a                                       ; $4f18: $6f
    rst $08                                       ; $4f19: $cf
    add b                                         ; $4f1a: $80
    cp b                                          ; $4f1b: $b8
    add b                                         ; $4f1c: $80
    ret nz                                        ; $4f1d: $c0

    db $e4                                        ; $4f1e: $e4
    add b                                         ; $4f1f: $80
    cp b                                          ; $4f20: $b8
    ld d, d                                       ; $4f21: $52
    ld h, b                                       ; $4f22: $60
    ldh a, [rP1]                                  ; $4f23: $f0 $00
    ld l, h                                       ; $4f25: $6c
    ld c, d                                       ; $4f26: $4a
    ld [c], a                                     ; $4f27: $e2
    ld b, [hl]                                    ; $4f28: $46
    pop hl                                        ; $4f29: $e1
    or [hl]                                       ; $4f2a: $b6
    db $e3                                        ; $4f2b: $e3
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    rst $18                                       ; $4f2e: $df
    rst $38                                       ; $4f2f: $ff
    sbc a                                         ; $4f30: $9f
    xor a                                         ; $4f31: $af
    cp a                                          ; $4f32: $bf
    xor a                                         ; $4f33: $af
    cp a                                          ; $4f34: $bf
    rst $18                                       ; $4f35: $df
    ld hl, sp-$20                                 ; $4f36: $f8 $e0
    ld l, b                                       ; $4f38: $68
    pop bc                                        ; $4f39: $c1
    ldh a, [$3b]                                  ; $4f3a: $f0 $3b
    ret nz                                        ; $4f3c: $c0

    rst $08                                       ; $4f3d: $cf
    adc d                                         ; $4f3e: $8a
    ldh [$e7], a                                  ; $4f3f: $e0 $e7
    ret nz                                        ; $4f41: $c0

    db $dd                                        ; $4f42: $dd
    cp $e0                                        ; $4f43: $fe $e0
    ret nz                                        ; $4f45: $c0

    ldh [$c1], a                                  ; $4f46: $e0 $c1
    add b                                         ; $4f48: $80
    jp nc, $d0e5                                  ; $4f49: $d2 $e5 $d0

    push hl                                       ; $4f4c: $e5
    jp nc, $d0e3                                  ; $4f4d: $d2 $e3 $d0

    ld a, [c]                                     ; $4f50: $f2
    sub b                                         ; $4f51: $90
    ld [c], a                                     ; $4f52: $e2
    ei                                            ; $4f53: $fb
    rrca                                          ; $4f54: $0f
    rst $30                                       ; $4f55: $f7
    rra                                           ; $4f56: $1f
    rra                                           ; $4f57: $1f
    ld [hl], b                                    ; $4f58: $70
    adc [hl]                                      ; $4f59: $8e
    and b                                         ; $4f5a: $a0
    ld h, b                                       ; $4f5b: $60
    ccf                                           ; $4f5c: $3f
    ccf                                           ; $4f5d: $3f
    ccf                                           ; $4f5e: $3f
    ei                                            ; $4f5f: $fb
    jr nz, jr_075_4fa1                            ; $4f60: $20 $3f

    ld a, [hl+]                                   ; $4f62: $2a
    jp nz, Jump_075_7ffc                          ; $4f63: $c2 $fc $7f

    cp $3f                                        ; $4f66: $fe $3f
    cp $e5                                        ; $4f68: $fe $e5
    daa                                           ; $4f6a: $27
    inc e                                         ; $4f6b: $1c
    ret nz                                        ; $4f6c: $c0

    inc bc                                        ; $4f6d: $03
    ld a, [de]                                    ; $4f6e: $1a
    ret nz                                        ; $4f6f: $c0

    call z, $bcc1                                 ; $4f70: $cc $c1 $bc
    rst $38                                       ; $4f73: $ff
    ld hl, sp-$05                                 ; $4f74: $f8 $fb
    rst $38                                       ; $4f76: $ff
    ret z                                         ; $4f77: $c8

    sub l                                         ; $4f78: $95
    jp nz, $ffff                                  ; $4f79: $c2 $ff $ff

    rst $28                                       ; $4f7c: $ef
    ldh [$f0], a                                  ; $4f7d: $e0 $f0
    rst $38                                       ; $4f7f: $ff
    ldh a, [rNR34]                                ; $4f80: $f0 $1e
    ldh a, [$0e]                                  ; $4f82: $f0 $0e
    ld hl, sp+$0a                                 ; $4f84: $f8 $0a
    ld hl, sp-$08                                 ; $4f86: $f8 $f8
    rst $30                                       ; $4f88: $f7
    ld hl, sp+$08                                 ; $4f89: $f8 $08
    ld hl, sp+$52                                 ; $4f8b: $f8 $52
    ld b, b                                       ; $4f8d: $40
    ld bc, $010f                                  ; $4f8e: $01 $0f $01
    ld a, c                                       ; $4f91: $79
    rst $38                                       ; $4f92: $ff
    ld bc, $0362                                  ; $4f93: $01 $62 $03
    ld b, d                                       ; $4f96: $42
    inc bc                                        ; $4f97: $03
    inc bc                                        ; $4f98: $03
    inc bc                                        ; $4f99: $03
    ld b, $14                                     ; $4f9a: $06 $14
    ld h, d                                       ; $4f9c: $62
    ld b, b                                       ; $4f9d: $40
    jp c, Jump_000_07a1                           ; $4f9e: $da $a1 $07

jr_075_4fa1:
    ld d, c                                       ; $4fa1: $51
    ld b, b                                       ; $4fa2: $40
    ld [bc], a                                    ; $4fa3: $02
    ld b, a                                       ; $4fa4: $47
    ld b, d                                       ; $4fa5: $42
    add $a3                                       ; $4fa6: $c6 $a3
    add hl, de                                    ; $4fa8: $19
    add b                                         ; $4fa9: $80
    ld [$4051], a                                 ; $4faa: $ea $51 $40
    sbc a                                         ; $4fad: $9f
    ld c, l                                       ; $4fae: $4d
    ld b, b                                       ; $4faf: $40
    rst $38                                       ; $4fb0: $ff
    and b                                         ; $4fb1: $a0
    ld b, c                                       ; $4fb2: $41
    add b                                         ; $4fb3: $80

jr_075_4fb4:
    ld e, [hl]                                    ; $4fb4: $5e
    ret nz                                        ; $4fb5: $c0

    ld a, a                                       ; $4fb6: $7f
    ld h, $e0                                     ; $4fb7: $26 $e0
    ld [hl+], a                                   ; $4fb9: $22
    ldh [$e0], a                                  ; $4fba: $e0 $e0
    ldh [rNR41], a                                ; $4fbc: $e0 $20
    db $e4                                        ; $4fbe: $e4
    and b                                         ; $4fbf: $a0
    cp $60                                        ; $4fc0: $fe $60
    ld b, h                                       ; $4fc2: $44
    ld bc, $0141                                  ; $4fc3: $01 $41 $01
    inc bc                                        ; $4fc6: $03
    ld bc, $0107                                  ; $4fc7: $01 $07 $01
    jp nz, $a3d8                                  ; $4fca: $c2 $d8 $a3

    add c                                         ; $4fcd: $81
    dec e                                         ; $4fce: $1d
    ld b, d                                       ; $4fcf: $42
    ret nz                                        ; $4fd0: $c0

    rst $20                                       ; $4fd1: $e7
    add hl, bc                                    ; $4fd2: $09
    and c                                         ; $4fd3: $a1
    ret nz                                        ; $4fd4: $c0

    add sp, $00                                   ; $4fd5: $e8 $00
    sbc [hl]                                      ; $4fd7: $9e
    rst $38                                       ; $4fd8: $ff
    add b                                         ; $4fd9: $80
    ld b, [hl]                                    ; $4fda: $46
    ret nz                                        ; $4fdb: $c0

    ld b, d                                       ; $4fdc: $42
    ret nz                                        ; $4fdd: $c0

    ret nz                                        ; $4fde: $c0

    ret nz                                        ; $4fdf: $c0

    ld h, b                                       ; $4fe0: $60
    ld hl, $fec0                                  ; $4fe1: $21 $c0 $fe
    xor b                                         ; $4fe4: $a8
    ld a, [$fee5]                                 ; $4fe5: $fa $e5 $fe
    ld b, a                                       ; $4fe8: $47
    jr z, jr_075_4fb4                             ; $4fe9: $28 $c9

    add b                                         ; $4feb: $80
    sbc b                                         ; $4fec: $98
    push bc                                       ; $4fed: $c5
    ldh [rLYC], a                                 ; $4fee: $e0 $45
    ldh a, [$58]                                  ; $4ff0: $f0 $58
    push bc                                       ; $4ff2: $c5
    rst $38                                       ; $4ff3: $ff
    db $ed                                        ; $4ff4: $ed
    ld a, b                                       ; $4ff5: $78
    call nz, $c06a                                ; $4ff6: $c4 $6a $c0
    ldh a, [$80]                                  ; $4ff9: $f0 $80
    sbc [hl]                                      ; $4ffb: $9e
    add b                                         ; $4ffc: $80
    db $e3                                        ; $4ffd: $e3
    add [hl]                                      ; $4ffe: $86
    add b                                         ; $4fff: $80
    ld a, b                                       ; $5000: $78
    dec h                                         ; $5001: $25
    cp b                                          ; $5002: $b8
    dec h                                         ; $5003: $25
    and d                                         ; $5004: $a2
    db $ec                                        ; $5005: $ec
    nop                                           ; $5006: $00
    add d                                         ; $5007: $82
    add b                                         ; $5008: $80
    add e                                         ; $5009: $83
    ret nz                                        ; $500a: $c0

    add b                                         ; $500b: $80
    ret z                                         ; $500c: $c8

    add c                                         ; $500d: $81
    ld a, d                                       ; $500e: $7a
    push hl                                       ; $500f: $e5
    sbc b                                         ; $5010: $98
    inc h                                         ; $5011: $24
    add b                                         ; $5012: $80
    and [hl]                                      ; $5013: $a6
    or b                                          ; $5014: $b0
    dec hl                                        ; $5015: $2b
    rst $38                                       ; $5016: $ff
    ld bc, $00ff                                  ; $5017: $01 $ff $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    nop                                           ; $501e: $00
    nop                                           ; $501f: $00
    rst $38                                       ; $5020: $ff
    rst $38                                       ; $5021: $ff
    rst $38                                       ; $5022: $ff
    ccf                                           ; $5023: $3f
    nop                                           ; $5024: $00
    rst $08                                       ; $5025: $cf
    nop                                           ; $5026: $00
    rst $30                                       ; $5027: $f7
    nop                                           ; $5028: $00
    rst $18                                       ; $5029: $df
    inc sp                                        ; $502a: $33
    nop                                           ; $502b: $00
    ld de, $1900                                  ; $502c: $11 $00 $19
    cp $e0                                        ; $502f: $fe $e0
    rst $38                                       ; $5031: $ff
    rst $38                                       ; $5032: $ff
    rst $38                                       ; $5033: $ff
    rst $38                                       ; $5034: $ff
    nop                                           ; $5035: $00
    rst $38                                       ; $5036: $ff
    ld [hl], h                                    ; $5037: $74
    rst $38                                       ; $5038: $ff
    inc a                                         ; $5039: $3c
    rst $38                                       ; $503a: $ff
    db $fc                                        ; $503b: $fc
    ccf                                           ; $503c: $3f
    rst $38                                       ; $503d: $ff
    ld hl, sp-$01                                 ; $503e: $f8 $ff
    db $ec                                        ; $5040: $ec
    rst $38                                       ; $5041: $ff
    sub a                                         ; $5042: $97
    ldh a, [$e2]                                  ; $5043: $f0 $e2
    cp $e7                                        ; $5045: $fe $e7
    ld c, l                                       ; $5047: $4d
    ret nz                                        ; $5048: $c0

    ldh a, [$ea]                                  ; $5049: $f0 $ea
    inc a                                         ; $504b: $3c
    jp $e0d1                                      ; $504c: $c3 $d1 $e0


    ldh [$ea], a                                  ; $504f: $e0 $ea
    nop                                           ; $5051: $00
    rst $38                                       ; $5052: $ff
    db $ed                                        ; $5053: $ed
    ld a, a                                       ; $5054: $7f
    dec a                                         ; $5055: $3d
    nop                                           ; $5056: $00
    ei                                            ; $5057: $fb
    nop                                           ; $5058: $00
    rlca                                          ; $5059: $07
    nop                                           ; $505a: $00
    or a                                          ; $505b: $b7
    cp $e0                                        ; $505c: $fe $e0
    rst $38                                       ; $505e: $ff
    rst $28                                       ; $505f: $ef
    nop                                           ; $5060: $00
    rra                                           ; $5061: $1f
    ld bc, $01ff                                  ; $5062: $01 $ff $01
    rst $38                                       ; $5065: $ff
    rra                                           ; $5066: $1f
    rst $38                                       ; $5067: $ff
    ld hl, sp+$3f                                 ; $5068: $f8 $3f
    ret nz                                        ; $506a: $c0

    ld a, a                                       ; $506b: $7f
    add $7f                                       ; $506c: $c6 $7f
    adc c                                         ; $506e: $89
    rst $38                                       ; $506f: $ff
    rst $38                                       ; $5070: $ff
    add b                                         ; $5071: $80
    rst $38                                       ; $5072: $ff
    inc bc                                        ; $5073: $03
    rst $38                                       ; $5074: $ff
    rlca                                          ; $5075: $07
    db $fc                                        ; $5076: $fc
    ccf                                           ; $5077: $3f
    ldh a, [rIE]                                  ; $5078: $f0 $ff
    rrca                                          ; $507a: $0f
    ld hl, sp+$07                                 ; $507b: $f8 $07
    db $fc                                        ; $507d: $fc
    rlca                                          ; $507e: $07
    db $fc                                        ; $507f: $fc
    inc sp                                        ; $5080: $33
    cp $ff                                        ; $5081: $fe $ff
    dec bc                                        ; $5083: $0b
    cp $33                                        ; $5084: $fe $33
    cp $f9                                        ; $5086: $fe $f9
    rst $08                                       ; $5088: $cf
    cp h                                          ; $5089: $bc
    nop                                           ; $508a: $00
    rst $18                                       ; $508b: $df
    rst $18                                       ; $508c: $df
    nop                                           ; $508d: $00
    ldh [rP1], a                                  ; $508e: $e0 $00
    db $ed                                        ; $5090: $ed
    cp $e0                                        ; $5091: $fe $e0
    rst $30                                       ; $5093: $f7
    nop                                           ; $5094: $00
    db $fd                                        ; $5095: $fd
    ld hl, sp-$7a                                 ; $5096: $f8 $86
    ldh [$3f], a                                  ; $5098: $e0 $3f
    inc bc                                        ; $509a: $03
    cp $07                                        ; $509b: $fe $07
    ld b, $07                                     ; $509d: $06 $07
    rst $38                                       ; $509f: $ff
    db $fc                                        ; $50a0: $fc
    rst $08                                       ; $50a1: $cf
    db $fc                                        ; $50a2: $fc
    ld l, a                                       ; $50a3: $6f
    db $fc                                        ; $50a4: $fc
    rst $38                                       ; $50a5: $ff
    db $fc                                        ; $50a6: $fc
    rst $08                                       ; $50a7: $cf
    rst $38                                       ; $50a8: $ff
    ld hl, sp-$01                                 ; $50a9: $f8 $ff
    inc c                                         ; $50ab: $0c
    rst $38                                       ; $50ac: $ff
    db $eb                                        ; $50ad: $eb
    rst $38                                       ; $50ae: $ff
    add d                                         ; $50af: $82
    rst $38                                       ; $50b0: $ff
    rst $30                                       ; $50b1: $f7
    cp c                                          ; $50b2: $b9
    rst $38                                       ; $50b3: $ff

jr_075_50b4:
    jr nz, jr_075_50b4                            ; $50b4: $20 $fe

    ldh [rTIMA], a                                ; $50b6: $e0 $05
    rst $38                                       ; $50b8: $ff
    ld [bc], a                                    ; $50b9: $02
    rst $38                                       ; $50ba: $ff
    ei                                            ; $50bb: $fb
    rst $38                                       ; $50bc: $ff
    ret nz                                        ; $50bd: $c0

    cp [hl]                                       ; $50be: $be
    pop hl                                        ; $50bf: $e1
    add a                                         ; $50c0: $87
    db $fc                                        ; $50c1: $fc
    ld b, a                                       ; $50c2: $47
    db $fc                                        ; $50c3: $fc
    ld c, a                                       ; $50c4: $4f
    rst $18                                       ; $50c5: $df
    ld a, [$f29f]                                 ; $50c6: $fa $9f $f2
    ld a, a                                       ; $50c9: $7f
    db $e4                                        ; $50ca: $e4
    sub b                                         ; $50cb: $90
    ld [c], a                                     ; $50cc: $e2
    inc bc                                        ; $50cd: $03
    or [hl]                                       ; $50ce: $b6
    ccf                                           ; $50cf: $3f
    rlca                                          ; $50d0: $07
    or [hl]                                       ; $50d1: $b6
    rlca                                          ; $50d2: $07
    db $ec                                        ; $50d3: $ec
    rst $08                                       ; $50d4: $cf
    ld a, h                                       ; $50d5: $7c
    call z, Call_075_5ce0                         ; $50d6: $cc $e0 $5c
    pop hl                                        ; $50d9: $e1
    rla                                           ; $50da: $17
    inc c                                         ; $50db: $0c
    rst $38                                       ; $50dc: $ff
    ld l, e                                       ; $50dd: $6b
    call z, $99e0                                 ; $50de: $cc $e0 $99
    call z, Call_000_3ae2                         ; $50e1: $cc $e2 $3a
    db $e3                                        ; $50e4: $e3
    call z, Call_000_33e5                         ; $50e5: $cc $e5 $33
    ld b, e                                       ; $50e8: $43
    cp $6e                                        ; $50e9: $fe $6e
    ldh [rOCPS], a                                ; $50eb: $e0 $6a
    ldh [$fe], a                                  ; $50ed: $e0 $fe
    inc bc                                        ; $50ef: $03
    cp $e1                                        ; $50f0: $fe $e1
    ld h, d                                       ; $50f2: $62
    ldh [$eb], a                                  ; $50f3: $e0 $eb
    nop                                           ; $50f5: $00
    rlca                                          ; $50f6: $07
    ld sp, hl                                     ; $50f7: $f9
    ldh [$c0], a                                  ; $50f8: $e0 $c0
    ld e, c                                       ; $50fa: $59
    ldh [$c0], a                                  ; $50fb: $e0 $c0
    rst $38                                       ; $50fd: $ff
    ld [$fffb], sp                                ; $50fe: $08 $fb $ff
    ld b, a                                       ; $5101: $47
    ld de, $f9e0                                  ; $5102: $11 $e0 $f9
    rst $28                                       ; $5105: $ef
    ld sp, $90ff                                  ; $5106: $31 $ff $90
    ld a, $f4                                     ; $5109: $3e $f4
    ldh [$d1], a                                  ; $510b: $e0 $d1
    rst $38                                       ; $510d: $ff
    daa                                           ; $510e: $27
    rst $38                                       ; $510f: $ff
    ld sp, hl                                     ; $5110: $f9
    ld b, c                                       ; $5111: $41
    ldh [$f2], a                                  ; $5112: $e0 $f2
    jp nz, $8079                                  ; $5114: $c2 $79 $80

    ld b, e                                       ; $5117: $43
    ldh [$ea], a                                  ; $5118: $e0 $ea
    call nz, $bff8                                ; $511a: $c4 $f8 $bf
    ld hl, sp-$51                                 ; $511d: $f8 $af
    ld b, c                                       ; $511f: $41
    ldh [$fb], a                                  ; $5120: $e0 $fb
    rlca                                          ; $5122: $07
    rst $38                                       ; $5123: $ff
    cp [hl]                                       ; $5124: $be
    db $e4                                        ; $5125: $e4
    nop                                           ; $5126: $00
    rst $38                                       ; $5127: $ff
    rrca                                          ; $5128: $0f
    rst $38                                       ; $5129: $ff
    rra                                           ; $512a: $1f
    rst $38                                       ; $512b: $ff
    ldh a, [$df]                                  ; $512c: $f0 $df
    rst $30                                       ; $512e: $f7
    rrca                                          ; $512f: $0f
    rst $38                                       ; $5130: $ff
    rst $08                                       ; $5131: $cf
    rst $38                                       ; $5132: $ff
    rlca                                          ; $5133: $07
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    and b                                         ; $5136: $a0
    rst $38                                       ; $5137: $ff
    rst $38                                       ; $5138: $ff
    adc h                                         ; $5139: $8c
    db $fd                                        ; $513a: $fd
    inc e                                         ; $513b: $1c
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    ld a, [hl]                                    ; $513e: $7e
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    db $fd                                        ; $5141: $fd
    rst $38                                       ; $5142: $ff
    pop af                                        ; $5143: $f1
    rst $38                                       ; $5144: $ff
    db $e3                                        ; $5145: $e3
    adc h                                         ; $5146: $8c
    sbc c                                         ; $5147: $99
    ldh [$d2], a                                  ; $5148: $e0 $d2
    set 7, a                                      ; $514a: $cb $ff
    nop                                           ; $514c: $00
    inc l                                         ; $514d: $2c
    pop hl                                        ; $514e: $e1
    cp h                                          ; $514f: $bc
    jp hl                                         ; $5150: $e9


    inc l                                         ; $5151: $2c
    pop hl                                        ; $5152: $e1
    nop                                           ; $5153: $00
    cp $c6                                        ; $5154: $fe $c6
    ldh [rIF], a                                  ; $5156: $e0 $0f
    ld hl, sp-$31                                 ; $5158: $f8 $cf
    ei                                            ; $515a: $fb
    rlca                                          ; $515b: $07
    rst $38                                       ; $515c: $ff
    pop bc                                        ; $515d: $c1
    rst $38                                       ; $515e: $ff
    rst $38                                       ; $515f: $ff
    adc a                                         ; $5160: $8f
    cp $3f                                        ; $5161: $fe $3f
    ld a, [c]                                     ; $5163: $f2
    db $fd                                        ; $5164: $fd
    call nz, Call_000_2fff                        ; $5165: $c4 $ff $2f
    ld e, $fd                                     ; $5168: $1e $fd
    ld a, a                                       ; $516a: $7f
    ld sp, hl                                     ; $516b: $f9
    cp [hl]                                       ; $516c: $be
    ldh [$c1], a                                  ; $516d: $e0 $c1
    ld h, d                                       ; $516f: $62
    ret nz                                        ; $5170: $c0

    ld d, b                                       ; $5171: $50
    jp nz, Jump_000_07ff                          ; $5172: $c2 $ff $07

    jr c, jr_075_5186                             ; $5175: $38 $0f

    db $10                                        ; $5177: $10
    rra                                           ; $5178: $1f
    jr nz, jr_075_51ba                            ; $5179: $20 $3f

    jr nz, @+$01                                  ; $517b: $20 $ff

    ccf                                           ; $517d: $3f
    ldh [$7f], a                                  ; $517e: $e0 $7f
    ret nz                                        ; $5180: $c0

    ld a, a                                       ; $5181: $7f
    ldh [$3f], a                                  ; $5182: $e0 $3f
    ret c                                         ; $5184: $d8

    rst $38                                       ; $5185: $ff

jr_075_5186:
    rst $38                                       ; $5186: $ff
    rra                                           ; $5187: $1f
    rst $30                                       ; $5188: $f7
    ld c, $fb                                     ; $5189: $0e $fb
    rlca                                          ; $518b: $07
    db $fd                                        ; $518c: $fd
    rlca                                          ; $518d: $07
    ei                                            ; $518e: $fb
    db $fc                                        ; $518f: $fc
    inc de                                        ; $5190: $13
    dec [hl]                                      ; $5191: $35
    ldh [rTAC], a                                 ; $5192: $e0 $07
    db $fc                                        ; $5194: $fc
    rrca                                          ; $5195: $0f
    ld hl, sp-$01                                 ; $5196: $f8 $ff
    di                                            ; $5198: $f3
    rst $38                                       ; $5199: $ff
    inc e                                         ; $519a: $1c
    xor $e0                                       ; $519b: $ee $e0
    ld c, l                                       ; $519d: $4d
    ldh [rP1], a                                  ; $519e: $e0 $00
    db $fc                                        ; $51a0: $fc
    nop                                           ; $51a1: $00
    di                                            ; $51a2: $f3
    cp $84                                        ; $51a3: $fe $84
    ret nz                                        ; $51a5: $c0

    call z, $8800                                 ; $51a6: $cc $00 $88
    add b                                         ; $51a9: $80
    ld e, b                                       ; $51aa: $58
    ret nz                                        ; $51ab: $c0

    ld e, b                                       ; $51ac: $58
    cp l                                          ; $51ad: $bd
    ret nz                                        ; $51ae: $c0

    xor [hl]                                      ; $51af: $ae
    ret nz                                        ; $51b0: $c0

    rlca                                          ; $51b1: $07
    ret c                                         ; $51b2: $d8

    rra                                           ; $51b3: $1f
    ldh [$c6], a                                  ; $51b4: $e0 $c6
    ldh [rLCDC], a                                ; $51b6: $e0 $40
    db $fd                                        ; $51b8: $fd
    ld a, a                                       ; $51b9: $7f

jr_075_51ba:
    cp $e1                                        ; $51ba: $fe $e1
    ret nz                                        ; $51bc: $c0

jr_075_51bd:
    rst $38                                       ; $51bd: $ff
    ldh a, [rIE]                                  ; $51be: $f0 $ff
    rra                                           ; $51c0: $1f
    rst $38                                       ; $51c1: $ff
    xor a                                         ; $51c2: $af
    ld c, $ff                                     ; $51c3: $0e $ff
    rlca                                          ; $51c5: $07
    db $fd                                        ; $51c6: $fd
    db $fd                                        ; $51c7: $fd
    pop bc                                        ; $51c8: $c1
    ld b, e                                       ; $51c9: $43
    call nz, Call_000_3ce4                        ; $51ca: $c4 $e4 $3c
    or a                                          ; $51cd: $b7
    rst $38                                       ; $51ce: $ff
    ld e, $f7                                     ; $51cf: $1e $f7
    call nz, $f7e1                                ; $51d1: $c4 $e1 $f7
    ld [$e4c0], sp                                ; $51d4: $08 $c0 $e4
    add b                                         ; $51d7: $80
    rst $18                                       ; $51d8: $df
    ld c, h                                       ; $51d9: $4c
    ret nz                                        ; $51da: $c0

    jr z, jr_075_51bd                             ; $51db: $28 $e0

    cp b                                          ; $51dd: $b8
    cp $e0                                        ; $51de: $fe $e0
    cp $03                                        ; $51e0: $fe $03
    ld [hl], e                                    ; $51e2: $73
    ccf                                           ; $51e3: $3f
    ld bc, $e980                                  ; $51e4: $01 $80 $e9
    db $ed                                        ; $51e7: $ed
    and c                                         ; $51e8: $a1
    ldh [$7f], a                                  ; $51e9: $e0 $7f
    ld hl, sp-$80                                 ; $51eb: $f8 $80
    and $f8                                       ; $51ed: $e6 $f8
    or a                                          ; $51ef: $b7
    pop bc                                        ; $51f0: $c1
    add b                                         ; $51f1: $80
    jp hl                                         ; $51f2: $e9


    ld e, [hl]                                    ; $51f3: $5e
    ldh [$3f], a                                  ; $51f4: $e0 $3f
    ld [hl], b                                    ; $51f6: $70
    ld a, a                                       ; $51f7: $7f
    call nz, $f7ff                                ; $51f8: $c4 $ff $f7
    add a                                         ; $51fb: $87
    rst $38                                       ; $51fc: $ff
    add c                                         ; $51fd: $81
    ret                                           ; $51fe: $c9


    jp nz, $fc07                                  ; $51ff: $c2 $07 $fc

    rst $00                                       ; $5202: $c7
    db $fc                                        ; $5203: $fc
    rst $38                                       ; $5204: $ff
    daa                                           ; $5205: $27
    db $fc                                        ; $5206: $fc
    ccf                                           ; $5207: $3f
    db $fc                                        ; $5208: $fc
    ld l, a                                       ; $5209: $6f
    ld hl, sp-$21                                 ; $520a: $f8 $df
    ld hl, sp-$05                                 ; $520c: $f8 $fb
    rst $18                                       ; $520e: $df
    ldh a, [$2b]                                  ; $520f: $f0 $2b
    ldh [rSB], a                                  ; $5211: $e0 $01
    rst $30                                       ; $5213: $f7
    ld [$1ce3], sp                                ; $5214: $08 $e3 $1c
    rst $38                                       ; $5217: $ff
    di                                            ; $5218: $f3
    inc c                                         ; $5219: $0c
    rst $30                                       ; $521a: $f7
    inc e                                         ; $521b: $1c
    rst $38                                       ; $521c: $ff
    ld [hl+], a                                   ; $521d: $22
    rst $38                                       ; $521e: $ff
    ld b, c                                       ; $521f: $41
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    pop bc                                        ; $5222: $c1
    inc a                                         ; $5223: $3c
    ldh [$bf], a                                  ; $5224: $e0 $bf
    ldh [$90], a                                  ; $5226: $e0 $90
    ldh a, [rIE]                                  ; $5228: $f0 $ff
    sbc l                                         ; $522a: $9d
    ldh a, [$cd]                                  ; $522b: $f0 $cd
    ld hl, sp-$71                                 ; $522d: $f8 $8f
    ld hl, sp-$78                                 ; $522f: $f8 $88
    ld hl, sp-$29                                 ; $5231: $f8 $d7
    sbc a                                         ; $5233: $9f
    ldh a, [rSVBK]                                ; $5234: $f0 $70
    ld e, [hl]                                    ; $5236: $5e
    ldh [$84], a                                  ; $5237: $e0 $84
    jp nz, $c0e6                                  ; $5239: $c2 $e6 $c0

    ld a, a                                       ; $523c: $7f
    rst $18                                       ; $523d: $df
    inc hl                                        ; $523e: $23
    cp $37                                        ; $523f: $fe $37
    db $fc                                        ; $5241: $fc
    cpl                                           ; $5242: $2f
    jp nz, $f3e3                                  ; $5243: $c2 $e3 $f3

    ld a, a                                       ; $5246: $7f
    rst $30                                       ; $5247: $f7
    ld hl, sp+$1f                                 ; $5248: $f8 $1f
    ldh a, [$c4]                                  ; $524a: $f0 $c4
    ld [c], a                                     ; $524c: $e2
    inc c                                         ; $524d: $0c
    rst $38                                       ; $524e: $ff
    ld [de], a                                    ; $524f: $12
    rst $38                                       ; $5250: $ff
    db $fd                                        ; $5251: $fd
    ld h, c                                       ; $5252: $61
    db $d3                                        ; $5253: $d3
    ret nz                                        ; $5254: $c0

    ld b, c                                       ; $5255: $41
    rst $38                                       ; $5256: $ff
    ld b, c                                       ; $5257: $41
    call c, $df70                                 ; $5258: $dc $70 $df
    rst $38                                       ; $525b: $ff
    ld [hl], b                                    ; $525c: $70
    ret nc                                        ; $525d: $d0

    ld [hl], b                                    ; $525e: $70
    call $8df8                                    ; $525f: $cd $f8 $8d
    ld hl, sp-$69                                 ; $5262: $f8 $97
    rst $18                                       ; $5264: $df
    ldh a, [$98]                                  ; $5265: $f0 $98
    ldh a, [rIE]                                  ; $5267: $f0 $ff
    ld h, b                                       ; $5269: $60
    add b                                         ; $526a: $80
    db $e3                                        ; $526b: $e3
    ret nz                                        ; $526c: $c0

    ld a, a                                       ; $526d: $7f
    cp c                                          ; $526e: $b9
    add b                                         ; $526f: $80
    cp d                                          ; $5270: $ba
    ld [c], a                                     ; $5271: $e2
    add b                                         ; $5272: $80
    rst $20                                       ; $5273: $e7
    cpl                                           ; $5274: $2f
    ld hl, sp+$5f                                 ; $5275: $f8 $5f
    add b                                         ; $5277: $80
    ldh [rIE], a                                  ; $5278: $e0 $ff
    db $fd                                        ; $527a: $fd
    ld sp, hl                                     ; $527b: $f9
    sub b                                         ; $527c: $90
    pop hl                                        ; $527d: $e1
    and b                                         ; $527e: $a0
    ldh [$9d], a                                  ; $527f: $e0 $9d
    ldh a, [$dd]                                  ; $5281: $f0 $dd
    ldh a, [$fe]                                  ; $5283: $f0 $fe
    sub b                                         ; $5285: $90
    ld [c], a                                     ; $5286: $e2
    ld hl, sp-$40                                 ; $5287: $f8 $c0
    ld a, a                                       ; $5289: $7f
    ldh a, [$3f]                                  ; $528a: $f0 $3f
    db $fc                                        ; $528c: $fc
    rrca                                          ; $528d: $0f
    call c, $a065                                 ; $528e: $dc $65 $a0
    ld d, h                                       ; $5291: $54
    and c                                         ; $5292: $a1
    inc bc                                        ; $5293: $03
    db $fc                                        ; $5294: $fc
    rlca                                          ; $5295: $07
    ld b, c                                       ; $5296: $41
    ldh [$f0], a                                  ; $5297: $e0 $f0
    rra                                           ; $5299: $1f
    rst $38                                       ; $529a: $ff
    ld hl, sp-$71                                 ; $529b: $f8 $8f
    ei                                            ; $529d: $fb
    dec c                                         ; $529e: $0d
    rst $38                                       ; $529f: $ff
    dec bc                                        ; $52a0: $0b
    rst $38                                       ; $52a1: $ff
    rla                                           ; $52a2: $17
    ld [hl], a                                    ; $52a3: $77
    rst $38                                       ; $52a4: $ff
    ld [hl], a                                    ; $52a5: $77
    rst $38                                       ; $52a6: $ff
    ld e, h                                       ; $52a7: $5c
    ldh [rTAC], a                                 ; $52a8: $e0 $07
    rst $38                                       ; $52aa: $ff
    ccf                                           ; $52ab: $3f
    add hl, bc                                    ; $52ac: $09

jr_075_52ad:
    and c                                         ; $52ad: $a1
    adc $05                                       ; $52ae: $ce $05
    and c                                         ; $52b0: $a1
    rst $30                                       ; $52b1: $f7
    rst $38                                       ; $52b2: $ff
    sbc a                                         ; $52b3: $9f
    sbc h                                         ; $52b4: $9c
    ldh [rNR24], a                                ; $52b5: $e0 $19
    ret nz                                        ; $52b7: $c0

    ld hl, sp-$01                                 ; $52b8: $f8 $ff
    ld a, a                                       ; $52ba: $7f
    ret z                                         ; $52bb: $c8

    rst $38                                       ; $52bc: $ff
    ret nc                                        ; $52bd: $d0

    rst $38                                       ; $52be: $ff
    ldh [rIE], a                                  ; $52bf: $e0 $ff
    ret nz                                        ; $52c1: $c0

    jp nz, $ace6                                  ; $52c2: $c2 $e6 $ac

    call nz, Call_000_1fe0                        ; $52c5: $c4 $e0 $1f
    and b                                         ; $52c8: $a0
    nop                                           ; $52c9: $00
    rrca                                          ; $52ca: $0f
    jr c, jr_075_52ad                             ; $52cb: $38 $e0

    rrca                                          ; $52cd: $0f
    jp nz, $1be0                                  ; $52ce: $c2 $e0 $1b

    sbc $c4                                       ; $52d1: $de $c4
    ldh [$f7], a                                  ; $52d3: $e0 $f7
    rst $18                                       ; $52d5: $df
    db $eb                                        ; $52d6: $eb
    rrca                                          ; $52d7: $0f
    jp nz, $cfeb                                  ; $52d8: $c2 $eb $cf

    rst $38                                       ; $52db: $ff
    ld h, d                                       ; $52dc: $62
    scf                                           ; $52dd: $37
    and b                                         ; $52de: $a0
    cp b                                          ; $52df: $b8
    call nz, $fee5                                ; $52e0: $c4 $e5 $fe
    pop hl                                        ; $52e3: $e1
    and l                                         ; $52e4: $a5
    and c                                         ; $52e5: $a1
    ldh a, [$7f]                                  ; $52e6: $f0 $7f
    cp e                                          ; $52e8: $bb
    and b                                         ; $52e9: $a0
    or d                                          ; $52ea: $b2
    cp [hl]                                       ; $52eb: $be
    db $e4                                        ; $52ec: $e4
    rra                                           ; $52ed: $1f
    ldh [$80], a                                  ; $52ee: $e0 $80
    cp [hl]                                       ; $52f0: $be
    jp hl                                         ; $52f1: $e9


    rst $38                                       ; $52f2: $ff
    ld [hl], b                                    ; $52f3: $70
    adc $ec                                       ; $52f4: $ce $ec
    inc bc                                        ; $52f6: $03
    sbc $40                                       ; $52f7: $de $40
    adc e                                         ; $52f9: $8b
    db $eb                                        ; $52fa: $eb
    rst $08                                       ; $52fb: $cf
    ei                                            ; $52fc: $fb
    rrca                                          ; $52fd: $0f

Call_075_52fe:
    cp $e1                                        ; $52fe: $fe $e1
    rst $30                                       ; $5300: $f7
    rra                                           ; $5301: $1f
    rst $38                                       ; $5302: $ff
    rst $30                                       ; $5303: $f7
    rra                                           ; $5304: $1f
    rst $28                                       ; $5305: $ef
    ccf                                           ; $5306: $3f
    rst $28                                       ; $5307: $ef
    ccf                                           ; $5308: $3f
    rst $08                                       ; $5309: $cf
    rst $38                                       ; $530a: $ff
    push de                                       ; $530b: $d5
    rst $28                                       ; $530c: $ef
    cp $e4                                        ; $530d: $fe $e4
    rst $18                                       ; $530f: $df
    cp $e0                                        ; $5310: $fe $e0
    cp a                                          ; $5312: $bf
    ret nc                                        ; $5313: $d0

    add b                                         ; $5314: $80
    db $fc                                        ; $5315: $fc
    ret nz                                        ; $5316: $c0

    rst $38                                       ; $5317: $ff
    di                                            ; $5318: $f3
    add b                                         ; $5319: $80
    rst $28                                       ; $531a: $ef
    add b                                         ; $531b: $80
    call z, $8880                                 ; $531c: $cc $80 $88
    nop                                           ; $531f: $00
    ld bc, $fe98                                  ; $5320: $01 $98 $fe
    ldh [$b0], a                                  ; $5323: $e0 $b0
    and h                                         ; $5325: $a4
    ret nz                                        ; $5326: $c0

    rst $20                                       ; $5327: $e7
    jp nz, $c0e6                                  ; $5328: $c2 $e6 $c0

    db $e3                                        ; $532b: $e3
    jp nz, $bee9                                  ; $532c: $c2 $e9 $be

    pop hl                                        ; $532f: $e1
    ld l, d                                       ; $5330: $6a
    ret nz                                        ; $5331: $c0

    ldh [$80], a                                  ; $5332: $e0 $80
    ret nz                                        ; $5334: $c0

    ld [c], a                                     ; $5335: $e2
    nop                                           ; $5336: $00
    ret nz                                        ; $5337: $c0

    db $e3                                        ; $5338: $e3
    rst $30                                       ; $5339: $f7
    rra                                           ; $533a: $1f
    sub b                                         ; $533b: $90
    db $eb                                        ; $533c: $eb
    ld a, [c]                                     ; $533d: $f2
    and b                                         ; $533e: $a0
    add sp, -$80                                  ; $533f: $e8 $80
    and b                                         ; $5341: $a0
    pop hl                                        ; $5342: $e1
    nop                                           ; $5343: $00
    add h                                         ; $5344: $84
    ld bc, $01b7                                  ; $5345: $01 $b7 $01
    rst $28                                       ; $5348: $ef
    dec a                                         ; $5349: $3d
    ld bc, $8000                                  ; $534a: $01 $00 $80
    rst $38                                       ; $534d: $ff
    rst $38                                       ; $534e: $ff
    ld a, a                                       ; $534f: $7f
    rst $38                                       ; $5350: $ff
    dec d                                         ; $5351: $15
    ld [c], a                                     ; $5352: $e2
    sub a                                         ; $5353: $97
    ld h, c                                       ; $5354: $61
    ld [hl], c                                    ; $5355: $71
    ld b, b                                       ; $5356: $40
    sub e                                         ; $5357: $93
    ld h, b                                       ; $5358: $60
    ld l, [hl]                                    ; $5359: $6e
    ldh [$97], a                                  ; $535a: $e0 $97
    ld h, b                                       ; $535c: $60
    ld [hl], b                                    ; $535d: $70
    rst $38                                       ; $535e: $ff
    ld a, b                                       ; $535f: $78
    add a                                         ; $5360: $87
    ld h, b                                       ; $5361: $60
    ld sp, hl                                     ; $5362: $f9
    ld [hl], b                                    ; $5363: $70
    add e                                         ; $5364: $83
    ld h, b                                       ; $5365: $60
    nop                                           ; $5366: $00
    add b                                         ; $5367: $80
    ret nz                                        ; $5368: $c0

    jr nz, @-$1e                                  ; $5369: $20 $e0

    dec e                                         ; $536b: $1d
    ldh a, [rIE]                                  ; $536c: $f0 $ff
    dec e                                         ; $536e: $1d
    ldh a, [$f7]                                  ; $536f: $f0 $f7
    ldh a, [rNR23]                                ; $5371: $f0 $18
    ldh a, [rIE]                                  ; $5373: $f0 $ff
    rst $38                                       ; $5375: $ff
    ld bc, $d0df                                  ; $5376: $01 $df $d0
    db $ec                                        ; $5379: $ec
    ld h, b                                       ; $537a: $60
    ld h, b                                       ; $537b: $60
    add d                                         ; $537c: $82
    add c                                         ; $537d: $81
    db $fc                                        ; $537e: $fc
    ldh a, [rBCPS]                                ; $537f: $f0 $68
    db $e3                                        ; $5381: $e3
    ld d, d                                       ; $5382: $52
    ld h, a                                       ; $5383: $67
    jr z, jr_075_53e9                             ; $5384: $28 $63

    db $fc                                        ; $5386: $fc
    ld a, b                                       ; $5387: $78
    ld [c], a                                     ; $5388: $e2
    cp $e0                                        ; $5389: $fe $e0
    cp h                                          ; $538b: $bc
    add b                                         ; $538c: $80
    rst $18                                       ; $538d: $df
    add b                                         ; $538e: $80
    ldh [$80], a                                  ; $538f: $e0 $80
    di                                            ; $5391: $f3
    db $ed                                        ; $5392: $ed
    add b                                         ; $5393: $80
    jr jr_075_53fb                                ; $5394: $18 $65

    ld l, b                                       ; $5396: $68
    ld h, l                                       ; $5397: $65
    inc sp                                        ; $5398: $33
    ld bc, $0113                                  ; $5399: $01 $13 $01
    ld a, l                                       ; $539c: $7d
    dec de                                        ; $539d: $1b
    cp $e0                                        ; $539e: $fe $e0
    ccf                                           ; $53a0: $3f
    ld bc, $01fb                                  ; $53a1: $01 $fb $01
    rlca                                          ; $53a4: $07
    ld e, d                                       ; $53a5: $5a
    ldh [$1f], a                                  ; $53a6: $e0 $1f
    db $ed                                        ; $53a8: $ed
    add b                                         ; $53a9: $80
    rst $30                                       ; $53aa: $f7
    add b                                         ; $53ab: $80
    ld hl, sp-$62                                 ; $53ac: $f8 $9e
    add sp, $48                                   ; $53ae: $e8 $48
    ld h, d                                       ; $53b0: $62
    cp $48                                        ; $53b1: $fe $48
    ld [bc], a                                    ; $53b3: $02
    ld h, b                                       ; $53b4: $60
    ld l, h                                       ; $53b5: $6c
    rst $38                                       ; $53b6: $ff
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    rst $38                                       ; $53c0: $ff
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    nop                                           ; $53c4: $00
    rst $38                                       ; $53c5: $ff
    nop                                           ; $53c6: $00
    inc b                                         ; $53c7: $04
    nop                                           ; $53c8: $00
    scf                                           ; $53c9: $37
    di                                            ; $53ca: $f3
    nop                                           ; $53cb: $00
    ld b, $fa                                     ; $53cc: $06 $fa
    ldh [$64], a                                  ; $53ce: $e0 $64
    nop                                           ; $53d0: $00
    ldh a, [$e3]                                  ; $53d1: $f0 $e3
    db $fc                                        ; $53d3: $fc
    add sp, -$02                                  ; $53d4: $e8 $fe
    ldh [$e2], a                                  ; $53d6: $e0 $e2
    ld hl, sp+$00                                 ; $53d8: $f8 $00
    push hl                                       ; $53da: $e5
    nop                                           ; $53db: $00
    call z, $ac00                                 ; $53dc: $cc $00 $ac
    rst $38                                       ; $53df: $ff
    nop                                           ; $53e0: $00
    cp b                                          ; $53e1: $b8
    nop                                           ; $53e2: $00
    ld [hl], h                                    ; $53e3: $74
    nop                                           ; $53e4: $00
    db $f4                                        ; $53e5: $f4
    nop                                           ; $53e6: $00
    db $e4                                        ; $53e7: $e4
    rst $38                                       ; $53e8: $ff

jr_075_53e9:
    nop                                           ; $53e9: $00
    ld bc, $0601                                  ; $53ea: $01 $01 $06
    rlca                                          ; $53ed: $07
    ld hl, sp+$1f                                 ; $53ee: $f8 $1f
    ldh [$f7], a                                  ; $53f0: $e0 $f7
    ccf                                           ; $53f2: $3f
    ret nz                                        ; $53f3: $c0

    ld a, a                                       ; $53f4: $7f
    jp nz, Jump_000_07e0                          ; $53f5: $c2 $e0 $07

    ld hl, sp+$3f                                 ; $53f8: $f8 $3f
    ret nz                                        ; $53fa: $c0

jr_075_53fb:
    xor $cb                                       ; $53fb: $ee $cb
    ld [c], a                                     ; $53fd: $e2
    ld [$18ff], sp                                ; $53fe: $08 $ff $18
    jp nz, $80e3                                  ; $5401: $c2 $e3 $80

    ld a, a                                       ; $5404: $7f
    ret nz                                        ; $5405: $c0

    rst $38                                       ; $5406: $ff
    ccf                                           ; $5407: $3f
    ldh [$1f], a                                  ; $5408: $e0 $1f
    db $f4                                        ; $540a: $f4
    dec bc                                        ; $540b: $0b
    cp $05                                        ; $540c: $fe $05
    rst $38                                       ; $540e: $ff
    ld a, a                                       ; $540f: $7f
    add e                                         ; $5410: $83
    nop                                           ; $5411: $00
    add a                                         ; $5412: $87
    nop                                           ; $5413: $00
    rst $00                                       ; $5414: $c7
    nop                                           ; $5415: $00
    db $e3                                        ; $5416: $e3
    cp [hl]                                       ; $5417: $be
    ldh [rDIV], a                                 ; $5418: $e0 $04
    xor b                                         ; $541a: $a8
    db $e3                                        ; $541b: $e3
    ret nz                                        ; $541c: $c0

    db $e3                                        ; $541d: $e3
    nop                                           ; $541e: $00
    adc [hl]                                      ; $541f: $8e
    ldh [$98], a                                  ; $5420: $e0 $98
    db $ec                                        ; $5422: $ec
    adc d                                         ; $5423: $8a
    ld [c], a                                     ; $5424: $e2
    jp c, Jump_075_7ce5                           ; $5425: $da $e5 $7c

    push hl                                       ; $5428: $e5
    rst $38                                       ; $5429: $ff
    inc b                                         ; $542a: $04
    nop                                           ; $542b: $00
    ret nz                                        ; $542c: $c0

    ld a, a                                       ; $542d: $7f
    add b                                         ; $542e: $80
    rst $38                                       ; $542f: $ff
    add c                                         ; $5430: $81
    rst $38                                       ; $5431: $ff
    rst $38                                       ; $5432: $ff
    ld [c], a                                     ; $5433: $e2
    ld a, a                                       ; $5434: $7f
    ret nz                                        ; $5435: $c0

    ld a, a                                       ; $5436: $7f
    ldh [$3f], a                                  ; $5437: $e0 $3f
    ldh [$3f], a                                  ; $5439: $e0 $3f
    rst $38                                       ; $543b: $ff
    pop af                                        ; $543c: $f1
    rra                                           ; $543d: $1f
    inc a                                         ; $543e: $3c
    rst $38                                       ; $543f: $ff
    halt                                          ; $5440: $76
    rst $38                                       ; $5441: $ff
    push hl                                       ; $5442: $e5
    rst $38                                       ; $5443: $ff
    rst $38                                       ; $5444: $ff

jr_075_5445:
    ld h, e                                       ; $5445: $63
    rst $38                                       ; $5446: $ff
    ld a, $ff                                     ; $5447: $3e $ff
    ccf                                           ; $5449: $3f
    pop af                                        ; $544a: $f1
    rst $38                                       ; $544b: $ff
    xor $ff                                       ; $544c: $ee $ff
    ccf                                           ; $544e: $3f
    rst $38                                       ; $544f: $ff
    sub e                                         ; $5450: $93
    rst $38                                       ; $5451: $ff
    xor d                                         ; $5452: $aa
    rst $38                                       ; $5453: $ff
    ld a, [hl+]                                   ; $5454: $2a
    rst $38                                       ; $5455: $ff
    rst $30                                       ; $5456: $f7
    ld l, d                                       ; $5457: $6a
    rst $38                                       ; $5458: $ff

jr_075_5459:
    db $fc                                        ; $5459: $fc
    add h                                         ; $545a: $84
    ldh [$80], a                                  ; $545b: $e0 $80
    rst $38                                       ; $545d: $ff
    ret nz                                        ; $545e: $c0

    ld a, a                                       ; $545f: $7f
    db $fc                                        ; $5460: $fc
    add [hl]                                      ; $5461: $86
    pop hl                                        ; $5462: $e1
    add h                                         ; $5463: $84
    ldh [$fe], a                                  ; $5464: $e0 $fe
    rra                                           ; $5466: $1f
    or $1f                                        ; $5467: $f6 $1f
    cp $3f                                        ; $5469: $fe $3f
    sub a                                         ; $546b: $97

jr_075_546c:
    db $ec                                        ; $546c: $ec
    ccf                                           ; $546d: $3f
    db $e4                                        ; $546e: $e4
    ld [hl-], a                                   ; $546f: $32
    db $ec                                        ; $5470: $ec
    rlca                                          ; $5471: $07

jr_075_5472:
    jr c, jr_075_5459                             ; $5472: $38 $e5

    ld l, b                                       ; $5474: $68
    pop hl                                        ; $5475: $e1
    rst $38                                       ; $5476: $ff
    db $fc                                        ; $5477: $fc
    and h                                         ; $5478: $a4
    ldh [$08], a                                  ; $5479: $e0 $08
    push hl                                       ; $547b: $e5
    ld [hl], h                                    ; $547c: $74
    nop                                           ; $547d: $00
    db $fc                                        ; $547e: $fc
    jr c, jr_075_5445                             ; $547f: $38 $c4

    db $fc                                        ; $5481: $fc
    add e                                         ; $5482: $83
    ld [bc], a                                    ; $5483: $02
    cp $6a                                        ; $5484: $fe $6a
    db $ed                                        ; $5486: $ed
    ret nc                                        ; $5487: $d0

    jp hl                                         ; $5488: $e9


    jr c, jr_075_546c                             ; $5489: $38 $e1

    ret nc                                        ; $548b: $d0

    rst $20                                       ; $548c: $e7
    jr c, jr_075_5472                             ; $548d: $38 $e3

    pop af                                        ; $548f: $f1
    rst $38                                       ; $5490: $ff
    rra                                           ; $5491: $1f
    ld sp, hl                                     ; $5492: $f9
    rrca                                          ; $5493: $0f
    ld hl, sp+$0f                                 ; $5494: $f8 $0f
    inc c                                         ; $5496: $0c
    rrca                                          ; $5497: $0f
    or $ff                                        ; $5498: $f6 $ff
    rlca                                          ; $549a: $07
    dec b                                         ; $549b: $05
    rlca                                          ; $549c: $07
    rlca                                          ; $549d: $07
    ld b, $67                                     ; $549e: $06 $67
    inc b                                         ; $54a0: $04
    rlca                                          ; $54a1: $07
    rst $28                                       ; $54a2: $ef
    rst $38                                       ; $54a3: $ff
    inc sp                                        ; $54a4: $33
    rst $38                                       ; $54a5: $ff
    adc c                                         ; $54a6: $89
    halt                                          ; $54a7: $76
    pop hl                                        ; $54a8: $e1
    rst $38                                       ; $54a9: $ff
    ldh [$3f], a                                  ; $54aa: $e0 $3f
    rst $38                                       ; $54ac: $ff
    rst $18                                       ; $54ad: $df
    ld a, a                                       ; $54ae: $7f
    ret                                           ; $54af: $c9


    ld a, a                                       ; $54b0: $7f
    jp $c1ff                                      ; $54b1: $c3 $ff $c1


    rst $38                                       ; $54b4: $ff
    rst $38                                       ; $54b5: $ff
    adc b                                         ; $54b6: $88
    rst $38                                       ; $54b7: $ff
    inc c                                         ; $54b8: $0c
    rst $38                                       ; $54b9: $ff
    rra                                           ; $54ba: $1f
    di                                            ; $54bb: $f3
    ld a, h                                       ; $54bc: $7c
    rst $20                                       ; $54bd: $e7
    rst $08                                       ; $54be: $cf
    ld hl, sp-$71                                 ; $54bf: $f8 $8f
    cp $1f                                        ; $54c1: $fe $1f
    scf                                           ; $54c3: $37
    ldh [$fe], a                                  ; $54c4: $e0 $fe
    ldh [$f8], a                                  ; $54c6: $e0 $f8
    add b                                         ; $54c8: $80
    rst $38                                       ; $54c9: $ff
    ld h, l                                       ; $54ca: $65
    ret nz                                        ; $54cb: $c0

    inc l                                         ; $54cc: $2c
    ldh [rNR32], a                                ; $54cd: $e0 $1c
    ldh a, [rNR23]                                ; $54cf: $f0 $18
    ldh a, [$5d]                                  ; $54d1: $f0 $5d
    ld hl, sp-$3e                                 ; $54d3: $f8 $c2
    ldh [$fc], a                                  ; $54d5: $e0 $fc
    rrca                                          ; $54d7: $0f
    ld [$e0bc], sp                                ; $54d8: $08 $bc $e0
    ld [$e0fa], sp                                ; $54db: $08 $fa $e0
    ei                                            ; $54de: $fb
    ld h, h                                       ; $54df: $64
    rlca                                          ; $54e0: $07
    add e                                         ; $54e1: $83
    pop bc                                        ; $54e2: $c1
    ld bc, $02ff                                  ; $54e3: $01 $ff $02
    rst $38                                       ; $54e6: $ff
    adc h                                         ; $54e7: $8c
    rst $38                                       ; $54e8: $ff
    rst $38                                       ; $54e9: $ff
    ld a, b                                       ; $54ea: $78
    rst $38                                       ; $54eb: $ff
    add hl, de                                    ; $54ec: $19
    rst $38                                       ; $54ed: $ff
    ld a, [bc]                                    ; $54ee: $0a
    rst $38                                       ; $54ef: $ff
    ld [de], a                                    ; $54f0: $12
    ccf                                           ; $54f1: $3f
    cp $f9                                        ; $54f2: $fe $f9
    rst $38                                       ; $54f4: $ff
    ld b, $ff                                     ; $54f5: $06 $ff
    inc bc                                        ; $54f7: $03
    db $ec                                        ; $54f8: $ec
    ldh [$a0], a                                  ; $54f9: $e0 $a0
    pop bc                                        ; $54fb: $c1
    ld sp, hl                                     ; $54fc: $f9
    inc b                                         ; $54fd: $04
    ld d, d                                       ; $54fe: $52
    pop bc                                        ; $54ff: $c1
    and d                                         ; $5500: $a2
    ret nz                                        ; $5501: $c0

    ld a, b                                       ; $5502: $78
    ret nz                                        ; $5503: $c0

    push hl                                       ; $5504: $e5
    ret nz                                        ; $5505: $c0

    call z, $c09f                                 ; $5506: $cc $9f $c0
    db $ec                                        ; $5509: $ec
    ldh [$b8], a                                  ; $550a: $e0 $b8
    ldh [$d8], a                                  ; $550c: $e0 $d8
    push bc                                       ; $550e: $c5
    ld b, b                                       ; $550f: $40
    jp $f565                                      ; $5510: $c3 $65 $f5


    ld bc, $c098                                  ; $5513: $01 $98 $c0
    inc bc                                        ; $5516: $03
    ld a, $c4                                     ; $5517: $3e $c4
    ld b, b                                       ; $5519: $40
    rst $38                                       ; $551a: $ff
    and b                                         ; $551b: $a0
    rst $38                                       ; $551c: $ff
    ld d, l                                       ; $551d: $55
    db $10                                        ; $551e: $10
    sbc b                                         ; $551f: $98
    ret nz                                        ; $5520: $c0

    ldh [rBCPD], a                                ; $5521: $e0 $69
    ret nz                                        ; $5523: $c0

    inc b                                         ; $5524: $04
    ld a, [de]                                    ; $5525: $1a
    ret nz                                        ; $5526: $c0

    inc bc                                        ; $5527: $03
    pop bc                                        ; $5528: $c1
    ldh [$fd], a                                  ; $5529: $e0 $fd
    ld [bc], a                                    ; $552b: $02
    sbc b                                         ; $552c: $98
    call nz, $e540                                ; $552d: $c4 $40 $e5
    and b                                         ; $5530: $a0
    db $fc                                        ; $5531: $fc
    cp b                                          ; $5532: $b8
    db $fc                                        ; $5533: $fc
    ld d, a                                       ; $5534: $57
    inc b                                         ; $5535: $04
    ld hl, sp+$08                                 ; $5536: $f8 $08
    ret nz                                        ; $5538: $c0

    db $eb                                        ; $5539: $eb
    ld h, h                                       ; $553a: $64
    ld a, [hl]                                    ; $553b: $7e
    rst $00                                       ; $553c: $c7
    inc bc                                        ; $553d: $03
    ld c, e                                       ; $553e: $4b
    ldh [$87], a                                  ; $553f: $e0 $87
    db $10                                        ; $5541: $10
    rst $38                                       ; $5542: $ff
    add b                                         ; $5543: $80
    ld e, b                                       ; $5544: $58
    add $96                                       ; $5545: $c6 $96
    db $e4                                        ; $5547: $e4
    ld e, b                                       ; $5548: $58
    push bc                                       ; $5549: $c5
    ldh a, [$a3]                                  ; $554a: $f0 $a3
    ld hl, sp-$01                                 ; $554c: $f8 $ff
    ld b, b                                       ; $554e: $40
    ld [hl], a                                    ; $554f: $77
    inc b                                         ; $5550: $04
    rst $30                                       ; $5551: $f7
    inc b                                         ; $5552: $04
    rst $20                                       ; $5553: $e7
    inc b                                         ; $5554: $04
    rlca                                          ; $5555: $07
    ld h, a                                       ; $5556: $67
    ld b, $07                                     ; $5557: $06 $07
    inc b                                         ; $5559: $04
    ld h, e                                       ; $555a: $63
    ldh [$a0], a                                  ; $555b: $e0 $a0
    ldh [$f7], a                                  ; $555d: $e0 $f7
    ld a, $fb                                     ; $555f: $3e $fb
    and b                                         ; $5561: $a0
    ld [$e3c0], a                                 ; $5562: $ea $c0 $e3
    nop                                           ; $5565: $00
    sub b                                         ; $5566: $90
    pop hl                                        ; $5567: $e1
    ldh a, [$da]                                  ; $5568: $f0 $da
    and b                                         ; $556a: $a0
    db $e4                                        ; $556b: $e4
    ccf                                           ; $556c: $3f
    push hl                                       ; $556d: $e5
    rst $38                                       ; $556e: $ff
    ccf                                           ; $556f: $3f
    ld [$f23f], a                                 ; $5570: $ea $3f $f2
    rst $38                                       ; $5573: $ff
    ld a, [$ff0f]                                 ; $5574: $fa $0f $ff
    ei                                            ; $5577: $fb
    rlca                                          ; $5578: $07
    dec bc                                        ; $5579: $0b
    rrca                                          ; $557a: $0f
    ldh [$1f], a                                  ; $557b: $e0 $1f
    ld hl, sp+$07                                 ; $557d: $f8 $07
    db $fc                                        ; $557f: $fc
    inc b                                         ; $5580: $04
    rst $38                                       ; $5581: $ff
    db $fc                                        ; $5582: $fc
    rlca                                          ; $5583: $07
    db $fc                                        ; $5584: $fc
    ld c, a                                       ; $5585: $4f
    db $fc                                        ; $5586: $fc
    ld b, a                                       ; $5587: $47
    db $fc                                        ; $5588: $fc
    ld [hl], h                                    ; $5589: $74
    rst $38                                       ; $558a: $ff
    rlca                                          ; $558b: $07
    or $03                                        ; $558c: $f6 $03
    push hl                                       ; $558e: $e5
    ld bc, $0101                                  ; $558f: $01 $01 $01
    dec b                                         ; $5592: $05
    ld sp, hl                                     ; $5593: $f9
    ld bc, $e009                                  ; $5594: $01 $09 $e0
    db $fc                                        ; $5597: $fc
    ldh [$9c], a                                  ; $5598: $e0 $9c
    rst $38                                       ; $559a: $ff
    ld a, h                                       ; $559b: $7c
    rst $28                                       ; $559c: $ef
    ld a, b                                       ; $559d: $78
    rst $18                                       ; $559e: $df
    rst $18                                       ; $559f: $df
    ld hl, sp-$61                                 ; $55a0: $f8 $9f
    rst $38                                       ; $55a2: $ff
    adc a                                         ; $55a3: $8f
    ld a, b                                       ; $55a4: $78
    and e                                         ; $55a5: $a3
    inc bc                                        ; $55a6: $03
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    rlca                                          ; $55a9: $07
    rst $38                                       ; $55aa: $ff
    rra                                           ; $55ab: $1f
    db $fd                                        ; $55ac: $fd
    rst $38                                       ; $55ad: $ff
    db $e3                                        ; $55ae: $e3
    db $fd                                        ; $55af: $fd
    rrca                                          ; $55b0: $0f
    cp l                                          ; $55b1: $bd
    ld sp, hl                                     ; $55b2: $f9
    sub [hl]                                      ; $55b3: $96
    ret nz                                        ; $55b4: $c0

    ld sp, hl                                     ; $55b5: $f9
    rrca                                          ; $55b6: $0f
    inc sp                                        ; $55b7: $33
    ldh a, [$15]                                  ; $55b8: $f0 $15
    ret nz                                        ; $55ba: $c0

    add d                                         ; $55bb: $82
    sbc [hl]                                      ; $55bc: $9e
    db $dd                                        ; $55bd: $dd
    ret nz                                        ; $55be: $c0

    dec b                                         ; $55bf: $05
    rst $38                                       ; $55c0: $ff
    ld d, a                                       ; $55c1: $57
    db $fd                                        ; $55c2: $fd
    cp $e0                                        ; $55c3: $fe $e0
    inc e                                         ; $55c5: $1c
    ldh [rLCDC], a                                ; $55c6: $e0 $40
    ld b, d                                       ; $55c8: $42
    ld a, $a0                                     ; $55c9: $3e $a0
    db $10                                        ; $55cb: $10
    sbc l                                         ; $55cc: $9d
    ret nz                                        ; $55cd: $c0

    ld [$9ae0], sp                                ; $55ce: $08 $e0 $9a
    and b                                         ; $55d1: $a0
    jp Jump_000_02c1                              ; $55d2: $c3 $c1 $02


    pop de                                        ; $55d5: $d1
    jp nz, $e4fc                                  ; $55d6: $c2 $fc $e4

    ret nz                                        ; $55d9: $c0

    jr z, @-$5e                                   ; $55da: $28 $a0

    db $10                                        ; $55dc: $10
    rst $38                                       ; $55dd: $ff
    ld c, b                                       ; $55de: $48
    rst $38                                       ; $55df: $ff
    xor b                                         ; $55e0: $a8
    di                                            ; $55e1: $f3
    db $fd                                        ; $55e2: $fd
    db $10                                        ; $55e3: $10
    add b                                         ; $55e4: $80
    and l                                         ; $55e5: $a5
    ld [hl], l                                    ; $55e6: $75
    ld bc, $07f7                                  ; $55e7: $01 $f7 $07
    rst $28                                       ; $55ea: $ef
    ld [$07af], sp                                ; $55eb: $08 $af $07
    inc b                                         ; $55ee: $04
    rlca                                          ; $55ef: $07
    ld [bc], a                                    ; $55f0: $02
    or e                                          ; $55f1: $b3
    ret nz                                        ; $55f2: $c0

    dec b                                         ; $55f3: $05
    sub a                                         ; $55f4: $97
    ret nz                                        ; $55f5: $c0

    ld b, b                                       ; $55f6: $40
    ei                                            ; $55f7: $fb
    rst $38                                       ; $55f8: $ff
    ld [hl], b                                    ; $55f9: $70
    ld b, a                                       ; $55fa: $47
    and b                                         ; $55fb: $a0
    db $10                                        ; $55fc: $10
    rst $38                                       ; $55fd: $ff
    jr nz, @+$01                                  ; $55fe: $20 $ff

    sub b                                         ; $5600: $90
    ld c, a                                       ; $5601: $4f
    rst $38                                       ; $5602: $ff
    ld d, e                                       ; $5603: $53
    ld hl, sp+$20                                 ; $5604: $f8 $20
    add c                                         ; $5606: $81
    jp nz, $81fe                                  ; $5607: $c2 $fe $81

    inc b                                         ; $560a: $04
    inc sp                                        ; $560b: $33
    and b                                         ; $560c: $a0
    rst $38                                       ; $560d: $ff
    ldh [rDIV], a                                 ; $560e: $e0 $04
    nop                                           ; $5610: $00
    db $e3                                        ; $5611: $e3
    and b                                         ; $5612: $a0
    rst $30                                       ; $5613: $f7
    db $10                                        ; $5614: $10
    rst $20                                       ; $5615: $e7
    rst $20                                       ; $5616: $e7
    and b                                         ; $5617: $a0
    db $e3                                        ; $5618: $e3
    ld b, b                                       ; $5619: $40
    ld h, [hl]                                    ; $561a: $66
    and [hl]                                      ; $561b: $a6
    and d                                         ; $561c: $a2
    pop hl                                        ; $561d: $e1
    ld [bc], a                                    ; $561e: $02
    rst $38                                       ; $561f: $ff
    inc bc                                        ; $5620: $03
    cp l                                          ; $5621: $bd
    cp $67                                        ; $5622: $fe $67
    ldh [$fd], a                                  ; $5624: $e0 $fd
    rlca                                          ; $5626: $07
    ei                                            ; $5627: $fb
    rrca                                          ; $5628: $0f

jr_075_5629:
    xor [hl]                                      ; $5629: $ae
    call nz, $fec0                                ; $562a: $c4 $c0 $fe
    cp b                                          ; $562d: $b8
    add b                                         ; $562e: $80
    rst $38                                       ; $562f: $ff

jr_075_5630:
    rst $18                                       ; $5630: $df
    rst $38                                       ; $5631: $ff

jr_075_5632:
    db $e3                                        ; $5632: $e3
    rst $38                                       ; $5633: $ff
    ld a, [$ff0b]                                 ; $5634: $fa $0b $ff
    rst $30                                       ; $5637: $f7
    ld de, $31f5                                  ; $5638: $11 $f5 $31
    db $f4                                        ; $563b: $f4

jr_075_563c:
    jr nc, jr_075_5632                            ; $563c: $30 $f4

    ldh a, [$7f]                                  ; $563e: $f0 $7f
    db $f4                                        ; $5640: $f4
    ldh a, [$f5]                                  ; $5641: $f0 $f5
    pop af                                        ; $5643: $f1
    di                                            ; $5644: $f3
    ld a, [c]                                     ; $5645: $f2
    rlca                                          ; $5646: $07
    jr jr_075_5629                                ; $5647: $18 $e0

    rst $28                                       ; $5649: $ef
    rlca                                          ; $564a: $07
    db $fc                                        ; $564b: $fc
    add a                                         ; $564c: $87
    db $fc                                        ; $564d: $fc
    ld e, a                                       ; $564e: $5f
    and b                                         ; $564f: $a0
    and h                                         ; $5650: $a4
    rst $38                                       ; $5651: $ff
    sbc h                                         ; $5652: $9c
    add sp, -$09                                  ; $5653: $e8 $f7
    and b                                         ; $5655: $a0
    jr jr_075_563c                                ; $5656: $18 $e4

    sbc d                                         ; $5658: $9a
    add [hl]                                      ; $5659: $86
    ret nz                                        ; $565a: $c0

    ld d, d                                       ; $565b: $52
    ld [c], a                                     ; $565c: $e2
    ld bc, $83fe                                  ; $565d: $01 $fe $83
    rst $28                                       ; $5660: $ef
    cp $83                                        ; $5661: $fe $83
    rst $38                                       ; $5663: $ff
    db $e3                                        ; $5664: $e3
    reti                                          ; $5665: $d9


    ldh [rIF], a                                  ; $5666: $e0 $0f
    ld a, [$e71f]                                 ; $5668: $fa $1f $e7
    ld hl, sp-$01                                 ; $566b: $f8 $ff
    ld e, a                                       ; $566d: $5f
    or c                                          ; $566e: $b1
    pop hl                                        ; $566f: $e1
    ld h, l                                       ; $5670: $65
    add b                                         ; $5671: $80
    rra                                           ; $5672: $1f
    rst $38                                       ; $5673: $ff
    ld sp, hl                                     ; $5674: $f9
    ld a, e                                       ; $5675: $7b
    cp a                                          ; $5676: $bf
    ld b, c                                       ; $5677: $41
    nop                                           ; $5678: $00
    and b                                         ; $5679: $a0
    pop bc                                        ; $567a: $c1
    rst $38                                       ; $567b: $ff
    db $e3                                        ; $567c: $e3
    cp $c2                                        ; $567d: $fe $c2
    ldh [$fd], a                                  ; $567f: $e0 $fd
    add b                                         ; $5681: $80
    ld h, h                                       ; $5682: $64
    add h                                         ; $5683: $84
    ld bc, $03fe                                  ; $5684: $01 $fe $03
    db $fc                                        ; $5687: $fc
    rlca                                          ; $5688: $07
    rst $38                                       ; $5689: $ff
    call c, $e0a5                                 ; $568a: $dc $a5 $e0
    jr nc, jr_075_5630                            ; $568d: $30 $a1

    db $fc                                        ; $568f: $fc
    db $fc                                        ; $5690: $fc
    add e                                         ; $5691: $83
    di                                            ; $5692: $f3
    ret nz                                        ; $5693: $c0

    add hl, de                                    ; $5694: $19
    rst $38                                       ; $5695: $ff
    xor l                                         ; $5696: $ad
    pop hl                                        ; $5697: $e1
    jp nc, $ffe0                                  ; $5698: $d2 $e0 $ff

    cp $2c                                        ; $569b: $fe $2c
    and c                                         ; $569d: $a1
    rst $38                                       ; $569e: $ff
    or $80                                        ; $569f: $f6 $80
    db $fc                                        ; $56a1: $fc
    ld a, d                                       ; $56a2: $7a
    cp [hl]                                       ; $56a3: $be
    ld [c], a                                     ; $56a4: $e2
    rst $18                                       ; $56a5: $df
    push af                                       ; $56a6: $f5
    ldh [$7f], a                                  ; $56a7: $e0 $7f
    ret nz                                        ; $56a9: $c0

    cp a                                          ; $56aa: $bf
    ldh [$c3], a                                  ; $56ab: $e0 $c3
    add d                                         ; $56ad: $82
    ld h, c                                       ; $56ae: $61
    ldh [rOCPD], a                                ; $56af: $e0 $6b
    and b                                         ; $56b1: $a0
    ld d, a                                       ; $56b2: $57
    add e                                         ; $56b3: $83
    cp [hl]                                       ; $56b4: $be
    add sp, $28                                   ; $56b5: $e8 $28
    add c                                         ; $56b7: $81
    db $fc                                        ; $56b8: $fc
    ld a, h                                       ; $56b9: $7c
    cp [hl]                                       ; $56ba: $be
    rst $20                                       ; $56bb: $e7
    rst $00                                       ; $56bc: $c7
    di                                            ; $56bd: $f3
    nop                                           ; $56be: $00
    ld a, a                                       ; $56bf: $7f
    cp [hl]                                       ; $56c0: $be
    ld [$8332], a                                 ; $56c1: $ea $32 $83
    cp [hl]                                       ; $56c4: $be
    rst $20                                       ; $56c5: $e7
    ei                                            ; $56c6: $fb
    rrca                                          ; $56c7: $0f
    rst $18                                       ; $56c8: $df
    rst $30                                       ; $56c9: $f7
    rra                                           ; $56ca: $1f
    rst $30                                       ; $56cb: $f7
    rra                                           ; $56cc: $1f
    rla                                           ; $56cd: $17
    db $fc                                        ; $56ce: $fc
    ldh [$0b], a                                  ; $56cf: $e0 $0b
    rrca                                          ; $56d1: $0f
    cp a                                          ; $56d2: $bf
    dec b                                         ; $56d3: $05
    rlca                                          ; $56d4: $07
    ld h, l                                       ; $56d5: $65
    rlca                                          ; $56d6: $07
    rst $30                                       ; $56d7: $f7
    rst $38                                       ; $56d8: $ff
    cp $e3                                        ; $56d9: $fe $e3
    ei                                            ; $56db: $fb
    rst $30                                       ; $56dc: $f7
    rst $38                                       ; $56dd: $ff
    ei                                            ; $56de: $fb
    rst $30                                       ; $56df: $f7
    cp $e0                                        ; $56e0: $fe $e0
    rst $38                                       ; $56e2: $ff
    rst $30                                       ; $56e3: $f7
    ld a, [c]                                     ; $56e4: $f2
    rst $38                                       ; $56e5: $ff
    ld [hl], a                                    ; $56e6: $77
    db $f4                                        ; $56e7: $f4
    rst $38                                       ; $56e8: $ff
    push af                                       ; $56e9: $f5
    cp $e0                                        ; $56ea: $fe $e0
    ld a, [c]                                     ; $56ec: $f2
    rst $38                                       ; $56ed: $ff
    ld hl, sp-$02                                 ; $56ee: $f8 $fe
    ldh [$fd], a                                  ; $56f0: $e0 $fd
    db $fc                                        ; $56f2: $fc
    ld [hl], d                                    ; $56f3: $72
    jp nz, $ff83                                  ; $56f4: $c2 $83 $ff

    ld b, c                                       ; $56f7: $41
    rst $38                                       ; $56f8: $ff
    ld d, l                                       ; $56f9: $55
    rst $38                                       ; $56fa: $ff
    rst $18                                       ; $56fb: $df
    sub l                                         ; $56fc: $95
    cp $a6                                        ; $56fd: $fe $a6
    ld hl, sp-$28                                 ; $56ff: $f8 $d8
    ld b, d                                       ; $5701: $42
    ld [c], a                                     ; $5702: $e2
    rlca                                          ; $5703: $07
    add hl, bc                                    ; $5704: $09
    ld a, [$e0ba]                                 ; $5705: $fa $ba $e0
    rla                                           ; $5708: $17
    cp d                                          ; $5709: $ba
    ldh [$7f], a                                  ; $570a: $e0 $7f
    rra                                           ; $570c: $1f
    ei                                            ; $570d: $fb
    rst $38                                       ; $570e: $ff
    cp h                                          ; $570f: $bc
    db $fc                                        ; $5710: $fc
    rst $10                                       ; $5711: $d7
    ld [c], a                                     ; $5712: $e2
    push de                                       ; $5713: $d5
    pop hl                                        ; $5714: $e1
    cp $f3                                        ; $5715: $fe $f3
    rst $38                                       ; $5717: $ff
    pop hl                                        ; $5718: $e1
    rst $08                                       ; $5719: $cf
    rst $38                                       ; $571a: $ff
    cp a                                          ; $571b: $bf
    cpl                                           ; $571c: $2f
    rst $38                                       ; $571d: $ff
    rla                                           ; $571e: $17
    rst $38                                       ; $571f: $ff
    rrca                                          ; $5720: $0f
    cp $c8                                        ; $5721: $fe $c8
    jp Jump_075_658f                              ; $5723: $c3 $8f $65


    ld hl, sp-$70                                 ; $5726: $f8 $90
    xor e                                         ; $5728: $ab
    cp b                                          ; $5729: $b8
    sub d                                         ; $572a: $92
    ld h, b                                       ; $572b: $60
    di                                            ; $572c: $f3
    add c                                         ; $572d: $81
    dec b                                         ; $572e: $05
    ld bc, $6550                                  ; $572f: $01 $50 $65
    ccf                                           ; $5732: $3f
    cp $fe                                        ; $5733: $fe $fe
    ld a, a                                       ; $5735: $7f
    rst $38                                       ; $5736: $ff
    cp a                                          ; $5737: $bf
    cp $18                                        ; $5738: $fe $18
    ldh [$80], a                                  ; $573a: $e0 $80
    jp nz, $bf91                                  ; $573c: $c2 $91 $bf

    ld a, h                                       ; $573f: $7c
    ret nz                                        ; $5740: $c0

    db $f4                                        ; $5741: $f4
    pop hl                                        ; $5742: $e1
    ld a, [$bfe3]                                 ; $5743: $fa $e3 $bf
    ldh a, [$e0]                                  ; $5746: $f0 $e0
    push af                                       ; $5748: $f5
    jp nz, $bf82                                  ; $5749: $c2 $82 $bf

    rst $38                                       ; $574c: $ff
    ld de, $a5ff                                  ; $574d: $11 $ff $a5
    rst $38                                       ; $5750: $ff
    xor c                                         ; $5751: $a9
    ld e, e                                       ; $5752: $5b
    ldh [$fd], a                                  ; $5753: $e0 $fd
    add sp, -$4f                                  ; $5755: $e8 $b1
    and b                                         ; $5757: $a0
    cp [hl]                                       ; $5758: $be
    ldh [$c0], a                                  ; $5759: $e0 $c0
    ldh [rSB], a                                  ; $575b: $e0 $01
    ret nz                                        ; $575d: $c0

    push hl                                       ; $575e: $e5
    rst $38                                       ; $575f: $ff
    rst $38                                       ; $5760: $ff
    ld a, a                                       ; $5761: $7f
    add c                                         ; $5762: $81
    cp $c8                                        ; $5763: $fe $c8
    pop hl                                        ; $5765: $e1
    adc l                                         ; $5766: $8d
    jp $e1c0                                      ; $5767: $c3 $c0 $e1


    cp [hl]                                       ; $576a: $be
    jp hl                                         ; $576b: $e9


    scf                                           ; $576c: $37
    add b                                         ; $576d: $80
    ret nz                                        ; $576e: $c0

    ld [$ff79], a                                 ; $576f: $ea $79 $ff
    rrca                                          ; $5772: $0f
    rst $38                                       ; $5773: $ff
    rra                                           ; $5774: $1f
    pop hl                                        ; $5775: $e1
    ccf                                           ; $5776: $3f
    nop                                           ; $5777: $00
    ccf                                           ; $5778: $3f
    ld b, b                                       ; $5779: $40
    ld h, a                                       ; $577a: $67
    ld a, a                                       ; $577b: $7f
    rst $38                                       ; $577c: $ff
    ld a, a                                       ; $577d: $7f
    dec bc                                        ; $577e: $0b
    pop bc                                        ; $577f: $c1
    ld [$ffe0], sp                                ; $5780: $08 $e0 $ff
    or $82                                        ; $5783: $f6 $82
    ld h, b                                       ; $5785: $60
    adc c                                         ; $5786: $89
    ld b, h                                       ; $5787: $44
    or a                                          ; $5788: $b7
    ld b, b                                       ; $5789: $40
    ld h, d                                       ; $578a: $62
    add b                                         ; $578b: $80
    rst $38                                       ; $578c: $ff
    add hl, sp                                    ; $578d: $39
    pop hl                                        ; $578e: $e1
    add hl, de                                    ; $578f: $19
    and b                                         ; $5790: $a0
    ld h, c                                       ; $5791: $61
    and b                                         ; $5792: $a0
    rst $38                                       ; $5793: $ff
    jp c, $8038                                   ; $5794: $da $38 $80

    rst $38                                       ; $5797: $ff
    nop                                           ; $5798: $00
    ld h, l                                       ; $5799: $65
    add b                                         ; $579a: $80
    ld hl, sp+$44                                 ; $579b: $f8 $44
    jp Jump_075_7fff                              ; $579d: $c3 $ff $7f


    ld d, [hl]                                    ; $57a0: $56
    ret nz                                        ; $57a1: $c0

    ld [c], a                                     ; $57a2: $e2
    ld b, b                                       ; $57a3: $40
    ld a, a                                       ; $57a4: $7f
    ret nz                                        ; $57a5: $c0

    ld [c], a                                     ; $57a6: $e2
    ld a, a                                       ; $57a7: $7f
    add d                                         ; $57a8: $82
    ld b, b                                       ; $57a9: $40
    ldh a, [$da]                                  ; $57aa: $f0 $da
    pop bc                                        ; $57ac: $c1
    rst $38                                       ; $57ad: $ff
    sbc a                                         ; $57ae: $9f
    db $fc                                        ; $57af: $fc
    ld a, a                                       ; $57b0: $7f
    ld hl, sp-$71                                 ; $57b1: $f8 $8f
    ld hl, sp+$7f                                 ; $57b3: $f8 $7f
    ldh a, [$f2]                                  ; $57b5: $f0 $f2
    ld [hl], d                                    ; $57b7: $72
    ld b, b                                       ; $57b8: $40
    ld [hl], b                                    ; $57b9: $70
    add d                                         ; $57ba: $82
    ld c, e                                       ; $57bb: $4b
    ret nz                                        ; $57bc: $c0

    ld c, h                                       ; $57bd: $4c
    rst $38                                       ; $57be: $ff
    ld [hl], l                                    ; $57bf: $75
    ld bc, $01f5                                  ; $57c0: $01 $f5 $01
    ld bc, $84d0                                  ; $57c3: $01 $d0 $84
    or b                                          ; $57c6: $b0
    db $e3                                        ; $57c7: $e3
    cp $e2                                        ; $57c8: $fe $e2
    inc d                                         ; $57ca: $14
    pop hl                                        ; $57cb: $e1
    inc d                                         ; $57cc: $14
    ret nz                                        ; $57cd: $c0

    or b                                          ; $57ce: $b0
    ldh [$ad], a                                  ; $57cf: $e0 $ad
    pop hl                                        ; $57d1: $e1
    adc $fd                                       ; $57d2: $ce $fd
    jp hl                                         ; $57d4: $e9


    rst $30                                       ; $57d5: $f7
    rst $38                                       ; $57d6: $ff
    pop af                                        ; $57d7: $f1
    and $a0                                       ; $57d8: $e6 $a0
    cp $e1                                        ; $57da: $fe $e1
    jp Jump_000_20fe                              ; $57dc: $c3 $fe $20


    sub l                                         ; $57df: $95
    ret nz                                        ; $57e0: $c0

    sbc $c0                                       ; $57e1: $de $c0
    ret nc                                        ; $57e3: $d0

    db $ed                                        ; $57e4: $ed
    adc $eb                                       ; $57e5: $ce $eb
    ret nc                                        ; $57e7: $d0

    jp hl                                         ; $57e8: $e9


    cp a                                          ; $57e9: $bf
    ret nc                                        ; $57ea: $d0

    ldh [$b3], a                                  ; $57eb: $e0 $b3
    and d                                         ; $57ed: $a2

jr_075_57ee:
    jr nc, jr_075_57ee                            ; $57ee: $30 $fe

    or $2a                                        ; $57f0: $f6 $2a
    ldh [$30], a                                  ; $57f2: $e0 $30
    and l                                         ; $57f4: $a5
    ld b, b                                       ; $57f5: $40
    add d                                         ; $57f6: $82
    dec b                                         ; $57f7: $05
    ld bc, $4025                                  ; $57f8: $01 $25 $40
    db $fd                                        ; $57fb: $fd
    ld [$e5ff], a                                 ; $57fc: $ea $ff $e5
    add b                                         ; $57ff: $80
    call z, $ac80                                 ; $5800: $cc $80 $ac
    add b                                         ; $5803: $80
    cp b                                          ; $5804: $b8
    add b                                         ; $5805: $80
    rst $38                                       ; $5806: $ff
    add e                                         ; $5807: $83
    add b                                         ; $5808: $80
    add a                                         ; $5809: $87
    add b                                         ; $580a: $80
    rst $00                                       ; $580b: $c7
    add b                                         ; $580c: $80
    db $e3                                        ; $580d: $e3
    add b                                         ; $580e: $80
    scf                                           ; $580f: $37
    di                                            ; $5810: $f3
    ld bc, $1407                                  ; $5811: $01 $07 $14
    add b                                         ; $5814: $80
    ld h, l                                       ; $5815: $65
    ld bc, $e538                                  ; $5816: $01 $38 $e5
    ldh a, [$2c]                                  ; $5819: $f0 $2c
    ld bc, $00ff                                  ; $581b: $01 $ff $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    ld [hl], b                                    ; $5820: $70
    ld e, b                                       ; $5821: $58
    db $e4                                        ; $5822: $e4
    ld e, b                                       ; $5823: $58
    ld h, b                                       ; $5824: $60
    ld e, c                                       ; $5825: $59
    call nc, $0059                                ; $5826: $d4 $59 $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    and $59                                       ; $5830: $e6 $59
    ld c, a                                       ; $5832: $4f
    ld e, d                                       ; $5833: $5a
    cp a                                          ; $5834: $bf
    ld e, d                                       ; $5835: $5a
    ld l, $5b                                     ; $5836: $2e $5b
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    and e                                         ; $5840: $a3
    ld e, e                                       ; $5841: $5b
    inc de                                        ; $5842: $13
    ld e, h                                       ; $5843: $5c
    add e                                         ; $5844: $83
    ld e, h                                       ; $5845: $5c
    db $f4                                        ; $5846: $f4
    ld e, h                                       ; $5847: $5c
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    ld h, h                                       ; $5850: $64
    ld e, l                                       ; $5851: $5d
    jp nc, Jump_000_3f5d                          ; $5852: $d2 $5d $3f

    ld e, [hl]                                    ; $5855: $5e
    xor e                                         ; $5856: $ab
    ld e, [hl]                                    ; $5857: $5e
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    cp l                                          ; $5860: $bd
    ld e, [hl]                                    ; $5861: $5e
    rra                                           ; $5862: $1f
    ld e, a                                       ; $5863: $5f
    ld a, [hl]                                    ; $5864: $7e
    ld e, a                                       ; $5865: $5f
    jp c, Jump_000_005f                           ; $5866: $da $5f $00

    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    rlca                                          ; $5870: $07
    dec l                                         ; $5871: $2d
    dec l                                         ; $5872: $2d
    dec c                                         ; $5873: $0d
    rst $38                                       ; $5874: $ff
    db $e4                                        ; $5875: $e4
    or $fc                                        ; $5876: $f6 $fc
    reti                                          ; $5878: $d9


    push hl                                       ; $5879: $e5
    ret c                                         ; $587a: $d8

    rst $28                                       ; $587b: $ef
    cp [hl]                                       ; $587c: $be
    ldh [$f7], a                                  ; $587d: $e0 $f7
    ld l, l                                       ; $587f: $6d
    ld l, l                                       ; $5880: $6d
    ld c, l                                       ; $5881: $4d
    cp c                                          ; $5882: $b9
    pop hl                                        ; $5883: $e1
    ld c, l                                       ; $5884: $4d
    ld c, l                                       ; $5885: $4d
    ld c, l                                       ; $5886: $4d
    ld l, a                                       ; $5887: $6f
    rst $38                                       ; $5888: $ff
    ld l, [hl]                                    ; $5889: $6e
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    ld bc, $0302                                  ; $588c: $01 $02 $03
    inc bc                                        ; $588f: $03
    ld l, h                                       ; $5890: $6c
    rst $38                                       ; $5891: $ff
    ld l, l                                       ; $5892: $6d
    ld [hl], b                                    ; $5893: $70
    ld [hl], d                                    ; $5894: $72
    add hl, bc                                    ; $5895: $09
    add hl, bc                                    ; $5896: $09
    ld a, [bc]                                    ; $5897: $0a
    dec bc                                        ; $5898: $0b
    inc c                                         ; $5899: $0c
    rst $38                                       ; $589a: $ff
    ld [$7147], sp                                ; $589b: $08 $47 $71
    ld [hl], b                                    ; $589e: $70
    ld [$1716], sp                                ; $589f: $08 $16 $17
    jr @+$01                                      ; $58a2: $18 $ff

    add hl, de                                    ; $58a4: $19
    ld a, [de]                                    ; $58a5: $1a
    ld [hl], l                                    ; $58a6: $75
    add hl, bc                                    ; $58a7: $09
    ld [hl], c                                    ; $58a8: $71
    ld a, c                                       ; $58a9: $79
    ld [$ff25], sp                                ; $58aa: $08 $25 $ff
    ld h, $27                                     ; $58ad: $26 $27
    jr z, jr_075_58da                             ; $58af: $28 $29

    ld b, a                                       ; $58b1: $47
    add hl, bc                                    ; $58b2: $09
    ld a, b                                       ; $58b3: $78
    ld [hl], c                                    ; $58b4: $71
    rst $38                                       ; $58b5: $ff
    ld b, e                                       ; $58b6: $43
    inc [hl]                                      ; $58b7: $34
    dec [hl]                                      ; $58b8: $35
    ld [hl], $37                                  ; $58b9: $36 $37
    jr c, jr_075_58c6                             ; $58bb: $38 $09

    ld d, [hl]                                    ; $58bd: $56
    rst $38                                       ; $58be: $ff
    ld [hl], b                                    ; $58bf: $70
    ld [hl], h                                    ; $58c0: $74
    add hl, bc                                    ; $58c1: $09
    ld b, e                                       ; $58c2: $43
    ld b, h                                       ; $58c3: $44
    ld b, l                                       ; $58c4: $45
    ld b, [hl]                                    ; $58c5: $46

jr_075_58c6:
    ld b, a                                       ; $58c6: $47
    rst $38                                       ; $58c7: $ff
    ld d, [hl]                                    ; $58c8: $56
    ld [$7073], sp                                ; $58c9: $08 $73 $70
    ld [hl], a                                    ; $58cc: $77
    ld d, d                                       ; $58cd: $52
    ld d, e                                       ; $58ce: $53
    ld d, h                                       ; $58cf: $54
    rst $38                                       ; $58d0: $ff
    ld d, l                                       ; $58d1: $55
    ld d, [hl]                                    ; $58d2: $56
    ld d, a                                       ; $58d3: $57
    halt                                          ; $58d4: $76
    ld [hl], c                                    ; $58d5: $71
    ld l, a                                       ; $58d6: $6f
    inc bc                                        ; $58d7: $03
    inc bc                                        ; $58d8: $03
    ld a, a                                       ; $58d9: $7f

jr_075_58da:
    ld h, b                                       ; $58da: $60
    ld h, c                                       ; $58db: $61
    ld h, d                                       ; $58dc: $62
    ld h, e                                       ; $58dd: $63
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    ld l, l                                       ; $58e0: $6d
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    rla                                           ; $58e4: $17
    dec l                                         ; $58e5: $2d
    dec l                                         ; $58e6: $2d
    dec c                                         ; $58e7: $0d
    rst $38                                       ; $58e8: $ff
    db $e4                                        ; $58e9: $e4
    dec l                                         ; $58ea: $2d
    push af                                       ; $58eb: $f5
    and $ec                                       ; $58ec: $e6 $ec
    db $e4                                        ; $58ee: $e4
    and $e0                                       ; $58ef: $e6 $e0
    ld [hl], b                                    ; $58f1: $70
    ld [c], a                                     ; $58f2: $e2
    jp hl                                         ; $58f3: $e9


    jp c, $e2e4                                   ; $58f4: $da $e4 $e2

    rst $28                                       ; $58f7: $ef
    cp [hl]                                       ; $58f8: $be
    ldh [$6d], a                                  ; $58f9: $e0 $6d
    ld l, l                                       ; $58fb: $6d
    ld c, l                                       ; $58fc: $4d
    cp c                                          ; $58fd: $b9
    pop hl                                        ; $58fe: $e1

Call_075_58ff:
    rst $38                                       ; $58ff: $ff
    ld c, l                                       ; $5900: $4d
    ld c, l                                       ; $5901: $4d
    ld c, l                                       ; $5902: $4d
    ld l, l                                       ; $5903: $6d
    ld l, h                                       ; $5904: $6c
    inc bc                                        ; $5905: $03
    inc b                                         ; $5906: $04
    dec b                                         ; $5907: $05
    rst $38                                       ; $5908: $ff
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    ld l, [hl]                                    ; $590c: $6e
    ld l, a                                       ; $590d: $6f
    ld [hl], c                                    ; $590e: $71
    ld b, a                                       ; $590f: $47
    inc c                                         ; $5910: $0c
    rst $38                                       ; $5911: $ff
    dec c                                         ; $5912: $0d
    ld c, $0f                                     ; $5913: $0e $0f
    db $10                                        ; $5915: $10
    add hl, bc                                    ; $5916: $09
    ld [hl], d                                    ; $5917: $72
    ld [hl], b                                    ; $5918: $70
    ld [hl], c                                    ; $5919: $71
    rst $38                                       ; $591a: $ff
    add hl, bc                                    ; $591b: $09
    dec de                                        ; $591c: $1b
    inc e                                         ; $591d: $1c
    dec e                                         ; $591e: $1d
    ld e, $1f                                     ; $591f: $1e $1f
    ld d, $08                                     ; $5921: $16 $08
    rst $38                                       ; $5923: $ff
    ld [hl], b                                    ; $5924: $70
    ld a, b                                       ; $5925: $78
    add hl, bc                                    ; $5926: $09
    ld a, [hl+]                                   ; $5927: $2a
    dec hl                                        ; $5928: $2b
    inc l                                         ; $5929: $2c
    dec l                                         ; $592a: $2d
    ld l, $ff                                     ; $592b: $2e $ff
    ld [hl], d                                    ; $592d: $72
    ld [$7079], sp                                ; $592e: $08 $79 $70
    ld d, [hl]                                    ; $5931: $56
    add hl, sp                                    ; $5932: $39
    ld a, [hl-]                                   ; $5933: $3a
    dec sp                                        ; $5934: $3b
    rst $38                                       ; $5935: $ff
    inc a                                         ; $5936: $3c
    dec a                                         ; $5937: $3d
    ld [$7143], sp                                ; $5938: $08 $43 $71
    ld [hl], e                                    ; $593b: $73
    ld [$ff48], sp                                ; $593c: $08 $48 $ff
    ld c, c                                       ; $593f: $49
    ld c, d                                       ; $5940: $4a
    ld c, e                                       ; $5941: $4b
    ld c, h                                       ; $5942: $4c
    ld b, e                                       ; $5943: $43
    add hl, bc                                    ; $5944: $09
    ld [hl], h                                    ; $5945: $74
    ld [hl], c                                    ; $5946: $71
    rst $38                                       ; $5947: $ff
    halt                                          ; $5948: $76
    ld d, a                                       ; $5949: $57
    ld e, b                                       ; $594a: $58
    ld e, c                                       ; $594b: $59
    ld e, d                                       ; $594c: $5a
    ld e, e                                       ; $594d: $5b
    ld d, d                                       ; $594e: $52
    ld [hl], a                                    ; $594f: $77
    rst $38                                       ; $5950: $ff
    ld [hl], b                                    ; $5951: $70
    ld l, l                                       ; $5952: $6d
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    ld h, h                                       ; $5955: $64
    ld h, l                                       ; $5956: $65
    ld h, [hl]                                    ; $5957: $66
    ld h, a                                       ; $5958: $67
    rlca                                          ; $5959: $07
    inc bc                                        ; $595a: $03
    inc bc                                        ; $595b: $03
    ld l, a                                       ; $595c: $6f
    nop                                           ; $595d: $00
    nop                                           ; $595e: $00
    nop                                           ; $595f: $00
    rlca                                          ; $5960: $07
    dec l                                         ; $5961: $2d
    dec l                                         ; $5962: $2d
    dec c                                         ; $5963: $0d
    rst $38                                       ; $5964: $ff
    db $e4                                        ; $5965: $e4
    or $fc                                        ; $5966: $f6 $fc
    reti                                          ; $5968: $d9


    push hl                                       ; $5969: $e5
    ret c                                         ; $596a: $d8

    rst $28                                       ; $596b: $ef
    cp [hl]                                       ; $596c: $be
    ldh [$f7], a                                  ; $596d: $e0 $f7
    ld l, l                                       ; $596f: $6d
    ld l, l                                       ; $5970: $6d
    ld c, l                                       ; $5971: $4d
    cp c                                          ; $5972: $b9
    pop hl                                        ; $5973: $e1
    ld c, l                                       ; $5974: $4d
    ld c, l                                       ; $5975: $4d
    ld c, l                                       ; $5976: $4d
    ld l, a                                       ; $5977: $6f
    rst $38                                       ; $5978: $ff
    ld l, [hl]                                    ; $5979: $6e
    nop                                           ; $597a: $00
    ld b, $07                                     ; $597b: $06 $07
    inc bc                                        ; $597d: $03
    inc bc                                        ; $597e: $03
    inc bc                                        ; $597f: $03
    ld l, h                                       ; $5980: $6c
    rst $38                                       ; $5981: $ff
    ld l, l                                       ; $5982: $6d
    ld [hl], b                                    ; $5983: $70
    ld [hl], d                                    ; $5984: $72
    ld de, $1312                                  ; $5985: $11 $12 $13
    inc d                                         ; $5988: $14
    dec d                                         ; $5989: $15
    rst $38                                       ; $598a: $ff
    ld [$7147], sp                                ; $598b: $08 $47 $71
    ld [hl], b                                    ; $598e: $70
    ld [$2120], sp                                ; $598f: $08 $20 $21
    ld [hl+], a                                   ; $5992: $22
    rst $38                                       ; $5993: $ff
    inc hl                                        ; $5994: $23
    inc h                                         ; $5995: $24
    ld [hl], l                                    ; $5996: $75
    add hl, bc                                    ; $5997: $09
    ld [hl], c                                    ; $5998: $71
    ld a, c                                       ; $5999: $79
    ld [$ff2f], sp                                ; $599a: $08 $2f $ff
    jr nc, jr_075_59d0                            ; $599d: $30 $31

    ld [hl-], a                                   ; $599f: $32
    inc sp                                        ; $59a0: $33
    ld b, a                                       ; $59a1: $47
    add hl, bc                                    ; $59a2: $09
    ld a, b                                       ; $59a3: $78
    ld [hl], c                                    ; $59a4: $71
    rst $38                                       ; $59a5: $ff
    ld b, e                                       ; $59a6: $43
    ld a, $3f                                     ; $59a7: $3e $3f
    ld b, b                                       ; $59a9: $40
    ld b, c                                       ; $59aa: $41
    ld b, d                                       ; $59ab: $42
    add hl, bc                                    ; $59ac: $09
    ld d, [hl]                                    ; $59ad: $56
    rst $38                                       ; $59ae: $ff
    ld [hl], b                                    ; $59af: $70
    ld [hl], h                                    ; $59b0: $74
    add hl, bc                                    ; $59b1: $09
    ld c, l                                       ; $59b2: $4d
    ld c, [hl]                                    ; $59b3: $4e
    ld c, a                                       ; $59b4: $4f
    ld d, b                                       ; $59b5: $50
    ld d, c                                       ; $59b6: $51
    rst $38                                       ; $59b7: $ff
    ld d, [hl]                                    ; $59b8: $56
    ld [$7073], sp                                ; $59b9: $08 $73 $70
    ld [hl], a                                    ; $59bc: $77
    ld d, d                                       ; $59bd: $52
    ld e, h                                       ; $59be: $5c
    ld e, l                                       ; $59bf: $5d
    rst $38                                       ; $59c0: $ff
    ld e, [hl]                                    ; $59c1: $5e
    ld e, a                                       ; $59c2: $5f
    ld d, a                                       ; $59c3: $57
    halt                                          ; $59c4: $76
    ld [hl], c                                    ; $59c5: $71
    ld l, a                                       ; $59c6: $6f
    inc bc                                        ; $59c7: $03
    inc bc                                        ; $59c8: $03
    ld a, a                                       ; $59c9: $7f
    ld l, b                                       ; $59ca: $68
    ld l, c                                       ; $59cb: $69
    ld l, d                                       ; $59cc: $6a
    ld l, e                                       ; $59cd: $6b
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00

jr_075_59d0:
    ld l, l                                       ; $59d0: $6d
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    nop                                           ; $59d3: $00
    ld de, $ff0d                                  ; $59d4: $11 $0d $ff
    rst $38                                       ; $59d7: $ff
    rst $38                                       ; $59d8: $ff
    rst $38                                       ; $59d9: $ff
    jp hl                                         ; $59da: $e9


    add sp, $00                                   ; $59db: $e8 $00
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    add sp, $00                                   ; $59e2: $e8 $00
    nop                                           ; $59e4: $00
    nop                                           ; $59e5: $00
    rla                                           ; $59e6: $17
    dec c                                         ; $59e7: $0d
    dec c                                         ; $59e8: $0d
    dec l                                         ; $59e9: $2d
    cp $e3                                        ; $59ea: $fe $e3
    dec l                                         ; $59ec: $2d
    or $e1                                        ; $59ed: $f6 $e1
    ld a, [c]                                     ; $59ef: $f2
    ld [c], a                                     ; $59f0: $e2
    rst $28                                       ; $59f1: $ef
    pop hl                                        ; $59f2: $e1
    ret nz                                        ; $59f3: $c0

    rst $38                                       ; $59f4: $ff
    pop hl                                        ; $59f5: $e1
    rst $20                                       ; $59f6: $e7
    db $e3                                        ; $59f7: $e3
    or $e5                                        ; $59f8: $f6 $e5
    db $eb                                        ; $59fa: $eb
    push hl                                       ; $59fb: $e5
    or $e9                                        ; $59fc: $f6 $e9
    ld [c], a                                     ; $59fe: $e2
    ldh a, [rBCPD]                                ; $59ff: $f0 $69
    nop                                           ; $5a01: $00
    cp $ff                                        ; $5a02: $fe $ff
    db $e4                                        ; $5a04: $e4
    ld l, c                                       ; $5a05: $69
    ld l, h                                       ; $5a06: $6c
    rlca                                          ; $5a07: $07
    rlca                                          ; $5a08: $07
    rlca                                          ; $5a09: $07
    ld [$fe09], sp                                ; $5a0a: $08 $09 $fe
    ei                                            ; $5a0d: $fb
    ldh [$6c], a                                  ; $5a0e: $e0 $6c
    ld l, l                                       ; $5a10: $6d
    rla                                           ; $5a11: $17
    rla                                           ; $5a12: $17
    inc d                                         ; $5a13: $14
    dec d                                         ; $5a14: $15
    ld d, $ff                                     ; $5a15: $16 $ff
    rla                                           ; $5a17: $17
    rla                                           ; $5a18: $17
    rla                                           ; $5a19: $17
    ld l, l                                       ; $5a1a: $6d
    ld l, [hl]                                    ; $5a1b: $6e
    rlca                                          ; $5a1c: $07
    rlca                                          ; $5a1d: $07
    inc hl                                        ; $5a1e: $23
    rst $38                                       ; $5a1f: $ff
    inc h                                         ; $5a20: $24
    dec h                                         ; $5a21: $25
    ld h, $07                                     ; $5a22: $26 $07
    rlca                                          ; $5a24: $07
    ld l, [hl]                                    ; $5a25: $6e
    ld l, d                                       ; $5a26: $6a
    rla                                           ; $5a27: $17
    rst $38                                       ; $5a28: $ff
    rla                                           ; $5a29: $17
    inc sp                                        ; $5a2a: $33
    inc [hl]                                      ; $5a2b: $34
    dec [hl]                                      ; $5a2c: $35
    ld [hl], $17                                  ; $5a2d: $36 $17
    rla                                           ; $5a2f: $17
    ld l, d                                       ; $5a30: $6a
    sbc $d8                                       ; $5a31: $de $d8
    ldh [rSCX], a                                 ; $5a33: $e0 $43
    ld b, h                                       ; $5a35: $44
    ld b, l                                       ; $5a36: $45
    ld b, [hl]                                    ; $5a37: $46
    ret c                                         ; $5a38: $d8

    db $e3                                        ; $5a39: $e3
    ld c, a                                       ; $5a3a: $4f
    ld d, b                                       ; $5a3b: $50
    ei                                            ; $5a3c: $fb
    ld d, c                                       ; $5a3d: $51
    ld d, d                                       ; $5a3e: $52
    ret c                                         ; $5a3f: $d8

    ldh [$6f], a                                  ; $5a40: $e0 $6f
    ld [hl], b                                    ; $5a42: $70
    ld [hl], b                                    ; $5a43: $70
    ld e, h                                       ; $5a44: $5c
    ld e, l                                       ; $5a45: $5d
    rra                                           ; $5a46: $1f
    ld e, [hl]                                    ; $5a47: $5e
    ld e, a                                       ; $5a48: $5f
    ld [hl], b                                    ; $5a49: $70
    ld [hl], b                                    ; $5a4a: $70
    ld l, a                                       ; $5a4b: $6f
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    cpl                                           ; $5a4f: $2f
    dec c                                         ; $5a50: $0d
    dec c                                         ; $5a51: $0d
    dec l                                         ; $5a52: $2d
    dec c                                         ; $5a53: $0d
    db $fc                                        ; $5a54: $fc
    pop hl                                        ; $5a55: $e1
    dec l                                         ; $5a56: $2d
    ld sp, hl                                     ; $5a57: $f9
    ldh [$f6], a                                  ; $5a58: $e0 $f6
    and $80                                       ; $5a5a: $e6 $80
    db $ed                                        ; $5a5c: $ed
    pop hl                                        ; $5a5d: $e1
    db $eb                                        ; $5a5e: $eb
    ld [c], a                                     ; $5a5f: $e2
    or $e8                                        ; $5a60: $f6 $e8
    db $eb                                        ; $5a62: $eb
    push hl                                       ; $5a63: $e5
    or $e9                                        ; $5a64: $f6 $e9
    sub $e3                                       ; $5a66: $d6 $e3
    ld [c], a                                     ; $5a68: $e2
    ld [$df69], a                                 ; $5a69: $ea $69 $df
    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    ld bc, $fb02                                  ; $5a6f: $01 $02 $fb
    ldh [rBCPD], a                                ; $5a72: $e0 $69
    ld l, h                                       ; $5a74: $6c
    rst $38                                       ; $5a75: $ff
    rlca                                          ; $5a76: $07
    rlca                                          ; $5a77: $07
    ld a, [bc]                                    ; $5a78: $0a
    dec bc                                        ; $5a79: $0b
    inc c                                         ; $5a7a: $0c
    rlca                                          ; $5a7b: $07
    rlca                                          ; $5a7c: $07
    rlca                                          ; $5a7d: $07
    rst $38                                       ; $5a7e: $ff
    ld l, h                                       ; $5a7f: $6c
    ld l, l                                       ; $5a80: $6d
    rla                                           ; $5a81: $17
    rla                                           ; $5a82: $17
    jr jr_075_5a9e                                ; $5a83: $18 $19

    ld a, [de]                                    ; $5a85: $1a
    rla                                           ; $5a86: $17
    rst $38                                       ; $5a87: $ff
    rla                                           ; $5a88: $17
    rla                                           ; $5a89: $17
    ld l, l                                       ; $5a8a: $6d
    ld l, [hl]                                    ; $5a8b: $6e
    rlca                                          ; $5a8c: $07
    rlca                                          ; $5a8d: $07
    daa                                           ; $5a8e: $27
    jr z, @+$01                                   ; $5a8f: $28 $ff

    add hl, hl                                    ; $5a91: $29
    ld a, [hl+]                                   ; $5a92: $2a
    rlca                                          ; $5a93: $07
    rlca                                          ; $5a94: $07
    ld l, [hl]                                    ; $5a95: $6e
    ld l, d                                       ; $5a96: $6a
    rla                                           ; $5a97: $17
    rla                                           ; $5a98: $17
    ld a, a                                       ; $5a99: $7f
    scf                                           ; $5a9a: $37
    jr c, jr_075_5ad6                             ; $5a9b: $38 $39

    ld a, [hl-]                                   ; $5a9d: $3a

jr_075_5a9e:
    rla                                           ; $5a9e: $17
    rla                                           ; $5a9f: $17
    ld l, d                                       ; $5aa0: $6a
    ret c                                         ; $5aa1: $d8

    ldh [$ef], a                                  ; $5aa2: $e0 $ef
    ld b, a                                       ; $5aa4: $47
    ld c, b                                       ; $5aa5: $48
    ld c, c                                       ; $5aa6: $49
    ld c, d                                       ; $5aa7: $4a
    ret c                                         ; $5aa8: $d8

    db $e3                                        ; $5aa9: $e3
    rla                                           ; $5aaa: $17
    ld d, e                                       ; $5aab: $53
    ld d, h                                       ; $5aac: $54
    db $fd                                        ; $5aad: $fd
    ld d, l                                       ; $5aae: $55
    ret c                                         ; $5aaf: $d8

    ldh [$6f], a                                  ; $5ab0: $e0 $6f
    ld [hl], b                                    ; $5ab2: $70
    ld [hl], b                                    ; $5ab3: $70
    ld h, b                                       ; $5ab4: $60
    ld h, c                                       ; $5ab5: $61
    ld e, [hl]                                    ; $5ab6: $5e
    rrca                                          ; $5ab7: $0f
    ld h, d                                       ; $5ab8: $62
    ld [hl], b                                    ; $5ab9: $70
    ld [hl], b                                    ; $5aba: $70
    ld l, a                                       ; $5abb: $6f
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    cpl                                           ; $5abf: $2f

Call_075_5ac0:
    dec c                                         ; $5ac0: $0d
    dec c                                         ; $5ac1: $0d
    dec l                                         ; $5ac2: $2d
    dec c                                         ; $5ac3: $0d
    db $fc                                        ; $5ac4: $fc
    pop hl                                        ; $5ac5: $e1
    dec l                                         ; $5ac6: $2d
    ld sp, hl                                     ; $5ac7: $f9
    ldh [$f6], a                                  ; $5ac8: $e0 $f6
    and $80                                       ; $5aca: $e6 $80
    db $ed                                        ; $5acc: $ed
    pop hl                                        ; $5acd: $e1
    db $eb                                        ; $5ace: $eb
    ld [c], a                                     ; $5acf: $e2
    or $e8                                        ; $5ad0: $f6 $e8
    db $eb                                        ; $5ad2: $eb
    push hl                                       ; $5ad3: $e5
    ret c                                         ; $5ad4: $d8

    db $eb                                        ; $5ad5: $eb

jr_075_5ad6:
    jp $e2e4                                      ; $5ad6: $c3 $e4 $e2


    rst $20                                       ; $5ad9: $e7
    ld l, c                                       ; $5ada: $69
    rst $18                                       ; $5adb: $df
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    inc bc                                        ; $5adf: $03
    inc b                                         ; $5ae0: $04
    ei                                            ; $5ae1: $fb
    ldh [rBCPD], a                                ; $5ae2: $e0 $69
    ld l, h                                       ; $5ae4: $6c
    rst $38                                       ; $5ae5: $ff
    rlca                                          ; $5ae6: $07
    rlca                                          ; $5ae7: $07
    dec c                                         ; $5ae8: $0d
    ld c, $0f                                     ; $5ae9: $0e $0f
    rlca                                          ; $5aeb: $07
    rlca                                          ; $5aec: $07
    rlca                                          ; $5aed: $07
    rst $38                                       ; $5aee: $ff
    ld l, h                                       ; $5aef: $6c
    ld l, l                                       ; $5af0: $6d
    rla                                           ; $5af1: $17
    rla                                           ; $5af2: $17
    dec de                                        ; $5af3: $1b
    inc e                                         ; $5af4: $1c
    dec e                                         ; $5af5: $1d
    ld e, $ff                                     ; $5af6: $1e $ff
    rla                                           ; $5af8: $17
    rla                                           ; $5af9: $17
    ld l, l                                       ; $5afa: $6d
    ld l, [hl]                                    ; $5afb: $6e
    rlca                                          ; $5afc: $07
    rlca                                          ; $5afd: $07
    dec hl                                        ; $5afe: $2b
    inc l                                         ; $5aff: $2c
    rst $38                                       ; $5b00: $ff
    dec l                                         ; $5b01: $2d
    ld l, $07                                     ; $5b02: $2e $07
    rlca                                          ; $5b04: $07
    ld l, [hl]                                    ; $5b05: $6e
    ld l, d                                       ; $5b06: $6a
    rla                                           ; $5b07: $17
    rla                                           ; $5b08: $17
    ld a, a                                       ; $5b09: $7f
    dec sp                                        ; $5b0a: $3b
    inc a                                         ; $5b0b: $3c
    dec a                                         ; $5b0c: $3d
    ld a, $17                                     ; $5b0d: $3e $17
    rla                                           ; $5b0f: $17
    ld l, d                                       ; $5b10: $6a
    ret c                                         ; $5b11: $d8

    ldh [$f7], a                                  ; $5b12: $e0 $f7
    rlca                                          ; $5b14: $07
    ld c, e                                       ; $5b15: $4b
    ld c, h                                       ; $5b16: $4c
    ret c                                         ; $5b17: $d8

    db $e4                                        ; $5b18: $e4
    rla                                           ; $5b19: $17
    ld d, [hl]                                    ; $5b1a: $56
    ld d, a                                       ; $5b1b: $57
    ld e, b                                       ; $5b1c: $58
    cp $d8                                        ; $5b1d: $fe $d8
    ldh [$6f], a                                  ; $5b1f: $e0 $6f
    ld [hl], b                                    ; $5b21: $70
    ld [hl], b                                    ; $5b22: $70
    ld h, e                                       ; $5b23: $63
    ld h, h                                       ; $5b24: $64
    ld h, l                                       ; $5b25: $65
    ld h, [hl]                                    ; $5b26: $66
    rlca                                          ; $5b27: $07
    ld [hl], b                                    ; $5b28: $70
    ld [hl], b                                    ; $5b29: $70
    ld l, a                                       ; $5b2a: $6f
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    cpl                                           ; $5b2e: $2f
    dec c                                         ; $5b2f: $0d
    dec c                                         ; $5b30: $0d
    dec l                                         ; $5b31: $2d
    dec c                                         ; $5b32: $0d
    db $fc                                        ; $5b33: $fc
    pop hl                                        ; $5b34: $e1
    dec l                                         ; $5b35: $2d
    ld sp, hl                                     ; $5b36: $f9
    ldh [$f6], a                                  ; $5b37: $e0 $f6
    pop hl                                        ; $5b39: $e1
    nop                                           ; $5b3a: $00
    ldh a, [$e0]                                  ; $5b3b: $f0 $e0
    di                                            ; $5b3d: $f3
    ldh [$f7], a                                  ; $5b3e: $e0 $f7
    db $e3                                        ; $5b40: $e3
    cp $e2                                        ; $5b41: $fe $e2
    or $e5                                        ; $5b43: $f6 $e5
    ld [c], a                                     ; $5b45: $e2
    rst $20                                       ; $5b46: $e7
    adc $e7                                       ; $5b47: $ce $e7
    sub $e3                                       ; $5b49: $d6 $e3
    ld a, [hl]                                    ; $5b4b: $7e
    ld [c], a                                     ; $5b4c: $e2
    ld [$0069], a                                 ; $5b4d: $ea $69 $00
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    dec b                                         ; $5b52: $05
    ld b, $fb                                     ; $5b53: $06 $fb
    ldh [rIE], a                                  ; $5b55: $e0 $ff
    ld l, c                                       ; $5b57: $69
    ld l, h                                       ; $5b58: $6c
    rlca                                          ; $5b59: $07
    rlca                                          ; $5b5a: $07
    db $10                                        ; $5b5b: $10
    ld de, $1312                                  ; $5b5c: $11 $12 $13
    rst $38                                       ; $5b5f: $ff
    rlca                                          ; $5b60: $07
    rlca                                          ; $5b61: $07
    ld l, h                                       ; $5b62: $6c
    ld l, l                                       ; $5b63: $6d
    rla                                           ; $5b64: $17
    rla                                           ; $5b65: $17
    rra                                           ; $5b66: $1f
    jr nz, @+$01                                  ; $5b67: $20 $ff

    ld hl, $1722                                  ; $5b69: $21 $22 $17
    rla                                           ; $5b6c: $17
    ld l, l                                       ; $5b6d: $6d
    ld l, [hl]                                    ; $5b6e: $6e
    rlca                                          ; $5b6f: $07
    rlca                                          ; $5b70: $07
    rst $38                                       ; $5b71: $ff
    cpl                                           ; $5b72: $2f
    jr nc, jr_075_5ba6                            ; $5b73: $30 $31

    ld [hl-], a                                   ; $5b75: $32
    rlca                                          ; $5b76: $07
    rlca                                          ; $5b77: $07
    ld l, [hl]                                    ; $5b78: $6e
    ld l, d                                       ; $5b79: $6a
    rst $38                                       ; $5b7a: $ff
    rla                                           ; $5b7b: $17
    rla                                           ; $5b7c: $17
    ccf                                           ; $5b7d: $3f
    ld b, b                                       ; $5b7e: $40
    ld b, c                                       ; $5b7f: $41
    ld b, d                                       ; $5b80: $42
    rla                                           ; $5b81: $17
    rla                                           ; $5b82: $17
    sbc l                                         ; $5b83: $9d
    ld l, d                                       ; $5b84: $6a
    ret c                                         ; $5b85: $d8

    ldh [rTAC], a                                 ; $5b86: $e0 $07
    ld c, l                                       ; $5b88: $4d
    ld c, [hl]                                    ; $5b89: $4e
    ei                                            ; $5b8a: $fb
    ldh [$d8], a                                  ; $5b8b: $e0 $d8
    pop hl                                        ; $5b8d: $e1
    rla                                           ; $5b8e: $17
    rst $30                                       ; $5b8f: $f7
    ld e, c                                       ; $5b90: $59
    ld e, d                                       ; $5b91: $5a
    ld e, e                                       ; $5b92: $5b
    ret c                                         ; $5b93: $d8

    ldh [$6f], a                                  ; $5b94: $e0 $6f
    ld [hl], b                                    ; $5b96: $70
    ld [hl], b                                    ; $5b97: $70
    ld h, e                                       ; $5b98: $63
    ccf                                           ; $5b99: $3f
    ld h, a                                       ; $5b9a: $67
    ld l, b                                       ; $5b9b: $68
    ld h, [hl]                                    ; $5b9c: $66
    ld [hl], b                                    ; $5b9d: $70
    ld [hl], b                                    ; $5b9e: $70
    ld l, a                                       ; $5b9f: $6f
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    adc a                                         ; $5ba3: $8f
    dec c                                         ; $5ba4: $0d
    dec c                                         ; $5ba5: $0d

jr_075_5ba6:
    dec l                                         ; $5ba6: $2d
    dec c                                         ; $5ba7: $0d
    db $fc                                        ; $5ba8: $fc
    ld [c], a                                     ; $5ba9: $e2
    ld sp, hl                                     ; $5baa: $f9
    pop hl                                        ; $5bab: $e1
    db $fd                                        ; $5bac: $fd
    pop hl                                        ; $5bad: $e1
    dec l                                         ; $5bae: $2d
    pop bc                                        ; $5baf: $c1
    dec l                                         ; $5bb0: $2d
    or $e5                                        ; $5bb1: $f6 $e5
    push af                                       ; $5bb3: $f5
    ldh [$e9], a                                  ; $5bb4: $e0 $e9
    push hl                                       ; $5bb6: $e5
    db $ec                                        ; $5bb7: $ec
    and $e2                                       ; $5bb8: $e6 $e2
    db $f4                                        ; $5bba: $f4
    ld c, l                                       ; $5bbb: $4d
    ld c, l                                       ; $5bbc: $4d
    cp $c4                                        ; $5bbd: $fe $c4
    db $e3                                        ; $5bbf: $e3
    ld c, l                                       ; $5bc0: $4d
    ld l, l                                       ; $5bc1: $6d
    ld h, e                                       ; $5bc2: $63
    ld h, h                                       ; $5bc3: $64
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    ld bc, $02ff                                  ; $5bc6: $01 $ff $02
    nop                                           ; $5bc9: $00
    nop                                           ; $5bca: $00
    ld h, h                                       ; $5bcb: $64
    ld h, e                                       ; $5bcc: $63
    ld h, l                                       ; $5bcd: $65
    ld h, [hl]                                    ; $5bce: $66
    ld [$05ff], sp                                ; $5bcf: $08 $ff $05
    ld b, $07                                     ; $5bd2: $06 $07
    ld [$6608], sp                                ; $5bd4: $08 $08 $66
    ld h, l                                       ; $5bd7: $65
    ld l, b                                       ; $5bd8: $68
    rst $38                                       ; $5bd9: $ff
    ld l, c                                       ; $5bda: $69
    ld l, d                                       ; $5bdb: $6a
    dec c                                         ; $5bdc: $0d
    ld c, $0f                                     ; $5bdd: $0e $0f
    db $10                                        ; $5bdf: $10
    ld l, d                                       ; $5be0: $6a
    ld l, c                                       ; $5be1: $69
    rst $38                                       ; $5be2: $ff
    ld l, b                                       ; $5be3: $68
    ld l, e                                       ; $5be4: $6b
    ld l, h                                       ; $5be5: $6c
    ld d, b                                       ; $5be6: $50
    jr jr_075_5c02                                ; $5be7: $18 $19

    ld a, [de]                                    ; $5be9: $1a
    dec de                                        ; $5bea: $1b
    rst $30                                       ; $5beb: $f7
    ld d, b                                       ; $5bec: $50
    ld l, h                                       ; $5bed: $6c
    ld l, e                                       ; $5bee: $6b
    ld [c], a                                     ; $5bef: $e2
    ldh [$28], a                                  ; $5bf0: $e0 $28
    add hl, hl                                    ; $5bf2: $29
    ld a, [hl+]                                   ; $5bf3: $2a
    dec hl                                        ; $5bf4: $2b
    sbc $e2                                       ; $5bf5: $de $e2
    db $e3                                        ; $5bf7: $e3
    jr c, jr_075_5c33                             ; $5bf8: $38 $39

    ld a, [hl-]                                   ; $5bfa: $3a
    dec sp                                        ; $5bfb: $3b
    ld [c], a                                     ; $5bfc: $e2
    db $e3                                        ; $5bfd: $e3
    ld c, b                                       ; $5bfe: $48
    ld c, c                                       ; $5bff: $49
    ei                                            ; $5c00: $fb
    ld c, d                                       ; $5c01: $4a

jr_075_5c02:
    ld c, e                                       ; $5c02: $4b
    ld [c], a                                     ; $5c03: $e2
    ldh [$63], a                                  ; $5c04: $e0 $63
    ld h, h                                       ; $5c06: $64
    ld l, l                                       ; $5c07: $6d
    ld d, a                                       ; $5c08: $57
    ld e, b                                       ; $5c09: $58
    rra                                           ; $5c0a: $1f
    ld e, c                                       ; $5c0b: $59
    ld e, d                                       ; $5c0c: $5a
    ld l, l                                       ; $5c0d: $6d
    ld h, h                                       ; $5c0e: $64
    ld h, e                                       ; $5c0f: $63
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    adc a                                         ; $5c13: $8f
    dec c                                         ; $5c14: $0d
    dec c                                         ; $5c15: $0d
    dec l                                         ; $5c16: $2d
    dec c                                         ; $5c17: $0d
    db $fc                                        ; $5c18: $fc
    ld [c], a                                     ; $5c19: $e2
    ld sp, hl                                     ; $5c1a: $f9
    pop hl                                        ; $5c1b: $e1
    db $fd                                        ; $5c1c: $fd
    pop hl                                        ; $5c1d: $e1
    dec l                                         ; $5c1e: $2d
    pop bc                                        ; $5c1f: $c1
    dec l                                         ; $5c20: $2d
    or $e5                                        ; $5c21: $f6 $e5
    push af                                       ; $5c23: $f5
    ldh [$e9], a                                  ; $5c24: $e0 $e9
    push hl                                       ; $5c26: $e5
    db $ec                                        ; $5c27: $ec
    and $e2                                       ; $5c28: $e6 $e2
    db $f4                                        ; $5c2a: $f4
    ld c, l                                       ; $5c2b: $4d
    ld c, l                                       ; $5c2c: $4d
    cp $c4                                        ; $5c2d: $fe $c4
    db $e3                                        ; $5c2f: $e3
    ld c, l                                       ; $5c30: $4d
    ld l, l                                       ; $5c31: $6d
    ld h, e                                       ; $5c32: $63

jr_075_5c33:
    ld h, h                                       ; $5c33: $64
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    ld bc, $02ff                                  ; $5c36: $01 $ff $02
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    ld h, h                                       ; $5c3b: $64
    ld h, e                                       ; $5c3c: $63
    ld h, l                                       ; $5c3d: $65
    ld h, [hl]                                    ; $5c3e: $66
    ld [$05ff], sp                                ; $5c3f: $08 $ff $05
    ld b, $07                                     ; $5c42: $06 $07
    ld [$6608], sp                                ; $5c44: $08 $08 $66
    ld h, l                                       ; $5c47: $65
    ld l, b                                       ; $5c48: $68
    rst $38                                       ; $5c49: $ff
    ld l, c                                       ; $5c4a: $69
    ld l, d                                       ; $5c4b: $6a
    dec c                                         ; $5c4c: $0d
    ld c, $0f                                     ; $5c4d: $0e $0f
    db $10                                        ; $5c4f: $10
    ld l, d                                       ; $5c50: $6a
    ld l, c                                       ; $5c51: $69
    rst $38                                       ; $5c52: $ff
    ld l, b                                       ; $5c53: $68
    ld l, e                                       ; $5c54: $6b
    ld l, h                                       ; $5c55: $6c
    ld d, b                                       ; $5c56: $50
    inc e                                         ; $5c57: $1c
    dec e                                         ; $5c58: $1d
    ld e, $1f                                     ; $5c59: $1e $1f
    rst $30                                       ; $5c5b: $f7
    ld d, b                                       ; $5c5c: $50
    ld l, h                                       ; $5c5d: $6c
    ld l, e                                       ; $5c5e: $6b
    ld [c], a                                     ; $5c5f: $e2
    ldh [$2c], a                                  ; $5c60: $e0 $2c
    dec l                                         ; $5c62: $2d
    ld l, $2f                                     ; $5c63: $2e $2f
    sbc $e2                                       ; $5c65: $de $e2
    db $e3                                        ; $5c67: $e3
    inc a                                         ; $5c68: $3c
    dec a                                         ; $5c69: $3d
    ld a, $3f                                     ; $5c6a: $3e $3f
    ld [c], a                                     ; $5c6c: $e2
    db $e3                                        ; $5c6d: $e3
    ld c, h                                       ; $5c6e: $4c
    ld c, l                                       ; $5c6f: $4d
    ei                                            ; $5c70: $fb
    ld c, [hl]                                    ; $5c71: $4e
    ld c, a                                       ; $5c72: $4f
    ld [c], a                                     ; $5c73: $e2
    ldh [$63], a                                  ; $5c74: $e0 $63
    ld h, h                                       ; $5c76: $64
    ld l, l                                       ; $5c77: $6d
    ld e, e                                       ; $5c78: $5b
    ld e, h                                       ; $5c79: $5c
    rra                                           ; $5c7a: $1f
    ld e, l                                       ; $5c7b: $5d
    ld e, [hl]                                    ; $5c7c: $5e
    ld l, l                                       ; $5c7d: $6d
    ld h, h                                       ; $5c7e: $64
    ld h, e                                       ; $5c7f: $63
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    rst $08                                       ; $5c83: $cf
    dec c                                         ; $5c84: $0d
    dec c                                         ; $5c85: $0d
    dec l                                         ; $5c86: $2d
    dec c                                         ; $5c87: $0d
    db $fc                                        ; $5c88: $fc
    ld [c], a                                     ; $5c89: $e2
    ld sp, hl                                     ; $5c8a: $f9
    db $e4                                        ; $5c8b: $e4
    dec c                                         ; $5c8c: $0d
    dec l                                         ; $5c8d: $2d
    add c                                         ; $5c8e: $81
    dec l                                         ; $5c8f: $2d
    rst $28                                       ; $5c90: $ef
    pop hl                                        ; $5c91: $e1
    db $fd                                        ; $5c92: $fd
    ld [c], a                                     ; $5c93: $e2
    or $e1                                        ; $5c94: $f6 $e1
    di                                            ; $5c96: $f3
    db $e3                                        ; $5c97: $e3
    db $ec                                        ; $5c98: $ec
    and $e2                                       ; $5c99: $e6 $e2
    db $f4                                        ; $5c9b: $f4
    ld c, l                                       ; $5c9c: $4d
    db $fd                                        ; $5c9d: $fd
    ld c, l                                       ; $5c9e: $4d
    rst $08                                       ; $5c9f: $cf
    db $e3                                        ; $5ca0: $e3
    ld c, l                                       ; $5ca1: $4d
    ld l, l                                       ; $5ca2: $6d
    ld h, e                                       ; $5ca3: $63
    ld h, h                                       ; $5ca4: $64
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    rst $38                                       ; $5ca7: $ff
    inc bc                                        ; $5ca8: $03
    inc b                                         ; $5ca9: $04
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    ld h, h                                       ; $5cac: $64
    ld h, e                                       ; $5cad: $63
    ld h, l                                       ; $5cae: $65
    ld h, [hl]                                    ; $5caf: $66
    rst $38                                       ; $5cb0: $ff
    ld [$0908], sp                                ; $5cb1: $08 $08 $09
    ld a, [bc]                                    ; $5cb4: $0a
    ld [$6608], sp                                ; $5cb5: $08 $08 $66
    ld h, l                                       ; $5cb8: $65
    rst $38                                       ; $5cb9: $ff
    ld l, b                                       ; $5cba: $68
    ld l, c                                       ; $5cbb: $69
    ld l, d                                       ; $5cbc: $6a
    ld de, $1312                                  ; $5cbd: $11 $12 $13
    inc d                                         ; $5cc0: $14
    ld l, d                                       ; $5cc1: $6a
    rst $38                                       ; $5cc2: $ff
    ld l, c                                       ; $5cc3: $69
    ld l, b                                       ; $5cc4: $68
    ld l, e                                       ; $5cc5: $6b
    ld l, h                                       ; $5cc6: $6c
    ld d, b                                       ; $5cc7: $50
    jr nz, jr_075_5ceb                            ; $5cc8: $20 $21

    ld [hl+], a                                   ; $5cca: $22
    rst $28                                       ; $5ccb: $ef
    inc hl                                        ; $5ccc: $23
    ld d, b                                       ; $5ccd: $50
    ld l, h                                       ; $5cce: $6c
    ld l, e                                       ; $5ccf: $6b
    ld [c], a                                     ; $5cd0: $e2
    ldh [$30], a                                  ; $5cd1: $e0 $30
    ld sp, $bd32                                  ; $5cd3: $31 $32 $bd
    inc sp                                        ; $5cd6: $33
    ld [c], a                                     ; $5cd7: $e2
    db $e3                                        ; $5cd8: $e3
    ld b, b                                       ; $5cd9: $40
    ld b, c                                       ; $5cda: $41
    ld b, d                                       ; $5cdb: $42
    ld b, e                                       ; $5cdc: $43
    ld [c], a                                     ; $5cdd: $e2
    db $e3                                        ; $5cde: $e3
    ld d, b                                       ; $5cdf: $50

Call_075_5ce0:
    rst $30                                       ; $5ce0: $f7
    ld d, c                                       ; $5ce1: $51
    ld d, d                                       ; $5ce2: $52
    ld d, e                                       ; $5ce3: $53
    ld [c], a                                     ; $5ce4: $e2
    ldh [$63], a                                  ; $5ce5: $e0 $63
    ld h, h                                       ; $5ce7: $64
    ld l, l                                       ; $5ce8: $6d
    ld e, a                                       ; $5ce9: $5f
    ccf                                           ; $5cea: $3f

jr_075_5ceb:
    ld h, b                                       ; $5ceb: $60
    ld h, c                                       ; $5cec: $61
    ld h, d                                       ; $5ced: $62
    ld l, l                                       ; $5cee: $6d
    ld h, h                                       ; $5cef: $64
    ld h, e                                       ; $5cf0: $63
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    adc a                                         ; $5cf4: $8f
    dec c                                         ; $5cf5: $0d
    dec c                                         ; $5cf6: $0d
    dec l                                         ; $5cf7: $2d
    dec c                                         ; $5cf8: $0d
    db $fc                                        ; $5cf9: $fc
    ld [c], a                                     ; $5cfa: $e2
    ld sp, hl                                     ; $5cfb: $f9
    pop hl                                        ; $5cfc: $e1
    db $fd                                        ; $5cfd: $fd
    pop hl                                        ; $5cfe: $e1
    dec l                                         ; $5cff: $2d
    pop bc                                        ; $5d00: $c1
    dec l                                         ; $5d01: $2d
    or $e5                                        ; $5d02: $f6 $e5
    push af                                       ; $5d04: $f5
    ldh [$e9], a                                  ; $5d05: $e0 $e9
    push hl                                       ; $5d07: $e5
    db $ec                                        ; $5d08: $ec
    and $e2                                       ; $5d09: $e6 $e2
    db $f4                                        ; $5d0b: $f4
    ld c, l                                       ; $5d0c: $4d
    ld c, l                                       ; $5d0d: $4d
    cp $c4                                        ; $5d0e: $fe $c4
    db $e3                                        ; $5d10: $e3
    ld c, l                                       ; $5d11: $4d
    ld l, l                                       ; $5d12: $6d
    ld h, e                                       ; $5d13: $63
    ld h, h                                       ; $5d14: $64
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    ld bc, $02ff                                  ; $5d17: $01 $ff $02
    nop                                           ; $5d1a: $00
    nop                                           ; $5d1b: $00
    ld h, h                                       ; $5d1c: $64
    ld h, e                                       ; $5d1d: $63
    ld h, l                                       ; $5d1e: $65
    ld h, [hl]                                    ; $5d1f: $66
    ld [$05ff], sp                                ; $5d20: $08 $ff $05
    dec bc                                        ; $5d23: $0b
    inc c                                         ; $5d24: $0c
    ld [$6608], sp                                ; $5d25: $08 $08 $66
    ld h, l                                       ; $5d28: $65
    ld l, b                                       ; $5d29: $68
    rst $38                                       ; $5d2a: $ff
    ld l, c                                       ; $5d2b: $69
    ld l, d                                       ; $5d2c: $6a
    dec c                                         ; $5d2d: $0d
    dec d                                         ; $5d2e: $15
    ld d, $17                                     ; $5d2f: $16 $17
    ld l, d                                       ; $5d31: $6a
    ld l, c                                       ; $5d32: $69
    rst $38                                       ; $5d33: $ff
    ld l, b                                       ; $5d34: $68
    ld l, e                                       ; $5d35: $6b
    ld l, h                                       ; $5d36: $6c
    ld d, b                                       ; $5d37: $50
    inc h                                         ; $5d38: $24
    dec h                                         ; $5d39: $25
    ld h, $27                                     ; $5d3a: $26 $27
    rst $30                                       ; $5d3c: $f7
    ld d, b                                       ; $5d3d: $50
    ld l, h                                       ; $5d3e: $6c
    ld l, e                                       ; $5d3f: $6b
    ld [c], a                                     ; $5d40: $e2
    ldh [$34], a                                  ; $5d41: $e0 $34
    dec [hl]                                      ; $5d43: $35
    ld [hl], $37                                  ; $5d44: $36 $37
    sbc $e2                                       ; $5d46: $de $e2
    db $e3                                        ; $5d48: $e3
    ld b, h                                       ; $5d49: $44
    ld b, l                                       ; $5d4a: $45
    ld b, [hl]                                    ; $5d4b: $46
    ld b, a                                       ; $5d4c: $47
    ld [c], a                                     ; $5d4d: $e2
    db $e3                                        ; $5d4e: $e3
    ld d, b                                       ; $5d4f: $50
    ld d, h                                       ; $5d50: $54
    ei                                            ; $5d51: $fb
    ld d, l                                       ; $5d52: $55
    ld d, [hl]                                    ; $5d53: $56
    ld [c], a                                     ; $5d54: $e2
    ldh [$63], a                                  ; $5d55: $e0 $63
    ld h, h                                       ; $5d57: $64
    ld l, l                                       ; $5d58: $6d
    ld e, a                                       ; $5d59: $5f
    ld h, b                                       ; $5d5a: $60
    rra                                           ; $5d5b: $1f
    ld h, c                                       ; $5d5c: $61
    ld h, d                                       ; $5d5d: $62
    ld l, l                                       ; $5d5e: $6d
    ld h, h                                       ; $5d5f: $64
    ld h, e                                       ; $5d60: $63
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    adc a                                         ; $5d64: $8f
    dec c                                         ; $5d65: $0d
    dec c                                         ; $5d66: $0d
    dec l                                         ; $5d67: $2d
    dec c                                         ; $5d68: $0d
    db $fc                                        ; $5d69: $fc
    ld [c], a                                     ; $5d6a: $e2
    ld sp, hl                                     ; $5d6b: $f9
    pop hl                                        ; $5d6c: $e1
    db $fd                                        ; $5d6d: $fd
    pop hl                                        ; $5d6e: $e1
    dec l                                         ; $5d6f: $2d
    ld h, c                                       ; $5d70: $61
    dec l                                         ; $5d71: $2d
    or $e5                                        ; $5d72: $f6 $e5
    and $e5                                       ; $5d74: $e6 $e5
    db $eb                                        ; $5d76: $eb
    ld [c], a                                     ; $5d77: $e2
    ld [c], a                                     ; $5d78: $e2
    ei                                            ; $5d79: $fb
    ld c, l                                       ; $5d7a: $4d
    ld c, l                                       ; $5d7b: $4d
    call nz, $ffe3                                ; $5d7c: $c4 $e3 $ff
    ld c, l                                       ; $5d7f: $4d
    ld l, l                                       ; $5d80: $6d
    ld c, e                                       ; $5d81: $4b
    inc b                                         ; $5d82: $04
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    ld bc, $ff02                                  ; $5d85: $01 $02 $ff
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    inc b                                         ; $5d8a: $04
    ld c, e                                       ; $5d8b: $4b
    ld c, h                                       ; $5d8c: $4c
    ld c, l                                       ; $5d8d: $4d
    add hl, bc                                    ; $5d8e: $09
    ld b, $ff                                     ; $5d8f: $06 $ff
    rlca                                          ; $5d91: $07
    ld [$0909], sp                                ; $5d92: $08 $09 $09
    ld c, l                                       ; $5d95: $4d
    ld c, h                                       ; $5d96: $4c
    ld c, [hl]                                    ; $5d97: $4e
    ld c, a                                       ; $5d98: $4f
    rst $38                                       ; $5d99: $ff
    rla                                           ; $5d9a: $17
    db $10                                        ; $5d9b: $10
    ld de, $1312                                  ; $5d9c: $11 $12 $13
    rla                                           ; $5d9f: $17
    ld c, a                                       ; $5da0: $4f
    ld d, b                                       ; $5da1: $50
    rst $38                                       ; $5da2: $ff
    ld d, c                                       ; $5da3: $51
    ld d, d                                       ; $5da4: $52
    ld b, b                                       ; $5da5: $40
    dec de                                        ; $5da6: $1b
    inc e                                         ; $5da7: $1c
    dec e                                         ; $5da8: $1d
    ld e, $40                                     ; $5da9: $1e $40
    ld a, e                                       ; $5dab: $7b
    ld d, d                                       ; $5dac: $52
    ld d, c                                       ; $5dad: $51
    ld [c], a                                     ; $5dae: $e2
    ldh [rNR52], a                                ; $5daf: $e0 $26
    daa                                           ; $5db1: $27
    jr z, jr_075_5ddd                             ; $5db2: $28 $29

    ld [c], a                                     ; $5db4: $e2
    db $e3                                        ; $5db5: $e3
    rst $28                                       ; $5db6: $ef
    ld sp, $3332                                  ; $5db7: $31 $32 $33
    inc [hl]                                      ; $5dba: $34
    ld [c], a                                     ; $5dbb: $e2
    db $e3                                        ; $5dbc: $e3
    inc a                                         ; $5dbd: $3c
    dec a                                         ; $5dbe: $3d
    ld a, $fd                                     ; $5dbf: $3e $fd
    ccf                                           ; $5dc1: $3f
    ld [c], a                                     ; $5dc2: $e2
    ldh [rWX], a                                  ; $5dc3: $e0 $4b
    inc b                                         ; $5dc5: $04
    ld d, e                                       ; $5dc6: $53
    ld b, [hl]                                    ; $5dc7: $46
    ld b, a                                       ; $5dc8: $47
    ld c, b                                       ; $5dc9: $48
    rrca                                          ; $5dca: $0f
    ld c, c                                       ; $5dcb: $49
    ld d, e                                       ; $5dcc: $53
    inc b                                         ; $5dcd: $04
    ld c, e                                       ; $5dce: $4b
    nop                                           ; $5dcf: $00
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    adc a                                         ; $5dd2: $8f
    dec c                                         ; $5dd3: $0d
    dec c                                         ; $5dd4: $0d
    dec l                                         ; $5dd5: $2d
    dec c                                         ; $5dd6: $0d
    db $fc                                        ; $5dd7: $fc
    ld [c], a                                     ; $5dd8: $e2
    ld sp, hl                                     ; $5dd9: $f9
    pop hl                                        ; $5dda: $e1
    db $fd                                        ; $5ddb: $fd
    pop hl                                        ; $5ddc: $e1

jr_075_5ddd:
    dec l                                         ; $5ddd: $2d
    ld h, c                                       ; $5dde: $61
    dec l                                         ; $5ddf: $2d
    or $e5                                        ; $5de0: $f6 $e5
    and $e5                                       ; $5de2: $e6 $e5
    db $eb                                        ; $5de4: $eb
    ld [c], a                                     ; $5de5: $e2
    ld [c], a                                     ; $5de6: $e2
    ei                                            ; $5de7: $fb
    ld c, l                                       ; $5de8: $4d
    ld c, l                                       ; $5de9: $4d
    call nz, Call_075_7fe3                        ; $5dea: $c4 $e3 $7f
    ld c, l                                       ; $5ded: $4d
    ld l, l                                       ; $5dee: $6d
    ld c, e                                       ; $5def: $4b
    inc b                                         ; $5df0: $04
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    inc bc                                        ; $5df3: $03
    db $fc                                        ; $5df4: $fc
    ldh [rIE], a                                  ; $5df5: $e0 $ff
    inc b                                         ; $5df7: $04
    ld c, e                                       ; $5df8: $4b
    ld c, h                                       ; $5df9: $4c
    ld c, l                                       ; $5dfa: $4d
    add hl, bc                                    ; $5dfb: $09
    ld a, [bc]                                    ; $5dfc: $0a
    dec bc                                        ; $5dfd: $0b
    inc c                                         ; $5dfe: $0c
    rst $38                                       ; $5dff: $ff
    add hl, bc                                    ; $5e00: $09
    add hl, bc                                    ; $5e01: $09
    ld c, l                                       ; $5e02: $4d
    ld c, h                                       ; $5e03: $4c
    ld c, [hl]                                    ; $5e04: $4e
    ld c, a                                       ; $5e05: $4f
    rla                                           ; $5e06: $17
    inc d                                         ; $5e07: $14
    rst $38                                       ; $5e08: $ff
    dec d                                         ; $5e09: $15
    ld d, $17                                     ; $5e0a: $16 $17
    rla                                           ; $5e0c: $17
    ld c, a                                       ; $5e0d: $4f
    ld d, b                                       ; $5e0e: $50
    ld d, c                                       ; $5e0f: $51
    ld d, d                                       ; $5e10: $52
    rst $38                                       ; $5e11: $ff
    ld b, b                                       ; $5e12: $40
    rra                                           ; $5e13: $1f
    jr nz, jr_075_5e37                            ; $5e14: $20 $21

    ld [hl+], a                                   ; $5e16: $22
    ld b, b                                       ; $5e17: $40
    ld d, d                                       ; $5e18: $52
    ld d, c                                       ; $5e19: $51
    sbc $e2                                       ; $5e1a: $de $e2
    ldh [$2a], a                                  ; $5e1c: $e0 $2a
    dec hl                                        ; $5e1e: $2b
    inc l                                         ; $5e1f: $2c
    dec l                                         ; $5e20: $2d
    ld [c], a                                     ; $5e21: $e2
    db $e3                                        ; $5e22: $e3
    dec [hl]                                      ; $5e23: $35
    ld [hl], $7b                                  ; $5e24: $36 $7b
    scf                                           ; $5e26: $37
    jr c, @-$1c                                   ; $5e27: $38 $e2

    db $e3                                        ; $5e29: $e3
    ld b, b                                       ; $5e2a: $40
    ld b, c                                       ; $5e2b: $41
    ld b, d                                       ; $5e2c: $42
    ld b, e                                       ; $5e2d: $43
    ld [c], a                                     ; $5e2e: $e2
    ldh [rIE], a                                  ; $5e2f: $e0 $ff
    ld c, e                                       ; $5e31: $4b
    inc b                                         ; $5e32: $04
    ld d, e                                       ; $5e33: $53
    ld b, [hl]                                    ; $5e34: $46
    ld c, d                                       ; $5e35: $4a
    ld c, b                                       ; $5e36: $48

jr_075_5e37:
    ld c, c                                       ; $5e37: $49
    ld d, e                                       ; $5e38: $53
    inc bc                                        ; $5e39: $03
    inc b                                         ; $5e3a: $04
    ld c, e                                       ; $5e3b: $4b
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    adc a                                         ; $5e3f: $8f
    dec c                                         ; $5e40: $0d
    dec c                                         ; $5e41: $0d
    dec l                                         ; $5e42: $2d
    dec c                                         ; $5e43: $0d
    db $fc                                        ; $5e44: $fc
    ld [c], a                                     ; $5e45: $e2
    ld sp, hl                                     ; $5e46: $f9
    pop hl                                        ; $5e47: $e1
    db $fd                                        ; $5e48: $fd
    pop hl                                        ; $5e49: $e1
    dec l                                         ; $5e4a: $2d
    ld h, c                                       ; $5e4b: $61
    dec l                                         ; $5e4c: $2d
    or $e5                                        ; $5e4d: $f6 $e5
    and $e5                                       ; $5e4f: $e6 $e5
    db $eb                                        ; $5e51: $eb
    ld [c], a                                     ; $5e52: $e2
    ld [c], a                                     ; $5e53: $e2
    ei                                            ; $5e54: $fb
    ld c, l                                       ; $5e55: $4d
    ld c, l                                       ; $5e56: $4d
    call nz, Call_075_7fe3                        ; $5e57: $c4 $e3 $7f
    ld c, l                                       ; $5e5a: $4d
    ld l, l                                       ; $5e5b: $6d
    ld c, e                                       ; $5e5c: $4b
    inc b                                         ; $5e5d: $04
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    inc b                                         ; $5e60: $04
    db $fc                                        ; $5e61: $fc
    pop hl                                        ; $5e62: $e1
    rst $38                                       ; $5e63: $ff
    ld c, e                                       ; $5e64: $4b
    ld c, h                                       ; $5e65: $4c
    ld c, l                                       ; $5e66: $4d
    add hl, bc                                    ; $5e67: $09
    dec c                                         ; $5e68: $0d
    ld c, $0f                                     ; $5e69: $0e $0f
    add hl, bc                                    ; $5e6b: $09
    rst $38                                       ; $5e6c: $ff
    add hl, bc                                    ; $5e6d: $09
    ld c, l                                       ; $5e6e: $4d
    ld c, h                                       ; $5e6f: $4c
    ld c, [hl]                                    ; $5e70: $4e
    ld c, a                                       ; $5e71: $4f
    rla                                           ; $5e72: $17
    jr jr_075_5e8e                                ; $5e73: $18 $19

    rst $38                                       ; $5e75: $ff
    ld a, [de]                                    ; $5e76: $1a
    rla                                           ; $5e77: $17
    rla                                           ; $5e78: $17
    ld c, a                                       ; $5e79: $4f
    ld d, b                                       ; $5e7a: $50
    ld d, c                                       ; $5e7b: $51
    ld d, d                                       ; $5e7c: $52
    ld b, b                                       ; $5e7d: $40
    ld a, a                                       ; $5e7e: $7f
    inc hl                                        ; $5e7f: $23
    inc h                                         ; $5e80: $24
    dec h                                         ; $5e81: $25
    ld e, $40                                     ; $5e82: $1e $40
    ld d, d                                       ; $5e84: $52
    ld d, c                                       ; $5e85: $51
    ld [c], a                                     ; $5e86: $e2
    ldh [$ef], a                                  ; $5e87: $e0 $ef
    ld l, $2f                                     ; $5e89: $2e $2f
    jr z, jr_075_5ebd                             ; $5e8b: $28 $30

    ld [c], a                                     ; $5e8d: $e2

jr_075_5e8e:
    db $e3                                        ; $5e8e: $e3
    add hl, sp                                    ; $5e8f: $39
    ld a, [hl-]                                   ; $5e90: $3a
    inc sp                                        ; $5e91: $33
    cp l                                          ; $5e92: $bd
    dec sp                                        ; $5e93: $3b
    ld [c], a                                     ; $5e94: $e2
    db $e3                                        ; $5e95: $e3
    ld b, b                                       ; $5e96: $40
    ld b, h                                       ; $5e97: $44
    ld a, $45                                     ; $5e98: $3e $45
    ld [c], a                                     ; $5e9a: $e2
    ldh [rWX], a                                  ; $5e9b: $e0 $4b
    rst $38                                       ; $5e9d: $ff
    inc b                                         ; $5e9e: $04
    ld d, e                                       ; $5e9f: $53
    ld b, [hl]                                    ; $5ea0: $46
    ld b, a                                       ; $5ea1: $47
    ld c, b                                       ; $5ea2: $48
    ld c, c                                       ; $5ea3: $49
    ld d, e                                       ; $5ea4: $53
    inc b                                         ; $5ea5: $04
    ld bc, $004b                                  ; $5ea6: $01 $4b $00
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    ld de, $ff0d                                  ; $5eab: $11 $0d $ff
    rst $38                                       ; $5eae: $ff
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    jp hl                                         ; $5eb1: $e9


    add sp, $00                                   ; $5eb2: $e8 $00
    rst $38                                       ; $5eb4: $ff
    rst $38                                       ; $5eb5: $ff
    rst $38                                       ; $5eb6: $ff
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    add sp, $00                                   ; $5eb9: $e8 $00
    nop                                           ; $5ebb: $00
    nop                                           ; $5ebc: $00

jr_075_5ebd:
    ld h, l                                       ; $5ebd: $65
    dec c                                         ; $5ebe: $0d
    rst $38                                       ; $5ebf: $ff
    push hl                                       ; $5ec0: $e5
    dec l                                         ; $5ec1: $2d
    or $e6                                        ; $5ec2: $f6 $e6
    rst $30                                       ; $5ec4: $f7
    add sp, $4d                                   ; $5ec5: $e8 $4d
    ld c, l                                       ; $5ec7: $4d
    ld hl, sp-$15                                 ; $5ec8: $f8 $eb
    db $fc                                        ; $5eca: $fc
    ld [c], a                                     ; $5ecb: $e2
    push af                                       ; $5ecc: $f5
    ret c                                         ; $5ecd: $d8

    and $6d                                       ; $5ece: $e6 $6d
    ld h, d                                       ; $5ed0: $62
    ld bc, $0002                                  ; $5ed1: $01 $02 $00
    ld bc, $fcfe                                  ; $5ed4: $01 $fe $fc
    pop hl                                        ; $5ed7: $e1
    ld h, d                                       ; $5ed8: $62
    ld h, e                                       ; $5ed9: $63
    add hl, bc                                    ; $5eda: $09
    ld b, $03                                     ; $5edb: $06 $03
    inc b                                         ; $5edd: $04
    dec b                                         ; $5ede: $05
    rst $38                                       ; $5edf: $ff
    ld b, $07                                     ; $5ee0: $06 $07
    ld [$6664], sp                                ; $5ee2: $08 $64 $66
    inc de                                        ; $5ee5: $13
    ld de, $ff0a                                  ; $5ee6: $11 $0a $ff
    dec bc                                        ; $5ee9: $0b
    inc c                                         ; $5eea: $0c
    dec c                                         ; $5eeb: $0d
    ld de, $6712                                  ; $5eec: $11 $12 $67
    ld h, e                                       ; $5eef: $63
    add hl, bc                                    ; $5ef0: $09
    rst $38                                       ; $5ef1: $ff
    ld c, d                                       ; $5ef2: $4a
    inc d                                         ; $5ef3: $14
    dec d                                         ; $5ef4: $15
    ld d, $17                                     ; $5ef5: $16 $17
    jr nz, jr_075_5f01                            ; $5ef7: $20 $08

    ld h, h                                       ; $5ef9: $64
    sbc $e2                                       ; $5efa: $de $e2
    ldh [rNR50], a                                ; $5efc: $e0 $24
    dec h                                         ; $5efe: $25
    ld h, $27                                     ; $5eff: $26 $27

jr_075_5f01:
    ld [c], a                                     ; $5f01: $e2
    db $e3                                        ; $5f02: $e3
    inc sp                                        ; $5f03: $33
    inc [hl]                                      ; $5f04: $34
    ld a, e                                       ; $5f05: $7b
    dec [hl]                                      ; $5f06: $35
    ld [hl], $e2                                  ; $5f07: $36 $e2
    db $e3                                        ; $5f09: $e3
    ld b, e                                       ; $5f0a: $43
    ld b, h                                       ; $5f0b: $44
    ld b, l                                       ; $5f0c: $45
    ld b, [hl]                                    ; $5f0d: $46
    ld [c], a                                     ; $5f0e: $e2
    ldh [rIE], a                                  ; $5f0f: $e0 $ff
    ld h, d                                       ; $5f11: $62
    ld bc, $535a                                  ; $5f12: $01 $5a $53
    ld d, h                                       ; $5f15: $54
    ld d, l                                       ; $5f16: $55
    ld d, [hl]                                    ; $5f17: $56
    ld l, b                                       ; $5f18: $68
    inc bc                                        ; $5f19: $03
    ld bc, $0062                                  ; $5f1a: $01 $62 $00
    nop                                           ; $5f1d: $00
    nop                                           ; $5f1e: $00
    ld h, l                                       ; $5f1f: $65
    dec c                                         ; $5f20: $0d
    rst $38                                       ; $5f21: $ff
    push hl                                       ; $5f22: $e5
    dec l                                         ; $5f23: $2d
    or $e6                                        ; $5f24: $f6 $e6
    rst $30                                       ; $5f26: $f7
    add sp, $4d                                   ; $5f27: $e8 $4d
    ld c, l                                       ; $5f29: $4d
    ld hl, sp-$15                                 ; $5f2a: $f8 $eb
    db $fc                                        ; $5f2c: $fc
    ld [c], a                                     ; $5f2d: $e2
    push af                                       ; $5f2e: $f5
    ret c                                         ; $5f2f: $d8

    and $6d                                       ; $5f30: $e6 $6d
    ld h, d                                       ; $5f32: $62
    ld bc, $0002                                  ; $5f33: $01 $02 $00
    ld bc, $fc7e                                  ; $5f36: $01 $7e $fc
    pop hl                                        ; $5f39: $e1
    ld h, d                                       ; $5f3a: $62
    ld h, e                                       ; $5f3b: $63
    add hl, bc                                    ; $5f3c: $09
    ld b, $07                                     ; $5f3d: $06 $07
    ld [$e1fc], sp                                ; $5f3f: $08 $fc $e1
    rst $38                                       ; $5f42: $ff
    ld h, h                                       ; $5f43: $64
    ld h, [hl]                                    ; $5f44: $66
    inc de                                        ; $5f45: $13
    ld de, $0f0e                                  ; $5f46: $11 $0e $0f
    db $10                                        ; $5f49: $10
    ld de, $11ff                                  ; $5f4a: $11 $ff $11
    ld [de], a                                    ; $5f4d: $12
    ld h, a                                       ; $5f4e: $67
    ld h, e                                       ; $5f4f: $63
    add hl, bc                                    ; $5f50: $09
    ld c, d                                       ; $5f51: $4a
    jr jr_075_5f6d                                ; $5f52: $18 $19

    rst $18                                       ; $5f54: $df
    ld a, [de]                                    ; $5f55: $1a
    dec de                                        ; $5f56: $1b
    jr nz, jr_075_5f61                            ; $5f57: $20 $08

    ld h, h                                       ; $5f59: $64
    ld [c], a                                     ; $5f5a: $e2
    ldh [$28], a                                  ; $5f5b: $e0 $28
    add hl, hl                                    ; $5f5d: $29
    ld a, e                                       ; $5f5e: $7b
    ld a, [hl+]                                   ; $5f5f: $2a
    dec hl                                        ; $5f60: $2b

jr_075_5f61:
    ld [c], a                                     ; $5f61: $e2
    db $e3                                        ; $5f62: $e3
    scf                                           ; $5f63: $37
    jr c, @+$3b                                   ; $5f64: $38 $39

    ld a, [hl-]                                   ; $5f66: $3a
    ld [c], a                                     ; $5f67: $e2
    db $e3                                        ; $5f68: $e3
    rst $28                                       ; $5f69: $ef
    ld b, a                                       ; $5f6a: $47
    ld c, b                                       ; $5f6b: $48
    ld c, c                                       ; $5f6c: $49

jr_075_5f6d:
    ld c, d                                       ; $5f6d: $4a
    ld [c], a                                     ; $5f6e: $e2
    ldh [$62], a                                  ; $5f6f: $e0 $62
    ld bc, $7f5a                                  ; $5f71: $01 $5a $7f
    ld d, a                                       ; $5f74: $57
    ld e, b                                       ; $5f75: $58
    ld e, c                                       ; $5f76: $59
    ld e, d                                       ; $5f77: $5a
    ld l, b                                       ; $5f78: $68
    ld bc, $0062                                  ; $5f79: $01 $62 $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    ld h, l                                       ; $5f7e: $65
    dec c                                         ; $5f7f: $0d
    rst $38                                       ; $5f80: $ff
    push hl                                       ; $5f81: $e5
    dec l                                         ; $5f82: $2d
    or $e6                                        ; $5f83: $f6 $e6
    rst $30                                       ; $5f85: $f7
    add sp, $4d                                   ; $5f86: $e8 $4d
    ld c, l                                       ; $5f88: $4d
    ld hl, sp-$15                                 ; $5f89: $f8 $eb
    db $fc                                        ; $5f8b: $fc
    ld [c], a                                     ; $5f8c: $e2
    push af                                       ; $5f8d: $f5
    ret c                                         ; $5f8e: $d8

    and $6d                                       ; $5f8f: $e6 $6d
    ld h, d                                       ; $5f91: $62
    ld bc, $0002                                  ; $5f92: $01 $02 $00
    ld bc, $fc7e                                  ; $5f95: $01 $7e $fc
    pop hl                                        ; $5f98: $e1
    ld h, d                                       ; $5f99: $62
    ld h, e                                       ; $5f9a: $63
    add hl, bc                                    ; $5f9b: $09
    ld b, $07                                     ; $5f9c: $06 $07
    ld [$e1fc], sp                                ; $5f9e: $08 $fc $e1
    cp a                                          ; $5fa1: $bf
    ld h, h                                       ; $5fa2: $64
    ld h, [hl]                                    ; $5fa3: $66
    inc de                                        ; $5fa4: $13
    ld de, $1211                                  ; $5fa5: $11 $11 $12
    db $fc                                        ; $5fa8: $fc
    pop hl                                        ; $5fa9: $e1
    ld h, a                                       ; $5faa: $67
    rst $38                                       ; $5fab: $ff
    ld h, e                                       ; $5fac: $63
    add hl, bc                                    ; $5fad: $09
    ld c, d                                       ; $5fae: $4a
    inc e                                         ; $5faf: $1c
    dec e                                         ; $5fb0: $1d
    ld e, $1f                                     ; $5fb1: $1e $1f
    jr nz, @-$43                                  ; $5fb3: $20 $bb

    ld [$e264], sp                                ; $5fb5: $08 $64 $e2
    pop hl                                        ; $5fb8: $e1
    inc l                                         ; $5fb9: $2c
    dec l                                         ; $5fba: $2d
    ld l, $e2                                     ; $5fbb: $2e $e2
    db $e3                                        ; $5fbd: $e3
    dec sp                                        ; $5fbe: $3b
    rst $30                                       ; $5fbf: $f7
    inc a                                         ; $5fc0: $3c
    dec a                                         ; $5fc1: $3d
    ld a, $e2                                     ; $5fc2: $3e $e2
    db $e3                                        ; $5fc4: $e3
    ld c, e                                       ; $5fc5: $4b
    ld c, h                                       ; $5fc6: $4c
    ld c, l                                       ; $5fc7: $4d
    ld c, [hl]                                    ; $5fc8: $4e
    cp $e2                                        ; $5fc9: $fe $e2
    ldh [$62], a                                  ; $5fcb: $e0 $62
    ld bc, $5b5a                                  ; $5fcd: $01 $5a $5b
    ld e, h                                       ; $5fd0: $5c
    ld e, l                                       ; $5fd1: $5d
    ld e, [hl]                                    ; $5fd2: $5e
    rlca                                          ; $5fd3: $07
    ld l, b                                       ; $5fd4: $68
    ld bc, $0062                                  ; $5fd5: $01 $62 $00
    nop                                           ; $5fd8: $00
    nop                                           ; $5fd9: $00
    ld h, l                                       ; $5fda: $65
    dec c                                         ; $5fdb: $0d
    rst $38                                       ; $5fdc: $ff
    push hl                                       ; $5fdd: $e5
    dec l                                         ; $5fde: $2d
    or $e6                                        ; $5fdf: $f6 $e6
    rst $30                                       ; $5fe1: $f7
    add sp, $4d                                   ; $5fe2: $e8 $4d
    ld c, l                                       ; $5fe4: $4d
    ld hl, sp-$15                                 ; $5fe5: $f8 $eb
    db $fc                                        ; $5fe7: $fc
    ld [c], a                                     ; $5fe8: $e2
    push af                                       ; $5fe9: $f5
    ret c                                         ; $5fea: $d8

    and $6d                                       ; $5feb: $e6 $6d
    ld h, d                                       ; $5fed: $62
    ld bc, $0002                                  ; $5fee: $01 $02 $00
    ld bc, $fc7e                                  ; $5ff1: $01 $7e $fc
    pop hl                                        ; $5ff4: $e1
    ld h, d                                       ; $5ff5: $62
    ld h, e                                       ; $5ff6: $63
    add hl, bc                                    ; $5ff7: $09
    ld b, $07                                     ; $5ff8: $06 $07
    ld [$e1fc], sp                                ; $5ffa: $08 $fc $e1
    cp a                                          ; $5ffd: $bf
    ld h, h                                       ; $5ffe: $64
    ld h, [hl]                                    ; $5fff: $66
    inc de                                        ; $6000: $13
    ld de, $1211                                  ; $6001: $11 $11 $12
    db $fc                                        ; $6004: $fc
    pop hl                                        ; $6005: $e1
    ld h, a                                       ; $6006: $67
    rst $38                                       ; $6007: $ff
    ld h, e                                       ; $6008: $63
    add hl, bc                                    ; $6009: $09
    ld c, d                                       ; $600a: $4a
    jr nz, jr_075_602e                            ; $600b: $20 $21

    ld [hl+], a                                   ; $600d: $22
    inc hl                                        ; $600e: $23
    jr nz, jr_075_608c                            ; $600f: $20 $7b

    ld [$e264], sp                                ; $6011: $08 $64 $e2
    ldh [$2f], a                                  ; $6014: $e0 $2f
    jr nc, jr_075_6049                            ; $6016: $30 $31

    ld [hl-], a                                   ; $6018: $32
    ld [c], a                                     ; $6019: $e2
    db $e3                                        ; $601a: $e3
    rst $28                                       ; $601b: $ef
    ccf                                           ; $601c: $3f
    ld b, b                                       ; $601d: $40
    ld b, c                                       ; $601e: $41
    ld b, d                                       ; $601f: $42
    ld [c], a                                     ; $6020: $e2
    db $e3                                        ; $6021: $e3
    ld c, a                                       ; $6022: $4f
    ld d, b                                       ; $6023: $50
    ld d, c                                       ; $6024: $51
    db $fd                                        ; $6025: $fd
    ld d, d                                       ; $6026: $52
    ld [c], a                                     ; $6027: $e2
    ldh [$62], a                                  ; $6028: $e0 $62
    ld bc, $5b5a                                  ; $602a: $01 $5a $5b
    ld e, a                                       ; $602d: $5f

jr_075_602e:
    ld h, b                                       ; $602e: $60
    rrca                                          ; $602f: $0f
    ld h, c                                       ; $6030: $61
    ld l, b                                       ; $6031: $68
    ld bc, $0062                                  ; $6032: $01 $62 $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    ld d, b                                       ; $6037: $50
    ld h, b                                       ; $6038: $60
    nop                                           ; $6039: $00
    ld h, l                                       ; $603a: $65
    ld h, b                                       ; $603b: $60
    ld l, c                                       ; $603c: $69
    sub b                                         ; $603d: $90
    ld l, l                                       ; $603e: $6d
    ld d, b                                       ; $603f: $50
    ld [hl], d                                    ; $6040: $72
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00

jr_075_6049:
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    rst $30                                       ; $6050: $f7
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    add b                                         ; $6053: $80
    rst $38                                       ; $6054: $ff
    ld [$ffff], a                                 ; $6055: $ea $ff $ff
    rst $38                                       ; $6058: $ff
    nop                                           ; $6059: $00
    dec d                                         ; $605a: $15
    ld a, a                                       ; $605b: $7f
    cp $e0                                        ; $605c: $fe $e0
    ccf                                           ; $605e: $3f
    cp $e0                                        ; $605f: $fe $e0
    rra                                           ; $6061: $1f
    cp $e0                                        ; $6062: $fe $e0
    ldh a, [$e1]                                  ; $6064: $f0 $e1
    cp $e9                                        ; $6066: $fe $e9
    cp $d2                                        ; $6068: $fe $d2
    db $eb                                        ; $606a: $eb
    add b                                         ; $606b: $80
    add b                                         ; $606c: $80
    rrca                                          ; $606d: $0f
    nop                                           ; $606e: $00
    rrca                                          ; $606f: $0f
    nop                                           ; $6070: $00
    rlca                                          ; $6071: $07
    jp z, $e0fe                                   ; $6072: $ca $fe $e0

    inc bc                                        ; $6075: $03
    cp $e0                                        ; $6076: $fe $e0
    ld bc, $e0fe                                  ; $6078: $01 $fe $e0
    jp nc, $ffeb                                  ; $607b: $d2 $eb $ff

    nop                                           ; $607e: $00
    ldh a, [rIE]                                  ; $607f: $f0 $ff
    db $ed                                        ; $6081: $ed
    or d                                          ; $6082: $b2
    pop hl                                        ; $6083: $e1
    and b                                         ; $6084: $a0
    jp hl                                         ; $6085: $e9


    add d                                         ; $6086: $82
    pop hl                                        ; $6087: $e1
    ret nz                                        ; $6088: $c0

    add b                                         ; $6089: $80
    ldh [$80], a                                  ; $608a: $e0 $80

jr_075_608c:
    rst $38                                       ; $608c: $ff
    ldh a, [$80]                                  ; $608d: $f0 $80
    ld hl, sp-$80                                 ; $608f: $f8 $80
    db $fc                                        ; $6091: $fc
    add b                                         ; $6092: $80
    cp $80                                        ; $6093: $fe $80
    db $fd                                        ; $6095: $fd
    rst $38                                       ; $6096: $ff
    cp $ec                                        ; $6097: $fe $ec
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    add b                                         ; $609b: $80
    nop                                           ; $609c: $00
    ret nz                                        ; $609d: $c0

    nop                                           ; $609e: $00
    rst $38                                       ; $609f: $ff
    ldh [rP1], a                                  ; $60a0: $e0 $00
    ldh a, [rP1]                                  ; $60a2: $f0 $00
    ld hl, sp+$00                                 ; $60a4: $f8 $00
    db $fc                                        ; $60a6: $fc
    nop                                           ; $60a7: $00
    ei                                            ; $60a8: $fb
    cp $00                                        ; $60a9: $fe $00
    ldh [$e5], a                                  ; $60ab: $e0 $e5
    cp a                                          ; $60ad: $bf
    add b                                         ; $60ae: $80
    adc a                                         ; $60af: $8f
    add b                                         ; $60b0: $80
    add e                                         ; $60b1: $83

jr_075_60b2:
    ld a, [bc]                                    ; $60b2: $0a
    ld b, l                                       ; $60b3: $45
    ldh [$3f], a                                  ; $60b4: $e0 $3f
    add b                                         ; $60b6: $80
    ldh [$03], a                                  ; $60b7: $e0 $03
    and b                                         ; $60b9: $a0
    db $ec                                        ; $60ba: $ec
    ld c, [hl]                                    ; $60bb: $4e
    pop hl                                        ; $60bc: $e1
    add sp, -$13                                  ; $60bd: $e8 $ed
    add d                                         ; $60bf: $82
    db $e4                                        ; $60c0: $e4
    jr nz, @+$23                                  ; $60c1: $20 $21

    pop hl                                        ; $60c3: $e1
    ld e, b                                       ; $60c4: $58
    ld [c], a                                     ; $60c5: $e2
    ld d, b                                       ; $60c6: $50
    pop hl                                        ; $60c7: $e1
    ld c, b                                       ; $60c8: $48
    pop hl                                        ; $60c9: $e1
    db $10                                        ; $60ca: $10
    ldh [rSB], a                                  ; $60cb: $e0 $01
    cp $e9                                        ; $60cd: $fe $e9
    jr nc, jr_075_60b2                            ; $60cf: $30 $e1

    ret nz                                        ; $60d1: $c0

    ld [$00e1], sp                                ; $60d2: $08 $e1 $00
    pop hl                                        ; $60d5: $e1
    ld hl, sp-$3f                                 ; $60d6: $f8 $c1
    ccf                                           ; $60d8: $3f
    pop hl                                        ; $60d9: $e1
    ret nc                                        ; $60da: $d0

    ld [$e0d2], a                                 ; $60db: $ea $d2 $e0
    db $fd                                        ; $60de: $fd
    ld bc, $f9ff                                  ; $60df: $01 $ff $f9
    ld bc, $01f1                                  ; $60e2: $01 $f1 $01
    pop hl                                        ; $60e5: $e1
    ld bc, $01c1                                  ; $60e6: $01 $c1 $01
    ld d, a                                       ; $60e9: $57
    add c                                         ; $60ea: $81
    ld bc, $6cff                                  ; $60eb: $01 $ff $6c
    ldh [$fc], a                                  ; $60ee: $e0 $fc
    ld h, h                                       ; $60f0: $64
    ldh [$f0], a                                  ; $60f1: $e0 $f0
    ld e, h                                       ; $60f3: $5c
    ldh [$f5], a                                  ; $60f4: $e0 $f5
    ret nz                                        ; $60f6: $c0

    ld d, h                                       ; $60f7: $54
    ldh [rSB], a                                  ; $60f8: $e0 $01
    rst $38                                       ; $60fa: $ff
    db $e4                                        ; $60fb: $e4
    inc bc                                        ; $60fc: $03
    ld bc, $010f                                  ; $60fd: $01 $0f $01

jr_075_6100:
    add hl, hl                                    ; $6100: $29
    ccf                                           ; $6101: $3f
    and [hl]                                      ; $6102: $a6
    ldh [rIE], a                                  ; $6103: $e0 $ff
    push bc                                       ; $6105: $c5
    inc bc                                        ; $6106: $03
    ret c                                         ; $6107: $d8

    ret nz                                        ; $6108: $c0

    ccf                                           ; $6109: $3f
    or [hl]                                       ; $610a: $b6
    ret nz                                        ; $610b: $c0

    ld hl, sp-$1b                                 ; $610c: $f8 $e5
    cp $aa                                        ; $610e: $fe $aa
    jp z, $fc03                                   ; $6110: $ca $03 $fc

    rrca                                          ; $6113: $0f
    ldh a, [$1f]                                  ; $6114: $f0 $1f
    ldh [$3f], a                                  ; $6116: $e0 $3f
    rst $30                                       ; $6118: $f7
    call nz, $c37f                                ; $6119: $c4 $7f $c3
    adc a                                         ; $611c: $8f
    ld [c], a                                     ; $611d: $e2
    add b                                         ; $611e: $80
    add b                                         ; $611f: $80
    ld h, b                                       ; $6120: $60
    ldh [rIE], a                                  ; $6121: $e0 $ff
    db $10                                        ; $6123: $10
    ldh a, [$08]                                  ; $6124: $f0 $08
    ld hl, sp+$04                                 ; $6126: $f8 $04
    db $fc                                        ; $6128: $fc
    inc b                                         ; $6129: $04
    db $fc                                        ; $612a: $fc
    cp $bf                                        ; $612b: $fe $bf
    jp Jump_000_0707                              ; $612d: $c3 $07 $07


    jr jr_075_6151                                ; $6130: $18 $1f

    inc h                                         ; $6132: $24
    ccf                                           ; $6133: $3f
    ld b, e                                       ; $6134: $43
    rst $30                                       ; $6135: $f7
    ld a, a                                       ; $6136: $7f
    ld b, b                                       ; $6137: $40
    ld a, a                                       ; $6138: $7f
    ld [hl], d                                    ; $6139: $72
    call nz, Call_000_3fc0                        ; $613a: $c4 $c0 $3f
    ldh a, [rIF]                                  ; $613d: $f0 $0f
    rra                                           ; $613f: $1f
    ld hl, sp-$79                                 ; $6140: $f8 $87
    db $fc                                        ; $6142: $fc
    rlca                                          ; $6143: $07
    db $fc                                        ; $6144: $fc
    cp [hl]                                       ; $6145: $be
    db $ed                                        ; $6146: $ed
    adc a                                         ; $6147: $8f
    jp $e7be                                      ; $6148: $c3 $be $e7


    cp $42                                        ; $614b: $fe $42
    ret z                                         ; $614d: $c8

    ld sp, $4ffe                                  ; $614e: $31 $fe $4f

jr_075_6151:
    db $fc                                        ; $6151: $fc
    ld c, a                                       ; $6152: $4f
    rst $38                                       ; $6153: $ff
    rlca                                          ; $6154: $07
    rst $38                                       ; $6155: $ff
    ld hl, sp+$1f                                 ; $6156: $f8 $1f
    db $e4                                        ; $6158: $e4
    ccf                                           ; $6159: $3f
    jp $c07f                                      ; $615a: $c3 $7f $c0


    ld a, a                                       ; $615d: $7f
    rst $38                                       ; $615e: $ff
    ret nz                                        ; $615f: $c0

    rst $38                                       ; $6160: $ff
    ldh [$bf], a                                  ; $6161: $e0 $bf
    ld hl, sp-$61                                 ; $6163: $f8 $9f
    ret nz                                        ; $6165: $c0

    ret nz                                        ; $6166: $c0

    push af                                       ; $6167: $f5
    jr nc, jr_075_6100                            ; $6168: $30 $96

    ldh [$84], a                                  ; $616a: $e0 $84
    sub [hl]                                      ; $616c: $96
    ldh [rTAC], a                                 ; $616d: $e0 $07
    rst $38                                       ; $616f: $ff
    ld c, $fb                                     ; $6170: $0e $fb
    ei                                            ; $6172: $fb
    ld a, $f3                                     ; $6173: $3e $f3
    ld c, a                                       ; $6175: $4f
    rst $00                                       ; $6176: $c7
    ld [$d408], sp                                ; $6177: $08 $08 $d4
    call c, $dd24                                 ; $617a: $dc $24 $dd
    db $fc                                        ; $617d: $fc
    ld h, h                                       ; $617e: $64
    ldh [rTAC], a                                 ; $617f: $e0 $07
    ld hl, sp+$0f                                 ; $6181: $f8 $0f
    cp $e1                                        ; $6183: $fe $e1
    db $fc                                        ; $6185: $fc
    rlca                                          ; $6186: $07
    cp a                                          ; $6187: $bf
    cp $03                                        ; $6188: $fe $03
    rst $38                                       ; $618a: $ff
    ld bc, $ffc0                                  ; $618b: $01 $c0 $ff
    ret z                                         ; $618e: $c8

    db $e3                                        ; $618f: $e3
    ld a, a                                       ; $6190: $7f
    rst $38                                       ; $6191: $ff
    rst $00                                       ; $6192: $c7
    ccf                                           ; $6193: $3f
    ldh [$1f], a                                  ; $6194: $e0 $1f
    ld hl, sp+$07                                 ; $6196: $f8 $07
    rst $38                                       ; $6198: $ff
    rlca                                          ; $6199: $07
    ei                                            ; $619a: $fb
    rst $38                                       ; $619b: $ff
    ld b, $c8                                     ; $619c: $06 $c8
    ld [c], a                                     ; $619e: $e2
    db $fc                                        ; $619f: $fc
    rst $00                                       ; $61a0: $c7
    ld hl, sp+$0f                                 ; $61a1: $f8 $0f
    ldh a, [$7b]                                  ; $61a3: $f0 $7b
    ccf                                           ; $61a5: $3f
    pop bc                                        ; $61a6: $c1
    or d                                          ; $61a7: $b2
    and b                                         ; $61a8: $a0
    ld b, b                                       ; $61a9: $40
    ret nz                                        ; $61aa: $c0

    jr nz, @-$1e                                  ; $61ab: $20 $e0

    cp $e1                                        ; $61ad: $fe $e1
    rst $30                                       ; $61af: $f7
    ld b, b                                       ; $61b0: $40
    ret nz                                        ; $61b1: $c0

    add b                                         ; $61b2: $80
    ld b, d                                       ; $61b3: $42
    ret nz                                        ; $61b4: $c0

    inc bc                                        ; $61b5: $03
    inc bc                                        ; $61b6: $03
    inc b                                         ; $61b7: $04
    rlca                                          ; $61b8: $07
    adc $fe                                       ; $61b9: $ce $fe
    pop hl                                        ; $61bb: $e1
    ld [bc], a                                    ; $61bc: $02
    inc bc                                        ; $61bd: $03
    ld bc, $c2f4                                  ; $61be: $01 $f4 $c2
    adc d                                         ; $61c1: $8a
    db $e3                                        ; $61c2: $e3
    rst $38                                       ; $61c3: $ff
    add a                                         ; $61c4: $87
    sbc l                                         ; $61c5: $9d
    ld a, a                                       ; $61c6: $7f
    jp nz, $87e0                                  ; $61c7: $c2 $e0 $87

    rst $38                                       ; $61ca: $ff
    ldh a, [$c0]                                  ; $61cb: $f0 $c0
    ldh [$8a], a                                  ; $61cd: $e0 $8a
    pop hl                                        ; $61cf: $e1
    cp $fd                                        ; $61d0: $fe $fd
    jp $c0fe                                      ; $61d2: $c3 $fe $c0


    ccf                                           ; $61d5: $3f
    jp Jump_000_1fff                              ; $61d6: $c3 $ff $1f


    cp $ff                                        ; $61d9: $fe $ff
    ld a, a                                       ; $61db: $7f
    add b                                         ; $61dc: $80
    ld a, a                                       ; $61dd: $7f
    ret nz                                        ; $61de: $c0

    ccf                                           ; $61df: $3f
    ldh [$3f], a                                  ; $61e0: $e0 $3f
    ldh [$61], a                                  ; $61e2: $e0 $61
    ldh [$2d], a                                  ; $61e4: $e0 $2d
    add b                                         ; $61e6: $80
    add [hl]                                      ; $61e7: $86
    and d                                         ; $61e8: $a2
    ld bc, $7efe                                  ; $61e9: $01 $fe $7e
    ld [$80c3], a                                 ; $61ec: $ea $c3 $80
    ldh [$7e], a                                  ; $61ef: $e0 $7e
    db $eb                                        ; $61f1: $eb
    db $fd                                        ; $61f2: $fd
    ld b, $7e                                     ; $61f3: $06 $7e
    ld [$2ffc], a                                 ; $61f5: $ea $fc $2f
    cp $67                                        ; $61f8: $fe $67
    rst $38                                       ; $61fa: $ff
    cp l                                          ; $61fb: $bd
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    db $e4                                        ; $61fe: $e4
    rst $38                                       ; $61ff: $ff
    or d                                          ; $6200: $b2
    rst $38                                       ; $6201: $ff
    xor [hl]                                      ; $6202: $ae
    rst $38                                       ; $6203: $ff
    jp $fffb                                      ; $6204: $c3 $fb $ff


    ld [hl], c                                    ; $6207: $71
    sub [hl]                                      ; $6208: $96
    rst $20                                       ; $6209: $e7
    rst $38                                       ; $620a: $ff
    rst $18                                       ; $620b: $df
    rst $38                                       ; $620c: $ff
    ld d, [hl]                                    ; $620d: $56
    rst $38                                       ; $620e: $ff
    db $fd                                        ; $620f: $fd
    call z, $e596                                 ; $6210: $cc $96 $e5
    ld e, $fe                                     ; $6213: $1e $fe
    cp $f6                                        ; $6215: $fe $f6
    rst $38                                       ; $6217: $ff
    push de                                       ; $6218: $d5
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    ld h, a                                       ; $621b: $67
    ld l, $fe                                     ; $621c: $2e $fe
    ld l, c                                       ; $621e: $69
    rst $38                                       ; $621f: $ff
    cp e                                          ; $6220: $bb
    cp a                                          ; $6221: $bf
    rst $38                                       ; $6222: $ff
    ld b, l                                       ; $6223: $45
    ld a, a                                       ; $6224: $7f
    ei                                            ; $6225: $fb
    rst $38                                       ; $6226: $ff
    add d                                         ; $6227: $82
    cp $42                                        ; $6228: $fe $42
    ld a, [hl]                                    ; $622a: $7e
    rst $38                                       ; $622b: $ff
    db $f4                                        ; $622c: $f4
    cp h                                          ; $622d: $bc
    rst $38                                       ; $622e: $ff
    ld [bc], a                                    ; $622f: $02
    rst $38                                       ; $6230: $ff
    ld [bc], a                                    ; $6231: $02
    ld a, a                                       ; $6232: $7f
    ld [bc], a                                    ; $6233: $02
    ei                                            ; $6234: $fb
    ld a, a                                       ; $6235: $7f
    ld bc, $a500                                  ; $6236: $01 $00 $a5
    ret nz                                        ; $6239: $c0

    rst $38                                       ; $623a: $ff
    ld hl, sp-$01                                 ; $623b: $f8 $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    ld e, a                                       ; $623f: $5f
    rst $38                                       ; $6240: $ff
    ld b, b                                       ; $6241: $40
    rst $38                                       ; $6242: $ff
    ldh [rIE], a                                  ; $6243: $e0 $ff
    ld hl, $ffff                                  ; $6245: $21 $ff $ff
    inc de                                        ; $6248: $13
    rst $38                                       ; $6249: $ff
    ld a, b                                       ; $624a: $78
    rlca                                          ; $624b: $07
    rst $38                                       ; $624c: $ff
    ccf                                           ; $624d: $3f
    cp $ff                                        ; $624e: $fe $ff

jr_075_6250:
    rst $38                                       ; $6250: $ff
    db $f4                                        ; $6251: $f4
    rst $38                                       ; $6252: $ff
    dec b                                         ; $6253: $05
    cp $0e                                        ; $6254: $fe $0e
    ld hl, sp+$48                                 ; $6256: $f8 $48
    ld hl, sp+$37                                 ; $6258: $f8 $37
    sbc b                                         ; $625a: $98
    cp $36                                        ; $625b: $fe $36
    ld d, d                                       ; $625d: $52
    pop bc                                        ; $625e: $c1
    add c                                         ; $625f: $81
    add b                                         ; $6260: $80
    or b                                          ; $6261: $b0
    and a                                         ; $6262: $a7
    and d                                         ; $6263: $a2
    and b                                         ; $6264: $a0
    cp a                                          ; $6265: $bf
    ld bc, $0283                                  ; $6266: $01 $83 $02
    add e                                         ; $6269: $83
    ld [bc], a                                    ; $626a: $02
    pop bc                                        ; $626b: $c1
    ld [c], a                                     ; $626c: $e2

jr_075_626d:
    and b                                         ; $626d: $a0
    db $e3                                        ; $626e: $e3
    and a                                         ; $626f: $a7
    inc bc                                        ; $6270: $03
    db $e3                                        ; $6271: $e3
    ld [bc], a                                    ; $6272: $02
    adc d                                         ; $6273: $8a
    db $e3                                        ; $6274: $e3
    ret nz                                        ; $6275: $c0

    ldh [$61], a                                  ; $6276: $e0 $61
    inc de                                        ; $6278: $13
    ldh [$2b], a                                  ; $6279: $e0 $2b
    rst $30                                       ; $627b: $f7
    rst $38                                       ; $627c: $ff
    jr z, @+$01                                   ; $627d: $28 $ff

    adc d                                         ; $627f: $8a

Jump_075_6280:
    pop hl                                        ; $6280: $e1
    ld h, [hl]                                    ; $6281: $66
    rst $38                                       ; $6282: $ff
    inc b                                         ; $6283: $04
    rst $38                                       ; $6284: $ff
    cp a                                          ; $6285: $bf
    dec c                                         ; $6286: $0d
    rst $38                                       ; $6287: $ff
    ld a, [hl]                                    ; $6288: $7e
    db $d3                                        ; $6289: $d3
    cp $d3                                        ; $628a: $fe $d3
    jr nc, jr_075_6250                            ; $628c: $30 $c2

    cp $ca                                        ; $628e: $fe $ca
    ld [$fca0], sp                                ; $6290: $08 $a0 $fc
    cp d                                          ; $6293: $ba
    and d                                         ; $6294: $a2
    ld hl, sp-$60                                 ; $6295: $f8 $a0
    and d                                         ; $6297: $a2
    add b                                         ; $6298: $80
    ldh [rSC], a                                  ; $6299: $e0 $02
    ccf                                           ; $629b: $3f
    rst $10                                       ; $629c: $d7
    ld [bc], a                                    ; $629d: $02
    ccf                                           ; $629e: $3f
    ld bc, $8180                                  ; $629f: $01 $80 $81
    rlca                                          ; $62a2: $07
    sub b                                         ; $62a3: $90
    ret nz                                        ; $62a4: $c0

    ld hl, sp+$7f                                 ; $62a5: $f8 $7f
    cp $44                                        ; $62a7: $fe $44
    ldh [rLCDC], a                                ; $62a9: $e0 $40
    rst $38                                       ; $62ab: $ff
    jr nz, @+$01                                  ; $62ac: $20 $ff

    pop hl                                        ; $62ae: $e1
    rst $38                                       ; $62af: $ff
    inc de                                        ; $62b0: $13
    call $8ec1                                    ; $62b1: $cd $c1 $8e
    ret nz                                        ; $62b4: $c0

    ccf                                           ; $62b5: $3f
    db $fc                                        ; $62b6: $fc
    cp d                                          ; $62b7: $ba
    ldh [$be], a                                  ; $62b8: $e0 $be
    ldh [$fe], a                                  ; $62ba: $e0 $fe
    ld c, [hl]                                    ; $62bc: $4e
    ld l, e                                       ; $62bd: $6b
    ld hl, sp-$68                                 ; $62be: $f8 $98
    sbc a                                         ; $62c0: $9f
    add c                                         ; $62c1: $81
    add c                                         ; $62c2: $81
    ld a, [hl]                                    ; $62c3: $7e
    ldh [$83], a                                  ; $62c4: $e0 $83
    add b                                         ; $62c6: $80
    jr nc, jr_075_626d                            ; $62c7: $30 $a4

    rst $38                                       ; $62c9: $ff

jr_075_62ca:
    ld hl, $10ff                                  ; $62ca: $21 $ff $10
    ld a, a                                       ; $62cd: $7f
    db $10                                        ; $62ce: $10
    ld a, a                                       ; $62cf: $7f
    ld [$ff3f], sp                                ; $62d0: $08 $3f $ff
    inc b                                         ; $62d3: $04
    ccf                                           ; $62d4: $3f
    ld [bc], a                                    ; $62d5: $02
    rra                                           ; $62d6: $1f
    ld bc, $011f                                  ; $62d7: $01 $1f $01
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    ld b, c                                       ; $62dc: $41
    rst $38                                       ; $62dd: $ff
    and b                                         ; $62de: $a0
    rst $38                                       ; $62df: $ff
    ld h, e                                       ; $62e0: $63
    cp $33                                        ; $62e1: $fe $33
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    ld e, b                                       ; $62e5: $58
    rst $30                                       ; $62e6: $f7
    sbc h                                         ; $62e7: $9c
    di                                            ; $62e8: $f3
    rra                                           ; $62e9: $1f
    ei                                            ; $62ea: $fb
    ld l, $ff                                     ; $62eb: $2e $ff
    rst $30                                       ; $62ed: $f7
    dec b                                         ; $62ee: $05
    rst $38                                       ; $62ef: $ff
    ld a, [bc]                                    ; $62f0: $0a
    ld [hl], b                                    ; $62f1: $70
    ldh [$9c], a                                  ; $62f2: $e0 $9c
    rst $38                                       ; $62f4: $ff
    ld [hl-], a                                   ; $62f5: $32
    rst $18                                       ; $62f6: $df
    rst $38                                       ; $62f7: $ff
    ld [hl], c                                    ; $62f8: $71
    sbc a                                         ; $62f9: $9f
    ldh a, [$bf]                                  ; $62fa: $f0 $bf
    jp hl                                         ; $62fc: $e9


    db $fc                                        ; $62fd: $fc
    inc c                                         ; $62fe: $0c
    ld hl, sp-$01                                 ; $62ff: $f8 $ff
    ld [$10f1], sp                                ; $6301: $08 $f1 $10
    pop hl                                        ; $6304: $e1
    jr nz, jr_075_62ca                            ; $6305: $20 $c3

    ld b, b                                       ; $6307: $40
    add e                                         ; $6308: $83
    rst $28                                       ; $6309: $ef
    add b                                         ; $630a: $80
    add a                                         ; $630b: $87
    add b                                         ; $630c: $80
    rlca                                          ; $630d: $07
    ld [hl-], a                                   ; $630e: $32
    add b                                         ; $630f: $80
    rrca                                          ; $6310: $0f
    ld bc, $f707                                  ; $6311: $01 $07 $f7
    ld [bc], a                                    ; $6314: $02
    rlca                                          ; $6315: $07
    inc bc                                        ; $6316: $03
    ld c, e                                       ; $6317: $4b
    pop bc                                        ; $6318: $c1
    rrca                                          ; $6319: $0f
    ld [$111f], sp                                ; $631a: $08 $1f $11
    cp $ca                                        ; $631d: $fe $ca
    ld [c], a                                     ; $631f: $e2
    ld c, $ff                                     ; $6320: $0e $ff
    ld h, $ff                                     ; $6322: $26 $ff
    and d                                         ; $6324: $a2
    rst $38                                       ; $6325: $ff
    ld b, e                                       ; $6326: $43
    jp c, $c0fa                                   ; $6327: $da $fa $c0

    ret nz                                        ; $632a: $c0

    jp z, $ffe3                                   ; $632b: $ca $e3 $ff

    jp z, $e03e                                   ; $632e: $ca $3e $e0

    ld b, $fd                                     ; $6331: $06 $fd
    rst $38                                       ; $6333: $ff
    dec b                                         ; $6334: $05
    cp $07                                        ; $6335: $fe $07
    rrca                                          ; $6337: $0f
    nop                                           ; $6338: $00
    adc a                                         ; $6339: $8f
    add b                                         ; $633a: $80
    sbc a                                         ; $633b: $9f
    ei                                            ; $633c: $fb
    add b                                         ; $633d: $80
    rst $18                                       ; $633e: $df
    ld h, d                                       ; $633f: $62
    pop hl                                        ; $6340: $e1
    jr nz, @+$01                                  ; $6341: $20 $ff

    ret nc                                        ; $6343: $d0

    ccf                                           ; $6344: $3f
    ldh a, [rIE]                                  ; $6345: $f0 $ff
    rst $30                                       ; $6347: $f7
    ld b, $f7                                     ; $6348: $06 $f7
    ld b, $ff                                     ; $634a: $06 $ff
    add hl, bc                                    ; $634c: $09
    rst $38                                       ; $634d: $ff
    ld [$fffb], sp                                ; $634e: $08 $fb $ff
    db $10                                        ; $6351: $10
    cp $e2                                        ; $6352: $fe $e2
    rrca                                          ; $6354: $0f
    rst $38                                       ; $6355: $ff
    inc e                                         ; $6356: $1c
    ei                                            ; $6357: $fb
    rra                                           ; $6358: $1f
    db $eb                                        ; $6359: $eb
    ei                                            ; $635a: $fb
    ld e, $c0                                     ; $635b: $1e $c0
    ldh [$c2], a                                  ; $635d: $e0 $c2
    ret nz                                        ; $635f: $c0

    ldh [$c0], a                                  ; $6360: $e0 $c0
    ld a, a                                       ; $6362: $7f
    ld b, b                                       ; $6363: $40
    rst $38                                       ; $6364: $ff
    pop de                                        ; $6365: $d1
    ld a, a                                       ; $6366: $7f
    pop hl                                        ; $6367: $e1
    rst $38                                       ; $6368: $ff
    and e                                         ; $6369: $a3
    cp $f3                                        ; $636a: $fe $f3
    cp $fb                                        ; $636c: $fe $fb
    rst $38                                       ; $636e: $ff
    inc c                                         ; $636f: $0c
    cp [hl]                                       ; $6370: $be
    pop hl                                        ; $6371: $e1
    rst $38                                       ; $6372: $ff
    dec b                                         ; $6373: $05
    ldh a, [rP1]                                  ; $6374: $f0 $00
    ldh a, [$f7]                                  ; $6376: $f0 $f7
    add b                                         ; $6378: $80
    ldh [rLCDC], a                                ; $6379: $e0 $40
    rst $08                                       ; $637b: $cf
    and c                                         ; $637c: $a1
    ldh a, [rNR10]                                ; $637d: $f0 $10
    ldh a, [rNR10]                                ; $637f: $f0 $10
    rst $38                                       ; $6381: $ff
    ldh [$e0], a                                  ; $6382: $e0 $e0
    rrca                                          ; $6384: $0f
    ld bc, $070f                                  ; $6385: $01 $0f $07
    rlca                                          ; $6388: $07
    ld b, $ff                                     ; $6389: $06 $ff
    rrca                                          ; $638b: $0f

jr_075_638c:
    ld a, [bc]                                    ; $638c: $0a
    rrca                                          ; $638d: $0f
    ld a, [bc]                                    ; $638e: $0a
    rra                                           ; $638f: $1f
    ld de, $101f                                  ; $6390: $11 $1f $10
    cp e                                          ; $6393: $bb
    rra                                           ; $6394: $1f
    db $10                                        ; $6395: $10
    add c                                         ; $6396: $81
    ret nz                                        ; $6397: $c0

    inc l                                         ; $6398: $2c
    ei                                            ; $6399: $fb
    cpl                                           ; $639a: $2f
    cp [hl]                                       ; $639b: $be
    ldh [rNR21], a                                ; $639c: $e0 $16
    rst $38                                       ; $639e: $ff
    rst $38                                       ; $639f: $ff
    ld [de], a                                    ; $63a0: $12
    rst $38                                       ; $63a1: $ff
    ld h, e                                       ; $63a2: $63
    rst $38                                       ; $63a3: $ff
    ret nz                                        ; $63a4: $c0

    cp $3e                                        ; $63a5: $fe $3e
    rst $18                                       ; $63a7: $df
    di                                            ; $63a8: $f3
    ld a, a                                       ; $63a9: $7f
    db $d3                                        ; $63aa: $d3
    rst $38                                       ; $63ab: $ff
    pop de                                        ; $63ac: $d1
    push af                                       ; $63ad: $f5
    ret nz                                        ; $63ae: $c0

    pop hl                                        ; $63af: $e1
    ccf                                           ; $63b0: $3f
    adc a                                         ; $63b1: $8f
    db $e3                                        ; $63b2: $e3
    ld a, $ff                                     ; $63b3: $3e $ff
    ld e, $80                                     ; $63b5: $1e $80
    ld h, c                                       ; $63b7: $61
    add b                                         ; $63b8: $80
    db $e4                                        ; $63b9: $e4
    adc [hl]                                      ; $63ba: $8e
    db $e3                                        ; $63bb: $e3
    and [hl]                                      ; $63bc: $a6
    ld a, [$e296]                                 ; $63bd: $fa $96 $e2
    ld b, b                                       ; $63c0: $40
    cp $e2                                        ; $63c1: $fe $e2
    ld a, a                                       ; $63c3: $7f
    add b                                         ; $63c4: $80
    rst $38                                       ; $63c5: $ff
    cp $ca                                        ; $63c6: $fe $ca
    ld hl, sp-$45                                 ; $63c8: $f8 $bb
    add b                                         ; $63ca: $80
    cp $e5                                        ; $63cb: $fe $e5
    or b                                          ; $63cd: $b0
    add b                                         ; $63ce: $80
    rra                                           ; $63cf: $1f
    db $10                                        ; $63d0: $10
    cp a                                          ; $63d1: $bf
    jr nz, @+$01                                  ; $63d2: $20 $ff

    ld [hl], a                                    ; $63d4: $77
    ld [hl+], a                                   ; $63d5: $22
    rst $38                                       ; $63d6: $ff
    dec de                                        ; $63d7: $1b
    ld e, h                                       ; $63d8: $5c
    ldh [rTAC], a                                 ; $63d9: $e0 $07
    db $fd                                        ; $63db: $fd
    ld bc, $60b0                                  ; $63dc: $01 $b0 $60
    reti                                          ; $63df: $d9


    ret nz                                        ; $63e0: $c0

    cp $40                                        ; $63e1: $fe $40
    dec e                                         ; $63e3: $1d
    ld h, b                                       ; $63e4: $60
    inc b                                         ; $63e5: $04
    rst $38                                       ; $63e6: $ff
    inc hl                                        ; $63e7: $23
    and b                                         ; $63e8: $a0
    rst $38                                       ; $63e9: $ff
    add c                                         ; $63ea: $81
    rst $28                                       ; $63eb: $ef
    rst $38                                       ; $63ec: $ff
    db $fc                                        ; $63ed: $fc
    rlca                                          ; $63ee: $07
    db $fd                                        ; $63ef: $fd
    ld h, e                                       ; $63f0: $63
    ret nz                                        ; $63f1: $c0

    ld [bc], a                                    ; $63f2: $02
    rst $38                                       ; $63f3: $ff
    ld b, l                                       ; $63f4: $45
    ei                                            ; $63f5: $fb
    rst $38                                       ; $63f6: $ff
    add l                                         ; $63f7: $85
    xor $e0                                       ; $63f8: $ee $e0
    inc bc                                        ; $63fa: $03
    cp $df                                        ; $63fb: $fe $df
    ldh a, [$3e]                                  ; $63fd: $f0 $3e
    rra                                           ; $63ff: $1f
    ldh [$fc], a                                  ; $6400: $e0 $fc
    ret nz                                        ; $6402: $c0

    ld hl, sp-$80                                 ; $6403: $f8 $80
    jr nz, jr_075_638c                            ; $6405: $20 $85

    ld [c], a                                     ; $6407: $e2
    ld b, c                                       ; $6408: $41
    and $41                                       ; $6409: $e6 $41
    ld c, h                                       ; $640b: $4c
    jp c, $1cc0                                   ; $640c: $da $c0 $1c

    add b                                         ; $640f: $80
    ld bc, $6d00                                  ; $6410: $01 $00 $6d
    add b                                         ; $6413: $80
    sbc d                                         ; $6414: $9a
    ldh [$80], a                                  ; $6415: $e0 $80
    ret nz                                        ; $6417: $c0

    and $f6                                       ; $6418: $e6 $f6
    ld h, $c0                                     ; $641a: $26 $c0
    db $fc                                        ; $641c: $fc
    ld b, $fe                                     ; $641d: $06 $fe
    ldh [rSCY], a                                 ; $641f: $e0 $42
    cp $82                                        ; $6421: $fe $82
    cp $ad                                        ; $6423: $fe $ad
    ld [bc], a                                    ; $6425: $02
    cp $e0                                        ; $6426: $fe $e0
    rrca                                          ; $6428: $0f
    rrca                                          ; $6429: $0f
    ld b, b                                       ; $642a: $40
    ld h, c                                       ; $642b: $61
    pop hl                                        ; $642c: $e1
    ret nc                                        ; $642d: $d0

    ld h, b                                       ; $642e: $60
    ld sp, hl                                     ; $642f: $f9
    db $ec                                        ; $6430: $ec
    ret z                                         ; $6431: $c8

    ld h, b                                       ; $6432: $60
    sub b                                         ; $6433: $90
    ld [c], a                                     ; $6434: $e2
    ldh [$9f], a                                  ; $6435: $e0 $9f
    sub b                                         ; $6437: $90
    add sp, -$03                                  ; $6438: $e8 $fd
    dec b                                         ; $643a: $05
    db $fc                                        ; $643b: $fc
    rst $38                                       ; $643c: $ff
    inc c                                         ; $643d: $0c
    push hl                                       ; $643e: $e5
    db $fc                                        ; $643f: $fc
    dec b                                         ; $6440: $05
    db $fc                                        ; $6441: $fc
    ld b, e                                       ; $6442: $43
    cp $83                                        ; $6443: $fe $83
    dec de                                        ; $6445: $1b
    cp $03                                        ; $6446: $fe $03
    cp $e0                                        ; $6448: $fe $e0
    rst $38                                       ; $644a: $ff
    ldh [$b0], a                                  ; $644b: $e0 $b0
    ld l, e                                       ; $644d: $6b
    ld [hl+], a                                   ; $644e: $22
    ret nz                                        ; $644f: $c0

    sbc b                                         ; $6450: $98
    ld h, b                                       ; $6451: $60
    di                                            ; $6452: $f3
    pop hl                                        ; $6453: $e1
    ld bc, $6500                                  ; $6454: $01 $00 $65
    sub [hl]                                      ; $6457: $96
    add sp, -$02                                  ; $6458: $e8 $fe
    rst $38                                       ; $645a: $ff
    add h                                         ; $645b: $84
    rst $38                                       ; $645c: $ff
    di                                            ; $645d: $f3
    add h                                         ; $645e: $84
    inc b                                         ; $645f: $04
    sub [hl]                                      ; $6460: $96
    ldh [$c6], a                                  ; $6461: $e0 $c6
    db $e4                                        ; $6463: $e4
    cp $7f                                        ; $6464: $fe $7f
    ld b, d                                       ; $6466: $42
    ld a, a                                       ; $6467: $7f
    ld sp, hl                                     ; $6468: $f9
    ld b, d                                       ; $6469: $42
    ldh a, [rLCDC]                                ; $646a: $f0 $40
    adc [hl]                                      ; $646c: $8e
    add b                                         ; $646d: $80
    ld [$080f], sp                                ; $646e: $08 $0f $08
    rrca                                          ; $6471: $0f
    rrca                                          ; $6472: $0f
    ld hl, sp-$04                                 ; $6473: $f8 $fc
    ldh [$32], a                                  ; $6475: $e0 $32
    ld b, b                                       ; $6477: $40
    jp c, Jump_075_7fe0                           ; $6478: $da $e0 $7f

    db $e4                                        ; $647b: $e4
    rra                                           ; $647c: $1f
    db $fc                                        ; $647d: $fc
    rla                                           ; $647e: $17
    di                                            ; $647f: $f3
    db $fc                                        ; $6480: $fc
    rst $38                                       ; $6481: $ff
    sbc d                                         ; $6482: $9a
    ldh [$f0], a                                  ; $6483: $e0 $f0
    pop hl                                        ; $6485: $e1
    ld a, a                                       ; $6486: $7f
    ld b, e                                       ; $6487: $43
    ld a, h                                       ; $6488: $7c
    ld c, a                                       ; $6489: $4f
    rst $18                                       ; $648a: $df
    ld [hl], b                                    ; $648b: $70
    ld a, a                                       ; $648c: $7f
    ld d, b                                       ; $648d: $50
    ld a, a                                       ; $648e: $7f
    ld a, a                                       ; $648f: $7f
    or d                                          ; $6490: $b2
    ld h, c                                       ; $6491: $61
    rst $38                                       ; $6492: $ff
    inc bc                                        ; $6493: $03
    db $f4                                        ; $6494: $f4

jr_075_6495:
    ld b, b                                       ; $6495: $40
    ret nz                                        ; $6496: $c0

    adc [hl]                                      ; $6497: $8e
    add e                                         ; $6498: $83
    rst $38                                       ; $6499: $ff
    db $fc                                        ; $649a: $fc
    pop hl                                        ; $649b: $e1
    rst $38                                       ; $649c: $ff
    ret nz                                        ; $649d: $c0

    nop                                           ; $649e: $00
    di                                            ; $649f: $f3
    ld a, [$840e]                                 ; $64a0: $fa $0e $84
    rst $38                                       ; $64a3: $ff
    db $fc                                        ; $64a4: $fc
    pop hl                                        ; $64a5: $e1
    rst $38                                       ; $64a6: $ff
    cp $fe                                        ; $64a7: $fe $fe
    db $fc                                        ; $64a9: $fc
    add h                                         ; $64aa: $84
    ld a, a                                       ; $64ab: $7f
    ld a, h                                       ; $64ac: $7c
    db $e4                                        ; $64ad: $e4
    inc e                                         ; $64ae: $1c
    db $fc                                        ; $64af: $fc
    inc d                                         ; $64b0: $14
    db $fc                                        ; $64b1: $fc
    db $fc                                        ; $64b2: $fc
    jr z, jr_075_6495                             ; $64b3: $28 $e0

    cp $f0                                        ; $64b5: $fe $f0
    pop hl                                        ; $64b7: $e1
    rst $38                                       ; $64b8: $ff
    ld b, e                                       ; $64b9: $43
    db $fc                                        ; $64ba: $fc
    ld c, a                                       ; $64bb: $4f
    ldh a, [$7f]                                  ; $64bc: $f0 $7f
    ret nc                                        ; $64be: $d0

    dec sp                                        ; $64bf: $3b
    ld a, a                                       ; $64c0: $7f
    rst $38                                       ; $64c1: $ff
    cp h                                          ; $64c2: $bc
    ld h, b                                       ; $64c3: $60
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    db $fc                                        ; $64c6: $fc
    ld b, b                                       ; $64c7: $40
    ret nz                                        ; $64c8: $c0

    ld c, $83                                     ; $64c9: $0e $83
    ld a, l                                       ; $64cb: $7d
    ldh [$0a], a                                  ; $64cc: $e0 $0a
    add b                                         ; $64ce: $80
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    ccf                                           ; $64d1: $3f
    inc bc                                        ; $64d2: $03
    inc c                                         ; $64d3: $0c
    add d                                         ; $64d4: $82
    and $ef                                       ; $64d5: $e6 $ef
    rlca                                          ; $64d7: $07
    rlca                                          ; $64d8: $07
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    add h                                         ; $64db: $84
    db $e3                                        ; $64dc: $e3
    ld a, a                                       ; $64dd: $7f
    db $fc                                        ; $64de: $fc
    add a                                         ; $64df: $87
    xor a                                         ; $64e0: $af
    db $fc                                        ; $64e1: $fc
    dec sp                                        ; $64e2: $3b
    ld hl, sp-$3f                                 ; $64e3: $f8 $c1
    sub h                                         ; $64e5: $94
    ret nz                                        ; $64e6: $c0

    ld a, l                                       ; $64e7: $7d
    add h                                         ; $64e8: $84
    ld [c], a                                     ; $64e9: $e2
    ld a, h                                       ; $64ea: $7c
    cp a                                          ; $64eb: $bf
    ld a, a                                       ; $64ec: $7f
    ld b, e                                       ; $64ed: $43
    ld a, a                                       ; $64ee: $7f
    jr c, jr_075_6530                             ; $64ef: $38 $3f

    ld a, a                                       ; $64f1: $7f
    ldh [$e0], a                                  ; $64f2: $e0 $e0
    add e                                         ; $64f4: $83
    inc bc                                        ; $64f5: $03
    add b                                         ; $64f6: $80
    ld c, a                                       ; $64f7: $4f
    add d                                         ; $64f8: $82
    rst $20                                       ; $64f9: $e7
    ld [hl], h                                    ; $64fa: $74
    ret nz                                        ; $64fb: $c0

    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    ld e, a                                       ; $6500: $5f
    rst $38                                       ; $6501: $ff
    nop                                           ; $6502: $00
    rst $38                                       ; $6503: $ff
    nop                                           ; $6504: $00
    ld a, a                                       ; $6505: $7f
    cp $e0                                        ; $6506: $fe $e0
    ccf                                           ; $6508: $3f
    cp $e0                                        ; $6509: $fe $e0
    rst $20                                       ; $650b: $e7
    rra                                           ; $650c: $1f
    nop                                           ; $650d: $00
    ld b, c                                       ; $650e: $41
    ld a, [c]                                     ; $650f: $f2
    ldh [$ee], a                                  ; $6510: $e0 $ee
    ldh [$03], a                                  ; $6512: $e0 $03
    db $fc                                        ; $6514: $fc
    rrca                                          ; $6515: $0f
    rst $38                                       ; $6516: $ff
    ldh a, [$1f]                                  ; $6517: $f0 $1f
    ldh [$3f], a                                  ; $6519: $e0 $3f
    call nz, $c37f                                ; $651b: $c4 $7f $c3
    ld a, a                                       ; $651e: $7f
    cp $f0                                        ; $651f: $fe $f0
    ld [c], a                                     ; $6521: $e2
    add b                                         ; $6522: $80
    ld a, a                                       ; $6523: $7f
    ldh [$1f], a                                  ; $6524: $e0 $1f
    ldh a, [rIF]                                  ; $6526: $f0 $0f
    ld hl, sp+$6f                                 ; $6528: $f8 $6f
    rlca                                          ; $652a: $07
    db $fc                                        ; $652b: $fc
    dec b                                         ; $652c: $05
    db $fc                                        ; $652d: $fc
    ret nc                                        ; $652e: $d0

    db $eb                                        ; $652f: $eb

jr_075_6530:
    ld b, e                                       ; $6530: $43
    inc bc                                        ; $6531: $03
    ret nz                                        ; $6532: $c0

    ldh [rIE], a                                  ; $6533: $e0 $ff
    ld bc, $07fe                                  ; $6535: $01 $fe $07
    ld hl, sp+$0f                                 ; $6538: $f8 $0f
    ld a, [c]                                     ; $653a: $f2
    rra                                           ; $653b: $1f
    pop hl                                        ; $653c: $e1
    rst $18                                       ; $653d: $df
    ccf                                           ; $653e: $3f
    ldh [$7f], a                                  ; $653f: $e0 $7f
    ldh [rIE], a                                  ; $6541: $e0 $ff
    or b                                          ; $6543: $b0
    ldh [$c0], a                                  ; $6544: $e0 $c0
    ccf                                           ; $6546: $3f
    cp [hl]                                       ; $6547: $be
    call nc, $c3e2                                ; $6548: $d4 $e2 $c3
    cp $03                                        ; $654b: $fe $03
    cp $03                                        ; $654d: $fe $03
    ldh a, [$e1]                                  ; $654f: $f0 $e1
    nop                                           ; $6551: $00
    ld h, c                                       ; $6552: $61
    cp $ae                                        ; $6553: $fe $ae
    add sp, -$70                                  ; $6555: $e8 $90
    db $e3                                        ; $6557: $e3
    xor [hl]                                      ; $6558: $ae
    push hl                                       ; $6559: $e5
    or b                                          ; $655a: $b0
    db $ed                                        ; $655b: $ed
    ld e, e                                       ; $655c: $5b
    dec de                                        ; $655d: $1b
    add d                                         ; $655e: $82
    db $eb                                        ; $655f: $eb
    cp c                                          ; $6560: $b9
    ret nz                                        ; $6561: $c0

    or b                                          ; $6562: $b0
    pop hl                                        ; $6563: $e1
    add d                                         ; $6564: $82
    and $87                                       ; $6565: $e6 $87
    db $fc                                        ; $6567: $fc
    rlca                                          ; $6568: $07
    or b                                          ; $6569: $b0
    db $e4                                        ; $656a: $e4
    cp $fb                                        ; $656b: $fe $fb
    nop                                           ; $656d: $00
    db $fc                                        ; $656e: $fc
    cp $e0                                        ; $656f: $fe $e0
    ld hl, sp+$00                                 ; $6571: $f8 $00
    add d                                         ; $6573: $82
    add b                                         ; $6574: $80
    ld b, e                                       ; $6575: $43
    rst $18                                       ; $6576: $df
    inc bc                                        ; $6577: $03
    ld b, h                                       ; $6578: $44
    rlca                                          ; $6579: $07
    ld [$fe0f], sp                                ; $657a: $08 $0f $fe
    pop hl                                        ; $657d: $e1
    add h                                         ; $657e: $84
    rlca                                          ; $657f: $07
    rst $38                                       ; $6580: $ff
    ld [c], a                                     ; $6581: $e2
    inc bc                                        ; $6582: $03
    di                                            ; $6583: $f3
    ld bc, $ffc0                                  ; $6584: $01 $c0 $ff
    ret nz                                        ; $6587: $c0

    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    ldh [$bf], a                                  ; $658a: $e0 $bf
    ld hl, sp-$61                                 ; $658c: $f8 $9f
    ld a, a                                       ; $658e: $7f

Jump_075_658f:
    rst $00                                       ; $658f: $c7

jr_075_6590:
    ccf                                           ; $6590: $3f
    ldh [rIE], a                                  ; $6591: $e0 $ff
    rra                                           ; $6593: $1f

jr_075_6594:
    ld hl, sp+$07                                 ; $6594: $f8 $07
    rst $38                                       ; $6596: $ff
    rlca                                          ; $6597: $07
    rst $38                                       ; $6598: $ff
    ld b, $ff                                     ; $6599: $06 $ff
    rst $38                                       ; $659b: $ff
    ld c, $fb                                     ; $659c: $0e $fb
    ld a, $f3                                     ; $659e: $3e $f3
    db $fc                                        ; $65a0: $fc
    rst $00                                       ; $65a1: $c7
    ld hl, sp+$0f                                 ; $65a2: $f8 $0f
    rst $38                                       ; $65a4: $ff
    ldh a, [$3f]                                  ; $65a5: $f0 $3f
    pop bc                                        ; $65a7: $c1
    rst $38                                       ; $65a8: $ff
    jp nz, Jump_075_6280                          ; $65a9: $c2 $80 $62

    ret nz                                        ; $65ac: $c0

    rst $38                                       ; $65ad: $ff
    jr nc, jr_075_6590                            ; $65ae: $30 $e0

    jr nc, @-$1e                                  ; $65b0: $30 $e0

    jr nz, jr_075_6594                            ; $65b2: $20 $e0

    ld h, c                                       ; $65b4: $61
    ret nz                                        ; $65b5: $c0

    rst $38                                       ; $65b6: $ff
    rst $00                                       ; $65b7: $c7
    add b                                         ; $65b8: $80
    rst $08                                       ; $65b9: $cf
    nop                                           ; $65ba: $00
    ld b, h                                       ; $65bb: $44
    rlca                                          ; $65bc: $07
    ld b, h                                       ; $65bd: $44
    rlca                                          ; $65be: $07
    rst $38                                       ; $65bf: $ff
    inc c                                         ; $65c0: $0c
    rlca                                          ; $65c1: $07
    ld c, $03                                     ; $65c2: $0e $03
    rlca                                          ; $65c4: $07
    ld bc, $0087                                  ; $65c5: $01 $87 $00
    rst $38                                       ; $65c8: $ff
    db $e3                                        ; $65c9: $e3
    nop                                           ; $65ca: $00
    di                                            ; $65cb: $f3
    nop                                           ; $65cc: $00
    ld [hl], b                                    ; $65cd: $70
    rst $18                                       ; $65ce: $df
    ld a, h                                       ; $65cf: $7c
    rst $08                                       ; $65d0: $cf
    ei                                            ; $65d1: $fb
    ccf                                           ; $65d2: $3f
    db $e3                                        ; $65d3: $e3
    ld [de], a                                    ; $65d4: $12
    ldh [$fc], a                                  ; $65d5: $e0 $fc
    add e                                         ; $65d7: $83
    rst $38                                       ; $65d8: $ff
    ldh [$7f], a                                  ; $65d9: $e0 $7f
    rst $38                                       ; $65db: $ff
    ld hl, sp+$7f                                 ; $65dc: $f8 $7f
    rlca                                          ; $65de: $07
    db $fd                                        ; $65df: $fd
    rra                                           ; $65e0: $1f
    ld sp, hl                                     ; $65e1: $f9
    rst $38                                       ; $65e2: $ff
    pop hl                                        ; $65e3: $e1
    or $1e                                        ; $65e4: $f6 $1e
    ldh [$1f], a                                  ; $65e6: $e0 $1f
    pop hl                                        ; $65e8: $e1
    or h                                          ; $65e9: $b4
    ldh [$1f], a                                  ; $65ea: $e0 $1f
    rst $38                                       ; $65ec: $ff
    ld [hl+], a                                   ; $65ed: $22
    ldh [rIE], a                                  ; $65ee: $e0 $ff
    ld [de], a                                    ; $65f0: $12
    ldh a, [rNR10]                                ; $65f1: $f0 $10
    ldh a, [$30]                                  ; $65f3: $f0 $30
    ldh [$60], a                                  ; $65f5: $e0 $60
    ret nz                                        ; $65f7: $c0

    ld a, a                                       ; $65f8: $7f
    pop hl                                        ; $65f9: $e1
    add b                                         ; $65fa: $80
    rst $00                                       ; $65fb: $c7
    nop                                           ; $65fc: $00
    rst $08                                       ; $65fd: $cf
    nop                                           ; $65fe: $00
    jp $e490                                      ; $65ff: $c3 $90 $e4


    ld a, e                                       ; $6602: $7b
    rst $38                                       ; $6603: $ff
    add a                                         ; $6604: $87
    call c, $f8c0                                 ; $6605: $dc $c0 $f8
    rst $30                                       ; $6608: $f7
    rst $38                                       ; $6609: $ff
    add a                                         ; $660a: $87
    sub b                                         ; $660b: $90
    db $e4                                        ; $660c: $e4
    di                                            ; $660d: $f3
    cp $c3                                        ; $660e: $fe $c3
    cp h                                          ; $6610: $bc
    ret nz                                        ; $6611: $c0

    sub b                                         ; $6612: $90
    ldh [$7c], a                                  ; $6613: $e0 $7c
    daa                                           ; $6615: $27
    ld a, h                                       ; $6616: $7c
    daa                                           ; $6617: $27
    rst $38                                       ; $6618: $ff
    inc e                                         ; $6619: $1c
    rla                                           ; $661a: $17
    ld e, $13                                     ; $661b: $1e $13
    ld a, a                                       ; $661d: $7f
    ld l, a                                       ; $661e: $6f
    rst $38                                       ; $661f: $ff
    xor b                                         ; $6620: $a8
    rst $28                                       ; $6621: $ef
    rst $38                                       ; $6622: $ff
    call nc, $b8ff                                ; $6623: $d4 $ff $b8
    call nc, $87e7                                ; $6626: $d4 $e7 $87
    rst $38                                       ; $6629: $ff
    ldh a, [$f7]                                  ; $662a: $f0 $f7
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $18                                       ; $662e: $df
    call nc, $c3e7                                ; $662f: $d4 $e7 $c3
    rst $38                                       ; $6632: $ff
    rra                                           ; $6633: $1f
    cp $df                                        ; $6634: $fe $df
    rst $38                                       ; $6636: $ff
    or $42                                        ; $6637: $f6 $42
    ret nz                                        ; $6639: $c0

    ld [hl+], a                                   ; $663a: $22
    ld h, d                                       ; $663b: $62
    ldh [rSVBK], a                                ; $663c: $e0 $70
    ret nz                                        ; $663e: $c0

    ld l, a                                       ; $663f: $6f
    ldh [$80], a                                  ; $6640: $e0 $80
    pop hl                                        ; $6642: $e1

jr_075_6643:
    nop                                           ; $6643: $00
    and b                                         ; $6644: $a0
    pop hl                                        ; $6645: $e1
    rst $38                                       ; $6646: $ff
    ld [bc], a                                    ; $6647: $02
    cp $e2                                        ; $6648: $fe $e2
    db $fd                                        ; $664a: $fd
    ld bc, $e410                                  ; $664b: $01 $10 $e4
    nop                                           ; $664e: $00
    ret nz                                        ; $664f: $c0

    rst $38                                       ; $6650: $ff

jr_075_6651:
    ld hl, sp-$01                                 ; $6651: $f8 $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    ld e, a                                       ; $6655: $5f
    rst $38                                       ; $6656: $ff
    ld b, b                                       ; $6657: $40
    rst $38                                       ; $6658: $ff
    ldh [$3f], a                                  ; $6659: $e0 $3f
    ld hl, $ff1f                                  ; $665b: $21 $1f $ff
    inc de                                        ; $665e: $13
    ld a, a                                       ; $665f: $7f
    ld a, b                                       ; $6660: $78
    rlca                                          ; $6661: $07
    rst $38                                       ; $6662: $ff
    ccf                                           ; $6663: $3f
    cp $ff                                        ; $6664: $fe $ff
    rst $38                                       ; $6666: $ff
    db $f4                                        ; $6667: $f4
    rst $38                                       ; $6668: $ff
    dec b                                         ; $6669: $05
    cp $0e                                        ; $666a: $fe $0e
    db $fc                                        ; $666c: $fc
    ld c, b                                       ; $666d: $48
    ld hl, sp-$79                                 ; $666e: $f8 $87
    sbc b                                         ; $6670: $98
    cp $36                                        ; $6671: $fe $36
    ld d, d                                       ; $6673: $52
    pop bc                                        ; $6674: $c1
    ld d, b                                       ; $6675: $50
    ret nz                                        ; $6676: $c0

    jr nc, jr_075_6643                            ; $6677: $30 $ca

    ret nc                                        ; $6679: $d0

    ret nz                                        ; $667a: $c0

    ld c, $ff                                     ; $667b: $0e $ff
    rst $38                                       ; $667d: $ff
    ld de, $25ff                                  ; $667e: $11 $ff $25
    rst $38                                       ; $6681: $ff
    ld h, $ff                                     ; $6682: $26 $ff
    ld c, h                                       ; $6684: $4c
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    cp a                                          ; $6687: $bf
    rst $38                                       ; $6688: $ff
    rst $28                                       ; $6689: $ef
    rst $38                                       ; $668a: $ff
    and b                                         ; $668b: $a0
    ld a, a                                       ; $668c: $7f
    ld h, c                                       ; $668d: $61
    rst $38                                       ; $668e: $ff
    ccf                                           ; $668f: $3f
    jr nc, jr_075_6651                            ; $6690: $30 $bf

    sub e                                         ; $6692: $93
    sbc a                                         ; $6693: $9f
    sbc b                                         ; $6694: $98
    rst $38                                       ; $6695: $ff
    db $fc                                        ; $6696: $fc
    rst $28                                       ; $6697: $ef
    rst $38                                       ; $6698: $ff
    cp $ff                                        ; $6699: $fe $ff
    di                                            ; $669b: $f3
    sbc h                                         ; $669c: $9c
    ldh [rDIV], a                                 ; $669d: $e0 $04
    rst $38                                       ; $669f: $ff
    ld b, a                                       ; $66a0: $47
    cp a                                          ; $66a1: $bf
    db $fc                                        ; $66a2: $fc
    adc h                                         ; $66a3: $8c
    cp $1e                                        ; $66a4: $fe $1e
    rst $38                                       ; $66a6: $ff
    ld h, l                                       ; $66a7: $65
    jp nz, Jump_075_40e0                          ; $66a8: $c2 $e0 $40

    jp z, $e0a2                                   ; $66ab: $ca $a2 $e0

    add b                                         ; $66ae: $80
    ldh a, [$a8]                                  ; $66af: $f0 $a8
    ld bc, $e0fe                                  ; $66b1: $01 $fe $e0
    ld a, d                                       ; $66b4: $7a
    pop hl                                        ; $66b5: $e1
    inc b                                         ; $66b6: $04
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    inc b                                         ; $66b9: $04
    adc a                                         ; $66ba: $8f
    ld [$cff8], sp                                ; $66bb: $08 $f8 $cf
    db $fc                                        ; $66be: $fc
    rra                                           ; $66bf: $1f
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    daa                                           ; $66c2: $27
    rst $38                                       ; $66c3: $ff
    dec bc                                        ; $66c4: $0b
    rst $38                                       ; $66c5: $ff
    ld l, $ff                                     ; $66c6: $2e $ff
    sbc l                                         ; $66c8: $9d
    rst $38                                       ; $66c9: $ff
    ld a, a                                       ; $66ca: $7f
    ld [hl], b                                    ; $66cb: $70
    rst $38                                       ; $66cc: $ff
    ld [hl], e                                    ; $66cd: $73
    rrca                                          ; $66ce: $0f
    cp $1f                                        ; $66cf: $fe $1f
    rst $38                                       ; $66d1: $ff
    cp h                                          ; $66d2: $bc
    ldh [$7d], a                                  ; $66d3: $e0 $7d
    db $e4                                        ; $66d5: $e4
    ld a, [hl]                                    ; $66d6: $7e
    ldh [rTMA], a                                 ; $66d7: $e0 $06
    ld hl, sp+$48                                 ; $66d9: $f8 $48
    cp $9e                                        ; $66db: $fe $9e
    ret nc                                        ; $66dd: $d0

    and e                                         ; $66de: $a3
    cp [hl]                                       ; $66df: $be
    ret nz                                        ; $66e0: $c0

    add sp, $69                                   ; $66e1: $e8 $69
    rst $38                                       ; $66e3: $ff
    jr nc, @+$01                                  ; $66e4: $30 $ff

    ld [$e0fe], sp                                ; $66e6: $08 $fe $e0
    inc b                                         ; $66e9: $04
    rst $38                                       ; $66ea: $ff

Jump_075_66eb:
    rst $38                                       ; $66eb: $ff
    ld [bc], a                                    ; $66ec: $02
    ld sp, hl                                     ; $66ed: $f9
    ld bc, $0082                                  ; $66ee: $01 $82 $00
    rst $38                                       ; $66f1: $ff
    sub $fb                                       ; $66f2: $d6 $fb
    rst $38                                       ; $66f4: $ff
    call z, $e042                                 ; $66f5: $cc $42 $e0
    ld hl, $60ff                                  ; $66f8: $21 $ff $60
    rst $38                                       ; $66fb: $ff
    ld d, e                                       ; $66fc: $53
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    sbc b                                         ; $66ff: $98
    rst $38                                       ; $6700: $ff
    sub h                                         ; $6701: $94
    rst $38                                       ; $6702: $ff
    push de                                       ; $6703: $d5
    rst $38                                       ; $6704: $ff
    ld h, [hl]                                    ; $6705: $66
    sbc $82                                       ; $6706: $de $82
    ldh [$09], a                                  ; $6708: $e0 $09
    cp $4e                                        ; $670a: $fe $4e
    db $fc                                        ; $670c: $fc
    ld b, d                                       ; $670d: $42
    pop hl                                        ; $670e: $e1
    ld d, c                                       ; $670f: $51
    jp nz, Jump_000_00ff                          ; $6710: $c2 $ff $00

    db $e3                                        ; $6713: $e3
    ld bc, $02f3                                  ; $6714: $01 $f3 $02
    di                                            ; $6717: $f3
    inc bc                                        ; $6718: $03
    rst $20                                       ; $6719: $e7
    ld a, a                                       ; $671a: $7f
    inc b                                         ; $671b: $04
    rst $20                                       ; $671c: $e7
    inc b                                         ; $671d: $04
    rst $08                                       ; $671e: $cf
    ld [$11df], sp                                ; $671f: $08 $df $11
    sbc $e0                                       ; $6722: $de $e0
    ld [hl], a                                    ; $6724: $77
    inc de                                        ; $6725: $13
    rst $38                                       ; $6726: $ff
    ld a, [bc]                                    ; $6727: $0a
    ld b, [hl]                                    ; $6728: $46
    ldh [$a2], a                                  ; $6729: $e0 $a2
    rst $38                                       ; $672b: $ff
    ld b, e                                       ; $672c: $43
    ld a, [bc]                                    ; $672d: $0a
    ldh [rIE], a                                  ; $672e: $e0 $ff
    ret nz                                        ; $6730: $c0

    rst $38                                       ; $6731: $ff
    ld d, c                                       ; $6732: $51

jr_075_6733:
    rst $38                                       ; $6733: $ff
    sub b                                         ; $6734: $90
    rst $38                                       ; $6735: $ff
    xor c                                         ; $6736: $a9
    rst $38                                       ; $6737: $ff
    push af                                       ; $6738: $f5
    jp z, $e04e                                   ; $6739: $ca $4e $e0

    ld b, $0a                                     ; $673c: $06 $0a
    ldh [rTAC], a                                 ; $673e: $e0 $07
    ld b, e                                       ; $6740: $43
    nop                                           ; $6741: $00

jr_075_6742:
    rst $00                                       ; $6742: $c7
    rst $38                                       ; $6743: $ff
    add b                                         ; $6744: $80
    adc a                                         ; $6745: $8f
    add b                                         ; $6746: $80
    rst $08                                       ; $6747: $cf
    ld b, b                                       ; $6748: $40
    rst $20                                       ; $6749: $e7
    jr nz, jr_075_6733                            ; $674a: $20 $e7

    rst $38                                       ; $674c: $ff
    jr nz, jr_075_6742                            ; $674d: $20 $f3

    ret nc                                        ; $674f: $d0

    inc sp                                        ; $6750: $33
    ldh a, [rIE]                                  ; $6751: $f0 $ff
    ld c, l                                       ; $6753: $4d
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    ld b, [hl]                                    ; $6756: $46
    rst $38                                       ; $6757: $ff
    jr c, @+$01                                   ; $6758: $38 $ff

jr_075_675a:
    db $10                                        ; $675a: $10
    rst $38                                       ; $675b: $ff
    db $10                                        ; $675c: $10
    rst $28                                       ; $675d: $ef
    rst $30                                       ; $675e: $f7
    ld [$07c7], sp                                ; $675f: $08 $c7 $07
    ret nz                                        ; $6762: $c0

    ret nz                                        ; $6763: $c0

    db $db                                        ; $6764: $db
    rst $38                                       ; $6765: $ff
    rst $10                                       ; $6766: $d7
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    ld d, d                                       ; $6769: $52
    rst $38                                       ; $676a: $ff
    ld h, d                                       ; $676b: $62
    rst $38                                       ; $676c: $ff
    ld h, e                                       ; $676d: $63
    rst $38                                       ; $676e: $ff
    ldh [rIE], a                                  ; $676f: $e0 $ff
    db $fd                                        ; $6771: $fd
    jr nz, jr_075_675a                            ; $6772: $20 $e6

    ldh [$c8], a                                  ; $6774: $e0 $c8
    rst $38                                       ; $6776: $ff
    ld e, b                                       ; $6777: $58
    rst $38                                       ; $6778: $ff
    inc h                                         ; $6779: $24
    rst $38                                       ; $677a: $ff
    push af                                       ; $677b: $f5
    dec b                                         ; $677c: $05
    rst $20                                       ; $677d: $e7
    and b                                         ; $677e: $a0
    rlca                                          ; $677f: $07
    and h                                         ; $6780: $a4
    ret nz                                        ; $6781: $c0

    inc bc                                        ; $6782: $03
    jp $c780                                      ; $6783: $c3 $80 $c7


    rst $38                                       ; $6786: $ff
    ld b, b                                       ; $6787: $40
    rst $08                                       ; $6788: $cf
    ld b, b                                       ; $6789: $40
    rst $28                                       ; $678a: $ef
    and b                                         ; $678b: $a0
    rst $30                                       ; $678c: $f7
    db $10                                        ; $678d: $10
    rst $30                                       ; $678e: $f7
    rst $38                                       ; $678f: $ff
    db $10                                        ; $6790: $10
    ei                                            ; $6791: $fb
    add sp, $1b                                   ; $6792: $e8 $1b
    ld hl, sp-$31                                 ; $6794: $f8 $cf
    ld [$7fef], sp                                ; $6796: $08 $ef $7f
    ld [$07f7], sp                                ; $6799: $08 $f7 $07
    pop af                                        ; $679c: $f1
    ld bc, $00e0                                  ; $679d: $01 $e0 $00
    add b                                         ; $67a0: $80
    call nz, Call_075_58ff                        ; $67a1: $c4 $ff $58
    rst $38                                       ; $67a4: $ff
    sub a                                         ; $67a5: $97
    rst $38                                       ; $67a6: $ff
    dec hl                                        ; $67a7: $2b
    rst $38                                       ; $67a8: $ff
    and $7f                                       ; $67a9: $e6 $7f
    ld a, l                                       ; $67ab: $7d
    ld h, d                                       ; $67ac: $62
    add b                                         ; $67ad: $80
    ld [c], a                                     ; $67ae: $e2
    ld b, b                                       ; $67af: $40
    rst $38                                       ; $67b0: $ff
    ld sp, $d0ff                                  ; $67b1: $31 $ff $d0
    add b                                         ; $67b4: $80
    and $fc                                       ; $67b5: $e6 $fc
    ld a, [hl]                                    ; $67b7: $7e
    ldh [$80], a                                  ; $67b8: $e0 $80
    ld [$f310], a                                 ; $67ba: $ea $10 $f3
    ret nc                                        ; $67bd: $d0

    jp nz, $e200                                  ; $67be: $c2 $00 $e2

    di                                            ; $67c1: $f3
    nop                                           ; $67c2: $00
    ldh a, [$fe]                                  ; $67c3: $f0 $fe
    ldh [$c0], a                                  ; $67c5: $e0 $c0
    and $93                                       ; $67c7: $e6 $93
    ld a, a                                       ; $67c9: $7f
    ld c, d                                       ; $67ca: $4a
    ccf                                           ; $67cb: $3f
    ld e, a                                       ; $67cc: $5f
    ld h, $3f                                     ; $67cd: $26 $3f
    ld [hl+], a                                   ; $67cf: $22
    ccf                                           ; $67d0: $3f
    inc hl                                        ; $67d1: $23
    xor b                                         ; $67d2: $a8
    jp nz, Jump_075_4260                          ; $67d3: $c2 $60 $42

    add sp, $52                                   ; $67d6: $e8 $52
    ld b, b                                       ; $67d8: $40
    pop hl                                        ; $67d9: $e1
    rrca                                          ; $67da: $0f
    add b                                         ; $67db: $80
    ldh [rSCY], a                                 ; $67dc: $e0 $42
    ldh [$ef], a                                  ; $67de: $e0 $ef
    ld b, d                                       ; $67e0: $42
    ldh [$f7], a                                  ; $67e1: $e0 $f7
    jp nz, $fee0                                  ; $67e3: $c2 $e0 $fe

    ld b, b                                       ; $67e6: $40
    ldh [rNR10], a                                ; $67e7: $e0 $10
    rst $38                                       ; $67e9: $ff
    jr nz, @+$81                                  ; $67ea: $20 $7f

    ld [hl+], a                                   ; $67ec: $22
    ld a, a                                       ; $67ed: $7f
    dec de                                        ; $67ee: $1b
    ccf                                           ; $67ef: $3f
    ccf                                           ; $67f0: $3f
    add hl, bc                                    ; $67f1: $09
    ccf                                           ; $67f2: $3f
    rlca                                          ; $67f3: $07
    rra                                           ; $67f4: $1f
    ld bc, $8070                                  ; $67f5: $01 $70 $80
    db $fd                                        ; $67f8: $fd
    add b                                         ; $67f9: $80
    db $dd                                        ; $67fa: $dd
    add b                                         ; $67fb: $80
    ld e, e                                       ; $67fc: $5b
    add b                                         ; $67fd: $80
    inc b                                         ; $67fe: $04
    rst $38                                       ; $67ff: $ff
    inc bc                                        ; $6800: $03
    ld [hl], a                                    ; $6801: $77
    ret nz                                        ; $6802: $c0

    add c                                         ; $6803: $81
    rst $38                                       ; $6804: $ff
    rst $30                                       ; $6805: $f7
    db $fc                                        ; $6806: $fc
    rlca                                          ; $6807: $07
    db $fd                                        ; $6808: $fd
    or l                                          ; $6809: $b5
    pop bc                                        ; $680a: $c1
    rst $38                                       ; $680b: $ff
    ld b, l                                       ; $680c: $45
    rst $38                                       ; $680d: $ff
    add l                                         ; $680e: $85
    cp $ee                                        ; $680f: $fe $ee
    ldh [$03], a                                  ; $6811: $e0 $03
    cp $df                                        ; $6813: $fe $df
    ldh a, [$3f]                                  ; $6815: $f0 $3f
    ldh [$fe], a                                  ; $6817: $e0 $fe
    rst $30                                       ; $6819: $f7
    ret nz                                        ; $681a: $c0

    cp $80                                        ; $681b: $fe $80
    ldh [$a5], a                                  ; $681d: $e0 $a5
    rst $00                                       ; $681f: $c7
    ld a, a                                       ; $6820: $7f
    ret nz                                        ; $6821: $c0

    ld a, a                                       ; $6822: $7f
    rst $30                                       ; $6823: $f7
    add h                                         ; $6824: $84
    rst $38                                       ; $6825: $ff
    add d                                         ; $6826: $82
    sub $e0                                       ; $6827: $d6 $e0
    pop bc                                        ; $6829: $c1
    ld a, a                                       ; $682a: $7f
    pop hl                                        ; $682b: $e1
    ccf                                           ; $682c: $3f
    rst $30                                       ; $682d: $f7
    cp a                                          ; $682e: $bf
    ccf                                           ; $682f: $3f
    rst $38                                       ; $6830: $ff
    ld c, c                                       ; $6831: $49
    pop bc                                        ; $6832: $c1
    rst $38                                       ; $6833: $ff
    ld b, d                                       ; $6834: $42
    rst $38                                       ; $6835: $ff
    add h                                         ; $6836: $84
    db $fc                                        ; $6837: $fc
    ld hl, sp-$80                                 ; $6838: $f8 $80
    ld [hl], d                                    ; $683a: $72
    add b                                         ; $683b: $80
    cp $4f                                        ; $683c: $fe $4f
    ld hl, sp-$61                                 ; $683e: $f8 $9f
    ldh a, [$3e]                                  ; $6840: $f0 $3e
    ld a, a                                       ; $6842: $7f
    ldh [$7e], a                                  ; $6843: $e0 $7e
    ret nz                                        ; $6845: $c0

    ld a, h                                       ; $6846: $7c
    ret nz                                        ; $6847: $c0

    db $fc                                        ; $6848: $fc
    add b                                         ; $6849: $80
    or b                                          ; $684a: $b0
    and c                                         ; $684b: $a1
    xor $00                                       ; $684c: $ee $00
    add [hl]                                      ; $684e: $86
    ld bc, HeaderManufacturerCode                 ; $684f: $01 $3f $01
    sub b                                         ; $6852: $90
    ld [c], a                                     ; $6853: $e2
    ld b, b                                       ; $6854: $40
    rst $38                                       ; $6855: $ff
    ld a, a                                       ; $6856: $7f
    sbc h                                         ; $6857: $9c
    cp a                                          ; $6858: $bf
    and b                                         ; $6859: $a0
    sub b                                         ; $685a: $90
    and $fe                                       ; $685b: $e6 $fe
    rlca                                          ; $685d: $07
    db $fc                                        ; $685e: $fc
    db $d3                                        ; $685f: $d3
    ret nz                                        ; $6860: $c0

    cp [hl]                                       ; $6861: $be
    pop hl                                        ; $6862: $e1
    add l                                         ; $6863: $85
    ld e, [hl]                                    ; $6864: $5e
    set 0, b                                      ; $6865: $cb $c0
    inc bc                                        ; $6867: $03
    cp $3f                                        ; $6868: $fe $3f
    ldh a, [$c0]                                  ; $686a: $f0 $c0
    pop hl                                        ; $686c: $e1
    cp $c2                                        ; $686d: $fe $c2
    ldh [$a0], a                                  ; $686f: $e0 $a0
    ld [hl], b                                    ; $6871: $70
    and e                                         ; $6872: $a3
    ret nz                                        ; $6873: $c0

    ld h, h                                       ; $6874: $64
    jp nz, $c0e0                                  ; $6875: $c2 $e0 $c0

    ldh [$c0], a                                  ; $6878: $e0 $c0
    ld h, b                                       ; $687a: $60
    rst $18                                       ; $687b: $df
    jp nz, $feeb                                  ; $687c: $c2 $eb $fe

    cp $c2                                        ; $687f: $fe $c2
    db $eb                                        ; $6881: $eb
    rst $38                                       ; $6882: $ff
    cp $43                                        ; $6883: $fe $43
    nop                                           ; $6885: $00
    ld b, a                                       ; $6886: $47
    ld bc, $ff0e                                  ; $6887: $01 $0e $ff
    inc bc                                        ; $688a: $03
    inc c                                         ; $688b: $0c
    rlca                                          ; $688c: $07
    inc b                                         ; $688d: $04
    rlca                                          ; $688e: $07
    add a                                         ; $688f: $87
    rlca                                          ; $6890: $07
    db $e4                                        ; $6891: $e4
    db $fc                                        ; $6892: $fc
    ld sp, $c380                                  ; $6893: $31 $80 $c3
    and b                                         ; $6896: $a0
    jp nz, $f23e                                  ; $6897: $c2 $3e $f2

    ld c, $fe                                     ; $689a: $0e $fe
    ld a, [bc]                                    ; $689c: $0a
    ld hl, sp-$1c                                 ; $689d: $f8 $e4
    ldh [$e0], a                                  ; $689f: $e0 $e0
    ldh [$b4], a                                  ; $68a1: $e0 $b4
    and b                                         ; $68a3: $a0
    ld a, a                                       ; $68a4: $7f
    ld b, e                                       ; $68a5: $43
    ld a, h                                       ; $68a6: $7c
    ld c, a                                       ; $68a7: $4f
    ld [hl], b                                    ; $68a8: $70
    ld l, a                                       ; $68a9: $6f
    ld a, a                                       ; $68aa: $7f
    ld d, b                                       ; $68ab: $50
    ld a, a                                       ; $68ac: $7f
    rst $38                                       ; $68ad: $ff
    ld [hl], $e0                                  ; $68ae: $36 $e0
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    ret nc                                        ; $68b2: $d0

    ldh [$fb], a                                  ; $68b3: $e0 $fb
    nop                                           ; $68b5: $00
    rrca                                          ; $68b6: $0f
    adc $e0                                       ; $68b7: $ce $e0
    ld b, $03                                     ; $68b9: $06 $03
    add a                                         ; $68bb: $87
    inc bc                                        ; $68bc: $03
    ld [c], a                                     ; $68bd: $e2
    cp [hl]                                       ; $68be: $be
    or c                                          ; $68bf: $b1
    ld h, b                                       ; $68c0: $60
    rst $38                                       ; $68c1: $ff
    ld h, c                                       ; $68c2: $61
    rst $38                                       ; $68c3: $ff
    pop af                                        ; $68c4: $f1
    rra                                           ; $68c5: $1f
    ld b, c                                       ; $68c6: $41
    ret nz                                        ; $68c7: $c0

    dec b                                         ; $68c8: $05
    ld a, [$e0c5]                                 ; $68c9: $fa $c5 $e0
    ld bc, $e0c1                                  ; $68cc: $01 $c1 $e0
    ld a, a                                       ; $68cf: $7f
    ld b, d                                       ; $68d0: $42
    ld a, a                                       ; $68d1: $7f
    ld e, a                                       ; $68d2: $5f
    ld h, b                                       ; $68d3: $60
    jp $407f                                      ; $68d4: $c3 $7f $40


    cp $e0                                        ; $68d7: $fe $e0
    ret nc                                        ; $68d9: $d0

    and $a2                                       ; $68da: $e6 $a2
    ldh [$ee], a                                  ; $68dc: $e0 $ee
    ld h, c                                       ; $68de: $61
    adc a                                         ; $68df: $8f
    rrca                                          ; $68e0: $0f
    ei                                            ; $68e1: $fb
    add sp, $0f                                   ; $68e2: $e8 $0f
    ld h, l                                       ; $68e4: $65
    and b                                         ; $68e5: $a0
    cp $fe                                        ; $68e6: $fe $fe
    add h                                         ; $68e8: $84
    ld a, h                                       ; $68e9: $7c
    db $e4                                        ; $68ea: $e4
    cp a                                          ; $68eb: $bf
    inc e                                         ; $68ec: $1c
    db $fc                                        ; $68ed: $fc
    inc d                                         ; $68ee: $14
    db $fc                                        ; $68ef: $fc
    db $fd                                        ; $68f0: $fd
    db $fc                                        ; $68f1: $fc
    dec [hl]                                      ; $68f2: $35
    ldh [rIE], a                                  ; $68f3: $e0 $ff
    rst $30                                       ; $68f5: $f7
    cp $42                                        ; $68f6: $fe $42
    cp $92                                        ; $68f8: $fe $92
    ld [c], a                                     ; $68fa: $e2
    ld a, $fe                                     ; $68fb: $3e $fe
    jp $d8fe                                      ; $68fd: $c3 $fe $d8


    sub b                                         ; $6900: $90
    add b                                         ; $6901: $80
    ld a, a                                       ; $6902: $7f
    pop hl                                        ; $6903: $e1
    ld de, $80e1                                  ; $6904: $11 $e1 $80
    cp a                                          ; $6907: $bf
    cp $e0                                        ; $6908: $fe $e0
    sbc a                                         ; $690a: $9f
    add b                                         ; $690b: $80
    di                                            ; $690c: $f3
    pop bc                                        ; $690d: $c1
    add b                                         ; $690e: $80
    ld l, [hl]                                    ; $690f: $6e
    ldh [$a0], a                                  ; $6910: $e0 $a0
    ld l, c                                       ; $6912: $69
    nop                                           ; $6913: $00
    jp nz, $e280                                  ; $6914: $c2 $80 $e2

    add e                                         ; $6917: $83
    add b                                         ; $6918: $80
    ldh a, [$fe]                                  ; $6919: $f0 $fe
    ldh [rSVBK], a                                ; $691b: $e0 $70
    add b                                         ; $691d: $80
    ld d, [hl]                                    ; $691e: $56
    ret nz                                        ; $691f: $c0

    ld [hl], b                                    ; $6920: $70
    db $e4                                        ; $6921: $e4
    cp $e0                                        ; $6922: $fe $e0
    rlca                                          ; $6924: $07
    xor l                                         ; $6925: $ad
    nop                                           ; $6926: $00
    ret nc                                        ; $6927: $d0

    ld h, c                                       ; $6928: $61
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    ld b, b                                       ; $692b: $40
    pop bc                                        ; $692c: $c1
    adc a                                         ; $692d: $8f
    ld a, [hl]                                    ; $692e: $7e
    and b                                         ; $692f: $a0
    add a                                         ; $6930: $87
    ld l, $fe                                     ; $6931: $2e $fe
    ldh [$e3], a                                  ; $6933: $e0 $e3
    add b                                         ; $6935: $80
    di                                            ; $6936: $f3
    or h                                          ; $6937: $b4
    ld [c], a                                     ; $6938: $e2
    cp $fe                                        ; $6939: $fe $fe
    ldh [$e0], a                                  ; $693b: $e0 $e0
    ret nz                                        ; $693d: $c0

    ld e, a                                       ; $693e: $5f
    add b                                         ; $693f: $80
    ld hl, sp-$80                                 ; $6940: $f8 $80
    add d                                         ; $6942: $82
    add b                                         ; $6943: $80
    ret nz                                        ; $6944: $c0

    db $eb                                        ; $6945: $eb
    rst $08                                       ; $6946: $cf
    sub h                                         ; $6947: $94
    ld [c], a                                     ; $6948: $e2
    ld [bc], a                                    ; $6949: $02
    sub b                                         ; $694a: $90
    jp hl                                         ; $694b: $e9


    nop                                           ; $694c: $00
    rst $38                                       ; $694d: $ff
    db $ec                                        ; $694e: $ec
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    ei                                            ; $6960: $fb
    rst $38                                       ; $6961: $ff
    nop                                           ; $6962: $00
    cp $e8                                        ; $6963: $fe $e8
    ld bc, $03fe                                  ; $6965: $01 $fe $03
    ld e, l                                       ; $6968: $5d
    nop                                           ; $6969: $00
    rst $38                                       ; $696a: $ff
    ld e, l                                       ; $696b: $5d
    nop                                           ; $696c: $00
    ld h, a                                       ; $696d: $67
    nop                                           ; $696e: $00
    cp e                                          ; $696f: $bb
    inc bc                                        ; $6970: $03
    call z, $ff07                                 ; $6971: $cc $07 $ff
    ld hl, sp+$0f                                 ; $6974: $f8 $0f
    ld hl, sp-$01                                 ; $6976: $f8 $ff
    jr @+$01                                      ; $6978: $18 $ff

    cp d                                          ; $697a: $ba
    nop                                           ; $697b: $00
    rst $38                                       ; $697c: $ff
    cp d                                          ; $697d: $ba
    nop                                           ; $697e: $00
    and $e0                                       ; $697f: $e6 $e0
    dec e                                         ; $6981: $1d
    ld hl, sp+$07                                 ; $6982: $f8 $07
    cp $8d                                        ; $6984: $fe $8d
    ld bc, $e0d5                                  ; $6986: $01 $d5 $e0
    ld [$d0ff], sp                                ; $6989: $08 $ff $d0
    ld [$e0c4], a                                 ; $698c: $ea $c4 $e0
    ret nc                                        ; $698f: $d0

    jp hl                                         ; $6990: $e9


    sub b                                         ; $6991: $90
    ei                                            ; $6992: $fb
    rra                                           ; $6993: $1f
    ldh a, [$d0]                                  ; $6994: $f0 $d0
    rst $20                                       ; $6996: $e7
    db $fc                                        ; $6997: $fc
    inc bc                                        ; $6998: $03
    cp $81                                        ; $6999: $fe $81
    rst $38                                       ; $699b: $ff
    ld sp, hl                                     ; $699c: $f9
    ld [hl], c                                    ; $699d: $71
    ret nc                                        ; $699e: $d0

    db $ed                                        ; $699f: $ed
    and b                                         ; $69a0: $a0
    ldh [$5f], a                                  ; $69a1: $e0 $5f
    inc bc                                        ; $69a3: $03
    ld l, h                                       ; $69a4: $6c
    rrca                                          ; $69a5: $0f
    or b                                          ; $69a6: $b0
    rst $38                                       ; $69a7: $ff
    rra                                           ; $69a8: $1f
    ldh [$3f], a                                  ; $69a9: $e0 $3f
    call nz, $c37f                                ; $69ab: $c4 $7f $c3
    ld a, a                                       ; $69ae: $7f
    ret nz                                        ; $69af: $c0

    ld a, [hl]                                    ; $69b0: $7e
    and b                                         ; $69b1: $a0
    pop hl                                        ; $69b2: $e1
    add b                                         ; $69b3: $80
    ld h, [hl]                                    ; $69b4: $66
    ldh [rNR33], a                                ; $69b5: $e0 $1d
    ldh a, [$0b]                                  ; $69b7: $f0 $0b
    adc $e0                                       ; $69b9: $ce $e0
    ld d, a                                       ; $69bb: $57
    dec b                                         ; $69bc: $05
    db $fc                                        ; $69bd: $fc
    rlca                                          ; $69be: $07
    and b                                         ; $69bf: $a0
    db $ed                                        ; $69c0: $ed
    add b                                         ; $69c1: $80
    sub b                                         ; $69c2: $90
    db $ec                                        ; $69c3: $ec
    rlca                                          ; $69c4: $07
    ret nz                                        ; $69c5: $c0

    ldh [rIE], a                                  ; $69c6: $e0 $ff
    rlca                                          ; $69c8: $07
    ld a, b                                       ; $69c9: $78
    rra                                           ; $69ca: $1f
    and b                                         ; $69cb: $a0
    ccf                                           ; $69cc: $3f
    ret nz                                        ; $69cd: $c0

    ld a, a                                       ; $69ce: $7f
    adc b                                         ; $69cf: $88
    di                                            ; $69d0: $f3
    rst $38                                       ; $69d1: $ff
    add a                                         ; $69d2: $87
    pop hl                                        ; $69d3: $e1
    ldh [$60], a                                  ; $69d4: $e0 $60
    ld [c], a                                     ; $69d6: $e2
    ret nz                                        ; $69d7: $c0

    dec a                                         ; $69d8: $3d
    ldh [rNR13], a                                ; $69d9: $e0 $13
    rst $38                                       ; $69db: $ff
    ldh a, [rIF]                                  ; $69dc: $f0 $0f
    ld hl, sp+$09                                 ; $69de: $f8 $09
    ld hl, sp+$0f                                 ; $69e0: $f8 $0f
    rst $38                                       ; $69e2: $ff

jr_075_69e3:
    ld c, $7f                                     ; $69e3: $0e $7f
    inc bc                                        ; $69e5: $03
    ld a, [c]                                     ; $69e6: $f2
    inc bc                                        ; $69e7: $03
    ld e, $03                                     ; $69e8: $1e $03
    rst $20                                       ; $69ea: $e7
    ld bc, $e248                                  ; $69eb: $01 $48 $e2
    rst $38                                       ; $69ee: $ff
    nop                                           ; $69ef: $00
    dec e                                         ; $69f0: $1d
    nop                                           ; $69f1: $00
    jr c, jr_075_69e3                             ; $69f2: $38 $ef

    inc a                                         ; $69f4: $3c
    rst $20                                       ; $69f5: $e7
    rra                                           ; $69f6: $1f
    rst $38                                       ; $69f7: $ff
    di                                            ; $69f8: $f3
    rrca                                          ; $69f9: $0f
    ld hl, sp-$79                                 ; $69fa: $f8 $87
    cp $c1                                        ; $69fc: $fe $c1
    ld a, a                                       ; $69fe: $7f
    ldh a, [$df]                                  ; $69ff: $f0 $df
    ld a, a                                       ; $6a01: $7f
    db $fc                                        ; $6a02: $fc
    ld a, a                                       ; $6a03: $7f
    inc b                                         ; $6a04: $04
    rst $38                                       ; $6a05: $ff
    cp $e1                                        ; $6a06: $fe $e1
    ret nz                                        ; $6a08: $c0

    rst $38                                       ; $6a09: $ff
    rst $18                                       ; $6a0a: $df
    rst $38                                       ; $6a0b: $ff
    ccf                                           ; $6a0c: $3f
    rst $38                                       ; $6a0d: $ff
    add b                                         ; $6a0e: $80
    ld a, a                                       ; $6a0f: $7f
    inc bc                                        ; $6a10: $03
    ldh [rSVBK], a                                ; $6a11: $e0 $70
    ret nz                                        ; $6a13: $c0

    rst $38                                       ; $6a14: $ff
    ld c, a                                       ; $6a15: $4f
    ret nz                                        ; $6a16: $c0

    ld a, b                                       ; $6a17: $78

jr_075_6a18:
    ret nz                                        ; $6a18: $c0

    rst $20                                       ; $6a19: $e7
    ret nz                                        ; $6a1a: $c0

    cp l                                          ; $6a1b: $bd

jr_075_6a1c:
    ldh a, [$bd]                                  ; $6a1c: $f0 $bd
    adc l                                         ; $6a1e: $8d
    rrca                                          ; $6a1f: $0f
    ldh [$08], a                                  ; $6a20: $e0 $08
    ld hl, sp+$0f                                 ; $6a22: $f8 $0f
    ld bc, $e1c0                                  ; $6a24: $01 $c0 $e1
    and $df                                       ; $6a27: $e6 $df
    inc bc                                        ; $6a29: $03
    cp e                                          ; $6a2a: $bb
    ld bc, $01bb                                  ; $6a2b: $01 $bb $01
    ret nz                                        ; $6a2e: $c0

    pop hl                                        ; $6a2f: $e1
    db $10                                        ; $6a30: $10
    rst $38                                       ; $6a31: $ff
    jp c, $e5be                                   ; $6a32: $da $be $e5

    rlca                                          ; $6a35: $07
    jr nc, jr_075_6a18                            ; $6a36: $30 $e0

    ldh [$7f], a                                  ; $6a38: $e0 $7f
    reti                                          ; $6a3a: $d9


    jp nz, $87ff                                  ; $6a3b: $c2 $ff $87

    rst $30                                       ; $6a3e: $f7
    cp $ff                                        ; $6a3f: $fe $ff
    ld a, c                                       ; $6a41: $79
    jp nc, $c7c0                                  ; $6a42: $d2 $c0 $c7

    jr c, @+$01                                   ; $6a45: $38 $ff

    ldh a, [$bf]                                  ; $6a47: $f0 $bf
    add b                                         ; $6a49: $80
    rst $08                                       ; $6a4a: $cf
    add b                                         ; $6a4b: $80
    ld hl, sp-$20                                 ; $6a4c: $f8 $e0
    or a                                          ; $6a4e: $b7
    jp nz, Jump_000_0de0                          ; $6a4f: $c2 $e0 $0d

    cp a                                          ; $6a52: $bf
    ld hl, sp+$17                                 ; $6a53: $f8 $17
    ldh a, [$38]                                  ; $6a55: $f0 $38
    ldh [$0c], a                                  ; $6a57: $e0 $0c
    ret z                                         ; $6a59: $c8

    ret nz                                        ; $6a5a: $c0

    jr jr_075_6a1c                                ; $6a5b: $18 $bf

    rrca                                          ; $6a5d: $0f
    add sp, $0f                                   ; $6a5e: $e8 $0f
    cp h                                          ; $6a60: $bc
    rlca                                          ; $6a61: $07
    cp d                                          ; $6a62: $ba
    ld a, d                                       ; $6a63: $7a
    ldh [$1f], a                                  ; $6a64: $e0 $1f
    rst $38                                       ; $6a66: $ff
    ld [bc], a                                    ; $6a67: $02
    ret nz                                        ; $6a68: $c0

    rst $38                                       ; $6a69: $ff
    ldh [$bf], a                                  ; $6a6a: $e0 $bf
    ld hl, sp-$61                                 ; $6a6c: $f8 $9f
    ld a, a                                       ; $6a6e: $7f
    cp a                                          ; $6a6f: $bf
    rst $00                                       ; $6a70: $c7
    ccf                                           ; $6a71: $3f
    ldh [$1f], a                                  ; $6a72: $e0 $1f
    ld hl, sp+$07                                 ; $6a74: $f8 $07
    adc b                                         ; $6a76: $88
    ldh [rTMA], a                                 ; $6a77: $e0 $06
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    ld c, $fb                                     ; $6a7b: $0e $fb
    ld a, $f3                                     ; $6a7d: $3e $f3
    db $fc                                        ; $6a7f: $fc
    rst $00                                       ; $6a80: $c7
    ld hl, sp-$41                                 ; $6a81: $f8 $bf
    rrca                                          ; $6a83: $0f
    ldh a, [$3f]                                  ; $6a84: $f0 $3f
    pop bc                                        ; $6a86: $c1
    rst $38                                       ; $6a87: $ff
    rlca                                          ; $6a88: $07
    add b                                         ; $6a89: $80
    ldh [$2f], a                                  ; $6a8a: $e0 $2f
    rst $38                                       ; $6a8c: $ff
    ldh [$38], a                                  ; $6a8d: $e0 $38
    ldh [$27], a                                  ; $6a8f: $e0 $27
    ldh [$5d], a                                  ; $6a91: $e0 $5d
    ret nz                                        ; $6a93: $c0

    db $dd                                        ; $6a94: $dd
    rst $38                                       ; $6a95: $ff
    add b                                         ; $6a96: $80
    ld h, a                                       ; $6a97: $67
    nop                                           ; $6a98: $00
    cp b                                          ; $6a99: $b8
    nop                                           ; $6a9a: $00
    add hl, bc                                    ; $6a9b: $09
    rrca                                          ; $6a9c: $0f
    ld sp, hl                                     ; $6a9d: $f9
    rst $28                                       ; $6a9e: $ef
    rrca                                          ; $6a9f: $0f
    add hl, de                                    ; $6aa0: $19
    rrca                                          ; $6aa1: $0f
    db $e4                                        ; $6aa2: $e4
    jp nz, $bbe0                                  ; $6aa3: $c2 $e0 $bb

    ld bc, $ffe7                                  ; $6aa6: $01 $e7 $ff
    ld bc, $011d                                  ; $6aa9: $01 $1d $01
    ret nz                                        ; $6aac: $c0

    ld a, a                                       ; $6aad: $7f
    ldh a, [$3f]                                  ; $6aae: $f0 $3f
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rrca                                          ; $6ab2: $0f
    rst $38                                       ; $6ab3: $ff
    ret nz                                        ; $6ab4: $c0

    ccf                                           ; $6ab5: $3f
    ldh a, [rIF]                                  ; $6ab6: $f0 $0f
    rst $38                                       ; $6ab8: $ff

jr_075_6ab9:
    ldh [rIE], a                                  ; $6ab9: $e0 $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    cp a                                          ; $6abd: $bf
    inc e                                         ; $6abe: $1c
    rst $30                                       ; $6abf: $f7
    ld a, h                                       ; $6ac0: $7c
    rst $20                                       ; $6ac1: $e7
    db $fc                                        ; $6ac2: $fc
    rst $38                                       ; $6ac3: $ff
    add a                                         ; $6ac4: $87
    ld hl, sp+$1f                                 ; $6ac5: $f8 $1f
    pop hl                                        ; $6ac7: $e1
    ld a, a                                       ; $6ac8: $7f
    add a                                         ; $6ac9: $87
    cp $3f                                        ; $6aca: $fe $3f
    ld e, a                                       ; $6acc: $5f
    db $fc                                        ; $6acd: $fc
    rst $38                                       ; $6ace: $ff
    db $ec                                        ; $6acf: $ec
    ldh a, [$80]                                  ; $6ad0: $f0 $80
    ld b, b                                       ; $6ad2: $40
    ld [c], a                                     ; $6ad3: $e2
    add b                                         ; $6ad4: $80
    ld c, b                                       ; $6ad5: $48
    jp $b8ff                                      ; $6ad6: $c3 $ff $b8


    nop                                           ; $6ad9: $00
    di                                            ; $6ada: $f3
    nop                                           ; $6adb: $00
    rrca                                          ; $6adc: $0f
    nop                                           ; $6add: $00
    ld a, c                                       ; $6ade: $79
    nop                                           ; $6adf: $00
    rst $38                                       ; $6ae0: $ff
    ld h, c                                       ; $6ae1: $61
    nop                                           ; $6ae2: $00
    ld b, c                                       ; $6ae3: $41
    nop                                           ; $6ae4: $00
    inc bc                                        ; $6ae5: $03
    nop                                           ; $6ae6: $00
    rlca                                          ; $6ae7: $07
    nop                                           ; $6ae8: $00
    rst $38                                       ; $6ae9: $ff
    rra                                           ; $6aea: $1f
    nop                                           ; $6aeb: $00
    rst $38                                       ; $6aec: $ff
    ld h, e                                       ; $6aed: $63
    rst $38                                       ; $6aee: $ff
    ld l, a                                       ; $6aef: $6f
    rst $38                                       ; $6af0: $ff
    inc h                                         ; $6af1: $24
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    jr nz, @+$01                                  ; $6af4: $20 $ff

    jr c, @-$1f                                   ; $6af6: $38 $df

    jr jr_075_6ab9                                ; $6af8: $18 $bf

    inc [hl]                                      ; $6afa: $34
    rst $38                                       ; $6afb: $ff
    ld a, a                                       ; $6afc: $7f
    ccf                                           ; $6afd: $3f
    add b                                         ; $6afe: $80
    rst $38                                       ; $6aff: $ff
    ldh a, [rIE]                                  ; $6b00: $f0 $ff
    rst $38                                       ; $6b02: $ff

jr_075_6b03:
    rra                                           ; $6b03: $1f
    ei                                            ; $6b04: $fb
    rst $38                                       ; $6b05: $ff
    ld [bc], a                                    ; $6b06: $02
    cp $e0                                        ; $6b07: $fe $e0
    ld h, $fd                                     ; $6b09: $26 $fd
    jr jr_075_6b03                                ; $6b0b: $18 $f6

    db $10                                        ; $6b0d: $10
    rst $38                                       ; $6b0e: $ff
    rra                                           ; $6b0f: $1f
    ldh a, [rSVBK]                                ; $6b10: $f0 $70
    ldh [$9e], a                                  ; $6b12: $e0 $9e
    add b                                         ; $6b14: $80
    add [hl]                                      ; $6b15: $86
    nop                                           ; $6b16: $00
    rst $38                                       ; $6b17: $ff
    add d                                         ; $6b18: $82
    nop                                           ; $6b19: $00
    ret nz                                        ; $6b1a: $c0

    nop                                           ; $6b1b: $00
    ldh [rP1], a                                  ; $6b1c: $e0 $00
    ld hl, sp+$00                                 ; $6b1e: $f8 $00
    cp a                                          ; $6b20: $bf
    ld hl, sp+$5f                                 ; $6b21: $f8 $5f
    rst $38                                       ; $6b23: $ff
    sbc a                                         ; $6b24: $9f
    rst $38                                       ; $6b25: $ff
    adc b                                         ; $6b26: $88
    rst $18                                       ; $6b27: $df
    ret nz                                        ; $6b28: $c0

jr_075_6b29:
    jr nc, jr_075_6b29                            ; $6b29: $30 $fe

    ret nc                                        ; $6b2b: $d0

    ldh [rNR32], a                                ; $6b2c: $e0 $1c
    ld a, a                                       ; $6b2e: $7f
    ld h, [hl]                                    ; $6b2f: $66
    nop                                           ; $6b30: $00
    rst $38                                       ; $6b31: $ff
    add e                                         ; $6b32: $83
    rst $38                                       ; $6b33: $ff
    ei                                            ; $6b34: $fb
    rst $38                                       ; $6b35: $ff
    ld a, [hl]                                    ; $6b36: $7e
    ret nc                                        ; $6b37: $d0

    ldh [rDIV], a                                 ; $6b38: $e0 $04
    rst $38                                       ; $6b3a: $ff
    sub h                                         ; $6b3b: $94
    db $fd                                        ; $6b3c: $fd
    ld l, b                                       ; $6b3d: $68
    rst $38                                       ; $6b3e: $ff
    or $10                                        ; $6b3f: $f6 $10
    ld c, a                                       ; $6b41: $4f
    ret nz                                        ; $6b42: $c0

    ldh a, [$80]                                  ; $6b43: $f0 $80
    sbc [hl]                                      ; $6b45: $9e
    nop                                           ; $6b46: $00
    ld a, [hl]                                    ; $6b47: $7e
    ret nc                                        ; $6b48: $d0

    rst $20                                       ; $6b49: $e7
    di                                            ; $6b4a: $f3
    ld [bc], a                                    ; $6b4b: $02
    rrca                                          ; $6b4c: $0f
    ld [bc], a                                    ; $6b4d: $02
    ld a, c                                       ; $6b4e: $79
    ld bc, $e790                                  ; $6b4f: $01 $90 $e7
    cp a                                          ; $6b52: $bf
    ld hl, sp-$01                                 ; $6b53: $f8 $ff
    rst $38                                       ; $6b55: $ff
    ld e, a                                       ; $6b56: $5f
    rst $38                                       ; $6b57: $ff
    ld b, b                                       ; $6b58: $40
    ld d, l                                       ; $6b59: $55
    ldh [rNR43], a                                ; $6b5a: $e0 $22
    rst $38                                       ; $6b5c: $ff
    rst $18                                       ; $6b5d: $df
    ld de, $38bf                                  ; $6b5e: $11 $bf $38
    rst $38                                       ; $6b61: $ff
    call c, $fe3f                                 ; $6b62: $dc $3f $fe
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    db $f4                                        ; $6b67: $f4
    rst $38                                       ; $6b68: $ff
    dec b                                         ; $6b69: $05

jr_075_6b6a:
    rst $38                                       ; $6b6a: $ff
    ld c, $ff                                     ; $6b6b: $0e $ff
    adc b                                         ; $6b6d: $88
    rst $38                                       ; $6b6e: $ff
    di                                            ; $6b6f: $f3
    ret nc                                        ; $6b70: $d0

    db $fd                                        ; $6b71: $fd
    jr nz, jr_075_6b6a                            ; $6b72: $20 $f6

    ld [hl], b                                    ; $6b74: $70
    rst $08                                       ; $6b75: $cf
    add b                                         ; $6b76: $80
    cp $c0                                        ; $6b77: $fe $c0
    xor $05                                       ; $6b79: $ee $05
    ld a, a                                       ; $6b7b: $7f
    inc b                                         ; $6b7c: $04
    ld h, e                                       ; $6b7d: $63
    inc bc                                        ; $6b7e: $03
    ld h, a                                       ; $6b7f: $67
    ld h, h                                       ; $6b80: $64
    rst $38                                       ; $6b81: $ff
    rst $30                                       ; $6b82: $f7
    sub h                                         ; $6b83: $94
    rst $30                                       ; $6b84: $f7
    sub h                                         ; $6b85: $94
    ld a, a                                       ; $6b86: $7f
    ld c, l                                       ; $6b87: $4d
    rst $38                                       ; $6b88: $ff
    xor l                                         ; $6b89: $ad
    ei                                            ; $6b8a: $fb
    rst $38                                       ; $6b8b: $ff
    sbc b                                         ; $6b8c: $98
    ld a, [bc]                                    ; $6b8d: $0a
    ret nz                                        ; $6b8e: $c0

    ld b, d                                       ; $6b8f: $42
    rst $38                                       ; $6b90: $ff
    ret z                                         ; $6b91: $c8

    rst $38                                       ; $6b92: $ff
    and a                                         ; $6b93: $a7
    cp $55                                        ; $6b94: $fe $55
    ldh [$d8], a                                  ; $6b96: $e0 $d8
    rst $38                                       ; $6b98: $ff
    xor d                                         ; $6b99: $aa
    rst $38                                       ; $6b9a: $ff
    call Call_000_09ff                            ; $6b9b: $cd $ff $09
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    ld [de], a                                    ; $6ba0: $12
    rst $38                                       ; $6ba1: $ff
    sbc h                                         ; $6ba2: $9c

jr_075_6ba3:
    di                                            ; $6ba3: $f3
    jr nz, jr_075_6ba3                            ; $6ba4: $20 $fd

    ld a, b                                       ; $6ba6: $78
    rst $38                                       ; $6ba7: $ff
    cp $b6                                        ; $6ba8: $fe $b6
    ld a, a                                       ; $6baa: $7f
    ld h, e                                       ; $6bab: $63

jr_075_6bac:
    rst $38                                       ; $6bac: $ff
    pop bc                                        ; $6bad: $c1
    rst $38                                       ; $6bae: $ff
    add c                                         ; $6baf: $81
    cp $fe                                        ; $6bb0: $fe $fe
    ldh [$fd], a                                  ; $6bb2: $e0 $fd
    rst $38                                       ; $6bb4: $ff
    add [hl]                                      ; $6bb5: $86

jr_075_6bb6:
    rst $38                                       ; $6bb6: $ff
    add h                                         ; $6bb7: $84
    rst $38                                       ; $6bb8: $ff
    add d                                         ; $6bb9: $82
    rst $38                                       ; $6bba: $ff
    ld a, [$7ae0]                                 ; $6bbb: $fa $e0 $7a
    ret nz                                        ; $6bbe: $c0

    and $c0                                       ; $6bbf: $e6 $c0

jr_075_6bc1:
    db $dd                                        ; $6bc1: $dd

jr_075_6bc2:
    ld b, b                                       ; $6bc2: $40
    rst $38                                       ; $6bc3: $ff
    di                                            ; $6bc4: $f3
    jr nz, jr_075_6bb6                            ; $6bc5: $20 $ef

    jr nz, jr_075_6bc2                            ; $6bc7: $20 $f9

    jr nz, jr_075_6bac                            ; $6bc9: $20 $e1

    jr nz, jr_075_6bc1                            ; $6bcb: $20 $f4

    ld h, c                                       ; $6bcd: $61
    jp nz, $e3fe                                  ; $6bce: $c2 $fe $e3

    inc bc                                        ; $6bd1: $03
    ld a, [de]                                    ; $6bd2: $1a
    pop hl                                        ; $6bd3: $e1
    db $fd                                        ; $6bd4: $fd
    add a                                         ; $6bd5: $87
    cp $07                                        ; $6bd6: $fe $07
    xor $f6                                       ; $6bd8: $ee $f6
    ldh [$c8], a                                  ; $6bda: $e0 $c8
    rst $38                                       ; $6bdc: $ff
    jr c, jr_075_6c12                             ; $6bdd: $38 $33

    and b                                         ; $6bdf: $a0
    db $10                                        ; $6be0: $10
    rst $38                                       ; $6be1: $ff
    jr nc, @+$01                                  ; $6be2: $30 $ff

    ld a, [$6ef8]                                 ; $6be4: $fa $f8 $6e
    db $fc                                        ; $6be7: $fc
    cp $bc                                        ; $6be8: $fe $bc
    rst $38                                       ; $6bea: $ff
    ld e, $ab                                     ; $6beb: $1e $ab
    rst $38                                       ; $6bed: $ff
    ld [hl], $75                                  ; $6bee: $36 $75
    ret nz                                        ; $6bf0: $c0

    dec b                                         ; $6bf1: $05
    ld a, a                                       ; $6bf2: $7f
    ret nz                                        ; $6bf3: $c0

    ld bc, $e224                                  ; $6bf4: $01 $24 $e2
    rlca                                          ; $6bf7: $07
    ld a, [$a025]                                 ; $6bf8: $fa $25 $a0
    db $10                                        ; $6bfb: $10
    ldh [$e0], a                                  ; $6bfc: $e0 $e0
    ld [$1ff7], sp                                ; $6bfe: $08 $f7 $1f
    ld sp, hl                                     ; $6c01: $f9
    rrca                                          ; $6c02: $0f
    cp e                                          ; $6c03: $bb
    rst $38                                       ; $6c04: $ff
    ld h, $d0                                     ; $6c05: $26 $d0
    ret nz                                        ; $6c07: $c0

    ldh [rIE], a                                  ; $6c08: $e0 $ff
    sub b                                         ; $6c0a: $90
    ld de, $28a0                                  ; $6c0b: $11 $a0 $28
    rst $38                                       ; $6c0e: $ff
    cp d                                          ; $6c0f: $ba
    ld hl, sp-$02                                 ; $6c10: $f8 $fe

jr_075_6c12:
    call nc, Call_075_52fe                        ; $6c12: $d4 $fe $52
    rst $38                                       ; $6c15: $ff
    ld c, l                                       ; $6c16: $4d
    jp z, $e070                                   ; $6c17: $ca $70 $e0

    ld [$e078], sp                                ; $6c1a: $08 $78 $e0
    rrca                                          ; $6c1d: $0f
    ld h, [hl]                                    ; $6c1e: $66
    xor b                                         ; $6c1f: $a8
    cp $e1                                        ; $6c20: $fe $e1
    nop                                           ; $6c22: $00
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    daa                                           ; $6c25: $27
    rst $38                                       ; $6c26: $ff
    ld a, $ff                                     ; $6c27: $3e $ff
    ld d, h                                       ; $6c29: $54
    rst $38                                       ; $6c2a: $ff
    ld d, e                                       ; $6c2b: $53
    rst $38                                       ; $6c2c: $ff
    db $fd                                        ; $6c2d: $fd
    ld l, $d3                                     ; $6c2e: $2e $d3
    add b                                         ; $6c30: $80
    rlca                                          ; $6c31: $07
    rst $38                                       ; $6c32: $ff
    nop                                           ; $6c33: $00
    rst $30                                       ; $6c34: $f7
    ld e, a                                       ; $6c35: $5f
    di                                            ; $6c36: $f3
    rst $38                                       ; $6c37: $ff
    ld e, a                                       ; $6c38: $5f
    ei                                            ; $6c39: $fb
    adc [hl]                                      ; $6c3a: $8e
    rst $38                                       ; $6c3b: $ff
    ld b, [hl]                                    ; $6c3c: $46
    rst $38                                       ; $6c3d: $ff
    ld h, d                                       ; $6c3e: $62
    rst $38                                       ; $6c3f: $ff
    db $fd                                        ; $6c40: $fd
    jp $e1dc                                      ; $6c41: $c3 $dc $e1


    rst $18                                       ; $6c44: $df
    ld [hl], c                                    ; $6c45: $71
    sbc a                                         ; $6c46: $9f
    ldh a, [$bf]                                  ; $6c47: $f0 $bf
    jp hl                                         ; $6c49: $e9


    dec sp                                        ; $6c4a: $3b
    rst $38                                       ; $6c4b: $ff
    jp z, $a089                                   ; $6c4c: $ca $89 $a0

    ld b, $fd                                     ; $6c4f: $06 $fd
    dec b                                         ; $6c51: $05
    ld [hl], h                                    ; $6c52: $74
    ldh [$c6], a                                  ; $6c53: $e0 $c6
    db $e3                                        ; $6c55: $e3
    sbc l                                         ; $6c56: $9d
    ld b, b                                       ; $6c57: $40
    ld l, [hl]                                    ; $6c58: $6e
    ret nz                                        ; $6c59: $c0

    jr nz, @+$01                                  ; $6c5a: $20 $ff

    ret nc                                        ; $6c5c: $d0

    ld a, [hl+]                                   ; $6c5d: $2a
    ret nz                                        ; $6c5e: $c0

    ld c, [hl]                                    ; $6c5f: $4e

jr_075_6c60:
    ret nz                                        ; $6c60: $c0

    dec e                                         ; $6c61: $1d
    ld hl, sp+$56                                 ; $6c62: $f8 $56
    and b                                         ; $6c64: $a0
    sbc b                                         ; $6c65: $98
    add c                                         ; $6c66: $81
    db $10                                        ; $6c67: $10
    pop bc                                        ; $6c68: $c1
    rst $38                                       ; $6c69: $ff
    ld b, e                                       ; $6c6a: $43

jr_075_6c6b:
    cp a                                          ; $6c6b: $bf
    ld [c], a                                     ; $6c6c: $e2
    cp a                                          ; $6c6d: $bf
    cp a                                          ; $6c6e: $bf
    ld hl, sp-$41                                 ; $6c6f: $f8 $bf
    ldh [$bf], a                                  ; $6c71: $e0 $bf
    ldh a, [$8f]                                  ; $6c73: $f0 $8f
    ld c, e                                       ; $6c75: $4b
    ret nz                                        ; $6c76: $c0

    rst $38                                       ; $6c77: $ff
    ld a, a                                       ; $6c78: $7f
    rst $38                                       ; $6c79: $ff
    pop hl                                        ; $6c7a: $e1
    jr nz, jr_075_6c60                            ; $6c7b: $20 $e3

    ldh [$e7], a                                  ; $6c7d: $e0 $e7
    ld h, b                                       ; $6c7f: $60
    dec b                                         ; $6c80: $05
    ret nz                                        ; $6c81: $c0

    rst $30                                       ; $6c82: $f7
    ld b, b                                       ; $6c83: $40
    rst $38                                       ; $6c84: $ff
    ret nz                                        ; $6c85: $c0

    pop de                                        ; $6c86: $d1
    add b                                         ; $6c87: $80
    ret nz                                        ; $6c88: $c0

    ldh a, [rP1]                                  ; $6c89: $f0 $00
    rst $08                                       ; $6c8b: $cf
    ld a, [$a0da]                                 ; $6c8c: $fa $da $a0
    ld h, a                                       ; $6c8f: $67
    adc b                                         ; $6c90: $88
    add h                                         ; $6c91: $84
    cp b                                          ; $6c92: $b8
    nop                                           ; $6c93: $00
    rrca                                          ; $6c94: $0f
    ld bc, $71f3                                  ; $6c95: $01 $f3 $71
    ld bc, $e5c0                                  ; $6c98: $01 $c0 $e5
    db $10                                        ; $6c9b: $10
    and c                                         ; $6c9c: $a1
    ld e, l                                       ; $6c9d: $5d
    add b                                         ; $6c9e: $80
    rrca                                          ; $6c9f: $0f
    cp $a3                                        ; $6ca0: $fe $a3
    call c, $ffc0                                 ; $6ca2: $dc $c0 $ff
    ld b, c                                       ; $6ca5: $41
    cp [hl]                                       ; $6ca6: $be
    di                                            ; $6ca7: $f3
    adc h                                         ; $6ca8: $8c
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    ld a, a                                       ; $6cab: $7f
    db $fd                                        ; $6cac: $fd
    ei                                            ; $6cad: $fb
    rrca                                          ; $6cae: $0f
    db $fd                                        ; $6caf: $fd
    rst $28                                       ; $6cb0: $ef
    ldh [rIF], a                                  ; $6cb1: $e0 $0f
    db $fc                                        ; $6cb3: $fc
    ld a, a                                       ; $6cb4: $7f
    ld hl, sp+$5f                                 ; $6cb5: $f8 $5f
    ld a, a                                       ; $6cb7: $7f
    ldh a, [$5f]                                  ; $6cb8: $f0 $5f
    ldh a, [rIE]                                  ; $6cba: $f0 $ff
    ldh a, [rIF]                                  ; $6cbc: $f0 $0f
    rlca                                          ; $6cbe: $07
    ret nc                                        ; $6cbf: $d0

    ldh [$7c], a                                  ; $6cc0: $e0 $7c
    and [hl]                                      ; $6cc2: $a6
    and b                                         ; $6cc3: $a0
    jr nz, jr_075_6c6b                            ; $6cc4: $20 $a5

    rst $38                                       ; $6cc6: $ff
    ld d, b                                       ; $6cc7: $50
    rst $38                                       ; $6cc8: $ff
    ccf                                           ; $6cc9: $3f
    ldh [$93], a                                  ; $6cca: $e0 $93
    add [hl]                                      ; $6ccc: $86
    rst $18                                       ; $6ccd: $df
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    ld hl, sp+$1f                                 ; $6cd0: $f8 $1f
    add sp, -$6f                                  ; $6cd2: $e8 $91
    ret nz                                        ; $6cd4: $c0

    dec bc                                        ; $6cd5: $0b
    cp $ff                                        ; $6cd6: $fe $ff
    ld a, a                                       ; $6cd8: $7f
    db $fc                                        ; $6cd9: $fc
    ld l, a                                       ; $6cda: $6f
    ld hl, sp+$4f                                 ; $6cdb: $f8 $4f
    ld hl, sp-$01                                 ; $6cdd: $f8 $ff
    ld hl, sp-$20                                 ; $6cdf: $f8 $e0
    ld h, b                                       ; $6ce1: $60
    db $e3                                        ; $6ce2: $e3
    ret nc                                        ; $6ce3: $d0

    add sp, -$3b                                  ; $6ce4: $e8 $c5
    add b                                         ; $6ce6: $80
    ld l, e                                       ; $6ce7: $6b
    add l                                         ; $6ce8: $85
    ret nc                                        ; $6ce9: $d0

    pop hl                                        ; $6cea: $e1
    db $fc                                        ; $6ceb: $fc
    rlca                                          ; $6cec: $07
    db $fd                                        ; $6ced: $fd
    xor $ae                                       ; $6cee: $ee $ae
    add b                                         ; $6cf0: $80
    ld [bc], a                                    ; $6cf1: $02
    rst $38                                       ; $6cf2: $ff
    ld h, l                                       ; $6cf3: $65
    cp $e0                                        ; $6cf4: $fe $e0
    ld b, e                                       ; $6cf6: $43
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    ccf                                           ; $6cf9: $3f
    cp $d0                                        ; $6cfa: $fe $d0
    ldh a, [$2f]                                  ; $6cfc: $f0 $2f
    ldh [$f8], a                                  ; $6cfe: $e0 $f8
    ld [hl], b                                    ; $6d00: $70
    or [hl]                                       ; $6d01: $b6
    cpl                                           ; $6d02: $2f
    ldh [$3f], a                                  ; $6d03: $e0 $3f
    ld h, c                                       ; $6d05: $61
    rst $38                                       ; $6d06: $ff
    rst $08                                       ; $6d07: $cf
    ldh a, [$df]                                  ; $6d08: $f0 $df
    ldh [$7e], a                                  ; $6d0a: $e0 $7e
    add c                                         ; $6d0c: $81
    cpl                                           ; $6d0d: $2f
    ldh [$3c], a                                  ; $6d0e: $e0 $3c
    rra                                           ; $6d10: $1f
    ldh [rNR32], a                                ; $6d11: $e0 $1c
    add b                                         ; $6d13: $80
    ld a, a                                       ; $6d14: $7f
    ret nz                                        ; $6d15: $c0

    ccf                                           ; $6d16: $3f
    ldh [$7b], a                                  ; $6d17: $e0 $7b
    ldh [$fc], a                                  ; $6d19: $e0 $fc
    pop hl                                        ; $6d1b: $e1
    sub d                                         ; $6d1c: $92
    ldh [$e1], a                                  ; $6d1d: $e0 $e1
    ld e, a                                       ; $6d1f: $5f
    ld [c], a                                     ; $6d20: $e2
    pop hl                                        ; $6d21: $e1
    ld e, [hl]                                    ; $6d22: $5e
    add b                                         ; $6d23: $80
    ld a, a                                       ; $6d24: $7f
    ldh [$e2], a                                  ; $6d25: $e0 $e2
    inc b                                         ; $6d27: $04
    ldh [$9f], a                                  ; $6d28: $e0 $9f
    ccf                                           ; $6d2a: $3f
    ldh a, [rVBK]                                 ; $6d2b: $f0 $4f
    ld hl, sp+$7f                                 ; $6d2d: $f8 $7f
    ld hl, sp-$31                                 ; $6d2f: $f8 $cf
    db $fc                                        ; $6d31: $fc
    ldh [$ef], a                                  ; $6d32: $e0 $ef
    ret nz                                        ; $6d34: $c0

    rra                                           ; $6d35: $1f
    jr nz, @+$01                                  ; $6d36: $20 $ff

    ccf                                           ; $6d38: $3f
    pop bc                                        ; $6d39: $c1
    ld a, a                                       ; $6d3a: $7f
    add e                                         ; $6d3b: $83
    pop bc                                        ; $6d3c: $c1
    ld a, b                                       ; $6d3d: $78
    pop hl                                        ; $6d3e: $e1
    rst $18                                       ; $6d3f: $df
    ret nz                                        ; $6d40: $c0

    ld c, $e2                                     ; $6d41: $0e $e2
    ldh [$8f], a                                  ; $6d43: $e0 $8f
    ld hl, sp-$71                                 ; $6d45: $f8 $8f
    ld d, [hl]                                    ; $6d47: $56
    ldh [$fc], a                                  ; $6d48: $e0 $fc
    ldh [rNR51], a                                ; $6d4a: $e0 $25
    and b                                         ; $6d4c: $a0
    jp hl                                         ; $6d4d: $e9


    ld [c], a                                     ; $6d4e: $e2
    call nz, $e9fe                                ; $6d4f: $c4 $fe $e9
    ld c, [hl]                                    ; $6d52: $4e
    ld l, l                                       ; $6d53: $6d
    rst $38                                       ; $6d54: $ff
    ret nz                                        ; $6d55: $c0

    set 2, d                                      ; $6d56: $cb $d2
    push hl                                       ; $6d58: $e5
    jr c, @-$7d                                   ; $6d59: $38 $81

    cp b                                          ; $6d5b: $b8
    add b                                         ; $6d5c: $80
    sub a                                         ; $6d5d: $97
    rst $20                                       ; $6d5e: $e7
    add b                                         ; $6d5f: $80
    db $dd                                        ; $6d60: $dd
    cp $e0                                        ; $6d61: $fe $e0
    rst $20                                       ; $6d63: $e7
    or $e0                                        ; $6d64: $f6 $e0
    ld e, b                                       ; $6d66: $58
    and d                                         ; $6d67: $a2
    add b                                         ; $6d68: $80
    rst $38                                       ; $6d69: $ff
    add [hl]                                      ; $6d6a: $86
    add b                                         ; $6d6b: $80
    add d                                         ; $6d6c: $82
    add b                                         ; $6d6d: $80
    ret nz                                        ; $6d6e: $c0

    add b                                         ; $6d6f: $80
    ldh [$80], a                                  ; $6d70: $e0 $80
    ld bc, $acf8                                  ; $6d72: $01 $f8 $ac
    rst $20                                       ; $6d75: $e7
    ret nc                                        ; $6d76: $d0

    ld b, h                                       ; $6d77: $44
    ld c, b                                       ; $6d78: $48
    ret                                           ; $6d79: $c9


    sbc b                                         ; $6d7a: $98
    ld h, c                                       ; $6d7b: $61
    adc b                                         ; $6d7c: $88
    adc [hl]                                      ; $6d7d: $8e
    xor b                                         ; $6d7e: $a8
    ld b, h                                       ; $6d7f: $44
    rst $38                                       ; $6d80: $ff
    db $ed                                        ; $6d81: $ed
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    ei                                            ; $6d90: $fb
    rst $38                                       ; $6d91: $ff
    nop                                           ; $6d92: $00
    cp $e8                                        ; $6d93: $fe $e8
    ld bc, $03fe                                  ; $6d95: $01 $fe $03
    call z, $ff00                                 ; $6d98: $cc $00 $ff
    adc b                                         ; $6d9b: $88
    nop                                           ; $6d9c: $00
    sbc a                                         ; $6d9d: $9f
    rlca                                          ; $6d9e: $07
    sbc b                                         ; $6d9f: $98
    rra                                           ; $6da0: $1f
    ldh [$7f], a                                  ; $6da1: $e0 $7f
    db $fd                                        ; $6da3: $fd
    add b                                         ; $6da4: $80
    push hl                                       ; $6da5: $e5
    ldh [rNR10], a                                ; $6da6: $e0 $10
    rst $38                                       ; $6da8: $ff
    inc sp                                        ; $6da9: $33
    nop                                           ; $6daa: $00
    ld de, $ff00                                  ; $6dab: $11 $00 $ff
    add hl, de                                    ; $6dae: $19
    nop                                           ; $6daf: $00
    reti                                          ; $6db0: $d9


    ret nz                                        ; $6db1: $c0

    dec a                                         ; $6db2: $3d
    ldh [rNR31], a                                ; $6db3: $e0 $1b
    ldh a, [$8f]                                  ; $6db5: $f0 $8f
    rra                                           ; $6db7: $1f
    rst $38                                       ; $6db8: $ff
    jr @+$01                                      ; $6db9: $18 $ff

    ret nc                                        ; $6dbb: $d0

    ld [$e0c4], a                                 ; $6dbc: $ea $c4 $e0
    ret nc                                        ; $6dbf: $d0

    push hl                                       ; $6dc0: $e5
    and b                                         ; $6dc1: $a0
    cp a                                          ; $6dc2: $bf
    ccf                                           ; $6dc3: $3f
    ret nz                                        ; $6dc4: $c0

    ld a, a                                       ; $6dc5: $7f
    add c                                         ; $6dc6: $81
    rst $38                                       ; $6dc7: $ff
    adc [hl]                                      ; $6dc8: $8e
    ret nc                                        ; $6dc9: $d0

    ld [$f70f], a                                 ; $6dca: $ea $0f $f7
    ld hl, sp+$0f                                 ; $6dcd: $f8 $0f
    rst $38                                       ; $6dcf: $ff
    or b                                          ; $6dd0: $b0
    pop hl                                        ; $6dd1: $e1
    sbc e                                         ; $6dd2: $9b
    inc bc                                        ; $6dd3: $03
    sbc h                                         ; $6dd4: $9c
    rrca                                          ; $6dd5: $0f
    rst $38                                       ; $6dd6: $ff
    or b                                          ; $6dd7: $b0
    rra                                           ; $6dd8: $1f
    ldh [$3f], a                                  ; $6dd9: $e0 $3f
    call nz, $c37f                                ; $6ddb: $c4 $7f $c3
    ld a, a                                       ; $6dde: $7f
    cp $b0                                        ; $6ddf: $fe $b0

Call_075_6de1:
    pop hl                                        ; $6de1: $e1
    sbc c                                         ; $6de2: $99
    add b                                         ; $6de3: $80
    ld a, c                                       ; $6de4: $79
    ldh [rNR33], a                                ; $6de5: $e0 $1d
    ldh a, [$0b]                                  ; $6de7: $f0 $0b
    sbc a                                         ; $6de9: $9f
    ld hl, sp+$07                                 ; $6dea: $f8 $07
    db $fc                                        ; $6dec: $fc
    rlca                                          ; $6ded: $07
    db $fc                                        ; $6dee: $fc
    or b                                          ; $6def: $b0
    db $ec                                        ; $6df0: $ec
    add b                                         ; $6df1: $80
    ldh [$89], a                                  ; $6df2: $e0 $89
    rst $38                                       ; $6df4: $ff
    ld bc, $079e                                  ; $6df5: $01 $9e $07
    sbc b                                         ; $6df8: $98
    rrca                                          ; $6df9: $0f
    or d                                          ; $6dfa: $b2
    rra                                           ; $6dfb: $1f
    pop hl                                        ; $6dfc: $e1
    rst $28                                       ; $6dfd: $ef
    ccf                                           ; $6dfe: $3f
    ldh [$7f], a                                  ; $6dff: $e0 $7f
    ldh [$80], a                                  ; $6e01: $e0 $80
    ldh [$d1], a                                  ; $6e03: $e0 $d1
    ret nz                                        ; $6e05: $c0

    add hl, sp                                    ; $6e06: $39
    rst $38                                       ; $6e07: $ff
    ldh a, [$09]                                  ; $6e08: $f0 $09
    ld hl, sp+$05                                 ; $6e0a: $f8 $05
    db $fc                                        ; $6e0c: $fc
    jp Jump_000_03fe                              ; $6e0d: $c3 $fe $03


    rst $38                                       ; $6e10: $ff
    cp $03                                        ; $6e11: $fe $03
    rst $38                                       ; $6e13: $ff
    cp $03                                        ; $6e14: $fe $03
    ld a, $03                                     ; $6e16: $3e $03
    adc $ff                                       ; $6e18: $ce $ff
    inc bc                                        ; $6e1a: $03
    rst $30                                       ; $6e1b: $f7
    inc bc                                        ; $6e1c: $03
    dec a                                         ; $6e1d: $3d
    rrca                                          ; $6e1e: $0f
    ld de, $101f                                  ; $6e1f: $11 $1f $10
    or $fe                                        ; $6e22: $f6 $fe
    ldh [rNR41], a                                ; $6e24: $e0 $20
    rst $38                                       ; $6e26: $ff
    cp $e1                                        ; $6e27: $fe $e1
    inc bc                                        ; $6e29: $03
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    db $fc                                        ; $6e2c: $fc
    db $fc                                        ; $6e2d: $fc
    ld b, d                                       ; $6e2e: $42
    ldh [$33], a                                  ; $6e2f: $e0 $33
    ldh [rNR32], a                                ; $6e31: $e0 $1c
    rst $30                                       ; $6e33: $f7
    inc a                                         ; $6e34: $3c
    rst $20                                       ; $6e35: $e7
    ld hl, sp-$31                                 ; $6e36: $f8 $cf
    rst $38                                       ; $6e38: $ff
    ldh a, [$1f]                                  ; $6e39: $f0 $1f
    pop hl                                        ; $6e3b: $e1
    ld a, a                                       ; $6e3c: $7f
    add e                                         ; $6e3d: $83
    cp $0f                                        ; $6e3e: $fe $0f
    cp $ff                                        ; $6e40: $fe $ff
    ccf                                           ; $6e42: $3f
    cp $7f                                        ; $6e43: $fe $7f
    ret nz                                        ; $6e45: $c0

    ld a, h                                       ; $6e46: $7c
    ret nz                                        ; $6e47: $c0

    ld [hl], e                                    ; $6e48: $73
    ret nz                                        ; $6e49: $c0

    db $eb                                        ; $6e4a: $eb
    rst $28                                       ; $6e4b: $ef
    add b                                         ; $6e4c: $80
    jr z, @-$1d                                   ; $6e4d: $28 $e1

    sbc b                                         ; $6e4f: $98
    cp $e0                                        ; $6e50: $fe $e0
    rst $38                                       ; $6e52: $ff
    ld bc, $bf3f                                  ; $6e53: $01 $3f $bf
    ld bc, $07cf                                  ; $6e56: $01 $cf $07
    db $fd                                        ; $6e59: $fd
    rrca                                          ; $6e5a: $0f
    ld sp, $e0c2                                  ; $6e5b: $31 $c2 $e0
    jr @-$07                                      ; $6e5e: $18 $f7

    rrca                                          ; $6e60: $0f
    inc e                                         ; $6e61: $1c
    rlca                                          ; $6e62: $07
    ld bc, $80e1                                  ; $6e63: $01 $e1 $80
    rst $38                                       ; $6e66: $ff
    pop hl                                        ; $6e67: $e1
    ld a, a                                       ; $6e68: $7f
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    sbc [hl]                                      ; $6e6b: $9e
    rst $38                                       ; $6e6c: $ff
    add b                                         ; $6e6d: $80
    ld a, a                                       ; $6e6e: $7f
    db $e3                                        ; $6e6f: $e3
    inc e                                         ; $6e70: $1c
    rst $38                                       ; $6e71: $ff
    push af                                       ; $6e72: $f5
    ld [$e6be], sp                                ; $6e73: $08 $be $e6
    ldh [$30], a                                  ; $6e76: $e0 $30
    ldh [rTAC], a                                 ; $6e78: $e0 $07
    cp $ff                                        ; $6e7a: $fe $ff
    add b                                         ; $6e7c: $80
    ld a, [hl]                                    ; $6e7d: $7e
    ret nz                                        ; $6e7e: $c0

    pop hl                                        ; $6e7f: $e1
    ld l, a                                       ; $6e80: $6f
    ret nz                                        ; $6e81: $c0

    call z, $8880                                 ; $6e82: $cc $80 $88
    add b                                         ; $6e85: $80
    ret nz                                        ; $6e86: $c0

    ld [c], a                                     ; $6e87: $e2
    rst $28                                       ; $6e88: $ef
    inc bc                                        ; $6e89: $03
    inc a                                         ; $6e8a: $3c
    rlca                                          ; $6e8b: $07
    ret z                                         ; $6e8c: $c8

    daa                                           ; $6e8d: $27
    ldh [$38], a                                  ; $6e8e: $e0 $38
    rrca                                          ; $6e90: $0f
    inc d                                         ; $6e91: $14
    rst $38                                       ; $6e92: $ff
    rlca                                          ; $6e93: $07
    ld a, [de]                                    ; $6e94: $1a
    inc bc                                        ; $6e95: $03
    add hl, de                                    ; $6e96: $19
    ld bc, $ffc0                                  ; $6e97: $01 $c0 $ff
    ret nz                                        ; $6e9a: $c0

    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    ldh [$bf], a                                  ; $6e9d: $e0 $bf
    ld hl, sp-$61                                 ; $6e9f: $f8 $9f
    ld a, a                                       ; $6ea1: $7f
    rst $00                                       ; $6ea2: $c7
    ccf                                           ; $6ea3: $3f
    rst $38                                       ; $6ea4: $ff
    ldh [$1f], a                                  ; $6ea5: $e0 $1f
    ld hl, sp+$07                                 ; $6ea7: $f8 $07
    rst $38                                       ; $6ea9: $ff
    rlca                                          ; $6eaa: $07
    rst $38                                       ; $6eab: $ff
    ld b, $ff                                     ; $6eac: $06 $ff
    rst $38                                       ; $6eae: $ff
    ld c, $fb                                     ; $6eaf: $0e $fb
    ld a, $f3                                     ; $6eb1: $3e $f3
    db $fc                                        ; $6eb3: $fc
    rst $00                                       ; $6eb4: $c7
    ld hl, sp-$21                                 ; $6eb5: $f8 $df
    rrca                                          ; $6eb7: $0f
    ldh a, [$3f]                                  ; $6eb8: $f0 $3f
    pop bc                                        ; $6eba: $c1
    rst $38                                       ; $6ebb: $ff
    ret nz                                        ; $6ebc: $c0

    pop hl                                        ; $6ebd: $e1
    inc sp                                        ; $6ebe: $33
    ldh [$7f], a                                  ; $6ebf: $e0 $7f
    cpl                                           ; $6ec1: $2f
    ldh [$2c], a                                  ; $6ec2: $e0 $2c
    ldh [rOBP0], a                                ; $6ec4: $e0 $48
    ret nz                                        ; $6ec6: $c0

    sbc b                                         ; $6ec7: $98
    cp [hl]                                       ; $6ec8: $be
    ldh [rIE], a                                  ; $6ec9: $e0 $ff
    db $fc                                        ; $6ecb: $fc
    rlca                                          ; $6ecc: $07
    inc a                                         ; $6ecd: $3c
    rlca                                          ; $6ece: $07
    call z, $f607                                 ; $6ecf: $cc $07 $f6
    inc bc                                        ; $6ed2: $03
    ei                                            ; $6ed3: $fb
    inc sp                                        ; $6ed4: $33
    ld bc, $c1a8                                  ; $6ed5: $01 $a8 $c1
    add hl, de                                    ; $6ed8: $19
    nop                                           ; $6ed9: $00
    ld [hl], b                                    ; $6eda: $70
    rst $18                                       ; $6edb: $df
    ld a, h                                       ; $6edc: $7c
    rst $38                                       ; $6edd: $ff
    rst $08                                       ; $6ede: $cf
    ccf                                           ; $6edf: $3f
    db $e3                                        ; $6ee0: $e3
    rra                                           ; $6ee1: $1f
    ldh a, [rIF]                                  ; $6ee2: $f0 $0f
    db $fc                                        ; $6ee4: $fc
    add e                                         ; $6ee5: $83
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    ldh [$7f], a                                  ; $6ee8: $e0 $7f
    ld hl, sp+$7f                                 ; $6eea: $f8 $7f
    rlca                                          ; $6eec: $07
    db $fd                                        ; $6eed: $fd
    rra                                           ; $6eee: $1f
    rst $38                                       ; $6eef: $ff
    ld sp, hl                                     ; $6ef0: $f9
    rst $38                                       ; $6ef1: $ff
    pop hl                                        ; $6ef2: $e1
    cp $07                                        ; $6ef3: $fe $07
    ld hl, sp+$1f                                 ; $6ef5: $f8 $1f
    pop hl                                        ; $6ef7: $e1
    cp $b4                                        ; $6ef8: $fe $b4
    ldh [$1f], a                                  ; $6efa: $e0 $1f
    rst $38                                       ; $6efc: $ff
    ccf                                           ; $6efd: $3f
    ldh [rNR32], a                                ; $6efe: $e0 $1c
    ldh a, [rNR13]                                ; $6f00: $f0 $13
    rst $18                                       ; $6f02: $df
    ldh a, [$2f]                                  ; $6f03: $f0 $2f
    ldh [$4c], a                                  ; $6f05: $e0 $4c
    ret nz                                        ; $6f07: $c0

    add b                                         ; $6f08: $80
    db $e3                                        ; $6f09: $e3
    jr c, jr_075_6f1b                             ; $6f0a: $38 $0f

    rst $38                                       ; $6f0c: $ff
    cp $07                                        ; $6f0d: $fe $07
    rlca                                          ; $6f0f: $07
    ld bc, $00b7                                  ; $6f10: $01 $b7 $00
    or a                                          ; $6f13: $b7
    nop                                           ; $6f14: $00
    rst $30                                       ; $6f15: $f7
    rst $28                                       ; $6f16: $ef
    nop                                           ; $6f17: $00
    rra                                           ; $6f18: $1f
    ret nc                                        ; $6f19: $d0

    ret nz                                        ; $6f1a: $c0

jr_075_6f1b:
    ld bc, $0fff                                  ; $6f1b: $01 $ff $0f
    rst $38                                       ; $6f1e: $ff
    rst $28                                       ; $6f1f: $ef
    rst $38                                       ; $6f20: $ff
    ld hl, sp-$01                                 ; $6f21: $f8 $ff
    ld b, b                                       ; $6f23: $40
    cp $e0                                        ; $6f24: $fe $e0
    ld h, h                                       ; $6f26: $64
    rst $38                                       ; $6f27: $ff
    ret c                                         ; $6f28: $d8

    rst $38                                       ; $6f29: $ff
    rst $28                                       ; $6f2a: $ef
    jr z, @+$01                                   ; $6f2b: $28 $ff

    add $ff                                       ; $6f2d: $c6 $ff
    or $ff                                        ; $6f2f: $f6 $ff
    inc h                                         ; $6f31: $24
    rst $28                                       ; $6f32: $ef
    rst $38                                       ; $6f33: $ff
    inc b                                         ; $6f34: $04
    rst $38                                       ; $6f35: $ff
    inc e                                         ; $6f36: $1c
    ld d, e                                       ; $6f37: $53
    ret nz                                        ; $6f38: $c0

    inc l                                         ; $6f39: $2c
    rst $38                                       ; $6f3a: $ff
    db $fc                                        ; $6f3b: $fc
    ld a, a                                       ; $6f3c: $7f
    cp h                                          ; $6f3d: $bc
    nop                                           ; $6f3e: $00
    rst $18                                       ; $6f3f: $df
    nop                                           ; $6f40: $00
    ldh [rP1], a                                  ; $6f41: $e0 $00
    db $ed                                        ; $6f43: $ed
    cp $e0                                        ; $6f44: $fe $e0
    rst $30                                       ; $6f46: $f7
    rst $30                                       ; $6f47: $f7
    nop                                           ; $6f48: $00
    ld hl, sp+$14                                 ; $6f49: $f8 $14
    ret nz                                        ; $6f4b: $c0

    ld a, $03                                     ; $6f4c: $3e $03
    ei                                            ; $6f4e: $fb
    ld bc, $07b9                                  ; $6f4f: $01 $b9 $07
    jp nz, $c0e0                                  ; $6f52: $c2 $e0 $c0

    db $e4                                        ; $6f55: $e4
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    rst $38                                       ; $6f58: $ff
    ld e, h                                       ; $6f59: $5c
    ldh [$7e], a                                  ; $6f5a: $e0 $7e
    cp $c0                                        ; $6f5c: $fe $c0
    ldh [rNR41], a                                ; $6f5e: $e0 $20
    rst $38                                       ; $6f60: $ff
    add hl, hl                                    ; $6f61: $29
    rst $38                                       ; $6f62: $ff
    ld d, $ef                                     ; $6f63: $16 $ef
    ld [$1fbf], sp                                ; $6f65: $08 $bf $1f
    ld a, [$f9ff]                                 ; $6f68: $fa $ff $f9
    rst $38                                       ; $6f6b: $ff
    ld de, $c0af                                  ; $6f6c: $11 $af $c0
    inc c                                         ; $6f6f: $0c
    cp $13                                        ; $6f70: $fe $13
    ret nz                                        ; $6f72: $c0

    jr c, @+$01                                   ; $6f73: $38 $ff

    ld h, [hl]                                    ; $6f75: $66
    ccf                                           ; $6f76: $3f
    ld [bc], a                                    ; $6f77: $02
    ei                                            ; $6f78: $fb
    ld [bc], a                                    ; $6f79: $02
    and a                                         ; $6f7a: $a7
    rlca                                          ; $6f7b: $07
    ld [bc], a                                    ; $6f7c: $02
    or a                                          ; $6f7d: $b7
    adc [hl]                                      ; $6f7e: $8e
    ldh [$d0], a                                  ; $6f7f: $e0 $d0
    db $e3                                        ; $6f81: $e3
    ret nz                                        ; $6f82: $c0

    sub e                                         ; $6f83: $93
    ldh [rIE], a                                  ; $6f84: $e0 $ff
    db $fd                                        ; $6f86: $fd
    ld e, a                                       ; $6f87: $5f
    sub b                                         ; $6f88: $90
    ldh [$e0], a                                  ; $6f89: $e0 $e0
    rst $38                                       ; $6f8b: $ff
    ld hl, $13ff                                  ; $6f8c: $21 $ff $13
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    ld a, b                                       ; $6f91: $78
    rlca                                          ; $6f92: $07
    rst $38                                       ; $6f93: $ff
    ccf                                           ; $6f94: $3f
    cp $ff                                        ; $6f95: $fe $ff
    db $f4                                        ; $6f97: $f4
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    dec b                                         ; $6f9a: $05
    rst $38                                       ; $6f9b: $ff
    ld c, $ff                                     ; $6f9c: $0e $ff
    ld c, b                                       ; $6f9e: $48
    rst $38                                       ; $6f9f: $ff
    sbc b                                         ; $6fa0: $98
    rst $38                                       ; $6fa1: $ff
    db $dd                                        ; $6fa2: $dd
    ld [hl], $90                                  ; $6fa3: $36 $90
    ldh [$80], a                                  ; $6fa5: $e0 $80
    ldh [$80], a                                  ; $6fa7: $e0 $80
    sub b                                         ; $6fa9: $90
    rst $20                                       ; $6faa: $e7
    dec a                                         ; $6fab: $3d
    nop                                           ; $6fac: $00
    ei                                            ; $6fad: $fb
    ei                                            ; $6fae: $fb
    nop                                           ; $6faf: $00
    sub b                                         ; $6fb0: $90
    pop hl                                        ; $6fb1: $e1
    cp a                                          ; $6fb2: $bf
    rra                                           ; $6fb3: $1f
    rst $38                                       ; $6fb4: $ff
    ld [hl+], a                                   ; $6fb5: $22
    ld a, a                                       ; $6fb6: $7f
    rst $38                                       ; $6fb7: $ff
    ld c, [hl]                                    ; $6fb8: $4e
    rst $38                                       ; $6fb9: $ff
    ld b, e                                       ; $6fba: $43
    rst $38                                       ; $6fbb: $ff
    cp a                                          ; $6fbc: $bf
    rst $38                                       ; $6fbd: $ff
    rst $28                                       ; $6fbe: $ef
    rst $38                                       ; $6fbf: $ff
    ld a, a                                       ; $6fc0: $7f
    and b                                         ; $6fc1: $a0
    rst $38                                       ; $6fc2: $ff
    ld h, c                                       ; $6fc3: $61
    rst $38                                       ; $6fc4: $ff
    jr nc, @+$01                                  ; $6fc5: $30 $ff

    sub e                                         ; $6fc7: $93
    ret nc                                        ; $6fc8: $d0

    ldh [$7f], a                                  ; $6fc9: $e0 $7f
    db $fc                                        ; $6fcb: $fc
    rst $38                                       ; $6fcc: $ff
    cp $ff                                        ; $6fcd: $fe $ff
    di                                            ; $6fcf: $f3
    rst $38                                       ; $6fd0: $ff
    ld [bc], a                                    ; $6fd1: $02
    ld d, b                                       ; $6fd2: $50
    ldh [rIE], a                                  ; $6fd3: $e0 $ff
    ld b, a                                       ; $6fd5: $47
    rst $38                                       ; $6fd6: $ff
    adc h                                         ; $6fd7: $8c
    rst $38                                       ; $6fd8: $ff
    ld e, $e7                                     ; $6fd9: $1e $e7
    ld a, l                                       ; $6fdb: $7d
    cp h                                          ; $6fdc: $bc
    ccf                                           ; $6fdd: $3f
    add b                                         ; $6fde: $80
    rst $18                                       ; $6fdf: $df
    ld b, b                                       ; $6fe0: $40
    ldh [rLCDC], a                                ; $6fe1: $e0 $40
    db $ed                                        ; $6fe3: $ed
    cp [hl]                                       ; $6fe4: $be
    ldh [$50], a                                  ; $6fe5: $e0 $50
    db $e3                                        ; $6fe7: $e3
    cp [hl]                                       ; $6fe8: $be
    and [hl]                                      ; $6fe9: $a6
    ldh [$08], a                                  ; $6fea: $e0 $08
    rst $38                                       ; $6fec: $ff
    ld a, [bc]                                    ; $6fed: $0a
    rst $38                                       ; $6fee: $ff
    add hl, bc                                    ; $6fef: $09
    ld [hl], b                                    ; $6ff0: $70
    ldh [rTAC], a                                 ; $6ff1: $e0 $07
    sbc $54                                       ; $6ff3: $de $54
    and c                                         ; $6ff5: $a1
    rst $28                                       ; $6ff6: $ef
    and a                                         ; $6ff7: $a7
    ld a, [$80f3]                                 ; $6ff8: $fa $f3 $80
    ldh [$aa], a                                  ; $6ffb: $e0 $aa
    rst $38                                       ; $6ffd: $ff
    ld a, a                                       ; $6ffe: $7f
    call nz, $84ff                                ; $6fff: $c4 $ff $84
    rst $38                                       ; $7002: $ff
    ld b, h                                       ; $7003: $44

jr_075_7004:
    rst $38                                       ; $7004: $ff
    inc a                                         ; $7005: $3c
    db $10                                        ; $7006: $10
    ldh [$d7], a                                  ; $7007: $e0 $d7
    add e                                         ; $7009: $83
    rst $38                                       ; $700a: $ff
    add c                                         ; $700b: $81
    cp $e0                                        ; $700c: $fe $e0
    cp a                                          ; $700e: $bf
    xor h                                         ; $700f: $ac
    ldh [rNR42], a                                ; $7010: $e0 $21
    rst $38                                       ; $7012: $ff
    push af                                       ; $7013: $f5
    ld b, c                                       ; $7014: $41
    ld [$26e0], sp                                ; $7015: $08 $e0 $26
    sbc d                                         ; $7018: $9a
    ldh [$99], a                                  ; $7019: $e0 $99
    rst $38                                       ; $701b: $ff
    adc e                                         ; $701c: $8b
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    and [hl]                                      ; $701f: $a6
    rst $38                                       ; $7020: $ff
    ld e, b                                       ; $7021: $58
    rst $38                                       ; $7022: $ff
    jr c, jr_075_7004                             ; $7023: $38 $df

    rra                                           ; $7025: $1f
    or [hl]                                       ; $7026: $b6
    ld a, a                                       ; $7027: $7f
    ccf                                           ; $7028: $3f
    rst $38                                       ; $7029: $ff
    ld e, l                                       ; $702a: $5d
    rst $38                                       ; $702b: $ff
    cp b                                          ; $702c: $b8
    rst $38                                       ; $702d: $ff
    db $ec                                        ; $702e: $ec
    rst $10                                       ; $702f: $d7
    and d                                         ; $7030: $a2
    sub a                                         ; $7031: $97
    ld h, b                                       ; $7032: $60
    cp a                                          ; $7033: $bf
    pop hl                                        ; $7034: $e1
    xor e                                         ; $7035: $ab
    and b                                         ; $7036: $a0
    ret nz                                        ; $7037: $c0

    ld b, [hl]                                    ; $7038: $46
    ldh [$e0], a                                  ; $7039: $e0 $e0
    pop bc                                        ; $703b: $c1
    ld [$9f88], sp                                ; $703c: $08 $88 $9f
    ret nz                                        ; $703f: $c0

    ld bc, $fec1                                  ; $7040: $01 $c1 $fe
    db $e3                                        ; $7043: $e3
    ret nz                                        ; $7044: $c0

    cp d                                          ; $7045: $ba
    jp nz, $80fa                                  ; $7046: $c2 $fa $80

    ld [hl], b                                    ; $7049: $70
    ldh [$03], a                                  ; $704a: $e0 $03
    ld a, [$c0be]                                 ; $704c: $fa $be $c0
    inc b                                         ; $704f: $04
    di                                            ; $7050: $f3
    and b                                         ; $7051: $a0
    ld de, $9cf7                                  ; $7052: $11 $f7 $9c
    di                                            ; $7055: $f3
    rra                                           ; $7056: $1f
    db $eb                                        ; $7057: $eb
    ei                                            ; $7058: $fb
    ld c, $ac                                     ; $7059: $0e $ac
    ldh [$a2], a                                  ; $705b: $e0 $a2
    ld b, h                                       ; $705d: $44
    ldh [rLCDC], a                                ; $705e: $e0 $40
    rst $38                                       ; $7060: $ff
    ret nz                                        ; $7061: $c0

    rst $38                                       ; $7062: $ff
    rst $18                                       ; $7063: $df
    ld [hl], c                                    ; $7064: $71
    sbc a                                         ; $7065: $9f
    ldh a, [$bf]                                  ; $7066: $f0 $bf
    jp hl                                         ; $7068: $e9


    rst $38                                       ; $7069: $ff
    jp z, $9e1e                                   ; $706a: $ca $1e $9e

    ret nz                                        ; $706d: $c0

    ld b, $ff                                     ; $706e: $06 $ff
    dec b                                         ; $7070: $05
    cp $6c                                        ; $7071: $fe $6c
    pop hl                                        ; $7073: $e1
    ret nz                                        ; $7074: $c0

    pop hl                                        ; $7075: $e1
    ret nz                                        ; $7076: $c0

    pop bc                                        ; $7077: $c1
    rst $38                                       ; $7078: $ff
    jr nz, @+$01                                  ; $7079: $20 $ff

    ret nc                                        ; $707b: $d0

    ccf                                           ; $707c: $3f
    ldh a, [rIE]                                  ; $707d: $f0 $ff
    ld c, a                                       ; $707f: $4f
    rst $38                                       ; $7080: $ff
    jp hl                                         ; $7081: $e9


    ld b, d                                       ; $7082: $42
    adc b                                         ; $7083: $88
    ret nz                                        ; $7084: $c0

    and h                                         ; $7085: $a4
    pop hl                                        ; $7086: $e1

jr_075_7087:
    inc b                                         ; $7087: $04
    ld c, [hl]                                    ; $7088: $4e
    pop hl                                        ; $7089: $e1
    ei                                            ; $708a: $fb
    rst $18                                       ; $708b: $df
    rst $38                                       ; $708c: $ff
    ld a, a                                       ; $708d: $7f
    rst $10                                       ; $708e: $d7
    rst $38                                       ; $708f: $ff
    ld d, d                                       ; $7090: $52
    rst $38                                       ; $7091: $ff
    ld h, d                                       ; $7092: $62
    rst $38                                       ; $7093: $ff
    ld h, e                                       ; $7094: $63
    adc $c0                                       ; $7095: $ce $c0
    ld a, a                                       ; $7097: $7f
    jr nz, @+$01                                  ; $7098: $20 $ff

    jr c, @-$2f                                   ; $709a: $38 $cf

    ld hl, sp-$21                                 ; $709c: $f8 $df
    ld a, b                                       ; $709e: $78
    ld h, b                                       ; $709f: $60
    ret nz                                        ; $70a0: $c0

    and l                                         ; $70a1: $a5
    dec b                                         ; $70a2: $05
    rst $10                                       ; $70a3: $d7
    and b                                         ; $70a4: $a0
    rlca                                          ; $70a5: $07
    sbc b                                         ; $70a6: $98
    ld [c], a                                     ; $70a7: $e2
    call nz, Call_075_40e1                        ; $70a8: $c4 $e1 $40
    xor $c0                                       ; $70ab: $ee $c0
    db $10                                        ; $70ad: $10
    cp $93                                        ; $70ae: $fe $93
    add b                                         ; $70b0: $80
    add sp, $1f                                   ; $70b1: $e8 $1f
    ld hl, sp-$01                                 ; $70b3: $f8 $ff
    nop                                           ; $70b5: $00
    ccf                                           ; $70b6: $3f
    nop                                           ; $70b7: $00
    ld sp, hl                                     ; $70b8: $f9
    rst $08                                       ; $70b9: $cf
    ld d, h                                       ; $70ba: $54
    ret nz                                        ; $70bb: $c0

    adc b                                         ; $70bc: $88
    add e                                         ; $70bd: $83
    add hl, de                                    ; $70be: $19
    nop                                           ; $70bf: $00
    rst $28                                       ; $70c0: $ef
    inc b                                         ; $70c1: $04
    rst $30                                       ; $70c2: $f7
    push hl                                       ; $70c3: $e5
    rlca                                          ; $70c4: $07
    sbc d                                         ; $70c5: $9a
    ldh [rTAC], a                                 ; $70c6: $e0 $07
    dec b                                         ; $70c8: $05
    and b                                         ; $70c9: $a0
    ld bc, $03a1                                  ; $70ca: $01 $a1 $03
    rst $38                                       ; $70cd: $ff
    ld a, [$4577]                                 ; $70ce: $fa $77 $45
    rst $38                                       ; $70d1: $ff
    dec e                                         ; $70d2: $1d
    sub c                                         ; $70d3: $91
    ret nz                                        ; $70d4: $c0

    dec c                                         ; $70d5: $0d
    rst $38                                       ; $70d6: $ff
    pop af                                        ; $70d7: $f1
    dec de                                        ; $70d8: $1b
    ret nz                                        ; $70d9: $c0

    sbc [hl]                                      ; $70da: $9e
    rst $38                                       ; $70db: $ff
    ldh [rP1], a                                  ; $70dc: $e0 $00
    db $fc                                        ; $70de: $fc
    nop                                           ; $70df: $00
    di                                            ; $70e0: $f3
    db $f4                                        ; $70e1: $f4
    and b                                         ; $70e2: $a0
    jr nz, jr_075_7087                            ; $70e3: $20 $a2

    add b                                         ; $70e5: $80
    rst $28                                       ; $70e6: $ef
    sbc b                                         ; $70e7: $98
    add b                                         ; $70e8: $80
    rst $38                                       ; $70e9: $ff
    rlca                                          ; $70ea: $07
    ret nz                                        ; $70eb: $c0

    db $eb                                        ; $70ec: $eb
    rst $38                                       ; $70ed: $ff
    or b                                          ; $70ee: $b0
    rst $28                                       ; $70ef: $ef
    ei                                            ; $70f0: $fb
    ccf                                           ; $70f1: $3f
    ldh [$fe], a                                  ; $70f2: $e0 $fe
    ldh [$e6], a                                  ; $70f4: $e0 $e6
    ccf                                           ; $70f6: $3f
    ld a, [c]                                     ; $70f7: $f2
    rra                                           ; $70f8: $1f
    pop af                                        ; $70f9: $f1
    cp e                                          ; $70fa: $bb
    rra                                           ; $70fb: $1f
    rst $38                                       ; $70fc: $ff
    ld a, d                                       ; $70fd: $7a
    add b                                         ; $70fe: $80
    db $ec                                        ; $70ff: $ec
    rst $38                                       ; $7100: $ff
    ld [hl], c                                    ; $7101: $71
    inc c                                         ; $7102: $0c
    ret nz                                        ; $7103: $c0

    adc e                                         ; $7104: $8b
    rst $28                                       ; $7105: $ef
    cp $4f                                        ; $7106: $fe $4f
    rst $38                                       ; $7108: $ff
    ld sp, $e1c0                                  ; $7109: $31 $c0 $e1
    add b                                         ; $710c: $80
    db $fc                                        ; $710d: $fc
    add b                                         ; $710e: $80
    db $fc                                        ; $710f: $fc
    ret nz                                        ; $7110: $c0

    and $e0                                       ; $7111: $e6 $e0

jr_075_7113:
    add c                                         ; $7113: $81
    db $10                                        ; $7114: $10
    ccf                                           ; $7115: $3f
    jr nz, @+$01                                  ; $7116: $20 $ff

    ld [hl+], a                                   ; $7118: $22
    rst $38                                       ; $7119: $ff
    ld a, a                                       ; $711a: $7f
    dec de                                        ; $711b: $1b
    ccf                                           ; $711c: $3f
    add hl, bc                                    ; $711d: $09
    rla                                           ; $711e: $17
    rlca                                          ; $711f: $07
    add hl, de                                    ; $7120: $19
    ld bc, $e0c0                                  ; $7121: $01 $c0 $e0
    xor c                                         ; $7124: $a9
    ret nz                                        ; $7125: $c0

    dec a                                         ; $7126: $3d
    and b                                         ; $7127: $a0
    db $db                                        ; $7128: $db
    ld h, b                                       ; $7129: $60
    inc b                                         ; $712a: $04
    sbc h                                         ; $712b: $9c
    add b                                         ; $712c: $80
    ld bc, $c097                                  ; $712d: $01 $97 $c0
    db $fc                                        ; $7130: $fc
    ei                                            ; $7131: $fb
    rlca                                          ; $7132: $07
    db $fd                                        ; $7133: $fd
    and e                                         ; $7134: $a3
    and b                                         ; $7135: $a0
    ld [bc], a                                    ; $7136: $02
    rst $38                                       ; $7137: $ff
    ld b, l                                       ; $7138: $45
    rst $38                                       ; $7139: $ff
    add l                                         ; $713a: $85
    cp $8a                                        ; $713b: $fe $8a
    add b                                         ; $713d: $80
    inc bc                                        ; $713e: $03
    cp $df                                        ; $713f: $fe $df
    ldh a, [$3c]                                  ; $7141: $f0 $3c
    ldh [$f3], a                                  ; $7143: $e0 $f3
    cp $a0                                        ; $7145: $fe $a0
    adc b                                         ; $7147: $88
    rst $00                                       ; $7148: $c7
    ld a, a                                       ; $7149: $7f
    ret nz                                        ; $714a: $c0

    ld a, a                                       ; $714b: $7f
    add h                                         ; $714c: $84
    rst $38                                       ; $714d: $ff
    add d                                         ; $714e: $82
    cp $6d                                        ; $714f: $fe $6d
    ret nz                                        ; $7151: $c0

    pop bc                                        ; $7152: $c1
    ld a, a                                       ; $7153: $7f
    pop hl                                        ; $7154: $e1
    ccf                                           ; $7155: $3f
    rst $38                                       ; $7156: $ff
    ccf                                           ; $7157: $3f
    rst $38                                       ; $7158: $ff
    ld [$c2b7], a                                 ; $7159: $ea $b7 $c2
    ld b, d                                       ; $715c: $42
    ld d, e                                       ; $715d: $53
    ret nz                                        ; $715e: $c0

    ld b, $5a                                     ; $715f: $06 $5a
    add c                                         ; $7161: $81
    cp $4f                                        ; $7162: $fe $4f
    ld hl, sp+$3f                                 ; $7164: $f8 $3f
    sbc h                                         ; $7166: $9c
    ldh a, [$33]                                  ; $7167: $f0 $33
    ldh [$6f], a                                  ; $7169: $e0 $6f
    ret nz                                        ; $716b: $c0

    jr nc, jr_075_7113                            ; $716c: $30 $a5

    ldh [$a5], a                                  ; $716e: $e0 $a5
    inc a                                         ; $7170: $3c
    jr nc, @-$5a                                  ; $7171: $30 $a4

    and b                                         ; $7173: $a0
    ld h, c                                       ; $7174: $61
    inc bc                                        ; $7175: $03
    db $fc                                        ; $7176: $fc
    rlca                                          ; $7177: $07
    ld hl, sp-$3b                                 ; $7178: $f8 $c5
    ld h, c                                       ; $717a: $61
    pop bc                                        ; $717b: $c1
    ld h, c                                       ; $717c: $61
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    add [hl]                                      ; $7180: $86
    rst $38                                       ; $7181: $ff
    add e                                         ; $7182: $83
    ld a, a                                       ; $7183: $7f
    db $e3                                        ; $7184: $e3
    rra                                           ; $7185: $1f
    ld a, [c]                                     ; $7186: $f2
    sub l                                         ; $7187: $95
    and b                                         ; $7188: $a0
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    ret nz                                        ; $718b: $c0

    rrca                                          ; $718c: $0f
    ldh [$3b], a                                  ; $718d: $e0 $3b
    rst $20                                       ; $718f: $e7
    ld a, a                                       ; $7190: $7f
    add e                                         ; $7191: $83
    jp c, $c00d                                   ; $7192: $da $0d $c0

    rst $38                                       ; $7195: $ff
    dec bc                                        ; $7196: $0b
    ret nz                                        ; $7197: $c0

    rst $38                                       ; $7198: $ff
    ld a, a                                       ; $7199: $7f
    rst $38                                       ; $719a: $ff
    ret nz                                        ; $719b: $c0

    inc b                                         ; $719c: $04
    rst $38                                       ; $719d: $ff
    or e                                          ; $719e: $b3
    cp $81                                        ; $719f: $fe $81
    dec sp                                        ; $71a1: $3b
    ld h, d                                       ; $71a2: $62
    ld h, l                                       ; $71a3: $65
    ld h, c                                       ; $71a4: $61
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    db $10                                        ; $71a7: $10
    and h                                         ; $71a8: $a4
    add b                                         ; $71a9: $80
    rst $38                                       ; $71aa: $ff
    db $ed                                        ; $71ab: $ed
    add b                                         ; $71ac: $80
    rst $30                                       ; $71ad: $f7
    add b                                         ; $71ae: $80
    ld hl, sp-$80                                 ; $71af: $f8 $80
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    cp $80                                        ; $71b3: $fe $80
    and b                                         ; $71b5: $a0
    inc bc                                        ; $71b6: $03
    inc b                                         ; $71b7: $04
    rlca                                          ; $71b8: $07
    cp b                                          ; $71b9: $b8
    rrca                                          ; $71ba: $0f
    cp b                                          ; $71bb: $b8
    rrca                                          ; $71bc: $0f
    rst $30                                       ; $71bd: $f7
    rst $28                                       ; $71be: $ef
    rrca                                          ; $71bf: $0f
    jr @-$4e                                      ; $71c0: $18 $b0

    pop hl                                        ; $71c2: $e1
    cp $ff                                        ; $71c3: $fe $ff
    add h                                         ; $71c5: $84
    ld a, a                                       ; $71c6: $7f
    ld e, a                                       ; $71c7: $5f
    db $e4                                        ; $71c8: $e4
    rra                                           ; $71c9: $1f
    db $fc                                        ; $71ca: $fc
    rla                                           ; $71cb: $17
    db $fc                                        ; $71cc: $fc
    dec [hl]                                      ; $71cd: $35
    ldh [$fc], a                                  ; $71ce: $e0 $fc
    ldh a, [$e2]                                  ; $71d0: $f0 $e2
    rst $38                                       ; $71d2: $ff
    ld b, e                                       ; $71d3: $43
    db $fc                                        ; $71d4: $fc
    ld c, a                                       ; $71d5: $4f
    ldh a, [$7f]                                  ; $71d6: $f0 $7f
    ret nc                                        ; $71d8: $d0

    ld a, a                                       ; $71d9: $7f
    rst $38                                       ; $71da: $ff
    db $fc                                        ; $71db: $fc
    ld b, [hl]                                    ; $71dc: $46
    ldh [$c0], a                                  ; $71dd: $e0 $c0
    ld [c], a                                     ; $71df: $e2
    add b                                         ; $71e0: $80
    ld h, b                                       ; $71e1: $60
    ret nz                                        ; $71e2: $c0

    dec l                                         ; $71e3: $2d
    ldh [$2d], a                                  ; $71e4: $e0 $2d
    rst $18                                       ; $71e6: $df
    ldh [$f7], a                                  ; $71e7: $e0 $f7
    ldh [$38], a                                  ; $71e9: $e0 $38

jr_075_71eb:
    ldh [$c0], a                                  ; $71eb: $e0 $c0
    ld [c], a                                     ; $71ed: $e2
    nop                                           ; $71ee: $00
    rlca                                          ; $71ef: $07
    rst $38                                       ; $71f0: $ff
    ld bc, $03b6                                  ; $71f1: $01 $b6 $03
    or [hl]                                       ; $71f4: $b6
    inc bc                                        ; $71f5: $03
    rst $28                                       ; $71f6: $ef
    inc bc                                        ; $71f7: $03
    ld e, $28                                     ; $71f8: $1e $28
    sbc c                                         ; $71fa: $99
    ld h, b                                       ; $71fb: $60
    ld b, [hl]                                    ; $71fc: $46
    and b                                         ; $71fd: $a0
    cp c                                          ; $71fe: $b9
    ret nz                                        ; $71ff: $c0

    dec b                                         ; $7200: $05
    rrca                                          ; $7201: $0f
    and b                                         ; $7202: $a0
    rst $38                                       ; $7203: $ff
    rst $10                                       ; $7204: $d7
    and b                                         ; $7205: $a0
    ld a, a                                       ; $7206: $7f
    ret nz                                        ; $7207: $c0

    rrca                                          ; $7208: $0f
    ld b, d                                       ; $7209: $42
    rst $38                                       ; $720a: $ff
    ld e, a                                       ; $720b: $5f
    ldh [$0c], a                                  ; $720c: $e0 $0c
    ldh [$c4], a                                  ; $720e: $e0 $c4
    ldh [$c0], a                                  ; $7210: $e0 $c0
    ld [c], a                                     ; $7212: $e2
    xor [hl]                                      ; $7213: $ae
    pop bc                                        ; $7214: $c1
    add h                                         ; $7215: $84

jr_075_7216:
    cp $ea                                        ; $7216: $fe $ea
    adc $4d                                       ; $7218: $ce $4d
    rst $38                                       ; $721a: $ff
    ld d, b                                       ; $721b: $50
    ret z                                         ; $721c: $c8

    ld [hl], b                                    ; $721d: $70
    ld h, c                                       ; $721e: $61
    jp nc, Jump_075_78e6                          ; $721f: $d2 $e6 $78

    ret nz                                        ; $7222: $c0

    add b                                         ; $7223: $80
    add b                                         ; $7224: $80
    ld e, b                                       ; $7225: $58
    ld h, b                                       ; $7226: $60
    sbc b                                         ; $7227: $98
    ld h, c                                       ; $7228: $61
    jr c, jr_075_71eb                             ; $7229: $38 $c0

    ld hl, sp-$80                                 ; $722b: $f8 $80
    cp b                                          ; $722d: $b8
    add c                                         ; $722e: $81
    jr c, jr_075_7216                             ; $722f: $38 $e5

    xor h                                         ; $7231: $ac
    and $33                                       ; $7232: $e6 $33
    ld l, a                                       ; $7234: $6f
    ld bc, $0113                                  ; $7235: $01 $13 $01
    dec de                                        ; $7238: $1b
    cp $e0                                        ; $7239: $fe $e0
    ccf                                           ; $723b: $3f
    ld bc, $8038                                  ; $723c: $01 $38 $80
    rlca                                          ; $723f: $07
    ld bc, $01b7                                  ; $7240: $01 $b7 $01
    ld b, b                                       ; $7243: $40
    ld b, a                                       ; $7244: $47
    ret z                                         ; $7245: $c8

    xor e                                         ; $7246: $ab
    xor b                                         ; $7247: $a8
    call z, $461a                                 ; $7248: $cc $1a $46
    rst $38                                       ; $724b: $ff
    db $ed                                        ; $724c: $ed
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    ei                                            ; $7250: $fb
    rst $38                                       ; $7251: $ff
    nop                                           ; $7252: $00
    cp $e2                                        ; $7253: $fe $e2
    db $10                                        ; $7255: $10
    rst $38                                       ; $7256: $ff
    jr z, @+$01                                   ; $7257: $28 $ff

    inc l                                         ; $7259: $2c
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    ld [hl], l                                    ; $725c: $75
    rst $38                                       ; $725d: $ff
    sub $e5                                       ; $725e: $d6 $e5
    nop                                           ; $7260: $00
    rst $08                                       ; $7261: $cf
    inc bc                                        ; $7262: $03
    rst $38                                       ; $7263: $ff
    xor h                                         ; $7264: $ac
    rrca                                          ; $7265: $0f
    or b                                          ; $7266: $b0
    rra                                           ; $7267: $1f
    and e                                         ; $7268: $a3
    ccf                                           ; $7269: $3f
    rst $08                                       ; $726a: $cf
    ld a, h                                       ; $726b: $7c
    rst $38                                       ; $726c: $ff
    rst $18                                       ; $726d: $df
    ld [hl], b                                    ; $726e: $70
    rst $38                                       ; $726f: $ff
    db $e3                                        ; $7270: $e3
    di                                            ; $7271: $f3
    nop                                           ; $7272: $00
    add [hl]                                      ; $7273: $86
    add b                                         ; $7274: $80
    rst $38                                       ; $7275: $ff

jr_075_7276:
    ld h, h                                       ; $7276: $64
    ldh [rNR14], a                                ; $7277: $e0 $14
    ldh a, [$8c]                                  ; $7279: $f0 $8c
    ld hl, sp-$1c                                 ; $727b: $f8 $e4
    ld a, h                                       ; $727d: $7c
    rst $28                                       ; $727e: $ef
    push af                                       ; $727f: $f5
    dec e                                         ; $7280: $1d
    db $fd                                        ; $7281: $fd
    adc l                                         ; $7282: $8d
    ret nc                                        ; $7283: $d0

    db $e4                                        ; $7284: $e4
    jr nc, jr_075_7276                            ; $7285: $30 $ef

    ld a, $3f                                     ; $7287: $3e $3f
    db $eb                                        ; $7289: $eb
    ld a, a                                       ; $728a: $7f
    set 7, a                                      ; $728b: $cb $ff
    dec h                                         ; $728d: $25
    rst $38                                       ; $728e: $ff
    ret nz                                        ; $728f: $c0

    db $e4                                        ; $7290: $e4
    ld a, [$ffe6]                                 ; $7291: $fa $e6 $ff
    push hl                                       ; $7294: $e5
    nop                                           ; $7295: $00
    call z, $ac00                                 ; $7296: $cc $00 $ac
    nop                                           ; $7299: $00
    cp b                                          ; $729a: $b8
    nop                                           ; $729b: $00
    rst $38                                       ; $729c: $ff
    add e                                         ; $729d: $83
    inc bc                                        ; $729e: $03
    adc h                                         ; $729f: $8c
    rrca                                          ; $72a0: $0f
    ret nc                                        ; $72a1: $d0

    rra                                           ; $72a2: $1f
    db $e3                                        ; $72a3: $e3
    ccf                                           ; $72a4: $3f
    rst $38                                       ; $72a5: $ff
    di                                            ; $72a6: $f3
    nop                                           ; $72a7: $00
    ld b, $00                                     ; $72a8: $06 $00
    inc b                                         ; $72aa: $04
    nop                                           ; $72ab: $00
    ld h, h                                       ; $72ac: $64
    nop                                           ; $72ad: $00
    or a                                          ; $72ae: $b7
    db $f4                                        ; $72af: $f4
    add b                                         ; $72b0: $80
    ld [hl], h                                    ; $72b1: $74
    cp d                                          ; $72b2: $ba
    ldh [$88], a                                  ; $72b3: $e0 $88
    ld hl, sp-$20                                 ; $72b5: $f8 $e0
    and $00                                       ; $72b7: $e6 $00
    cp a                                          ; $72b9: $bf
    add a                                         ; $72ba: $87
    inc bc                                        ; $72bb: $03
    call z, $f00f                                 ; $72bc: $cc $0f $f0
    rra                                           ; $72bf: $1f
    ldh [$e5], a                                  ; $72c0: $e0 $e5
    ld [hl], h                                    ; $72c2: $74
    sbc $de                                       ; $72c3: $de $de
    ldh [$64], a                                  ; $72c5: $e0 $64
    ldh [rNR10], a                                ; $72c7: $e0 $10
    ldh a, [$e0]                                  ; $72c9: $f0 $e0
    add sp, $00                                   ; $72cb: $e8 $00
    rst $00                                       ; $72cd: $c7
    rst $30                                       ; $72ce: $f7
    inc bc                                        ; $72cf: $03
    db $ec                                        ; $72d0: $ec
    rrca                                          ; $72d1: $0f
    ldh [$e8], a                                  ; $72d2: $e0 $e8
    nop                                           ; $72d4: $00
    db $e4                                        ; $72d5: $e4
    add b                                         ; $72d6: $80
    ld h, b                                       ; $72d7: $60
    rst $38                                       ; $72d8: $ff
    ldh [rIE], a                                  ; $72d9: $e0 $ff
    xor c                                         ; $72db: $a9
    rst $38                                       ; $72dc: $ff
    and b                                         ; $72dd: $a0
    rst $38                                       ; $72de: $ff
    ld d, a                                       ; $72df: $57
    ld a, b                                       ; $72e0: $78
    rst $38                                       ; $72e1: $ff
    ld c, a                                       ; $72e2: $4f
    rst $38                                       ; $72e3: $ff
    daa                                           ; $72e4: $27
    ccf                                           ; $72e5: $3f
    inc sp                                        ; $72e6: $33
    rra                                           ; $72e7: $1f
    add hl, de                                    ; $72e8: $19
    ld a, a                                       ; $72e9: $7f
    rst $38                                       ; $72ea: $ff
    ld de, $8ffc                                  ; $72eb: $11 $fc $8f
    ldh a, [rIE]                                  ; $72ee: $f0 $ff
    add e                                         ; $72f0: $83
    rst $38                                       ; $72f1: $ff
    rra                                           ; $72f2: $1f
    db $fd                                        ; $72f3: $fd
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    ldh [$f3], a                                  ; $72f6: $e0 $f3
    rst $38                                       ; $72f8: $ff
    ld a, [c]                                     ; $72f9: $f2
    rst $38                                       ; $72fa: $ff
    ld c, h                                       ; $72fb: $4c
    ld a, a                                       ; $72fc: $7f
    cp a                                          ; $72fd: $bf
    db $e3                                        ; $72fe: $e3
    rra                                           ; $72ff: $1f
    ld a, [$ff87]                                 ; $7300: $fa $87 $ff
    ldh a, [$f0]                                  ; $7303: $f0 $f0
    pop hl                                        ; $7305: $e1
    sbc a                                         ; $7306: $9f
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    sbc l                                         ; $7309: $9d
    rst $38                                       ; $730a: $ff
    ld h, l                                       ; $730b: $65
    add c                                         ; $730c: $81
    rst $38                                       ; $730d: $ff
    add e                                         ; $730e: $83
    cp $ff                                        ; $730f: $fe $ff
    rst $20                                       ; $7311: $e7
    db $fc                                        ; $7312: $fc
    inc h                                         ; $7313: $24
    db $fc                                        ; $7314: $fc
    call $fcf8                                    ; $7315: $cd $f8 $fc
    ld hl, sp-$11                                 ; $7318: $f8 $ef
    db $fc                                        ; $731a: $fc
    adc b                                         ; $731b: $88
    ld hl, sp+$10                                 ; $731c: $f8 $10
    db $10                                        ; $731e: $10
    db $e3                                        ; $731f: $e3
    inc b                                         ; $7320: $04
    nop                                           ; $7321: $00
    rst $38                                       ; $7322: $ff
    ld a, a                                       ; $7323: $7f
    inc c                                         ; $7324: $0c
    rra                                           ; $7325: $1f
    inc de                                        ; $7326: $13
    ld e, $17                                     ; $7327: $1e $17
    ld a, a                                       ; $7329: $7f
    daa                                           ; $732a: $27
    ld a, [de]                                    ; $732b: $1a
    ld [c], a                                     ; $732c: $e2
    db $ed                                        ; $732d: $ed
    ld h, e                                       ; $732e: $63
    cp d                                          ; $732f: $ba
    ldh [$bf], a                                  ; $7330: $e0 $bf
    jp $e2ba                                      ; $7332: $c3 $ba $e2


jr_075_7335:
    db $e4                                        ; $7335: $e4
    ld a, h                                       ; $7336: $7c
    rst $30                                       ; $7337: $f7
    ld a, a                                       ; $7338: $7f
    inc e                                         ; $7339: $1c
    rst $38                                       ; $733a: $ff
    adc h                                         ; $733b: $8c
    ld a, a                                       ; $733c: $7f
    ld [c], a                                     ; $733d: $e2
    rra                                           ; $733e: $1f
    ei                                            ; $733f: $fb
    cp d                                          ; $7340: $ba
    db $e4                                        ; $7341: $e4
    cp $e0                                        ; $7342: $fe $e0
    jp nz, Jump_000_00f8                          ; $7344: $c2 $f8 $00

    push hl                                       ; $7347: $e5
    ldh [$9c], a                                  ; $7348: $e0 $9c
    ldh a, [$5c]                                  ; $734a: $f0 $5c
    rst $20                                       ; $734c: $e7
    ldh a, [$c8]                                  ; $734d: $f0 $c8
    ld hl, sp-$40                                 ; $734f: $f8 $c0
    push hl                                       ; $7351: $e5
    jr z, jr_075_7335                             ; $7352: $28 $e1

    dec c                                         ; $7354: $0d
    dec c                                         ; $7355: $0d
    ld a, [hl]                                    ; $7356: $7e
    di                                            ; $7357: $f3
    inc de                                        ; $7358: $13
    db $e3                                        ; $7359: $e3
    ret c                                         ; $735a: $d8

    jp $e4be                                      ; $735b: $c3 $be $e4


    rrca                                          ; $735e: $0f
    rst $38                                       ; $735f: $ff
    adc h                                         ; $7360: $8c
    ld hl, sp-$37                                 ; $7361: $f8 $c9
    rst $20                                       ; $7363: $e7
    cp [hl]                                       ; $7364: $be
    push hl                                       ; $7365: $e5
    ld a, b                                       ; $7366: $78
    ldh [$e1], a                                  ; $7367: $e0 $e1
    ret nz                                        ; $7369: $c0

    rst $20                                       ; $736a: $e7
    add sp, -$40                                  ; $736b: $e8 $c0
    db $ec                                        ; $736d: $ec
    ldh [$93], a                                  ; $736e: $e0 $93
    sbc b                                         ; $7370: $98
    ldh a, [$c0]                                  ; $7371: $f0 $c0
    jp hl                                         ; $7373: $e9


    add sp, -$3f                                  ; $7374: $e8 $c1
    ldh a, [$dc]                                  ; $7376: $f0 $dc
    ret nz                                        ; $7378: $c0

    ld a, h                                       ; $7379: $7c
    jp hl                                         ; $737a: $e9


    inc d                                         ; $737b: $14
    set 6, b                                      ; $737c: $cb $f0
    adc a                                         ; $737e: $8f
    cp [hl]                                       ; $737f: $be
    jp hl                                         ; $7380: $e9


    cp $c0                                        ; $7381: $fe $c0
    jp hl                                         ; $7383: $e9


    xor b                                         ; $7384: $a8
    pop bc                                        ; $7385: $c1
    ld a, a                                       ; $7386: $7f
    add hl, bc                                    ; $7387: $09
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    ld [$04e7], sp                                ; $738a: $08 $e7 $04
    rlca                                          ; $738d: $07
    inc b                                         ; $738e: $04
    rlca                                          ; $738f: $07
    ld [bc], a                                    ; $7390: $02
    ei                                            ; $7391: $fb
    rst $38                                       ; $7392: $ff
    ld bc, $e0fe                                  ; $7393: $01 $fe $e0
    nop                                           ; $7396: $00
    rst $38                                       ; $7397: $ff
    ld hl, $e0ff                                  ; $7398: $21 $ff $e0
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    ld h, c                                       ; $739d: $61
    rst $38                                       ; $739e: $ff
    ld d, c                                       ; $739f: $51
    rst $38                                       ; $73a0: $ff
    sub c                                         ; $73a1: $91
    rst $38                                       ; $73a2: $ff
    ld [$f7ff], sp                                ; $73a3: $08 $ff $f7

jr_075_73a6:
    ld e, $fb                                     ; $73a6: $1e $fb
    xor a                                         ; $73a8: $af
    rst $38                                       ; $73a9: $ff
    add hl, bc                                    ; $73aa: $09
    rst $38                                       ; $73ab: $ff
    ld c, $ff                                     ; $73ac: $0e $ff
    rst $38                                       ; $73ae: $ff
    inc c                                         ; $73af: $0c
    rst $38                                       ; $73b0: $ff
    inc d                                         ; $73b1: $14
    rst $38                                       ; $73b2: $ff
    ld [de], a                                    ; $73b3: $12
    rst $38                                       ; $73b4: $ff
    ld [hl-], a                                   ; $73b5: $32
    rst $38                                       ; $73b6: $ff
    rst $18                                       ; $73b7: $df
    di                                            ; $73b8: $f3
    cp [hl]                                       ; $73b9: $be
    ld [$10f3], a                                 ; $73ba: $ea $f3 $10
    rst $20                                       ; $73bd: $e7
    jr nz, @+$01                                  ; $73be: $20 $ff

    rst $20                                       ; $73c0: $e7
    jr nz, jr_075_73a6                            ; $73c1: $20 $e3

    ld b, b                                       ; $73c3: $40
    ld hl, sp-$80                                 ; $73c4: $f8 $80
    rst $38                                       ; $73c6: $ff
    add b                                         ; $73c7: $80
    or $14                                        ; $73c8: $f6 $14
    pop bc                                        ; $73ca: $c1
    ld a, a                                       ; $73cb: $7f
    inc hl                                        ; $73cc: $23
    inc d                                         ; $73cd: $14
    ret nz                                        ; $73ce: $c0

    ld de, $191f                                  ; $73cf: $11 $1f $19
    rra                                           ; $73d2: $1f
    rst $18                                       ; $73d3: $df
    ld de, $23ff                                  ; $73d4: $11 $ff $23
    rst $38                                       ; $73d7: $ff
    ld [hl+], a                                   ; $73d8: $22
    db $fc                                        ; $73d9: $fc
    ldh [$f7], a                                  ; $73da: $e0 $f7
    rst $38                                       ; $73dc: $ff
    rst $30                                       ; $73dd: $f7
    ld a, [hl]                                    ; $73de: $7e
    rst $38                                       ; $73df: $ff
    call z, $e0ba                                 ; $73e0: $cc $ba $e0
    jr nz, @+$01                                  ; $73e3: $20 $ff

    db $e3                                        ; $73e5: $e3
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    sub h                                         ; $73e8: $94
    rst $38                                       ; $73e9: $ff
    inc de                                        ; $73ea: $13
    cp $df                                        ; $73eb: $fe $df
    rst $38                                       ; $73ed: $ff
    db $fd                                        ; $73ee: $fd
    rst $38                                       ; $73ef: $ff
    db $fd                                        ; $73f0: $fd
    ld [hl], a                                    ; $73f1: $77
    cp d                                          ; $73f2: $ba
    ldh [$09], a                                  ; $73f3: $e0 $09
    rst $38                                       ; $73f5: $ff
    adc [hl]                                      ; $73f6: $8e
    rst $38                                       ; $73f7: $ff
    ld d, e                                       ; $73f8: $53
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    sub c                                         ; $73fb: $91
    adc e                                         ; $73fc: $8b
    ld hl, sp+$17                                 ; $73fd: $f8 $17
    ldh a, [rNR22]                                ; $73ff: $f0 $17
    ldh a, [$33]                                  ; $7401: $f0 $33
    rst $38                                       ; $7403: $ff
    ldh a, [rNR23]                                ; $7404: $f0 $18
    ldh a, [rIE]                                  ; $7406: $f0 $ff
    add sp, -$01                                  ; $7408: $e8 $ff
    adc b                                         ; $740a: $88
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    adc b                                         ; $740d: $88
    ld a, l                                       ; $740e: $7d
    rla                                           ; $740f: $17
    rst $38                                       ; $7410: $ff
    daa                                           ; $7411: $27
    rst $38                                       ; $7412: $ff
    ld [hl+], a                                   ; $7413: $22
    rra                                           ; $7414: $1f
    ld e, l                                       ; $7415: $5d
    ld de, $e0c0                                  ; $7416: $11 $c0 $e0
    add hl, de                                    ; $7419: $19
    rst $38                                       ; $741a: $ff
    ld de, $e0be                                  ; $741b: $11 $be $e0
    rst $38                                       ; $741e: $ff
    cp [hl]                                       ; $741f: $be
    db $eb                                        ; $7420: $eb
    ld e, a                                       ; $7421: $5f
    cp $ff                                        ; $7422: $fe $ff
    rst $38                                       ; $7424: $ff
    rst $18                                       ; $7425: $df
    cp $be                                        ; $7426: $fe $be
    pop hl                                        ; $7428: $e1
    add hl, hl                                    ; $7429: $29
    halt                                          ; $742a: $76
    ldh [rIE], a                                  ; $742b: $e0 $ff
    adc a                                         ; $742d: $8f
    cp $52                                        ; $742e: $fe $52
    ld d, e                                       ; $7430: $53
    ldh a, [$cf]                                  ; $7431: $f0 $cf
    ld hl, sp-$71                                 ; $7433: $f8 $8f
    cp e                                          ; $7435: $bb
    ld hl, sp+$13                                 ; $7436: $f8 $13
    ret nz                                        ; $7438: $c0

    ldh [$3f], a                                  ; $7439: $e0 $3f
    ldh a, [$1f]                                  ; $743b: $f0 $1f
    cp h                                          ; $743d: $bc
    ldh [$7d], a                                  ; $743e: $e0 $7d
    rst $38                                       ; $7440: $ff
    dec c                                         ; $7441: $0d
    cp $13                                        ; $7442: $fe $13
    db $fd                                        ; $7444: $fd
    rla                                           ; $7445: $17
    ccf                                           ; $7446: $3f
    daa                                           ; $7447: $27
    ccf                                           ; $7448: $3f
    ret                                           ; $7449: $c9


    ld [hl+], a                                   ; $744a: $22
    jp nz, $bce0                                  ; $744b: $c2 $e0 $bc

    ldh [rIF], a                                  ; $744e: $e0 $0f
    ld b, [hl]                                    ; $7450: $46
    pop bc                                        ; $7451: $c1
    ld a, h                                       ; $7452: $7c
    add sp, -$1d                                  ; $7453: $e8 $e3
    rst $38                                       ; $7455: $ff
    db $dd                                        ; $7456: $dd
    db $fc                                        ; $7457: $fc
    cp [hl]                                       ; $7458: $be
    ldh [rIE], a                                  ; $7459: $e0 $ff
    db $fd                                        ; $745b: $fd

jr_075_745c:
    cp $be                                        ; $745c: $fe $be
    pop hl                                        ; $745e: $e1
    add hl, hl                                    ; $745f: $29
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    adc a                                         ; $7462: $8f
    db $e3                                        ; $7463: $e3
    ldh [$97], a                                  ; $7464: $e0 $97
    ldh a, [$57]                                  ; $7466: $f0 $57
    ldh a, [$cb]                                  ; $7468: $f0 $cb
    rst $28                                       ; $746a: $ef
    ld hl, sp-$78                                 ; $746b: $f8 $88
    ld hl, sp+$1f                                 ; $746d: $f8 $1f
    ret nz                                        ; $746f: $c0

    ldh [$3f], a                                  ; $7470: $e0 $3f
    ldh a, [rIE]                                  ; $7472: $f0 $ff
    rst $38                                       ; $7474: $ff
    ld l, [hl]                                    ; $7475: $6e
    rst $38                                       ; $7476: $ff
    ld h, d                                       ; $7477: $62
    cp a                                          ; $7478: $bf
    ld [hl+], a                                   ; $7479: $22
    cp a                                          ; $747a: $bf
    ld [hl+], a                                   ; $747b: $22
    rst $38                                       ; $747c: $ff
    rst $30                                       ; $747d: $f7
    ld b, e                                       ; $747e: $43
    rst $38                                       ; $747f: $ff
    ld b, b                                       ; $7480: $40
    cp $e2                                        ; $7481: $fe $e2
    ld l, d                                       ; $7483: $6a
    cp $0c                                        ; $7484: $fe $0c
    db $fc                                        ; $7486: $fc
    or l                                          ; $7487: $b5
    ld [$e0fe], sp                                ; $7488: $08 $fe $e0
    inc b                                         ; $748b: $04
    cp $e3                                        ; $748c: $fe $e3
    rst $38                                       ; $748e: $ff
    ld b, h                                       ; $748f: $44
    add sp, -$20                                  ; $7490: $e8 $e0
    ld b, e                                       ; $7492: $43
    ei                                            ; $7493: $fb
    rst $38                                       ; $7494: $ff
    inc a                                         ; $7495: $3c
    ld l, b                                       ; $7496: $68
    and [hl]                                      ; $7497: $a6
    ld [$86ff], sp                                ; $7498: $08 $ff $86
    rst $38                                       ; $749b: $ff
    and e                                         ; $749c: $a3
    ei                                            ; $749d: $fb
    rst $38                                       ; $749e: $ff
    ld [c], a                                     ; $749f: $e2
    adc $e6                                       ; $74a0: $ce $e6
    ld [hl-], a                                   ; $74a2: $32
    rst $38                                       ; $74a3: $ff

jr_075_74a4:
    ld [hl], d                                    ; $74a4: $72
    rst $38                                       ; $74a5: $ff

jr_075_74a6:
    db $eb                                        ; $74a6: $eb
    di                                            ; $74a7: $f3
    cp $4e                                        ; $74a8: $fe $4e
    adc $e5                                       ; $74aa: $ce $e5
    ret nc                                        ; $74ac: $d0

    ldh [rDIV], a                                 ; $74ad: $e0 $04
    rst $38                                       ; $74af: $ff
    add h                                         ; $74b0: $84
    rst $38                                       ; $74b1: $ff
    db $dd                                        ; $74b2: $dd
    ld a, b                                       ; $74b3: $78
    jr c, jr_075_745c                             ; $74b4: $38 $a6

    inc hl                                        ; $74b6: $23
    rst $38                                       ; $74b7: $ff
    inc h                                         ; $74b8: $24
    and [hl]                                      ; $74b9: $a6
    ldh [rSTAT], a                                ; $74ba: $e0 $41
    rst $38                                       ; $74bc: $ff
    rst $10                                       ; $74bd: $d7
    ld b, [hl]                                    ; $74be: $46
    rst $38                                       ; $74bf: $ff
    jr c, jr_075_74a6                             ; $74c0: $38 $e4

    add d                                         ; $74c2: $82
    rla                                           ; $74c3: $17
    cp [hl]                                       ; $74c4: $be
    ldh [$8c], a                                  ; $74c5: $e0 $8c
    rst $38                                       ; $74c7: $ff
    rst $10                                       ; $74c8: $d7
    and a                                         ; $74c9: $a7
    rst $38                                       ; $74ca: $ff
    and $8c                                       ; $74cb: $e6 $8c
    db $e4                                        ; $74cd: $e4
    pop de                                        ; $74ce: $d1
    and [hl]                                      ; $74cf: $a6
    ret nz                                        ; $74d0: $c0

    ld [hl], d                                    ; $74d1: $72
    rst $38                                       ; $74d2: $ff
    daa                                           ; $74d3: $27
    set 7, [hl]                                   ; $74d4: $cb $fe
    adc $8c                                       ; $74d6: $ce $8c
    db $e3                                        ; $74d8: $e3
    db $ec                                        ; $74d9: $ec
    ret nz                                        ; $74da: $c0

    ld c, b                                       ; $74db: $48
    cp [hl]                                       ; $74dc: $be
    ldh [$bc], a                                  ; $74dd: $e0 $bc
    rst $20                                       ; $74df: $e7
    xor c                                         ; $74e0: $a9
    ld de, $c086                                  ; $74e1: $11 $86 $c0
    cp h                                          ; $74e4: $bc
    pop hl                                        ; $74e5: $e1
    jr nz, jr_075_74a4                            ; $74e6: $20 $bc

    ldh [rBGP], a                                 ; $74e8: $e0 $47
    cp h                                          ; $74ea: $bc
    ldh [$94], a                                  ; $74eb: $e0 $94
    cp d                                          ; $74ed: $ba
    cp [hl]                                       ; $74ee: $be
    ldh [rNR21], a                                ; $74ef: $e0 $16
    add $c0                                       ; $74f1: $c6 $c0
    xor a                                         ; $74f3: $af
    rst $38                                       ; $74f4: $ff
    and $90                                       ; $74f5: $e6 $90
    ret nz                                        ; $74f7: $c0

    ld b, e                                       ; $74f8: $43
    xor $ac                                       ; $74f9: $ee $ac
    ret nz                                        ; $74fb: $c0

    ret nc                                        ; $74fc: $d0

    rst $38                                       ; $74fd: $ff
    db $d3                                        ; $74fe: $d3
    ld h, d                                       ; $74ff: $62
    ret nz                                        ; $7500: $c0

    ld [$cfff], a                                 ; $7501: $ea $ff $cf
    ld hl, sp+$4a                                 ; $7504: $f8 $4a
    pop hl                                        ; $7506: $e1
    db $ec                                        ; $7507: $ec
    pop bc                                        ; $7508: $c1
    cp h                                          ; $7509: $bc
    xor $00                                       ; $750a: $ee $00
    dec b                                         ; $750c: $05
    ld bc, $01f3                                  ; $750d: $01 $f3 $01
    db $db                                        ; $7510: $db
    rlca                                          ; $7511: $07
    ld bc, $81c8                                  ; $7512: $01 $c8 $81
    rst $38                                       ; $7515: $ff
    ld a, a                                       ; $7516: $7f
    ld b, a                                       ; $7517: $47
    pop bc                                        ; $7518: $c1
    inc b                                         ; $7519: $04
    rst $38                                       ; $751a: $ff
    db $fd                                        ; $751b: $fd
    inc bc                                        ; $751c: $03
    ld de, $87c0                                  ; $751d: $11 $c0 $87
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    ld a, d                                       ; $7522: $7a
    db $fc                                        ; $7523: $fc
    db $fc                                        ; $7524: $fc
    ld a, a                                       ; $7525: $7f
    inc bc                                        ; $7526: $03
    cp $03                                        ; $7527: $fe $03
    cp $01                                        ; $7529: $fe $01
    rst $38                                       ; $752b: $ff
    add c                                         ; $752c: $81
    ld bc, $cfc0                                  ; $752d: $01 $c0 $cf
    jp $fffe                                      ; $7530: $c3 $fe $ff


    cp h                                          ; $7533: $bc
    ld [hl], b                                    ; $7534: $70
    and [hl]                                      ; $7535: $a6
    ret nc                                        ; $7536: $d0

    ldh [rTIMA], a                                ; $7537: $e0 $05
    ld bc, $d09e                                  ; $7539: $01 $9e $d0
    ldh [rLCDC], a                                ; $753c: $e0 $40
    rst $38                                       ; $753e: $ff
    ld a, [hl]                                    ; $753f: $7e
    add c                                         ; $7540: $81
    adc $e8                                       ; $7541: $ce $e8
    xor $c0                                       ; $7543: $ee $c0
    inc b                                         ; $7545: $04
    ld a, c                                       ; $7546: $79
    rst $38                                       ; $7547: $ff
    call z, $cee2                                 ; $7548: $cc $e2 $ce
    db $e4                                        ; $754b: $e4
    ld b, b                                       ; $754c: $40
    rst $38                                       ; $754d: $ff
    ld h, b                                       ; $754e: $60
    rst $18                                       ; $754f: $df
    xor h                                         ; $7550: $ac
    ldh [$6c], a                                  ; $7551: $e0 $6c
    xor [hl]                                      ; $7553: $ae
    and $ba                                       ; $7554: $e6 $ba
    pop bc                                        ; $7556: $c1
    ld [hl], b                                    ; $7557: $70
    adc a                                         ; $7558: $8f
    ret nc                                        ; $7559: $d0

    db $eb                                        ; $755a: $eb
    inc e                                         ; $755b: $1c
    db $e3                                        ; $755c: $e3
    ret nc                                        ; $755d: $d0

    and $bf                                       ; $755e: $e6 $bf
    ld [hl], h                                    ; $7560: $74
    nop                                           ; $7561: $00
    push af                                       ; $7562: $f5
    ld bc, $03e6                                  ; $7563: $01 $e6 $03
    adc a                                         ; $7566: $8f
    and c                                         ; $7567: $a1
    rst $38                                       ; $7568: $ff
    rst $30                                       ; $7569: $f7
    rlca                                          ; $756a: $07
    db $fc                                        ; $756b: $fc
    rlca                                          ; $756c: $07
    sbc c                                         ; $756d: $99
    add b                                         ; $756e: $80
    ld b, d                                       ; $756f: $42
    rst $38                                       ; $7570: $ff
    jp nz, Jump_000_3f3f                          ; $7571: $c2 $3f $3f

    ld [c], a                                     ; $7574: $e2
    rra                                           ; $7575: $1f
    cp $0b                                        ; $7576: $fe $0b
    cp $ff                                        ; $7578: $fe $ff
    ld a, b                                       ; $757a: $78
    ldh [$89], a                                  ; $757b: $e0 $89
    add b                                         ; $757d: $80
    xor a                                         ; $757e: $af
    add h                                         ; $757f: $84
    rst $38                                       ; $7580: $ff
    add a                                         ; $7581: $87
    ld hl, sp+$7c                                 ; $7582: $f8 $7c
    add b                                         ; $7584: $80
    and b                                         ; $7585: $a0
    ld a, [hl]                                    ; $7586: $7e
    add b                                         ; $7587: $80
    add b                                         ; $7588: $80
    db $fc                                        ; $7589: $fc
    ld a, d                                       ; $758a: $7a
    add b                                         ; $758b: $80
    ld c, b                                       ; $758c: $48
    add d                                         ; $758d: $82
    add b                                         ; $758e: $80
    ld h, e                                       ; $758f: $63
    ret nz                                        ; $7590: $c0

    ld a, b                                       ; $7591: $78
    ret nz                                        ; $7592: $c0

    rst $38                                       ; $7593: $ff
    ld d, a                                       ; $7594: $57
    ret nz                                        ; $7595: $c0

    ld a, a                                       ; $7596: $7f
    ret nz                                        ; $7597: $c0

    ld l, c                                       ; $7598: $69
    add b                                         ; $7599: $80
    ld a, d                                       ; $759a: $7a
    ret nc                                        ; $759b: $d0

    db $ec                                        ; $759c: $ec
    cp h                                          ; $759d: $bc
    ret nc                                        ; $759e: $d0

    db $eb                                        ; $759f: $eb
    nop                                           ; $75a0: $00
    ret                                           ; $75a1: $c9


    ld [c], a                                     ; $75a2: $e2
    cp $e9                                        ; $75a3: $fe $e9
    xor [hl]                                      ; $75a5: $ae
    ld l, l                                       ; $75a6: $6d
    sbc [hl]                                      ; $75a7: $9e
    ld h, d                                       ; $75a8: $62
    nop                                           ; $75a9: $00
    and a                                         ; $75aa: $a7
    ld l, [hl]                                    ; $75ab: $6e
    add e                                         ; $75ac: $83
    ret nz                                        ; $75ad: $c0

    add a                                         ; $75ae: $87
    ret c                                         ; $75af: $d8

    ld h, d                                       ; $75b0: $62
    ld h, e                                       ; $75b1: $63
    nop                                           ; $75b2: $00
    db $e3                                        ; $75b3: $e3
    ld e, [hl]                                    ; $75b4: $5e
    add b                                         ; $75b5: $80
    jp nc, $d8e3                                  ; $75b6: $d2 $e3 $d8

    ld h, d                                       ; $75b9: $62
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    ld e, $81                                     ; $75bc: $1e $81
    db $fc                                        ; $75be: $fc
    jp nz, $a2e3                                  ; $75bf: $c2 $e3 $a2

    ld [$80f8], a                                 ; $75c2: $ea $f8 $80
    push hl                                       ; $75c5: $e5
    add b                                         ; $75c6: $80
    call z, $ff80                                 ; $75c7: $cc $80 $ff
    xor h                                         ; $75ca: $ac
    add b                                         ; $75cb: $80
    cp b                                          ; $75cc: $b8
    add b                                         ; $75cd: $80
    add e                                         ; $75ce: $83
    add b                                         ; $75cf: $80
    add a                                         ; $75d0: $87
    add b                                         ; $75d1: $80
    adc a                                         ; $75d2: $8f
    rst $00                                       ; $75d3: $c7
    add b                                         ; $75d4: $80
    db $e3                                        ; $75d5: $e3
    add b                                         ; $75d6: $80
    cp d                                          ; $75d7: $ba
    add d                                         ; $75d8: $82
    db $fc                                        ; $75d9: $fc
    and $88                                       ; $75da: $e6 $88
    jp $ff05                                      ; $75dc: $c3 $05 $ff


    ld bc, $0165                                  ; $75df: $01 $65 $01
    ld [hl], l                                    ; $75e2: $75
    ld bc, $01f5                                  ; $75e3: $01 $f5 $01
    push hl                                       ; $75e6: $e5
    inc de                                        ; $75e7: $13
    ld bc, $9e01                                  ; $75e8: $01 $01 $9e
    add c                                         ; $75eb: $81
    ld e, $68                                     ; $75ec: $1e $68
    inc b                                         ; $75ee: $04
    sub b                                         ; $75ef: $90
    db $ed                                        ; $75f0: $ed
    jr c, @-$78                                   ; $75f1: $38 $86

    adc b                                         ; $75f3: $88
    push hl                                       ; $75f4: $e5
    nop                                           ; $75f5: $00
    add b                                         ; $75f6: $80
    db $ec                                        ; $75f7: $ec
    ld [c], a                                     ; $75f8: $e2
    ld c, h                                       ; $75f9: $4c
    jr c, @-$77                                   ; $75fa: $38 $87

    ld c, b                                       ; $75fc: $48
    push hl                                       ; $75fd: $e5
    rst $38                                       ; $75fe: $ff
    db $ed                                        ; $75ff: $ed
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    ld d, e                                       ; $7603: $53
    halt                                          ; $7604: $76
    rst $00                                       ; $7605: $c7
    halt                                          ; $7606: $76
    ld b, h                                       ; $7607: $44
    ld [hl], a                                    ; $7608: $77
    cp d                                          ; $7609: $ba
    ld [hl], a                                    ; $760a: $77
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    ld l, $78                                     ; $7613: $2e $78
    sub c                                         ; $7615: $91
    ld a, b                                       ; $7616: $78
    or $78                                        ; $7617: $f6 $78
    ld e, c                                       ; $7619: $59
    ld a, c                                       ; $761a: $79
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    cp h                                          ; $7623: $bc
    ld a, c                                       ; $7624: $79
    inc l                                         ; $7625: $2c
    ld a, d                                       ; $7626: $7a
    sbc b                                         ; $7627: $98
    ld a, d                                       ; $7628: $7a
    ld a, [bc]                                    ; $7629: $0a
    ld a, e                                       ; $762a: $7b
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    ld [hl], a                                    ; $7633: $77
    ld a, e                                       ; $7634: $7b
    and $7b                                       ; $7635: $e6 $7b
    ld d, c                                       ; $7637: $51
    ld a, h                                       ; $7638: $7c
    cp l                                          ; $7639: $bd
    ld a, h                                       ; $763a: $7c
    nop                                           ; $763b: $00
    nop                                           ; $763c: $00
    nop                                           ; $763d: $00
    nop                                           ; $763e: $00
    nop                                           ; $763f: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    ld l, $7d                                     ; $7643: $2e $7d
    adc l                                         ; $7645: $8d
    ld a, l                                       ; $7646: $7d
    db $ec                                        ; $7647: $ec
    ld a, l                                       ; $7648: $7d
    ld c, e                                       ; $7649: $4b
    ld a, [hl]                                    ; $764a: $7e
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    nop                                           ; $764d: $00
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    sbc l                                         ; $7653: $9d
    dec c                                         ; $7654: $0d
    rst $38                                       ; $7655: $ff
    pop hl                                        ; $7656: $e1
    ld c, l                                       ; $7657: $4d
    ld c, l                                       ; $7658: $4d
    ld c, l                                       ; $7659: $4d
    ld hl, sp-$1e                                 ; $765a: $f8 $e2
    ei                                            ; $765c: $fb
    db $e3                                        ; $765d: $e3
    dec l                                         ; $765e: $2d
    ldh [$f6], a                                  ; $765f: $e0 $f6
    ldh a, [$e2]                                  ; $7661: $f0 $e2
    pop af                                        ; $7663: $f1
    adc $e8                                       ; $7664: $ce $e8
    pop bc                                        ; $7666: $c1
    db $e4                                        ; $7667: $e4
    cp b                                          ; $7668: $b8
    ldh [rP1], a                                  ; $7669: $e0 $00
    ld bc, $ff02                                  ; $766b: $01 $02 $ff
    ld [bc], a                                    ; $766e: $02
    ld [bc], a                                    ; $766f: $02
    ld c, $0e                                     ; $7670: $0e $0e
    ld c, $0f                                     ; $7672: $0e $0f
    db $10                                        ; $7674: $10
    inc bc                                        ; $7675: $03
    rst $38                                       ; $7676: $ff
    inc b                                         ; $7677: $04
    dec b                                         ; $7678: $05
    dec b                                         ; $7679: $05
    dec b                                         ; $767a: $05
    ld b, $06                                     ; $767b: $06 $06
    ld b, $11                                     ; $767d: $06 $11
    rst $38                                       ; $767f: $ff
    add hl, bc                                    ; $7680: $09
    inc bc                                        ; $7681: $03
    ld b, $07                                     ; $7682: $06 $07
    dec b                                         ; $7684: $05
    jr jr_075_76a0                                ; $7685: $18 $19

    ld b, $ff                                     ; $7687: $06 $ff
    ld [de], a                                    ; $7689: $12
    dec b                                         ; $768a: $05
    add hl, bc                                    ; $768b: $09
    ld [$0406], sp                                ; $768c: $08 $06 $04
    ld [hl+], a                                   ; $768f: $22
    inc hl                                        ; $7690: $23
    rst $38                                       ; $7691: $ff
    inc h                                         ; $7692: $24
    dec h                                         ; $7693: $25
    ld de, $1305                                  ; $7694: $11 $05 $13
    add hl, bc                                    ; $7697: $09
    ld a, [bc]                                    ; $7698: $0a
    ld b, $ff                                     ; $7699: $06 $ff
    ld sp, $3332                                  ; $769b: $31 $32 $33
    inc [hl]                                      ; $769e: $34
    dec b                                         ; $769f: $05

jr_075_76a0:
    inc d                                         ; $76a0: $14
    inc bc                                        ; $76a1: $03
    dec bc                                        ; $76a2: $0b
    rst $38                                       ; $76a3: $ff
    dec b                                         ; $76a4: $05
    ld a, [bc]                                    ; $76a5: $0a
    ld b, c                                       ; $76a6: $41
    ld b, d                                       ; $76a7: $42
    ld b, e                                       ; $76a8: $43
    ld b, h                                       ; $76a9: $44
    inc d                                         ; $76aa: $14
    ld b, $ff                                     ; $76ab: $06 $ff
    dec d                                         ; $76ad: $15
    inc bc                                        ; $76ae: $03
    inc c                                         ; $76af: $0c
    dec c                                         ; $76b0: $0d
    ld c, a                                       ; $76b1: $4f
    ld d, b                                       ; $76b2: $50
    ld d, c                                       ; $76b3: $51
    ld d, d                                       ; $76b4: $52
    rst $38                                       ; $76b5: $ff
    ld d, $17                                     ; $76b6: $16 $17
    add hl, bc                                    ; $76b8: $09
    nop                                           ; $76b9: $00
    ld c, $0e                                     ; $76ba: $0e $0e
    ld e, l                                       ; $76bc: $5d
    ld e, [hl]                                    ; $76bd: $5e
    rra                                           ; $76be: $1f
    ld e, a                                       ; $76bf: $5f
    ld h, b                                       ; $76c0: $60
    ld [bc], a                                    ; $76c1: $02
    ld [bc], a                                    ; $76c2: $02
    stop                                          ; $76c3: $10 $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    cp a                                          ; $76c7: $bf
    dec l                                         ; $76c8: $2d
    dec l                                         ; $76c9: $2d
    ld l, l                                       ; $76ca: $6d
    ld l, l                                       ; $76cb: $6d
    ld l, l                                       ; $76cc: $6d
    dec l                                         ; $76cd: $2d
    rst $38                                       ; $76ce: $ff
    pop hl                                        ; $76cf: $e1
    dec c                                         ; $76d0: $0d
    inc b                                         ; $76d1: $04
    ld a, [$f6e2]                                 ; $76d2: $fa $e2 $f6
    db $e4                                        ; $76d5: $e4
    dec c                                         ; $76d6: $0d
    rst $38                                       ; $76d7: $ff
    ldh [$f3], a                                  ; $76d8: $e0 $f3
    db $e4                                        ; $76da: $e4
    or $e3                                        ; $76db: $f6 $e3
    db $ec                                        ; $76dd: $ec
    rst $30                                       ; $76de: $f7
    jp $fce1                                      ; $76df: $c3 $e1 $fc


    cp h                                          ; $76e2: $bc
    ldh [$ce], a                                  ; $76e3: $e0 $ce
    db $e3                                        ; $76e5: $e3
    ld l, l                                       ; $76e6: $6d
    db $10                                        ; $76e7: $10
    rrca                                          ; $76e8: $0f
    ld c, $0e                                     ; $76e9: $0e $0e
    ld c, $ff                                     ; $76eb: $0e $ff
    ld [bc], a                                    ; $76ed: $02
    ld [bc], a                                    ; $76ee: $02
    ld [bc], a                                    ; $76ef: $02
    ld bc, $0900                                  ; $76f0: $01 $00 $09
    ld de, $ff06                                  ; $76f3: $11 $06 $ff
    ld b, $06                                     ; $76f6: $06 $06
    dec b                                         ; $76f8: $05
    dec b                                         ; $76f9: $05
    dec b                                         ; $76fa: $05
    inc b                                         ; $76fb: $04
    inc bc                                        ; $76fc: $03
    add hl, bc                                    ; $76fd: $09
    rst $38                                       ; $76fe: $ff
    dec b                                         ; $76ff: $05
    ld [de], a                                    ; $7700: $12
    ld b, $1a                                     ; $7701: $06 $1a
    dec de                                        ; $7703: $1b
    dec b                                         ; $7704: $05
    rlca                                          ; $7705: $07
    ld b, $ff                                     ; $7706: $06 $ff
    inc bc                                        ; $7708: $03
    inc de                                        ; $7709: $13
    dec b                                         ; $770a: $05
    ld de, $2726                                  ; $770b: $11 $26 $27
    jr z, jr_075_7739                             ; $770e: $28 $29

    rst $38                                       ; $7710: $ff
    inc b                                         ; $7711: $04
    ld b, $08                                     ; $7712: $06 $08
    inc bc                                        ; $7714: $03
    inc d                                         ; $7715: $14
    dec b                                         ; $7716: $05
    dec [hl]                                      ; $7717: $35
    ld [hl], $ff                                  ; $7718: $36 $ff
    scf                                           ; $771a: $37
    jr c, jr_075_7723                             ; $771b: $38 $06

    ld a, [bc]                                    ; $771d: $0a
    add hl, bc                                    ; $771e: $09
    dec d                                         ; $771f: $15
    ld b, $14                                     ; $7720: $06 $14
    rst $38                                       ; $7722: $ff

jr_075_7723:
    ld b, l                                       ; $7723: $45
    ld b, [hl]                                    ; $7724: $46
    ld b, a                                       ; $7725: $47
    ld c, b                                       ; $7726: $48
    ld a, [bc]                                    ; $7727: $0a
    dec b                                         ; $7728: $05
    dec bc                                        ; $7729: $0b
    add hl, bc                                    ; $772a: $09
    rst $38                                       ; $772b: $ff
    rla                                           ; $772c: $17
    ld d, $53                                     ; $772d: $16 $53
    ld d, h                                       ; $772f: $54
    ld d, l                                       ; $7730: $55
    ld a, [bc]                                    ; $7731: $0a
    dec c                                         ; $7732: $0d
    inc c                                         ; $7733: $0c
    rst $38                                       ; $7734: $ff
    inc bc                                        ; $7735: $03
    db $10                                        ; $7736: $10
    ld [bc], a                                    ; $7737: $02
    ld [bc], a                                    ; $7738: $02

jr_075_7739:
    ld h, c                                       ; $7739: $61
    ld h, d                                       ; $773a: $62
    ld h, e                                       ; $773b: $63
    ld h, h                                       ; $773c: $64
    rlca                                          ; $773d: $07
    ld c, $0e                                     ; $773e: $0e $0e
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    sbc l                                         ; $7744: $9d
    dec c                                         ; $7745: $0d
    rst $38                                       ; $7746: $ff
    pop hl                                        ; $7747: $e1
    ld c, l                                       ; $7748: $4d
    ld c, l                                       ; $7749: $4d
    ld c, l                                       ; $774a: $4d
    ld hl, sp-$1e                                 ; $774b: $f8 $e2
    ei                                            ; $774d: $fb
    db $e3                                        ; $774e: $e3
    dec l                                         ; $774f: $2d
    ret nz                                        ; $7750: $c0

    or $ed                                        ; $7751: $f6 $ed
    db $e3                                        ; $7753: $e3
    jp hl                                         ; $7754: $e9


    ld [c], a                                     ; $7755: $e2
    add sp, -$32                                  ; $7756: $e8 $ce
    add sp, -$3f                                  ; $7758: $e8 $c1
    db $e4                                        ; $775a: $e4
    cp b                                          ; $775b: $b8
    ldh [rP1], a                                  ; $775c: $e0 $00
    ld bc, $02ff                                  ; $775e: $01 $ff $02
    ld [bc], a                                    ; $7761: $02
    ld [bc], a                                    ; $7762: $02
    ld c, $0e                                     ; $7763: $0e $0e
    ld c, $0f                                     ; $7765: $0e $0f
    db $10                                        ; $7767: $10
    rst $38                                       ; $7768: $ff
    inc bc                                        ; $7769: $03
    inc b                                         ; $776a: $04
    dec b                                         ; $776b: $05
    dec b                                         ; $776c: $05
    dec b                                         ; $776d: $05
    ld b, $06                                     ; $776e: $06 $06
    ld b, $ff                                     ; $7770: $06 $ff
    ld de, $0309                                  ; $7772: $11 $09 $03
    ld b, $07                                     ; $7775: $06 $07
    dec b                                         ; $7777: $05
    inc e                                         ; $7778: $1c
    dec e                                         ; $7779: $1d
    rst $38                                       ; $777a: $ff
    ld b, $12                                     ; $777b: $06 $12
    dec b                                         ; $777d: $05
    add hl, bc                                    ; $777e: $09
    ld [$0406], sp                                ; $777f: $08 $06 $04
    ld a, [hl+]                                   ; $7782: $2a
    rst $38                                       ; $7783: $ff
    dec hl                                        ; $7784: $2b
    inc l                                         ; $7785: $2c
    dec h                                         ; $7786: $25
    ld de, $1305                                  ; $7787: $11 $05 $13
    add hl, bc                                    ; $778a: $09
    ld a, [bc]                                    ; $778b: $0a
    rst $38                                       ; $778c: $ff
    ld b, $39                                     ; $778d: $06 $39
    ld a, [hl-]                                   ; $778f: $3a
    dec sp                                        ; $7790: $3b
    inc a                                         ; $7791: $3c
    dec b                                         ; $7792: $05
    inc d                                         ; $7793: $14
    inc bc                                        ; $7794: $03
    rst $38                                       ; $7795: $ff
    dec bc                                        ; $7796: $0b
    dec b                                         ; $7797: $05
    ld a, [bc]                                    ; $7798: $0a
    ld c, c                                       ; $7799: $49
    ld c, d                                       ; $779a: $4a
    ld c, e                                       ; $779b: $4b
    ld c, h                                       ; $779c: $4c
    inc d                                         ; $779d: $14
    rst $38                                       ; $779e: $ff
    ld b, $15                                     ; $779f: $06 $15
    inc bc                                        ; $77a1: $03
    inc c                                         ; $77a2: $0c
    dec c                                         ; $77a3: $0d
    ld d, [hl]                                    ; $77a4: $56
    ld d, a                                       ; $77a5: $57
    ld e, b                                       ; $77a6: $58
    rst $38                                       ; $77a7: $ff
    ld e, c                                       ; $77a8: $59
    ld d, $17                                     ; $77a9: $16 $17
    add hl, bc                                    ; $77ab: $09
    nop                                           ; $77ac: $00
    ld c, $0e                                     ; $77ad: $0e $0e
    ld e, l                                       ; $77af: $5d
    ccf                                           ; $77b0: $3f
    ld e, [hl]                                    ; $77b1: $5e
    ld e, a                                       ; $77b2: $5f
    ld h, b                                       ; $77b3: $60
    ld [bc], a                                    ; $77b4: $02
    ld [bc], a                                    ; $77b5: $02
    stop                                          ; $77b6: $10 $00
    nop                                           ; $77b8: $00
    nop                                           ; $77b9: $00
    sbc l                                         ; $77ba: $9d
    dec c                                         ; $77bb: $0d
    rst $38                                       ; $77bc: $ff
    pop hl                                        ; $77bd: $e1
    ld c, l                                       ; $77be: $4d
    ld c, l                                       ; $77bf: $4d
    ld c, l                                       ; $77c0: $4d
    ld hl, sp-$1e                                 ; $77c1: $f8 $e2
    ei                                            ; $77c3: $fb
    db $e3                                        ; $77c4: $e3
    dec l                                         ; $77c5: $2d
    ldh [$f6], a                                  ; $77c6: $e0 $f6
    ldh a, [$e2]                                  ; $77c8: $f0 $e2
    pop af                                        ; $77ca: $f1
    adc $e8                                       ; $77cb: $ce $e8
    pop bc                                        ; $77cd: $c1
    db $e4                                        ; $77ce: $e4
    cp b                                          ; $77cf: $b8
    ldh [rP1], a                                  ; $77d0: $e0 $00
    ld bc, $ff02                                  ; $77d2: $01 $02 $ff
    ld [bc], a                                    ; $77d5: $02
    ld [bc], a                                    ; $77d6: $02
    ld c, $0e                                     ; $77d7: $0e $0e
    ld c, $0f                                     ; $77d9: $0e $0f
    db $10                                        ; $77db: $10
    inc bc                                        ; $77dc: $03
    rst $38                                       ; $77dd: $ff
    inc b                                         ; $77de: $04
    dec b                                         ; $77df: $05
    dec b                                         ; $77e0: $05
    dec b                                         ; $77e1: $05
    ld b, $06                                     ; $77e2: $06 $06
    ld b, $11                                     ; $77e4: $06 $11
    rst $38                                       ; $77e6: $ff
    add hl, bc                                    ; $77e7: $09
    inc bc                                        ; $77e8: $03
    ld b, $07                                     ; $77e9: $06 $07
    ld e, $1f                                     ; $77eb: $1e $1f
    jr nz, jr_075_7810                            ; $77ed: $20 $21

    rst $38                                       ; $77ef: $ff
    ld [de], a                                    ; $77f0: $12
    dec b                                         ; $77f1: $05
    add hl, bc                                    ; $77f2: $09
    ld [$0406], sp                                ; $77f3: $08 $06 $04
    dec l                                         ; $77f6: $2d
    ld l, $ff                                     ; $77f7: $2e $ff
    cpl                                           ; $77f9: $2f
    jr nc, jr_075_780d                            ; $77fa: $30 $11

    dec b                                         ; $77fc: $05
    inc de                                        ; $77fd: $13
    add hl, bc                                    ; $77fe: $09
    ld a, [bc]                                    ; $77ff: $0a
    ld b, $ff                                     ; $7800: $06 $ff
    dec a                                         ; $7802: $3d
    ld a, $3f                                     ; $7803: $3e $3f
    ld b, b                                       ; $7805: $40
    dec b                                         ; $7806: $05
    inc d                                         ; $7807: $14
    inc bc                                        ; $7808: $03
    dec bc                                        ; $7809: $0b
    rst $38                                       ; $780a: $ff
    dec b                                         ; $780b: $05
    ld a, [bc]                                    ; $780c: $0a

jr_075_780d:
    inc b                                         ; $780d: $04
    ld c, l                                       ; $780e: $4d
    ld c, [hl]                                    ; $780f: $4e

jr_075_7810:
    ld de, $0614                                  ; $7810: $11 $14 $06
    rst $38                                       ; $7813: $ff
    dec d                                         ; $7814: $15
    inc bc                                        ; $7815: $03
    inc c                                         ; $7816: $0c
    dec c                                         ; $7817: $0d
    ld e, d                                       ; $7818: $5a
    ld e, e                                       ; $7819: $5b
    ld e, h                                       ; $781a: $5c
    inc d                                         ; $781b: $14
    rst $38                                       ; $781c: $ff
    ld d, $17                                     ; $781d: $16 $17
    add hl, bc                                    ; $781f: $09
    nop                                           ; $7820: $00
    ld c, $0e                                     ; $7821: $0e $0e
    ld h, l                                       ; $7823: $65
    ld h, [hl]                                    ; $7824: $66
    rra                                           ; $7825: $1f
    ld h, a                                       ; $7826: $67
    ld l, b                                       ; $7827: $68
    ld [bc], a                                    ; $7828: $02
    ld [bc], a                                    ; $7829: $02
    stop                                          ; $782a: $10 $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    rla                                           ; $782e: $17
    dec c                                         ; $782f: $0d
    dec c                                         ; $7830: $0d
    dec l                                         ; $7831: $2d
    cp $e3                                        ; $7832: $fe $e3
    dec l                                         ; $7834: $2d
    or $eb                                        ; $7835: $f6 $eb
    add sp, -$1e                                  ; $7837: $e8 $e2
    push hl                                       ; $7839: $e5
    pop hl                                        ; $783a: $e1
    ret nz                                        ; $783b: $c0

    rst $38                                       ; $783c: $ff
    pop hl                                        ; $783d: $e1
    db $dd                                        ; $783e: $dd
    db $e3                                        ; $783f: $e3
    or $e5                                        ; $7840: $f6 $e5
    db $eb                                        ; $7842: $eb
    push hl                                       ; $7843: $e5
    or $ee                                        ; $7844: $f6 $ee
    cp d                                          ; $7846: $ba
    pop hl                                        ; $7847: $e1
    ld d, b                                       ; $7848: $50
    ld d, c                                       ; $7849: $51
    xor $ff                                       ; $784a: $ee $ff
    db $e4                                        ; $784c: $e4
    ld d, b                                       ; $784d: $50
    ld d, h                                       ; $784e: $54
    dec [hl]                                      ; $784f: $35
    rst $38                                       ; $7850: $ff
    db $e4                                        ; $7851: $e4
    ld d, h                                       ; $7852: $54
    ld d, l                                       ; $7853: $55
    nop                                           ; $7854: $00
    rst $28                                       ; $7855: $ef
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    ld bc, $fb02                                  ; $7858: $01 $02 $fb
    ldh [rHDMA5], a                               ; $785b: $e0 $55
    ld d, [hl]                                    ; $785d: $56
    dec [hl]                                      ; $785e: $35
    rst $38                                       ; $785f: $ff
    dec [hl]                                      ; $7860: $35
    inc c                                         ; $7861: $0c
    dec c                                         ; $7862: $0d
    ld c, $0f                                     ; $7863: $0e $0f
    dec [hl]                                      ; $7865: $35
    dec [hl]                                      ; $7866: $35
    ld d, [hl]                                    ; $7867: $56
    rst $38                                       ; $7868: $ff
    ld d, a                                       ; $7869: $57
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    ld a, [de]                                    ; $786c: $1a
    dec de                                        ; $786d: $1b
    inc e                                         ; $786e: $1c
    dec e                                         ; $786f: $1d
    nop                                           ; $7870: $00
    ld a, e                                       ; $7871: $7b
    nop                                           ; $7872: $00
    ld d, a                                       ; $7873: $57
    ret c                                         ; $7874: $d8

    ldh [$29], a                                  ; $7875: $e0 $29
    ld a, [hl+]                                   ; $7877: $2a
    dec hl                                        ; $7878: $2b
    inc l                                         ; $7879: $2c
    ret c                                         ; $787a: $d8

    db $e3                                        ; $787b: $e3
    rst $28                                       ; $787c: $ef
    add hl, sp                                    ; $787d: $39
    ld a, [hl-]                                   ; $787e: $3a
    dec sp                                        ; $787f: $3b
    inc a                                         ; $7880: $3c
    ret c                                         ; $7881: $d8

    ldh [rHDMA2], a                               ; $7882: $e0 $52
    ld d, e                                       ; $7884: $53
    ld d, e                                       ; $7885: $53
    ld a, a                                       ; $7886: $7f
    ld b, a                                       ; $7887: $47
    ld c, b                                       ; $7888: $48
    ld c, c                                       ; $7889: $49
    ld b, a                                       ; $788a: $47
    ld d, e                                       ; $788b: $53
    ld d, e                                       ; $788c: $53
    ld d, d                                       ; $788d: $52
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    rla                                           ; $7891: $17
    dec c                                         ; $7892: $0d
    dec c                                         ; $7893: $0d
    dec l                                         ; $7894: $2d
    cp $e3                                        ; $7895: $fe $e3
    dec l                                         ; $7897: $2d
    or $eb                                        ; $7898: $f6 $eb
    add sp, -$1e                                  ; $789a: $e8 $e2
    push hl                                       ; $789c: $e5
    pop hl                                        ; $789d: $e1
    ret nz                                        ; $789e: $c0

    rst $38                                       ; $789f: $ff
    pop hl                                        ; $78a0: $e1
    db $dd                                        ; $78a1: $dd
    db $e3                                        ; $78a2: $e3
    or $e5                                        ; $78a3: $f6 $e5
    db $eb                                        ; $78a5: $eb
    push hl                                       ; $78a6: $e5
    or $ee                                        ; $78a7: $f6 $ee
    cp d                                          ; $78a9: $ba
    pop hl                                        ; $78aa: $e1
    ld d, b                                       ; $78ab: $50
    ld d, c                                       ; $78ac: $51
    xor $ff                                       ; $78ad: $ee $ff
    db $e4                                        ; $78af: $e4
    ld d, b                                       ; $78b0: $50
    ld d, h                                       ; $78b1: $54
    dec [hl]                                      ; $78b2: $35
    rst $38                                       ; $78b3: $ff
    db $e4                                        ; $78b4: $e4
    ld d, h                                       ; $78b5: $54
    ld d, l                                       ; $78b6: $55
    nop                                           ; $78b7: $00

jr_075_78b8:
    rst $38                                       ; $78b8: $ff
    nop                                           ; $78b9: $00
    inc bc                                        ; $78ba: $03
    inc b                                         ; $78bb: $04
    dec b                                         ; $78bc: $05
    inc bc                                        ; $78bd: $03
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    ld d, l                                       ; $78c0: $55
    rst $38                                       ; $78c1: $ff
    ld d, [hl]                                    ; $78c2: $56

jr_075_78c3:
    dec [hl]                                      ; $78c3: $35
    dec [hl]                                      ; $78c4: $35
    db $10                                        ; $78c5: $10
    ld de, $1312                                  ; $78c6: $11 $12 $13
    dec [hl]                                      ; $78c9: $35
    rst $38                                       ; $78ca: $ff
    dec [hl]                                      ; $78cb: $35
    ld d, [hl]                                    ; $78cc: $56
    ld d, a                                       ; $78cd: $57
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    ld e, $1f                                     ; $78d0: $1e $1f
    jr nz, jr_075_78c3                            ; $78d2: $20 $ef

    ld hl, $0000                                  ; $78d4: $21 $00 $00
    ld d, a                                       ; $78d7: $57
    ret c                                         ; $78d8: $d8

    ldh [$2d], a                                  ; $78d9: $e0 $2d
    ld l, $2f                                     ; $78db: $2e $2f
    cp l                                          ; $78dd: $bd
    jr nc, jr_075_78b8                            ; $78de: $30 $d8

    db $e3                                        ; $78e0: $e3
    nop                                           ; $78e1: $00
    dec a                                         ; $78e2: $3d
    ld a, $3f                                     ; $78e3: $3e $3f
    ret c                                         ; $78e5: $d8

Jump_075_78e6:
    ldh [rHDMA2], a                               ; $78e6: $e0 $52
    rst $38                                       ; $78e8: $ff
    ld d, e                                       ; $78e9: $53
    ld d, e                                       ; $78ea: $53
    ld c, d                                       ; $78eb: $4a
    ld c, e                                       ; $78ec: $4b
    ld c, h                                       ; $78ed: $4c
    ld c, d                                       ; $78ee: $4a
    ld d, e                                       ; $78ef: $53
    ld d, e                                       ; $78f0: $53
    ld bc, $0052                                  ; $78f1: $01 $52 $00
    nop                                           ; $78f4: $00
    nop                                           ; $78f5: $00
    rla                                           ; $78f6: $17
    dec c                                         ; $78f7: $0d
    dec c                                         ; $78f8: $0d
    dec l                                         ; $78f9: $2d
    cp $e3                                        ; $78fa: $fe $e3
    dec l                                         ; $78fc: $2d
    or $eb                                        ; $78fd: $f6 $eb
    add sp, -$1e                                  ; $78ff: $e8 $e2
    push hl                                       ; $7901: $e5
    pop hl                                        ; $7902: $e1
    ret nz                                        ; $7903: $c0

    rst $38                                       ; $7904: $ff
    pop hl                                        ; $7905: $e1
    db $dd                                        ; $7906: $dd
    db $e3                                        ; $7907: $e3
    or $e5                                        ; $7908: $f6 $e5
    db $eb                                        ; $790a: $eb
    push hl                                       ; $790b: $e5
    or $ee                                        ; $790c: $f6 $ee
    cp d                                          ; $790e: $ba
    pop hl                                        ; $790f: $e1
    ld d, b                                       ; $7910: $50
    ld d, c                                       ; $7911: $51
    xor $ff                                       ; $7912: $ee $ff
    db $e4                                        ; $7914: $e4
    ld d, b                                       ; $7915: $50
    ld d, h                                       ; $7916: $54
    dec [hl]                                      ; $7917: $35
    rst $38                                       ; $7918: $ff
    db $e4                                        ; $7919: $e4
    ld d, h                                       ; $791a: $54
    ld d, l                                       ; $791b: $55
    nop                                           ; $791c: $00
    rst $28                                       ; $791d: $ef
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    ld b, $07                                     ; $7920: $06 $07
    ei                                            ; $7922: $fb
    ldh [rHDMA5], a                               ; $7923: $e0 $55
    ld d, [hl]                                    ; $7925: $56
    dec [hl]                                      ; $7926: $35
    rst $38                                       ; $7927: $ff
    dec [hl]                                      ; $7928: $35
    inc c                                         ; $7929: $0c
    inc d                                         ; $792a: $14
    dec d                                         ; $792b: $15
    rrca                                          ; $792c: $0f
    dec [hl]                                      ; $792d: $35
    dec [hl]                                      ; $792e: $35
    ld d, [hl]                                    ; $792f: $56
    rst $38                                       ; $7930: $ff
    ld d, a                                       ; $7931: $57
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    ld [hl+], a                                   ; $7934: $22
    inc hl                                        ; $7935: $23
    inc h                                         ; $7936: $24
    dec h                                         ; $7937: $25
    nop                                           ; $7938: $00
    ld a, e                                       ; $7939: $7b
    nop                                           ; $793a: $00
    ld d, a                                       ; $793b: $57
    ret c                                         ; $793c: $d8

    ldh [$31], a                                  ; $793d: $e0 $31
    ld [hl-], a                                   ; $793f: $32
    inc sp                                        ; $7940: $33
    inc [hl]                                      ; $7941: $34
    ret c                                         ; $7942: $d8

    db $e3                                        ; $7943: $e3
    rst $28                                       ; $7944: $ef
    ld b, b                                       ; $7945: $40
    ld b, c                                       ; $7946: $41
    ld b, d                                       ; $7947: $42
    ld b, e                                       ; $7948: $43
    ret c                                         ; $7949: $d8

    ldh [rHDMA2], a                               ; $794a: $e0 $52
    ld d, e                                       ; $794c: $53
    ld d, e                                       ; $794d: $53
    ld a, a                                       ; $794e: $7f
    ld c, l                                       ; $794f: $4d
    ld c, [hl]                                    ; $7950: $4e
    ld c, c                                       ; $7951: $49
    ld b, a                                       ; $7952: $47
    ld d, e                                       ; $7953: $53
    ld d, e                                       ; $7954: $53
    ld d, d                                       ; $7955: $52
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    rla                                           ; $7959: $17
    dec c                                         ; $795a: $0d
    dec c                                         ; $795b: $0d
    dec l                                         ; $795c: $2d
    cp $e3                                        ; $795d: $fe $e3
    dec l                                         ; $795f: $2d
    or $eb                                        ; $7960: $f6 $eb
    rst $38                                       ; $7962: $ff
    pop hl                                        ; $7963: $e1
    db $ec                                        ; $7964: $ec
    ldh [$c0], a                                  ; $7965: $e0 $c0
    rst $30                                       ; $7967: $f7
    db $e4                                        ; $7968: $e4
    db $db                                        ; $7969: $db
    ld [c], a                                     ; $796a: $e2
    or $e5                                        ; $796b: $f6 $e5
    ld [c], a                                     ; $796d: $e2
    rst $20                                       ; $796e: $e7
    or $ec                                        ; $796f: $f6 $ec
    cp d                                          ; $7971: $ba
    pop hl                                        ; $7972: $e1
    ld d, b                                       ; $7973: $50
    ld d, c                                       ; $7974: $51
    xor $ff                                       ; $7975: $ee $ff
    db $e4                                        ; $7977: $e4
    ld d, b                                       ; $7978: $50
    ld d, h                                       ; $7979: $54
    dec [hl]                                      ; $797a: $35
    rst $38                                       ; $797b: $ff
    db $e4                                        ; $797c: $e4
    ld d, h                                       ; $797d: $54
    ld d, l                                       ; $797e: $55
    nop                                           ; $797f: $00
    rst $38                                       ; $7980: $ff
    nop                                           ; $7981: $00
    ld [$0a09], sp                                ; $7982: $08 $09 $0a
    dec bc                                        ; $7985: $0b
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    ld d, l                                       ; $7988: $55
    rst $38                                       ; $7989: $ff
    ld d, [hl]                                    ; $798a: $56

jr_075_798b:
    dec [hl]                                      ; $798b: $35
    dec [hl]                                      ; $798c: $35
    ld d, $17                                     ; $798d: $16 $17
    jr jr_075_79aa                                ; $798f: $18 $19

    dec [hl]                                      ; $7991: $35
    rst $38                                       ; $7992: $ff
    dec [hl]                                      ; $7993: $35
    ld d, [hl]                                    ; $7994: $56
    ld d, a                                       ; $7995: $57
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    ld h, $27                                     ; $7998: $26 $27
    jr z, jr_075_798b                             ; $799a: $28 $ef

    dec e                                         ; $799c: $1d
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    ld d, a                                       ; $799f: $57
    ret c                                         ; $79a0: $d8

    pop hl                                        ; $79a1: $e1
    ld [hl], $37                                  ; $79a2: $36 $37
    jr c, @-$20                                   ; $79a4: $38 $de

    ret c                                         ; $79a6: $d8

    db $e3                                        ; $79a7: $e3
    ld b, h                                       ; $79a8: $44
    ld b, l                                       ; $79a9: $45

jr_075_79aa:
    ld b, [hl]                                    ; $79aa: $46
    inc a                                         ; $79ab: $3c
    ret c                                         ; $79ac: $d8

    ldh [rHDMA2], a                               ; $79ad: $e0 $52
    ld d, e                                       ; $79af: $53
    rst $38                                       ; $79b0: $ff
    ld d, e                                       ; $79b1: $53
    ld b, a                                       ; $79b2: $47
    ld c, a                                       ; $79b3: $4f
    ld c, h                                       ; $79b4: $4c
    ld c, d                                       ; $79b5: $4a
    ld d, e                                       ; $79b6: $53
    ld d, e                                       ; $79b7: $53
    ld d, d                                       ; $79b8: $52
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    rrca                                          ; $79bc: $0f
    dec c                                         ; $79bd: $0d
    dec c                                         ; $79be: $0d
    dec c                                         ; $79bf: $0d
    dec l                                         ; $79c0: $2d
    db $fc                                        ; $79c1: $fc
    ld [c], a                                     ; $79c2: $e2
    ld a, [$fbe0]                                 ; $79c3: $fa $e0 $fb
    pop hl                                        ; $79c6: $e1
    rst $30                                       ; $79c7: $f7
    ldh [rP1], a                                  ; $79c8: $e0 $00
    ldh a, [$e1]                                  ; $79ca: $f0 $e1
    db $ed                                        ; $79cc: $ed
    db $e3                                        ; $79cd: $e3
    or $e4                                        ; $79ce: $f6 $e4
    db $ed                                        ; $79d0: $ed
    ldh [$e2], a                                  ; $79d1: $e0 $e2
    ld [c], a                                     ; $79d3: $e2
    push af                                       ; $79d4: $f5
    db $e3                                        ; $79d5: $e3
    db $ec                                        ; $79d6: $ec
    db $e4                                        ; $79d7: $e4
    ld [c], a                                     ; $79d8: $e2
    ld [$4dfb], a                                 ; $79d9: $ea $fb $4d
    ld c, l                                       ; $79dc: $4d
    cp e                                          ; $79dd: $bb
    db $e3                                        ; $79de: $e3
    ld c, l                                       ; $79df: $4d
    ld l, l                                       ; $79e0: $6d
    ld c, l                                       ; $79e1: $4d
    ld c, [hl]                                    ; $79e2: $4e
    ld c, a                                       ; $79e3: $4f
    ei                                            ; $79e4: $fb
    ld c, a                                       ; $79e5: $4f
    ld c, [hl]                                    ; $79e6: $4e
    db $fc                                        ; $79e7: $fc
    pop hl                                        ; $79e8: $e1
    ld c, l                                       ; $79e9: $4d
    ld d, b                                       ; $79ea: $50
    ld d, e                                       ; $79eb: $53
    dec e                                         ; $79ec: $1d
    dec e                                         ; $79ed: $1d
    db $fd                                        ; $79ee: $fd
    ld d, e                                       ; $79ef: $53
    db $fc                                        ; $79f0: $fc
    pop hl                                        ; $79f1: $e1

jr_075_79f2:
    ld d, b                                       ; $79f2: $50
    ld d, c                                       ; $79f3: $51
    ld d, h                                       ; $79f4: $54
    inc bc                                        ; $79f5: $03
    nop                                           ; $79f6: $00
    ld bc, $02ff                                  ; $79f7: $01 $ff $02
    nop                                           ; $79fa: $00
    inc bc                                        ; $79fb: $03
    ld d, h                                       ; $79fc: $54
    ld d, c                                       ; $79fd: $51
    ld d, d                                       ; $79fe: $52
    ld d, l                                       ; $79ff: $55
    dec sp                                        ; $7a00: $3b
    ld a, a                                       ; $7a01: $7f
    dec c                                         ; $7a02: $0d
    ld c, $0f                                     ; $7a03: $0e $0f
    db $10                                        ; $7a05: $10
    dec sp                                        ; $7a06: $3b
    ld d, l                                       ; $7a07: $55
    ld d, d                                       ; $7a08: $52
    ld [c], a                                     ; $7a09: $e2
    pop hl                                        ; $7a0a: $e1
    rst $30                                       ; $7a0b: $f7
    ld e, $1f                                     ; $7a0c: $1e $1f
    jr nz, jr_075_79f2                            ; $7a0e: $20 $e2

    db $e3                                        ; $7a10: $e3
    inc bc                                        ; $7a11: $03
    dec hl                                        ; $7a12: $2b
    inc l                                         ; $7a13: $2c
    inc bc                                        ; $7a14: $03
    sbc $e2                                       ; $7a15: $de $e2
    db $e3                                        ; $7a17: $e3
    jr c, jr_075_7a53                             ; $7a18: $38 $39

    ld a, [hl-]                                   ; $7a1a: $3a
    dec sp                                        ; $7a1b: $3b
    ld [c], a                                     ; $7a1c: $e2
    ldh [rKEY1], a                                ; $7a1d: $e0 $4d
    ld c, [hl]                                    ; $7a1f: $4e
    rst $38                                       ; $7a20: $ff
    ld b, [hl]                                    ; $7a21: $46
    ld b, [hl]                                    ; $7a22: $46
    ld b, a                                       ; $7a23: $47
    ld c, b                                       ; $7a24: $48
    ld b, [hl]                                    ; $7a25: $46
    ld b, [hl]                                    ; $7a26: $46
    ld c, [hl]                                    ; $7a27: $4e
    ld c, l                                       ; $7a28: $4d
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    rrca                                          ; $7a2c: $0f
    dec c                                         ; $7a2d: $0d
    dec c                                         ; $7a2e: $0d
    dec c                                         ; $7a2f: $0d
    dec l                                         ; $7a30: $2d
    db $fc                                        ; $7a31: $fc
    ld [c], a                                     ; $7a32: $e2
    ld a, [$fbe0]                                 ; $7a33: $fa $e0 $fb
    pop hl                                        ; $7a36: $e1
    rst $30                                       ; $7a37: $f7
    ldh [$88], a                                  ; $7a38: $e0 $88
    ldh a, [$e1]                                  ; $7a3a: $f0 $e1
    db $fd                                        ; $7a3c: $fd
    ld [c], a                                     ; $7a3d: $e2
    or $e6                                        ; $7a3e: $f6 $e6
    dec l                                         ; $7a40: $2d
    db $ec                                        ; $7a41: $ec
    pop hl                                        ; $7a42: $e1
    jp hl                                         ; $7a43: $e9


    db $e3                                        ; $7a44: $e3
    ld [c], a                                     ; $7a45: $e2
    di                                            ; $7a46: $f3
    ld c, l                                       ; $7a47: $4d
    db $fd                                        ; $7a48: $fd
    ld c, l                                       ; $7a49: $4d
    cp e                                          ; $7a4a: $bb
    db $e3                                        ; $7a4b: $e3
    ld c, l                                       ; $7a4c: $4d
    ld l, l                                       ; $7a4d: $6d
    ld c, l                                       ; $7a4e: $4d
    ld c, [hl]                                    ; $7a4f: $4e
    ld c, a                                       ; $7a50: $4f
    ld c, a                                       ; $7a51: $4f
    db $fd                                        ; $7a52: $fd

jr_075_7a53:
    ld c, [hl]                                    ; $7a53: $4e
    db $fc                                        ; $7a54: $fc
    pop hl                                        ; $7a55: $e1
    ld c, l                                       ; $7a56: $4d
    ld d, b                                       ; $7a57: $50
    ld d, e                                       ; $7a58: $53
    dec e                                         ; $7a59: $1d
    dec e                                         ; $7a5a: $1d
    ld d, e                                       ; $7a5b: $53
    cp $fc                                        ; $7a5c: $fe $fc
    pop hl                                        ; $7a5e: $e1
    ld d, b                                       ; $7a5f: $50
    ld d, c                                       ; $7a60: $51
    ld d, h                                       ; $7a61: $54
    inc bc                                        ; $7a62: $03
    inc bc                                        ; $7a63: $03
    inc b                                         ; $7a64: $04
    dec b                                         ; $7a65: $05
    rst $38                                       ; $7a66: $ff
    inc bc                                        ; $7a67: $03
    inc bc                                        ; $7a68: $03
    ld d, h                                       ; $7a69: $54
    ld d, c                                       ; $7a6a: $51
    ld d, d                                       ; $7a6b: $52
    ld d, l                                       ; $7a6c: $55
    dec sp                                        ; $7a6d: $3b
    ld de, $12bf                                  ; $7a6e: $11 $bf $12
    inc de                                        ; $7a71: $13
    inc d                                         ; $7a72: $14
    dec sp                                        ; $7a73: $3b
    ld d, l                                       ; $7a74: $55
    ld d, d                                       ; $7a75: $52
    ld [c], a                                     ; $7a76: $e2
    pop hl                                        ; $7a77: $e1
    ld hl, $22bb                                  ; $7a78: $21 $bb $22
    inc hl                                        ; $7a7b: $23
    ld [c], a                                     ; $7a7c: $e2
    db $e3                                        ; $7a7d: $e3
    dec l                                         ; $7a7e: $2d
    ld l, $2f                                     ; $7a7f: $2e $2f
    ld [c], a                                     ; $7a81: $e2
    db $e4                                        ; $7a82: $e4
    inc a                                         ; $7a83: $3c
    rst $30                                       ; $7a84: $f7
    dec a                                         ; $7a85: $3d
    ld a, $3b                                     ; $7a86: $3e $3b
    ld [c], a                                     ; $7a88: $e2
    ldh [rKEY1], a                                ; $7a89: $e0 $4d
    ld c, [hl]                                    ; $7a8b: $4e
    ld b, [hl]                                    ; $7a8c: $46
    ld b, [hl]                                    ; $7a8d: $46
    ccf                                           ; $7a8e: $3f
    ld c, c                                       ; $7a8f: $49
    ld c, d                                       ; $7a90: $4a
    ld b, [hl]                                    ; $7a91: $46
    ld b, [hl]                                    ; $7a92: $46
    ld c, [hl]                                    ; $7a93: $4e
    ld c, l                                       ; $7a94: $4d
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    rrca                                          ; $7a98: $0f
    dec c                                         ; $7a99: $0d
    dec c                                         ; $7a9a: $0d
    dec c                                         ; $7a9b: $0d
    dec l                                         ; $7a9c: $2d
    db $fc                                        ; $7a9d: $fc
    ld [c], a                                     ; $7a9e: $e2
    ld a, [$fbe0]                                 ; $7a9f: $fa $e0 $fb
    pop hl                                        ; $7aa2: $e1
    rst $30                                       ; $7aa3: $f7
    ldh [$08], a                                  ; $7aa4: $e0 $08
    ldh a, [$e1]                                  ; $7aa6: $f0 $e1
    db $fd                                        ; $7aa8: $fd
    ld [c], a                                     ; $7aa9: $e2
    or $e6                                        ; $7aaa: $f6 $e6
    dec l                                         ; $7aac: $2d
    db $ec                                        ; $7aad: $ec
    pop hl                                        ; $7aae: $e1
    jp hl                                         ; $7aaf: $e9


    db $e3                                        ; $7ab0: $e3
    ld [c], a                                     ; $7ab1: $e2
    rst $28                                       ; $7ab2: $ef
    db $e3                                        ; $7ab3: $e3
    ldh [$f7], a                                  ; $7ab4: $e0 $f7
    dec l                                         ; $7ab6: $2d
    ld c, l                                       ; $7ab7: $4d
    ld c, l                                       ; $7ab8: $4d
    cp e                                          ; $7ab9: $bb
    db $e3                                        ; $7aba: $e3
    ld c, l                                       ; $7abb: $4d
    ld l, l                                       ; $7abc: $6d
    ld c, l                                       ; $7abd: $4d
    ld c, [hl]                                    ; $7abe: $4e
    rst $30                                       ; $7abf: $f7
    ld c, a                                       ; $7ac0: $4f
    ld c, a                                       ; $7ac1: $4f

Jump_075_7ac2:
    ld c, [hl]                                    ; $7ac2: $4e
    db $fc                                        ; $7ac3: $fc
    pop hl                                        ; $7ac4: $e1
    ld c, l                                       ; $7ac5: $4d
    ld d, b                                       ; $7ac6: $50
    ld d, e                                       ; $7ac7: $53
    dec e                                         ; $7ac8: $1d
    ei                                            ; $7ac9: $fb
    dec e                                         ; $7aca: $1d
    ld d, e                                       ; $7acb: $53
    db $fc                                        ; $7acc: $fc
    pop hl                                        ; $7acd: $e1
    ld d, b                                       ; $7ace: $50
    ld d, c                                       ; $7acf: $51
    ld d, h                                       ; $7ad0: $54
    inc bc                                        ; $7ad1: $03
    ld b, $ff                                     ; $7ad2: $06 $ff
    rlca                                          ; $7ad4: $07
    ld [$0309], sp                                ; $7ad5: $08 $09 $03
    ld d, h                                       ; $7ad8: $54
    ld d, c                                       ; $7ad9: $51
    ld d, d                                       ; $7ada: $52
    ld d, l                                       ; $7adb: $55
    rst $38                                       ; $7adc: $ff
    dec sp                                        ; $7add: $3b
    dec d                                         ; $7ade: $15
    ld d, $17                                     ; $7adf: $16 $17
    jr jr_075_7b1e                                ; $7ae1: $18 $3b

    ld d, l                                       ; $7ae3: $55
    ld d, d                                       ; $7ae4: $52
    sbc $e2                                       ; $7ae5: $de $e2
    ldh [rNR50], a                                ; $7ae7: $e0 $24
    dec h                                         ; $7ae9: $25
    ld h, $27                                     ; $7aea: $26 $27
    ld [c], a                                     ; $7aec: $e2
    db $e3                                        ; $7aed: $e3
    jr nc, jr_075_7b21                            ; $7aee: $30 $31

    ld a, e                                       ; $7af0: $7b
    ld [hl-], a                                   ; $7af1: $32
    inc sp                                        ; $7af2: $33
    ld [c], a                                     ; $7af3: $e2
    db $e3                                        ; $7af4: $e3
    ccf                                           ; $7af5: $3f
    ld b, b                                       ; $7af6: $40
    ld b, c                                       ; $7af7: $41
    inc a                                         ; $7af8: $3c
    ld [c], a                                     ; $7af9: $e2
    ldh [rIE], a                                  ; $7afa: $e0 $ff
    ld c, l                                       ; $7afc: $4d
    ld c, [hl]                                    ; $7afd: $4e
    ld b, [hl]                                    ; $7afe: $46
    ld b, [hl]                                    ; $7aff: $46
    ld c, e                                       ; $7b00: $4b
    ld c, h                                       ; $7b01: $4c
    ld b, [hl]                                    ; $7b02: $46
    ld b, [hl]                                    ; $7b03: $46
    inc bc                                        ; $7b04: $03
    ld c, [hl]                                    ; $7b05: $4e
    ld c, l                                       ; $7b06: $4d
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    rrca                                          ; $7b0a: $0f
    dec c                                         ; $7b0b: $0d
    dec c                                         ; $7b0c: $0d
    dec c                                         ; $7b0d: $0d
    dec l                                         ; $7b0e: $2d
    db $fc                                        ; $7b0f: $fc
    ld [c], a                                     ; $7b10: $e2
    ld a, [$fbe0]                                 ; $7b11: $fa $e0 $fb
    pop hl                                        ; $7b14: $e1
    rst $30                                       ; $7b15: $f7
    ldh [$88], a                                  ; $7b16: $e0 $88
    ldh a, [$e1]                                  ; $7b18: $f0 $e1
    db $fd                                        ; $7b1a: $fd
    ld [c], a                                     ; $7b1b: $e2
    or $e6                                        ; $7b1c: $f6 $e6

jr_075_7b1e:
    dec l                                         ; $7b1e: $2d
    db $ec                                        ; $7b1f: $ec
    pop hl                                        ; $7b20: $e1

jr_075_7b21:
    reti                                          ; $7b21: $d9


    db $e4                                        ; $7b22: $e4
    ld [c], a                                     ; $7b23: $e2
    ld a, [c]                                     ; $7b24: $f2
    ld c, l                                       ; $7b25: $4d
    db $fd                                        ; $7b26: $fd
    ld c, l                                       ; $7b27: $4d
    cp e                                          ; $7b28: $bb
    db $e3                                        ; $7b29: $e3
    ld c, l                                       ; $7b2a: $4d
    ld l, l                                       ; $7b2b: $6d
    ld c, l                                       ; $7b2c: $4d
    ld c, [hl]                                    ; $7b2d: $4e
    ld c, a                                       ; $7b2e: $4f
    ld c, a                                       ; $7b2f: $4f
    db $fd                                        ; $7b30: $fd
    ld c, [hl]                                    ; $7b31: $4e
    db $fc                                        ; $7b32: $fc
    pop hl                                        ; $7b33: $e1
    ld c, l                                       ; $7b34: $4d
    ld d, b                                       ; $7b35: $50
    ld d, e                                       ; $7b36: $53
    dec e                                         ; $7b37: $1d
    dec e                                         ; $7b38: $1d
    ld d, e                                       ; $7b39: $53
    cp $fc                                        ; $7b3a: $fe $fc
    pop hl                                        ; $7b3c: $e1
    ld d, b                                       ; $7b3d: $50
    ld d, c                                       ; $7b3e: $51
    ld d, h                                       ; $7b3f: $54
    inc bc                                        ; $7b40: $03
    ld a, [bc]                                    ; $7b41: $0a
    dec bc                                        ; $7b42: $0b
    inc c                                         ; $7b43: $0c
    rst $38                                       ; $7b44: $ff
    inc bc                                        ; $7b45: $03
    inc bc                                        ; $7b46: $03
    ld d, h                                       ; $7b47: $54
    ld d, c                                       ; $7b48: $51
    ld d, d                                       ; $7b49: $52
    ld d, l                                       ; $7b4a: $55
    dec sp                                        ; $7b4b: $3b
    add hl, de                                    ; $7b4c: $19
    cp a                                          ; $7b4d: $bf
    ld a, [de]                                    ; $7b4e: $1a
    dec de                                        ; $7b4f: $1b
    inc e                                         ; $7b50: $1c
    dec sp                                        ; $7b51: $3b
    ld d, l                                       ; $7b52: $55
    ld d, d                                       ; $7b53: $52
    ld [c], a                                     ; $7b54: $e2
    ldh [$28], a                                  ; $7b55: $e0 $28
    ld a, e                                       ; $7b57: $7b
    add hl, hl                                    ; $7b58: $29
    ld a, [hl+]                                   ; $7b59: $2a
    ld [c], a                                     ; $7b5a: $e2
    db $e4                                        ; $7b5b: $e4
    inc [hl]                                      ; $7b5c: $34
    dec [hl]                                      ; $7b5d: $35
    ld [hl], $37                                  ; $7b5e: $36 $37
    ld [c], a                                     ; $7b60: $e2
    db $e3                                        ; $7b61: $e3
    rst $28                                       ; $7b62: $ef
    ld b, d                                       ; $7b63: $42
    ld b, e                                       ; $7b64: $43
    ld b, h                                       ; $7b65: $44
    ld b, l                                       ; $7b66: $45
    ld [c], a                                     ; $7b67: $e2
    ldh [rKEY1], a                                ; $7b68: $e0 $4d
    ld c, [hl]                                    ; $7b6a: $4e
    ld b, [hl]                                    ; $7b6b: $46
    ld a, a                                       ; $7b6c: $7f
    ld b, [hl]                                    ; $7b6d: $46
    ld c, e                                       ; $7b6e: $4b
    ld c, h                                       ; $7b6f: $4c
    ld b, [hl]                                    ; $7b70: $46
    ld b, [hl]                                    ; $7b71: $46
    ld c, [hl]                                    ; $7b72: $4e
    ld c, l                                       ; $7b73: $4d
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    adc a                                         ; $7b77: $8f
    dec c                                         ; $7b78: $0d
    dec c                                         ; $7b79: $0d
    dec c                                         ; $7b7a: $0d
    dec l                                         ; $7b7b: $2d
    db $fc                                        ; $7b7c: $fc
    ld [c], a                                     ; $7b7d: $e2
    ld a, [$f5e2]                                 ; $7b7e: $fa $e2 $f5
    ldh [$2d], a                                  ; $7b81: $e0 $2d
    nop                                           ; $7b83: $00
    ei                                            ; $7b84: $fb
    pop hl                                        ; $7b85: $e1
    cp $e1                                        ; $7b86: $fe $e1
    db $ed                                        ; $7b88: $ed
    db $e4                                        ; $7b89: $e4
    db $f4                                        ; $7b8a: $f4
    db $e3                                        ; $7b8b: $e3
    db $ec                                        ; $7b8c: $ec
    db $e4                                        ; $7b8d: $e4
    ld [c], a                                     ; $7b8e: $e2
    rst $20                                       ; $7b8f: $e7
    ret                                           ; $7b90: $c9


    push hl                                       ; $7b91: $e5
    ld [c], a                                     ; $7b92: $e2
    db $e3                                        ; $7b93: $e3
    ei                                            ; $7b94: $fb
    ld c, l                                       ; $7b95: $4d
    ld c, l                                       ; $7b96: $4d
    cp e                                          ; $7b97: $bb
    db $e3                                        ; $7b98: $e3
    ld c, l                                       ; $7b99: $4d
    ld l, l                                       ; $7b9a: $6d
    ld d, l                                       ; $7b9b: $55
    ld d, [hl]                                    ; $7b9c: $56
    ld d, a                                       ; $7b9d: $57
    ei                                            ; $7b9e: $fb
    ld d, a                                       ; $7b9f: $57
    ld d, [hl]                                    ; $7ba0: $56
    db $fc                                        ; $7ba1: $fc
    pop hl                                        ; $7ba2: $e1
    ld d, l                                       ; $7ba3: $55
    ld e, b                                       ; $7ba4: $58
    ld e, h                                       ; $7ba5: $5c
    ld e, $1e                                     ; $7ba6: $1e $1e
    db $fd                                        ; $7ba8: $fd
    ld e, h                                       ; $7ba9: $5c
    db $fc                                        ; $7baa: $fc
    pop hl                                        ; $7bab: $e1
    ld e, b                                       ; $7bac: $58
    ld e, c                                       ; $7bad: $59
    ld e, l                                       ; $7bae: $5d
    inc bc                                        ; $7baf: $03
    nop                                           ; $7bb0: $00
    ld bc, $02ff                                  ; $7bb1: $01 $ff $02
    nop                                           ; $7bb4: $00
    inc bc                                        ; $7bb5: $03
    ld e, l                                       ; $7bb6: $5d
    ld e, e                                       ; $7bb7: $5b
    ld e, d                                       ; $7bb8: $5a
    ld e, [hl]                                    ; $7bb9: $5e
    add hl, sp                                    ; $7bba: $39
    ld a, a                                       ; $7bbb: $7f
    dec bc                                        ; $7bbc: $0b
    inc c                                         ; $7bbd: $0c
    dec c                                         ; $7bbe: $0d
    ld c, $39                                     ; $7bbf: $0e $39
    ld e, [hl]                                    ; $7bc1: $5e
    ld e, d                                       ; $7bc2: $5a
    ld [c], a                                     ; $7bc3: $e2
    ldh [$f7], a                                  ; $7bc4: $e0 $f7
    dec de                                        ; $7bc6: $1b
    inc e                                         ; $7bc7: $1c
    dec e                                         ; $7bc8: $1d
    ld [c], a                                     ; $7bc9: $e2
    db $e4                                        ; $7bca: $e4
    ld a, [hl+]                                   ; $7bcb: $2a
    dec hl                                        ; $7bcc: $2b
    inc l                                         ; $7bcd: $2c
    inc bc                                        ; $7bce: $03
    sbc $e2                                       ; $7bcf: $de $e2
    db $e3                                        ; $7bd1: $e3
    add hl, sp                                    ; $7bd2: $39
    ld a, [hl-]                                   ; $7bd3: $3a
    dec sp                                        ; $7bd4: $3b
    inc a                                         ; $7bd5: $3c
    ld [c], a                                     ; $7bd6: $e2
    ldh [rHDMA5], a                               ; $7bd7: $e0 $55
    ld d, [hl]                                    ; $7bd9: $56
    rst $38                                       ; $7bda: $ff
    ld c, b                                       ; $7bdb: $48
    ld c, b                                       ; $7bdc: $48
    ld c, c                                       ; $7bdd: $49
    ld c, d                                       ; $7bde: $4a
    ld c, b                                       ; $7bdf: $48
    ld c, b                                       ; $7be0: $48
    ld d, [hl]                                    ; $7be1: $56
    ld d, l                                       ; $7be2: $55
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    nop                                           ; $7be5: $00
    adc a                                         ; $7be6: $8f
    dec c                                         ; $7be7: $0d
    dec c                                         ; $7be8: $0d
    dec c                                         ; $7be9: $0d
    dec l                                         ; $7bea: $2d
    db $fc                                        ; $7beb: $fc
    ld [c], a                                     ; $7bec: $e2
    ld a, [$f5e2]                                 ; $7bed: $fa $e2 $f5

jr_075_7bf0:
    ldh [$2d], a                                  ; $7bf0: $e0 $2d
    ret nz                                        ; $7bf2: $c0

    ei                                            ; $7bf3: $fb
    pop hl                                        ; $7bf4: $e1
    cp $e3                                        ; $7bf5: $fe $e3
    rst $20                                       ; $7bf7: $e7
    db $e3                                        ; $7bf8: $e3
    or $e2                                        ; $7bf9: $f6 $e2
    db $ec                                        ; $7bfb: $ec
    push hl                                       ; $7bfc: $e5
    ld [c], a                                     ; $7bfd: $e2
    db $f4                                        ; $7bfe: $f4
    ld c, l                                       ; $7bff: $4d
    ld c, l                                       ; $7c00: $4d
    cp $cb                                        ; $7c01: $fe $cb
    db $e3                                        ; $7c03: $e3
    ld c, l                                       ; $7c04: $4d
    ld l, l                                       ; $7c05: $6d
    ld d, l                                       ; $7c06: $55
    ld d, [hl]                                    ; $7c07: $56
    ld d, a                                       ; $7c08: $57
    ld d, a                                       ; $7c09: $57
    ld d, [hl]                                    ; $7c0a: $56
    ld a, [hl]                                    ; $7c0b: $7e
    db $fc                                        ; $7c0c: $fc
    pop hl                                        ; $7c0d: $e1
    ld d, l                                       ; $7c0e: $55
    ld e, b                                       ; $7c0f: $58
    ld e, h                                       ; $7c10: $5c
    ld e, $1e                                     ; $7c11: $1e $1e
    ld e, h                                       ; $7c13: $5c
    db $fc                                        ; $7c14: $fc
    pop hl                                        ; $7c15: $e1
    rst $38                                       ; $7c16: $ff
    ld e, b                                       ; $7c17: $58
    ld e, c                                       ; $7c18: $59
    ld e, l                                       ; $7c19: $5d
    inc bc                                        ; $7c1a: $03
    inc bc                                        ; $7c1b: $03
    inc b                                         ; $7c1c: $04

jr_075_7c1d:
    dec b                                         ; $7c1d: $05
    inc bc                                        ; $7c1e: $03
    rst $38                                       ; $7c1f: $ff
    inc bc                                        ; $7c20: $03
    ld e, l                                       ; $7c21: $5d
    ld e, e                                       ; $7c22: $5b
    ld e, d                                       ; $7c23: $5a
    ld e, [hl]                                    ; $7c24: $5e
    add hl, sp                                    ; $7c25: $39
    rrca                                          ; $7c26: $0f
    db $10                                        ; $7c27: $10
    rst $18                                       ; $7c28: $df
    ld de, $3912                                  ; $7c29: $11 $12 $39
    ld e, [hl]                                    ; $7c2c: $5e
    ld e, d                                       ; $7c2d: $5a
    ld [c], a                                     ; $7c2e: $e2
    ldh [$1f], a                                  ; $7c2f: $e0 $1f
    jr nz, jr_075_7bf0                            ; $7c31: $20 $bd

    ld hl, $e4e2                                  ; $7c33: $21 $e2 $e4
    dec l                                         ; $7c36: $2d
    ld l, $2f                                     ; $7c37: $2e $2f
    jr nc, jr_075_7c1d                            ; $7c39: $30 $e2

    db $e3                                        ; $7c3b: $e3
    dec a                                         ; $7c3c: $3d
    rst $30                                       ; $7c3d: $f7
    ld a, $3f                                     ; $7c3e: $3e $3f
    ld b, b                                       ; $7c40: $40
    ld [c], a                                     ; $7c41: $e2
    ldh [rHDMA5], a                               ; $7c42: $e0 $55
    ld d, [hl]                                    ; $7c44: $56
    ld c, b                                       ; $7c45: $48
    ld c, b                                       ; $7c46: $48
    ccf                                           ; $7c47: $3f
    ld c, e                                       ; $7c48: $4b
    ld c, h                                       ; $7c49: $4c
    ld c, l                                       ; $7c4a: $4d
    ld c, b                                       ; $7c4b: $48
    ld d, [hl]                                    ; $7c4c: $56
    ld d, l                                       ; $7c4d: $55
    nop                                           ; $7c4e: $00
    nop                                           ; $7c4f: $00
    nop                                           ; $7c50: $00
    adc a                                         ; $7c51: $8f
    dec c                                         ; $7c52: $0d
    dec c                                         ; $7c53: $0d
    dec c                                         ; $7c54: $0d
    dec l                                         ; $7c55: $2d
    db $fc                                        ; $7c56: $fc
    ld [c], a                                     ; $7c57: $e2
    ld a, [$f5e2]                                 ; $7c58: $fa $e2 $f5
    ldh [$2d], a                                  ; $7c5b: $e0 $2d
    ret nz                                        ; $7c5d: $c0

    ei                                            ; $7c5e: $fb
    pop hl                                        ; $7c5f: $e1
    cp $e3                                        ; $7c60: $fe $e3
    rst $20                                       ; $7c62: $e7
    db $e3                                        ; $7c63: $e3
    or $e2                                        ; $7c64: $f6 $e2
    db $ec                                        ; $7c66: $ec
    push hl                                       ; $7c67: $e5
    ld [c], a                                     ; $7c68: $e2
    db $f4                                        ; $7c69: $f4
    ld c, l                                       ; $7c6a: $4d
    ld c, l                                       ; $7c6b: $4d
    cp $cb                                        ; $7c6c: $fe $cb
    db $e3                                        ; $7c6e: $e3
    ld c, l                                       ; $7c6f: $4d
    ld l, l                                       ; $7c70: $6d
    ld d, l                                       ; $7c71: $55
    ld d, [hl]                                    ; $7c72: $56
    ld d, a                                       ; $7c73: $57
    ld d, a                                       ; $7c74: $57
    ld d, [hl]                                    ; $7c75: $56
    ld a, [hl]                                    ; $7c76: $7e
    db $fc                                        ; $7c77: $fc
    pop hl                                        ; $7c78: $e1
    ld d, l                                       ; $7c79: $55
    ld e, b                                       ; $7c7a: $58
    ld e, h                                       ; $7c7b: $5c
    ld e, $1e                                     ; $7c7c: $1e $1e
    ld e, h                                       ; $7c7e: $5c
    db $fc                                        ; $7c7f: $fc
    pop hl                                        ; $7c80: $e1
    rst $38                                       ; $7c81: $ff
    ld e, b                                       ; $7c82: $58
    ld e, c                                       ; $7c83: $59
    ld e, l                                       ; $7c84: $5d
    inc bc                                        ; $7c85: $03
    inc bc                                        ; $7c86: $03
    ld b, $07                                     ; $7c87: $06 $07
    inc bc                                        ; $7c89: $03
    rst $38                                       ; $7c8a: $ff
    inc bc                                        ; $7c8b: $03
    ld e, l                                       ; $7c8c: $5d
    ld e, e                                       ; $7c8d: $5b
    ld e, d                                       ; $7c8e: $5a
    ld e, [hl]                                    ; $7c8f: $5e
    add hl, sp                                    ; $7c90: $39
    inc de                                        ; $7c91: $13
    inc d                                         ; $7c92: $14
    rst $18                                       ; $7c93: $df
    dec d                                         ; $7c94: $15
    ld d, $39                                     ; $7c95: $16 $39
    ld e, [hl]                                    ; $7c97: $5e
    ld e, d                                       ; $7c98: $5a
    ld [c], a                                     ; $7c99: $e2
    ldh [rNR43], a                                ; $7c9a: $e0 $22
    inc hl                                        ; $7c9c: $23
    ld a, e                                       ; $7c9d: $7b
    inc h                                         ; $7c9e: $24
    dec h                                         ; $7c9f: $25
    ld [c], a                                     ; $7ca0: $e2
    db $e3                                        ; $7ca1: $e3
    ld sp, $3332                                  ; $7ca2: $31 $32 $33
    inc [hl]                                      ; $7ca5: $34
    ld [c], a                                     ; $7ca6: $e2
    db $e3                                        ; $7ca7: $e3
    rst $28                                       ; $7ca8: $ef
    ld b, c                                       ; $7ca9: $41
    ld b, d                                       ; $7caa: $42
    ld b, e                                       ; $7cab: $43
    ld b, h                                       ; $7cac: $44
    ld [c], a                                     ; $7cad: $e2
    ldh [rHDMA5], a                               ; $7cae: $e0 $55
    ld d, [hl]                                    ; $7cb0: $56
    ld c, b                                       ; $7cb1: $48
    ld a, a                                       ; $7cb2: $7f
    ld c, [hl]                                    ; $7cb3: $4e
    ld c, a                                       ; $7cb4: $4f
    ld d, b                                       ; $7cb5: $50
    ld d, c                                       ; $7cb6: $51
    ld c, b                                       ; $7cb7: $48
    ld d, [hl]                                    ; $7cb8: $56
    ld d, l                                       ; $7cb9: $55
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    adc a                                         ; $7cbd: $8f
    dec c                                         ; $7cbe: $0d
    dec c                                         ; $7cbf: $0d
    dec c                                         ; $7cc0: $0d
    dec l                                         ; $7cc1: $2d
    db $fc                                        ; $7cc2: $fc
    ld [c], a                                     ; $7cc3: $e2
    ld a, [$f5e2]                                 ; $7cc4: $fa $e2 $f5
    ldh [$2d], a                                  ; $7cc7: $e0 $2d
    nop                                           ; $7cc9: $00
    ei                                            ; $7cca: $fb
    pop hl                                        ; $7ccb: $e1
    cp $e1                                        ; $7ccc: $fe $e1
    db $ed                                        ; $7cce: $ed
    db $e4                                        ; $7ccf: $e4
    db $f4                                        ; $7cd0: $f4
    db $e3                                        ; $7cd1: $e3
    db $ec                                        ; $7cd2: $ec
    db $e4                                        ; $7cd3: $e4
    ld [c], a                                     ; $7cd4: $e2
    rst $20                                       ; $7cd5: $e7
    ret                                           ; $7cd6: $c9


    push hl                                       ; $7cd7: $e5
    ld [c], a                                     ; $7cd8: $e2
    db $e3                                        ; $7cd9: $e3
    ei                                            ; $7cda: $fb
    ld c, l                                       ; $7cdb: $4d
    ld c, l                                       ; $7cdc: $4d
    cp e                                          ; $7cdd: $bb
    db $e3                                        ; $7cde: $e3
    ld c, l                                       ; $7cdf: $4d
    ld l, l                                       ; $7ce0: $6d
    ld d, l                                       ; $7ce1: $55
    ld d, [hl]                                    ; $7ce2: $56
    ld d, a                                       ; $7ce3: $57
    ei                                            ; $7ce4: $fb

Jump_075_7ce5:
    ld d, a                                       ; $7ce5: $57
    ld d, [hl]                                    ; $7ce6: $56
    db $fc                                        ; $7ce7: $fc
    pop hl                                        ; $7ce8: $e1
    ld d, l                                       ; $7ce9: $55
    ld e, b                                       ; $7cea: $58
    ld e, h                                       ; $7ceb: $5c
    ld e, $1e                                     ; $7cec: $1e $1e
    db $fd                                        ; $7cee: $fd
    ld e, h                                       ; $7cef: $5c
    db $fc                                        ; $7cf0: $fc
    pop hl                                        ; $7cf1: $e1
    ld e, b                                       ; $7cf2: $58
    ld e, c                                       ; $7cf3: $59
    ld e, l                                       ; $7cf4: $5d
    inc bc                                        ; $7cf5: $03
    ld [$ff09], sp                                ; $7cf6: $08 $09 $ff
    ld a, [bc]                                    ; $7cf9: $0a

jr_075_7cfa:
    ld [$5d03], sp                                ; $7cfa: $08 $03 $5d
    ld e, e                                       ; $7cfd: $5b
    ld e, d                                       ; $7cfe: $5a
    ld e, [hl]                                    ; $7cff: $5e
    add hl, sp                                    ; $7d00: $39
    ld a, a                                       ; $7d01: $7f
    rla                                           ; $7d02: $17
    jr jr_075_7d1e                                ; $7d03: $18 $19

    ld a, [de]                                    ; $7d05: $1a
    add hl, sp                                    ; $7d06: $39
    ld e, [hl]                                    ; $7d07: $5e
    ld e, d                                       ; $7d08: $5a
    ld [c], a                                     ; $7d09: $e2
    ldh [$ef], a                                  ; $7d0a: $e0 $ef
    ld h, $27                                     ; $7d0c: $26 $27
    jr z, jr_075_7d39                             ; $7d0e: $28 $29

    ld [c], a                                     ; $7d10: $e2
    db $e3                                        ; $7d11: $e3
    dec [hl]                                      ; $7d12: $35
    ld [hl], $37                                  ; $7d13: $36 $37
    cp l                                          ; $7d15: $bd
    jr c, jr_075_7cfa                             ; $7d16: $38 $e2

    db $e3                                        ; $7d18: $e3
    add hl, sp                                    ; $7d19: $39
    ld b, l                                       ; $7d1a: $45
    ld b, [hl]                                    ; $7d1b: $46
    ld b, a                                       ; $7d1c: $47
    ld [c], a                                     ; $7d1d: $e2

jr_075_7d1e:
    ldh [rHDMA5], a                               ; $7d1e: $e0 $55
    rst $38                                       ; $7d20: $ff
    ld d, [hl]                                    ; $7d21: $56
    ld c, b                                       ; $7d22: $48
    ld d, d                                       ; $7d23: $52
    ld d, e                                       ; $7d24: $53
    ld d, h                                       ; $7d25: $54
    ld d, d                                       ; $7d26: $52
    ld c, b                                       ; $7d27: $48
    ld d, [hl]                                    ; $7d28: $56
    ld bc, $0055                                  ; $7d29: $01 $55 $00
    nop                                           ; $7d2c: $00
    nop                                           ; $7d2d: $00
    ld h, l                                       ; $7d2e: $65
    dec c                                         ; $7d2f: $0d
    rst $38                                       ; $7d30: $ff
    push hl                                       ; $7d31: $e5
    dec l                                         ; $7d32: $2d
    or $e6                                        ; $7d33: $f6 $e6
    rst $30                                       ; $7d35: $f7
    add sp, $4d                                   ; $7d36: $e8 $4d
    ld c, l                                       ; $7d38: $4d

jr_075_7d39:
    ld hl, sp-$15                                 ; $7d39: $f8 $eb
    db $fc                                        ; $7d3b: $fc
    ld [c], a                                     ; $7d3c: $e2
    push af                                       ; $7d3d: $f5
    ret c                                         ; $7d3e: $d8

    and $6d                                       ; $7d3f: $e6 $6d
    ld c, b                                       ; $7d41: $48
    ld c, c                                       ; $7d42: $49
    ld c, d                                       ; $7d43: $4a
    ld c, e                                       ; $7d44: $4b
    ld c, c                                       ; $7d45: $49
    ld a, [hl]                                    ; $7d46: $7e
    db $fc                                        ; $7d47: $fc
    pop hl                                        ; $7d48: $e1
    ld c, b                                       ; $7d49: $48
    ld c, [hl]                                    ; $7d4a: $4e
    ld d, d                                       ; $7d4b: $52
    ld d, e                                       ; $7d4c: $53
    ld d, l                                       ; $7d4d: $55
    ld d, [hl]                                    ; $7d4e: $56
    db $fc                                        ; $7d4f: $fc
    pop hl                                        ; $7d50: $e1
    rst $38                                       ; $7d51: $ff
    ld d, b                                       ; $7d52: $50
    ld c, a                                       ; $7d53: $4f
    ld d, h                                       ; $7d54: $54
    inc b                                         ; $7d55: $04
    nop                                           ; $7d56: $00
    ld bc, $0302                                  ; $7d57: $01 $02 $03
    rst $38                                       ; $7d5a: $ff
    inc b                                         ; $7d5b: $04
    ld d, a                                       ; $7d5c: $57
    ld d, c                                       ; $7d5d: $51
    ld c, [hl]                                    ; $7d5e: $4e
    ld d, d                                       ; $7d5f: $52
    ld a, [de]                                    ; $7d60: $1a
    dec bc                                        ; $7d61: $0b
    inc c                                         ; $7d62: $0c
    rst $18                                       ; $7d63: $df
    dec c                                         ; $7d64: $0d
    ld c, $17                                     ; $7d65: $0e $17
    ld d, [hl]                                    ; $7d67: $56
    ld d, b                                       ; $7d68: $50
    ld [c], a                                     ; $7d69: $e2
    ldh [rNR31], a                                ; $7d6a: $e0 $1b
    inc e                                         ; $7d6c: $1c
    ld a, e                                       ; $7d6d: $7b
    dec e                                         ; $7d6e: $1d
    ld e, $e2                                     ; $7d6f: $1e $e2
    db $e3                                        ; $7d71: $e3
    inc b                                         ; $7d72: $04
    dec hl                                        ; $7d73: $2b
    inc l                                         ; $7d74: $2c
    inc b                                         ; $7d75: $04
    ld [c], a                                     ; $7d76: $e2
    db $e3                                        ; $7d77: $e3
    rst $28                                       ; $7d78: $ef
    add hl, sp                                    ; $7d79: $39
    ld a, [hl-]                                   ; $7d7a: $3a
    dec sp                                        ; $7d7b: $3b
    ld a, [de]                                    ; $7d7c: $1a
    ld [c], a                                     ; $7d7d: $e2
    ldh [rOBP0], a                                ; $7d7e: $e0 $48
    ld c, c                                       ; $7d80: $49
    ld c, h                                       ; $7d81: $4c
    ld a, a                                       ; $7d82: $7f
    ld b, d                                       ; $7d83: $42
    ld b, e                                       ; $7d84: $43
    ld b, h                                       ; $7d85: $44
    ld b, l                                       ; $7d86: $45
    ld c, l                                       ; $7d87: $4d
    ld c, c                                       ; $7d88: $49
    ld c, b                                       ; $7d89: $48
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    nop                                           ; $7d8c: $00
    ld h, l                                       ; $7d8d: $65
    dec c                                         ; $7d8e: $0d
    rst $38                                       ; $7d8f: $ff
    push hl                                       ; $7d90: $e5
    dec l                                         ; $7d91: $2d
    or $e6                                        ; $7d92: $f6 $e6
    rst $30                                       ; $7d94: $f7
    add sp, $4d                                   ; $7d95: $e8 $4d
    ld c, l                                       ; $7d97: $4d
    ld hl, sp-$15                                 ; $7d98: $f8 $eb
    db $fc                                        ; $7d9a: $fc
    ld [c], a                                     ; $7d9b: $e2
    push af                                       ; $7d9c: $f5
    ret c                                         ; $7d9d: $d8

    and $6d                                       ; $7d9e: $e6 $6d
    ld c, b                                       ; $7da0: $48
    ld c, c                                       ; $7da1: $49
    ld c, d                                       ; $7da2: $4a
    ld c, e                                       ; $7da3: $4b
    ld c, c                                       ; $7da4: $49
    ld a, [hl]                                    ; $7da5: $7e
    db $fc                                        ; $7da6: $fc
    pop hl                                        ; $7da7: $e1
    ld c, b                                       ; $7da8: $48
    ld c, [hl]                                    ; $7da9: $4e
    ld d, d                                       ; $7daa: $52
    ld d, e                                       ; $7dab: $53
    ld d, l                                       ; $7dac: $55
    ld d, [hl]                                    ; $7dad: $56
    db $fc                                        ; $7dae: $fc
    pop hl                                        ; $7daf: $e1
    rst $38                                       ; $7db0: $ff
    ld d, b                                       ; $7db1: $50
    ld c, a                                       ; $7db2: $4f
    ld d, h                                       ; $7db3: $54
    inc b                                         ; $7db4: $04
    inc b                                         ; $7db5: $04
    dec b                                         ; $7db6: $05
    ld b, $04                                     ; $7db7: $06 $04
    rst $38                                       ; $7db9: $ff
    inc b                                         ; $7dba: $04
    ld d, a                                       ; $7dbb: $57
    ld d, c                                       ; $7dbc: $51
    ld c, [hl]                                    ; $7dbd: $4e
    ld d, d                                       ; $7dbe: $52
    ld a, [de]                                    ; $7dbf: $1a
    rrca                                          ; $7dc0: $0f
    db $10                                        ; $7dc1: $10
    rst $18                                       ; $7dc2: $df
    ld de, $1712                                  ; $7dc3: $11 $12 $17
    ld d, [hl]                                    ; $7dc6: $56
    ld d, b                                       ; $7dc7: $50
    ld [c], a                                     ; $7dc8: $e2
    ldh [$1f], a                                  ; $7dc9: $e0 $1f
    jr nz, jr_075_7e48                            ; $7dcb: $20 $7b

    ld hl, $e222                                  ; $7dcd: $21 $22 $e2
    db $e3                                        ; $7dd0: $e3
    dec l                                         ; $7dd1: $2d
    ld l, $2f                                     ; $7dd2: $2e $2f
    jr nc, @-$1c                                  ; $7dd4: $30 $e2

    db $e3                                        ; $7dd6: $e3
    rst $28                                       ; $7dd7: $ef
    inc a                                         ; $7dd8: $3c
    dec a                                         ; $7dd9: $3d
    ld a, $1a                                     ; $7dda: $3e $1a
    ld [c], a                                     ; $7ddc: $e2
    ldh [rOBP0], a                                ; $7ddd: $e0 $48
    ld c, c                                       ; $7ddf: $49
    ld c, h                                       ; $7de0: $4c
    ld a, a                                       ; $7de1: $7f
    ld b, d                                       ; $7de2: $42
    ld b, [hl]                                    ; $7de3: $46
    ld b, a                                       ; $7de4: $47
    ld b, l                                       ; $7de5: $45
    ld c, l                                       ; $7de6: $4d
    ld c, c                                       ; $7de7: $49
    ld c, b                                       ; $7de8: $48
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    nop                                           ; $7deb: $00
    ld h, l                                       ; $7dec: $65
    dec c                                         ; $7ded: $0d
    rst $38                                       ; $7dee: $ff
    push hl                                       ; $7def: $e5
    dec l                                         ; $7df0: $2d
    or $e6                                        ; $7df1: $f6 $e6
    rst $30                                       ; $7df3: $f7
    add sp, $4d                                   ; $7df4: $e8 $4d
    ld c, l                                       ; $7df6: $4d
    ld hl, sp-$15                                 ; $7df7: $f8 $eb
    db $fc                                        ; $7df9: $fc
    ld [c], a                                     ; $7dfa: $e2
    push af                                       ; $7dfb: $f5
    ret c                                         ; $7dfc: $d8

    and $6d                                       ; $7dfd: $e6 $6d
    ld c, b                                       ; $7dff: $48
    ld c, c                                       ; $7e00: $49
    ld c, d                                       ; $7e01: $4a
    ld c, e                                       ; $7e02: $4b
    ld c, c                                       ; $7e03: $49
    ld a, [hl]                                    ; $7e04: $7e
    db $fc                                        ; $7e05: $fc
    pop hl                                        ; $7e06: $e1
    ld c, b                                       ; $7e07: $48
    ld c, [hl]                                    ; $7e08: $4e
    ld d, d                                       ; $7e09: $52
    ld d, e                                       ; $7e0a: $53
    ld d, l                                       ; $7e0b: $55
    ld d, [hl]                                    ; $7e0c: $56
    db $fc                                        ; $7e0d: $fc
    pop hl                                        ; $7e0e: $e1
    rst $38                                       ; $7e0f: $ff
    ld d, b                                       ; $7e10: $50
    ld c, a                                       ; $7e11: $4f
    ld d, h                                       ; $7e12: $54
    inc b                                         ; $7e13: $04
    inc b                                         ; $7e14: $04
    rlca                                          ; $7e15: $07
    ld [$ff04], sp                                ; $7e16: $08 $04 $ff
    inc b                                         ; $7e19: $04
    ld d, a                                       ; $7e1a: $57
    ld d, c                                       ; $7e1b: $51
    ld c, [hl]                                    ; $7e1c: $4e
    ld d, d                                       ; $7e1d: $52
    ld a, [de]                                    ; $7e1e: $1a
    inc de                                        ; $7e1f: $13
    inc d                                         ; $7e20: $14
    rst $18                                       ; $7e21: $df
    dec d                                         ; $7e22: $15
    ld d, $17                                     ; $7e23: $16 $17
    ld d, [hl]                                    ; $7e25: $56
    ld d, b                                       ; $7e26: $50
    ld [c], a                                     ; $7e27: $e2
    ldh [rNR44], a                                ; $7e28: $e0 $23
    inc h                                         ; $7e2a: $24
    ld a, e                                       ; $7e2b: $7b
    dec h                                         ; $7e2c: $25
    ld h, $e2                                     ; $7e2d: $26 $e2
    db $e3                                        ; $7e2f: $e3
    ld sp, $3332                                  ; $7e30: $31 $32 $33
    inc [hl]                                      ; $7e33: $34
    ld [c], a                                     ; $7e34: $e2
    db $e3                                        ; $7e35: $e3
    rst $28                                       ; $7e36: $ef
    inc a                                         ; $7e37: $3c
    ccf                                           ; $7e38: $3f
    ld a, $1a                                     ; $7e39: $3e $1a
    ld [c], a                                     ; $7e3b: $e2
    ldh [rOBP0], a                                ; $7e3c: $e0 $48
    ld c, c                                       ; $7e3e: $49
    ld c, h                                       ; $7e3f: $4c
    ld a, a                                       ; $7e40: $7f
    ld b, d                                       ; $7e41: $42
    ld b, [hl]                                    ; $7e42: $46
    ld b, a                                       ; $7e43: $47
    ld b, l                                       ; $7e44: $45
    ld c, l                                       ; $7e45: $4d
    ld c, c                                       ; $7e46: $49
    ld c, b                                       ; $7e47: $48

jr_075_7e48:
    nop                                           ; $7e48: $00
    nop                                           ; $7e49: $00
    nop                                           ; $7e4a: $00
    ld h, l                                       ; $7e4b: $65
    dec c                                         ; $7e4c: $0d
    rst $38                                       ; $7e4d: $ff
    push hl                                       ; $7e4e: $e5
    dec l                                         ; $7e4f: $2d
    or $e6                                        ; $7e50: $f6 $e6
    rst $30                                       ; $7e52: $f7
    add sp, $4d                                   ; $7e53: $e8 $4d
    ld c, l                                       ; $7e55: $4d
    ld hl, sp-$15                                 ; $7e56: $f8 $eb
    db $fc                                        ; $7e58: $fc
    ld [c], a                                     ; $7e59: $e2
    push af                                       ; $7e5a: $f5
    ret c                                         ; $7e5b: $d8

    and $6d                                       ; $7e5c: $e6 $6d
    ld c, b                                       ; $7e5e: $48
    ld c, c                                       ; $7e5f: $49

jr_075_7e60:
    ld c, d                                       ; $7e60: $4a
    ld c, e                                       ; $7e61: $4b
    ld c, c                                       ; $7e62: $49
    ld a, [hl]                                    ; $7e63: $7e
    db $fc                                        ; $7e64: $fc
    pop hl                                        ; $7e65: $e1
    ld c, b                                       ; $7e66: $48
    ld c, [hl]                                    ; $7e67: $4e
    ld d, d                                       ; $7e68: $52
    ld d, e                                       ; $7e69: $53
    ld d, l                                       ; $7e6a: $55
    ld d, [hl]                                    ; $7e6b: $56
    db $fc                                        ; $7e6c: $fc
    pop hl                                        ; $7e6d: $e1
    rst $38                                       ; $7e6e: $ff
    ld d, b                                       ; $7e6f: $50
    ld c, a                                       ; $7e70: $4f
    ld d, h                                       ; $7e71: $54
    inc b                                         ; $7e72: $04
    inc b                                         ; $7e73: $04
    add hl, bc                                    ; $7e74: $09
    ld a, [bc]                                    ; $7e75: $0a

jr_075_7e76:
    inc b                                         ; $7e76: $04
    rst $38                                       ; $7e77: $ff
    inc b                                         ; $7e78: $04
    ld d, a                                       ; $7e79: $57
    ld d, c                                       ; $7e7a: $51
    ld c, [hl]                                    ; $7e7b: $4e
    ld d, d                                       ; $7e7c: $52
    ld a, [de]                                    ; $7e7d: $1a
    rla                                           ; $7e7e: $17
    jr jr_075_7e60                                ; $7e7f: $18 $df

    add hl, de                                    ; $7e81: $19
    ld a, [de]                                    ; $7e82: $1a
    rla                                           ; $7e83: $17
    ld d, [hl]                                    ; $7e84: $56
    ld d, b                                       ; $7e85: $50
    ld [c], a                                     ; $7e86: $e2
    ldh [$27], a                                  ; $7e87: $e0 $27
    jr z, jr_075_7f06                             ; $7e89: $28 $7b

    add hl, hl                                    ; $7e8b: $29
    ld a, [hl+]                                   ; $7e8c: $2a
    ld [c], a                                     ; $7e8d: $e2
    db $e3                                        ; $7e8e: $e3
    dec [hl]                                      ; $7e8f: $35
    ld [hl], $37                                  ; $7e90: $36 $37
    jr c, jr_075_7e76                             ; $7e92: $38 $e2

    db $e3                                        ; $7e94: $e3
    rst $30                                       ; $7e95: $f7
    inc a                                         ; $7e96: $3c
    ld b, b                                       ; $7e97: $40
    ld b, c                                       ; $7e98: $41
    ld [c], a                                     ; $7e99: $e2
    pop hl                                        ; $7e9a: $e1
    ld c, b                                       ; $7e9b: $48
    ld c, c                                       ; $7e9c: $49
    ld c, h                                       ; $7e9d: $4c
    ld b, d                                       ; $7e9e: $42
    ccf                                           ; $7e9f: $3f
    ld b, [hl]                                    ; $7ea0: $46
    ld b, a                                       ; $7ea1: $47
    ld b, l                                       ; $7ea2: $45
    ld c, l                                       ; $7ea3: $4d
    ld c, c                                       ; $7ea4: $49
    ld c, b                                       ; $7ea5: $48
    nop                                           ; $7ea6: $00
    nop                                           ; $7ea7: $00
    nop                                           ; $7ea8: $00
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

Call_075_7ef3:
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

jr_075_7f06:
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

Jump_075_7f95:
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

Jump_075_7fe0:
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff

Call_075_7fe3:
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

Jump_075_7ffc:
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Jump_075_7fff:
    rst $38                                       ; $7fff: $ff
